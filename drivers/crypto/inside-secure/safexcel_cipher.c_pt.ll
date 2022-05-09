; ModuleID = '/llk/IR_all_yes/drivers/crypto/inside-secure/safexcel_cipher.c_pt.bc'
source_filename = "../drivers/crypto/inside-secure/safexcel_cipher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.67, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.67 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.crypto_aes_ctx = type { [60 x i32], [60 x i32], i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.safexcel_crypto_priv = type { ptr, ptr, ptr, ptr, %struct.safexcel_config, i32, %struct.safexcel_register_offsets, %struct.safexcel_hwconfig, i32, ptr, %struct.atomic_t, ptr }
%struct.safexcel_config = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.safexcel_register_offsets = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.safexcel_hwconfig = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.safexcel_cipher_ctx = type { %struct.safexcel_context, ptr, i32, i32, i8, i8, i8, i8, i32, i32, [16 x i32], i32, i32, i32, i32, i32, ptr, ptr }
%struct.safexcel_context = type { ptr, ptr, ptr, ptr, i32, %union.anon.76, %union.anon.76, i32, i8, i8 }
%union.anon.76 = type { [18 x i32] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.safexcel_inv_result = type { %struct.completion, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.safexcel_context_record = type { i32, i32, [40 x i32] }
%struct.des_ctx = type { [32 x i32] }
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.safexcel_cipher_req = type { i32, i32, i8, i32, i32 }
%struct.safexcel_ring = type { %struct.spinlock, ptr, %struct.safexcel_work_data, %struct.safexcel_desc_ring, %struct.safexcel_desc_ring, ptr, %struct.crypto_queue, %struct.spinlock, i32, i8, ptr, ptr, i32 }
%struct.safexcel_work_data = type { %struct.work_struct, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.safexcel_desc_ring = type { ptr, ptr, ptr, ptr, i32, i32, ptr, ptr, ptr, i32, i32 }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.safexcel_command_desc = type { i32, i32, i32, i32, i32, i32, %struct.safexcel_control_data_desc }
%struct.safexcel_control_data_desc = type { i32, i16, i16, i32, i32, i32, i32, [4 x i32] }
%struct.safexcel_token = type { i32 }

@safexcel_alg_ecb_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 4096, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_skcipher_aes_setkey, ptr @safexcel_encrypt, ptr @safexcel_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-ecb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_aes_ecb_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_cbc_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 4096, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_skcipher_aes_setkey, ptr @safexcel_encrypt, ptr @safexcel_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_aes_cbc_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_cfb_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 12288, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_skcipher_aes_setkey, ptr @safexcel_encrypt, ptr @safexcel_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-cfb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_aes_cfb_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_ofb_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 12288, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_skcipher_aes_setkey, ptr @safexcel_encrypt, ptr @safexcel_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ofb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-ofb-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_aes_ofb_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_ctr_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 4096, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_skcipher_aesctr_setkey, ptr @safexcel_encrypt, ptr @safexcel_decrypt, ptr null, ptr null, i32 20, i32 36, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc3686(ctr(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-ctr-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_aes_ctr_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_cbc_des = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 32768, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_des_setkey, ptr @safexcel_encrypt, ptr @safexcel_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-cbc-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_des_cbc_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_ecb_des = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 32768, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_des_setkey, ptr @safexcel_encrypt, ptr @safexcel_decrypt, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-ecb-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_des_ecb_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_cbc_des3_ede = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 32768, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_des3_ede_setkey, ptr @safexcel_encrypt, ptr @safexcel_decrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-cbc-des3_ede\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_des3_cbc_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_ecb_des3_ede = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 32768, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_des3_ede_setkey, ptr @safexcel_encrypt, ptr @safexcel_decrypt, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-ecb-des3_ede\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_des3_ecb_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha1_cbc_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 8392704, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 16, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha1-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha1_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha256_cbc_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 33558528, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha256-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha256_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha224_cbc_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 33558528, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 16, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha224-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha224_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha512_cbc_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 67112960, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 16, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha512-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha512_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha384_cbc_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 67112960, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 16, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha384-cbc-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha384_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha1_cbc_des3_ede = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 8421376, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha1-cbc-des3_ede\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha1_des3_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha256_cbc_des3_ede = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 33587200, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha256-cbc-des3_ede\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha256_des3_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha224_cbc_des3_ede = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 33587200, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha224-cbc-des3_ede\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha224_des3_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha512_cbc_des3_ede = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 67141632, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha512-cbc-des3_ede\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha512_des3_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha384_cbc_des3_ede = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 67141632, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha384-cbc-des3_ede\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha384_des3_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha1_cbc_des = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 8421376, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha1-cbc-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha1_des_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha256_cbc_des = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 33587200, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha256-cbc-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha256_des_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha224_cbc_des = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 33587200, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha224-cbc-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha224_des_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha512_cbc_des = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 67141632, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha512-cbc-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha512_des_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha384_cbc_des = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 67141632, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 8, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha384-cbc-des\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha384_des_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha1_ctr_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 8392704, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha1-ctr-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha1_ctr_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha256_ctr_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 33558528, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha256-ctr-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha256_ctr_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha224_ctr_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 33558528, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha224-ctr-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha224_ctr_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha512_ctr_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 67112960, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha512-ctr-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha512_ctr_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha384_ctr_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 67112960, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha384-ctr-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sha384_ctr_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_xts_aes = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 1052672, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_skcipher_aesxts_setkey, ptr @safexcel_encrypt_xts, ptr @safexcel_decrypt_xts, ptr null, ptr null, i32 32, i32 64, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-xts-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_aes_xts_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_gcm = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 1073745920, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_gcm_setkey, ptr @safexcel_aead_gcm_setauthsize, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 12, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-gcm-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_gcm_cra_init, ptr @safexcel_aead_gcm_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_ccm = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 536875008, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_ccm_setkey, ptr @safexcel_aead_ccm_setauthsize, ptr @safexcel_ccm_encrypt, ptr @safexcel_ccm_decrypt, ptr null, ptr null, i32 16, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ccm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-ccm-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_ccm_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_chacha20 = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 256, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_skcipher_chacha20_setkey, ptr @safexcel_encrypt, ptr @safexcel_decrypt, ptr null, ptr null, i32 32, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"chacha20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-chacha20\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_chacha20_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_chachapoly = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 768, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_chachapoly_setkey, ptr @safexcel_aead_chachapoly_setauthsize, ptr @safexcel_aead_chachapoly_encrypt, ptr @safexcel_aead_chachapoly_decrypt, ptr null, ptr null, i32 12, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 70016, i32 1, i32 288, i32 0, i32 301, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc7539(chacha20,poly1305)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-chacha20-poly1305\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_chachapoly_cra_init, ptr @safexcel_aead_fallback_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_chachapoly_esp = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 768, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_chachapoly_setkey, ptr @safexcel_aead_chachapoly_setauthsize, ptr @safexcel_aead_chachapoly_encrypt, ptr @safexcel_aead_chachapoly_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 70016, i32 1, i32 288, i32 0, i32 301, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc7539esp(chacha20,poly1305)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-chacha20-poly1305-esp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_chachapolyesp_cra_init, ptr @safexcel_aead_fallback_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_ecb_sm4 = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 64, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_skcipher_sm4_setkey, ptr @safexcel_sm4_blk_encrypt, ptr @safexcel_sm4_blk_decrypt, ptr null, ptr null, i32 16, i32 16, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(sm4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-ecb-sm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_sm4_ecb_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_cbc_sm4 = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 64, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_skcipher_sm4_setkey, ptr @safexcel_sm4_blk_encrypt, ptr @safexcel_sm4_blk_decrypt, ptr null, ptr null, i32 16, i32 16, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(sm4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-cbc-sm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_sm4_cbc_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_ofb_sm4 = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 8256, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_skcipher_sm4_setkey, ptr @safexcel_encrypt, ptr @safexcel_decrypt, ptr null, ptr null, i32 16, i32 16, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"ofb(sm4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-ofb-sm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_sm4_ofb_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_cfb_sm4 = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 8256, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_skcipher_sm4_setkey, ptr @safexcel_encrypt, ptr @safexcel_decrypt, ptr null, ptr null, i32 16, i32 16, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"cfb(sm4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-cfb-sm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_sm4_cfb_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_ctr_sm4 = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.skcipher_alg, [128 x i8] } } { ptr null, i32 0, i32 64, [116 x i8] undef, { %struct.skcipher_alg, [128 x i8] } { %struct.skcipher_alg { ptr @safexcel_skcipher_sm4ctr_setkey, ptr @safexcel_encrypt, ptr @safexcel_decrypt, ptr null, ptr null, i32 20, i32 20, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc3686(ctr(sm4))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-ctr-sm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_skcipher_sm4_ctr_cra_init, ptr @safexcel_skcipher_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha1_cbc_sm4 = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 8388672, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_sm4_blk_encrypt, ptr @safexcel_aead_sm4_blk_decrypt, ptr null, ptr null, i32 16, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 16, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(sm4))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha1-cbc-sm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sm4cbc_sha1_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sm3_cbc_sm4 = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 192, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_fallback_setkey, ptr @safexcel_aead_fallback_setauthsize, ptr @safexcel_aead_sm4cbc_sm3_encrypt, ptr @safexcel_aead_sm4cbc_sm3_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 70016, i32 16, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sm3),cbc(sm4))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sm3-cbc-sm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sm4cbc_sm3_cra_init, ptr @safexcel_aead_fallback_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sha1_ctr_sm4 = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 8388672, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),rfc3686(ctr(sm4)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sha1-ctr-sm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sm4ctr_sha1_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_authenc_hmac_sm3_ctr_sm4 = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 192, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_aead_setkey, ptr null, ptr @safexcel_aead_encrypt, ptr @safexcel_aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sm3),rfc3686(ctr(sm4)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-authenc-hmac-sm3-ctr-sm4\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_aead_sm4ctr_sm3_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_rfc4106_gcm = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 1073745920, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_rfc4106_gcm_setkey, ptr @safexcel_rfc4106_gcm_setauthsize, ptr @safexcel_rfc4106_encrypt, ptr @safexcel_rfc4106_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4106(gcm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-rfc4106-gcm-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_rfc4106_gcm_cra_init, ptr @safexcel_aead_gcm_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_rfc4543_gcm = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 1073745920, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_rfc4106_gcm_setkey, ptr @safexcel_rfc4543_gcm_setauthsize, ptr @safexcel_rfc4106_encrypt, ptr @safexcel_rfc4106_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4543(gcm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-rfc4543-gcm-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_rfc4543_gcm_cra_init, ptr @safexcel_aead_gcm_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_alg_rfc4309_ccm = dso_local local_unnamed_addr global { ptr, i32, i32, [116 x i8], { %struct.aead_alg, [128 x i8] } } { ptr null, i32 1, i32 536875008, [116 x i8] undef, { %struct.aead_alg, [128 x i8] } { %struct.aead_alg { ptr @safexcel_rfc4309_ccm_setkey, ptr @safexcel_rfc4309_ccm_setauthsize, ptr @safexcel_rfc4309_ccm_encrypt, ptr @safexcel_rfc4309_ccm_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 69760, i32 1, i32 288, i32 0, i32 300, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4309(ccm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"safexcel-rfc4309-ccm-aes\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr @safexcel_rfc4309_ccm_cra_init, ptr @safexcel_aead_cra_exit, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } }, [128 x i8] undef } }, align 128
@safexcel_send_req._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 737, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"In-place buffer not large enough (need %d bytes)!\00", [46 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"safexcel_send_req\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"drivers/crypto/inside-secure/safexcel_cipher.c\00", [49 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@safexcel_send_req._entry_ptr = internal global ptr @safexcel_send_req._entry, section ".printk_index", align 4
@safexcel_send_req._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 744, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"Source buffer not large enough (need %d bytes)!\00", [48 x i8] zeroinitializer }, align 32
@safexcel_send_req._entry_ptr.7 = internal global ptr @safexcel_send_req._entry.5, section ".printk_index", align 4
@safexcel_send_req._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.1, ptr @.str.2, i32 751, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Dest buffer not large enough (need %d bytes)!\00", [50 x i8] zeroinitializer }, align 32
@safexcel_send_req._entry_ptr.10 = internal global ptr @safexcel_send_req._entry.8, section ".printk_index", align 4
@safexcel_context_control._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 594, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"aes keysize not supported: %u\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"safexcel_context_control\00", [39 x i8] zeroinitializer }, align 32
@safexcel_context_control._entry_ptr = internal global ptr @safexcel_context_control._entry, section ".printk_index", align 4
@safexcel_handle_inv_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.2, i32 916, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"cipher: invalidate: could not retrieve the result descriptor\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"safexcel_handle_inv_result\00", [37 x i8] zeroinitializer }, align 32
@safexcel_handle_inv_result._entry_ptr = internal global ptr @safexcel_handle_inv_result._entry, section ".printk_index", align 4
@safexcel_handle_req_result._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.2, i32 631, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"cipher: result: could not retrieve the result descriptor\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"safexcel_handle_req_result\00", [37 x i8] zeroinitializer }, align 32
@safexcel_handle_req_result._entry_ptr = internal global ptr @safexcel_handle_req_result._entry, section ".printk_index", align 4
@safexcel_skcipher_cra_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.2, i32 1233, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"skcipher: invalidation error %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"safexcel_skcipher_cra_exit\00", [37 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@safexcel_skcipher_cra_exit._entry_ptr = internal global ptr @safexcel_skcipher_cra_exit._entry, section ".printk_index", align 4
@safexcel_cipher_exit_inv._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 1101, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"cipher: sync: invalidate: completion error %d\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"safexcel_cipher_exit_inv\00", [39 x i8] zeroinitializer }, align 32
@safexcel_cipher_exit_inv._entry_ptr = internal global ptr @safexcel_cipher_exit_inv._entry, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@safexcel_aead_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.24, ptr @.str.2, i32 450, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"aead: unsupported cipher algorithm\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"safexcel_aead_setkey\00", [43 x i8] zeroinitializer }, align 32
@safexcel_aead_setkey._entry_ptr = internal global ptr @safexcel_aead_setkey._entry, section ".printk_index", align 4
@.str.25 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"safexcel-sha1\00", [18 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"safexcel-sha224\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"safexcel-sha256\00", [16 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"safexcel-sha384\00", [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"safexcel-sha512\00", [16 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"safexcel-sm3\00", [19 x i8] zeroinitializer }, align 32
@safexcel_aead_setkey._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.24, ptr @.str.2, i32 485, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"aead: unsupported hash algorithm\0A\00", [62 x i8] zeroinitializer }, align 32
@safexcel_aead_setkey._entry_ptr.33 = internal global ptr @safexcel_aead_setkey._entry.31, section ".printk_index", align 4
@safexcel_aead_cra_exit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.2, i32 1253, ptr @.str.19, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"aead: invalidation error %d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"safexcel_aead_cra_exit\00", [41 x i8] zeroinitializer }, align 32
@safexcel_aead_cra_exit._entry_ptr = internal global ptr @safexcel_aead_cra_exit._entry, section ".printk_index", align 4
@.str.36 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"aes\00", [28 x i8] zeroinitializer }, align 32
@switch.table.safexcel_aead_setkey = internal constant { [6 x ptr], [40 x i8] } { [6 x ptr] [ptr @.str.25, ptr @.str.27, ptr @.str.26, ptr @.str.29, ptr @.str.28, ptr @.str.30], [40 x i8] zeroinitializer }, align 32
@switch.table.safexcel_aead_gcm_setauthsize = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 -22, i32 -22, i32 -22, i32 0, i32 0, i32 0, i32 0, i32 0], [44 x i8] zeroinitializer }, align 32
@switch.table.safexcel_aead_ccm_setauthsize = internal constant { [13 x i32], [44 x i8] } { [13 x i32] [i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0, i32 -22, i32 0], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.37 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.38 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.39 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 20]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 16, i64 20]
@__sancov_gen_cov_switch_values.41 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 2, i64 3, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 736, i32 4 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 743, i32 4 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 750, i32 4 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 593, i32 4 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 915, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 630, i32 4 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1232, i32 4 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1099, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 87, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 450, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 467, i32 9 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 470, i32 9 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 473, i32 9 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 476, i32 9 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 479, i32 9 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 482, i32 9 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 485, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 1252, i32 4 }
@___asan_gen_.169 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.170 = private constant [50 x i8] c"../drivers/crypto/inside-secure/safexcel_cipher.c\00", align 1
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.170, i32 2629, i32 35 }
@___asan_gen_.172 = private unnamed_addr constant [34 x i8] c"switch.table.safexcel_aead_setkey\00", align 1
@___asan_gen_.173 = private unnamed_addr constant [43 x i8] c"switch.table.safexcel_aead_gcm_setauthsize\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [43 x i8] c"switch.table.safexcel_aead_ccm_setauthsize\00", align 1
@llvm.compiler.used = appending global [57 x ptr] [ptr @safexcel_aead_cra_exit._entry, ptr @safexcel_aead_cra_exit._entry_ptr, ptr @safexcel_aead_setkey._entry, ptr @safexcel_aead_setkey._entry.31, ptr @safexcel_aead_setkey._entry_ptr, ptr @safexcel_aead_setkey._entry_ptr.33, ptr @safexcel_cipher_exit_inv._entry, ptr @safexcel_cipher_exit_inv._entry_ptr, ptr @safexcel_context_control._entry, ptr @safexcel_context_control._entry_ptr, ptr @safexcel_handle_inv_result._entry, ptr @safexcel_handle_inv_result._entry_ptr, ptr @safexcel_handle_req_result._entry, ptr @safexcel_handle_req_result._entry_ptr, ptr @safexcel_send_req._entry, ptr @safexcel_send_req._entry.5, ptr @safexcel_send_req._entry.8, ptr @safexcel_send_req._entry_ptr, ptr @safexcel_send_req._entry_ptr.10, ptr @safexcel_send_req._entry_ptr.7, ptr @safexcel_skcipher_cra_exit._entry, ptr @safexcel_skcipher_cra_exit._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @init_completion.__key, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @switch.table.safexcel_aead_setkey, ptr @switch.table.safexcel_aead_gcm_setauthsize, ptr @switch.table.safexcel_aead_ccm_setauthsize], section "llvm.metadata"
@0 = internal global [46 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_send_req._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_send_req._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_send_req._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_context_control._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_handle_inv_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_handle_req_result._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_skcipher_cra_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_cipher_exit_inv._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_aead_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_aead_setkey._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @safexcel_aead_cra_exit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.safexcel_aead_setkey to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.safexcel_aead_gcm_setauthsize to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.safexcel_aead_ccm_setauthsize to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_skcipher_aes_setkey(ptr nocapture noundef %ctfm, ptr noundef %key, i32 noundef %len) #0 align 64 {
entry:
  %aes = alloca %struct.crypto_aes_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1
  %priv2 = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 8
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %aes) #9
  %2 = call ptr @memset(ptr %aes, i32 255, i32 484)
  %call3 = call i32 @aes_expandkey(ptr noundef nonnull %aes, ptr noundef %key, i32 noundef %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 8
  %3 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags, align 4
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %ctxr_dma = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 12
  %5 = ptrtoint ptr %ctxr_dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %ctxr_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool6.not = icmp eq i32 %6, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end14_crit_edge, label %for.cond.preheader

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.cond.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp49.not = icmp ult i32 %len, 4
  br i1 %cmp49.not, label %for.cond.preheader.for.end25_crit_edge, label %for.body.preheader

for.cond.preheader.for.end25_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.body.preheader:                               ; preds = %for.cond.preheader
  %div48 = lshr i32 %len, 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.050, 1
  %exitcond.not = icmp eq i32 %inc, %div48
  br i1 %exitcond.not, label %for.cond.if.end14_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.if.end14_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.050 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.safexcel_cipher_ctx, ptr %__crt_ctx.i, i32 0, i32 10, i32 %i.050
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %arrayidx, align 4
  %9 = call i32 @llvm.bswap.i32(i32 %8)
  %arrayidx9 = getelementptr [60 x i32], ptr %aes, i32 0, i32 %i.050
  %10 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp10.not = icmp eq i32 %9, %11
  br i1 %cmp10.not, label %for.cond, label %if.then11

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %needs_inv = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 24
  %12 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %needs_inv, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %for.cond.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp1751.not = icmp ult i32 %len, 4
  br i1 %cmp1751.not, label %if.end14.for.end25_crit_edge, label %for.body18.preheader

if.end14.for.end25_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.body18.preheader:                             ; preds = %if.end14
  %div1647 = lshr i32 %len, 2
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.body18.preheader
  %i.152 = phi i32 [ %inc24, %for.body18.for.body18_crit_edge ], [ 0, %for.body18.preheader ]
  %arrayidx20 = getelementptr [60 x i32], ptr %aes, i32 0, i32 %i.152
  %13 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx20, align 4
  %15 = call i32 @llvm.bswap.i32(i32 %14)
  %arrayidx22 = getelementptr %struct.safexcel_cipher_ctx, ptr %__crt_ctx.i, i32 0, i32 10, i32 %i.152
  %16 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %arrayidx22, align 4
  %inc24 = add nuw nsw i32 %i.152, 1
  %exitcond54.not = icmp eq i32 %inc24, %div1647
  br i1 %exitcond54.not, label %for.body18.for.end25_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18

for.body18.for.end25_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.end25:                                        ; preds = %for.body18.for.end25_crit_edge, %if.end14.for.end25_crit_edge, %for.cond.preheader.for.end25_crit_edge
  %key_len = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 2, i32 1, i32 4
  %17 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %len, ptr %key_len, align 4
  %18 = call ptr @memset(ptr %aes, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes) #9, !srcloc !176
  br label %cleanup

cleanup:                                          ; preds = %for.end25, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end25 ], [ %call3, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %call1 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %base, ptr noundef %__ctx.i, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %call1 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %base, ptr noundef %__ctx.i, i32 noundef 1)
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_aes_ecb_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %8 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %9 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 2, ptr %alg, align 4
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mode, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %11 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %blocksz, align 1
  %12 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3072, ptr %ivmask.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @safexcel_skcipher_cra_exit(ptr noundef %tfm) #0 align 64 {
entry:
  %__req_desc.i = alloca [148 x i8], align 128
  %result.i = alloca %struct.safexcel_inv_result, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %key.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 52
  %2 = call ptr @memset(ptr %key.i, i32 0, i32 64)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %key.i) #9, !srcloc !176
  %ctxr.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %3 = ptrtoint ptr %ctxr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctxr.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.safexcel_context_record, ptr %4, i32 0, i32 2
  %5 = call ptr @memset(ptr %data.i, i32 0, i32 160)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %data.i) #9, !srcloc !176
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %__req_desc.i) #9
  %8 = getelementptr inbounds i8, ptr %__req_desc.i, i32 128
  %9 = call ptr @memset(ptr %8, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %result.i) #9
  %10 = call ptr @memset(ptr %result.i, i32 0, i32 60)
  %11 = call ptr @memset(ptr %__req_desc.i, i32 0, i32 128)
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 1
  %12 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_inv_complete, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %result.i, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1024, ptr %flags4.i.i, align 4
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4, i32 3
  %15 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tfm, ptr %tfm1.i.i, align 32
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %__req_desc.i, i32 0, i32 4
  %call2.i = call fastcc i32 @safexcel_cipher_exit_inv(ptr noundef %tfm, ptr noundef %base.i, ptr noundef %8, ptr noundef nonnull %result.i) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result.i) #9
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %__req_desc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not = icmp eq i32 %call2.i, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %do.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.17, i32 noundef %call2.i) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %context_pool = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %context_pool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context_pool, align 4
  %20 = ptrtoint ptr %ctxr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctxr.i, align 4
  %ctxr_dma = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %22 = ptrtoint ptr %ctxr_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctxr_dma, align 4
  tail call void @dma_pool_free(ptr noundef %19, ptr noundef %21, i32 noundef %23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_aes_cbc_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %10 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %alg, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %11 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %blocksz, align 1
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_aes_cfb_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %10 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %alg, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %11 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %blocksz, align 1
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_aes_ofb_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %10 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %alg, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %11 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %blocksz, align 1
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_skcipher_aesctr_setkey(ptr nocapture noundef %ctfm, ptr noundef %key, i32 noundef %len) #0 align 64 {
entry:
  %aes = alloca %struct.crypto_aes_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1
  %priv2 = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 8
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %aes) #9
  %2 = call ptr @memset(ptr %aes, i32 255, i32 484)
  %add.ptr = getelementptr i8, ptr %key, i32 %len
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 -4
  %3 = ptrtoint ptr %add.ptr3 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %add.ptr3, align 4
  %nonce = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 2, i32 1
  %5 = ptrtoint ptr %nonce to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %nonce, align 4
  %sub = add i32 %len, -4
  %call4 = call i32 @aes_expandkey(ptr noundef nonnull %aes, ptr noundef %key, i32 noundef %sub) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool.not = icmp eq i32 %call4, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %if.end.if.end15_crit_edge, label %land.lhs.true

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %ctxr_dma = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 12
  %8 = ptrtoint ptr %ctxr_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctxr_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool7.not = icmp eq i32 %9, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end15_crit_edge, label %for.cond.preheader

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

for.cond.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp54.not = icmp ult i32 %sub, 4
  br i1 %cmp54.not, label %for.cond.preheader.for.end26_crit_edge, label %for.body.preheader

for.cond.preheader.for.end26_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26

for.body.preheader:                               ; preds = %for.cond.preheader
  %div53 = lshr i32 %sub, 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.055, 1
  %exitcond.not = icmp eq i32 %inc, %div53
  br i1 %exitcond.not, label %for.cond.if.end15_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.if.end15_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.055 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.safexcel_cipher_ctx, ptr %__crt_ctx.i, i32 0, i32 10, i32 %i.055
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx, align 4
  %12 = call i32 @llvm.bswap.i32(i32 %11)
  %arrayidx10 = getelementptr [60 x i32], ptr %aes, i32 0, i32 %i.055
  %13 = ptrtoint ptr %arrayidx10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx10, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp11.not = icmp eq i32 %12, %14
  br i1 %cmp11.not, label %for.cond, label %if.then12

if.then12:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %needs_inv = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 24
  %15 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %needs_inv, align 4
  br label %if.end15

if.end15:                                         ; preds = %if.then12, %for.cond.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %sub)
  %cmp1856.not = icmp ult i32 %sub, 4
  br i1 %cmp1856.not, label %if.end15.for.end26_crit_edge, label %for.body19.preheader

if.end15.for.end26_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26

for.body19.preheader:                             ; preds = %if.end15
  %div1752 = lshr i32 %sub, 2
  br label %for.body19

for.body19:                                       ; preds = %for.body19.for.body19_crit_edge, %for.body19.preheader
  %i.157 = phi i32 [ %inc25, %for.body19.for.body19_crit_edge ], [ 0, %for.body19.preheader ]
  %arrayidx21 = getelementptr [60 x i32], ptr %aes, i32 0, i32 %i.157
  %16 = ptrtoint ptr %arrayidx21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx21, align 4
  %18 = call i32 @llvm.bswap.i32(i32 %17)
  %arrayidx23 = getelementptr %struct.safexcel_cipher_ctx, ptr %__crt_ctx.i, i32 0, i32 10, i32 %i.157
  %19 = ptrtoint ptr %arrayidx23 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %arrayidx23, align 4
  %inc25 = add nuw nsw i32 %i.157, 1
  %exitcond59.not = icmp eq i32 %inc25, %div1752
  br i1 %exitcond59.not, label %for.body19.for.end26_crit_edge, label %for.body19.for.body19_crit_edge

for.body19.for.body19_crit_edge:                  ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body19

for.body19.for.end26_crit_edge:                   ; preds = %for.body19
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end26

for.end26:                                        ; preds = %for.body19.for.end26_crit_edge, %if.end15.for.end26_crit_edge, %for.cond.preheader.for.end26_crit_edge
  %key_len = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 2, i32 1, i32 4
  %20 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub, ptr %key_len, align 4
  %21 = call ptr @memset(ptr %aes, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes) #9, !srcloc !176
  br label %cleanup

cleanup:                                          ; preds = %for.end26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end26 ], [ %call4, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_aes_ctr_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %10 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %alg, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %11 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %blocksz, align 1
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_des_setkey(ptr nocapture noundef %ctfm, ptr noundef %key, i32 noundef %len) #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.des_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i) #9
  %2 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 128)
  %call.i.i = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i, ptr noundef %key, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -126
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.verify_skcipher_des_key.exit_crit_edge

entry.verify_skcipher_des_key.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_skcipher_des_key.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 0, i32 2
  %3 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %tobool.not.i.i, i32 0, i32 -22
  br label %verify_skcipher_des_key.exit

verify_skcipher_des_key.exit:                     ; preds = %if.then.i.i, %entry.verify_skcipher_des_key.exit_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i, %entry.verify_skcipher_des_key.exit_crit_edge ], [ %spec.select, %if.then.i.i ]
  %5 = call ptr @memset(ptr %tmp.i.i, i32 0, i32 128)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #9, !srcloc !176
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool.not, label %if.end, label %verify_skcipher_des_key.exit.cleanup_crit_edge

verify_skcipher_des_key.exit.cleanup_crit_edge:   ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %verify_skcipher_des_key.exit
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %ctxr_dma = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 12
  %8 = ptrtoint ptr %ctxr_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ctxr_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end13_crit_edge, label %if.then6

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then6:                                         ; preds = %land.lhs.true
  %key7 = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 52
  %bcmp = call i32 @bcmp(ptr %key7, ptr %key, i32 %len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool9.not = icmp eq i32 %bcmp, 0
  br i1 %tobool9.not, label %if.then6.if.end13_crit_edge, label %if.then10

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %needs_inv = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 24
  %10 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %needs_inv, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then6.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %key14 = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 52
  %11 = call ptr @memcpy(ptr %key14, ptr %key, i32 %len)
  %key_len = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 2, i32 1, i32 4
  %12 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %len, ptr %key_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %verify_skcipher_des_key.exit.cleanup_crit_edge
  ret i32 %err.0.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_des_cbc_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %8 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %9 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %alg, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %10 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %blocksz, align 1
  %11 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3072, ptr %ivmask.i, align 4
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_des_ecb_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %8 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %9 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %alg, align 4
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mode, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %11 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %blocksz, align 1
  %12 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3072, ptr %ivmask.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_des3_ede_setkey(ptr nocapture noundef %ctfm, ptr nocapture noundef readonly %key, i32 noundef %len) #0 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 8
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 0, i32 2
  %2 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %3, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #9
  %4 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 1
  %5 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 2
  %6 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 3
  %7 = call ptr @memcpy(ptr %K.i.i.i, ptr %key, i32 24)
  %8 = ptrtoint ptr %K.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %K.i.i.i, align 4
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %5, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %4, align 4
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %16 = icmp eq i32 %9, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %17 = icmp eq i32 %13, %15
  %tobool.not.i.i.i = and i1 %16, %17
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %entry
  %18 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 5
  %19 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %19, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %18, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %21)
  %24 = icmp ne i32 %11, %21
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %23)
  %25 = icmp ne i32 %15, %23
  %tobool12.not.not.i.i.i = or i1 %24, %25
  %brmerge.i.i.i = or i1 %tobool.not.i.i, %tobool12.not.not.i.i.i
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.if.end_crit_edge, label %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_skcipher_des3_key.exit.thread

lor.lhs.false.i.i.i.if.end_crit_edge:             ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i.i.i:                              ; preds = %entry
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.i.if.end_crit_edge, label %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_skcipher_des3_key.exit.thread

land.lhs.true.i.i.i.if.end_crit_edge:             ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

verify_skcipher_des3_key.exit.thread:             ; preds = %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge
  %26 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #9, !srcloc !176
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i.i.if.end_crit_edge, %lor.lhs.false.i.i.i.if.end_crit_edge
  %27 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #9, !srcloc !176
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #9
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 8
  %28 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %flags, align 4
  %and = and i32 %29, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.end.if.end13_crit_edge, label %land.lhs.true

if.end.if.end13_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

land.lhs.true:                                    ; preds = %if.end
  %ctxr_dma = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 12
  %30 = ptrtoint ptr %ctxr_dma to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ctxr_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool5.not = icmp eq i32 %31, 0
  br i1 %tobool5.not, label %land.lhs.true.if.end13_crit_edge, label %if.then6

land.lhs.true.if.end13_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then6:                                         ; preds = %land.lhs.true
  %key7 = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 52
  %bcmp = call i32 @bcmp(ptr %key7, ptr %key, i32 %len) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool9.not = icmp eq i32 %bcmp, 0
  br i1 %tobool9.not, label %if.then6.if.end13_crit_edge, label %if.then10

if.then6.if.end13_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end13

if.then10:                                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %needs_inv = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 24
  %32 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %needs_inv, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then10, %if.then6.if.end13_crit_edge, %land.lhs.true.if.end13_crit_edge, %if.end.if.end13_crit_edge
  %key14 = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 52
  %33 = call ptr @memcpy(ptr %key14, ptr %key, i32 %len)
  %key_len = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 2, i32 1, i32 4
  %34 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %len, ptr %key_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end13, %verify_skcipher_des3_key.exit.thread
  %ret.0.i.i.i31 = phi i32 [ -126, %verify_skcipher_des3_key.exit.thread ], [ 0, %if.end13 ]
  ret i32 %ret.0.i.i.i31
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_des3_cbc_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %8 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %9 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %alg, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %10 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 8, ptr %blocksz, align 1
  %11 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 3072, ptr %ivmask.i, align 4
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_des3_ecb_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %8 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %9 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %alg, align 4
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mode, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %11 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %blocksz, align 1
  %12 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3072, ptr %ivmask.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_setkey(ptr noundef %ctfm, ptr noundef %key, i32 noundef %len) #0 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  %tmp.i.i = alloca %struct.des_ctx, align 4
  %keys = alloca %struct.crypto_authenc_keys, align 4
  %aes = alloca %struct.crypto_aes_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 0, i32 3
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1
  %priv2 = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 4
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys) #9
  %2 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 1
  %3 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 2
  %4 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 3
  %5 = call ptr @memset(ptr %keys, i32 255, i32 16)
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %aes) #9
  %6 = call ptr @memset(ptr %aes, i32 255, i32 484)
  %call3 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %keys, ptr noundef %key, i32 noundef %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %entry.badkey_crit_edge, !prof !177

entry.badkey_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %badkey

if.end:                                           ; preds = %entry
  %mode = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 3, i32 4, i32 32
  %7 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %8)
  %cmp = icmp eq i32 %8, 6
  br i1 %cmp, label %if.then6, label %if.end.if.end19_crit_edge

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end19

if.then6:                                         ; preds = %if.end
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %10)
  %cmp7 = icmp ult i32 %10, 4
  br i1 %cmp7, label %if.then6.badkey_crit_edge, label %if.end15, !prof !178

if.then6.badkey_crit_edge:                        ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %badkey

if.end15:                                         ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %2, align 4
  %add.ptr = getelementptr i8, ptr %12, i32 %10
  %add.ptr17 = getelementptr i8, ptr %add.ptr, i32 -4
  %13 = ptrtoint ptr %add.ptr17 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %add.ptr17, align 4
  %nonce = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 1
  %15 = ptrtoint ptr %nonce to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %nonce, align 4
  %sub = add i32 %10, -4
  %16 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %sub, ptr %4, align 4
  br label %if.end19

if.end19:                                         ; preds = %if.end15, %if.end.if.end19_crit_edge
  %alg20 = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 3, i32 4, i32 36
  %17 = ptrtoint ptr %alg20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %alg20, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values)
  switch i32 %18, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb33
    i32 2, label %sw.bb46
    i32 4, label %sw.bb59
  ]

sw.bb:                                            ; preds = %if.end19
  %20 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %21)
  %cmp.not.i = icmp eq i32 %21, 8
  br i1 %cmp.not.i, label %if.end.i, label %sw.bb.badkey_crit_edge

sw.bb.badkey_crit_edge:                           ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %badkey

if.end.i:                                         ; preds = %sw.bb
  %22 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %2, align 4
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i) #9
  %24 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 128)
  %call.i.i = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i, ptr noundef %23, i32 noundef 8) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -126
  br i1 %cmp.i.i, label %if.then.i.i, label %if.end.i.verify_aead_des_key.exit_crit_edge

if.end.i.verify_aead_des_key.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_aead_des_key.exit

if.then.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %base.i, align 128
  %and.i.i = and i32 %26, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %spec.select = select i1 %tobool.not.i.i, i32 0, i32 -22
  br label %verify_aead_des_key.exit

verify_aead_des_key.exit:                         ; preds = %if.then.i.i, %if.end.i.verify_aead_des_key.exit_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i, %if.end.i.verify_aead_des_key.exit_crit_edge ], [ %spec.select, %if.then.i.i ]
  %27 = call ptr @memset(ptr %tmp.i.i, i32 0, i32 128)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #9, !srcloc !176
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool24.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool24.not, label %verify_aead_des_key.exit.sw.epilog_crit_edge, label %verify_aead_des_key.exit.badkey_crit_edge, !prof !177

verify_aead_des_key.exit.badkey_crit_edge:        ; preds = %verify_aead_des_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %badkey

verify_aead_des_key.exit.sw.epilog_crit_edge:     ; preds = %verify_aead_des_key.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb33:                                          ; preds = %if.end19
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %29)
  %cmp.not.i148 = icmp eq i32 %29, 24
  br i1 %cmp.not.i148, label %if.end.i152, label %sw.bb33.badkey_crit_edge

sw.bb33.badkey_crit_edge:                         ; preds = %sw.bb33
  call void @__sanitizer_cov_trace_pc() #11
  br label %badkey

if.end.i152:                                      ; preds = %sw.bb33
  %30 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %2, align 4
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base.i, align 128
  %and.i.i150 = and i32 %33, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i150)
  %tobool.not.i.i151 = icmp eq i32 %and.i.i150, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #9
  %34 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 1
  %35 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 2
  %36 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 3
  %37 = call ptr @memcpy(ptr %K.i.i.i, ptr %31, i32 24)
  %38 = ptrtoint ptr %K.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %K.i.i.i, align 4
  %40 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %35, align 4
  %42 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %34, align 4
  %44 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %36, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %41)
  %46 = icmp eq i32 %39, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %47 = icmp eq i32 %43, %45
  %tobool.not.i.i.i = and i1 %46, %47
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i152
  %48 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 5
  %49 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %49, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %48, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %51)
  %54 = icmp ne i32 %41, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %53)
  %55 = icmp ne i32 %45, %53
  %tobool12.not.not.i.i.i = or i1 %54, %55
  %brmerge.i.i.i = or i1 %tobool.not.i.i151, %tobool12.not.not.i.i.i
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.verify_aead_des3_key.exit_crit_edge, label %lor.lhs.false.i.i.i.verify_aead_des3_key.exit.thread_crit_edge, !prof !179

lor.lhs.false.i.i.i.verify_aead_des3_key.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_aead_des3_key.exit.thread

lor.lhs.false.i.i.i.verify_aead_des3_key.exit_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_aead_des3_key.exit

land.lhs.true.i.i.i:                              ; preds = %if.end.i152
  br i1 %tobool.not.i.i151, label %land.lhs.true.i.i.i.verify_aead_des3_key.exit_crit_edge, label %land.lhs.true.i.i.i.verify_aead_des3_key.exit.thread_crit_edge, !prof !179

land.lhs.true.i.i.i.verify_aead_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_aead_des3_key.exit.thread

land.lhs.true.i.i.i.verify_aead_des3_key.exit_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %verify_aead_des3_key.exit

verify_aead_des3_key.exit.thread:                 ; preds = %land.lhs.true.i.i.i.verify_aead_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_aead_des3_key.exit.thread_crit_edge
  %56 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #9, !srcloc !176
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #9
  br label %badkey

verify_aead_des3_key.exit:                        ; preds = %land.lhs.true.i.i.i.verify_aead_des3_key.exit_crit_edge, %lor.lhs.false.i.i.i.verify_aead_des3_key.exit_crit_edge
  %57 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #9, !srcloc !176
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #9
  br label %sw.epilog

sw.bb46:                                          ; preds = %if.end19
  %58 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %2, align 4
  %60 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %4, align 4
  %call49 = call i32 @aes_expandkey(ptr noundef nonnull %aes, ptr noundef %59, i32 noundef %61) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call49)
  %tobool50.not = icmp eq i32 %call49, 0
  br i1 %tobool50.not, label %sw.bb46.sw.epilog_crit_edge, label %sw.bb46.badkey_crit_edge, !prof !177

sw.bb46.badkey_crit_edge:                         ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  br label %badkey

sw.bb46.sw.epilog_crit_edge:                      ; preds = %sw.bb46
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb59:                                          ; preds = %if.end19
  %62 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %63)
  %cmp61.not = icmp eq i32 %63, 16
  br i1 %cmp61.not, label %sw.bb59.sw.epilog_crit_edge, label %sw.bb59.badkey_crit_edge, !prof !177

sw.bb59.badkey_crit_edge:                         ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  br label %badkey

sw.bb59.sw.epilog_crit_edge:                      ; preds = %sw.bb59
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

do.end:                                           ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %65, ptr noundef nonnull @.str.23) #12
  br label %badkey

sw.epilog:                                        ; preds = %sw.bb59.sw.epilog_crit_edge, %sw.bb46.sw.epilog_crit_edge, %verify_aead_des3_key.exit, %verify_aead_des_key.exit.sw.epilog_crit_edge
  %err.0 = phi i32 [ -22, %sw.bb59.sw.epilog_crit_edge ], [ 0, %sw.bb46.sw.epilog_crit_edge ], [ 0, %verify_aead_des3_key.exit ], [ 0, %verify_aead_des_key.exit.sw.epilog_crit_edge ]
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 8
  %66 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags, align 4
  %and = and i32 %67, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool70.not = icmp eq i32 %and, 0
  br i1 %tobool70.not, label %sw.epilog.if.end83_crit_edge, label %land.lhs.true

sw.epilog.if.end83_crit_edge:                     ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

land.lhs.true:                                    ; preds = %sw.epilog
  %ctxr_dma = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 8
  %68 = ptrtoint ptr %ctxr_dma to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %ctxr_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %tobool72.not = icmp eq i32 %69, 0
  br i1 %tobool72.not, label %land.lhs.true.if.end83_crit_edge, label %for.cond.preheader

land.lhs.true.if.end83_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

for.cond.preheader:                               ; preds = %land.lhs.true
  %70 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %71)
  %cmp75158.not = icmp ult i32 %71, 4
  br i1 %cmp75158.not, label %for.cond.preheader.if.end83_crit_edge, label %for.body.lr.ph

for.cond.preheader.if.end83_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %div147 = lshr i32 %71, 2
  %72 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %2, align 4
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0159, 1
  %exitcond.not = icmp eq i32 %inc, %div147
  br i1 %exitcond.not, label %for.cond.if.end83_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.if.end83_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end83

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0159 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.safexcel_cipher_ctx, ptr %__crt_ctx.i, i32 0, i32 10, i32 %i.0159
  %74 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %arrayidx, align 4
  %76 = call i32 @llvm.bswap.i32(i32 %75)
  %arrayidx78 = getelementptr i32, ptr %73, i32 %i.0159
  %77 = ptrtoint ptr %arrayidx78 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %arrayidx78, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %76, i32 %78)
  %cmp79.not = icmp eq i32 %76, %78
  br i1 %cmp79.not, label %for.cond, label %if.then80

if.then80:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %needs_inv = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 3, i32 4, i32 24
  %79 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 1, ptr %needs_inv, align 4
  br label %if.end83

if.end83:                                         ; preds = %if.then80, %for.cond.if.end83_crit_edge, %for.cond.preheader.if.end83_crit_edge, %land.lhs.true.if.end83_crit_edge, %sw.epilog.if.end83_crit_edge
  %hash_alg = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 2, i32 8
  %80 = ptrtoint ptr %hash_alg to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %hash_alg, align 4
  %82 = add i32 %81, -16777216
  %83 = call i32 @llvm.fshl.i32(i32 %82, i32 %82, i32 9)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %83)
  %84 = icmp ult i32 %83, 6
  br i1 %84, label %switch.lookup, label %do.end93

do.end93:                                         ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #11
  %dev94 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 1
  %85 = ptrtoint ptr %dev94 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev94, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %86, ptr noundef nonnull @.str.32) #12
  br label %badkey

switch.lookup:                                    ; preds = %if.end83
  %switch.gep = getelementptr inbounds [6 x ptr], ptr @switch.table.safexcel_aead_setkey, i32 0, i32 %83
  %87 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %87)
  %switch.load = load ptr, ptr %switch.gep, align 4
  %88 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %keys, align 4
  %90 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %3, align 4
  %state_sz = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 2, i32 12
  %92 = ptrtoint ptr %state_sz to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %state_sz, align 4
  %call97 = call i32 @safexcel_hmac_setkey(ptr noundef %__crt_ctx.i, ptr noundef %89, i32 noundef %91, ptr noundef nonnull %switch.load, i32 noundef %93) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %for.cond101.preheader, label %switch.lookup.badkey_crit_edge

switch.lookup.badkey_crit_edge:                   ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #11
  br label %badkey

for.cond101.preheader:                            ; preds = %switch.lookup
  %94 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %95)
  %cmp104160.not = icmp ult i32 %95, 4
  br i1 %cmp104160.not, label %for.cond101.preheader.for.end112_crit_edge, label %for.body105.lr.ph

for.cond101.preheader.for.end112_crit_edge:       ; preds = %for.cond101.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end112

for.body105.lr.ph:                                ; preds = %for.cond101.preheader
  %div103146 = lshr i32 %95, 2
  %96 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %2, align 4
  br label %for.body105

for.body105:                                      ; preds = %for.body105.for.body105_crit_edge, %for.body105.lr.ph
  %i.1161 = phi i32 [ 0, %for.body105.lr.ph ], [ %inc111, %for.body105.for.body105_crit_edge ]
  %arrayidx107 = getelementptr i32, ptr %97, i32 %i.1161
  %98 = ptrtoint ptr %arrayidx107 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %arrayidx107, align 4
  %100 = call i32 @llvm.bswap.i32(i32 %99)
  %arrayidx109 = getelementptr %struct.safexcel_cipher_ctx, ptr %__crt_ctx.i, i32 0, i32 10, i32 %i.1161
  %101 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %100, ptr %arrayidx109, align 4
  %inc111 = add nuw nsw i32 %i.1161, 1
  %exitcond163.not = icmp eq i32 %inc111, %div103146
  br i1 %exitcond163.not, label %for.body105.for.end112_crit_edge, label %for.body105.for.body105_crit_edge

for.body105.for.body105_crit_edge:                ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body105

for.body105.for.end112_crit_edge:                 ; preds = %for.body105
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end112

for.end112:                                       ; preds = %for.body105.for.end112_crit_edge, %for.cond101.preheader.for.end112_crit_edge
  %key_len = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 2
  %102 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %95, ptr %key_len, align 4
  %103 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #9, !srcloc !176
  br label %cleanup

badkey:                                           ; preds = %switch.lookup.badkey_crit_edge, %do.end93, %do.end, %sw.bb59.badkey_crit_edge, %sw.bb46.badkey_crit_edge, %verify_aead_des3_key.exit.thread, %sw.bb33.badkey_crit_edge, %verify_aead_des_key.exit.badkey_crit_edge, %sw.bb.badkey_crit_edge, %if.then6.badkey_crit_edge, %entry.badkey_crit_edge
  %err.1 = phi i32 [ -22, %entry.badkey_crit_edge ], [ -22, %if.then6.badkey_crit_edge ], [ -22, %do.end ], [ -22, %sw.bb59.badkey_crit_edge ], [ %err.0, %do.end93 ], [ %err.0, %switch.lookup.badkey_crit_edge ], [ %call49, %sw.bb46.badkey_crit_edge ], [ %err.0.i.i, %verify_aead_des_key.exit.badkey_crit_edge ], [ -22, %sw.bb.badkey_crit_edge ], [ -22, %sw.bb33.badkey_crit_edge ], [ -126, %verify_aead_des3_key.exit.thread ]
  %104 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #9, !srcloc !176
  br label %cleanup

cleanup:                                          ; preds = %badkey, %for.end112
  %retval.0 = phi i32 [ %err.1, %badkey ], [ 0, %for.end112 ]
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes) #9
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %call1 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %req, ptr noundef %__ctx.i, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %call1 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %req, ptr noundef %__ctx.i, i32 noundef 1)
  ret i32 %call1
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha1_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i, align 4
  %blocksz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i, align 1
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %mode.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %10 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mode.i, align 4
  %aead.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %11 = ptrtoint ptr %aead.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %aead.i, align 4
  %12 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %13 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i, align 4
  %hash_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %14 = ptrtoint ptr %hash_alg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16777216, ptr %hash_alg, align 4
  %state_sz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %15 = ptrtoint ptr %state_sz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 20, ptr %state_sz, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @safexcel_aead_cra_exit(ptr noundef %tfm) #0 align 64 {
entry:
  %__req_desc.i = alloca [148 x i8], align 128
  %result.i = alloca %struct.safexcel_inv_result, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv1 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %0 = ptrtoint ptr %priv1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1, align 4
  %key.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 52
  %2 = call ptr @memset(ptr %key.i, i32 0, i32 64)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %key.i) #9, !srcloc !176
  %ctxr.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %3 = ptrtoint ptr %ctxr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctxr.i, align 4
  %tobool.not.i = icmp eq ptr %4, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %data.i = getelementptr inbounds %struct.safexcel_context_record, ptr %4, i32 0, i32 2
  %5 = call ptr @memset(ptr %data.i, i32 0, i32 160)
  tail call void asm sideeffect "", "r,~{memory}"(ptr %data.i) #9, !srcloc !176
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  br i1 %tobool3.not, label %if.else, label %if.then4

if.then4:                                         ; preds = %if.end
  call void @llvm.lifetime.start.p0(i64 148, ptr nonnull %__req_desc.i) #9
  %8 = getelementptr inbounds i8, ptr %__req_desc.i, i32 128
  %9 = call ptr @memset(ptr %8, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %result.i) #9
  %10 = call ptr @memset(ptr %result.i, i32 0, i32 60)
  %11 = call ptr @memset(ptr %__req_desc.i, i32 0, i32 128)
  %complete.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %__req_desc.i, i32 0, i32 1
  %12 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_inv_complete, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %__req_desc.i, i32 0, i32 2
  %13 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %result.i, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %__req_desc.i, i32 0, i32 4
  %14 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1024, ptr %flags4.i.i, align 4
  %tfm1.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %__req_desc.i, i32 0, i32 3
  %15 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %tfm, ptr %tfm1.i.i, align 16
  %call2.i = call fastcc i32 @safexcel_cipher_exit_inv(ptr noundef %tfm, ptr noundef nonnull %__req_desc.i, ptr noundef %8, ptr noundef nonnull %result.i) #9
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %result.i) #9
  call void @llvm.lifetime.end.p0(i64 148, ptr nonnull %__req_desc.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %tobool6.not = icmp eq i32 %call2.i, 0
  br i1 %tobool6.not, label %if.then4.cleanup_crit_edge, label %do.end

if.then4.cleanup_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %17, ptr noundef nonnull @.str.34, i32 noundef %call2.i) #12
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %context_pool = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 9
  %18 = ptrtoint ptr %context_pool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context_pool, align 4
  %20 = ptrtoint ptr %ctxr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctxr.i, align 4
  %ctxr_dma = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %22 = ptrtoint ptr %ctxr_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctxr_dma, align 4
  tail call void @dma_pool_free(ptr noundef %19, ptr noundef %21, i32 noundef %23) #9
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %if.then4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha256_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i, align 4
  %blocksz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i, align 1
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %mode.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %10 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mode.i, align 4
  %aead.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %11 = ptrtoint ptr %aead.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %aead.i, align 4
  %12 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %13 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i, align 4
  %hash_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %14 = ptrtoint ptr %hash_alg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 25165824, ptr %hash_alg, align 4
  %state_sz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %15 = ptrtoint ptr %state_sz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 32, ptr %state_sz, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha224_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i, align 4
  %blocksz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i, align 1
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %mode.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %10 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mode.i, align 4
  %aead.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %11 = ptrtoint ptr %aead.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %aead.i, align 4
  %12 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %13 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i, align 4
  %hash_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %14 = ptrtoint ptr %hash_alg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 33554432, ptr %hash_alg, align 4
  %state_sz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %15 = ptrtoint ptr %state_sz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 32, ptr %state_sz, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha512_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i, align 4
  %blocksz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i, align 1
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %mode.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %10 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mode.i, align 4
  %aead.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %11 = ptrtoint ptr %aead.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %aead.i, align 4
  %12 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %13 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i, align 4
  %hash_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %14 = ptrtoint ptr %hash_alg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 41943040, ptr %hash_alg, align 4
  %state_sz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %15 = ptrtoint ptr %state_sz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 64, ptr %state_sz, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha384_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i, align 4
  %blocksz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i, align 1
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %mode.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %10 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mode.i, align 4
  %aead.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %11 = ptrtoint ptr %aead.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %aead.i, align 4
  %12 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %13 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i, align 4
  %hash_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %14 = ptrtoint ptr %hash_alg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 50331648, ptr %hash_alg, align 4
  %state_sz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %15 = ptrtoint ptr %state_sz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 64, ptr %state_sz, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha1_des3_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %6 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %7 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %mode.i.i, align 4
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %8 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %aead.i.i, align 4
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %11 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777216, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %12 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 20, ptr %state_sz.i, align 4
  %13 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %alg.i.i, align 4
  %14 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %blocksz.i.i, align 1
  %15 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3072, ptr %ivmask.i.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha256_des3_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %6 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %7 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %mode.i.i, align 4
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %8 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %aead.i.i, align 4
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %11 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 25165824, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %12 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %state_sz.i, align 4
  %13 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %alg.i.i, align 4
  %14 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %blocksz.i.i, align 1
  %15 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3072, ptr %ivmask.i.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha224_des3_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %6 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %7 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %mode.i.i, align 4
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %8 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %aead.i.i, align 4
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %11 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 33554432, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %12 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %state_sz.i, align 4
  %13 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %alg.i.i, align 4
  %14 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %blocksz.i.i, align 1
  %15 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3072, ptr %ivmask.i.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha512_des3_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %6 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %7 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %mode.i.i, align 4
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %8 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %aead.i.i, align 4
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %11 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 41943040, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %12 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %state_sz.i, align 4
  %13 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %alg.i.i, align 4
  %14 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %blocksz.i.i, align 1
  %15 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3072, ptr %ivmask.i.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha384_des3_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %6 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %7 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %mode.i.i, align 4
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %8 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %aead.i.i, align 4
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %11 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 50331648, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %12 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %state_sz.i, align 4
  %13 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 1, ptr %alg.i.i, align 4
  %14 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %blocksz.i.i, align 1
  %15 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3072, ptr %ivmask.i.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha1_des_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %6 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %7 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %mode.i.i, align 4
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %8 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %aead.i.i, align 4
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %11 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16777216, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %12 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 20, ptr %state_sz.i, align 4
  %13 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %alg.i.i, align 4
  %14 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %blocksz.i.i, align 1
  %15 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3072, ptr %ivmask.i.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha256_des_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %6 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %7 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %mode.i.i, align 4
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %8 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %aead.i.i, align 4
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %11 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 25165824, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %12 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %state_sz.i, align 4
  %13 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %alg.i.i, align 4
  %14 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %blocksz.i.i, align 1
  %15 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3072, ptr %ivmask.i.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha224_des_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %6 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %7 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %mode.i.i, align 4
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %8 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %aead.i.i, align 4
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %11 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 33554432, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %12 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 32, ptr %state_sz.i, align 4
  %13 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %alg.i.i, align 4
  %14 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %blocksz.i.i, align 1
  %15 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3072, ptr %ivmask.i.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha512_des_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %6 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %7 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %mode.i.i, align 4
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %8 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %aead.i.i, align 4
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %11 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 41943040, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %12 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %state_sz.i, align 4
  %13 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %alg.i.i, align 4
  %14 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %blocksz.i.i, align 1
  %15 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3072, ptr %ivmask.i.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha384_des_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %6 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %7 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %mode.i.i, align 4
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %8 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %aead.i.i, align 4
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %11 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 50331648, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %12 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 64, ptr %state_sz.i, align 4
  %13 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %alg.i.i, align 4
  %14 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 8, ptr %blocksz.i.i, align 1
  %15 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3072, ptr %ivmask.i.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha1_ctr_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i.i, align 4
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i.i, align 1
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i.i, align 4
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %10 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %aead.i.i, align 4
  %11 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %12 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %13 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16777216, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %14 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 20, ptr %state_sz.i, align 4
  %15 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %mode.i.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha256_ctr_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i.i, align 4
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i.i, align 1
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i.i, align 4
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %10 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %aead.i.i, align 4
  %11 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %12 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %13 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 25165824, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %14 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32, ptr %state_sz.i, align 4
  %15 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %mode.i.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha224_ctr_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i.i, align 4
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i.i, align 1
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i.i, align 4
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %10 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %aead.i.i, align 4
  %11 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %12 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %13 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 33554432, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %14 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 32, ptr %state_sz.i, align 4
  %15 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %mode.i.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha512_ctr_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i.i, align 4
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i.i, align 1
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i.i, align 4
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %10 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %aead.i.i, align 4
  %11 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %12 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %13 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 41943040, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %14 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64, ptr %state_sz.i, align 4
  %15 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %mode.i.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sha384_ctr_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i.i, align 4
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i.i, align 1
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i.i, align 4
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %10 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %aead.i.i, align 4
  %11 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %12 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %13 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 50331648, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %14 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 64, ptr %state_sz.i, align 4
  %15 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %mode.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_skcipher_aesxts_setkey(ptr nocapture noundef %ctfm, ptr noundef %key, i32 noundef %len) #0 align 64 {
entry:
  %aes = alloca %struct.crypto_aes_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1
  %priv2 = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 8
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %aes) #9
  %2 = call ptr @memset(ptr %aes, i32 255, i32 484)
  %rem.i = and i32 %len, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %base.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 0, i32 2
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %base.i, align 128
  %and.i = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  %.pre = lshr i32 %len, 1
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %add.ptr.i = getelementptr i8, ptr %key, i32 %.pre
  %call.i.i = tail call i32 @__crypto_memneq(ptr noundef %key, ptr noundef %add.ptr.i, i32 noundef %.pre) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %call4 = call i32 @aes_expandkey(ptr noundef nonnull %aes, ptr noundef %key, i32 noundef %.pre) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 8
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %if.end7.if.end18_crit_edge, label %land.lhs.true

if.end7.if.end18_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %if.end7
  %ctxr_dma = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 12
  %7 = ptrtoint ptr %ctxr_dma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctxr_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool10.not = icmp eq i32 %8, 0
  br i1 %tobool10.not, label %land.lhs.true.if.end18_crit_edge, label %for.cond.preheader

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.cond.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp126.not = icmp ult i32 %len, 8
  br i1 %cmp126.not, label %for.cond.preheader.for.end29_crit_edge, label %for.body.preheader

for.cond.preheader.for.end29_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.body.preheader:                               ; preds = %for.cond.preheader
  %div123 = lshr i32 %len, 3
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0127, 1
  %exitcond.not = icmp eq i32 %inc, %div123
  br i1 %exitcond.not, label %for.cond.if.end18_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.if.end18_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0127 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.safexcel_cipher_ctx, ptr %__crt_ctx.i, i32 0, i32 10, i32 %i.0127
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx, align 4
  %11 = call i32 @llvm.bswap.i32(i32 %10)
  %arrayidx13 = getelementptr [60 x i32], ptr %aes, i32 0, i32 %i.0127
  %12 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp14.not = icmp eq i32 %11, %13
  br i1 %cmp14.not, label %for.cond, label %if.then15

if.then15:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %needs_inv = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 24
  %14 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 1, ptr %needs_inv, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %for.cond.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.end7.if.end18_crit_edge
  %div20122 = lshr i32 %len, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %len)
  %cmp21128.not = icmp ult i32 %len, 8
  br i1 %cmp21128.not, label %if.end18.for.end29_crit_edge, label %for.body22.preheader

if.end18.for.end29_crit_edge:                     ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.body22.preheader:                             ; preds = %if.end18
  %umax134 = call i32 @llvm.umax.i32(i32 %div20122, i32 1)
  br label %for.body22

for.body22:                                       ; preds = %for.body22.for.body22_crit_edge, %for.body22.preheader
  %i.1129 = phi i32 [ %inc28, %for.body22.for.body22_crit_edge ], [ 0, %for.body22.preheader ]
  %arrayidx24 = getelementptr [60 x i32], ptr %aes, i32 0, i32 %i.1129
  %15 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx24, align 4
  %17 = call i32 @llvm.bswap.i32(i32 %16)
  %arrayidx26 = getelementptr %struct.safexcel_cipher_ctx, ptr %__crt_ctx.i, i32 0, i32 10, i32 %i.1129
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %arrayidx26, align 4
  %inc28 = add nuw nsw i32 %i.1129, 1
  %exitcond135.not = icmp eq i32 %inc28, %umax134
  br i1 %exitcond135.not, label %for.body22.for.end29_crit_edge, label %for.body22.for.body22_crit_edge

for.body22.for.body22_crit_edge:                  ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body22

for.body22.for.end29_crit_edge:                   ; preds = %for.body22
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.end29:                                        ; preds = %for.body22.for.end29_crit_edge, %if.end18.for.end29_crit_edge, %for.cond.preheader.for.end29_crit_edge
  %cmp21128.not144 = phi i1 [ true, %if.end18.for.end29_crit_edge ], [ true, %for.cond.preheader.for.end29_crit_edge ], [ %cmp21128.not, %for.body22.for.end29_crit_edge ]
  %div20122142 = phi i32 [ %div20122, %if.end18.for.end29_crit_edge ], [ 0, %for.cond.preheader.for.end29_crit_edge ], [ %div20122, %for.body22.for.end29_crit_edge ]
  %add.ptr = getelementptr i8, ptr %key, i32 %.pre
  %call30 = call i32 @aes_expandkey(ptr noundef nonnull %aes, ptr noundef %add.ptr, i32 noundef %.pre) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %for.end29.cleanup_crit_edge

for.end29.cleanup_crit_edge:                      ; preds = %for.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %for.end29
  %19 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %flags, align 4
  %and35 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end33.if.end59_crit_edge, label %land.lhs.true37

if.end33.if.end59_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.lhs.true37:                                  ; preds = %if.end33
  %ctxr_dma39 = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 12
  %21 = ptrtoint ptr %ctxr_dma39 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ctxr_dma39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool40.not = icmp ne i32 %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %len)
  %cmp44130 = icmp ugt i32 %len, 7
  %or.cond = and i1 %tobool40.not, %cmp44130
  br i1 %or.cond, label %for.body45.preheader, label %land.lhs.true37.if.end59_crit_edge

land.lhs.true37.if.end59_crit_edge:               ; preds = %land.lhs.true37
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.body45.preheader:                             ; preds = %land.lhs.true37
  %umax136 = call i32 @llvm.umax.i32(i32 %div20122142, i32 1)
  br label %for.body45

for.cond42:                                       ; preds = %for.body45
  %inc57 = add nuw nsw i32 %i.2131, 1
  %exitcond137.not = icmp eq i32 %inc57, %umax136
  br i1 %exitcond137.not, label %for.cond42.if.end59_crit_edge, label %for.cond42.for.body45_crit_edge

for.cond42.for.body45_crit_edge:                  ; preds = %for.cond42
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body45

for.cond42.if.end59_crit_edge:                    ; preds = %for.cond42
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.body45:                                       ; preds = %for.cond42.for.body45_crit_edge, %for.body45.preheader
  %i.2131 = phi i32 [ %inc57, %for.cond42.for.body45_crit_edge ], [ 0, %for.body45.preheader ]
  %add = add nuw nsw i32 %i.2131, %div20122142
  %arrayidx48 = getelementptr %struct.safexcel_cipher_ctx, ptr %__crt_ctx.i, i32 0, i32 10, i32 %add
  %23 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx48, align 4
  %25 = call i32 @llvm.bswap.i32(i32 %24)
  %arrayidx50 = getelementptr [60 x i32], ptr %aes, i32 0, i32 %i.2131
  %26 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %25, i32 %27)
  %cmp51.not = icmp eq i32 %25, %27
  br i1 %cmp51.not, label %for.cond42, label %if.then52

if.then52:                                        ; preds = %for.body45
  call void @__sanitizer_cov_trace_pc() #11
  %needs_inv54 = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 24
  %28 = ptrtoint ptr %needs_inv54 to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %needs_inv54, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then52, %for.cond42.if.end59_crit_edge, %land.lhs.true37.if.end59_crit_edge, %if.end33.if.end59_crit_edge
  br i1 %cmp21128.not144, label %if.end59.for.end72_crit_edge, label %for.body63.preheader

if.end59.for.end72_crit_edge:                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end72

for.body63.preheader:                             ; preds = %if.end59
  %umax138 = call i32 @llvm.umax.i32(i32 %div20122142, i32 1)
  br label %for.body63

for.body63:                                       ; preds = %for.body63.for.body63_crit_edge, %for.body63.preheader
  %i.3133 = phi i32 [ %inc71, %for.body63.for.body63_crit_edge ], [ 0, %for.body63.preheader ]
  %arrayidx65 = getelementptr [60 x i32], ptr %aes, i32 0, i32 %i.3133
  %29 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx65, align 4
  %31 = call i32 @llvm.bswap.i32(i32 %30)
  %add68 = add nuw nsw i32 %i.3133, %div20122142
  %arrayidx69 = getelementptr %struct.safexcel_cipher_ctx, ptr %__crt_ctx.i, i32 0, i32 10, i32 %add68
  %32 = ptrtoint ptr %arrayidx69 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %arrayidx69, align 4
  %inc71 = add nuw nsw i32 %i.3133, 1
  %exitcond139.not = icmp eq i32 %inc71, %umax138
  br i1 %exitcond139.not, label %for.body63.for.end72_crit_edge, label %for.body63.for.body63_crit_edge

for.body63.for.body63_crit_edge:                  ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body63

for.body63.for.end72_crit_edge:                   ; preds = %for.body63
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end72

for.end72:                                        ; preds = %for.body63.for.end72_crit_edge, %if.end59.for.end72_crit_edge
  %shl = and i32 %len, -2
  %key_len = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 2, i32 1, i32 4
  %33 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %shl, ptr %key_len, align 4
  %34 = call ptr @memset(ptr %aes, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes) #9, !srcloc !176
  br label %cleanup

cleanup:                                          ; preds = %for.end72, %for.end29.cleanup_crit_edge, %if.end.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end72 ], [ %call4, %if.end.cleanup_crit_edge ], [ %call30, %for.end29.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes) #9
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_encrypt_xts(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ult i32 %1, 16
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %call1 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %base, ptr noundef %__ctx.i, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_decrypt_xts(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %1)
  %cmp = icmp ult i32 %1, 16
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %call1 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %base, ptr noundef %__ctx.i, i32 noundef 1)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_aes_xts_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %10 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %alg, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %11 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %blocksz, align 1
  %xts = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 3
  %12 = ptrtoint ptr %xts to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %xts, align 4
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %13 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 7, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_gcm_setkey(ptr nocapture noundef %ctfm, ptr noundef %key, i32 noundef %len) #0 align 64 {
entry:
  %aes = alloca %struct.crypto_aes_ctx, align 4
  %hashkey = alloca [4 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 0, i32 3
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1
  %priv2 = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 4
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %aes) #9
  %2 = call ptr @memset(ptr %aes, i32 255, i32 484)
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %hashkey) #9
  %3 = getelementptr inbounds [4 x i32], ptr %hashkey, i32 0, i32 1
  %4 = getelementptr inbounds [4 x i32], ptr %hashkey, i32 0, i32 2
  %5 = getelementptr inbounds [4 x i32], ptr %hashkey, i32 0, i32 3
  %call3 = call i32 @aes_expandkey(ptr noundef nonnull %aes, ptr noundef %key, i32 noundef %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %6 = call ptr @memset(ptr %aes, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes) #9, !srcloc !176
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 8
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %ctxr_dma = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 8
  %9 = ptrtoint ptr %ctxr_dma to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctxr_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool6.not = icmp eq i32 %10, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end14_crit_edge, label %for.cond.preheader

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.cond.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp117.not = icmp ult i32 %len, 4
  br i1 %cmp117.not, label %for.cond.preheader.for.end25_crit_edge, label %for.body.preheader

for.cond.preheader.for.end25_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.body.preheader:                               ; preds = %for.cond.preheader
  %div116 = lshr i32 %len, 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.0118, 1
  %exitcond.not = icmp eq i32 %inc, %div116
  br i1 %exitcond.not, label %for.cond.if.end14_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.if.end14_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.0118 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.safexcel_cipher_ctx, ptr %__crt_ctx.i, i32 0, i32 10, i32 %i.0118
  %11 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx, align 4
  %13 = call i32 @llvm.bswap.i32(i32 %12)
  %arrayidx9 = getelementptr [60 x i32], ptr %aes, i32 0, i32 %i.0118
  %14 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %15)
  %cmp10.not = icmp eq i32 %13, %15
  br i1 %cmp10.not, label %for.cond, label %if.then11

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %needs_inv = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 3, i32 4, i32 24
  %16 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %needs_inv, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %for.cond.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp17119.not = icmp ult i32 %len, 4
  br i1 %cmp17119.not, label %if.end14.for.end25_crit_edge, label %for.body18.preheader

if.end14.for.end25_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.body18.preheader:                             ; preds = %if.end14
  %div16115 = lshr i32 %len, 2
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.body18.preheader
  %i.1120 = phi i32 [ %inc24, %for.body18.for.body18_crit_edge ], [ 0, %for.body18.preheader ]
  %arrayidx20 = getelementptr [60 x i32], ptr %aes, i32 0, i32 %i.1120
  %17 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx20, align 4
  %19 = call i32 @llvm.bswap.i32(i32 %18)
  %arrayidx22 = getelementptr %struct.safexcel_cipher_ctx, ptr %__crt_ctx.i, i32 0, i32 10, i32 %i.1120
  %20 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx22, align 4
  %inc24 = add nuw nsw i32 %i.1120, 1
  %exitcond124.not = icmp eq i32 %inc24, %div16115
  br i1 %exitcond124.not, label %for.body18.for.end25_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18

for.body18.for.end25_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end25

for.end25:                                        ; preds = %for.body18.for.end25_crit_edge, %if.end14.for.end25_crit_edge, %for.cond.preheader.for.end25_crit_edge
  %key_len = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 2
  %21 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %len, ptr %key_len, align 4
  %hkaes = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 2, i32 16
  %22 = ptrtoint ptr %hkaes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %hkaes, align 4
  %24 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %23, align 128
  %and.i.i = and i32 %25, -1048321
  store i32 %and.i.i, ptr %23, align 128
  %26 = load ptr, ptr %hkaes, align 4
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %base.i, align 128
  %and28 = and i32 %28, 1048320
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %26, align 128
  %or.i.i = or i32 %30, %and28
  store i32 %or.i.i, ptr %26, align 128
  %31 = load ptr, ptr %hkaes, align 4
  %call30 = call i32 @crypto_cipher_setkey(ptr noundef %31, ptr noundef %key, i32 noundef %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %tobool31.not = icmp eq i32 %call30, 0
  br i1 %tobool31.not, label %if.end33, label %for.end25.cleanup_crit_edge

for.end25.cleanup_crit_edge:                      ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end33:                                         ; preds = %for.end25
  %32 = call ptr @memset(ptr %hashkey, i32 0, i32 16)
  %33 = ptrtoint ptr %hkaes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %hkaes, align 4
  call void @crypto_cipher_encrypt_one(ptr noundef %34, ptr noundef nonnull %hashkey, ptr noundef nonnull %hashkey) #9
  %35 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %flags, align 4
  %and38 = and i32 %36, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38)
  %tobool39.not = icmp eq i32 %and38, 0
  br i1 %tobool39.not, label %if.end33.if.end59_crit_edge, label %land.lhs.true40

if.end33.if.end59_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

land.lhs.true40:                                  ; preds = %if.end33
  %ctxr_dma42 = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 8
  %37 = ptrtoint ptr %ctxr_dma42 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ctxr_dma42, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool43.not = icmp eq i32 %38, 0
  br i1 %tobool43.not, label %land.lhs.true40.if.end59_crit_edge, label %for.cond45.preheader

land.lhs.true40.if.end59_crit_edge:               ; preds = %land.lhs.true40
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

for.cond45.preheader:                             ; preds = %land.lhs.true40
  %ipad = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 12
  %39 = ptrtoint ptr %ipad to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ipad, align 4
  %41 = ptrtoint ptr %hashkey to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %hashkey, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %40, i32 %42)
  %cmp51.not = icmp eq i32 %40, %42
  br i1 %cmp51.not, label %for.cond45, label %for.cond45.preheader.if.then52_crit_edge

for.cond45.preheader.if.then52_crit_edge:         ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52

for.cond45:                                       ; preds = %for.cond45.preheader
  %arrayidx49.1 = getelementptr %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 16
  %43 = ptrtoint ptr %arrayidx49.1 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx49.1, align 4
  %45 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %46)
  %cmp51.not.1 = icmp eq i32 %44, %46
  br i1 %cmp51.not.1, label %for.cond45.1, label %for.cond45.if.then52_crit_edge

for.cond45.if.then52_crit_edge:                   ; preds = %for.cond45
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52

for.cond45.1:                                     ; preds = %for.cond45
  %arrayidx49.2 = getelementptr %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 20
  %47 = ptrtoint ptr %arrayidx49.2 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %arrayidx49.2, align 4
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %4, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %50)
  %cmp51.not.2 = icmp eq i32 %48, %50
  br i1 %cmp51.not.2, label %for.cond45.2, label %for.cond45.1.if.then52_crit_edge

for.cond45.1.if.then52_crit_edge:                 ; preds = %for.cond45.1
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52

for.cond45.2:                                     ; preds = %for.cond45.1
  %arrayidx49.3 = getelementptr %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 24
  %51 = ptrtoint ptr %arrayidx49.3 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %arrayidx49.3, align 4
  %53 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp51.not.3 = icmp eq i32 %52, %54
  br i1 %cmp51.not.3, label %for.cond45.2.if.end59_crit_edge, label %for.cond45.2.if.then52_crit_edge

for.cond45.2.if.then52_crit_edge:                 ; preds = %for.cond45.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then52

for.cond45.2.if.end59_crit_edge:                  ; preds = %for.cond45.2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end59

if.then52:                                        ; preds = %for.cond45.2.if.then52_crit_edge, %for.cond45.1.if.then52_crit_edge, %for.cond45.if.then52_crit_edge, %for.cond45.preheader.if.then52_crit_edge
  %needs_inv54 = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 3, i32 4, i32 24
  %55 = ptrtoint ptr %needs_inv54 to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 1, ptr %needs_inv54, align 4
  br label %if.end59

if.end59:                                         ; preds = %if.then52, %for.cond45.2.if.end59_crit_edge, %land.lhs.true40.if.end59_crit_edge, %if.end33.if.end59_crit_edge
  %ipad65 = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 12
  %56 = call ptr @memcpy(ptr %ipad65, ptr %hashkey, i32 16)
  %57 = call ptr @memset(ptr %hashkey, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %hashkey) #9, !srcloc !176
  %58 = call ptr @memset(ptr %aes, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes) #9, !srcloc !176
  br label %cleanup

cleanup:                                          ; preds = %if.end59, %for.end25.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %if.end59 ], [ %call30, %for.end25.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %hashkey) #9
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_gcm_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %authsize, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  br i1 %0, label %switch.lookup, label %entry.crypto_gcm_check_authsize.exit_crit_edge

entry.crypto_gcm_check_authsize.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_gcm_check_authsize.exit

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.safexcel_aead_gcm_setauthsize, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %crypto_gcm_check_authsize.exit

crypto_gcm_check_authsize.exit:                   ; preds = %switch.lookup, %entry.crypto_gcm_check_authsize.exit_crit_edge
  %retval.0.i = phi i32 [ -22, %entry.crypto_gcm_check_authsize.exit_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_gcm_cra_init(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i, align 4
  %blocksz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i, align 1
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %mode.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %aead.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %10 = ptrtoint ptr %aead.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %aead.i, align 4
  %11 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %12 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i, align 4
  %hash_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %13 = ptrtoint ptr %hash_alg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 33554432, ptr %hash_alg, align 4
  %state_sz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %14 = ptrtoint ptr %state_sz to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %state_sz, align 4
  %xcm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 41
  %15 = ptrtoint ptr %xcm to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %xcm, align 1
  %16 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 131078, ptr %mode.i, align 4
  %call.i = tail call ptr @crypto_alloc_base(ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef 15) #9
  %hkaes = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 8
  %17 = ptrtoint ptr %hkaes to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %hkaes, align 4
  %cmp.i.i = icmp ugt ptr %call.i, inttoptr (i32 -4096 to ptr)
  %18 = ptrtoint ptr %call.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %18, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @safexcel_aead_gcm_cra_exit(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %hkaes = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 8
  %0 = ptrtoint ptr %hkaes to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %hkaes, align 4
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %1) #9
  tail call void @safexcel_aead_cra_exit(ptr noundef %tfm)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_ccm_setkey(ptr nocapture noundef %ctfm, ptr noundef %key, i32 noundef %len) #0 align 64 {
entry:
  %aes = alloca %struct.crypto_aes_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1
  %priv2 = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 4
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  call void @llvm.lifetime.start.p0(i64 484, ptr nonnull %aes) #9
  %2 = call ptr @memset(ptr %aes, i32 255, i32 484)
  %call3 = call i32 @aes_expandkey(ptr noundef nonnull %aes, ptr noundef %key, i32 noundef %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %3 = call ptr @memset(ptr %aes, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes) #9, !srcloc !176
  br label %cleanup

if.end:                                           ; preds = %entry
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.end.if.end14_crit_edge, label %land.lhs.true

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

land.lhs.true:                                    ; preds = %if.end
  %ctxr_dma = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 8
  %6 = ptrtoint ptr %ctxr_dma to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ctxr_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool6.not = icmp eq i32 %7, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end14_crit_edge, label %for.cond.preheader

land.lhs.true.if.end14_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.cond.preheader:                               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp73.not = icmp ult i32 %len, 4
  br i1 %cmp73.not, label %for.cond.preheader.for.end29_crit_edge, label %for.body.preheader

for.cond.preheader.for.end29_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.body.preheader:                               ; preds = %for.cond.preheader
  %div72 = lshr i32 %len, 2
  br label %for.body

for.cond:                                         ; preds = %for.body
  %inc = add nuw nsw i32 %i.074, 1
  %exitcond.not = icmp eq i32 %inc, %div72
  br i1 %exitcond.not, label %for.cond.if.end14_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.cond.if.end14_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end14

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.preheader
  %i.074 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %arrayidx = getelementptr %struct.safexcel_cipher_ctx, ptr %__crt_ctx.i, i32 0, i32 10, i32 %i.074
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx, align 4
  %10 = call i32 @llvm.bswap.i32(i32 %9)
  %arrayidx9 = getelementptr [60 x i32], ptr %aes, i32 0, i32 %i.074
  %11 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %arrayidx9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp10.not = icmp eq i32 %10, %12
  br i1 %cmp10.not, label %for.cond, label %if.then11

if.then11:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %needs_inv = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 3, i32 4, i32 24
  %13 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 1, ptr %needs_inv, align 4
  br label %if.end14

if.end14:                                         ; preds = %if.then11, %for.cond.if.end14_crit_edge, %land.lhs.true.if.end14_crit_edge, %if.end.if.end14_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp1775.not = icmp ult i32 %len, 4
  br i1 %cmp1775.not, label %if.end14.for.end29_crit_edge, label %for.body18.lr.ph

if.end14.for.end29_crit_edge:                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.body18.lr.ph:                                 ; preds = %if.end14
  %div1671 = lshr i32 %len, 2
  %ipad = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 12
  br label %for.body18

for.body18:                                       ; preds = %for.body18.for.body18_crit_edge, %for.body18.lr.ph
  %i.176 = phi i32 [ 0, %for.body18.lr.ph ], [ %inc28, %for.body18.for.body18_crit_edge ]
  %arrayidx20 = getelementptr [60 x i32], ptr %aes, i32 0, i32 %i.176
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20, align 4
  %16 = call i32 @llvm.bswap.i32(i32 %15)
  %arrayidx22 = getelementptr %struct.safexcel_cipher_ctx, ptr %__crt_ctx.i, i32 0, i32 10, i32 %i.176
  %17 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %arrayidx22, align 4
  %add = add nuw nsw i32 %i.176, 8
  %arrayidx26 = getelementptr [18 x i32], ptr %ipad, i32 0, i32 %add
  %18 = ptrtoint ptr %arrayidx26 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %arrayidx26, align 4
  %inc28 = add nuw nsw i32 %i.176, 1
  %exitcond78.not = icmp eq i32 %inc28, %div1671
  br i1 %exitcond78.not, label %for.body18.for.end29_crit_edge, label %for.body18.for.body18_crit_edge

for.body18.for.body18_crit_edge:                  ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body18

for.body18.for.end29_crit_edge:                   ; preds = %for.body18
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.end29:                                        ; preds = %for.body18.for.end29_crit_edge, %if.end14.for.end29_crit_edge, %for.cond.preheader.for.end29_crit_edge
  %key_len = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 2
  %19 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %len, ptr %key_len, align 4
  %add30 = add i32 %len, 32
  %state_sz = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 2, i32 12
  %20 = ptrtoint ptr %state_sz to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add30, ptr %state_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len)
  %switch.selectcmp = icmp eq i32 %len, 32
  %switch.select = select i1 %switch.selectcmp, i32 25165824, i32 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %len)
  %switch.selectcmp80 = icmp eq i32 %len, 24
  %switch.select81 = select i1 %switch.selectcmp80, i32 16777216, i32 %switch.select
  %hash_alg35 = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 2, i32 8
  %21 = ptrtoint ptr %hash_alg35 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %switch.select81, ptr %hash_alg35, align 4
  %22 = call ptr @memset(ptr %aes, i32 0, i32 484)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %aes) #9, !srcloc !176
  br label %cleanup

cleanup:                                          ; preds = %for.end29, %if.then
  %retval.0 = phi i32 [ %call3, %if.then ], [ 0, %for.end29 ]
  call void @llvm.lifetime.end.p0(i64 484, ptr nonnull %aes) #9
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_ccm_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %switch.tableidx = add i32 %authsize, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %switch.tableidx)
  %0 = icmp ult i32 %switch.tableidx, 13
  br i1 %0, label %switch.lookup, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

switch.lookup:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %switch.gep = getelementptr inbounds [13 x i32], ptr @switch.table.safexcel_aead_ccm_setauthsize, i32 0, i32 %switch.tableidx
  %1 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %1)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %return

return:                                           ; preds = %switch.lookup, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ %switch.load, %switch.lookup ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_ccm_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv, align 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = add i8 %3, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %4)
  %5 = icmp ult i8 %4, -7
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %call7 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %req, ptr noundef %__ctx.i, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_ccm_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iv, align 32
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %1, align 1
  %4 = add i8 %3, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %4)
  %5 = icmp ult i8 %4, -7
  br i1 %5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %call7 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %req, ptr noundef %__ctx.i, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_ccm_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i, align 4
  %blocksz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i, align 1
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %mode.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %aead.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %9 = ptrtoint ptr %aead.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %aead.i, align 4
  %10 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %11 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i, align 4
  %hash_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %12 = ptrtoint ptr %hash_alg to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8388608, ptr %hash_alg, align 4
  %state_sz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %13 = ptrtoint ptr %state_sz to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 48, ptr %state_sz, align 4
  %xcm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 41
  %14 = ptrtoint ptr %xcm to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 2, ptr %xcm, align 1
  %15 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 131078, ptr %mode.i, align 4
  %16 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %ctrinit.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_chacha20_setkey(ptr nocapture noundef %ctfm, ptr nocapture noundef readonly %key, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len)
  %cmp.not = icmp eq i32 %len, 32
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv1.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 8
  %0 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv1.i, align 4
  %flags.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.safexcel_chacha20_setkey.exit_crit_edge, label %land.lhs.true.i

if.end.safexcel_chacha20_setkey.exit_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %safexcel_chacha20_setkey.exit

land.lhs.true.i:                                  ; preds = %if.end
  %ctxr_dma.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 12
  %4 = ptrtoint ptr %ctxr_dma.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctxr_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool3.not.i = icmp eq i32 %5, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.safexcel_chacha20_setkey.exit_crit_edge, label %if.then.i

land.lhs.true.i.safexcel_chacha20_setkey.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %safexcel_chacha20_setkey.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %key4.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 52
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(32) %key4.i, ptr noundef dereferenceable(32) %key, i32 32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool5.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i, label %if.then.i.safexcel_chacha20_setkey.exit_crit_edge, label %if.then6.i

if.then.i.safexcel_chacha20_setkey.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %safexcel_chacha20_setkey.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %needs_inv.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 24
  %6 = ptrtoint ptr %needs_inv.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %needs_inv.i, align 4
  br label %safexcel_chacha20_setkey.exit

safexcel_chacha20_setkey.exit:                    ; preds = %if.then6.i, %if.then.i.safexcel_chacha20_setkey.exit_crit_edge, %land.lhs.true.i.safexcel_chacha20_setkey.exit_crit_edge, %if.end.safexcel_chacha20_setkey.exit_crit_edge
  %key9.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 52
  %7 = call ptr @memcpy(ptr %key9.i, ptr %key, i32 32)
  %key_len.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 2, i32 1, i32 4
  %8 = ptrtoint ptr %key_len.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 32, ptr %key_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %safexcel_chacha20_setkey.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %safexcel_chacha20_setkey.exit ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_chacha20_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %9 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 3, ptr %alg, align 4
  %10 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %ctrinit.i, align 4
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %11 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_chachapoly_setkey(ptr nocapture noundef %ctfm, ptr nocapture noundef readonly %key, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %aead = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 3, i32 4, i32 40
  %0 = ptrtoint ptr %aead to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %aead, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %1)
  %cmp = icmp eq i8 %1, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %len)
  %cmp2 = icmp ugt i32 %len, 4
  %or.cond = and i1 %cmp2, %cmp
  br i1 %or.cond, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %sub = add i32 %len, -4
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %2 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %add.ptr, align 4
  %nonce = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 1
  %4 = ptrtoint ptr %nonce to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %nonce, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %len.addr.0 = phi i32 [ %sub, %if.then ], [ %len, %entry.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %len.addr.0)
  %cmp4.not = icmp eq i32 %len.addr.0, 32
  br i1 %cmp4.not, label %if.end7, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %priv1.i = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 4
  %5 = ptrtoint ptr %priv1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %priv1.i, align 4
  %flags.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %6, i32 0, i32 8
  %7 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end7.safexcel_chacha20_setkey.exit_crit_edge, label %land.lhs.true.i

if.end7.safexcel_chacha20_setkey.exit_crit_edge:  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #11
  br label %safexcel_chacha20_setkey.exit

land.lhs.true.i:                                  ; preds = %if.end7
  %ctxr_dma.i = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 2, i32 8
  %9 = ptrtoint ptr %ctxr_dma.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %ctxr_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool3.not.i = icmp eq i32 %10, 0
  br i1 %tobool3.not.i, label %land.lhs.true.i.safexcel_chacha20_setkey.exit_crit_edge, label %if.then.i

land.lhs.true.i.safexcel_chacha20_setkey.exit_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %safexcel_chacha20_setkey.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %key4.i = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 3, i32 4, i32 52
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(32) %key4.i, ptr noundef dereferenceable(32) %key, i32 32) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool5.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool5.not.i, label %if.then.i.safexcel_chacha20_setkey.exit_crit_edge, label %if.then6.i

if.then.i.safexcel_chacha20_setkey.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %safexcel_chacha20_setkey.exit

if.then6.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %needs_inv.i = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 3, i32 4, i32 24
  %11 = ptrtoint ptr %needs_inv.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %needs_inv.i, align 4
  br label %safexcel_chacha20_setkey.exit

safexcel_chacha20_setkey.exit:                    ; preds = %if.then6.i, %if.then.i.safexcel_chacha20_setkey.exit_crit_edge, %land.lhs.true.i.safexcel_chacha20_setkey.exit_crit_edge, %if.end7.safexcel_chacha20_setkey.exit_crit_edge
  %key9.i = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 1, i32 3, i32 4, i32 52
  %12 = call ptr @memcpy(ptr %key9.i, ptr %key, i32 32)
  %key_len.i = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 2
  %13 = ptrtoint ptr %key_len.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 32, ptr %key_len.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %safexcel_chacha20_setkey.exit, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %safexcel_chacha20_setkey.exit ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_chachapoly_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %authsize)
  %cmp.not = icmp eq i32 %authsize, 16
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_chachapoly_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @safexcel_aead_chachapoly_crypt(ptr noundef %req, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_chachapoly_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @safexcel_aead_chachapoly_crypt(ptr noundef %req, i32 noundef 1)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_chachapoly_cra_init(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr i8, ptr %tfm, i32 12
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i3.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i.i, align 4
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i.i, align 1
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i.i, align 4
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %10 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mode.i.i, align 4
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %11 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %aead.i.i, align 4
  %12 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %13 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %cra_name.i = getelementptr i8, ptr %1, i32 40
  %call4.i = tail call ptr @crypto_alloc_aead(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 384) #9
  %fback.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 12
  %14 = ptrtoint ptr %fback.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4.i, ptr %fback.i, align 4
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.safexcel_aead_fallback_cra_init.exit_crit_edge, label %if.end.i

entry.safexcel_aead_fallback_cra_init.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %safexcel_aead_fallback_cra_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reqsize.i.i = getelementptr inbounds %struct.crypto_aead, ptr %call4.i, i32 0, i32 1
  %15 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reqsize.i.i, align 4
  %add.i = add i32 %16, 128
  %17 = tail call i32 @llvm.umax.i32(i32 %add.i, i32 20) #9
  %18 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %reqsize1.i.i.i, align 4
  br label %safexcel_aead_fallback_cra_init.exit

safexcel_aead_fallback_cra_init.exit:             ; preds = %if.end.i, %entry.safexcel_aead_fallback_cra_init.exit_crit_edge
  %19 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %alg.i.i, align 4
  %20 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 14, ptr %mode.i.i, align 4
  %21 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ctrinit.i.i, align 4
  %hash_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %22 = ptrtoint ptr %hash_alg to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 125829120, ptr %hash_alg, align 4
  %state_sz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %23 = ptrtoint ptr %state_sz to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %state_sz, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @safexcel_aead_fallback_cra_exit(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fback = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 12
  %0 = ptrtoint ptr %fback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fback, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %1, i32 0, i32 3
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #9
  tail call void @safexcel_aead_cra_exit(ptr noundef %tfm)
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_chachapolyesp_cra_init(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i.i = getelementptr i8, ptr %tfm, i32 12
  %0 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i3.i.i, align 128
  %priv2.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i.i, align 4
  %alg.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i.i.i, align 4
  %blocksz.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i.i.i, align 1
  %ivmask.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i.i.i, align 4
  %ctrinit.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i.i.i, align 4
  %mode.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %10 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mode.i.i.i, align 4
  %aead.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %11 = ptrtoint ptr %aead.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %aead.i.i.i, align 4
  %12 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %13 = ptrtoint ptr %handle_result.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i.i, align 4
  %cra_name.i.i = getelementptr i8, ptr %1, i32 40
  %call4.i.i = tail call ptr @crypto_alloc_aead(ptr noundef %cra_name.i.i, i32 noundef 0, i32 noundef 384) #9
  %fback.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 12
  %14 = ptrtoint ptr %fback.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4.i.i, ptr %fback.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %entry.safexcel_aead_chachapoly_cra_init.exit_crit_edge, label %if.end.i.i

entry.safexcel_aead_chachapoly_cra_init.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %safexcel_aead_chachapoly_cra_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reqsize.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %call4.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reqsize.i.i.i, align 4
  %add.i.i = add i32 %16, 128
  %17 = tail call i32 @llvm.umax.i32(i32 %add.i.i, i32 20) #9
  %18 = ptrtoint ptr %reqsize1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %reqsize1.i.i.i.i, align 4
  br label %safexcel_aead_chachapoly_cra_init.exit

safexcel_aead_chachapoly_cra_init.exit:           ; preds = %if.end.i.i, %entry.safexcel_aead_chachapoly_cra_init.exit_crit_edge
  %19 = ptrtoint ptr %alg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 3, ptr %alg.i.i.i, align 4
  %20 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 14, ptr %mode.i.i.i, align 4
  %21 = ptrtoint ptr %ctrinit.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %ctrinit.i.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %22 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 125829120, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %23 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %state_sz.i, align 4
  %24 = ptrtoint ptr %aead.i.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 2, ptr %aead.i.i.i, align 4
  %aadskip = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 42
  %25 = ptrtoint ptr %aadskip to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 8, ptr %aadskip, align 2
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_sm4_setkey(ptr nocapture noundef %ctfm, ptr nocapture noundef readonly %key, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %len)
  %cmp.not = icmp eq i32 %len, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %priv2 = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 8
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %flags, align 4
  %and = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.if.end12_crit_edge, label %land.lhs.true

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

land.lhs.true:                                    ; preds = %if.end
  %ctxr_dma = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 12
  %4 = ptrtoint ptr %ctxr_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ctxr_dma, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool4.not = icmp eq i32 %5, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end12_crit_edge, label %if.then5

land.lhs.true.if.end12_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then5:                                         ; preds = %land.lhs.true
  %key6 = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 52
  %bcmp = tail call i32 @bcmp(ptr noundef dereferenceable(16) %key6, ptr noundef dereferenceable(16) %key, i32 16) #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %tobool8.not = icmp eq i32 %bcmp, 0
  br i1 %tobool8.not, label %if.then5.if.end12_crit_edge, label %if.then9

if.then5.if.end12_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12

if.then9:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #11
  %needs_inv = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 24
  %6 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %needs_inv, align 4
  br label %if.end12

if.end12:                                         ; preds = %if.then9, %if.then5.if.end12_crit_edge, %land.lhs.true.if.end12_crit_edge, %if.end.if.end12_crit_edge
  %key13 = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 52
  %7 = call ptr @memcpy(ptr %key13, ptr %key, i32 16)
  %key_len = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 2, i32 1, i32 4
  %8 = ptrtoint ptr %key_len to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 16, ptr %key_len, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end12 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sm4_blk_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %call1 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %base, ptr noundef %__ctx.i, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.else, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.else ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_sm4_blk_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %req, align 128
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %call1 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %base, ptr noundef %__ctx.i, i32 noundef 1)
  br label %return

return:                                           ; preds = %if.else, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.else ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_sm4_ecb_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %8 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %9 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 4, ptr %alg, align 4
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %10 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mode, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %11 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %blocksz, align 1
  %12 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 3072, ptr %ivmask.i, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_sm4_cbc_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %10 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %alg, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %11 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %blocksz, align 1
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_sm4_ofb_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %10 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %alg, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %11 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %blocksz, align 1
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_sm4_cfb_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %10 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %alg, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %11 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %blocksz, align 1
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 5, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_sm4ctr_setkey(ptr nocapture noundef %ctfm, ptr nocapture noundef readonly %key, i32 noundef %len) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %key, i32 %len
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 -4
  %0 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr2, align 4
  %nonce = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 2, i32 1
  %2 = ptrtoint ptr %nonce to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %nonce, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %len)
  %cmp.not.i = icmp eq i32 %len, 20
  br i1 %cmp.not.i, label %if.end.i, label %entry.safexcel_skcipher_sm4_setkey.exit_crit_edge

entry.safexcel_skcipher_sm4_setkey.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %safexcel_skcipher_sm4_setkey.exit

if.end.i:                                         ; preds = %entry
  %priv2.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 8
  %3 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %priv2.i, align 4
  %flags.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %4, i32 0, i32 8
  %5 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %6, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i.if.end12.i_crit_edge, label %land.lhs.true.i

if.end.i.if.end12.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

land.lhs.true.i:                                  ; preds = %if.end.i
  %ctxr_dma.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 1, i32 12
  %7 = ptrtoint ptr %ctxr_dma.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ctxr_dma.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool4.not.i = icmp eq i32 %8, 0
  br i1 %tobool4.not.i, label %land.lhs.true.i.if.end12.i_crit_edge, label %if.then5.i

land.lhs.true.i.if.end12.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then5.i:                                       ; preds = %land.lhs.true.i
  %key6.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 52
  %bcmp.i = tail call i32 @bcmp(ptr noundef dereferenceable(16) %key6.i, ptr noundef dereferenceable(16) %key, i32 16) #14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp.i)
  %tobool8.not.i = icmp eq i32 %bcmp.i, 0
  br i1 %tobool8.not.i, label %if.then5.i.if.end12.i_crit_edge, label %if.then9.i

if.then5.i.if.end12.i_crit_edge:                  ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end12.i

if.then9.i:                                       ; preds = %if.then5.i
  call void @__sanitizer_cov_trace_pc() #11
  %needs_inv.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 24
  %9 = ptrtoint ptr %needs_inv.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %needs_inv.i, align 4
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.then9.i, %if.then5.i.if.end12.i_crit_edge, %land.lhs.true.i.if.end12.i_crit_edge, %if.end.i.if.end12.i_crit_edge
  %key13.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 1, i32 2, i32 4, i32 52
  %10 = call ptr @memcpy(ptr %key13.i, ptr %key, i32 16)
  %key_len.i = getelementptr inbounds %struct.crypto_skcipher, ptr %ctfm, i32 2, i32 1, i32 4
  %11 = ptrtoint ptr %key_len.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 16, ptr %key_len.i, align 4
  br label %safexcel_skcipher_sm4_setkey.exit

safexcel_skcipher_sm4_setkey.exit:                ; preds = %if.end12.i, %entry.safexcel_skcipher_sm4_setkey.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end12.i ], [ -22, %entry.safexcel_skcipher_sm4_setkey.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_skcipher_sm4_ctr_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %add.ptr.i.i = getelementptr i8, ptr %tfm, i32 -128
  %2 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %add.ptr.i.i, align 128
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %6 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @safexcel_skcipher_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %7 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @safexcel_skcipher_handle_result, ptr %handle_result.i, align 4
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i, align 4
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %10 = ptrtoint ptr %alg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 4, ptr %alg, align 4
  %blocksz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %11 = ptrtoint ptr %blocksz to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 16, ptr %blocksz, align 1
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %12 = ptrtoint ptr %mode to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 6, ptr %mode, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_sm4_blk_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cryptlen, align 4
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %call1 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %req, ptr noundef %__ctx.i, i32 noundef 0)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_sm4_blk_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cryptlen, align 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 128
  %sub = sub i32 %3, %5
  %and = and i32 %sub, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %call3 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %req, ptr noundef %__ctx.i, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sm4cbc_sha1_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i, align 128
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i, align 4
  %alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %blocksz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %ivmask.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %6 = ptrtoint ptr %ivmask.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3584, ptr %ivmask.i, align 4
  %ctrinit.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %7 = ptrtoint ptr %ctrinit.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %ctrinit.i, align 4
  %mode.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %8 = ptrtoint ptr %mode.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %mode.i, align 4
  %aead.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %9 = ptrtoint ptr %aead.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %aead.i, align 4
  %10 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %11 = ptrtoint ptr %handle_result.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i, align 4
  %12 = ptrtoint ptr %alg.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 4, ptr %alg.i, align 4
  %13 = ptrtoint ptr %blocksz.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 16, ptr %blocksz.i, align 1
  %hash_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %14 = ptrtoint ptr %hash_alg to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16777216, ptr %hash_alg, align 4
  %state_sz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %15 = ptrtoint ptr %state_sz to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 20, ptr %state_sz, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_fallback_setkey(ptr noundef %ctfm, ptr noundef %key, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fback = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 2, i32 20
  %0 = ptrtoint ptr %fback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fback, align 4
  %call2 = tail call i32 @crypto_aead_setkey(ptr noundef %1, ptr noundef %key, i32 noundef %len) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call3 = tail call i32 @safexcel_aead_setkey(ptr noundef %ctfm, ptr noundef %key, i32 noundef %len)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call3, %cond.false ], [ %call2, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_fallback_setauthsize(ptr nocapture noundef readonly %ctfm, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %fback = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 2, i32 20
  %0 = ptrtoint ptr %fback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fback, align 4
  %call2 = tail call i32 @crypto_aead_setauthsize(ptr noundef %1, i32 noundef %authsize) #9
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_sm4cbc_sm3_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %0 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cryptlen, align 4
  %and = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool2.not = icmp eq i32 %1, 0
  br i1 %tobool2.not, label %lor.lhs.false, label %if.else.if.then4_crit_edge

if.else.if.then4_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

lor.lhs.false:                                    ; preds = %if.else
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %2 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %assoclen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool3.not = icmp eq i32 %3, 0
  br i1 %tobool3.not, label %if.end6, label %lor.lhs.false.if.then4_crit_edge

lor.lhs.false.if.then4_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then4

if.then4:                                         ; preds = %lor.lhs.false.if.then4_crit_edge, %if.else.if.then4_crit_edge
  %call5 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %req, ptr noundef %__ctx.i, i32 noundef 0)
  br label %cleanup

if.end6:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i.i, align 16
  %fback.i = getelementptr inbounds %struct.crypto_tfm, ptr %5, i32 3, i32 4, i32 12
  %6 = ptrtoint ptr %fback.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fback.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %7, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %8 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %9 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %11 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %complete.i, align 8
  %data.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %13 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %15 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %16 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %17 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %10, ptr %flags4.i.i, align 4
  %src.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %18 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src.i, align 4
  %dst.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %20 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst.i, align 8
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %22 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iv.i, align 32
  %src1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %24 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %19, ptr %src1.i.i, align 4
  %dst2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %25 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %21, ptr %dst2.i.i, align 8
  %cryptlen3.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %26 = ptrtoint ptr %cryptlen3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %cryptlen3.i.i, align 4
  %iv4.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %27 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %iv4.i.i, align 32
  %assoclen1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %28 = ptrtoint ptr %assoclen1.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %assoclen1.i.i, align 8
  %call6.i = tail call i32 @crypto_aead_encrypt(ptr noundef %__ctx.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call5, %if.then4 ], [ %call6.i, %if.end6 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_sm4cbc_sm3_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %2 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cryptlen, align 4
  %4 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %add.ptr.i.i, align 128
  %sub = sub i32 %3, %5
  %and = and i32 %sub, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp = icmp ugt i32 %3, %5
  br i1 %cmp, label %if.else.if.then6_crit_edge, label %lor.lhs.false

if.else.if.then6_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

lor.lhs.false:                                    ; preds = %if.else
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %assoclen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool5.not = icmp eq i32 %7, 0
  br i1 %tobool5.not, label %if.end8, label %lor.lhs.false.if.then6_crit_edge

lor.lhs.false.if.then6_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then6

if.then6:                                         ; preds = %lor.lhs.false.if.then6_crit_edge, %if.else.if.then6_crit_edge
  %call7 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %req, ptr noundef %__ctx.i, i32 noundef 1)
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  %fback.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 4, i32 12
  %8 = ptrtoint ptr %fback.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fback.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %9, i32 0, i32 3
  %tfm1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %10 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %11 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %13 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %complete.i, align 8
  %data.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %15 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %18 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %16, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %19 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %12, ptr %flags4.i.i, align 4
  %src.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %20 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src.i, align 4
  %dst.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %22 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst.i, align 8
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %24 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iv.i, align 32
  %src1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %26 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %21, ptr %src1.i.i, align 4
  %dst2.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %27 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %23, ptr %dst2.i.i, align 8
  %cryptlen3.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %28 = ptrtoint ptr %cryptlen3.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %3, ptr %cryptlen3.i.i, align 4
  %iv4.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %29 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %25, ptr %iv4.i.i, align 32
  %assoclen1.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %30 = ptrtoint ptr %assoclen1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %assoclen1.i.i, align 8
  %call7.i = tail call i32 @crypto_aead_decrypt(ptr noundef %__ctx.i) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.then6 ], [ %call7.i, %if.end8 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_sm4cbc_sm3_cra_init(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr i8, ptr %tfm, i32 12
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i3.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i3.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i.i, align 4
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i.i, align 1
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i.i, align 4
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %10 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mode.i.i, align 4
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %11 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %aead.i.i, align 4
  %12 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %13 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %cra_name.i = getelementptr i8, ptr %1, i32 40
  %call4.i = tail call ptr @crypto_alloc_aead(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 384) #9
  %fback.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 12
  %14 = ptrtoint ptr %fback.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4.i, ptr %fback.i, align 4
  %cmp.i.i = icmp ugt ptr %call4.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %entry.safexcel_aead_fallback_cra_init.exit_crit_edge, label %if.end.i

entry.safexcel_aead_fallback_cra_init.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %safexcel_aead_fallback_cra_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reqsize.i.i = getelementptr inbounds %struct.crypto_aead, ptr %call4.i, i32 0, i32 1
  %15 = ptrtoint ptr %reqsize.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reqsize.i.i, align 4
  %add.i = add i32 %16, 128
  %17 = tail call i32 @llvm.umax.i32(i32 %add.i, i32 20) #9
  %18 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %reqsize1.i.i.i, align 4
  br label %safexcel_aead_fallback_cra_init.exit

safexcel_aead_fallback_cra_init.exit:             ; preds = %if.end.i, %entry.safexcel_aead_fallback_cra_init.exit_crit_edge
  %19 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %alg.i.i, align 4
  %20 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %blocksz.i.i, align 1
  %hash_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %21 = ptrtoint ptr %hash_alg to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 58720256, ptr %hash_alg, align 4
  %state_sz = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %22 = ptrtoint ptr %state_sz to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %state_sz, align 4
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_aead_sm4ctr_sha1_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %6 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 3584, ptr %ivmask.i.i, align 4
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %7 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %8 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %aead.i.i, align 4
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %11 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %alg.i.i, align 4
  %12 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 16, ptr %blocksz.i.i, align 1
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %13 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16777216, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %14 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 20, ptr %state_sz.i, align 4
  %15 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 6, ptr %mode.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_sm4ctr_sm3_cra_init(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i.i = getelementptr i8, ptr %tfm, i32 12
  %0 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %add.ptr.i3.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i3.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i3.i.i, align 128
  %priv2.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i.i, align 4
  %alg.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i.i.i, align 4
  %blocksz.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i.i.i, align 1
  %ivmask.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i.i.i, align 4
  %ctrinit.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i.i.i, align 4
  %mode.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %10 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %mode.i.i.i, align 4
  %aead.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %11 = ptrtoint ptr %aead.i.i.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 1, ptr %aead.i.i.i, align 4
  %12 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %13 = ptrtoint ptr %handle_result.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i.i, align 4
  %cra_name.i.i = getelementptr i8, ptr %1, i32 40
  %call4.i.i = tail call ptr @crypto_alloc_aead(ptr noundef %cra_name.i.i, i32 noundef 0, i32 noundef 384) #9
  %fback.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 12
  %14 = ptrtoint ptr %fback.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call4.i.i, ptr %fback.i.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call4.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.i, label %entry.safexcel_aead_sm4cbc_sm3_cra_init.exit_crit_edge, label %if.end.i.i

entry.safexcel_aead_sm4cbc_sm3_cra_init.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %safexcel_aead_sm4cbc_sm3_cra_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %reqsize.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %call4.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %reqsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %reqsize.i.i.i, align 4
  %add.i.i = add i32 %16, 128
  %17 = tail call i32 @llvm.umax.i32(i32 %add.i.i, i32 20) #9
  %18 = ptrtoint ptr %reqsize1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %reqsize1.i.i.i.i, align 4
  br label %safexcel_aead_sm4cbc_sm3_cra_init.exit

safexcel_aead_sm4cbc_sm3_cra_init.exit:           ; preds = %if.end.i.i, %entry.safexcel_aead_sm4cbc_sm3_cra_init.exit_crit_edge
  %19 = ptrtoint ptr %alg.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %alg.i.i.i, align 4
  %20 = ptrtoint ptr %blocksz.i.i.i to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 16, ptr %blocksz.i.i.i, align 1
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %21 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 58720256, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %22 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 32, ptr %state_sz.i, align 4
  %23 = ptrtoint ptr %mode.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 6, ptr %mode.i.i.i, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_rfc4106_gcm_setkey(ptr nocapture noundef %ctfm, ptr noundef %key, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %key, i32 %len
  %add.ptr2 = getelementptr i8, ptr %add.ptr, i32 -4
  %0 = ptrtoint ptr %add.ptr2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %add.ptr2, align 4
  %nonce = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 1
  %2 = ptrtoint ptr %nonce to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %nonce, align 4
  %sub = add i32 %len, -4
  %call3 = tail call i32 @safexcel_aead_gcm_setkey(ptr noundef %ctfm, ptr noundef %key, i32 noundef %sub)
  ret i32 %call3
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_rfc4106_gcm_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %authsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.37)
  switch i32 %authsize, label %entry.crypto_rfc4106_check_authsize.exit_crit_edge [
    i32 8, label %entry.sw.epilog.i_crit_edge
    i32 12, label %entry.sw.epilog.i_crit_edge1
    i32 16, label %entry.sw.epilog.i_crit_edge2
  ]

entry.sw.epilog.i_crit_edge2:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge1:                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

entry.sw.epilog.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog.i

entry.crypto_rfc4106_check_authsize.exit_crit_edge: ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %crypto_rfc4106_check_authsize.exit

sw.epilog.i:                                      ; preds = %entry.sw.epilog.i_crit_edge, %entry.sw.epilog.i_crit_edge1, %entry.sw.epilog.i_crit_edge2
  br label %crypto_rfc4106_check_authsize.exit

crypto_rfc4106_check_authsize.exit:               ; preds = %sw.epilog.i, %entry.crypto_rfc4106_check_authsize.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %sw.epilog.i ], [ -22, %entry.crypto_rfc4106_check_authsize.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_rfc4106_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = add i32 %1, -16
  %switch.and.i = and i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %call1.i = tail call fastcc i32 @safexcel_queue_req(ptr noundef %req, ptr noundef %__ctx.i.i, i32 noundef 0) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1.i, %cond.false ], [ -22, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_rfc4106_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = add i32 %1, -16
  %switch.and.i = and i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %cond.false, label %entry.cond.end_crit_edge

entry.cond.end_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %call1.i = tail call fastcc i32 @safexcel_queue_req(ptr noundef %req, ptr noundef %__ctx.i.i, i32 noundef 1) #9
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call1.i, %cond.false ], [ -22, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_rfc4106_gcm_cra_init(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i.i, align 4
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i.i, align 1
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i.i, align 4
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %10 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %aead.i.i, align 4
  %11 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %12 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %13 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 33554432, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %14 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %state_sz.i, align 4
  %xcm.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 41
  %15 = ptrtoint ptr %xcm.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %xcm.i, align 1
  %16 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 131078, ptr %mode.i.i, align 4
  %call.i.i = tail call ptr @crypto_alloc_base(ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef 15) #9
  %hkaes.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 8
  %17 = ptrtoint ptr %hkaes.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %hkaes.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %18 = ptrtoint ptr %call.i.i to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %18, i32 0
  %19 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 2, ptr %aead.i.i, align 4
  %aadskip = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 42
  %20 = ptrtoint ptr %aadskip to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 8, ptr %aadskip, align 2
  ret i32 %spec.select.i.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_rfc4543_gcm_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %authsize)
  %cmp.not = icmp eq i32 %authsize, 16
  %. = select i1 %cmp.not, i32 0, i32 -22
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_rfc4543_gcm_cra_init(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i.i, align 4
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i.i, align 1
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i.i, align 4
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %9 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %ctrinit.i.i, align 4
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %10 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %aead.i.i, align 4
  %11 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %12 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %13 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 33554432, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %14 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 16, ptr %state_sz.i, align 4
  %xcm.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 41
  %15 = ptrtoint ptr %xcm.i to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 1, ptr %xcm.i, align 1
  %16 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 131078, ptr %mode.i.i, align 4
  %call.i.i = tail call ptr @crypto_alloc_base(ptr noundef nonnull @.str.36, i32 noundef 1, i32 noundef 15) #9
  %hkaes.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 8
  %17 = ptrtoint ptr %hkaes.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i.i, ptr %hkaes.i, align 4
  %cmp.i.i.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  %18 = ptrtoint ptr %call.i.i to i32
  %spec.select.i.i = select i1 %cmp.i.i.i, i32 %18, i32 0
  %19 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 3, ptr %aead.i.i, align 4
  ret i32 %spec.select.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_rfc4309_ccm_setkey(ptr nocapture noundef %ctfm, ptr noundef %key, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %nonce = getelementptr inbounds %struct.crypto_aead, ptr %ctfm, i32 2, i32 1
  %0 = ptrtoint ptr %nonce to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 3, ptr %nonce, align 4
  %add.ptr = getelementptr i8, ptr %nonce, i32 1
  %add.ptr3 = getelementptr i8, ptr %key, i32 %len
  %add.ptr4 = getelementptr i8, ptr %add.ptr3, i32 -3
  %1 = call ptr @memcpy(ptr %add.ptr, ptr %add.ptr4, i32 3)
  %sub = add i32 %len, -3
  %call5 = tail call i32 @safexcel_aead_ccm_setkey(ptr noundef %ctfm, ptr noundef %key, i32 noundef %sub)
  ret i32 %call5
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_rfc4309_ccm_setauthsize(ptr nocapture noundef readnone %tfm, i32 noundef %authsize) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %authsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.38)
  switch i32 %authsize, label %entry.return_crit_edge [
    i32 8, label %entry.sw.epilog_crit_edge
    i32 12, label %entry.sw.epilog_crit_edge1
    i32 16, label %entry.sw.epilog_crit_edge2
  ]

entry.sw.epilog_crit_edge2:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge1:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %return

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge1, %entry.sw.epilog_crit_edge2
  br label %return

return:                                           ; preds = %sw.epilog, %entry.return_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_rfc4309_ccm_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.39)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 20, label %entry.if.end_crit_edge7
  ]

entry.if.end_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge7
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %call3 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %req, ptr noundef %__ctx.i, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_rfc4309_ccm_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %1, label %entry.cleanup_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 20, label %entry.if.end_crit_edge7
  ]

entry.if.end_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge7
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %call3 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %req, ptr noundef %__ctx.i, i32 noundef 1)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call3, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @safexcel_rfc4309_ccm_cra_init(ptr nocapture noundef %tfm) #1 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -256
  %reqsize1.i.i.i = getelementptr i8, ptr %tfm, i32 -124
  %2 = ptrtoint ptr %reqsize1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 20, ptr %reqsize1.i.i.i, align 4
  %3 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %add.ptr.i.i, align 128
  %priv2.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %priv2.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %priv2.i.i, align 4
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 36
  %6 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %alg.i.i, align 4
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 43
  %7 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 16, ptr %blocksz.i.i, align 1
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 3584, ptr %ivmask.i.i, align 4
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 48
  %mode.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 32
  %aead.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 40
  %9 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @safexcel_aead_send, ptr %__crt_ctx.i, align 4
  %handle_result.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %10 = ptrtoint ptr %handle_result.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @safexcel_aead_handle_result, ptr %handle_result.i.i, align 4
  %hash_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4
  %11 = ptrtoint ptr %hash_alg.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 8388608, ptr %hash_alg.i, align 4
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 3, i32 4, i32 4
  %12 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 48, ptr %state_sz.i, align 4
  %xcm.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 41
  %13 = ptrtoint ptr %xcm.i to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 2, ptr %xcm.i, align 1
  %14 = ptrtoint ptr %mode.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 131078, ptr %mode.i.i, align 4
  %15 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %ctrinit.i.i, align 4
  %16 = ptrtoint ptr %aead.i.i to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 2, ptr %aead.i.i, align 4
  %aadskip = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 42
  %17 = ptrtoint ptr %aadskip to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 8, ptr %aadskip, align 2
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @aes_expandkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safexcel_queue_req(ptr noundef %base, ptr nocapture noundef writeonly %sreq, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 4
  %priv2 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 3
  %2 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv2, align 4
  %needs_inv = getelementptr inbounds %struct.safexcel_cipher_req, ptr %sreq, i32 0, i32 2
  %4 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 0, ptr %needs_inv, align 4
  %5 = ptrtoint ptr %sreq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dir, ptr %sreq, align 4
  %ctxr = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 2
  %6 = ptrtoint ptr %ctxr to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctxr, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags, align 4
  %and = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool4.not = icmp eq i32 %and, 0
  br i1 %tobool4.not, label %if.then.if.end27_crit_edge, label %land.lhs.true

if.then.if.end27_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

land.lhs.true:                                    ; preds = %if.then
  %needs_inv6 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 24
  %10 = ptrtoint ptr %needs_inv6 to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %needs_inv6, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  br i1 %tobool7.not, label %land.lhs.true.if.end27_crit_edge, label %if.then8

land.lhs.true.if.end27_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.then8:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %needs_inv, align 4
  %13 = ptrtoint ptr %needs_inv6 to i32
  call void @__asan_store1_noabort(i32 %13)
  store i8 0, ptr %needs_inv6, align 4
  br label %if.end27

if.else:                                          ; preds = %entry
  %call12 = tail call i32 @safexcel_select_ring(ptr noundef %3) #9
  %ring14 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 20
  %14 = ptrtoint ptr %ring14 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call12, ptr %ring14, align 4
  %context_pool = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %3, i32 0, i32 9
  %15 = ptrtoint ptr %context_pool to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %context_pool, align 4
  %flags15 = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 4
  %17 = ptrtoint ptr %flags15 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %flags15, align 4
  %and16 = and i32 %18, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  %ctxr_dma = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4
  %or.i = select i1 %tobool17.not, i32 2848, i32 3520
  %call.i = tail call ptr @dma_pool_alloc(ptr noundef %16, i32 noundef %or.i, ptr noundef %ctxr_dma) #9
  %19 = ptrtoint ptr %ctxr to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i, ptr %ctxr, align 4
  %tobool24.not = icmp eq ptr %call.i, null
  br i1 %tobool24.not, label %if.else.cleanup_crit_edge, label %if.else.if.end27_crit_edge

if.else.if.end27_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end27

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end27:                                         ; preds = %if.else.if.end27_crit_edge, %if.then8, %land.lhs.true.if.end27_crit_edge, %if.then.if.end27_crit_edge
  %ring29 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 20
  %20 = ptrtoint ptr %ring29 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ring29, align 4
  %ring30 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %3, i32 0, i32 11
  %22 = ptrtoint ptr %ring30 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ring30, align 4
  %queue_lock = getelementptr %struct.safexcel_ring, ptr %23, i32 %21, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %queue_lock) #9
  %24 = ptrtoint ptr %ring30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ring30, align 4
  %queue = getelementptr %struct.safexcel_ring, ptr %25, i32 %21, i32 6
  %call33 = tail call i32 @crypto_enqueue_request(ptr noundef %queue, ptr noundef %base) #9
  %26 = ptrtoint ptr %ring30 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ring30, align 4
  %queue_lock36 = getelementptr %struct.safexcel_ring, ptr %27, i32 %21, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock36) #9
  %28 = ptrtoint ptr %ring30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ring30, align 4
  %workqueue = getelementptr %struct.safexcel_ring, ptr %29, i32 %21, i32 1
  %30 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %workqueue, align 4
  %work_data = getelementptr %struct.safexcel_ring, ptr %29, i32 %21, i32 2
  %call.i68 = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %31, ptr noundef %work_data) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ %call33, %if.end27 ], [ -12, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @safexcel_select_ring(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_enqueue_request(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #5 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_skcipher_send(ptr noundef %async, i32 noundef %ring, ptr nocapture noundef writeonly %commands, ptr nocapture noundef %results) #0 align 64 {
entry:
  %input_iv = alloca [16 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %async, i32 -16
  %tfm = getelementptr i8, ptr %async, i32 16
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 16
  %__ctx.i = getelementptr i8, ptr %async, i32 112
  %priv4 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 3
  %2 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv4, align 4
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %entry.do.end13_crit_edge

entry.do.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

land.rhs:                                         ; preds = %entry
  %needs_inv = getelementptr i8, ptr %async, i32 120
  %6 = ptrtoint ptr %needs_inv to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %needs_inv, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %land.rhs.do.end13_crit_edge, label %do.body8, !prof !177

land.rhs.do.end13_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end13

do.body8:                                         ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/inside-secure/safexcel_cipher.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1028, 0\0A.popsection", ""() #9, !srcloc !181
  unreachable

do.end13:                                         ; preds = %land.rhs.do.end13_crit_edge, %entry.do.end13_crit_edge
  %needs_inv14 = getelementptr i8, ptr %async, i32 120
  %8 = ptrtoint ptr %needs_inv14 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %needs_inv14, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool15.not = icmp eq i8 %9, 0
  br i1 %tobool15.not, label %if.else, label %if.then16

if.then16:                                        ; preds = %do.end13
  %10 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tfm, align 4
  %priv2.i = getelementptr inbounds %struct.crypto_tfm, ptr %11, i32 1, i32 3
  %12 = ptrtoint ptr %priv2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %priv2.i, align 4
  %ctxr_dma.i = getelementptr inbounds %struct.crypto_tfm, ptr %11, i32 1, i32 4
  %14 = ptrtoint ptr %ctxr_dma.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %ctxr_dma.i, align 4
  %call4.i = tail call i32 @safexcel_invalidate_cache(ptr noundef %async, ptr noundef %13, i32 noundef %15, i32 noundef %ring) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then16.if.end22_crit_edge, !prof !177

if.then16.if.end22_crit_edge:                     ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end.i:                                         ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %commands to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 1, ptr %commands, align 4
  %17 = ptrtoint ptr %results to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %results, align 4
  br label %if.end22

if.else:                                          ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %input_iv) #9
  %iv = getelementptr i8, ptr %async, i32 -12
  %18 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iv, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %20 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %21, i32 -100
  %22 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ivsize.i, align 4
  %24 = zext i32 %23 to i64
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %23)
  %25 = icmp ugt i32 %23, 15
  %26 = sub nsw i64 16, %24
  %27 = select i1 %25, i64 0, i64 %26
  %28 = getelementptr i8, ptr %input_iv, i32 %23
  %29 = trunc i64 %27 to i32
  %30 = call ptr @memset(ptr %28, i32 255, i32 %29)
  %31 = call ptr @memcpy(ptr %input_iv, ptr %19, i32 %23)
  %src = getelementptr i8, ptr %async, i32 -8
  %32 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %src, align 8
  %dst = getelementptr i8, ptr %async, i32 -4
  %34 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dst, align 4
  %36 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %add.ptr.i, align 128
  %call21 = call fastcc i32 @safexcel_send_req(ptr noundef %async, i32 noundef %ring, ptr noundef %__ctx.i, ptr noundef %33, ptr noundef %35, i32 noundef %37, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %input_iv, ptr noundef %commands, ptr noundef %results)
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %input_iv) #9
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end.i, %if.then16.if.end22_crit_edge
  %ret.0 = phi i32 [ %call21, %if.else ], [ %call4.i, %if.then16.if.end22_crit_edge ], [ 0, %if.end.i ]
  %38 = ptrtoint ptr %results to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %results, align 4
  %rdescs = getelementptr i8, ptr %async, i32 116
  %40 = ptrtoint ptr %rdescs to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %rdescs, align 4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_skcipher_handle_result(ptr noundef %priv, i32 noundef %ring, ptr noundef %async, ptr nocapture noundef writeonly %should_complete, ptr nocapture noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr i8, ptr %async, i32 112
  %needs_inv = getelementptr i8, ptr %async, i32 120
  %0 = ptrtoint ptr %needs_inv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %needs_inv, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %needs_inv, align 4
  %call3 = tail call fastcc i32 @safexcel_handle_inv_result(ptr noundef %priv, i32 noundef %ring, ptr noundef %async, ptr noundef %__ctx.i, ptr noundef %should_complete, ptr noundef %ret)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i = getelementptr i8, ptr %async, i32 -16
  %src = getelementptr i8, ptr %async, i32 -8
  %3 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %src, align 8
  %dst = getelementptr i8, ptr %async, i32 -4
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dst, align 4
  %7 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %add.ptr.i, align 128
  %call4 = tail call fastcc i32 @safexcel_handle_req_result(ptr noundef %priv, i32 noundef %ring, ptr noundef %async, ptr noundef %4, ptr noundef %6, i32 noundef %8, ptr noundef %__ctx.i, ptr noundef %should_complete, ptr noundef %ret)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call3, %if.then ], [ %call4, %if.else ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safexcel_send_req(ptr noundef %base, i32 noundef %ring, ptr nocapture noundef %sreq, ptr noundef %src, ptr noundef %dst, i32 noundef %cryptlen, i32 noundef %assoclen, i32 noundef %digestsize, ptr nocapture noundef readonly %iv, ptr nocapture noundef writeonly %commands, ptr nocapture noundef writeonly %results) unnamed_addr #0 align 64 {
entry:
  %atoken = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr i8, ptr %base, i32 16
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %priv4 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 3
  %2 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv4, align 4
  %add = add i32 %assoclen, %cryptlen
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %atoken) #9
  %4 = ptrtoint ptr %atoken to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr inttoptr (i32 -1 to ptr), ptr %atoken, align 4, !annotation !182
  %conv = zext i32 %add to i64
  %call5 = tail call i32 @sg_nents_for_len(ptr noundef %src, i64 noundef %conv) #9
  %nr_src = getelementptr inbounds %struct.safexcel_cipher_req, ptr %sreq, i32 0, i32 3
  %5 = ptrtoint ptr %nr_src to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call5, ptr %nr_src, align 4
  %aead = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 40
  %6 = ptrtoint ptr %aead to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %aead, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %if.else25, label %if.then

if.then:                                          ; preds = %entry
  %8 = ptrtoint ptr %sreq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sreq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp eq i32 %9, 1
  %10 = sub i32 0, %digestsize
  %totlen_dst.0.p = select i1 %cmp, i32 %10, i32 %digestsize
  %totlen_dst.0 = add i32 %totlen_dst.0.p, %add
  %ctxr = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 2
  %11 = ptrtoint ptr %ctxr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ctxr, align 4
  %data = getelementptr inbounds %struct.safexcel_context_record, ptr %12, i32 0, i32 2
  %key_len = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 2
  %13 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %key_len, align 4
  %div477 = lshr i32 %14, 2
  %add.ptr = getelementptr i32, ptr %data, i32 %div477
  %ipad = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 4
  %state_sz = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 4, i32 4
  %15 = ptrtoint ptr %state_sz to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %state_sz, align 4
  %17 = call ptr @memcpy(ptr %add.ptr, ptr %ipad, i32 %16)
  %xcm = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 41
  %18 = ptrtoint ptr %xcm to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %xcm, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool11.not = icmp eq i8 %19, 0
  br i1 %tobool11.not, label %if.then12, label %if.then.if.end39_crit_edge

if.then.if.end39_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then12:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %20 = ptrtoint ptr %ctxr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctxr, align 4
  %data15 = getelementptr inbounds %struct.safexcel_context_record, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %key_len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %key_len, align 4
  %24 = ptrtoint ptr %state_sz to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %state_sz, align 4
  %add19 = add i32 %25, %23
  %div20478 = lshr i32 %add19, 2
  %add.ptr21 = getelementptr i32, ptr %data15, i32 %div20478
  %opad = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 76
  %26 = call ptr @memcpy(ptr %add.ptr21, ptr %opad, i32 %25)
  br label %if.end39

if.else25:                                        ; preds = %entry
  %mode = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 32
  %27 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp26 = icmp eq i32 %28, 1
  br i1 %cmp26, label %land.lhs.true, label %if.else25.if.end39_crit_edge

if.else25.if.end39_crit_edge:                     ; preds = %if.else25
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

land.lhs.true:                                    ; preds = %if.else25
  %29 = ptrtoint ptr %sreq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sreq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %30)
  %cmp29 = icmp eq i32 %30, 1
  br i1 %cmp29, label %if.then31, label %land.lhs.true.if.end39_crit_edge

land.lhs.true.if.end39_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end39

if.then31:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  %iv33 = getelementptr i8, ptr %base, i32 -12
  %31 = ptrtoint ptr %iv33 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %iv33, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %33 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %34, i32 -100
  %35 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %ivsize.i, align 4
  %sub36 = sub i32 %add, %36
  %call37 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %src, i32 noundef %call5, ptr noundef %32, i32 noundef %36, i32 noundef %sub36) #9
  br label %if.end39

if.end39:                                         ; preds = %if.then31, %land.lhs.true.if.end39_crit_edge, %if.else25.if.end39_crit_edge, %if.then12, %if.then.if.end39_crit_edge
  %totlen_dst.1 = phi i32 [ %totlen_dst.0, %if.then.if.end39_crit_edge ], [ %totlen_dst.0, %if.then12 ], [ %add, %if.then31 ], [ %add, %land.lhs.true.if.end39_crit_edge ], [ %add, %if.else25.if.end39_crit_edge ]
  %conv40 = zext i32 %totlen_dst.1 to i64
  %call41 = tail call i32 @sg_nents_for_len(ptr noundef %dst, i64 noundef %conv40) #9
  %nr_dst = getelementptr inbounds %struct.safexcel_cipher_req, ptr %sreq, i32 0, i32 4
  %37 = ptrtoint ptr %nr_dst to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call41, ptr %nr_dst, align 4
  %cmp42 = icmp eq ptr %src, %dst
  br i1 %cmp42, label %if.then44, label %if.else71

if.then44:                                        ; preds = %if.end39
  %38 = ptrtoint ptr %nr_src to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %nr_src, align 4
  %40 = tail call i32 @llvm.smax.i32(i32 %39, i32 %call41)
  %41 = ptrtoint ptr %nr_src to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %nr_src, align 4
  %42 = ptrtoint ptr %nr_dst to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %40, ptr %nr_dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool52.not = icmp ne i32 %add, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %totlen_dst.1)
  %tobool53.not = icmp ne i32 %totlen_dst.1, 0
  %or.cond = select i1 %tobool52.not, i1 true, i1 %tobool53.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp55 = icmp slt i32 %40, 1
  %or.cond554 = select i1 %or.cond, i1 %cmp55, i1 false
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev, align 4
  br i1 %or.cond554, label %do.end, label %if.end67, !prof !183

do.end:                                           ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %45 = tail call i32 @llvm.umax.i32(i32 %add, i32 %totlen_dst.1)
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %44, ptr noundef nonnull @.str, i32 noundef %45) #12
  br label %cleanup275

if.end67:                                         ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #11
  %call70 = tail call i32 @dma_map_sg_attrs(ptr noundef %44, ptr noundef %src, i32 noundef %40, i32 noundef 0, i32 noundef 0) #9
  br label %if.end116

if.else71:                                        ; preds = %if.end39
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool72.not = icmp eq i32 %add, 0
  br i1 %tobool72.not, label %if.else71.if.end89_crit_edge, label %land.rhs73

if.else71.if.end89_crit_edge:                     ; preds = %if.else71
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

land.rhs73:                                       ; preds = %if.else71
  %46 = ptrtoint ptr %nr_src to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %nr_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp75 = icmp slt i32 %47, 1
  br i1 %cmp75, label %do.end87, label %land.rhs73.if.end89_crit_edge, !prof !178

land.rhs73.if.end89_crit_edge:                    ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end89

do.end87:                                         ; preds = %land.rhs73
  call void @__sanitizer_cov_trace_pc() #11
  %dev88 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %3, i32 0, i32 1
  %48 = ptrtoint ptr %dev88 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev88, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %49, ptr noundef nonnull @.str.6, i32 noundef %add) #12
  br label %cleanup275

if.end89:                                         ; preds = %land.rhs73.if.end89_crit_edge, %if.else71.if.end89_crit_edge
  %dev90 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %3, i32 0, i32 1
  %50 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev90, align 4
  %52 = ptrtoint ptr %nr_src to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %nr_src, align 4
  %call92 = tail call i32 @dma_map_sg_attrs(ptr noundef %51, ptr noundef %src, i32 noundef %53, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %totlen_dst.1)
  %tobool93.not = icmp eq i32 %totlen_dst.1, 0
  br i1 %tobool93.not, label %if.end89.if.end112_crit_edge, label %land.rhs94

if.end89.if.end112_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

land.rhs94:                                       ; preds = %if.end89
  %54 = ptrtoint ptr %nr_dst to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %55)
  %cmp96 = icmp slt i32 %55, 1
  br i1 %cmp96, label %do.end108, label %land.rhs94.if.end112_crit_edge, !prof !178

land.rhs94.if.end112_crit_edge:                   ; preds = %land.rhs94
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end112

do.end108:                                        ; preds = %land.rhs94
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev90, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.9, i32 noundef %totlen_dst.1) #12
  %58 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev90, align 4
  %60 = ptrtoint ptr %nr_src to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr_src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %59, ptr noundef %src, i32 noundef %61, i32 noundef 1, i32 noundef 0) #9
  br label %cleanup275

if.end112:                                        ; preds = %land.rhs94.if.end112_crit_edge, %if.end89.if.end112_crit_edge
  %62 = ptrtoint ptr %dev90 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev90, align 4
  %64 = ptrtoint ptr %nr_dst to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %nr_dst, align 4
  %call115 = tail call i32 @dma_map_sg_attrs(ptr noundef %63, ptr noundef %dst, i32 noundef %65, i32 noundef 2, i32 noundef 0) #9
  br label %if.end116

if.end116:                                        ; preds = %if.end112, %if.end67
  %ctxr118 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 2
  %66 = ptrtoint ptr %ctxr118 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ctxr118, align 4
  %data119 = getelementptr inbounds %struct.safexcel_context_record, ptr %67, i32 0, i32 2
  %key = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 52
  %key_len122 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 2
  %68 = ptrtoint ptr %key_len122 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %key_len122, align 4
  %70 = call ptr @memcpy(ptr %data119, ptr %key, i32 %69)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add)
  %tobool123.not = icmp eq i32 %add, 0
  br i1 %tobool123.not, label %if.then124, label %for.cond.preheader

for.cond.preheader:                               ; preds = %if.end116
  %71 = ptrtoint ptr %nr_src to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %nr_src, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %72)
  %cmp135561 = icmp sgt i32 %72, 0
  br i1 %cmp135561, label %for.body.lr.ph, label %for.cond.preheader.skip_cdesc_crit_edge

for.cond.preheader.skip_cdesc_crit_edge:          ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_cdesc

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ctxr_dma149 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4
  br label %for.body

if.then124:                                       ; preds = %if.end116
  %ctxr_dma = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4
  %73 = ptrtoint ptr %ctxr_dma to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %ctxr_dma, align 4
  %call128 = call ptr @safexcel_add_cdesc(ptr noundef %3, i32 noundef %ring, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef %74, i32 noundef 1, i32 noundef 1, i32 noundef %74, ptr noundef nonnull %atoken) #9
  %cmp.i = icmp ugt ptr %call128, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then124.for.end263_crit_edge, label %if.then124.skip_cdesc_crit_edge

if.then124.skip_cdesc_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_cdesc

if.then124.for.end263_crit_edge:                  ; preds = %if.then124
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end263

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0566 = phi i32 [ 0, %for.body.lr.ph ], [ %inc162, %for.inc.for.body_crit_edge ]
  %queued.0565 = phi i32 [ %add, %for.body.lr.ph ], [ %sub144, %for.inc.for.body_crit_edge ]
  %sg.0563 = phi ptr [ %src, %for.body.lr.ph ], [ %call163, %for.inc.for.body_crit_edge ]
  %first_cdesc.0562 = phi ptr [ null, %for.body.lr.ph ], [ %spec.select479, %for.inc.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0563, i32 0, i32 4
  %75 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dma_length, align 4
  %77 = call i32 @llvm.smin.i32(i32 %queued.0565, i32 %76)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0566)
  %tobool141.not = icmp eq i32 %i.0566, 0
  %sub144 = sub i32 %queued.0565, %77
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub144)
  %tobool145.not = icmp eq i32 %sub144, 0
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0563, i32 0, i32 3
  %78 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma_address, align 4
  %80 = ptrtoint ptr %ctxr_dma149 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ctxr_dma149, align 4
  %call150 = call ptr @safexcel_add_cdesc(ptr noundef %3, i32 noundef %ring, i1 noundef zeroext %tobool141.not, i1 noundef zeroext %tobool145.not, i32 noundef %79, i32 noundef %77, i32 noundef %add, i32 noundef %81, ptr noundef nonnull %atoken) #9
  %cmp.i487 = icmp ugt ptr %call150, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i487, label %for.body.cdesc_rollback_crit_edge, label %if.end154

for.body.cdesc_rollback_crit_edge:                ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdesc_rollback

if.end154:                                        ; preds = %for.body
  %spec.select479 = select i1 %tobool141.not, ptr %call150, ptr %first_cdesc.0562
  %inc162 = add nuw nsw i32 %i.0566, 1
  br i1 %tobool145.not, label %if.end154.skip_cdesc_crit_edge, label %for.inc

if.end154.skip_cdesc_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_cdesc

for.inc:                                          ; preds = %if.end154
  %call163 = call ptr @sg_next(ptr noundef %sg.0563) #9
  %82 = ptrtoint ptr %nr_src to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %nr_src, align 4
  %cmp135 = icmp slt i32 %inc162, %83
  br i1 %cmp135, label %for.inc.for.body_crit_edge, label %for.inc.skip_cdesc_crit_edge

for.inc.skip_cdesc_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %skip_cdesc

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

skip_cdesc:                                       ; preds = %for.inc.skip_cdesc_crit_edge, %if.end154.skip_cdesc_crit_edge, %if.then124.skip_cdesc_crit_edge, %for.cond.preheader.skip_cdesc_crit_edge
  %first_cdesc.3 = phi ptr [ %call128, %if.then124.skip_cdesc_crit_edge ], [ null, %for.cond.preheader.skip_cdesc_crit_edge ], [ %spec.select479, %if.end154.skip_cdesc_crit_edge ], [ %spec.select479, %for.inc.skip_cdesc_crit_edge ]
  %n_cdesc.2 = phi i32 [ 1, %if.then124.skip_cdesc_crit_edge ], [ 0, %for.cond.preheader.skip_cdesc_crit_edge ], [ %inc162, %if.end154.skip_cdesc_crit_edge ], [ %inc162, %for.inc.skip_cdesc_crit_edge ]
  %84 = ptrtoint ptr %priv4 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %priv4, align 4
  %86 = ptrtoint ptr %key_len122 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %key_len122, align 4
  %div1.i = lshr i32 %87, 2
  %mode.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 32
  %88 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mode.i, align 4
  %control1.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 6
  %90 = ptrtoint ptr %control1.i to i32
  call void @__asan_storeN_noabort(i32 %90, i32 4)
  store i32 %89, ptr %control1.i, align 1
  %91 = ptrtoint ptr %aead to i32
  call void @__asan_load1_noabort(i32 %91)
  %92 = load i8, ptr %aead, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %92)
  %tobool.not.i = icmp eq i8 %92, 0
  br i1 %tobool.not.i, label %if.else64.i, label %if.then.i

if.then.i:                                        ; preds = %skip_cdesc
  %xcm.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 41
  %93 = ptrtoint ptr %xcm.i to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %xcm.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool2.not.i = icmp eq i8 %94, 0
  br i1 %tobool2.not.i, label %if.else.i, label %if.then3.i

if.then3.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #11
  %state_sz.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 4, i32 4
  %95 = ptrtoint ptr %state_sz.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %state_sz.i, align 4
  %div43.i = lshr i32 %96, 2
  br label %if.end26.i

if.else.i:                                        ; preds = %if.then.i
  %alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 36
  %97 = ptrtoint ptr %alg.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %alg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %98)
  %cmp.i488 = icmp eq i32 %98, 3
  br i1 %cmp.i488, label %if.then7.i, label %if.else16.i

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %99 = ptrtoint ptr %sreq to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %sreq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %cmp8.i = icmp eq i32 %100, 0
  %or9.i = select i1 %cmp8.i, i32 1114118, i32 1114127
  %hash_alg10.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 4
  %101 = ptrtoint ptr %hash_alg10.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %hash_alg10.i, align 4
  %shl12.i = shl i32 %div1.i, 8
  %or11.i = or i32 %102, %shl12.i
  %or13.i = or i32 %or11.i, %or9.i
  %control015.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 5
  %103 = ptrtoint ptr %control015.i to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 %or13.i, ptr %control015.i, align 1
  br label %safexcel_context_control.exit

if.else16.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %state_sz17.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 4, i32 4
  %104 = ptrtoint ptr %state_sz17.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %state_sz17.i, align 4
  %106 = lshr i32 %105, 1
  %mul.i = and i32 %106, 16777214
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.else16.i, %if.then3.i
  %mul.sink.i = phi i32 [ %mul.i, %if.else16.i ], [ %div43.i, %if.then3.i ]
  %.sink.i = phi i32 [ 6356992, %if.else16.i ], [ 4259840, %if.then3.i ]
  %add19.i = add nuw nsw i32 %mul.sink.i, %div1.i
  %hash_alg20.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 4
  %107 = ptrtoint ptr %hash_alg20.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %hash_alg20.i, align 4
  %shl22.i = shl i32 %add19.i, 8
  %or21.i = or i32 %shl22.i, %.sink.i
  %or23.i = or i32 %or21.i, %108
  %control025.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 5
  %109 = ptrtoint ptr %control025.i to i32
  call void @__asan_storeN_noabort(i32 %109, i32 4)
  store i32 %or23.i, ptr %control025.i, align 1
  %110 = ptrtoint ptr %sreq to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %sreq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %111)
  %cmp28.i = icmp eq i32 %111, 0
  %112 = ptrtoint ptr %xcm.i to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %xcm.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %113)
  %cmp30.i = icmp eq i8 %113, 2
  br i1 %cmp28.i, label %land.lhs.true.i, label %if.else48.i

land.lhs.true.i:                                  ; preds = %if.end26.i
  br i1 %cmp30.i, label %land.lhs.true.i.if.then36.i_crit_edge, label %lor.lhs.false.i

land.lhs.true.i.if.then36.i_crit_edge:            ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %114 = ptrtoint ptr %aead to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %aead, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %115)
  %cmp34.i = icmp eq i8 %115, 3
  br i1 %cmp34.i, label %lor.lhs.false.i.if.then36.i_crit_edge, label %if.then44.i

lor.lhs.false.i.if.then36.i_crit_edge:            ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then36.i

if.then36.i:                                      ; preds = %lor.lhs.false.i.if.then36.i_crit_edge, %land.lhs.true.i.if.then36.i_crit_edge
  %or39.i = or i32 %or23.i, 14
  %116 = ptrtoint ptr %control025.i to i32
  call void @__asan_storeN_noabort(i32 %116, i32 4)
  store i32 %or39.i, ptr %control025.i, align 1
  br label %if.end79.i

if.then44.i:                                      ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #11
  %or47.i = or i32 %or23.i, 6
  %117 = ptrtoint ptr %control025.i to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 %or47.i, ptr %control025.i, align 1
  br label %if.end79.i

if.else48.i:                                      ; preds = %if.end26.i
  br i1 %cmp30.i, label %if.then53.i, label %if.else57.i

if.then53.i:                                      ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #11
  %or56.i = or i32 %or23.i, 7
  %118 = ptrtoint ptr %control025.i to i32
  call void @__asan_storeN_noabort(i32 %118, i32 4)
  store i32 %or56.i, ptr %control025.i, align 1
  br label %if.end79.i

if.else57.i:                                      ; preds = %if.else48.i
  call void @__sanitizer_cov_trace_pc() #11
  %or60.i = or i32 %or23.i, 15
  %119 = ptrtoint ptr %control025.i to i32
  call void @__asan_storeN_noabort(i32 %119, i32 4)
  store i32 %or60.i, ptr %control025.i, align 1
  br label %if.end79.i

if.else64.i:                                      ; preds = %skip_cdesc
  %120 = ptrtoint ptr %sreq to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sreq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp66.i = icmp eq i32 %121, 0
  %shl69.i = shl i32 %div1.i, 8
  br i1 %cmp66.i, label %if.then68.i, label %if.else73.i

if.then68.i:                                      ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #11
  %or70.i = or i32 %shl69.i, 65540
  %control072.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 5
  %122 = ptrtoint ptr %control072.i to i32
  call void @__asan_storeN_noabort(i32 %122, i32 4)
  store i32 %or70.i, ptr %control072.i, align 1
  br label %if.end79.i

if.else73.i:                                      ; preds = %if.else64.i
  call void @__sanitizer_cov_trace_pc() #11
  %or75.i = or i32 %shl69.i, 65541
  %control077.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 5
  %123 = ptrtoint ptr %control077.i to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 %or75.i, ptr %control077.i, align 1
  br label %if.end79.i

if.end79.i:                                       ; preds = %if.else73.i, %if.then68.i, %if.else57.i, %if.then53.i, %if.then44.i, %if.then36.i
  %alg80.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 36
  %124 = ptrtoint ptr %alg80.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %alg80.i, align 4
  %126 = zext i32 %125 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %125, label %if.end79.i.safexcel_context_control.exit_crit_edge [
    i32 4, label %if.then127.i
    i32 1, label %if.then91.i
    i32 2, label %if.then99.i
    i32 3, label %if.then119.i
  ]

if.end79.i.safexcel_context_control.exit_crit_edge: ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %safexcel_context_control.exit

if.then91.i:                                      ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  %control093.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 5
  %127 = ptrtoint ptr %control093.i to i32
  call void @__asan_loadN_noabort(i32 %127, i32 4)
  %128 = load i32, ptr %control093.i, align 1
  %or94.i = or i32 %128, 262144
  store i32 %or94.i, ptr %control093.i, align 1
  br label %safexcel_context_control.exit

if.then99.i:                                      ; preds = %if.end79.i
  %129 = ptrtoint ptr %key_len122 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %key_len122, align 4
  %xts.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 3
  %131 = ptrtoint ptr %xts.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %xts.i, align 4
  %shr.i = lshr i32 %130, %132
  %133 = zext i32 %shr.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %133, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %shr.i, label %do.end.i [
    i32 16, label %sw.bb.i
    i32 24, label %sw.bb104.i
    i32 32, label %sw.bb108.i
  ]

sw.bb.i:                                          ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #11
  %control0102.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 5
  %134 = ptrtoint ptr %control0102.i to i32
  call void @__asan_loadN_noabort(i32 %134, i32 4)
  %135 = load i32, ptr %control0102.i, align 1
  %or103.i = or i32 %135, 655360
  store i32 %or103.i, ptr %control0102.i, align 1
  br label %safexcel_context_control.exit

sw.bb104.i:                                       ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #11
  %control0106.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 5
  %136 = ptrtoint ptr %control0106.i to i32
  call void @__asan_loadN_noabort(i32 %136, i32 4)
  %137 = load i32, ptr %control0106.i, align 1
  %or107.i = or i32 %137, 786432
  store i32 %or107.i, ptr %control0106.i, align 1
  br label %safexcel_context_control.exit

sw.bb108.i:                                       ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #11
  %control0110.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 5
  %138 = ptrtoint ptr %control0110.i to i32
  call void @__asan_loadN_noabort(i32 %138, i32 4)
  %139 = load i32, ptr %control0110.i, align 1
  %or111.i = or i32 %139, 917504
  store i32 %or111.i, ptr %control0110.i, align 1
  br label %safexcel_context_control.exit

do.end.i:                                         ; preds = %if.then99.i
  call void @__sanitizer_cov_trace_pc() #11
  %dev.i = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %85, i32 0, i32 1
  %140 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %141, ptr noundef nonnull @.str.11, i32 noundef %shr.i) #12
  br label %safexcel_context_control.exit

if.then119.i:                                     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  %control0121.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 5
  %142 = ptrtoint ptr %control0121.i to i32
  call void @__asan_loadN_noabort(i32 %142, i32 4)
  %143 = load i32, ptr %control0121.i, align 1
  %or122.i = or i32 %143, 1048576
  store i32 %or122.i, ptr %control0121.i, align 1
  br label %safexcel_context_control.exit

if.then127.i:                                     ; preds = %if.end79.i
  call void @__sanitizer_cov_trace_pc() #11
  %control0129.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 5
  %144 = ptrtoint ptr %control0129.i to i32
  call void @__asan_loadN_noabort(i32 %144, i32 4)
  %145 = load i32, ptr %control0129.i, align 1
  %or130.i = or i32 %145, 1703936
  store i32 %or130.i, ptr %control0129.i, align 1
  br label %safexcel_context_control.exit

safexcel_context_control.exit:                    ; preds = %if.then127.i, %if.then119.i, %do.end.i, %sw.bb108.i, %sw.bb104.i, %sw.bb.i, %if.then91.i, %if.end79.i.safexcel_context_control.exit_crit_edge, %if.then7.i
  %146 = ptrtoint ptr %aead to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %aead, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool166.not = icmp eq i8 %147, 0
  %148 = ptrtoint ptr %atoken to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %atoken, align 4
  br i1 %tobool166.not, label %if.else169, label %if.then167

if.then167:                                       ; preds = %safexcel_context_control.exit
  %150 = ptrtoint ptr %sreq to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %sreq, align 4
  %aadskip.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 42
  %152 = ptrtoint ptr %aadskip.i to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %aadskip.i, align 2
  %conv.i = zext i8 %153 to i32
  %sub.i = sub i32 %assoclen, %conv.i
  %control_data.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6
  %154 = ptrtoint ptr %control_data.i to i32
  call void @__asan_loadN_noabort(i32 %154, i32 4)
  %bf.load.i = load i32, ptr %control_data.i, align 1
  %bf.set.i = or i32 %bf.load.i, 14336
  store i32 %bf.set.i, ptr %control_data.i, align 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %151)
  %cmp.i489 = icmp eq i32 %151, 1
  %sub6.i = select i1 %cmp.i489, i32 %digestsize, i32 0
  %spec.select.i = sub i32 %cryptlen, %sub6.i
  %xcm.i490 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 41
  %155 = ptrtoint ptr %xcm.i490 to i32
  call void @__asan_load1_noabort(i32 %155)
  %156 = load i8, ptr %xcm.i490, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %156)
  %cmp8.i491 = icmp eq i8 %156, 2
  br i1 %cmp8.i491, label %if.then11.i, label %if.else155.i, !prof !178

if.then11.i:                                      ; preds = %if.then167
  %token.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7
  %arrayidx.i = getelementptr %struct.safexcel_token, ptr %149, i32 1
  %arrayidx13.i = getelementptr %struct.safexcel_token, ptr %149, i32 5
  %157 = ptrtoint ptr %aead to i32
  call void @__asan_load1_noabort(i32 %157)
  %158 = load i8, ptr %aead, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %158)
  %cmp15.i = icmp eq i8 %158, 2
  br i1 %cmp15.i, label %if.then17.i, label %if.else.i496

if.then17.i:                                      ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %nonce.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 1
  %159 = ptrtoint ptr %nonce.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %nonce.i, align 4
  %161 = ptrtoint ptr %token.i to i32
  call void @__asan_storeN_noabort(i32 %161, i32 4)
  store i32 %160, ptr %token.i, align 1
  %162 = load i32, ptr %nonce.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp22.i = icmp sgt i32 %sub.i, 0
  %shl.i = select i1 %cmp22.i, i32 64, i32 0
  %sub25.i = shl i32 %digestsize, 2
  %shl26.i = add i32 %sub25.i, -8
  %or24.i = or i32 %shl.i, %shl26.i
  %or27.i = or i32 %or24.i, %162
  %163 = call i32 @llvm.bswap.i32(i32 %or27.i) #9
  %164 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %arrayidx.i, align 4
  %arrayidx30.i = getelementptr %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7, i32 1
  %165 = ptrtoint ptr %iv to i32
  call void @__asan_loadN_noabort(i32 %165, i32 8)
  %166 = load i64, ptr %iv, align 1
  %167 = ptrtoint ptr %arrayidx30.i to i32
  call void @__asan_storeN_noabort(i32 %167, i32 8)
  store i64 %166, ptr %arrayidx30.i, align 1
  %add.ptr.i493 = getelementptr %struct.safexcel_token, ptr %149, i32 2
  %168 = load i64, ptr %iv, align 1
  %169 = ptrtoint ptr %add.ptr.i493 to i32
  call void @__asan_storeN_noabort(i32 %169, i32 8)
  store i64 %168, ptr %add.ptr.i493, align 1
  %arrayidx33.i = getelementptr %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7, i32 3
  %170 = ptrtoint ptr %arrayidx33.i to i32
  call void @__asan_storeN_noabort(i32 %170, i32 4)
  store i32 0, ptr %arrayidx33.i, align 1
  %add.ptr34.i = getelementptr %struct.safexcel_token, ptr %149, i32 4
  %171 = ptrtoint ptr %add.ptr34.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %spec.select.i, ptr %add.ptr34.i, align 4
  br label %if.end69.i

if.else.i496:                                     ; preds = %if.then11.i
  call void @__sanitizer_cov_trace_pc() #11
  %172 = ptrtoint ptr %iv to i32
  call void @__asan_load1_noabort(i32 %172)
  %173 = load i8, ptr %iv, align 1
  %conv36.i = zext i8 %173 to i32
  %sub37.i = sub nsw i32 15, %conv36.i
  %174 = call ptr @memcpy(ptr %token.i, ptr %iv, i32 %sub37.i)
  %175 = load i8, ptr %iv, align 1
  %conv39.i = zext i8 %175 to i32
  %sub40.i = sub nsw i32 15, %conv39.i
  %176 = call ptr @memcpy(ptr %arrayidx.i, ptr %iv, i32 %sub40.i)
  %add.ptr41.i = getelementptr i8, ptr %token.i, i32 15
  %177 = load i8, ptr %iv, align 1
  %conv43.i = zext i8 %177 to i32
  %idx.neg.i = sub nsw i32 0, %conv43.i
  %add.ptr44.i = getelementptr i8, ptr %add.ptr41.i, i32 %idx.neg.i
  %add.i = add nuw nsw i32 %conv43.i, 1
  %178 = call ptr @memset(ptr %add.ptr44.i, i32 0, i32 %add.i)
  %add.ptr47.i = getelementptr i8, ptr %arrayidx.i, i32 15
  %179 = load i8, ptr %iv, align 1
  %conv49.i = zext i8 %179 to i32
  %idx.neg50.i = sub nsw i32 0, %conv49.i
  %add.ptr51.i = getelementptr i8, ptr %add.ptr47.i, i32 %idx.neg50.i
  %sub54.i = add nsw i32 %conv49.i, -1
  %180 = call ptr @memset(ptr %add.ptr51.i, i32 0, i32 %sub54.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp55.i = icmp sgt i32 %sub.i, 0
  %shl57.i = select i1 %cmp55.i, i32 64, i32 0
  %sub58.i = shl i32 %digestsize, 2
  %shl59.i = add i32 %sub58.i, 248
  %or60.i494 = or i32 %shl57.i, %shl59.i
  %181 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %181)
  %182 = load i8, ptr %arrayidx.i, align 1
  %183 = trunc i32 %or60.i494 to i8
  %conv64.i = or i8 %182, %183
  store i8 %conv64.i, ptr %arrayidx.i, align 1
  %shr.i495 = lshr i32 %spec.select.i, 8
  %conv65.i = trunc i32 %shr.i495 to i8
  %arrayidx66.i = getelementptr i8, ptr %arrayidx.i, i32 14
  %184 = ptrtoint ptr %arrayidx66.i to i32
  call void @__asan_store1_noabort(i32 %184)
  store i8 %conv65.i, ptr %arrayidx66.i, align 1
  %conv67.i = trunc i32 %spec.select.i to i8
  %185 = ptrtoint ptr %add.ptr47.i to i32
  call void @__asan_store1_noabort(i32 %185)
  store i8 %conv67.i, ptr %add.ptr47.i, align 1
  br label %if.end69.i

if.end69.i:                                       ; preds = %if.else.i496, %if.then17.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %cmp73.i = icmp sgt i32 %sub.i, 0
  %bf.set87.i = select i1 %cmp73.i, i32 591282, i32 525746
  %186 = ptrtoint ptr %149 to i32
  call void @__asan_storeN_noabort(i32 %186, i32 4)
  store i32 %bf.set87.i, ptr %149, align 1
  call void @__sanitizer_cov_trace_cmp4(i32 %conv.i, i32 %assoclen)
  %tobool88.not.i = icmp eq i32 %conv.i, %assoclen
  br i1 %tobool88.not.i, label %if.end69.i.if.end105.i_crit_edge, label %if.then95.i, !prof !178

if.end69.i.if.end105.i_crit_edge:                 ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end105.i

if.then95.i:                                      ; preds = %if.end69.i
  call void @__sanitizer_cov_trace_pc() #11
  %shr96.i = ashr i32 %sub.i, 8
  %and97.i = shl i32 %sub.i, 8
  %shl98.i = and i32 %and97.i, 65280
  %or99.i = or i32 %shl98.i, %shr96.i
  %187 = call i32 @llvm.bswap.i32(i32 %or99.i) #9
  %188 = ptrtoint ptr %arrayidx13.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 %187, ptr %arrayidx13.i, align 4
  %add.ptr100.i = getelementptr %struct.safexcel_token, ptr %149, i32 6
  br label %if.end105.i

if.end105.i:                                      ; preds = %if.then95.i, %if.end69.i.if.end105.i_crit_edge
  %atoken.addr.0.i = phi ptr [ %add.ptr100.i, %if.then95.i ], [ %arrayidx13.i, %if.end69.i.if.end105.i_crit_edge ]
  %atoksize.0.i = phi i32 [ 9, %if.then95.i ], [ 8, %if.end69.i.if.end105.i_crit_edge ]
  %bf.shl111.i = shl i32 %sub.i, 15
  %bf.set119.i = or i32 %bf.shl111.i, 1024
  %189 = ptrtoint ptr %atoken.addr.0.i to i32
  call void @__asan_storeN_noabort(i32 %189, i32 4)
  store i32 %bf.set119.i, ptr %atoken.addr.0.i, align 1
  %incdec.ptr.i = getelementptr %struct.safexcel_token, ptr %atoken.addr.0.i, i32 1
  %add123.i = add i32 %sub.i, 2
  %and124.i = and i32 %add123.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and124.i)
  %tobool126.not.i = icmp eq i32 %and124.i, 0
  %or.cond.i = select i1 %tobool88.not.i, i1 true, i1 %tobool126.not.i
  %.neg532.i = mul nsw i32 %and124.i, -32768
  %phi.bo.op.i = add nsw i32 %.neg532.i, 524290
  %bf.set122.i = select i1 %or.cond.i, i32 2, i32 %phi.bo.op.i
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i, i32 %cryptlen)
  %tobool133.not.i = icmp eq i32 %sub6.i, %cryptlen
  %..i = select i1 %tobool133.not.i, i32 13312, i32 1024, !prof !178
  %bf.set153.i = or i32 %bf.set122.i, %..i
  %190 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_storeN_noabort(i32 %190, i32 4)
  store i32 %bf.set153.i, ptr %incdec.ptr.i, align 1
  br label %if.end170.i

if.else155.i:                                     ; preds = %if.then167
  %191 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %192)
  %cmp.i.i = icmp eq i32 %192, 6
  br i1 %cmp.i.i, label %if.else155.i.if.then.i.i_crit_edge, label %lor.lhs.false.i.i

if.else155.i.if.then.i.i_crit_edge:               ; preds = %if.else155.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

lor.lhs.false.i.i:                                ; preds = %if.else155.i
  %193 = ptrtoint ptr %aead to i32
  call void @__asan_load1_noabort(i32 %193)
  %194 = load i8, ptr %aead, align 4
  %195 = and i8 %194, 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %195)
  %tobool.not.i.i = icmp eq i8 %195, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %lor.lhs.false.i.i.if.then.i.i_crit_edge

lor.lhs.false.i.i.if.then.i.i_crit_edge:          ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %lor.lhs.false.i.i.if.then.i.i_crit_edge, %if.else155.i.if.then.i.i_crit_edge
  %nonce.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 1
  %196 = ptrtoint ptr %nonce.i.i to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %nonce.i.i, align 4
  %token.i.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7
  %198 = ptrtoint ptr %token.i.i to i32
  call void @__asan_storeN_noabort(i32 %198, i32 4)
  store i32 %197, ptr %token.i.i, align 1
  %arrayidx3.i.i = getelementptr %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7, i32 1
  %199 = ptrtoint ptr %iv to i32
  call void @__asan_loadN_noabort(i32 %199, i32 8)
  %200 = load i64, ptr %iv, align 1
  %201 = ptrtoint ptr %arrayidx3.i.i to i32
  call void @__asan_storeN_noabort(i32 %201, i32 8)
  store i64 %200, ptr %arrayidx3.i.i, align 1
  %ctrinit.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 48
  %202 = ptrtoint ptr %ctrinit.i.i to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %ctrinit.i.i, align 4
  %arrayidx6.i.i = getelementptr %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7, i32 3
  %204 = ptrtoint ptr %arrayidx6.i.i to i32
  call void @__asan_storeN_noabort(i32 %204, i32 4)
  store i32 %203, ptr %arrayidx6.i.i, align 1
  br label %safexcel_aead_iv.exit.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_const_cmp1(i8 1, i8 %156)
  %cmp8.i.i = icmp eq i8 %156, 1
  br i1 %cmp8.i.i, label %if.end.i.i.if.then13.i.i_crit_edge, label %lor.lhs.false10.i.i

if.end.i.i.if.then13.i.i_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i.i

lor.lhs.false10.i.i:                              ; preds = %if.end.i.i
  %alg.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 36
  %205 = ptrtoint ptr %alg.i.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load i32, ptr %alg.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %206)
  %cmp11.i.i = icmp eq i32 %206, 3
  br i1 %cmp11.i.i, label %lor.lhs.false10.i.i.if.then13.i.i_crit_edge, label %if.end21.i.i

lor.lhs.false10.i.i.if.then13.i.i_crit_edge:      ; preds = %lor.lhs.false10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then13.i.i

if.then13.i.i:                                    ; preds = %lor.lhs.false10.i.i.if.then13.i.i_crit_edge, %if.end.i.i.if.then13.i.i_crit_edge
  %token15.i.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7
  %207 = call ptr @memcpy(ptr %token15.i.i, ptr %iv, i32 12)
  %ctrinit17.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 48
  %208 = ptrtoint ptr %ctrinit17.i.i to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load i32, ptr %ctrinit17.i.i, align 4
  %arrayidx20.i.i = getelementptr %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7, i32 3
  %210 = ptrtoint ptr %arrayidx20.i.i to i32
  call void @__asan_storeN_noabort(i32 %210, i32 4)
  store i32 %209, ptr %arrayidx20.i.i, align 1
  br label %safexcel_aead_iv.exit.i

if.end21.i.i:                                     ; preds = %lor.lhs.false10.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %token23.i.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7
  %blocksz.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 43
  %211 = ptrtoint ptr %blocksz.i.i to i32
  call void @__asan_load1_noabort(i32 %211)
  %212 = load i8, ptr %blocksz.i.i, align 1
  %conv24.i.i = zext i8 %212 to i32
  %213 = call ptr @memcpy(ptr %token23.i.i, ptr %iv, i32 %conv24.i.i)
  br label %safexcel_aead_iv.exit.i

safexcel_aead_iv.exit.i:                          ; preds = %if.end21.i.i, %if.then13.i.i, %if.then.i.i
  %bf.shl161.i = shl i32 %sub.i, 15
  %bf.set169.i = or i32 %bf.shl161.i, 13312
  %214 = ptrtoint ptr %149 to i32
  call void @__asan_storeN_noabort(i32 %214, i32 4)
  store i32 %bf.set169.i, ptr %149, align 1
  br label %if.end170.i

if.end170.i:                                      ; preds = %safexcel_aead_iv.exit.i, %if.end105.i
  %atoken.addr.1.i = phi ptr [ %incdec.ptr.i, %if.end105.i ], [ %149, %safexcel_aead_iv.exit.i ]
  %aadref.0.i = phi ptr [ %atoken.addr.0.i, %if.end105.i ], [ %149, %safexcel_aead_iv.exit.i ]
  %atoksize.1.i = phi i32 [ %atoksize.0.i, %if.end105.i ], [ 2, %safexcel_aead_iv.exit.i ]
  %incdec.ptr171.i = getelementptr %struct.safexcel_token, ptr %atoken.addr.1.i, i32 1
  %215 = ptrtoint ptr %aead to i32
  call void @__asan_load1_noabort(i32 %215)
  %216 = load i8, ptr %aead, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %216)
  %cmp174.i = icmp eq i8 %216, 2
  br i1 %cmp174.i, label %if.end170.i.if.end217.sink.split.i_crit_edge, label %if.else190.i

if.end170.i.if.end217.sink.split.i_crit_edge:     ; preds = %if.end170.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end217.sink.split.i

if.else190.i:                                     ; preds = %if.end170.i
  %alg.i497 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 36
  %217 = ptrtoint ptr %alg.i497 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %alg.i497, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %218)
  %cmp191.i = icmp eq i32 %218, 3
  %spec.select534.i = and i1 %cmp.i489, %cmp191.i
  br i1 %spec.select534.i, label %if.else190.i.if.end217.sink.split.i_crit_edge, label %if.else190.i.if.end217.i_crit_edge, !prof !178

if.else190.i.if.end217.i_crit_edge:               ; preds = %if.else190.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end217.i

if.else190.i.if.end217.sink.split.i_crit_edge:    ; preds = %if.else190.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end217.sink.split.i

if.end217.sink.split.i:                           ; preds = %if.else190.i.if.end217.sink.split.i_crit_edge, %if.end170.i.if.end217.sink.split.i_crit_edge
  %.sink536.i = phi i32 [ 262144, %if.end170.i.if.end217.sink.split.i_crit_edge ], [ 524290, %if.else190.i.if.end217.sink.split.i_crit_edge ]
  %219 = ptrtoint ptr %incdec.ptr171.i to i32
  call void @__asan_storeN_noabort(i32 %219, i32 4)
  store i32 %.sink536.i, ptr %incdec.ptr171.i, align 1
  %incdec.ptr214.i = getelementptr %struct.safexcel_token, ptr %atoken.addr.1.i, i32 2
  %inc215.i = add nuw nsw i32 %atoksize.1.i, 1
  br label %if.end217.i

if.end217.i:                                      ; preds = %if.end217.sink.split.i, %if.else190.i.if.end217.i_crit_edge
  %atoken.addr.2.i = phi ptr [ %incdec.ptr171.i, %if.else190.i.if.end217.i_crit_edge ], [ %incdec.ptr214.i, %if.end217.sink.split.i ]
  %atoksize.2.i = phi i32 [ %atoksize.1.i, %if.else190.i.if.end217.i_crit_edge ], [ %inc215.i, %if.end217.sink.split.i ]
  %220 = ptrtoint ptr %xcm.i490 to i32
  call void @__asan_load1_noabort(i32 %220)
  %221 = load i8, ptr %xcm.i490, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %221)
  %tobool219.not.i = icmp eq i8 %221, 0
  br i1 %tobool219.not.i, label %if.end217.i.if.end248.i_crit_edge, label %if.then220.i

if.end217.i.if.end248.i_crit_edge:                ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end248.i

if.then220.i:                                     ; preds = %if.end217.i
  call void @__sanitizer_cov_trace_pc() #11
  %222 = ptrtoint ptr %atoken.addr.2.i to i32
  call void @__asan_storeN_noabort(i32 %222, i32 4)
  store i32 266, ptr %atoken.addr.2.i, align 1
  %incdec.ptr233.i = getelementptr %struct.safexcel_token, ptr %atoken.addr.2.i, i32 1
  %223 = ptrtoint ptr %incdec.ptr233.i to i32
  call void @__asan_storeN_noabort(i32 %223, i32 4)
  store i32 526850, ptr %incdec.ptr233.i, align 1
  %incdec.ptr246.i = getelementptr %struct.safexcel_token, ptr %atoken.addr.2.i, i32 2
  %add247.i = add nuw nsw i32 %atoksize.2.i, 2
  br label %if.end248.i

if.end248.i:                                      ; preds = %if.then220.i, %if.end217.i.if.end248.i_crit_edge
  %atoken.addr.3.i = phi ptr [ %incdec.ptr246.i, %if.then220.i ], [ %atoken.addr.2.i, %if.end217.i.if.end248.i_crit_edge ]
  %atoksize.3.i = phi i32 [ %add247.i, %if.then220.i ], [ %atoksize.2.i, %if.end217.i.if.end248.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %sub6.i, i32 %cryptlen)
  %tobool249.not.i = icmp eq i32 %sub6.i, %cryptlen
  br i1 %tobool249.not.i, label %lor.rhs.i, label %if.end248.i.if.then259.i_crit_edge

if.end248.i.if.then259.i_crit_edge:               ; preds = %if.end248.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then259.i

lor.rhs.i:                                        ; preds = %if.end248.i
  %alg250.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 36
  %224 = ptrtoint ptr %alg250.i to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %alg250.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %225)
  %cmp251.i = icmp eq i32 %225, 3
  br i1 %cmp251.i, label %lor.rhs.i.if.then259.i_crit_edge, label %lor.rhs.i.if.end335.i_crit_edge, !prof !177

lor.rhs.i.if.end335.i_crit_edge:                  ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end335.i

lor.rhs.i.if.then259.i_crit_edge:                 ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then259.i

if.then259.i:                                     ; preds = %lor.rhs.i.if.then259.i_crit_edge, %if.end248.i.if.then259.i_crit_edge
  %226 = ptrtoint ptr %aadref.0.i to i32
  call void @__asan_loadN_noabort(i32 %226, i32 4)
  %bf.load260.i = load i32, ptr %aadref.0.i, align 1
  %bf.clear261.i = and i32 %bf.load260.i, -24577
  store i32 %bf.clear261.i, ptr %aadref.0.i, align 1
  %227 = ptrtoint ptr %atoken.addr.3.i to i32
  call void @__asan_loadN_noabort(i32 %227, i32 4)
  %bf.load263.i = load i32, ptr %atoken.addr.3.i, align 1
  %bf.shl268.i = shl i32 %spec.select.i, 15
  %bf.clear269.i = and i32 %bf.load263.i, 32752
  %bf.set270.i = or i32 %bf.clear269.i, %bf.shl268.i
  store i32 %bf.set270.i, ptr %atoken.addr.3.i, align 1
  %228 = ptrtoint ptr %aead to i32
  call void @__asan_load1_noabort(i32 %228)
  %229 = load i8, ptr %aead, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 3, i8 %229)
  %cmp273.i = icmp eq i8 %229, 3
  br i1 %cmp273.i, label %if.then281.i, label %if.else288.i, !prof !178

if.then281.i:                                     ; preds = %if.then259.i
  call void @__sanitizer_cov_trace_pc() #11
  %230 = ptrtoint ptr %aadref.0.i to i32
  call void @__asan_loadN_noabort(i32 %230, i32 4)
  %bf.load282.i = load i32, ptr %aadref.0.i, align 1
  %bf.clear283.i = and i32 %bf.load282.i, -8177
  %bf.set284.i = or i32 %bf.clear283.i, 1024
  store i32 %bf.set284.i, ptr %aadref.0.i, align 1
  %231 = ptrtoint ptr %atoken.addr.3.i to i32
  call void @__asan_loadN_noabort(i32 %231, i32 4)
  %bf.load285.i = load i32, ptr %atoken.addr.3.i, align 1
  %bf.clear286.i = and i32 %bf.load285.i, -8177
  %bf.set287.i = or i32 %bf.clear286.i, 5632
  br label %if.end292.i

if.else288.i:                                     ; preds = %if.then259.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.clear290.i = and i32 %bf.set270.i, -8192
  %bf.set291.i = or i32 %bf.clear290.i, 7680
  br label %if.end292.i

if.end292.i:                                      ; preds = %if.else288.i, %if.then281.i
  %storemerge.i = phi i32 [ %bf.set291.i, %if.else288.i ], [ %bf.set287.i, %if.then281.i ]
  %232 = ptrtoint ptr %atoken.addr.3.i to i32
  call void @__asan_storeN_noabort(i32 %232, i32 4)
  store i32 %storemerge.i, ptr %atoken.addr.3.i, align 1
  %and293.i = and i32 %spec.select.i, 15
  %233 = ptrtoint ptr %xcm.i490 to i32
  call void @__asan_load1_noabort(i32 %233)
  %234 = load i8, ptr %xcm.i490, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %234)
  %cmp296.i = icmp eq i8 %234, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and293.i)
  %tobool299.i = icmp ne i32 %and293.i, 0
  %spec.select535.i = and i1 %tobool299.i, %cmp296.i
  %bf.clear309.i = and i32 %storemerge.i, -24577
  br i1 %spec.select535.i, label %if.then307.i, label %if.else328.i, !prof !178

if.then307.i:                                     ; preds = %if.end292.i
  call void @__sanitizer_cov_trace_pc() #11
  %235 = ptrtoint ptr %atoken.addr.3.i to i32
  call void @__asan_storeN_noabort(i32 %235, i32 4)
  store i32 %bf.clear309.i, ptr %atoken.addr.3.i, align 1
  %incdec.ptr311.i = getelementptr %struct.safexcel_token, ptr %atoken.addr.3.i, i32 1
  %inc312.i = add nuw nsw i32 %atoksize.3.i, 1
  %.neg.i = mul nsw i32 %and293.i, -32768
  %bf.set327.i = add nsw i32 %.neg.i, 533506
  %236 = ptrtoint ptr %incdec.ptr311.i to i32
  call void @__asan_storeN_noabort(i32 %236, i32 4)
  store i32 %bf.set327.i, ptr %incdec.ptr311.i, align 1
  br label %if.end332.i

if.else328.i:                                     ; preds = %if.end292.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set331.i = or i32 %bf.clear309.i, 8192
  %237 = ptrtoint ptr %atoken.addr.3.i to i32
  call void @__asan_storeN_noabort(i32 %237, i32 4)
  store i32 %bf.set331.i, ptr %atoken.addr.3.i, align 1
  br label %if.end332.i

if.end332.i:                                      ; preds = %if.else328.i, %if.then307.i
  %atoken.addr.4.i = phi ptr [ %incdec.ptr311.i, %if.then307.i ], [ %atoken.addr.3.i, %if.else328.i ]
  %atoksize.4.i = phi i32 [ %inc312.i, %if.then307.i ], [ %atoksize.3.i, %if.else328.i ]
  %incdec.ptr333.i = getelementptr %struct.safexcel_token, ptr %atoken.addr.4.i, i32 1
  %inc334.i = add nuw nsw i32 %atoksize.4.i, 1
  br label %if.end335.i

if.end335.i:                                      ; preds = %if.end332.i, %lor.rhs.i.if.end335.i_crit_edge
  %atoken.addr.5.i = phi ptr [ %incdec.ptr333.i, %if.end332.i ], [ %atoken.addr.3.i, %lor.rhs.i.if.end335.i_crit_edge ]
  %atoksize.5.i = phi i32 [ %inc334.i, %if.end332.i ], [ %atoksize.3.i, %lor.rhs.i.if.end335.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp336.i = icmp eq i32 %151, 0
  %bf.shl344.i = shl i32 %digestsize, 15
  br i1 %cmp336.i, label %if.end335.i.safexcel_aead_token.exit_crit_edge, label %if.else353.i

if.end335.i.safexcel_aead_token.exit_crit_edge:   ; preds = %if.end335.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %safexcel_aead_token.exit

if.else353.i:                                     ; preds = %if.end335.i
  call void @__sanitizer_cov_trace_pc() #11
  %bf.set367.i = or i32 %bf.shl344.i, 25028
  %238 = ptrtoint ptr %atoken.addr.5.i to i32
  call void @__asan_storeN_noabort(i32 %238, i32 4)
  store i32 %bf.set367.i, ptr %atoken.addr.5.i, align 1
  %incdec.ptr368.i = getelementptr %struct.safexcel_token, ptr %atoken.addr.5.i, i32 1
  %inc369.i = add nuw nsw i32 %atoksize.5.i, 1
  br label %safexcel_aead_token.exit

safexcel_aead_token.exit:                         ; preds = %if.else353.i, %if.end335.i.safexcel_aead_token.exit_crit_edge
  %.sink537.i = phi i32 [ -2147458547, %if.else353.i ], [ 25538, %if.end335.i.safexcel_aead_token.exit_crit_edge ]
  %incdec.ptr368.sink.i = phi ptr [ %incdec.ptr368.i, %if.else353.i ], [ %atoken.addr.5.i, %if.end335.i.safexcel_aead_token.exit_crit_edge ]
  %atoksize.6.i = phi i32 [ %inc369.i, %if.else353.i ], [ %atoksize.5.i, %if.end335.i.safexcel_aead_token.exit_crit_edge ]
  %bf.set384.i = or i32 %.sink537.i, %bf.shl344.i
  %239 = ptrtoint ptr %incdec.ptr368.sink.i to i32
  call void @__asan_storeN_noabort(i32 %239, i32 4)
  store i32 %bf.set384.i, ptr %incdec.ptr368.sink.i, align 1
  %240 = ptrtoint ptr %first_cdesc.3 to i32
  call void @__asan_loadN_noabort(i32 %240, i32 4)
  %bf.load387.i = load i32, ptr %first_cdesc.3, align 1
  %bf.clear389.i = and i32 %bf.load387.i, -256
  %bf.set390.i = or i32 %bf.clear389.i, %atoksize.6.i
  store i32 %bf.set390.i, ptr %first_cdesc.3, align 1
  br label %if.end170

if.else169:                                       ; preds = %safexcel_context_control.exit
  %241 = ptrtoint ptr %mode.i to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %242)
  %cmp.i.i499 = icmp eq i32 %242, 6
  br i1 %cmp.i.i499, label %if.then.i.i503, label %if.end.i.i506

if.then.i.i503:                                   ; preds = %if.else169
  call void @__sanitizer_cov_trace_pc() #11
  %control_data.i.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6
  %243 = ptrtoint ptr %control_data.i.i to i32
  call void @__asan_loadN_noabort(i32 %243, i32 4)
  %bf.load.i.i = load i32, ptr %control_data.i.i, align 1
  %bf.set.i.i = or i32 %bf.load.i.i, 14336
  store i32 %bf.set.i.i, ptr %control_data.i.i, align 1
  %nonce.i.i500 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 1
  %244 = ptrtoint ptr %nonce.i.i500 to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %nonce.i.i500, align 4
  %token.i.i501 = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7
  %246 = ptrtoint ptr %token.i.i501 to i32
  call void @__asan_storeN_noabort(i32 %246, i32 4)
  store i32 %245, ptr %token.i.i501, align 1
  %arrayidx7.i.i = getelementptr %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7, i32 1
  %247 = ptrtoint ptr %iv to i32
  call void @__asan_loadN_noabort(i32 %247, i32 8)
  %248 = load i64, ptr %iv, align 1
  %249 = ptrtoint ptr %arrayidx7.i.i to i32
  call void @__asan_storeN_noabort(i32 %249, i32 8)
  store i64 %248, ptr %arrayidx7.i.i, align 1
  %ctrinit.i.i502 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 48
  br label %if.then.sink.split.i

if.end.i.i506:                                    ; preds = %if.else169
  %alg.i.i504 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 36
  %250 = ptrtoint ptr %alg.i.i504 to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %alg.i.i504, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %251)
  %cmp11.i.i505 = icmp eq i32 %251, 3
  br i1 %cmp11.i.i505, label %if.then13.i.i507, label %safexcel_skcipher_iv.exit.i

if.then13.i.i507:                                 ; preds = %if.end.i.i506
  call void @__sanitizer_cov_trace_pc() #11
  %control_data14.i.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6
  %252 = ptrtoint ptr %control_data14.i.i to i32
  call void @__asan_loadN_noabort(i32 %252, i32 4)
  %bf.load15.i.i = load i32, ptr %control_data14.i.i, align 1
  %bf.set26.i.i = or i32 %bf.load15.i.i, 14336
  store i32 %bf.set26.i.i, ptr %control_data14.i.i, align 1
  %token29.i.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7
  %arrayidx31.i.i = getelementptr i8, ptr %iv, i32 4
  %253 = call ptr @memcpy(ptr %token29.i.i, ptr %arrayidx31.i.i, i32 12)
  br label %if.then.sink.split.i

safexcel_skcipher_iv.exit.i:                      ; preds = %if.end.i.i506
  %ivmask.i.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 44
  %254 = ptrtoint ptr %ivmask.i.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %ivmask.i.i, align 4
  %control_data36.i.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6
  %256 = ptrtoint ptr %control_data36.i.i to i32
  call void @__asan_loadN_noabort(i32 %256, i32 4)
  %bf.load37.i.i = load i32, ptr %control_data36.i.i, align 1
  %257 = shl i32 %255, 2
  %258 = and i32 %257, 32764
  %bf.set48.i.i = or i32 %258, %bf.load37.i.i
  store i32 %bf.set48.i.i, ptr %control_data36.i.i, align 1
  %token51.i.i = getelementptr inbounds %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7
  %blocksz.i.i508 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 43
  %259 = ptrtoint ptr %blocksz.i.i508 to i32
  call void @__asan_load1_noabort(i32 %259)
  %260 = load i8, ptr %blocksz.i.i508, align 1
  %conv52.i.i = zext i8 %260 to i32
  %261 = call ptr @memcpy(ptr %token51.i.i, ptr %iv, i32 %conv52.i.i)
  %262 = load i8, ptr %blocksz.i.i508, align 1
  %.mask.i = and i8 %262, -4
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %.mask.i)
  %cmp.i509 = icmp eq i8 %.mask.i, 16
  br i1 %cmp.i509, label %safexcel_skcipher_iv.exit.i.if.then.i512_crit_edge, label %if.else.i515

safexcel_skcipher_iv.exit.i.if.then.i512_crit_edge: ; preds = %safexcel_skcipher_iv.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i512

if.then.sink.split.i:                             ; preds = %if.then13.i.i507, %if.then.i.i503
  %iv.sink.i = phi ptr [ %iv, %if.then13.i.i507 ], [ %ctrinit.i.i502, %if.then.i.i503 ]
  %263 = ptrtoint ptr %iv.sink.i to i32
  call void @__asan_load4_noabort(i32 %263)
  %264 = load i32, ptr %iv.sink.i, align 4
  %arrayidx34.i.i = getelementptr %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7, i32 3
  %265 = ptrtoint ptr %arrayidx34.i.i to i32
  call void @__asan_storeN_noabort(i32 %265, i32 4)
  store i32 %264, ptr %arrayidx34.i.i, align 1
  br label %if.then.i512

if.then.i512:                                     ; preds = %if.then.sink.split.i, %safexcel_skcipher_iv.exit.i.if.then.i512_crit_edge
  %266 = ptrtoint ptr %first_cdesc.3 to i32
  call void @__asan_loadN_noabort(i32 %266, i32 4)
  %bf.load.i510 = load i32, ptr %first_cdesc.3, align 1
  %bf.clear.i = and i32 %bf.load.i510, -256
  %bf.set.i511 = or i32 %bf.clear.i, 1
  store i32 %bf.set.i511, ptr %first_cdesc.3, align 1
  br label %safexcel_skcipher_token.exit

if.else.i515:                                     ; preds = %safexcel_skcipher_iv.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %add.ptr.i513 = getelementptr %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7, i32 2
  %arrayidx.i514 = getelementptr %struct.safexcel_command_desc, ptr %first_cdesc.3, i32 0, i32 6, i32 7, i32 3
  %267 = ptrtoint ptr %arrayidx.i514 to i32
  call void @__asan_storeN_noabort(i32 %267, i32 4)
  store i32 131074, ptr %arrayidx.i514, align 1
  br label %safexcel_skcipher_token.exit

safexcel_skcipher_token.exit:                     ; preds = %if.else.i515, %if.then.i512
  %token.0.i = phi ptr [ %149, %if.then.i512 ], [ %add.ptr.i513, %if.else.i515 ]
  %bf.shl.i = shl i32 %cryptlen, 15
  %bf.set13.i = or i32 %bf.shl.i, 31232
  %268 = ptrtoint ptr %token.0.i to i32
  call void @__asan_storeN_noabort(i32 %268, i32 4)
  store i32 %bf.set13.i, ptr %token.0.i, align 1
  br label %if.end170

if.end170:                                        ; preds = %safexcel_skcipher_token.exit, %safexcel_aead_token.exit
  %269 = ptrtoint ptr %nr_dst to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load i32, ptr %nr_dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %270)
  %cmp173570 = icmp sgt i32 %270, 0
  br i1 %cmp173570, label %if.end170.for.body175_crit_edge, label %if.end170.if.then240_crit_edge, !prof !179

if.end170.if.then240_crit_edge:                   ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then240

if.end170.for.body175_crit_edge:                  ; preds = %if.end170
  br label %for.body175

for.body175:                                      ; preds = %for.inc229.for.body175_crit_edge, %if.end170.for.body175_crit_edge
  %271 = phi i32 [ %280, %for.inc229.for.body175_crit_edge ], [ %270, %if.end170.for.body175_crit_edge ]
  %assoclen.addr.0581 = phi i32 [ %assoclen.addr.2.ph, %for.inc229.for.body175_crit_edge ], [ %assoclen, %if.end170.for.body175_crit_edge ]
  %first.0.off0579 = phi i1 [ %first.2.off0.ph, %for.inc229.for.body175_crit_edge ], [ true, %if.end170.for.body175_crit_edge ]
  %i.1578 = phi i32 [ %inc230, %for.inc229.for.body175_crit_edge ], [ 0, %if.end170.for.body175_crit_edge ]
  %n_rdesc.0577 = phi i32 [ %n_rdesc.1.ph, %for.inc229.for.body175_crit_edge ], [ 0, %if.end170.for.body175_crit_edge ]
  %totlen_dst.2576 = phi i32 [ %sub197, %for.inc229.for.body175_crit_edge ], [ %totlen_dst.1, %if.end170.for.body175_crit_edge ]
  %sg.1573 = phi ptr [ %call231, %for.inc229.for.body175_crit_edge ], [ %dst, %if.end170.for.body175_crit_edge ]
  %first_rdesc.0571 = phi ptr [ %first_rdesc.2.ph, %for.inc229.for.body175_crit_edge ], [ null, %if.end170.for.body175_crit_edge ]
  %sub177 = add nsw i32 %271, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1578, i32 %sub177)
  %cmp178 = icmp eq i32 %i.1578, %sub177
  %dma_length181 = getelementptr inbounds %struct.scatterlist, ptr %sg.1573, i32 0, i32 4
  %272 = ptrtoint ptr %dma_length181 to i32
  call void @__asan_load4_noabort(i32 %272)
  %273 = load i32, ptr %dma_length181, align 4
  %274 = call i32 @llvm.umin.i32(i32 %273, i32 %totlen_dst.2576)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %274)
  %tobool186.not = icmp eq i32 %274, 0
  br i1 %tobool186.not, label %for.body175.for.end232_crit_edge, label %if.end196, !prof !178

for.body175.for.end232_crit_edge:                 ; preds = %for.body175
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end232

if.end196:                                        ; preds = %for.body175
  %sub197 = sub i32 %totlen_dst.2576, %274
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %assoclen.addr.0581)
  %tobool198.not = icmp eq i32 %assoclen.addr.0581, 0
  br i1 %tobool198.not, label %if.else211, label %if.then199

if.then199:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_cmp4(i32 %assoclen.addr.0581, i32 %274)
  %cmp200.not = icmp ult i32 %assoclen.addr.0581, %274
  br i1 %cmp200.not, label %if.end204, label %if.then202

if.then202:                                       ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #11
  %sub203 = sub i32 %assoclen.addr.0581, %274
  br label %for.inc229

if.end204:                                        ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #11
  %dma_address207 = getelementptr inbounds %struct.scatterlist, ptr %sg.1573, i32 0, i32 3
  %275 = ptrtoint ptr %dma_address207 to i32
  call void @__asan_load4_noabort(i32 %275)
  %276 = load i32, ptr %dma_address207, align 4
  %add208 = add i32 %276, %assoclen.addr.0581
  %sub209 = sub i32 %274, %assoclen.addr.0581
  %call210 = call ptr @safexcel_add_rdesc(ptr noundef %3, i32 noundef %ring, i1 noundef zeroext %first.0.off0579, i1 noundef zeroext %cmp178, i32 noundef %add208, i32 noundef %sub209) #9
  br label %if.end216

if.else211:                                       ; preds = %if.end196
  call void @__sanitizer_cov_trace_pc() #11
  %dma_address214 = getelementptr inbounds %struct.scatterlist, ptr %sg.1573, i32 0, i32 3
  %277 = ptrtoint ptr %dma_address214 to i32
  call void @__asan_load4_noabort(i32 %277)
  %278 = load i32, ptr %dma_address214, align 4
  %call215 = call ptr @safexcel_add_rdesc(ptr noundef %3, i32 noundef %ring, i1 noundef zeroext %first.0.off0579, i1 noundef zeroext %cmp178, i32 noundef %278, i32 noundef %274) #9
  br label %if.end216

if.end216:                                        ; preds = %if.else211, %if.end204
  %rdesc.0 = phi ptr [ %call210, %if.end204 ], [ %call215, %if.else211 ]
  %cmp.i516 = icmp ugt ptr %rdesc.0, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i516, label %if.end216.rdesc_rollback_crit_edge, label %if.end220

if.end216.rdesc_rollback_crit_edge:               ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  br label %rdesc_rollback

if.end220:                                        ; preds = %if.end216
  call void @__sanitizer_cov_trace_pc() #11
  %spec.select481 = select i1 %first.0.off0579, ptr %rdesc.0, ptr %first_rdesc.0571
  %inc224 = add i32 %n_rdesc.0577, 1
  br label %for.inc229

for.inc229:                                       ; preds = %if.end220, %if.then202
  %first_rdesc.2.ph = phi ptr [ %spec.select481, %if.end220 ], [ %first_rdesc.0571, %if.then202 ]
  %n_rdesc.1.ph = phi i32 [ %inc224, %if.end220 ], [ %n_rdesc.0577, %if.then202 ]
  %first.2.off0.ph = phi i1 [ false, %if.end220 ], [ %first.0.off0579, %if.then202 ]
  %assoclen.addr.2.ph = phi i32 [ 0, %if.end220 ], [ %sub203, %if.then202 ]
  %inc230 = add nuw nsw i32 %i.1578, 1
  %call231 = call ptr @sg_next(ptr noundef %sg.1573) #9
  %279 = ptrtoint ptr %nr_dst to i32
  call void @__asan_load4_noabort(i32 %279)
  %280 = load i32, ptr %nr_dst, align 4
  %cmp173 = icmp slt i32 %inc230, %280
  br i1 %cmp173, label %for.inc229.for.body175_crit_edge, label %for.inc229.for.end232_crit_edge

for.inc229.for.end232_crit_edge:                  ; preds = %for.inc229
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end232

for.inc229.for.body175_crit_edge:                 ; preds = %for.inc229
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body175

for.end232:                                       ; preds = %for.inc229.for.end232_crit_edge, %for.body175.for.end232_crit_edge
  %first_rdesc.0.lcssa = phi ptr [ %first_rdesc.2.ph, %for.inc229.for.end232_crit_edge ], [ %first_rdesc.0571, %for.body175.for.end232_crit_edge ]
  %n_rdesc.0.lcssa = phi i32 [ %n_rdesc.1.ph, %for.inc229.for.end232_crit_edge ], [ %n_rdesc.0577, %for.body175.for.end232_crit_edge ]
  %first.0.off0.lcssa = phi i1 [ %first.2.off0.ph, %for.inc229.for.end232_crit_edge ], [ %first.0.off0579, %for.body175.for.end232_crit_edge ]
  br i1 %first.0.off0.lcssa, label %for.end232.if.then240_crit_edge, label %for.end232.if.end246_crit_edge, !prof !178

for.end232.if.end246_crit_edge:                   ; preds = %for.end232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end246

for.end232.if.then240_crit_edge:                  ; preds = %for.end232
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then240

if.then240:                                       ; preds = %for.end232.if.then240_crit_edge, %if.end170.if.then240_crit_edge
  %n_rdesc.0.lcssa600 = phi i32 [ %n_rdesc.0.lcssa, %for.end232.if.then240_crit_edge ], [ 0, %if.end170.if.then240_crit_edge ]
  %call241 = call ptr @safexcel_add_rdesc(ptr noundef %3, i32 noundef %ring, i1 noundef zeroext true, i1 noundef zeroext true, i32 noundef 0, i32 noundef 0) #9
  %cmp.i517 = icmp ugt ptr %call241, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i517, label %if.then240.rdesc_rollback_crit_edge, label %if.then240.if.end246_crit_edge

if.then240.if.end246_crit_edge:                   ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end246

if.then240.rdesc_rollback_crit_edge:              ; preds = %if.then240
  call void @__sanitizer_cov_trace_pc() #11
  br label %rdesc_rollback

if.end246:                                        ; preds = %if.then240.if.end246_crit_edge, %for.end232.if.end246_crit_edge
  %first_rdesc.4 = phi ptr [ %first_rdesc.0.lcssa, %for.end232.if.end246_crit_edge ], [ %call241, %if.then240.if.end246_crit_edge ]
  %n_rdesc.3 = phi i32 [ %n_rdesc.0.lcssa, %for.end232.if.end246_crit_edge ], [ 1, %if.then240.if.end246_crit_edge ]
  call void @safexcel_rdr_req_set(ptr noundef %3, i32 noundef %ring, ptr noundef %first_rdesc.4, ptr noundef %base) #9
  %281 = ptrtoint ptr %commands to i32
  call void @__asan_store4_noabort(i32 %281)
  store i32 %n_cdesc.2, ptr %commands, align 4
  %282 = ptrtoint ptr %results to i32
  call void @__asan_store4_noabort(i32 %282)
  store i32 %n_rdesc.3, ptr %results, align 4
  br label %cleanup275

rdesc_rollback:                                   ; preds = %if.then240.rdesc_rollback_crit_edge, %if.end216.rdesc_rollback_crit_edge
  %n_rdesc.0558 = phi i32 [ %n_rdesc.0.lcssa600, %if.then240.rdesc_rollback_crit_edge ], [ %n_rdesc.0577, %if.end216.rdesc_rollback_crit_edge ]
  %ret.5.in = phi ptr [ %call241, %if.then240.rdesc_rollback_crit_edge ], [ %rdesc.0, %if.end216.rdesc_rollback_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_rdesc.0558)
  %cmp248588 = icmp sgt i32 %n_rdesc.0558, 0
  br i1 %cmp248588, label %for.body250.lr.ph, label %rdesc_rollback.cdesc_rollback_crit_edge

rdesc_rollback.cdesc_rollback_crit_edge:          ; preds = %rdesc_rollback
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdesc_rollback

for.body250.lr.ph:                                ; preds = %rdesc_rollback
  %ring251 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %3, i32 0, i32 11
  br label %for.body250

for.body250:                                      ; preds = %for.body250.for.body250_crit_edge, %for.body250.lr.ph
  %i.2589 = phi i32 [ 0, %for.body250.lr.ph ], [ %inc253, %for.body250.for.body250_crit_edge ]
  %283 = ptrtoint ptr %ring251 to i32
  call void @__asan_load4_noabort(i32 %283)
  %284 = load ptr, ptr %ring251, align 4
  %rdr = getelementptr %struct.safexcel_ring, ptr %284, i32 %ring, i32 4
  call void @safexcel_ring_rollback_wptr(ptr noundef %3, ptr noundef %rdr) #9
  %inc253 = add nuw nsw i32 %i.2589, 1
  %exitcond.not = icmp eq i32 %inc253, %n_rdesc.0558
  br i1 %exitcond.not, label %for.body250.cdesc_rollback_crit_edge, label %for.body250.for.body250_crit_edge

for.body250.for.body250_crit_edge:                ; preds = %for.body250
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body250

for.body250.cdesc_rollback_crit_edge:             ; preds = %for.body250
  call void @__sanitizer_cov_trace_pc() #11
  br label %cdesc_rollback

cdesc_rollback:                                   ; preds = %for.body250.cdesc_rollback_crit_edge, %rdesc_rollback.cdesc_rollback_crit_edge, %for.body.cdesc_rollback_crit_edge
  %n_cdesc.3 = phi i32 [ %n_cdesc.2, %rdesc_rollback.cdesc_rollback_crit_edge ], [ %n_cdesc.2, %for.body250.cdesc_rollback_crit_edge ], [ %i.0566, %for.body.cdesc_rollback_crit_edge ]
  %ret.6.in = phi ptr [ %ret.5.in, %rdesc_rollback.cdesc_rollback_crit_edge ], [ %ret.5.in, %for.body250.cdesc_rollback_crit_edge ], [ %call150, %for.body.cdesc_rollback_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %n_cdesc.3)
  %cmp256590 = icmp sgt i32 %n_cdesc.3, 0
  br i1 %cmp256590, label %for.body258.lr.ph, label %cdesc_rollback.for.end263_crit_edge

cdesc_rollback.for.end263_crit_edge:              ; preds = %cdesc_rollback
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end263

for.body258.lr.ph:                                ; preds = %cdesc_rollback
  %ring259 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %3, i32 0, i32 11
  br label %for.body258

for.body258:                                      ; preds = %for.body258.for.body258_crit_edge, %for.body258.lr.ph
  %i.3591 = phi i32 [ 0, %for.body258.lr.ph ], [ %inc262, %for.body258.for.body258_crit_edge ]
  %285 = ptrtoint ptr %ring259 to i32
  call void @__asan_load4_noabort(i32 %285)
  %286 = load ptr, ptr %ring259, align 4
  %cdr = getelementptr %struct.safexcel_ring, ptr %286, i32 %ring, i32 3
  call void @safexcel_ring_rollback_wptr(ptr noundef %3, ptr noundef %cdr) #9
  %inc262 = add nuw nsw i32 %i.3591, 1
  %exitcond596.not = icmp eq i32 %inc262, %n_cdesc.3
  br i1 %exitcond596.not, label %for.body258.for.end263_crit_edge, label %for.body258.for.body258_crit_edge

for.body258.for.body258_crit_edge:                ; preds = %for.body258
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body258

for.body258.for.end263_crit_edge:                 ; preds = %for.body258
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end263

for.end263:                                       ; preds = %for.body258.for.end263_crit_edge, %cdesc_rollback.for.end263_crit_edge, %if.then124.for.end263_crit_edge
  %ret.6605.in = phi ptr [ %ret.6.in, %cdesc_rollback.for.end263_crit_edge ], [ %call128, %if.then124.for.end263_crit_edge ], [ %ret.6.in, %for.body258.for.end263_crit_edge ]
  %ret.6605 = ptrtoint ptr %ret.6605.in to i32
  %dev267 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %3, i32 0, i32 1
  %287 = ptrtoint ptr %dev267 to i32
  call void @__asan_load4_noabort(i32 %287)
  %288 = load ptr, ptr %dev267, align 4
  %289 = ptrtoint ptr %nr_src to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %nr_src, align 4
  br i1 %cmp42, label %if.then266, label %if.else269

if.then266:                                       ; preds = %for.end263
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_unmap_sg_attrs(ptr noundef %288, ptr noundef %src, i32 noundef %290, i32 noundef 0, i32 noundef 0) #9
  br label %cleanup275

if.else269:                                       ; preds = %for.end263
  call void @__sanitizer_cov_trace_pc() #11
  call void @dma_unmap_sg_attrs(ptr noundef %288, ptr noundef %src, i32 noundef %290, i32 noundef 1, i32 noundef 0) #9
  %291 = ptrtoint ptr %dev267 to i32
  call void @__asan_load4_noabort(i32 %291)
  %292 = load ptr, ptr %dev267, align 4
  %293 = ptrtoint ptr %nr_dst to i32
  call void @__asan_load4_noabort(i32 %293)
  %294 = load i32, ptr %nr_dst, align 4
  call void @dma_unmap_sg_attrs(ptr noundef %292, ptr noundef %dst, i32 noundef %294, i32 noundef 2, i32 noundef 0) #9
  br label %cleanup275

cleanup275:                                       ; preds = %if.else269, %if.then266, %if.end246, %do.end108, %do.end87, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end246 ], [ -22, %do.end87 ], [ -22, %do.end108 ], [ %ret.6605, %if.else269 ], [ %ret.6605, %if.then266 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %atoken) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @safexcel_invalidate_cache(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @safexcel_add_cdesc(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @safexcel_add_rdesc(ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @safexcel_rdr_req_set(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @safexcel_ring_rollback_wptr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safexcel_handle_inv_result(ptr noundef %priv, i32 noundef %ring, ptr noundef %base, ptr nocapture noundef %sreq, ptr nocapture noundef writeonly %should_complete, ptr nocapture noundef %ret) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 3
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm, align 4
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ret, align 4
  %rdescs = getelementptr inbounds %struct.safexcel_cipher_req, ptr %sreq, i32 0, i32 1
  %3 = ptrtoint ptr %rdescs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rdescs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader, !prof !178

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %ring6 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %dec86 = add i32 %4, -1
  %5 = ptrtoint ptr %rdescs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec86, ptr %rdescs, align 4
  br label %while.body

while.body:                                       ; preds = %if.end23.while.body_crit_edge, %while.cond.preheader
  %ndesc.088 = phi i32 [ 0, %while.cond.preheader ], [ %inc, %if.end23.while.body_crit_edge ]
  %6 = ptrtoint ptr %ring6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring6, align 4
  %rdr = getelementptr %struct.safexcel_ring, ptr %7, i32 %ring, i32 4
  %call7 = tail call ptr @safexcel_ring_next_rptr(ptr noundef %priv, ptr noundef %rdr) #9
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.13) #12
  %10 = ptrtoint ptr %call7 to i32
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ret, align 4
  br label %while.end

if.end11:                                         ; preds = %while.body
  %12 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool12.not = icmp eq i32 %13, 0
  br i1 %tobool12.not, label %if.then21, label %if.end11.if.end23_crit_edge, !prof !177

if.end11.if.end23_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then21:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  %call22 = tail call i32 @safexcel_rdesc_check_errors(ptr noundef %priv, ptr noundef %call7) #9
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call22, ptr %ret, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.then21, %if.end11.if.end23_crit_edge
  %inc = add i32 %ndesc.088, 1
  %15 = ptrtoint ptr %rdescs to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %rdescs, align 4
  %dec = add i32 %.pr, -1
  store i32 %dec, ptr %rdescs, align 4
  %tobool5.not = icmp eq i32 %.pr, 0
  br i1 %tobool5.not, label %if.end23.while.end_crit_edge, label %if.end23.while.body_crit_edge

if.end23.while.body_crit_edge:                    ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end23.while.end_crit_edge:                     ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end23.while.end_crit_edge, %do.end
  %ndesc.085 = phi i32 [ %ndesc.088, %do.end ], [ %inc, %if.end23.while.end_crit_edge ]
  tail call void @safexcel_complete(ptr noundef %priv, i32 noundef %ring) #9
  %exit_inv = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 25
  %16 = ptrtoint ptr %exit_inv to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %exit_inv, align 1, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool25.not = icmp eq i8 %17, 0
  br i1 %tobool25.not, label %if.end29, label %if.then26

if.then26:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %context_pool = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 9
  %18 = ptrtoint ptr %context_pool to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %context_pool, align 4
  %ctxr = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 2
  %20 = ptrtoint ptr %ctxr to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ctxr, align 4
  %ctxr_dma = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4
  %22 = ptrtoint ptr %ctxr_dma to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ctxr_dma, align 4
  tail call void @dma_pool_free(ptr noundef %19, ptr noundef %21, i32 noundef %23) #9
  br label %cleanup.sink.split

if.end29:                                         ; preds = %while.end
  %call30 = tail call i32 @safexcel_select_ring(ptr noundef %priv) #9
  %ring32 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 20
  %24 = ptrtoint ptr %ring32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %call30, ptr %ring32, align 4
  %25 = ptrtoint ptr %ring6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ring6, align 4
  %queue_lock = getelementptr %struct.safexcel_ring, ptr %26, i32 %call30, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %queue_lock) #9
  %27 = ptrtoint ptr %ring6 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ring6, align 4
  %queue = getelementptr %struct.safexcel_ring, ptr %28, i32 %call30, i32 6
  %call37 = tail call i32 @crypto_enqueue_request(ptr noundef %queue, ptr noundef %base) #9
  %29 = ptrtoint ptr %ring6 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ring6, align 4
  %queue_lock40 = getelementptr %struct.safexcel_ring, ptr %30, i32 %call30, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call37)
  %cmp.not = icmp eq i32 %call37, -115
  br i1 %cmp.not, label %if.end29.if.end42_crit_edge, label %if.then41

if.end29.if.end42_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end42

if.then41:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %31 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %call37, ptr %ret, align 4
  br label %if.end42

if.end42:                                         ; preds = %if.then41, %if.end29.if.end42_crit_edge
  %32 = ptrtoint ptr %ring6 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ring6, align 4
  %workqueue = getelementptr %struct.safexcel_ring, ptr %33, i32 %call30, i32 1
  %34 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %workqueue, align 4
  %work_data = getelementptr %struct.safexcel_ring, ptr %33, i32 %call30, i32 2
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %35, ptr noundef %work_data) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end42, %if.then26
  %.sink = phi i8 [ 0, %if.end42 ], [ 1, %if.then26 ]
  %36 = ptrtoint ptr %should_complete to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 %.sink, ptr %should_complete, align 1
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ndesc.085, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safexcel_handle_req_result(ptr noundef %priv, i32 noundef %ring, ptr nocapture noundef readonly %async, ptr noundef %src, ptr noundef %dst, i32 noundef %cryptlen, ptr nocapture noundef %sreq, ptr nocapture noundef writeonly %should_complete, ptr nocapture noundef %ret) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr i8, ptr %async, i32 16
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %2 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %ret, align 4
  %rdescs = getelementptr inbounds %struct.safexcel_cipher_req, ptr %sreq, i32 0, i32 1
  %3 = ptrtoint ptr %rdescs to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %rdescs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %while.cond.preheader, !prof !178

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

while.cond.preheader:                             ; preds = %entry
  %ring8 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 11
  %dec78 = add i32 %4, -1
  %5 = ptrtoint ptr %rdescs to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dec78, ptr %rdescs, align 4
  br label %while.body

while.body:                                       ; preds = %if.end25.while.body_crit_edge, %while.cond.preheader
  %ndesc.080 = phi i32 [ 0, %while.cond.preheader ], [ %inc, %if.end25.while.body_crit_edge ]
  %6 = ptrtoint ptr %ring8 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ring8, align 4
  %rdr = getelementptr %struct.safexcel_ring, ptr %7, i32 %ring, i32 4
  %call9 = tail call ptr @safexcel_ring_next_rptr(ptr noundef %priv, ptr noundef %rdr) #9
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end13

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.15) #12
  %10 = ptrtoint ptr %call9 to i32
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %ret, align 4
  br label %while.end

if.end13:                                         ; preds = %while.body
  %12 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool14.not = icmp eq i32 %13, 0
  br i1 %tobool14.not, label %if.then23, label %if.end13.if.end25_crit_edge, !prof !177

if.end13.if.end25_crit_edge:                      ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then23:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %call24 = tail call i32 @safexcel_rdesc_check_errors(ptr noundef %priv, ptr noundef %call9) #9
  %14 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %call24, ptr %ret, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then23, %if.end13.if.end25_crit_edge
  %inc = add i32 %ndesc.080, 1
  %15 = ptrtoint ptr %rdescs to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr = load i32, ptr %rdescs, align 4
  %dec = add i32 %.pr, -1
  store i32 %dec, ptr %rdescs, align 4
  %tobool7.not = icmp eq i32 %.pr, 0
  br i1 %tobool7.not, label %if.end25.while.end_crit_edge, label %if.end25.while.body_crit_edge

if.end25.while.body_crit_edge:                    ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

if.end25.while.end_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %if.end25.while.end_crit_edge, %do.end
  %ndesc.077 = phi i32 [ %ndesc.080, %do.end ], [ %inc, %if.end25.while.end_crit_edge ]
  tail call void @safexcel_complete(ptr noundef %priv, i32 noundef %ring) #9
  %cmp = icmp eq ptr %src, %dst
  %dev27 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %priv, i32 0, i32 1
  %16 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev27, align 4
  %nr_src = getelementptr inbounds %struct.safexcel_cipher_req, ptr %sreq, i32 0, i32 3
  %18 = ptrtoint ptr %nr_src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %nr_src, align 4
  br i1 %cmp, label %if.then26, label %if.else

if.then26:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_unmap_sg_attrs(ptr noundef %17, ptr noundef %src, i32 noundef %19, i32 noundef 0, i32 noundef 0) #9
  br label %if.end31

if.else:                                          ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @dma_unmap_sg_attrs(ptr noundef %17, ptr noundef %src, i32 noundef %19, i32 noundef 1, i32 noundef 0) #9
  %20 = ptrtoint ptr %dev27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev27, align 4
  %nr_dst = getelementptr inbounds %struct.safexcel_cipher_req, ptr %sreq, i32 0, i32 4
  %22 = ptrtoint ptr %nr_dst to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nr_dst, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %21, ptr noundef %dst, i32 noundef %23, i32 noundef 2, i32 noundef 0) #9
  br label %if.end31

if.end31:                                         ; preds = %if.else, %if.then26
  %aead = getelementptr i8, ptr %1, i32 312
  %24 = ptrtoint ptr %aead to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %aead, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool32.not = icmp eq i8 %25, 0
  br i1 %tobool32.not, label %land.lhs.true, label %if.end31.if.end41_crit_edge

if.end31.if.end41_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end31
  %mode = getelementptr i8, ptr %1, i32 304
  %26 = ptrtoint ptr %mode to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp33 = icmp eq i32 %27, 1
  br i1 %cmp33, label %land.lhs.true34, label %land.lhs.true.if.end41_crit_edge

land.lhs.true.if.end41_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true34:                                  ; preds = %land.lhs.true
  %28 = ptrtoint ptr %sreq to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sreq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp35 = icmp eq i32 %29, 0
  br i1 %cmp35, label %if.then36, label %land.lhs.true34.if.end41_crit_edge

land.lhs.true34.if.end41_crit_edge:               ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

if.then36:                                        ; preds = %land.lhs.true34
  call void @__sanitizer_cov_trace_pc() #11
  %nr_dst37 = getelementptr inbounds %struct.safexcel_cipher_req, ptr %sreq, i32 0, i32 4
  %30 = ptrtoint ptr %nr_dst37 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nr_dst37, align 4
  %iv = getelementptr i8, ptr %async, i32 -12
  %32 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iv, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %34 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %35, i32 -100
  %36 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %ivsize.i, align 4
  %sub = sub i32 %cryptlen, %37
  %call40 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %dst, i32 noundef %31, ptr noundef %33, i32 noundef %37, i32 noundef %sub) #9
  br label %if.end41

if.end41:                                         ; preds = %if.then36, %land.lhs.true34.if.end41_crit_edge, %land.lhs.true.if.end41_crit_edge, %if.end31.if.end41_crit_edge
  %38 = ptrtoint ptr %should_complete to i32
  call void @__asan_store1_noabort(i32 %38)
  store i8 1, ptr %should_complete, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ndesc.077, %if.end41 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @safexcel_ring_next_rptr(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @safexcel_rdesc_check_errors(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @safexcel_complete(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @safexcel_inv_complete(ptr noundef, i32 noundef) #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safexcel_cipher_exit_inv(ptr nocapture noundef readonly %tfm, ptr noundef %base, ptr nocapture noundef writeonly %sreq, ptr noundef %result) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %priv2 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %0 = ptrtoint ptr %priv2 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %priv2, align 4
  %ring4 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 2, i32 4, i32 20
  %2 = ptrtoint ptr %ring4 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ring4, align 4
  %4 = ptrtoint ptr %result to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %result, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %result, i32 0, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @init_completion.__key) #9
  %tfm5 = getelementptr inbounds %struct.crypto_async_request, ptr %base, i32 0, i32 3
  %5 = ptrtoint ptr %tfm5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tfm5, align 4
  %exit_inv = getelementptr inbounds %struct.crypto_tfm, ptr %6, i32 2, i32 4, i32 25
  %7 = ptrtoint ptr %exit_inv to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 1, ptr %exit_inv, align 1
  %needs_inv = getelementptr inbounds %struct.safexcel_cipher_req, ptr %sreq, i32 0, i32 2
  %8 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %needs_inv, align 4
  %ring8 = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 11
  %9 = ptrtoint ptr %ring8 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %ring8, align 4
  %queue_lock = getelementptr %struct.safexcel_ring, ptr %10, i32 %3, i32 7
  tail call void @_raw_spin_lock_bh(ptr noundef %queue_lock) #9
  %11 = ptrtoint ptr %ring8 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %ring8, align 4
  %queue = getelementptr %struct.safexcel_ring, ptr %12, i32 %3, i32 6
  %call11 = tail call i32 @crypto_enqueue_request(ptr noundef %queue, ptr noundef %base) #9
  %13 = ptrtoint ptr %ring8 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ring8, align 4
  %queue_lock14 = getelementptr %struct.safexcel_ring, ptr %14, i32 %3, i32 7
  tail call void @_raw_spin_unlock_bh(ptr noundef %queue_lock14) #9
  %15 = ptrtoint ptr %ring8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ring8, align 4
  %workqueue = getelementptr %struct.safexcel_ring, ptr %16, i32 %3, i32 1
  %17 = ptrtoint ptr %workqueue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %workqueue, align 4
  %work_data = getelementptr %struct.safexcel_ring, ptr %16, i32 %3, i32 2
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %18, ptr noundef %work_data) #9
  tail call void @wait_for_completion(ptr noundef %result) #9
  %error = getelementptr inbounds %struct.safexcel_inv_result, ptr %result, i32 0, i32 1
  %19 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %error, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %tobool.not = icmp eq i32 %20, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %dev = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %22, ptr noundef nonnull @.str.20, i32 noundef %20) #12
  %23 = ptrtoint ptr %error to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %error, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %24, %do.end ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_authenc_extractkeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @safexcel_hmac_setkey(ptr noundef, ptr noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_send(ptr noundef %async, i32 noundef %ring, ptr nocapture noundef writeonly %commands, ptr nocapture noundef %results) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %async, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %1, i32 -128
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %async, i32 0, i32 7
  %priv6 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 3
  %2 = ptrtoint ptr %priv6 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv6, align 4
  %flags = getelementptr inbounds %struct.safexcel_crypto_priv, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags, align 4
  %and = and i32 %5, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.rhs, label %entry.do.end15_crit_edge

entry.do.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

land.rhs:                                         ; preds = %entry
  %needs_inv = getelementptr inbounds %struct.aead_request, ptr %async, i32 1, i32 0, i32 1
  %6 = ptrtoint ptr %needs_inv to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %needs_inv, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not = icmp eq i8 %7, 0
  br i1 %tobool7.not, label %land.rhs.do.end15_crit_edge, label %do.body10, !prof !177

land.rhs.do.end15_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end15

do.body10:                                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/crypto/inside-secure/safexcel_cipher.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 1061, 0\0A.popsection", ""() #9, !srcloc !184
  unreachable

do.end15:                                         ; preds = %land.rhs.do.end15_crit_edge, %entry.do.end15_crit_edge
  %needs_inv16 = getelementptr inbounds %struct.aead_request, ptr %async, i32 1, i32 0, i32 1
  %8 = ptrtoint ptr %needs_inv16 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %needs_inv16, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool17.not = icmp eq i8 %9, 0
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %do.end15
  %10 = ptrtoint ptr %priv6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv6, align 4
  %ctxr_dma.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4
  %12 = ptrtoint ptr %ctxr_dma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ctxr_dma.i, align 4
  %call4.i = tail call i32 @safexcel_invalidate_cache(ptr noundef %async, ptr noundef %11, i32 noundef %13, i32 noundef %ring) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4.i)
  %tobool.not.i = icmp eq i32 %call4.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.then18.if.end22_crit_edge, !prof !177

if.then18.if.end22_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end22

if.end.i:                                         ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %commands to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %commands, align 4
  %15 = ptrtoint ptr %results to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 1, ptr %results, align 4
  br label %if.end22

if.else:                                          ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  %src = getelementptr inbounds %struct.aead_request, ptr %async, i32 0, i32 4
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %async, i32 0, i32 5
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %async, i32 0, i32 2
  %20 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cryptlen, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %async, i32 0, i32 1
  %22 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %assoclen, align 8
  %24 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %add.ptr.i.i, align 128
  %iv = getelementptr inbounds %struct.aead_request, ptr %async, i32 0, i32 3
  %26 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iv, align 32
  %call21 = tail call fastcc i32 @safexcel_send_req(ptr noundef %async, i32 noundef %ring, ptr noundef %__ctx.i, ptr noundef %17, ptr noundef %19, i32 noundef %21, i32 noundef %23, i32 noundef %25, ptr noundef %27, ptr noundef %commands, ptr noundef %results)
  br label %if.end22

if.end22:                                         ; preds = %if.else, %if.end.i, %if.then18.if.end22_crit_edge
  %ret.0 = phi i32 [ %call21, %if.else ], [ %call4.i, %if.then18.if.end22_crit_edge ], [ 0, %if.end.i ]
  %28 = ptrtoint ptr %results to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %results, align 4
  %rdescs = getelementptr inbounds %struct.aead_request, ptr %async, i32 1, i32 0, i32 0, i32 1
  %30 = ptrtoint ptr %rdescs to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %rdescs, align 4
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @safexcel_aead_handle_result(ptr noundef %priv, i32 noundef %ring, ptr noundef %async, ptr nocapture noundef writeonly %should_complete, ptr nocapture noundef %ret) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %async, i32 0, i32 7
  %needs_inv = getelementptr inbounds %struct.aead_request, ptr %async, i32 1, i32 0, i32 1
  %0 = ptrtoint ptr %needs_inv to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %needs_inv, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %needs_inv to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %needs_inv, align 4
  %call4 = tail call fastcc i32 @safexcel_handle_inv_result(ptr noundef %priv, i32 noundef %ring, ptr noundef %async, ptr noundef %__ctx.i, ptr noundef %should_complete, ptr noundef %ret)
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %async, i32 0, i32 3
  %3 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.i, align 16
  %add.ptr.i.i = getelementptr i8, ptr %4, i32 -128
  %src = getelementptr inbounds %struct.aead_request, ptr %async, i32 0, i32 4
  %5 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %async, i32 0, i32 5
  %7 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dst, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %async, i32 0, i32 2
  %9 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cryptlen, align 4
  %11 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %add.ptr.i.i, align 128
  %add = add i32 %12, %10
  %call6 = tail call fastcc i32 @safexcel_handle_req_result(ptr noundef %priv, i32 noundef %ring, ptr noundef %async, ptr noundef %6, ptr noundef %8, i32 noundef %add, ptr noundef %__ctx.i, ptr noundef %should_complete, ptr noundef %ret)
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call4, %if.then ], [ %call6, %if.else ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_cipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_cipher_encrypt_one(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_base(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @safexcel_aead_chachapoly_crypt(ptr noundef %req, i32 noundef %dir) unnamed_addr #0 align 64 {
entry:
  %key = alloca [9 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  call void @llvm.lifetime.start.p0(i64 36, ptr nonnull %key) #9
  %2 = getelementptr inbounds i8, ptr %key, i32 32
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %2, align 4, !annotation !182
  %aead5 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 40
  %4 = ptrtoint ptr %aead5 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %aead5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %5)
  %cmp.not = icmp eq i8 %5, 2
  br i1 %cmp.not, label %lor.lhs.false, label %entry.land.rhs_crit_edge

entry.land.rhs_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

lor.lhs.false:                                    ; preds = %entry
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %6 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %assoclen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp7 = icmp ugt i32 %7, 7
  br i1 %cmp7, label %lor.lhs.false.land.rhs_crit_edge, label %lor.lhs.false.if.end_crit_edge, !prof !177

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

lor.lhs.false.land.rhs_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

land.rhs:                                         ; preds = %lor.lhs.false.land.rhs_crit_edge, %entry.land.rhs_crit_edge
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cryptlen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %9)
  %cmp9 = icmp ugt i32 %9, 16
  br i1 %cmp9, label %if.then, label %land.rhs.if.end_crit_edge, !prof !177

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  %call12 = tail call fastcc i32 @safexcel_queue_req(ptr noundef %req, ptr noundef %__ctx.i, i32 noundef %dir)
  br label %cleanup

if.end:                                           ; preds = %land.rhs.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  %key13 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 52
  %10 = call ptr @memcpy(ptr %key, ptr %key13, i32 32)
  %11 = ptrtoint ptr %aead5 to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %aead5, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %12)
  %cmp17 = icmp eq i8 %12, 2
  br i1 %cmp17, label %if.then19, label %if.end.if.end25_crit_edge

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end25

if.then19:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %nonce = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 1
  %13 = ptrtoint ptr %nonce to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %nonce, align 4
  %arrayidx = getelementptr inbounds [9 x i32], ptr %key, i32 0, i32 8
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then19, %if.end.if.end25_crit_edge
  %.sink80 = phi i32 [ 36, %if.then19 ], [ 32, %if.end.if.end25_crit_edge ]
  %fback22 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 4, i32 12
  %16 = ptrtoint ptr %fback22 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %fback22, align 4
  %call24 = call i32 @crypto_aead_setkey(ptr noundef %17, ptr noundef nonnull %key, i32 noundef %.sink80) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool26.not = icmp eq i32 %call24, 0
  br i1 %tobool26.not, label %if.end30, label %if.then27

if.then27:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %1, align 128
  %and.i.i = and i32 %19, -1048321
  store i32 %and.i.i, ptr %1, align 128
  %fback28 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 4, i32 12
  %20 = ptrtoint ptr %fback28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %fback28, align 4
  %base.i.i77 = getelementptr inbounds %struct.crypto_aead, ptr %21, i32 0, i32 3
  %22 = ptrtoint ptr %base.i.i77 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %base.i.i77, align 128
  %and = and i32 %23, 1048320
  %or.i.i = or i32 %and, %and.i.i
  store i32 %or.i.i, ptr %1, align 128
  br label %cleanup

if.end30:                                         ; preds = %if.end25
  %fback31 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 3, i32 4, i32 12
  %24 = ptrtoint ptr %fback31 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fback31, align 4
  %base.i.i79 = getelementptr inbounds %struct.crypto_aead, ptr %25, i32 0, i32 3
  %tfm1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 3
  %26 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %base.i.i79, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %27 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 1
  %29 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 2
  %31 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 2
  %34 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %32, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 0, i32 4
  %35 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %28, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %36 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %38 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dst, align 8
  %cryptlen35 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %40 = ptrtoint ptr %cryptlen35 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cryptlen35, align 4
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %42 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iv, align 32
  %src1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 4
  %44 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %37, ptr %src1.i, align 4
  %dst2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 5
  %45 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %39, ptr %dst2.i, align 8
  %cryptlen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 2
  %46 = ptrtoint ptr %cryptlen3.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %41, ptr %cryptlen3.i, align 4
  %iv4.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 3
  %47 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %43, ptr %iv4.i, align 32
  %assoclen36 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %48 = ptrtoint ptr %assoclen36 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %assoclen36, align 8
  %assoclen1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 1, i32 1
  %50 = ptrtoint ptr %assoclen1.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %assoclen1.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp37 = icmp eq i32 %dir, 0
  br i1 %cmp37, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %call39 = call i32 @crypto_aead_encrypt(ptr noundef %__ctx.i) #9
  br label %cleanup

cond.false:                                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  %call40 = call i32 @crypto_aead_decrypt(ptr noundef %__ctx.i) #9
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %cond.true, %if.then27, %if.then
  %retval.0 = phi i32 [ %call12, %if.then ], [ %call24, %if.then27 ], [ %call39, %cond.true ], [ %call40, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 36, ptr nonnull %key) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_encrypt(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_decrypt(ptr noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_aead(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_aead_setauthsize(ptr noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 46)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { mustprogress nofree nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly nofree nounwind readonly willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nobuiltin }
attributes #14 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !14, !16, !18, !20, !22, !24, !26, !28, !30, !32, !34, !36, !38, !40, !42, !44, !46, !48, !50, !52, !54, !56, !58, !60, !62, !64, !66, !68, !70, !72, !74, !76, !78, !80, !82, !84, !86, !88, !90, !92, !94, !96, !97, !98, !99, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !125, !127, !128, !129, !130, !131, !133, !134, !135, !136, !138, !139, !141, !142, !143, !144, !146, !148, !150, !152, !154, !156, !158, !159, !160, !162, !163, !164, !165}
!llvm.module.flags = !{!167, !168, !169, !170, !171, !172, !173, !174}
!llvm.ident = !{!175}

!0 = !{ptr @safexcel_alg_ecb_aes, !1, !"safexcel_alg_ecb_aes", i1 false, i1 false}
!1 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1272, i32 30}
!2 = !{ptr @safexcel_alg_cbc_aes, !3, !"safexcel_alg_cbc_aes", i1 false, i1 false}
!3 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1309, i32 30}
!4 = !{ptr @safexcel_alg_cfb_aes, !5, !"safexcel_alg_cfb_aes", i1 false, i1 false}
!5 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1347, i32 30}
!6 = !{ptr @safexcel_alg_ofb_aes, !7, !"safexcel_alg_ofb_aes", i1 false, i1 false}
!7 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1385, i32 30}
!8 = !{ptr @safexcel_alg_ctr_aes, !9, !"safexcel_alg_ctr_aes", i1 false, i1 false}
!9 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1459, i32 30}
!10 = !{ptr @safexcel_alg_cbc_des, !11, !"safexcel_alg_cbc_des", i1 false, i1 false}
!11 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1521, i32 30}
!12 = !{ptr @safexcel_alg_ecb_des, !13, !"safexcel_alg_ecb_des", i1 false, i1 false}
!13 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1560, i32 30}
!14 = !{ptr @safexcel_alg_cbc_des3_ede, !15, !"safexcel_alg_cbc_des3_ede", i1 false, i1 false}
!15 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1620, i32 30}
!16 = !{ptr @safexcel_alg_ecb_des3_ede, !17, !"safexcel_alg_ecb_des3_ede", i1 false, i1 false}
!17 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1659, i32 30}
!18 = !{ptr @safexcel_alg_authenc_hmac_sha1_cbc_aes, !19, !"safexcel_alg_authenc_hmac_sha1_cbc_aes", i1 false, i1 false}
!19 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1732, i32 30}
!20 = !{ptr @safexcel_alg_authenc_hmac_sha256_cbc_aes, !21, !"safexcel_alg_authenc_hmac_sha256_cbc_aes", i1 false, i1 false}
!21 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1768, i32 30}
!22 = !{ptr @safexcel_alg_authenc_hmac_sha224_cbc_aes, !23, !"safexcel_alg_authenc_hmac_sha224_cbc_aes", i1 false, i1 false}
!23 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1804, i32 30}
!24 = !{ptr @safexcel_alg_authenc_hmac_sha512_cbc_aes, !25, !"safexcel_alg_authenc_hmac_sha512_cbc_aes", i1 false, i1 false}
!25 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1840, i32 30}
!26 = !{ptr @safexcel_alg_authenc_hmac_sha384_cbc_aes, !27, !"safexcel_alg_authenc_hmac_sha384_cbc_aes", i1 false, i1 false}
!27 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1876, i32 30}
!28 = !{ptr @safexcel_alg_authenc_hmac_sha1_cbc_des3_ede, !29, !"safexcel_alg_authenc_hmac_sha1_cbc_des3_ede", i1 false, i1 false}
!29 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1913, i32 30}
!30 = !{ptr @safexcel_alg_authenc_hmac_sha256_cbc_des3_ede, !31, !"safexcel_alg_authenc_hmac_sha256_cbc_des3_ede", i1 false, i1 false}
!31 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1950, i32 30}
!32 = !{ptr @safexcel_alg_authenc_hmac_sha224_cbc_des3_ede, !33, !"safexcel_alg_authenc_hmac_sha224_cbc_des3_ede", i1 false, i1 false}
!33 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1987, i32 30}
!34 = !{ptr @safexcel_alg_authenc_hmac_sha512_cbc_des3_ede, !35, !"safexcel_alg_authenc_hmac_sha512_cbc_des3_ede", i1 false, i1 false}
!35 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2024, i32 30}
!36 = !{ptr @safexcel_alg_authenc_hmac_sha384_cbc_des3_ede, !37, !"safexcel_alg_authenc_hmac_sha384_cbc_des3_ede", i1 false, i1 false}
!37 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2061, i32 30}
!38 = !{ptr @safexcel_alg_authenc_hmac_sha1_cbc_des, !39, !"safexcel_alg_authenc_hmac_sha1_cbc_des", i1 false, i1 false}
!39 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2098, i32 30}
!40 = !{ptr @safexcel_alg_authenc_hmac_sha256_cbc_des, !41, !"safexcel_alg_authenc_hmac_sha256_cbc_des", i1 false, i1 false}
!41 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2135, i32 30}
!42 = !{ptr @safexcel_alg_authenc_hmac_sha224_cbc_des, !43, !"safexcel_alg_authenc_hmac_sha224_cbc_des", i1 false, i1 false}
!43 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2172, i32 30}
!44 = !{ptr @safexcel_alg_authenc_hmac_sha512_cbc_des, !45, !"safexcel_alg_authenc_hmac_sha512_cbc_des", i1 false, i1 false}
!45 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2209, i32 30}
!46 = !{ptr @safexcel_alg_authenc_hmac_sha384_cbc_des, !47, !"safexcel_alg_authenc_hmac_sha384_cbc_des", i1 false, i1 false}
!47 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2246, i32 30}
!48 = !{ptr @safexcel_alg_authenc_hmac_sha1_ctr_aes, !49, !"safexcel_alg_authenc_hmac_sha1_ctr_aes", i1 false, i1 false}
!49 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2281, i32 30}
!50 = !{ptr @safexcel_alg_authenc_hmac_sha256_ctr_aes, !51, !"safexcel_alg_authenc_hmac_sha256_ctr_aes", i1 false, i1 false}
!51 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2316, i32 30}
!52 = !{ptr @safexcel_alg_authenc_hmac_sha224_ctr_aes, !53, !"safexcel_alg_authenc_hmac_sha224_ctr_aes", i1 false, i1 false}
!53 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2351, i32 30}
!54 = !{ptr @safexcel_alg_authenc_hmac_sha512_ctr_aes, !55, !"safexcel_alg_authenc_hmac_sha512_ctr_aes", i1 false, i1 false}
!55 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2386, i32 30}
!56 = !{ptr @safexcel_alg_authenc_hmac_sha384_ctr_aes, !57, !"safexcel_alg_authenc_hmac_sha384_ctr_aes", i1 false, i1 false}
!57 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2421, i32 30}
!58 = !{ptr @safexcel_alg_xts_aes, !59, !"safexcel_alg_xts_aes", i1 false, i1 false}
!59 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2533, i32 30}
!60 = !{ptr @safexcel_alg_gcm, !61, !"safexcel_alg_gcm", i1 false, i1 false}
!61 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2647, i32 30}
!62 = !{ptr @safexcel_alg_ccm, !63, !"safexcel_alg_ccm", i1 false, i1 false}
!63 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2771, i32 30}
!64 = !{ptr @safexcel_alg_chacha20, !65, !"safexcel_alg_chacha20", i1 false, i1 false}
!65 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2835, i32 30}
!66 = !{ptr @safexcel_alg_chachapoly, !67, !"safexcel_alg_chachapoly", i1 false, i1 false}
!67 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2996, i32 30}
!68 = !{ptr @safexcel_alg_chachapoly_esp, !69, !"safexcel_alg_chachapoly_esp", i1 false, i1 false}
!69 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 3036, i32 30}
!70 = !{ptr @safexcel_alg_ecb_sm4, !71, !"safexcel_alg_ecb_sm4", i1 false, i1 false}
!71 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 3117, i32 30}
!72 = !{ptr @safexcel_alg_cbc_sm4, !73, !"safexcel_alg_cbc_sm4", i1 false, i1 false}
!73 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 3154, i32 30}
!74 = !{ptr @safexcel_alg_ofb_sm4, !75, !"safexcel_alg_ofb_sm4", i1 false, i1 false}
!75 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 3192, i32 30}
!76 = !{ptr @safexcel_alg_cfb_sm4, !77, !"safexcel_alg_cfb_sm4", i1 false, i1 false}
!77 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 3230, i32 30}
!78 = !{ptr @safexcel_alg_ctr_sm4, !79, !"safexcel_alg_ctr_sm4", i1 false, i1 false}
!79 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 3282, i32 30}
!80 = !{ptr @safexcel_alg_authenc_hmac_sha1_cbc_sm4, !81, !"safexcel_alg_authenc_hmac_sha1_cbc_sm4", i1 false, i1 false}
!81 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 3344, i32 30}
!82 = !{ptr @safexcel_alg_authenc_hmac_sm3_cbc_sm4, !83, !"safexcel_alg_authenc_hmac_sm3_cbc_sm4", i1 false, i1 false}
!83 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 3453, i32 30}
!84 = !{ptr @safexcel_alg_authenc_hmac_sha1_ctr_sm4, !85, !"safexcel_alg_authenc_hmac_sha1_ctr_sm4", i1 false, i1 false}
!85 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 3490, i32 30}
!86 = !{ptr @safexcel_alg_authenc_hmac_sm3_ctr_sm4, !87, !"safexcel_alg_authenc_hmac_sm3_ctr_sm4", i1 false, i1 false}
!87 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 3525, i32 30}
!88 = !{ptr @safexcel_alg_rfc4106_gcm, !89, !"safexcel_alg_rfc4106_gcm", i1 false, i1 false}
!89 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 3593, i32 30}
!90 = !{ptr @safexcel_alg_rfc4543_gcm, !91, !"safexcel_alg_rfc4543_gcm", i1 false, i1 false}
!91 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 3638, i32 30}
!92 = !{ptr @safexcel_alg_rfc4309_ccm, !93, !"safexcel_alg_rfc4309_ccm", i1 false, i1 false}
!93 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 3730, i32 30}
!94 = !{ptr @.str, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 736, i32 4}
!96 = !{ptr @.str.1, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @.str.2, !95, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @.str.3, !95, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @.str.4, !95, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @safexcel_send_req._entry, !95, !"_entry", i1 false, i1 false}
!101 = !{ptr @safexcel_send_req._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.6, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 743, i32 4}
!104 = !{ptr @safexcel_send_req._entry.5, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @safexcel_send_req._entry_ptr.7, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.9, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 750, i32 4}
!108 = !{ptr @safexcel_send_req._entry.8, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @safexcel_send_req._entry_ptr.10, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.11, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 593, i32 4}
!112 = !{ptr @.str.12, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @safexcel_context_control._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @safexcel_context_control._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.13, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 915, i32 4}
!117 = !{ptr @.str.14, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @safexcel_handle_inv_result._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @safexcel_handle_inv_result._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.15, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 630, i32 4}
!122 = !{ptr @.str.16, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @safexcel_handle_req_result._entry, !121, !"_entry", i1 false, i1 false}
!124 = !{ptr @safexcel_handle_req_result._entry_ptr, !121, !"_entry_ptr", i1 false, i1 false}
!125 = !{ptr @.str.17, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1232, i32 4}
!127 = !{ptr @.str.18, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @.str.19, !126, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @safexcel_skcipher_cra_exit._entry, !126, !"_entry", i1 false, i1 false}
!130 = !{ptr @safexcel_skcipher_cra_exit._entry_ptr, !126, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.20, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1099, i32 3}
!133 = !{ptr @.str.21, !132, !"<string literal>", i1 false, i1 false}
!134 = !{ptr @safexcel_cipher_exit_inv._entry, !132, !"_entry", i1 false, i1 false}
!135 = !{ptr @safexcel_cipher_exit_inv._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @init_completion.__key, !137, !"__key", i1 false, i1 false}
!137 = !{!"../include/linux/completion.h", i32 87, i32 2}
!138 = !{ptr @.str.22, !137, !"<string literal>", i1 false, i1 false}
!139 = !{ptr @.str.23, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 450, i32 3}
!141 = !{ptr @.str.24, !140, !"<string literal>", i1 false, i1 false}
!142 = !{ptr @safexcel_aead_setkey._entry, !140, !"_entry", i1 false, i1 false}
!143 = !{ptr @safexcel_aead_setkey._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.25, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 467, i32 9}
!146 = !{ptr @.str.26, !147, !"<string literal>", i1 false, i1 false}
!147 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 470, i32 9}
!148 = !{ptr @.str.27, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 473, i32 9}
!150 = !{ptr @.str.28, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 476, i32 9}
!152 = !{ptr @.str.29, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 479, i32 9}
!154 = !{ptr @.str.30, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 482, i32 9}
!156 = !{ptr @.str.32, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 485, i32 3}
!158 = !{ptr @safexcel_aead_setkey._entry.31, !157, !"_entry", i1 false, i1 false}
!159 = !{ptr @safexcel_aead_setkey._entry_ptr.33, !157, !"_entry_ptr", i1 false, i1 false}
!160 = !{ptr @.str.34, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 1252, i32 4}
!162 = !{ptr @.str.35, !161, !"<string literal>", i1 false, i1 false}
!163 = !{ptr @safexcel_aead_cra_exit._entry, !161, !"_entry", i1 false, i1 false}
!164 = !{ptr @safexcel_aead_cra_exit._entry_ptr, !161, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.36, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/crypto/inside-secure/safexcel_cipher.c", i32 2629, i32 35}
!167 = !{i32 1, !"wchar_size", i32 2}
!168 = !{i32 1, !"min_enum_size", i32 4}
!169 = !{i32 8, !"branch-target-enforcement", i32 0}
!170 = !{i32 8, !"sign-return-address", i32 0}
!171 = !{i32 8, !"sign-return-address-all", i32 0}
!172 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!173 = !{i32 7, !"uwtable", i32 1}
!174 = !{i32 7, !"frame-pointer", i32 2}
!175 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!176 = !{i64 2149359262}
!177 = !{!"branch_weights", i32 2000, i32 1}
!178 = !{!"branch_weights", i32 1, i32 2000}
!179 = !{!"branch_weights", i32 2146410443, i32 1073205}
!180 = !{i8 0, i8 2}
!181 = !{i64 2154270989, i64 2154271501, i64 2154271026, i64 2154271082, i64 2154271116, i64 2154271140, i64 2154271181, i64 2154271202, i64 2154271230, i64 2154271264}
!182 = !{!"auto-init"}
!183 = !{!"branch_weights", i32 1, i32 4001}
!184 = !{i64 2154276797, i64 2154277309, i64 2154276834, i64 2154276890, i64 2154276924, i64 2154276948, i64 2154276989, i64 2154277010, i64 2154277038, i64 2154277072}
