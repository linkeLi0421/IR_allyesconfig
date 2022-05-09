; ModuleID = '/llk/IR_all_yes/drivers/crypto/caam/caamalg.c_pt.bc'
source_filename = "../drivers/crypto/caam/caamalg.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.caam_aead_alg = type { %struct.aead_alg, %struct.caam_alg_entry, i8, [115 x i8] }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.139, ptr, ptr, ptr, ptr, %union.anon.140, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%union.anon.139 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.140 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.caam_alg_entry = type { i32, i32, i8, i8, i8 }
%struct.caam_skcipher_alg = type { %struct.skcipher_alg, %struct.caam_alg_entry, i8, [115 x i8] }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.caam_drv_private = type { ptr, ptr, ptr, ptr, [4 x ptr], ptr, i8, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.caam_ctrl = type { i32, i32, i32, i32, [4 x %struct.masterid], [11 x i32], i32, [4 x %struct.masterid], [5 x i32], i32, i32, i32, [5 x %struct.partid], [22 x i32], i32, i32, [182 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], i64, [70 x i32], %union.anon.158, [416 x i32], %struct.version_regs, %struct.caam_perfmon }
%struct.masterid = type { i32, i32 }
%struct.partid = type { i32, i32 }
%union.anon.158 = type { [2 x %struct.rngtst] }
%struct.rngtst = type { i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], [15 x i32] }
%struct.version_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.caam_perfmon = type { i64, i64, i64, i64, i64, i64, i64, [13 x i64], i32, i32, i32, i32, [2 x i64], i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }
%struct.aead_edesc = type { i32, i32, i32, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.caam_drv_private_jr = type { %struct.list_head, ptr, i32, ptr, %struct.tasklet_struct, i32, i8, [79 x i8], %struct.atomic_t, ptr, [120 x i8], %struct.spinlock, i32, i32, ptr, i32, i32, ptr, ptr, [56 x i8] }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.163, i32 }
%union.anon.163 = type { ptr }
%struct.sec4_sg_entry = type { i64, i32, i32 }
%struct.page = type { i32, %union.anon.17, %union.anon.122, %struct.atomic_t, i32 }
%union.anon.17 = type { %struct.anon.18 }
%struct.anon.18 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.122 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dpaa2_sg_entry = type { i64, i32, i16, i16 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.des_ctx = type { [32 x i32] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.skcipher_edesc = type { i32, i32, i32, i32, i32, i32, i8, i32, ptr, [0 x i32] }
%struct.crypto_engine = type { [30 x i8], i8, i8, i8, i8, %struct.list_head, %struct.spinlock, %struct.crypto_queue, ptr, i8, ptr, ptr, ptr, ptr, %struct.kthread_work, ptr, ptr }
%struct.crypto_queue = type { %struct.list_head, ptr, i32, i32 }
%struct.kthread_work = type { %struct.list_head, ptr, ptr, i32 }
%struct.caam_ctx = type { %struct.crypto_engine_ctx, [56 x i32], [56 x i32], [164 x i8], i32, i32, i32, i32, ptr, %struct.alginfo, %struct.alginfo, i32, i8, ptr }
%struct.crypto_engine_ctx = type { %struct.crypto_engine_op }
%struct.crypto_engine_op = type { ptr, ptr, ptr }
%struct.alginfo = type { i32, i32, i32, i32, ptr, i8 }

@driver_aeads = internal global [59 x %struct.caam_aead_alg] [%struct.caam_aead_alg { %struct.aead_alg { ptr @rfc4106_setkey, ptr @rfc4106_setauthsize, ptr @ipsec_gcm_encrypt, ptr @ipsec_gcm_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4106(gcm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc4106-gcm-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1050880, i32 0, i8 0, i8 0, i8 1 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @rfc4543_setkey, ptr @rfc4543_setauthsize, ptr @ipsec_gcm_encrypt, ptr @ipsec_gcm_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc4543(gcm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc4543-gcm-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1050880, i32 0, i8 0, i8 0, i8 1 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @gcm_setkey, ptr @gcm_setauthsize, ptr @gcm_encrypt, ptr @gcm_decrypt, ptr null, ptr null, i32 12, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gcm-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1050880, i32 0, i8 0, i8 0, i8 1 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 0, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),ecb(cipher_null))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-ecb-cipher_null-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 0, i32 4194368, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 0, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),ecb(cipher_null))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-ecb-cipher_null-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 0, i32 4259904, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 0, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),ecb(cipher_null))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-ecb-cipher_null-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 0, i32 4325440, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 0, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),ecb(cipher_null))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-ecb-cipher_null-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 0, i32 4390976, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 0, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),ecb(cipher_null))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-ecb-cipher_null-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 0, i32 4456512, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 0, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),ecb(cipher_null))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-ecb-cipher_null-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 0, i32 4522048, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4194368, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(md5),cbc(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-md5-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4194368, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4259904, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha1),cbc(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha1-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4259904, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4325440, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha224),cbc(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha224-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4325440, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4390976, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha256),cbc(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha256-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4390976, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4456512, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha384),cbc(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha384-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4456512, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4522048, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 16, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha512),cbc(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha512-cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 4522048, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4194368, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(md5),cbc(des3_ede)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-md5-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4194368, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4259904, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha1),cbc(des3_ede)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha1-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4259904, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4325440, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha224),cbc(des3_ede)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha224-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4325440, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4390976, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha256),cbc(des3_ede)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha256-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4390976, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4456512, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha384),cbc(des3_ede)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha384-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4456512, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4522048, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @des3_aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha512),cbc(des3_ede)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha512-cbc-des3_ede-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 4522048, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4194368, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(md5),cbc(des)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-md5-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4194368, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4259904, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha1),cbc(des)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha1-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4259904, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4325440, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha224),cbc(des)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha224-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4325440, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4390976, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha256),cbc(des)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha256-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4390976, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4456512, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha384),cbc(des)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha384-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4456512, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),cbc(des))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4522048, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"echainiv(authenc(hmac(sha512),cbc(des)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"echainiv-authenc-hmac-sha512-cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 4522048, i8 0, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(md5),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-md5-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4194368, i8 1, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"seqiv(authenc(hmac(md5),rfc3686(ctr(aes))))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"seqiv-authenc-hmac-md5-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4194368, i8 1, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha1),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4259904, i8 1, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"seqiv(authenc(hmac(sha1),rfc3686(ctr(aes))))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"seqiv-authenc-hmac-sha1-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4259904, i8 1, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha224),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha224-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4325440, i8 1, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 28, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"seqiv(authenc(hmac(sha224),rfc3686(ctr(aes))))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"seqiv-authenc-hmac-sha224-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4325440, i8 1, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha256),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4390976, i8 1, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"seqiv(authenc(hmac(sha256),rfc3686(ctr(aes))))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"seqiv-authenc-hmac-sha256-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4390976, i8 1, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha384),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha384-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4456512, i8 1, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 48, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"seqiv(authenc(hmac(sha384),rfc3686(ctr(aes))))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"seqiv-authenc-hmac-sha384-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4456512, i8 1, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"authenc(hmac(sha512),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha512-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4522048, i8 1, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @aead_setkey, ptr @aead_setauthsize, ptr @aead_encrypt, ptr @aead_decrypt, ptr null, ptr null, i32 8, i32 64, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"seqiv(authenc(hmac(sha512),rfc3686(ctr(aes))))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"seqiv-authenc-hmac-sha512-rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 4522048, i8 1, i8 1, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @chachapoly_setkey, ptr @chachapoly_setauthsize, ptr @chachapoly_encrypt, ptr @chachapoly_decrypt, ptr null, ptr null, i32 12, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc7539(chacha20,poly1305)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc7539-chacha20-poly1305-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 13631520, i32 14680096, i8 0, i8 0, i8 1 }, i8 0, [115 x i8] undef }, %struct.caam_aead_alg { %struct.aead_alg { ptr @chachapoly_setkey, ptr @chachapoly_setauthsize, ptr @chachapoly_encrypt, ptr @chachapoly_decrypt, ptr null, ptr null, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc7539esp(chacha20,poly1305)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc7539esp-chacha20-poly1305-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 13631520, i32 14680096, i8 0, i8 0, i8 1 }, i8 0, [115 x i8] undef }], align 128
@driver_algs = internal global [9 x %struct.caam_skcipher_alg] [%struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @aes_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048832, i32 0, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @des3_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-3des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2162944, i32 0, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @des_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2097408, i32 0, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @ctr_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 16, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 0, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @rfc3686_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 20, i32 36, i32 8, i32 16, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 1, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"rfc3686(ctr(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc3686-ctr-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1048576, i32 0, i8 1, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @xts_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 32, i32 64, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 256, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xts-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1049856, i32 0, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @des_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2097664, i32 0, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @aes_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 16, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 1049088, i32 0, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }, %struct.caam_skcipher_alg { %struct.skcipher_alg { ptr @des3_skcipher_setkey, ptr @skcipher_encrypt, ptr @skcipher_decrypt, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 0, i32 8, i32 0, i32 0, i32 0, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des3-caam\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.139 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.140 zeroinitializer, [120 x i8] undef } }, %struct.caam_alg_entry { i32 2163200, i32 0, i8 0, i8 0, i8 0 }, i8 0, [115 x i8] undef }], align 128
@caam_algapi_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3596, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"\014%s alg registration failed\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"caam_algapi_init\00", [47 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/crypto/caam/caamalg.c\00", [34 x i8] zeroinitializer }, align 32
@caam_algapi_init._entry_ptr = internal global ptr @caam_algapi_init._entry, section ".printk_index", align 4
@caam_algapi_init._entry.3 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 3648, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@caam_algapi_init._entry_ptr.4 = internal global ptr @caam_algapi_init._entry.3, section ".printk_index", align 4
@caam_algapi_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 3657, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"\016caam algorithms registered in /proc/crypto\0A\00", [50 x i8] zeroinitializer }, align 32
@caam_algapi_init._entry_ptr.7 = internal global ptr @caam_algapi_init._entry.5, section ".printk_index", align 4
@rfc4106_setkey.__UNIQUE_ID_ddebug520 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.10, i8 0, i8 -84, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"caam_jr\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rfc4106_setkey\00", [17 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"key in @688: \00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@rfc4543_setkey.__UNIQUE_ID_ddebug521 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 -78, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rfc4543_setkey\00", [17 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"key in @714: \00", [18 x i8] zeroinitializer }, align 32
@gcm_setkey.__UNIQUE_ID_ddebug519 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 -89, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"gcm_setkey\00", [21 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"key in @667: \00", [18 x i8] zeroinitializer }, align 32
@gcm_crypt.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.16, ptr @.str.2, ptr @.str.17, i8 1, i8 -120, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.16 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"gcm_crypt\00", [22 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aead jobdesc@1566: \00", [44 x i8] zeroinitializer }, align 32
@aead_edesc_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1311, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Insufficient bytes (%d) in src S/G\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"aead_edesc_alloc\00", [47 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@aead_edesc_alloc._entry_ptr = internal global ptr @aead_edesc_alloc._entry, section ".printk_index", align 4
@aead_edesc_alloc._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.19, ptr @.str.2, i32 1318, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Insufficient bytes (%d) in dst S/G\0A\00", [60 x i8] zeroinitializer }, align 32
@aead_edesc_alloc._entry_ptr.24 = internal global ptr @aead_edesc_alloc._entry.22, section ".printk_index", align 4
@aead_edesc_alloc._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 1328, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@aead_edesc_alloc._entry_ptr.26 = internal global ptr @aead_edesc_alloc._entry.25, section ".printk_index", align 4
@aead_edesc_alloc._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.19, ptr @.str.2, i32 1337, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"unable to map source\0A\00", [42 x i8] zeroinitializer }, align 32
@aead_edesc_alloc._entry_ptr.29 = internal global ptr @aead_edesc_alloc._entry.27, section ".printk_index", align 4
@aead_edesc_alloc._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.19, ptr @.str.2, i32 1346, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@aead_edesc_alloc._entry_ptr.31 = internal global ptr @aead_edesc_alloc._entry.30, section ".printk_index", align 4
@aead_edesc_alloc._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.19, ptr @.str.2, i32 1359, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"unable to map destination\0A\00", [37 x i8] zeroinitializer }, align 32
@aead_edesc_alloc._entry_ptr.34 = internal global ptr @aead_edesc_alloc._entry.32, section ".printk_index", align 4
@aead_edesc_alloc._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.19, ptr @.str.2, i32 1418, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"unable to map S/G table\0A\00", [39 x i8] zeroinitializer }, align 32
@aead_edesc_alloc._entry_ptr.37 = internal global ptr @aead_edesc_alloc._entry.35, section ".printk_index", align 4
@caam_dpaa2 = external dso_local local_unnamed_addr global i8, align 1
@dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.38, ptr @.str.39, ptr @.str.40, i8 0, i8 10, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma_to_sec4_sg_one\00", [45 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/crypto/caam/sg_sw_sec4.h\00", [63 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"sec4_sg_ptr@: \00", [17 x i8] zeroinitializer }, align 32
@caam_imx = external dso_local local_unnamed_addr global i8, align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_job_desc_shared._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.45, i32 156, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%02d: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"init_job_desc_shared\00", [43 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/crypto/caam/desc_constr.h\00", [62 x i8] zeroinitializer }, align 32
@init_job_desc_shared._entry_ptr = internal global ptr @init_job_desc_shared._entry, section ".printk_index", align 4
@append_seq_in_ptr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.46, ptr @.str.45, i32 358, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"append_seq_in_ptr\00", [46 x i8] zeroinitializer }, align 32
@append_seq_in_ptr._entry_ptr = internal global ptr @append_seq_in_ptr._entry, section ".printk_index", align 4
@append_seq_in_ptr_extlen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.47, ptr @.str.45, i32 341, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"append_seq_in_ptr_extlen\00", [39 x i8] zeroinitializer }, align 32
@append_seq_in_ptr_extlen._entry_ptr = internal global ptr @append_seq_in_ptr_extlen._entry, section ".printk_index", align 4
@append_seq_out_ptr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.48, ptr @.str.45, i32 359, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"append_seq_out_ptr\00", [45 x i8] zeroinitializer }, align 32
@append_seq_out_ptr._entry_ptr = internal global ptr @append_seq_out_ptr._entry, section ".printk_index", align 4
@append_seq_out_ptr_extlen._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.49, ptr @.str.45, i32 342, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"append_seq_out_ptr_extlen\00", [38 x i8] zeroinitializer }, align 32
@append_seq_out_ptr_extlen._entry_ptr = internal global ptr @append_seq_out_ptr_extlen._entry, section ".printk_index", align 4
@aead_crypt_done.__UNIQUE_ID_ddebug524 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 -12, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"aead_crypt_done\00", [16 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"%s %d: err 0x%x\0A\00", [47 x i8] zeroinitializer }, align 32
@aead_setkey.__UNIQUE_ID_ddebug516 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.52, ptr @.str.2, ptr @.str.53, i8 0, i8 -109, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"aead_setkey\00", [20 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"keylen %d enckeylen %d authkeylen %d\0A\00", [58 x i8] zeroinitializer }, align 32
@aead_setkey.__UNIQUE_ID_ddebug517 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.52, ptr @.str.2, ptr @.str.54, i8 0, i8 -109, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"key in @590: \00", [18 x i8] zeroinitializer }, align 32
@aead_setkey.__UNIQUE_ID_ddebug518 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.52, ptr @.str.2, ptr @.str.55, i8 0, i8 -99, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"ctx.key@626: \00", [18 x i8] zeroinitializer }, align 32
@split_key_len.mdpadlen = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"\10\14  @@", [26 x i8] zeroinitializer }, align 32
@aead_crypt.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.56, ptr @.str.2, ptr @.str.57, i8 1, i8 121, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"aead_crypt\00", [21 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"aead jobdesc@1507: \00", [44 x i8] zeroinitializer }, align 32
@append_load_as_imm._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.58, ptr @.str.45, i32 331, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"append_load_as_imm\00", [45 x i8] zeroinitializer }, align 32
@append_load_as_imm._entry_ptr = internal global ptr @append_load_as_imm._entry, section ".printk_index", align 4
@chachapoly_crypt.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 1, i8 112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chachapoly_crypt\00", [47 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"chachapoly jobdesc@1473: \00", [38 x i8] zeroinitializer }, align 32
@skcipher_setkey.__UNIQUE_ID_ddebug522 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.61, ptr @.str.2, ptr @.str.62, i8 0, i8 -71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"skcipher_setkey\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"key in @741: \00", [18 x i8] zeroinitializer }, align 32
@skcipher_crypt.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 1, i8 -54, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"skcipher_crypt\00", [17 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"skcipher jobdesc@1832: \00", [40 x i8] zeroinitializer }, align 32
@skcipher_edesc_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.65, ptr @.str.2, i32 1615, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"skcipher_edesc_alloc\00", [43 x i8] zeroinitializer }, align 32
@skcipher_edesc_alloc._entry_ptr = internal global ptr @skcipher_edesc_alloc._entry, section ".printk_index", align 4
@skcipher_edesc_alloc._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.65, ptr @.str.2, i32 1623, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@skcipher_edesc_alloc._entry_ptr.67 = internal global ptr @skcipher_edesc_alloc._entry.66, section ".printk_index", align 4
@skcipher_edesc_alloc._entry.68 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.65, ptr @.str.2, i32 1632, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@skcipher_edesc_alloc._entry_ptr.69 = internal global ptr @skcipher_edesc_alloc._entry.68, section ".printk_index", align 4
@skcipher_edesc_alloc._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.65, ptr @.str.2, i32 1639, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@skcipher_edesc_alloc._entry_ptr.71 = internal global ptr @skcipher_edesc_alloc._entry.70, section ".printk_index", align 4
@skcipher_edesc_alloc._entry.72 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.65, ptr @.str.2, i32 1645, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@skcipher_edesc_alloc._entry_ptr.73 = internal global ptr @skcipher_edesc_alloc._entry.72, section ".printk_index", align 4
@skcipher_edesc_alloc._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.65, ptr @.str.2, i32 1687, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"could not allocate extended descriptor\0A\00", [56 x i8] zeroinitializer }, align 32
@skcipher_edesc_alloc._entry_ptr.76 = internal global ptr @skcipher_edesc_alloc._entry.74, section ".printk_index", align 4
@skcipher_edesc_alloc._entry.77 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.78, ptr @.str.65, ptr @.str.2, i32 1709, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"unable to map IV\0A\00", [46 x i8] zeroinitializer }, align 32
@skcipher_edesc_alloc._entry_ptr.79 = internal global ptr @skcipher_edesc_alloc._entry.77, section ".printk_index", align 4
@skcipher_edesc_alloc._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.65, ptr @.str.2, i32 1739, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@skcipher_edesc_alloc._entry_ptr.81 = internal global ptr @skcipher_edesc_alloc._entry.80, section ".printk_index", align 4
@skcipher_edesc_alloc.__UNIQUE_ID_ddebug532 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.65, ptr @.str.2, ptr @.str.82, i8 1, i8 -75, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"skcipher sec4_sg@1749: \00", [40 x i8] zeroinitializer }, align 32
@init_skcipher_job.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.83, ptr @.str.2, ptr @.str.84, i8 1, i8 55, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"init_skcipher_job\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"presciv@1246: \00", [17 x i8] zeroinitializer }, align 32
@init_skcipher_job.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.83, ptr @.str.2, ptr @.str.85, i8 1, i8 56, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"asked=%d, cryptlen%d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"src    @1251: \00", [17 x i8] zeroinitializer }, align 32
@skcipher_crypt_done.__UNIQUE_ID_ddebug525 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.87, ptr @.str.2, ptr @.str.51, i8 0, i8 -3, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"skcipher_crypt_done\00", [44 x i8] zeroinitializer }, align 32
@skcipher_crypt_done.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 1, i8 2, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dstiv  @1031: \00", [17 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dst    @1036: \00", [17 x i8] zeroinitializer }, align 32
@xts_skcipher_setkey.__UNIQUE_ID_ddebug523 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.90, ptr @.str.2, ptr @.str.91, i8 0, i8 -46, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.90 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"xts_skcipher_setkey\00", [44 x i8] zeroinitializer }, align 32
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"key size mismatch\0A\00", [45 x i8] zeroinitializer }, align 32
@caam_cra_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.92, ptr @.str.93, ptr @.str.2, i32 3414, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"\013Failed to allocate %s fallback: %ld\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"caam_cra_init\00", [18 x i8] zeroinitializer }, align 32
@caam_cra_init._entry_ptr = internal global ptr @caam_cra_init._entry, section ".printk_index", align 4
@caam_init_common._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.2, i32 3360, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Job Ring Device allocation for transform failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"caam_init_common\00", [47 x i8] zeroinitializer }, align 32
@caam_init_common._entry_ptr = internal global ptr @caam_init_common._entry, section ".printk_index", align 4
@caam_init_common._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.2, i32 3376, ptr @.str.20, ptr @.str.21 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"unable to map key, shared descriptors\0A\00", [57 x i8] zeroinitializer }, align 32
@caam_init_common._entry_ptr.98 = internal global ptr @caam_init_common._entry.96, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 2097152, i64 2162688]
@__sancov_gen_cov_switch_values.99 = internal global [4 x i64] [i64 2, i64 32, i64 2097152, i64 2162688]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 28, i64 36]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.102 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 28, i64 36]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.104 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 12, i64 13, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 20, i64 28, i64 36]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.114 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967268]
@__sancov_gen_cov_switch_values.115 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967268]
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 3595, i32 4 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 3647, i32 4 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 3657, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 688, i32 2 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 714, i32 2 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 667, i32 2 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1566, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1310, i32 4 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1317, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1327, i32 4 }
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1337, i32 4 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1346, i32 5 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1359, i32 5 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1418, i32 3 }
@___asan_gen_.219 = private unnamed_addr constant [36 x i8] c"../drivers/crypto/caam/sg_sw_sec4.h\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 39, i32 2 }
@___asan_gen_.225 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 326, i32 6 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 156, i32 2 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 358, i32 1 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 341, i32 1 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 359, i32 1 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 342, i32 1 }
@___asan_gen_.268 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 979, i32 2 }
@___asan_gen_.274 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 587, i32 2 }
@___asan_gen_.277 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 590, i32 2 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 626, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant [9 x i8] c"mdpadlen\00", align 1
@___asan_gen_.282 = private unnamed_addr constant [33 x i8] c"../drivers/crypto/caam/key_gen.h\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 19, i32 18 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1507, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant [37 x i8] c"../drivers/crypto/caam/desc_constr.h\00", align 1
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.294, i32 331, i32 1 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1473, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 741, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1832, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1614, i32 3 }
@___asan_gen_.322 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1622, i32 4 }
@___asan_gen_.325 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1632, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1639, i32 4 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1645, i32 4 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1687, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1709, i32 4 }
@___asan_gen_.346 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1739, i32 4 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1749, i32 2 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1246, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1248, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1251, i32 15 }
@___asan_gen_.364 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1013, i32 2 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1031, i32 3 }
@___asan_gen_.370 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 1036, i32 15 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 843, i32 3 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 3413, i32 4 }
@___asan_gen_.394 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 3360, i32 3 }
@___asan_gen_.395 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.398 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.399 = private constant [33 x i8] c"../drivers/crypto/caam/caamalg.c\00", align 1
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.399, i32 3376, i32 3 }
@llvm.compiler.used = appending global [122 x ptr] [ptr @aead_edesc_alloc._entry, ptr @aead_edesc_alloc._entry.22, ptr @aead_edesc_alloc._entry.25, ptr @aead_edesc_alloc._entry.27, ptr @aead_edesc_alloc._entry.30, ptr @aead_edesc_alloc._entry.32, ptr @aead_edesc_alloc._entry.35, ptr @aead_edesc_alloc._entry_ptr, ptr @aead_edesc_alloc._entry_ptr.24, ptr @aead_edesc_alloc._entry_ptr.26, ptr @aead_edesc_alloc._entry_ptr.29, ptr @aead_edesc_alloc._entry_ptr.31, ptr @aead_edesc_alloc._entry_ptr.34, ptr @aead_edesc_alloc._entry_ptr.37, ptr @append_load_as_imm._entry, ptr @append_load_as_imm._entry_ptr, ptr @append_seq_in_ptr._entry, ptr @append_seq_in_ptr._entry_ptr, ptr @append_seq_in_ptr_extlen._entry, ptr @append_seq_in_ptr_extlen._entry_ptr, ptr @append_seq_out_ptr._entry, ptr @append_seq_out_ptr._entry_ptr, ptr @append_seq_out_ptr_extlen._entry, ptr @append_seq_out_ptr_extlen._entry_ptr, ptr @caam_algapi_init._entry, ptr @caam_algapi_init._entry.3, ptr @caam_algapi_init._entry.5, ptr @caam_algapi_init._entry_ptr, ptr @caam_algapi_init._entry_ptr.4, ptr @caam_algapi_init._entry_ptr.7, ptr @caam_cra_init._entry, ptr @caam_cra_init._entry_ptr, ptr @caam_init_common._entry, ptr @caam_init_common._entry.96, ptr @caam_init_common._entry_ptr, ptr @caam_init_common._entry_ptr.98, ptr @init_job_desc_shared._entry, ptr @init_job_desc_shared._entry_ptr, ptr @skcipher_edesc_alloc._entry, ptr @skcipher_edesc_alloc._entry.66, ptr @skcipher_edesc_alloc._entry.68, ptr @skcipher_edesc_alloc._entry.70, ptr @skcipher_edesc_alloc._entry.72, ptr @skcipher_edesc_alloc._entry.74, ptr @skcipher_edesc_alloc._entry.77, ptr @skcipher_edesc_alloc._entry.80, ptr @skcipher_edesc_alloc._entry_ptr, ptr @skcipher_edesc_alloc._entry_ptr.67, ptr @skcipher_edesc_alloc._entry_ptr.69, ptr @skcipher_edesc_alloc._entry_ptr.71, ptr @skcipher_edesc_alloc._entry_ptr.73, ptr @skcipher_edesc_alloc._entry_ptr.76, ptr @skcipher_edesc_alloc._entry_ptr.79, ptr @skcipher_edesc_alloc._entry_ptr.81, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.28, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @split_key_len.mdpadlen, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.75, ptr @.str.78, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97], section "llvm.metadata"
@0 = internal global [95 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_algapi_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_algapi_init._entry.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_algapi_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_edesc_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_edesc_alloc._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_edesc_alloc._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_edesc_alloc._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_edesc_alloc._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_edesc_alloc._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @aead_edesc_alloc._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_job_desc_shared._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_seq_in_ptr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_seq_in_ptr_extlen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_seq_out_ptr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_seq_out_ptr_extlen._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.268 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.274 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.277 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @split_key_len.mdpadlen to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_load_as_imm._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skcipher_edesc_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skcipher_edesc_alloc._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.322 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skcipher_edesc_alloc._entry.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skcipher_edesc_alloc._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skcipher_edesc_alloc._entry.72 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skcipher_edesc_alloc._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skcipher_edesc_alloc._entry.77 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @skcipher_edesc_alloc._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.346 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.364 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.370 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_cra_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_init_common._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.394 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_init_common._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @caam_algapi_exit() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  br label %for.body

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry
  %i.020 = phi i32 [ 0, %entry ], [ %inc, %if.end.for.body_crit_edge ]
  %registered = getelementptr %struct.caam_aead_alg, ptr @driver_aeads, i32 %i.020, i32 2
  %0 = ptrtoint ptr %registered to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %registered, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr %struct.caam_aead_alg, ptr @driver_aeads, i32 %i.020
  tail call void @crypto_unregister_aead(ptr noundef %add.ptr) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %inc = add nuw nsw i32 %i.020, 1
  %exitcond.not = icmp eq i32 %inc, 59
  br i1 %exitcond.not, label %for.body3.preheader, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body3.preheader:                              ; preds = %if.end
  %2 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 0, i32 2), align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool7.not = icmp eq i8 %2, 0
  br i1 %tobool7.not, label %for.body3.preheader.if.end9_crit_edge, label %if.then8

for.body3.preheader.if.end9_crit_edge:            ; preds = %for.body3.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then8:                                         ; preds = %for.body3.preheader
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_skcipher(ptr noundef nonnull @driver_algs) #7
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %for.body3.preheader.if.end9_crit_edge
  %3 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 1, i32 2), align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool7.not.1 = icmp eq i8 %3, 0
  br i1 %tobool7.not.1, label %if.end9.if.end9.1_crit_edge, label %if.then8.1

if.end9.if.end9.1_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.1

if.then8.1:                                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 1)) #7
  br label %if.end9.1

if.end9.1:                                        ; preds = %if.then8.1, %if.end9.if.end9.1_crit_edge
  %4 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 2, i32 2), align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool7.not.2 = icmp eq i8 %4, 0
  br i1 %tobool7.not.2, label %if.end9.1.if.end9.2_crit_edge, label %if.then8.2

if.end9.1.if.end9.2_crit_edge:                    ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.2

if.then8.2:                                       ; preds = %if.end9.1
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 2)) #7
  br label %if.end9.2

if.end9.2:                                        ; preds = %if.then8.2, %if.end9.1.if.end9.2_crit_edge
  %5 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 3, i32 2), align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not.3 = icmp eq i8 %5, 0
  br i1 %tobool7.not.3, label %if.end9.2.if.end9.3_crit_edge, label %if.then8.3

if.end9.2.if.end9.3_crit_edge:                    ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.3

if.then8.3:                                       ; preds = %if.end9.2
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 3)) #7
  br label %if.end9.3

if.end9.3:                                        ; preds = %if.then8.3, %if.end9.2.if.end9.3_crit_edge
  %6 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 4, i32 2), align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool7.not.4 = icmp eq i8 %6, 0
  br i1 %tobool7.not.4, label %if.end9.3.if.end9.4_crit_edge, label %if.then8.4

if.end9.3.if.end9.4_crit_edge:                    ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.4

if.then8.4:                                       ; preds = %if.end9.3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 4)) #7
  br label %if.end9.4

if.end9.4:                                        ; preds = %if.then8.4, %if.end9.3.if.end9.4_crit_edge
  %7 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 5, i32 2), align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool7.not.5 = icmp eq i8 %7, 0
  br i1 %tobool7.not.5, label %if.end9.4.if.end9.5_crit_edge, label %if.then8.5

if.end9.4.if.end9.5_crit_edge:                    ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.5

if.then8.5:                                       ; preds = %if.end9.4
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 5)) #7
  br label %if.end9.5

if.end9.5:                                        ; preds = %if.then8.5, %if.end9.4.if.end9.5_crit_edge
  %8 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 6, i32 2), align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not.6 = icmp eq i8 %8, 0
  br i1 %tobool7.not.6, label %if.end9.5.if.end9.6_crit_edge, label %if.then8.6

if.end9.5.if.end9.6_crit_edge:                    ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.6

if.then8.6:                                       ; preds = %if.end9.5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 6)) #7
  br label %if.end9.6

if.end9.6:                                        ; preds = %if.then8.6, %if.end9.5.if.end9.6_crit_edge
  %9 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 7, i32 2), align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool7.not.7 = icmp eq i8 %9, 0
  br i1 %tobool7.not.7, label %if.end9.6.if.end9.7_crit_edge, label %if.then8.7

if.end9.6.if.end9.7_crit_edge:                    ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.7

if.then8.7:                                       ; preds = %if.end9.6
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 7)) #7
  br label %if.end9.7

if.end9.7:                                        ; preds = %if.then8.7, %if.end9.6.if.end9.7_crit_edge
  %10 = load i8, ptr getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 8, i32 2), align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not.8 = icmp eq i8 %10, 0
  br i1 %tobool7.not.8, label %if.end9.7.if.end9.8_crit_edge, label %if.then8.8

if.end9.7.if.end9.8_crit_edge:                    ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9.8

if.then8.8:                                       ; preds = %if.end9.7
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([9 x %struct.caam_skcipher_alg], ptr @driver_algs, i32 0, i32 8)) #7
  br label %if.end9.8

if.end9.8:                                        ; preds = %if.then8.8, %if.end9.7.if.end9.8_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @caam_algapi_init(ptr nocapture noundef readonly %ctrldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %ctrldev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %era = getelementptr inbounds %struct.caam_drv_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %era, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp slt i32 %3, 10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cha_id_ls = getelementptr inbounds %struct.caam_ctrl, ptr %5, i32 0, i32 26, i32 22
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %6 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cha_id_ls) #7
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  br label %rd_reg32.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  br label %rd_reg32.exit

rd_reg32.exit:                                    ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ %7, %if.end.i ]
  %and = and i32 %retval.0.i, 15
  %9 = lshr i32 %retval.0.i, 12
  %10 = and i32 %9, 15
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %cha_num_ls = getelementptr inbounds %struct.caam_ctrl, ptr %12, i32 0, i32 26, i32 24
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %13 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i281 = icmp eq i8 %13, 0
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cha_num_ls) #7
  br i1 %tobool.not.i281, label %if.end.i283, label %if.then.i282

if.then.i282:                                     ; preds = %rd_reg32.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  br label %rd_reg32.exit285

if.end.i283:                                      ; preds = %rd_reg32.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  br label %rd_reg32.exit285

rd_reg32.exit285:                                 ; preds = %if.end.i283, %if.then.i282
  %retval.0.i284 = phi i32 [ %15, %if.then.i282 ], [ %14, %if.end.i283 ]
  %and10 = lshr i32 %retval.0.i284, 4
  %shr11 = and i32 %and10, 15
  %and14 = and i32 %retval.0.i284, 15
  %16 = lshr i32 %retval.0.i284, 12
  %17 = and i32 %16, 15
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %cha_rev_ls = getelementptr inbounds %struct.caam_ctrl, ptr %19, i32 0, i32 26, i32 9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %20 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i286 = icmp eq i8 %20, 0
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cha_rev_ls) #7
  br i1 %tobool.not.i286, label %if.end.i288, label %if.then.i287

if.then.i287:                                     ; preds = %rd_reg32.exit285
  call void @__sanitizer_cov_trace_pc() #9
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  br label %rd_reg32.exit290

if.end.i288:                                      ; preds = %rd_reg32.exit285
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  br label %rd_reg32.exit290

rd_reg32.exit290:                                 ; preds = %if.end.i288, %if.then.i287
  %retval.0.i289 = phi i32 [ %22, %if.then.i287 ], [ %21, %if.end.i288 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %and)
  %cmp27 = icmp ne i32 %and, 3
  %23 = and i32 %retval.0.i289, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp29 = icmp ne i32 %23, 0
  %24 = select i1 %cmp27, i1 true, i1 %cmp29
  br label %if.end

if.else:                                          ; preds = %entry
  %aesa32 = getelementptr inbounds %struct.caam_ctrl, ptr %5, i32 0, i32 25, i32 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %25 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i291 = icmp eq i8 %25, 0
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %aesa32) #7
  br i1 %tobool.not.i291, label %if.end.i293, label %if.then.i292

if.then.i292:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %27 = tail call i32 @llvm.bswap.i32(i32 %26) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  br label %rd_reg32.exit295

if.end.i293:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  br label %rd_reg32.exit295

rd_reg32.exit295:                                 ; preds = %if.end.i293, %if.then.i292
  %retval.0.i294 = phi i32 [ %27, %if.then.i292 ], [ %26, %if.end.i293 ]
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %1, align 4
  %mdha36 = getelementptr inbounds %struct.caam_ctrl, ptr %29, i32 0, i32 25, i32 5
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %30 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i296 = icmp eq i8 %30, 0
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %mdha36) #7
  br i1 %tobool.not.i296, label %if.end.i298, label %if.then.i297

if.then.i297:                                     ; preds = %rd_reg32.exit295
  call void @__sanitizer_cov_trace_pc() #9
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  br label %rd_reg32.exit300

if.end.i298:                                      ; preds = %rd_reg32.exit295
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  br label %rd_reg32.exit300

rd_reg32.exit300:                                 ; preds = %if.end.i298, %if.then.i297
  %retval.0.i299 = phi i32 [ %32, %if.then.i297 ], [ %31, %if.end.i298 ]
  %shr40 = lshr i32 %retval.0.i294, 24
  %shr44 = lshr i32 %retval.0.i299, 24
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %desa = getelementptr inbounds %struct.caam_ctrl, ptr %34, i32 0, i32 25, i32 6
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %35 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %35)
  %tobool.not.i301 = icmp eq i8 %35, 0
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %desa) #7
  br i1 %tobool.not.i301, label %if.end.i303, label %if.then.i302

if.then.i302:                                     ; preds = %rd_reg32.exit300
  call void @__sanitizer_cov_trace_pc() #9
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  br label %rd_reg32.exit305

if.end.i303:                                      ; preds = %rd_reg32.exit300
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  br label %rd_reg32.exit305

rd_reg32.exit305:                                 ; preds = %if.end.i303, %if.then.i302
  %retval.0.i304 = phi i32 [ %37, %if.then.i302 ], [ %36, %if.end.i303 ]
  %38 = and i32 %retval.0.i304, 255
  %39 = and i32 %retval.0.i294, 255
  %40 = and i32 %retval.0.i299, 255
  %41 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %1, align 4
  %ccha = getelementptr inbounds %struct.caam_ctrl, ptr %42, i32 0, i32 25, i32 11
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %43 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool.not.i306 = icmp eq i8 %43, 0
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ccha) #7
  br i1 %tobool.not.i306, label %if.end.i308, label %if.then.i307

if.then.i307:                                     ; preds = %rd_reg32.exit305
  call void @__sanitizer_cov_trace_pc() #9
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  br label %rd_reg32.exit310

if.end.i308:                                      ; preds = %rd_reg32.exit305
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  br label %rd_reg32.exit310

rd_reg32.exit310:                                 ; preds = %if.end.i308, %if.then.i307
  %retval.0.i309 = phi i32 [ %45, %if.then.i307 ], [ %44, %if.end.i308 ]
  %46 = and i32 %retval.0.i309, 255
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %ptha = getelementptr inbounds %struct.caam_ctrl, ptr %48, i32 0, i32 25, i32 12
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %49 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool.not.i311 = icmp eq i8 %49, 0
  %50 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %ptha) #7
  br i1 %tobool.not.i311, label %if.end.i313, label %if.then.i312

if.then.i312:                                     ; preds = %rd_reg32.exit310
  call void @__sanitizer_cov_trace_pc() #9
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !206
  br label %rd_reg32.exit315

if.end.i313:                                      ; preds = %rd_reg32.exit310
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !207
  br label %rd_reg32.exit315

rd_reg32.exit315:                                 ; preds = %if.end.i313, %if.then.i312
  %retval.0.i314 = phi i32 [ %51, %if.then.i312 ], [ %50, %if.end.i313 ]
  %52 = and i32 %retval.0.i314, 255
  %53 = and i32 %retval.0.i294, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %54 = icmp ne i32 %53, 0
  br label %if.end

if.end:                                           ; preds = %rd_reg32.exit315, %rd_reg32.exit290
  %md_inst.0 = phi i32 [ %17, %rd_reg32.exit290 ], [ %40, %rd_reg32.exit315 ]
  %ccha_inst.0 = phi i32 [ 0, %rd_reg32.exit290 ], [ %46, %rd_reg32.exit315 ]
  %ptha_inst.0 = phi i32 [ 0, %rd_reg32.exit290 ], [ %52, %rd_reg32.exit315 ]
  %gcm_support.0.off0 = phi i1 [ %24, %rd_reg32.exit290 ], [ %54, %rd_reg32.exit315 ]
  %md_vid.0 = phi i32 [ %10, %rd_reg32.exit290 ], [ %shr44, %rd_reg32.exit315 ]
  %des_inst.0 = phi i32 [ %shr11, %rd_reg32.exit290 ], [ %38, %rd_reg32.exit315 ]
  %aes_inst.0 = phi i32 [ %and14, %rd_reg32.exit290 ], [ %39, %rd_reg32.exit315 ]
  %aes_vid.0 = phi i32 [ %and, %rd_reg32.exit290 ], [ %shr40, %rd_reg32.exit315 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %md_inst.0)
  %tobool72.not = icmp eq i32 %md_inst.0, 0
  %tobool72.not.not = xor i1 %tobool72.not, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %md_vid.0)
  %cmp74 = icmp eq i32 %md_vid.0, 0
  %or.cond = select i1 %tobool72.not.not, i1 %cmp74, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %des_inst.0)
  %tobool81.not = icmp eq i32 %des_inst.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %aes_inst.0)
  %tobool89.not = icmp eq i32 %aes_inst.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %aes_vid.0)
  %cmp96 = icmp eq i32 %aes_vid.0, 3
  br label %for.body

for.cond114.preheader:                            ; preds = %cleanup
  %md_limit.0 = select i1 %or.cond, i32 32, i32 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ccha_inst.0)
  %tobool146.not = icmp eq i32 %ccha_inst.0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ptha_inst.0)
  %tobool152.not = icmp eq i32 %ptha_inst.0, 0
  br label %for.body117.outer

for.body117.outer:                                ; preds = %cleanup188.thread.for.body117.outer_crit_edge, %for.cond114.preheader
  %i.1330.ph = phi i32 [ %inc195337, %cleanup188.thread.for.body117.outer_crit_edge ], [ 0, %for.cond114.preheader ]
  %err.2329.ph = phi i32 [ 0, %cleanup188.thread.for.body117.outer_crit_edge ], [ %err.1, %for.cond114.preheader ]
  %registered.2.off0327.ph = phi i1 [ true, %cleanup188.thread.for.body117.outer_crit_edge ], [ %registered.1.off0, %for.cond114.preheader ]
  br label %for.body117

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end
  %i.0325 = phi i32 [ 0, %if.end ], [ %inc, %cleanup.for.body_crit_edge ]
  %err.0324 = phi i32 [ 0, %if.end ], [ %err.1, %cleanup.for.body_crit_edge ]
  %registered.0.off0323 = phi i1 [ false, %if.end ], [ %registered.1.off0, %cleanup.for.body_crit_edge ]
  %add.ptr = getelementptr %struct.caam_skcipher_alg, ptr @driver_algs, i32 %i.0325
  %caam = getelementptr %struct.caam_skcipher_alg, ptr @driver_algs, i32 %i.0325, i32 1
  %55 = ptrtoint ptr %caam to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %caam, align 128
  %and80 = and i32 %56, 16711680
  br i1 %tobool81.not, label %land.lhs.true82, label %for.body.if.end88_crit_edge

for.body.if.end88_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

land.lhs.true82:                                  ; preds = %for.body
  %57 = zext i32 %and80 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values)
  switch i32 %and80, label %land.lhs.true82.if.end88_crit_edge [
    i32 2162688, label %land.lhs.true82.cleanup_crit_edge
    i32 2097152, label %land.lhs.true82.cleanup_crit_edge353
  ]

land.lhs.true82.cleanup_crit_edge353:             ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true82.cleanup_crit_edge:                ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true82.if.end88_crit_edge:               ; preds = %land.lhs.true82
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.end88:                                         ; preds = %land.lhs.true82.if.end88_crit_edge, %for.body.if.end88_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %and80)
  %cmp91 = icmp eq i32 %and80, 1048576
  %or.cond276 = select i1 %tobool89.not, i1 %cmp91, i1 false
  br i1 %or.cond276, label %if.end88.cleanup_crit_edge, label %if.end94

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end94:                                         ; preds = %if.end88
  %and101 = and i32 %56, 8176
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %and101)
  %cmp102 = icmp eq i32 %and101, 1280
  %or.cond322 = select i1 %cmp96, i1 %cmp102, i1 false
  br i1 %or.cond322, label %if.end94.cleanup_crit_edge, label %if.end105

if.end94.cleanup_crit_edge:                       ; preds = %if.end94
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end105:                                        ; preds = %if.end94
  %cra_module.i = getelementptr inbounds %struct.skcipher_alg, ptr %add.ptr, i32 0, i32 11, i32 15
  %58 = ptrtoint ptr %cra_module.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %cra_module.i, align 4
  %cra_priority.i = getelementptr inbounds %struct.skcipher_alg, ptr %add.ptr, i32 0, i32 11, i32 6
  %59 = ptrtoint ptr %cra_priority.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 3000, ptr %cra_priority.i, align 32
  %cra_ctxsize.i = getelementptr inbounds %struct.skcipher_alg, ptr %add.ptr, i32 0, i32 11, i32 4
  %60 = ptrtoint ptr %cra_ctxsize.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 704, ptr %cra_ctxsize.i, align 8
  %cra_flags.i = getelementptr inbounds %struct.skcipher_alg, ptr %add.ptr, i32 0, i32 11, i32 2
  %61 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cra_flags.i, align 16
  %or.i = or i32 %62, 69760
  store i32 %or.i, ptr %cra_flags.i, align 16
  %init.i = getelementptr inbounds %struct.skcipher_alg, ptr %add.ptr, i32 0, i32 3
  %63 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @caam_cra_init, ptr %init.i, align 4
  %exit.i = getelementptr inbounds %struct.skcipher_alg, ptr %add.ptr, i32 0, i32 4
  %64 = ptrtoint ptr %exit.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @caam_cra_exit, ptr %exit.i, align 16
  %call106 = tail call i32 @crypto_register_skcipher(ptr noundef %add.ptr) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call106)
  %tobool107.not = icmp eq i32 %call106, 0
  br i1 %tobool107.not, label %if.end111, label %do.end

do.end:                                           ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %base = getelementptr inbounds %struct.skcipher_alg, ptr %add.ptr, i32 0, i32 11
  %cra_driver_name = getelementptr inbounds %struct.crypto_alg, ptr %base, i32 0, i32 9
  %call110 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %cra_driver_name) #10
  br label %cleanup

if.end111:                                        ; preds = %if.end105
  call void @__sanitizer_cov_trace_pc() #9
  %registered112 = getelementptr %struct.caam_skcipher_alg, ptr @driver_algs, i32 %i.0325, i32 2
  %65 = ptrtoint ptr %registered112 to i32
  call void @__asan_store1_noabort(i32 %65)
  store i8 1, ptr %registered112, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end111, %do.end, %if.end94.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %land.lhs.true82.cleanup_crit_edge, %land.lhs.true82.cleanup_crit_edge353
  %registered.1.off0 = phi i1 [ %registered.0.off0323, %do.end ], [ true, %if.end111 ], [ %registered.0.off0323, %land.lhs.true82.cleanup_crit_edge ], [ %registered.0.off0323, %land.lhs.true82.cleanup_crit_edge353 ], [ %registered.0.off0323, %if.end88.cleanup_crit_edge ], [ %registered.0.off0323, %if.end94.cleanup_crit_edge ]
  %err.1 = phi i32 [ %call106, %do.end ], [ 0, %if.end111 ], [ %err.0324, %land.lhs.true82.cleanup_crit_edge ], [ %err.0324, %land.lhs.true82.cleanup_crit_edge353 ], [ %err.0324, %if.end88.cleanup_crit_edge ], [ %err.0324, %if.end94.cleanup_crit_edge ]
  %inc = add nuw nsw i32 %i.0325, 1
  %exitcond.not = icmp eq i32 %inc, 9
  br i1 %exitcond.not, label %for.cond114.preheader, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body117:                                      ; preds = %cleanup188.for.body117_crit_edge, %for.body117.outer
  %i.1330 = phi i32 [ %inc195, %cleanup188.for.body117_crit_edge ], [ %i.1330.ph, %for.body117.outer ]
  %err.2329 = phi i32 [ %err.3, %cleanup188.for.body117_crit_edge ], [ %err.2329.ph, %for.body117.outer ]
  %add.ptr119 = getelementptr %struct.caam_aead_alg, ptr @driver_aeads, i32 %i.1330
  %caam120 = getelementptr %struct.caam_aead_alg, ptr @driver_aeads, i32 %i.1330, i32 1
  %66 = ptrtoint ptr %caam120 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %caam120, align 128
  %and122 = and i32 %67, 16711680
  %class2_alg_type = getelementptr %struct.caam_aead_alg, ptr @driver_aeads, i32 %i.1330, i32 1, i32 1
  %68 = ptrtoint ptr %class2_alg_type to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %class2_alg_type, align 4
  %and124 = and i32 %69, 16711680
  br i1 %tobool81.not, label %land.lhs.true129, label %for.body117.if.end136_crit_edge

for.body117.if.end136_crit_edge:                  ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

land.lhs.true129:                                 ; preds = %for.body117
  %70 = zext i32 %and122 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %and122, label %land.lhs.true129.if.end136_crit_edge [
    i32 2162688, label %land.lhs.true129.cleanup188_crit_edge
    i32 2097152, label %land.lhs.true129.cleanup188_crit_edge354
  ]

land.lhs.true129.cleanup188_crit_edge354:         ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

land.lhs.true129.cleanup188_crit_edge:            ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

land.lhs.true129.if.end136_crit_edge:             ; preds = %land.lhs.true129
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end136

if.end136:                                        ; preds = %land.lhs.true129.if.end136_crit_edge, %for.body117.if.end136_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1048576, i32 %and122)
  %cmp139 = icmp eq i32 %and122, 1048576
  %or.cond277 = select i1 %tobool89.not, i1 %cmp139, i1 false
  call void @__sanitizer_cov_trace_const_cmp4(i32 13631488, i32 %and122)
  %cmp143 = icmp eq i32 %and122, 13631488
  %or.cond278 = select i1 %cmp143, i1 %tobool146.not, i1 false
  %or.cond332 = select i1 %or.cond277, i1 true, i1 %or.cond278
  call void @__sanitizer_cov_trace_const_cmp4(i32 14680064, i32 %and124)
  %cmp149 = icmp eq i32 %and124, 14680064
  %or.cond279 = select i1 %cmp149, i1 %tobool152.not, i1 false
  %or.cond333 = select i1 %or.cond332, i1 true, i1 %or.cond279
  br i1 %or.cond333, label %if.end136.cleanup188_crit_edge, label %if.end154

if.end136.cleanup188_crit_edge:                   ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.end154:                                        ; preds = %if.end136
  %71 = and i32 %67, 16719856
  call void @__sanitizer_cov_trace_const_cmp4(i32 1050880, i32 %71)
  %72 = icmp ne i32 %71, 1050880
  %brmerge = select i1 %72, i1 true, i1 %gcm_support.0.off0
  br i1 %brmerge, label %if.end163, label %if.end154.cleanup188_crit_edge

if.end154.cleanup188_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.end163:                                        ; preds = %if.end154
  %and1.i = and i32 %69, 15728640
  call void @__sanitizer_cov_trace_const_cmp4(i32 4194304, i32 %and1.i)
  %cmp.i = icmp eq i32 %and1.i, 4194304
  br i1 %cmp.i, label %land.lhs.true166, label %if.end163.if.end172_crit_edge

if.end163.if.end172_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

land.lhs.true166:                                 ; preds = %if.end163
  br i1 %tobool72.not, label %land.lhs.true166.cleanup188_crit_edge, label %lor.lhs.false168

land.lhs.true166.cleanup188_crit_edge:            ; preds = %land.lhs.true166
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

lor.lhs.false168:                                 ; preds = %land.lhs.true166
  %maxauthsize = getelementptr inbounds %struct.aead_alg, ptr %add.ptr119, i32 0, i32 7
  %73 = ptrtoint ptr %maxauthsize to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %maxauthsize, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %74, i32 %md_limit.0)
  %cmp169 = icmp ugt i32 %74, %md_limit.0
  br i1 %cmp169, label %lor.lhs.false168.cleanup188_crit_edge, label %lor.lhs.false168.if.end172_crit_edge

lor.lhs.false168.if.end172_crit_edge:             ; preds = %lor.lhs.false168
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end172

lor.lhs.false168.cleanup188_crit_edge:            ; preds = %lor.lhs.false168
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup188

if.end172:                                        ; preds = %lor.lhs.false168.if.end172_crit_edge, %if.end163.if.end172_crit_edge
  %cra_module.i316 = getelementptr inbounds %struct.aead_alg, ptr %add.ptr119, i32 0, i32 10, i32 15
  %75 = ptrtoint ptr %cra_module.i316 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %cra_module.i316, align 4
  %cra_priority.i317 = getelementptr inbounds %struct.aead_alg, ptr %add.ptr119, i32 0, i32 10, i32 6
  %76 = ptrtoint ptr %cra_priority.i317 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 3000, ptr %cra_priority.i317, align 32
  %cra_ctxsize.i318 = getelementptr inbounds %struct.aead_alg, ptr %add.ptr119, i32 0, i32 10, i32 4
  %77 = ptrtoint ptr %cra_ctxsize.i318 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 704, ptr %cra_ctxsize.i318, align 8
  %cra_flags.i319 = getelementptr inbounds %struct.aead_alg, ptr %add.ptr119, i32 0, i32 10, i32 2
  %78 = ptrtoint ptr %cra_flags.i319 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 69760, ptr %cra_flags.i319, align 16
  %init.i320 = getelementptr inbounds %struct.aead_alg, ptr %add.ptr119, i32 0, i32 4
  %79 = ptrtoint ptr %init.i320 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr @caam_aead_init, ptr %init.i320, align 16
  %exit.i321 = getelementptr inbounds %struct.aead_alg, ptr %add.ptr119, i32 0, i32 5
  %80 = ptrtoint ptr %exit.i321 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @caam_aead_exit, ptr %exit.i321, align 4
  %call174 = tail call i32 @crypto_register_aead(ptr noundef %add.ptr119) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call174)
  %tobool175.not = icmp eq i32 %call174, 0
  br i1 %tobool175.not, label %cleanup188.thread, label %do.end179

do.end179:                                        ; preds = %if.end172
  call void @__sanitizer_cov_trace_pc() #9
  %base182 = getelementptr inbounds %struct.aead_alg, ptr %add.ptr119, i32 0, i32 10
  %cra_driver_name183 = getelementptr inbounds %struct.crypto_alg, ptr %base182, i32 0, i32 9
  %call185 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str, ptr noundef %cra_driver_name183) #10
  br label %cleanup188

cleanup188:                                       ; preds = %do.end179, %lor.lhs.false168.cleanup188_crit_edge, %land.lhs.true166.cleanup188_crit_edge, %if.end154.cleanup188_crit_edge, %if.end136.cleanup188_crit_edge, %land.lhs.true129.cleanup188_crit_edge, %land.lhs.true129.cleanup188_crit_edge354
  %err.3 = phi i32 [ %call174, %do.end179 ], [ %err.2329, %land.lhs.true129.cleanup188_crit_edge ], [ %err.2329, %land.lhs.true129.cleanup188_crit_edge354 ], [ %err.2329, %if.end136.cleanup188_crit_edge ], [ %err.2329, %if.end154.cleanup188_crit_edge ], [ %err.2329, %lor.lhs.false168.cleanup188_crit_edge ], [ %err.2329, %land.lhs.true166.cleanup188_crit_edge ]
  %inc195 = add nuw nsw i32 %i.1330, 1
  %exitcond334.not = icmp eq i32 %inc195, 59
  br i1 %exitcond334.not, label %for.end196, label %cleanup188.for.body117_crit_edge

cleanup188.for.body117_crit_edge:                 ; preds = %cleanup188
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body117

cleanup188.thread:                                ; preds = %if.end172
  %registered187 = getelementptr %struct.caam_aead_alg, ptr @driver_aeads, i32 %i.1330, i32 2
  %81 = ptrtoint ptr %registered187 to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 1, ptr %registered187, align 4
  %inc195337 = add nuw nsw i32 %i.1330, 1
  %exitcond334.not338 = icmp eq i32 %inc195337, 59
  br i1 %exitcond334.not338, label %cleanup188.thread.do.end201_crit_edge, label %cleanup188.thread.for.body117.outer_crit_edge

cleanup188.thread.for.body117.outer_crit_edge:    ; preds = %cleanup188.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body117.outer

cleanup188.thread.do.end201_crit_edge:            ; preds = %cleanup188.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end201

for.end196:                                       ; preds = %cleanup188
  br i1 %registered.2.off0327.ph, label %for.end196.do.end201_crit_edge, label %for.end196.if.end204_crit_edge

for.end196.if.end204_crit_edge:                   ; preds = %for.end196
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end204

for.end196.do.end201_crit_edge:                   ; preds = %for.end196
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end201

do.end201:                                        ; preds = %for.end196.do.end201_crit_edge, %cleanup188.thread.do.end201_crit_edge
  %err.3340344 = phi i32 [ %err.3, %for.end196.do.end201_crit_edge ], [ 0, %cleanup188.thread.do.end201_crit_edge ]
  %call203 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.6) #10
  br label %if.end204

if.end204:                                        ; preds = %do.end201, %for.end196.if.end204_crit_edge
  %err.3340343 = phi i32 [ %err.3340344, %do.end201 ], [ %err.3, %for.end196.if.end204_crit_edge ]
  ret i32 %err.3340343
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfc4106_setkey(ptr noundef %aead, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jrdev1 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3
  %0 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jrdev1, align 4
  %sub = add i32 %keylen, -4
  %2 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 20, label %entry.do.body_crit_edge
    i32 28, label %entry.do.body_crit_edge33
    i32 36, label %entry.do.body_crit_edge34
  ]

entry.do.body_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge33, %entry.do.body_crit_edge34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfc4106_setkey.__UNIQUE_ID_ddebug520, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rfc4106_setkey, %do.end)) #7
          to label %if.then8 [label %do.end], !srcloc !208

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %key, i32 noundef %keylen, i1 noundef zeroext true) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %key10 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %3 = call ptr @memcpy(ptr %key10, ptr %key, i32 %keylen)
  %keylen12 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 16
  %4 = ptrtoint ptr %keylen12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %keylen12, align 4
  %key_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 112
  %5 = ptrtoint ptr %key_dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_dma, align 4
  %dir = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 116
  %7 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %6, i32 noundef %sub, i32 noundef %8) #7
  tail call fastcc void @rfc4106_set_sh_desc(ptr noundef %aead)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfc4106_setauthsize(ptr noundef %authenc, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %authsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %authsize, label %entry.cleanup_crit_edge [
    i32 8, label %entry.if.end_crit_edge
    i32 12, label %entry.if.end_crit_edge10
    i32 16, label %entry.if.end_crit_edge11
  ]

entry.if.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge10, %entry.if.end_crit_edge11
  %authsize2 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 3, i32 3, i32 4, i32 36
  %1 = ptrtoint ptr %authsize2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %authsize, ptr %authsize2, align 4
  tail call fastcc void @rfc4106_set_sh_desc(ptr noundef %authenc)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipsec_gcm_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call fastcc i32 @gcm_crypt(ptr noundef %req, i1 noundef zeroext true) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call.i, %cond.false ], [ -22, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ipsec_gcm_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call fastcc i32 @gcm_crypt(ptr noundef %req, i1 noundef zeroext false) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %entry.cond.end_crit_edge
  %cond = phi i32 [ %call.i, %cond.false ], [ -22, %entry.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfc4543_setkey(ptr noundef %aead, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jrdev1 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3
  %0 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jrdev1, align 4
  %sub = add i32 %keylen, -4
  %2 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 20, label %entry.do.body_crit_edge
    i32 28, label %entry.do.body_crit_edge33
    i32 36, label %entry.do.body_crit_edge34
  ]

entry.do.body_crit_edge34:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge33:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge33, %entry.do.body_crit_edge34
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rfc4543_setkey.__UNIQUE_ID_ddebug521, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rfc4543_setkey, %do.end)) #7
          to label %if.then8 [label %do.end], !srcloc !208

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.13, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %key, i32 noundef %keylen, i1 noundef zeroext true) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %key10 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %3 = call ptr @memcpy(ptr %key10, ptr %key, i32 %keylen)
  %keylen12 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 16
  %4 = ptrtoint ptr %keylen12 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %sub, ptr %keylen12, align 4
  %key_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 112
  %5 = ptrtoint ptr %key_dma to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %key_dma, align 4
  %dir = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 116
  %7 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %6, i32 noundef %sub, i32 noundef %8) #7
  tail call fastcc void @rfc4543_set_sh_desc(ptr noundef %aead)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfc4543_setauthsize(ptr noundef %authenc, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %authsize)
  %cmp.not = icmp eq i32 %authsize, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %authsize1 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 3, i32 3, i32 4, i32 36
  %0 = ptrtoint ptr %authsize1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %authsize1, align 4
  tail call fastcc void @rfc4543_set_sh_desc(ptr noundef %authenc)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gcm_setkey(ptr noundef %aead, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jrdev1 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3
  %0 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jrdev1, align 4
  %2 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %entry.do.body_crit_edge
    i32 24, label %entry.do.body_crit_edge30
    i32 32, label %entry.do.body_crit_edge31
  ]

entry.do.body_crit_edge31:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge30:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry.do.body_crit_edge, %entry.do.body_crit_edge30, %entry.do.body_crit_edge31
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gcm_setkey.__UNIQUE_ID_ddebug519, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gcm_setkey, %do.end)) #7
          to label %if.then8 [label %do.end], !srcloc !208

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.15, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %key, i32 noundef %keylen, i1 noundef zeroext true) #7
  br label %do.end

do.end:                                           ; preds = %if.then8, %do.body
  %key10 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %3 = call ptr @memcpy(ptr %key10, ptr %key, i32 %keylen)
  %key_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 112
  %4 = ptrtoint ptr %key_dma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %key_dma, align 4
  %dir = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 116
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %5, i32 noundef %keylen, i32 noundef %7) #7
  %keylen11 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 16
  %8 = ptrtoint ptr %keylen11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %keylen, ptr %keylen11, align 4
  tail call fastcc void @gcm_set_sh_desc(ptr noundef %aead)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %do.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gcm_setauthsize(ptr noundef %authenc, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %authsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %authsize, label %entry.cleanup_crit_edge [
    i32 4, label %entry.if.end_crit_edge
    i32 8, label %entry.if.end_crit_edge10
    i32 12, label %entry.if.end_crit_edge11
    i32 13, label %entry.if.end_crit_edge12
    i32 14, label %entry.if.end_crit_edge13
    i32 15, label %entry.if.end_crit_edge14
    i32 16, label %entry.if.end_crit_edge15
  ]

entry.if.end_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge14:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge13:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge12:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge11:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge10:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge10, %entry.if.end_crit_edge11, %entry.if.end_crit_edge12, %entry.if.end_crit_edge13, %entry.if.end_crit_edge14, %entry.if.end_crit_edge15
  %authsize2 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 3, i32 3, i32 4, i32 36
  %1 = ptrtoint ptr %authsize2 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %authsize, ptr %authsize2, align 4
  tail call fastcc void @gcm_set_sh_desc(ptr noundef %authenc)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gcm_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @gcm_crypt(ptr noundef %req, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @gcm_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @gcm_crypt(ptr noundef %req, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_setkey(ptr noundef %aead, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %keys = alloca %struct.crypto_authenc_keys, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jrdev1 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3
  %0 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jrdev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys) #7
  %6 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 1
  %7 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 2
  %8 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 3
  %9 = call ptr @memset(ptr %keys, i32 255, i32 16)
  %call3 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %keys, ptr noundef %key, i32 noundef %keylen) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp.not = icmp eq i32 %call3, 0
  br i1 %cmp.not, label %do.body, label %entry.badkey_crit_edge

entry.badkey_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %badkey

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aead_setkey.__UNIQUE_ID_ddebug516, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aead_setkey, %do.body12)) #7
          to label %if.then8 [label %do.body12], !srcloc !208

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %7, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %8, align 4
  %add = add i32 %13, %11
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aead_setkey.__UNIQUE_ID_ddebug516, ptr noundef %1, ptr noundef nonnull @.str.53, i32 noundef %add, i32 noundef %13, i32 noundef %11) #7
  br label %do.body12

do.body12:                                        ; preds = %if.then8, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aead_setkey.__UNIQUE_ID_ddebug517, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aead_setkey, %do.end29)) #7
          to label %if.then26 [label %do.end29], !srcloc !208

if.then26:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #9
  call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.54, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %key, i32 noundef %keylen, i1 noundef zeroext true) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %do.body12
  %era = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 11
  %14 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %era, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %15)
  %cmp30 = icmp sgt i32 %15, 5
  br i1 %cmp30, label %if.then31, label %if.end55

if.then31:                                        ; preds = %do.end29
  %16 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %7, align 4
  %adata = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 1
  %keylen33 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 2
  %18 = ptrtoint ptr %keylen33 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %keylen33, align 4
  %19 = ptrtoint ptr %adata to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %adata, align 4
  %and = lshr i32 %20, 16
  %shr.i = and i32 %and, 15
  %arrayidx.i = getelementptr [6 x i8], ptr @split_key_len.mdpadlen, i32 0, i32 %shr.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %arrayidx.i, align 1
  %conv.i = zext i8 %22 to i32
  %mul.i = shl nuw nsw i32 %conv.i, 1
  %keylen_pad = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 3
  %23 = ptrtoint ptr %keylen_pad to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %mul.i, ptr %keylen_pad, align 4
  %24 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %8, align 4
  %add40 = add i32 %mul.i, %25
  call void @__sanitizer_cov_trace_const_cmp4(i32 164, i32 %add40)
  %cmp41 = icmp ugt i32 %add40, 164
  br i1 %cmp41, label %if.then31.badkey_crit_edge, label %if.end43

if.then31.badkey_crit_edge:                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %badkey

if.end43:                                         ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  %key44 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %26 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %keys, align 4
  %28 = call ptr @memcpy(ptr %key44, ptr %27, i32 %17)
  %29 = ptrtoint ptr %keylen_pad to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %keylen_pad, align 4
  %add.ptr = getelementptr i8, ptr %key44, i32 %30
  %31 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %6, align 4
  %33 = call ptr @memcpy(ptr %add.ptr, ptr %32, i32 %25)
  %key_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 112
  %34 = ptrtoint ptr %key_dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %key_dma, align 4
  %36 = load i32, ptr %keylen_pad, align 4
  %add54 = add i32 %36, %25
  %dir = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 116
  %37 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dir, align 4
  call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %35, i32 noundef %add54, i32 noundef %38) #7
  br label %skip_split_key

if.end55:                                         ; preds = %do.end29
  %39 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %jrdev1, align 4
  %key57 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %adata59 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 1
  %41 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %keys, align 4
  %43 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %7, align 4
  %45 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %8, align 4
  %sub = sub i32 164, %46
  %call63 = call i32 @gen_split_key(ptr noundef %40, ptr noundef %key57, ptr noundef %adata59, ptr noundef %42, i32 noundef %44, i32 noundef %sub) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call63)
  %tobool64.not = icmp eq i32 %call63, 0
  br i1 %tobool64.not, label %if.end66, label %if.end55.badkey_crit_edge

if.end55.badkey_crit_edge:                        ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %badkey

if.end66:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %keylen_pad70 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 3
  %47 = ptrtoint ptr %keylen_pad70 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %keylen_pad70, align 4
  %add.ptr71 = getelementptr i8, ptr %key57, i32 %48
  %49 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %6, align 4
  %51 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %8, align 4
  %53 = call ptr @memcpy(ptr %add.ptr71, ptr %50, i32 %52)
  %key_dma74 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 112
  %54 = ptrtoint ptr %key_dma74 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %key_dma74, align 4
  %56 = load i32, ptr %keylen_pad70, align 4
  %add78 = add i32 %56, %52
  %dir79 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 116
  %57 = ptrtoint ptr %dir79 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dir79, align 4
  call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %55, i32 noundef %add78, i32 noundef %58) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aead_setkey.__UNIQUE_ID_ddebug518, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aead_setkey, %skip_split_key)) #7
          to label %if.then94 [label %skip_split_key], !srcloc !208

if.then94:                                        ; preds = %if.end66
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %keylen_pad70 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %keylen_pad70, align 4
  %61 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %8, align 4
  %add100 = add i32 %62, %60
  call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.55, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %key57, i32 noundef %add100, i1 noundef zeroext true) #7
  br label %skip_split_key

skip_split_key:                                   ; preds = %if.then94, %if.end66, %if.end43
  %63 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %8, align 4
  %keylen105 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 16
  %65 = ptrtoint ptr %keylen105 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %keylen105, align 4
  %66 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #7, !srcloc !209
  %call106 = call fastcc i32 @aead_set_sh_desc(ptr noundef %aead)
  br label %cleanup

badkey:                                           ; preds = %if.end55.badkey_crit_edge, %if.then31.badkey_crit_edge, %entry.badkey_crit_edge
  %67 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #7, !srcloc !209
  br label %cleanup

cleanup:                                          ; preds = %badkey, %skip_split_key
  %retval.0 = phi i32 [ -22, %badkey ], [ %call106, %skip_split_key ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_setauthsize(ptr noundef %authenc, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %authsize1 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 3, i32 3, i32 4, i32 36
  %0 = ptrtoint ptr %authsize1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %authsize, ptr %authsize1, align 4
  %call2 = tail call fastcc i32 @aead_set_sh_desc(ptr noundef %authenc)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aead_crypt(ptr noundef %req, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @aead_crypt(ptr noundef %req, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @des3_aead_setkey(ptr noundef %aead, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  %keys = alloca %struct.crypto_authenc_keys, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys) #7
  %0 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 1
  %1 = call ptr @memset(ptr %keys, i32 255, i32 16)
  %call = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %keys, ptr noundef %key, i32 noundef %keylen) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !210

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 3
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %4)
  %cmp.not.i = icmp eq i32 %4, 24
  br i1 %cmp.not.i, label %if.end.i, label %if.end.cond.end_crit_edge

if.end.cond.end_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

if.end.i:                                         ; preds = %if.end
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %8, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #7
  %9 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 1
  %10 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 2
  %11 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 3
  %12 = call ptr @memcpy(ptr %K.i.i.i, ptr %6, i32 24)
  %13 = ptrtoint ptr %K.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %K.i.i.i, align 4
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %10, align 4
  %17 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %9, align 4
  %19 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %14, i32 %16)
  %21 = icmp eq i32 %14, %16
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %20)
  %22 = icmp eq i32 %18, %20
  %tobool.not.i.i.i = and i1 %21, %22
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %if.end.i
  %23 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 5
  %24 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 4
  %25 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %24, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %23, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %26)
  %29 = icmp ne i32 %16, %26
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %28)
  %30 = icmp ne i32 %20, %28
  %tobool12.not.not.i.i.i = or i1 %29, %30
  %brmerge.i.i.i = or i1 %tobool.not.i.i, %tobool12.not.not.i.i.i
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.cond.false_crit_edge, label %lor.lhs.false.i.i.i.verify_aead_des3_key.exit.thread_crit_edge

lor.lhs.false.i.i.i.verify_aead_des3_key.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %verify_aead_des3_key.exit.thread

lor.lhs.false.i.i.i.cond.false_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.i.cond.false_crit_edge, label %land.lhs.true.i.i.i.verify_aead_des3_key.exit.thread_crit_edge

land.lhs.true.i.i.i.verify_aead_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %verify_aead_des3_key.exit.thread

land.lhs.true.i.i.i.cond.false_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

verify_aead_des3_key.exit.thread:                 ; preds = %land.lhs.true.i.i.i.verify_aead_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_aead_des3_key.exit.thread_crit_edge
  %31 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !209
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.i.i.i.cond.false_crit_edge, %lor.lhs.false.i.i.i.cond.false_crit_edge
  %32 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !209
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  %call5 = call i32 @aead_setkey(ptr noundef %aead, ptr noundef %key, i32 noundef %keylen)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %verify_aead_des3_key.exit.thread, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %call5, %cond.false ], [ -22, %if.end.cond.end_crit_edge ], [ -126, %verify_aead_des3_key.exit.thread ]
  %33 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #7, !srcloc !209
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chachapoly_setkey(ptr noundef %aead, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %1, i32 -104
  %2 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ivsize.i.i, align 8
  %add = sub i32 44, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %keylen)
  %cmp.not = icmp eq i32 %add, %keylen
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %key_virt = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 28
  %4 = ptrtoint ptr %key_virt to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %key, ptr %key_virt, align 4
  %sub.neg = add i32 %keylen, -12
  %sub2 = add i32 %sub.neg, %3
  %keylen4 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 16
  %5 = ptrtoint ptr %keylen4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %sub2, ptr %keylen4, align 4
  tail call fastcc void @chachapoly_set_sh_desc(ptr noundef %aead)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chachapoly_setauthsize(ptr noundef %aead, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %authsize)
  %cmp.not = icmp eq i32 %authsize, 16
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %authsize1 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 36
  %0 = ptrtoint ptr %authsize1 to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 16, ptr %authsize1, align 4
  tail call fastcc void @chachapoly_set_sh_desc(ptr noundef %aead)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chachapoly_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @chachapoly_crypt(ptr noundef %req, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @chachapoly_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @chachapoly_crypt(ptr noundef %req, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfc4106_set_sh_desc(ptr noundef %aead) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jrdev1 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3
  %0 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jrdev1, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %3, i32 -104
  %4 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ivsize.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %6 = load i32, ptr @caam_ptr_sz, align 4
  %mul.neg = mul i32 %6, -3
  %sub = add i32 %mul.neg, 212
  %cdata = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 12
  %keylen = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 16
  %7 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %keylen, align 4
  %sub5 = sub i32 %sub, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %authsize = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 36
  %9 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %authsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 75, i32 %sub5)
  %cmp = icmp ugt i32 %sub5, 75
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %key = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %key_virt = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 28
  %11 = ptrtoint ptr %key_virt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %key, ptr %key_virt, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %key_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 112
  %12 = ptrtoint ptr %key_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key_dma, align 4
  %key_dma15 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 24
  %14 = ptrtoint ptr %key_dma15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %key_dma15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  %.sink = phi i8 [ 1, %if.then9 ], [ 0, %if.else ]
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 32
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %15, align 4
  %sh_desc_enc = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 4
  %17 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %authsize, align 4
  tail call void @cnstr_shdsc_rfc4106_encap(ptr noundef %sh_desc_enc, ptr noundef %cdata, i32 noundef %5, i32 noundef %18, i1 noundef zeroext false) #7
  %sh_desc_enc_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 104
  %19 = ptrtoint ptr %sh_desc_enc_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sh_desc_enc_dma, align 4
  %21 = ptrtoint ptr %sh_desc_enc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sh_desc_enc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %23 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i.i = icmp eq i8 %23, 0
  %24 = lshr i32 %22, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %22, i32 %24
  %and.i.i = shl i32 %retval.0.i.i.i, 2
  %mul.i = and i32 %and.i.i, 508
  %dir = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 116
  %25 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %20, i32 noundef %mul.i, i32 noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub5)
  %cmp21 = icmp ugt i32 %sub5, 63
  br i1 %cmp21, label %if.then22, label %if.else29

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %key25 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %key_virt28 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 28
  %27 = ptrtoint ptr %key_virt28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %key25, ptr %key_virt28, align 4
  br label %if.end35

if.else29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %key_dma32 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 112
  %28 = ptrtoint ptr %key_dma32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key_dma32, align 4
  %key_dma34 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 24
  %30 = ptrtoint ptr %key_dma34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %key_dma34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else29, %if.then22
  %.sink5 = phi i8 [ 1, %if.then22 ], [ 0, %if.else29 ]
  %31 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink5, ptr %15, align 4
  %sh_desc_dec = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 3, i32 4, i32 92
  %32 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %authsize, align 4
  tail call void @cnstr_shdsc_rfc4106_decap(ptr noundef %sh_desc_dec, ptr noundef %cdata, i32 noundef %5, i32 noundef %33, i1 noundef zeroext false) #7
  %sh_desc_dec_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 108
  %34 = ptrtoint ptr %sh_desc_dec_dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sh_desc_dec_dma, align 4
  %36 = ptrtoint ptr %sh_desc_dec to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sh_desc_dec, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %38 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i.i1 = icmp eq i8 %38, 0
  %39 = lshr i32 %37, 24
  %retval.0.i.i.i2 = select i1 %tobool.not.i.i.i1, i32 %37, i32 %39
  %and.i.i3 = shl i32 %retval.0.i.i.i2, 2
  %mul.i4 = and i32 %and.i.i3, 508
  %40 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %35, i32 noundef %mul.i4, i32 noundef %41) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_rfc4106_encap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_rfc4106_decap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rfc4543_set_sh_desc(ptr noundef %aead) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jrdev1 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3
  %0 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jrdev1, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %3, i32 -104
  %4 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ivsize.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %6 = load i32, ptr @caam_ptr_sz, align 4
  %mul.neg = mul i32 %6, -3
  %sub = add i32 %mul.neg, 212
  %cdata = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 12
  %keylen = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 16
  %7 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %keylen, align 4
  %sub5 = sub i32 %sub, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %authsize = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 36
  %9 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %authsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %sub5)
  %cmp = icmp ugt i32 %sub5, 55
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %key = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %key_virt = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 28
  %11 = ptrtoint ptr %key_virt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %key, ptr %key_virt, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %key_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 112
  %12 = ptrtoint ptr %key_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key_dma, align 4
  %key_dma15 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 24
  %14 = ptrtoint ptr %key_dma15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %key_dma15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  %.sink = phi i8 [ 1, %if.then9 ], [ 0, %if.else ]
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 32
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %15, align 4
  %sh_desc_enc = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 4
  %17 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %authsize, align 4
  tail call void @cnstr_shdsc_rfc4543_encap(ptr noundef %sh_desc_enc, ptr noundef %cdata, i32 noundef %5, i32 noundef %18, i1 noundef zeroext false) #7
  %sh_desc_enc_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 104
  %19 = ptrtoint ptr %sh_desc_enc_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sh_desc_enc_dma, align 4
  %21 = ptrtoint ptr %sh_desc_enc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sh_desc_enc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %23 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i.i = icmp eq i8 %23, 0
  %24 = lshr i32 %22, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %22, i32 %24
  %and.i.i = shl i32 %retval.0.i.i.i, 2
  %mul.i = and i32 %and.i.i, 508
  %dir = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 116
  %25 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %20, i32 noundef %mul.i, i32 noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %sub5)
  %cmp21 = icmp ugt i32 %sub5, 59
  br i1 %cmp21, label %if.then22, label %if.else29

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %key25 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %key_virt28 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 28
  %27 = ptrtoint ptr %key_virt28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %key25, ptr %key_virt28, align 4
  br label %if.end35

if.else29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %key_dma32 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 112
  %28 = ptrtoint ptr %key_dma32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key_dma32, align 4
  %key_dma34 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 24
  %30 = ptrtoint ptr %key_dma34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %key_dma34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else29, %if.then22
  %.sink5 = phi i8 [ 1, %if.then22 ], [ 0, %if.else29 ]
  %31 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink5, ptr %15, align 4
  %sh_desc_dec = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 3, i32 4, i32 92
  %32 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %authsize, align 4
  tail call void @cnstr_shdsc_rfc4543_decap(ptr noundef %sh_desc_dec, ptr noundef %cdata, i32 noundef %5, i32 noundef %33, i1 noundef zeroext false) #7
  %sh_desc_dec_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 108
  %34 = ptrtoint ptr %sh_desc_dec_dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sh_desc_dec_dma, align 4
  %36 = ptrtoint ptr %sh_desc_dec to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sh_desc_dec, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %38 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i.i1 = icmp eq i8 %38, 0
  %39 = lshr i32 %37, 24
  %retval.0.i.i.i2 = select i1 %tobool.not.i.i.i1, i32 %37, i32 %39
  %and.i.i3 = shl i32 %retval.0.i.i.i2, 2
  %mul.i4 = and i32 %and.i.i3, 508
  %40 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %35, i32 noundef %mul.i4, i32 noundef %41) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_rfc4543_encap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_rfc4543_decap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @gcm_set_sh_desc(ptr noundef %aead) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jrdev1 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3
  %0 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jrdev1, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %3, i32 -104
  %4 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ivsize.i.i, align 8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %6 = load i32, ptr @caam_ptr_sz, align 4
  %mul.neg = mul i32 %6, -3
  %sub = add i32 %mul.neg, 212
  %cdata = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 12
  %keylen = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 16
  %7 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %keylen, align 4
  %sub5 = sub i32 %sub, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %authsize = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 36
  %9 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %authsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool8.not = icmp eq i32 %10, 0
  br i1 %tobool8.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_const_cmp4(i32 75, i32 %sub5)
  %cmp = icmp ugt i32 %sub5, 75
  br i1 %cmp, label %if.then9, label %if.else

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %key = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %key_virt = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 28
  %11 = ptrtoint ptr %key_virt to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %key, ptr %key_virt, align 4
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %key_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 112
  %12 = ptrtoint ptr %key_dma to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %key_dma, align 4
  %key_dma15 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 24
  %14 = ptrtoint ptr %key_dma15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %key_dma15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  %.sink = phi i8 [ 1, %if.then9 ], [ 0, %if.else ]
  %15 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 32
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %.sink, ptr %15, align 4
  %sh_desc_enc = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 4
  %17 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %authsize, align 4
  tail call void @cnstr_shdsc_gcm_encap(ptr noundef %sh_desc_enc, ptr noundef %cdata, i32 noundef %5, i32 noundef %18, i1 noundef zeroext false) #7
  %sh_desc_enc_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 104
  %19 = ptrtoint ptr %sh_desc_enc_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sh_desc_enc_dma, align 4
  %21 = ptrtoint ptr %sh_desc_enc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sh_desc_enc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %23 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i.i = icmp eq i8 %23, 0
  %24 = lshr i32 %22, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %22, i32 %24
  %and.i.i = shl i32 %retval.0.i.i.i, 2
  %mul.i = and i32 %and.i.i, 508
  %dir = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 116
  %25 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %20, i32 noundef %mul.i, i32 noundef %26) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 59, i32 %sub5)
  %cmp21 = icmp ugt i32 %sub5, 59
  br i1 %cmp21, label %if.then22, label %if.else29

if.then22:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %key25 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %key_virt28 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 28
  %27 = ptrtoint ptr %key_virt28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %key25, ptr %key_virt28, align 4
  br label %if.end35

if.else29:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %key_dma32 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 112
  %28 = ptrtoint ptr %key_dma32 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key_dma32, align 4
  %key_dma34 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 24
  %30 = ptrtoint ptr %key_dma34 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %key_dma34, align 4
  br label %if.end35

if.end35:                                         ; preds = %if.else29, %if.then22
  %.sink5 = phi i8 [ 1, %if.then22 ], [ 0, %if.else29 ]
  %31 = ptrtoint ptr %15 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %.sink5, ptr %15, align 4
  %sh_desc_dec = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 3, i32 4, i32 92
  %32 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %authsize, align 4
  tail call void @cnstr_shdsc_gcm_decap(ptr noundef %sh_desc_dec, ptr noundef %cdata, i32 noundef %5, i32 noundef %33, i1 noundef zeroext false) #7
  %sh_desc_dec_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 108
  %34 = ptrtoint ptr %sh_desc_dec_dma to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %sh_desc_dec_dma, align 4
  %36 = ptrtoint ptr %sh_desc_dec to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sh_desc_dec, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %38 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %38)
  %tobool.not.i.i.i1 = icmp eq i8 %38, 0
  %39 = lshr i32 %37, 24
  %retval.0.i.i.i2 = select i1 %tobool.not.i.i.i1, i32 %37, i32 %39
  %and.i.i3 = shl i32 %retval.0.i.i.i2, 2
  %mul.i4 = and i32 %and.i.i3, 508
  %40 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %35, i32 noundef %mul.i4, i32 noundef %41) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end35, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_gcm_encap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_gcm_decap(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @gcm_crypt(ptr noundef %req, i1 noundef zeroext %encrypt) unnamed_addr #5 align 64 {
entry:
  %all_contig = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %jrdev2 = getelementptr i8, ptr %1, i32 768
  %2 = ptrtoint ptr %jrdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %all_contig) #7
  %4 = ptrtoint ptr %all_contig to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %all_contig, align 1, !annotation !211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %5 = load i32, ptr @caam_ptr_sz, align 4
  %mul = mul i32 %5, 3
  %add4 = add i32 %mul, 44
  %call5 = call fastcc ptr @aead_edesc_alloc(ptr noundef %req, i32 noundef %add4, ptr noundef nonnull %all_contig, i1 noundef zeroext %encrypt)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %all_contig to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %all_contig, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8 = icmp ne i8 %8, 0
  %9 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %10, i32 12
  %11 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i.i = getelementptr i8, ptr %12, i32 -104
  %13 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ivsize.i.i.i, align 8
  %hw_desc.i = getelementptr inbounds %struct.aead_edesc, ptr %call5, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %cmp.i34 = icmp eq i32 %14, 12
  tail call fastcc void @init_aead_job(ptr noundef %req, ptr noundef %call5, i1 noundef zeroext %tobool8, i1 noundef zeroext %encrypt) #7
  %15 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %17 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i.i.i.i = icmp eq i8 %17, 0
  %18 = lshr i32 %16, 24
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %16, i32 %18
  %and.i.i.i.i = and i32 %retval.0.i.i.i.i.i, 127
  %add.ptr.i.i30.i = getelementptr i32, ptr %hw_desc.i, i32 %and.i.i.i.i
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 -1475591420, i32 71503016
  %19 = ptrtoint ptr %add.ptr.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i.i.i, ptr %add.ptr.i.i30.i, align 4
  %20 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %22 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i6.i.i = icmp eq i8 %22, 0
  %23 = tail call i32 @llvm.bswap.i32(i32 %21) #7
  %retval.0.i7.i.i = select i1 %tobool.not.i6.i.i, i32 %21, i32 %23
  %add.i.i = add i32 %retval.0.i7.i.i, 1
  %24 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #7
  %retval.0.i9.i.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %24
  %25 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i9.i.i, ptr %hw_desc.i, align 4
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %26 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %assoclen.i, align 8
  %28 = lshr i32 %24, 24
  %retval.0.i.i.i.i32.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %28
  %and.i.i.i33.i = and i32 %retval.0.i.i.i.i32.i, 127
  %add.ptr.i.i34.i = getelementptr i32, ptr %hw_desc.i, i32 %and.i.i.i33.i
  %29 = tail call i32 @llvm.bswap.i32(i32 %27) #7
  %retval.0.i.i35.i = select i1 %tobool.not.i6.i.i, i32 %27, i32 %29
  %30 = ptrtoint ptr %add.ptr.i.i34.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i.i35.i, ptr %add.ptr.i.i34.i, align 4
  %31 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %33 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i6.i36.i = icmp eq i8 %33, 0
  %34 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %retval.0.i7.i37.i = select i1 %tobool.not.i6.i36.i, i32 %32, i32 %34
  %add.i38.i = add i32 %retval.0.i7.i37.i, 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %add.i38.i) #7
  %retval.0.i9.i39.i = select i1 %tobool.not.i6.i36.i, i32 %add.i38.i, i32 %35
  %36 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i9.i39.i, ptr %hw_desc.i, align 4
  %37 = select i1 %encrypt, i1 %cmp.i34, i1 false
  br i1 %37, label %land.lhs.true8.i, label %if.end.if.end.i_crit_edge

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

land.lhs.true8.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %assoclen.i, align 8
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %40 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cryptlen.i, align 4
  %add.i = sub i32 0, %41
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %add.i)
  %tobool10.not.i = icmp eq i32 %39, %add.i
  %spec.select.i = select i1 %tobool10.not.i, i32 581107724, i32 580976652
  br label %if.end.i

if.end.i:                                         ; preds = %land.lhs.true8.i, %if.end.if.end.i_crit_edge
  %last.0.i = phi i32 [ 580976652, %if.end.if.end.i_crit_edge ], [ %spec.select.i, %land.lhs.true8.i ]
  %42 = lshr i32 %35, 24
  %retval.0.i.i.i.i41.i = select i1 %tobool.not.i6.i36.i, i32 %add.i38.i, i32 %42
  %and.i.i.i42.i = and i32 %retval.0.i.i.i.i41.i, 127
  %add.ptr.i.i43.i = getelementptr i32, ptr %hw_desc.i, i32 %and.i.i.i42.i
  %43 = tail call i32 @llvm.bswap.i32(i32 %last.0.i) #7
  %retval.0.i.i44.i = select i1 %tobool.not.i6.i36.i, i32 %last.0.i, i32 %43
  %44 = ptrtoint ptr %add.ptr.i.i43.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %retval.0.i.i44.i, ptr %add.ptr.i.i43.i, align 4
  %45 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %47 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i6.i45.i = icmp eq i8 %47, 0
  %48 = tail call i32 @llvm.bswap.i32(i32 %46) #7
  %retval.0.i7.i46.i = select i1 %tobool.not.i6.i45.i, i32 %46, i32 %48
  %add.i47.i = add i32 %retval.0.i7.i46.i, 1
  %49 = tail call i32 @llvm.bswap.i32(i32 %add.i47.i) #7
  %retval.0.i9.i48.i = select i1 %tobool.not.i6.i45.i, i32 %add.i47.i, i32 %49
  %50 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %retval.0.i9.i48.i, ptr %hw_desc.i, align 4
  br i1 %cmp.i34, label %if.end.i.if.then.i.i_crit_edge, label %if.end14.i

if.end.i.if.then.i.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end14.i:                                       ; preds = %if.end.i
  %key.i = getelementptr i8, ptr %10, i32 588
  %keylen.i = getelementptr i8, ptr %10, i32 800
  %51 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %keylen.i, align 4
  %add.ptr.i = getelementptr i8, ptr %key.i, i32 %52
  %53 = lshr i32 %49, 24
  %retval.0.i.i.i.i50.i = select i1 %tobool.not.i6.i45.i, i32 %add.i47.i, i32 %53
  %and.i.i.i51.i = and i32 %retval.0.i.i.i.i50.i, 127
  %add.ptr.i.i52.i = getelementptr i32, ptr %hw_desc.i, i32 %and.i.i.i51.i
  %54 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %54, i32 4)
  %55 = load i32, ptr %add.ptr.i, align 1
  %56 = ptrtoint ptr %add.ptr.i.i52.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %add.ptr.i.i52.i, align 4
  %57 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %59 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool.not.i.i.i = icmp eq i8 %59, 0
  %60 = tail call i32 @llvm.bswap.i32(i32 %58) #7
  %retval.0.i.i53.i = select i1 %tobool.not.i.i.i, i32 %58, i32 %60
  %add2.i.i = add i32 %retval.0.i.i53.i, 1
  %61 = tail call i32 @llvm.bswap.i32(i32 %add2.i.i) #7
  %retval.0.i10.i.i = select i1 %tobool.not.i.i.i, i32 %add2.i.i, i32 %61
  %62 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %retval.0.i10.i.i, ptr %hw_desc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %if.end14.i.init_gcm_job.exit_crit_edge, label %if.end14.i.if.then.i.i_crit_edge

if.end14.i.if.then.i.i_crit_edge:                 ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.end14.i.init_gcm_job.exit_crit_edge:           ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_gcm_job.exit

if.then.i.i:                                      ; preds = %if.end14.i.if.then.i.i_crit_edge, %if.end.i.if.then.i.i_crit_edge
  %.in.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %63 = ptrtoint ptr %.in.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %.in.i, align 32
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %65 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %65)
  %tobool.not.i.i.i.i54.i = icmp eq i8 %65, 0
  %66 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %hw_desc.i, align 4
  %68 = lshr i32 %67, 24
  %retval.0.i.i.i.i55.i = select i1 %tobool.not.i.i.i.i54.i, i32 %67, i32 %68
  %and.i.i.i56.i = and i32 %retval.0.i.i.i.i55.i, 127
  %add.ptr.i.i57.i = getelementptr i32, ptr %hw_desc.i, i32 %and.i.i.i56.i
  %69 = call ptr @memcpy(ptr %add.ptr.i.i57.i, ptr %64, i32 %14)
  br label %init_gcm_job.exit

init_gcm_job.exit:                                ; preds = %if.then.i.i, %if.end14.i.init_gcm_job.exit_crit_edge
  %70 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %72 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %72)
  %tobool.not.i.i58.i = icmp eq i8 %72, 0
  %73 = tail call i32 @llvm.bswap.i32(i32 %71) #7
  %retval.0.i.i59.i = select i1 %tobool.not.i.i58.i, i32 %71, i32 %73
  %sub.i.i = add i32 %14, 3
  %div8.i.i = lshr i32 %sub.i.i, 2
  %add2.i60.i = add i32 %retval.0.i.i59.i, %div8.i.i
  %74 = tail call i32 @llvm.bswap.i32(i32 %add2.i60.i) #7
  %retval.0.i10.i61.i = select i1 %tobool.not.i.i58.i, i32 %add2.i60.i, i32 %74
  %75 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %retval.0.i10.i61.i, ptr %hw_desc.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @gcm_crypt.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@gcm_crypt, %do.end)) #7
          to label %if.then16 [label %do.end], !srcloc !208

if.then16:                                        ; preds = %init_gcm_job.exit
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %78 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i.i35 = icmp eq i8 %78, 0
  %79 = lshr i32 %77, 24
  %retval.0.i.i.i36 = select i1 %tobool.not.i.i.i35, i32 %77, i32 %79
  %and.i.i = shl i32 %retval.0.i.i.i36, 2
  %mul.i = and i32 %and.i.i, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %hw_desc.i, i32 noundef %mul.i, i1 noundef zeroext true) #7
  br label %do.end

do.end:                                           ; preds = %if.then16, %init_gcm_job.exit
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %80 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %__ctx.i.i, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %82 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %83, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %84 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %driver_data.i.i, align 4
  %engine.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %85, i32 0, i32 18
  %86 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %engine.i, align 4
  %call3.i = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %87, ptr noundef %req) #7
  br label %if.end.i38

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %hw_desc.i37 = getelementptr inbounds %struct.aead_edesc, ptr %81, i32 0, i32 8
  %call4.i = tail call i32 @caam_jr_enqueue(ptr noundef %3, ptr noundef %hw_desc.i37, ptr noundef nonnull @aead_crypt_done, ptr noundef %req) #7
  br label %if.end.i38

if.end.i38:                                       ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call3.i, %if.then.i ], [ %call4.i, %if.else.i ]
  %88 = zext i32 %ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %88, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %ret.0.i, label %if.then6.i [
    i32 -115, label %if.end.i38.cleanup_crit_edge
    i32 -16, label %if.end.i38.cleanup_crit_edge40
  ]

if.end.i38.cleanup_crit_edge40:                   ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i38.cleanup_crit_edge:                     ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i38
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @aead_unmap(ptr noundef %3, ptr noundef %81, ptr noundef %req) #7
  %89 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %__ctx.i.i, align 4
  tail call void @kfree(ptr noundef %90) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %if.end.i38.cleanup_crit_edge, %if.end.i38.cleanup_crit_edge40, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %ret.0.i, %if.end.i38.cleanup_crit_edge ], [ %ret.0.i, %if.end.i38.cleanup_crit_edge40 ], [ %ret.0.i, %if.then6.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %all_contig) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @aead_edesc_alloc(ptr nocapture noundef %req, i32 noundef %desc_bytes, ptr nocapture noundef writeonly %all_contig_ptr, i1 noundef zeroext %encrypt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %jrdev2 = getelementptr i8, ptr %1, i32 768
  %2 = ptrtoint ptr %jrdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev2, align 4
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %flags4 = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %4 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags4, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %authsize5 = getelementptr i8, ptr %1, i32 820
  %6 = ptrtoint ptr %authsize5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %authsize5, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %8 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst, align 8
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 4
  %cmp.not = icmp eq ptr %9, %11
  %assoclen40 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %assoclen40 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %assoclen40, align 8
  %cryptlen41 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %cryptlen41 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cryptlen41, align 4
  br i1 %cmp.not, label %if.else, label %if.then, !prof !210

if.then:                                          ; preds = %entry
  %add = add i32 %15, %13
  %sub = sub i32 0, %7
  %cond9 = select i1 %encrypt, i32 %7, i32 %sub
  %add10 = add i32 %add, %cond9
  %conv = sext i32 %add to i64
  %call12 = tail call i32 @sg_nents_for_len(ptr noundef %11, i64 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end, label %if.end, !prof !212

do.end:                                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %add) #10
  %16 = inttoptr i32 %call12 to ptr
  br label %cleanup

if.end:                                           ; preds = %if.then
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst, align 8
  %conv24 = sext i32 %add10 to i64
  %call25 = tail call i32 @sg_nents_for_len(ptr noundef %18, i64 noundef %conv24) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call25)
  %cmp26 = icmp slt i32 %call25, 0
  br i1 %cmp26, label %do.end37, label %if.end.if.end67_crit_edge, !prof !212

if.end.if.end67_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

do.end37:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %add10) #10
  %19 = inttoptr i32 %call25 to ptr
  br label %cleanup

if.else:                                          ; preds = %entry
  %spec.select = select i1 %encrypt, i32 %7, i32 0
  %add42 = add i32 %13, %spec.select
  %add49 = add i32 %add42, %15
  %conv51 = sext i32 %add49 to i64
  %call52 = tail call i32 @sg_nents_for_len(ptr noundef %9, i64 noundef %conv51) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call52)
  %cmp53 = icmp slt i32 %call52, 0
  br i1 %cmp53, label %do.end64, label %if.else.if.end67_crit_edge, !prof !212

if.else.if.end67_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end67

do.end64:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %add49) #10
  %20 = inttoptr i32 %call52 to ptr
  br label %cleanup

if.end67:                                         ; preds = %if.else.if.end67_crit_edge, %if.end.if.end67_crit_edge
  %src_nents.0 = phi i32 [ %call12, %if.end.if.end67_crit_edge ], [ %call52, %if.else.if.end67_crit_edge ]
  %dst_nents.0 = phi i32 [ %call25, %if.end.if.end67_crit_edge ], [ 0, %if.else.if.end67_crit_edge ]
  %src_len.0 = phi i32 [ %add, %if.end.if.end67_crit_edge ], [ %add49, %if.else.if.end67_crit_edge ]
  %dst_len.0 = phi i32 [ %add10, %if.end.if.end67_crit_edge ], [ 0, %if.else.if.end67_crit_edge ]
  %21 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src, align 4
  %23 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dst, align 8
  %cmp70 = icmp eq ptr %22, %24
  br i1 %cmp70, label %if.then78, label %if.else96, !prof !210

if.then78:                                        ; preds = %if.end67
  %call80 = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %22, i32 noundef %src_nents.0, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call80)
  %tobool81.not = icmp eq i32 %call80, 0
  br i1 %tobool81.not, label %do.end93, label %if.then78.if.end140.thread_crit_edge, !prof !212

if.then78.if.end140.thread_crit_edge:             ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140.thread

do.end93:                                         ; preds = %if.then78
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.else96:                                        ; preds = %if.end67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_nents.0)
  %tobool97.not = icmp eq i32 %src_nents.0, 0
  br i1 %tobool97.not, label %if.else96.if.end117_crit_edge, label %if.then98

if.else96.if.end117_crit_edge:                    ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

if.then98:                                        ; preds = %if.else96
  %call100 = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %22, i32 noundef %src_nents.0, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool101.not = icmp eq i32 %call100, 0
  br i1 %tobool101.not, label %do.end113, label %if.then98.if.end117_crit_edge, !prof !212

if.then98.if.end117_crit_edge:                    ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end117

do.end113:                                        ; preds = %if.then98
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end117:                                        ; preds = %if.then98.if.end117_crit_edge, %if.else96.if.end117_crit_edge
  %mapped_src_nents.0 = phi i32 [ %call100, %if.then98.if.end117_crit_edge ], [ 0, %if.else96.if.end117_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_nents.0)
  %tobool118.not = icmp eq i32 %dst_nents.0, 0
  br i1 %tobool118.not, label %if.end117.if.end140.thread_crit_edge, label %if.then119

if.end117.if.end140.thread_crit_edge:             ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end140.thread

if.then119:                                       ; preds = %if.end117
  %25 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dst, align 8
  %call121 = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %26, i32 noundef %dst_nents.0, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call121)
  %tobool122.not = icmp eq i32 %call121, 0
  br i1 %tobool122.not, label %do.end134, label %if.end140, !prof !212

do.end134:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.33) #10
  %27 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %28, i32 noundef %src_nents.0, i32 noundef 1, i32 noundef 0) #7
  br label %cleanup

if.end140.thread:                                 ; preds = %if.end117.if.end140.thread_crit_edge, %if.then78.if.end140.thread_crit_edge
  %mapped_src_nents.1.ph = phi i32 [ %mapped_src_nents.0, %if.end117.if.end140.thread_crit_edge ], [ %call80, %if.then78.if.end140.thread_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mapped_src_nents.1.ph)
  %cmp141325 = icmp sgt i32 %mapped_src_nents.1.ph, 1
  %spec.select317326 = select i1 %cmp141325, i32 %mapped_src_nents.1.ph, i32 0
  br label %if.else152

if.end140:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mapped_src_nents.0)
  %cmp141 = icmp sgt i32 %mapped_src_nents.0, 1
  %spec.select317 = select i1 %cmp141, i32 %mapped_src_nents.0, i32 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call121)
  %cmp147 = icmp sgt i32 %call121, 1
  br i1 %cmp147, label %if.then149, label %if.end140.if.else152_crit_edge

if.end140.if.else152_crit_edge:                   ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else152

if.then149:                                       ; preds = %if.end140
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add nuw i32 %call121, 3
  %and.i = and i32 %add.i, -4
  %add151 = add i32 %and.i, %spec.select317
  br label %if.end154

if.else152:                                       ; preds = %if.end140.if.else152_crit_edge, %if.end140.thread
  %spec.select317334 = phi i32 [ %spec.select317326, %if.end140.thread ], [ %spec.select317, %if.end140.if.else152_crit_edge ]
  %cmp141333 = phi i1 [ %cmp141325, %if.end140.thread ], [ %cmp141, %if.end140.if.else152_crit_edge ]
  %mapped_dst_nents.0331 = phi i32 [ 0, %if.end140.thread ], [ %call121, %if.end140.if.else152_crit_edge ]
  %mapped_src_nents.1329 = phi i32 [ %mapped_src_nents.1.ph, %if.end140.thread ], [ %mapped_src_nents.0, %if.end140.if.else152_crit_edge ]
  %add.i318 = add nuw i32 %spec.select317334, 3
  %and.i319 = and i32 %add.i318, -4
  br label %if.end154

if.end154:                                        ; preds = %if.else152, %if.then149
  %cmp147335 = phi i1 [ true, %if.then149 ], [ false, %if.else152 ]
  %cmp141332 = phi i1 [ %cmp141, %if.then149 ], [ %cmp141333, %if.else152 ]
  %mapped_dst_nents.0330 = phi i32 [ %call121, %if.then149 ], [ %mapped_dst_nents.0331, %if.else152 ]
  %mapped_src_nents.1328 = phi i32 [ %mapped_src_nents.0, %if.then149 ], [ %mapped_src_nents.1329, %if.else152 ]
  %sec4_sg_len.0 = phi i32 [ %add151, %if.then149 ], [ %and.i319, %if.else152 ]
  %mul = shl i32 %sec4_sg_len.0, 4
  %or.i = select i1 %tobool.not, i32 2849, i32 3521
  %add155 = add i32 %desc_bytes, 32
  %add156 = add i32 %add155, %mul
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add156, i32 noundef %or.i) #11
  %tobool158.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool158.not, label %if.then159, label %if.end163

if.then159:                                       ; preds = %if.end154
  %29 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %src, align 4
  %31 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dst, align 8
  %cmp.not.i = icmp eq ptr %32, %30
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then159
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_nents.0)
  %tobool.not.i = icmp eq i32 %src_nents.0, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %30, i32 noundef %src_nents.0, i32 noundef 1, i32 noundef 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_nents.0)
  %tobool2.not.i = icmp eq i32 %dst_nents.0, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %32, i32 noundef %dst_nents.0, i32 noundef 2, i32 noundef 0) #7
  br label %cleanup

if.else.i:                                        ; preds = %if.then159
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %30, i32 noundef %src_nents.0, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

if.end163:                                        ; preds = %if.end154
  %33 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %src_nents.0, ptr %call9.i.i, align 128
  %dst_nents165 = getelementptr inbounds %struct.aead_edesc, ptr %call9.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %dst_nents165 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %dst_nents.0, ptr %dst_nents165, align 4
  %mapped_src_nents166 = getelementptr inbounds %struct.aead_edesc, ptr %call9.i.i, i32 0, i32 2
  %35 = ptrtoint ptr %mapped_src_nents166 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %mapped_src_nents.1328, ptr %mapped_src_nents166, align 8
  %mapped_dst_nents167 = getelementptr inbounds %struct.aead_edesc, ptr %call9.i.i, i32 0, i32 3
  %36 = ptrtoint ptr %mapped_dst_nents167 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %mapped_dst_nents.0330, ptr %mapped_dst_nents167, align 4
  %add.ptr = getelementptr i8, ptr %call9.i.i, i32 32
  %add.ptr168 = getelementptr i8, ptr %add.ptr, i32 %desc_bytes
  %sec4_sg = getelementptr inbounds %struct.aead_edesc, ptr %call9.i.i, i32 0, i32 7
  %37 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %add.ptr168, ptr %sec4_sg, align 4
  %38 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call9.i.i, ptr %__ctx.i, align 4
  %lnot172 = xor i1 %cmp141332, true
  %frombool174 = zext i1 %lnot172 to i8
  %39 = ptrtoint ptr %all_contig_ptr to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %frombool174, ptr %all_contig_ptr, align 1
  br i1 %cmp141332, label %if.then177, label %if.end163.if.end182_crit_edge

if.end163.if.end182_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end182

if.then177:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %src, align 4
  %42 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %sec4_sg, align 4
  tail call fastcc void @sg_to_sec4_sg_last(ptr noundef %41, i32 noundef %src_len.0, ptr noundef %43)
  br label %if.end182

if.end182:                                        ; preds = %if.then177, %if.end163.if.end182_crit_edge
  %sec4_sg_index.0 = phi i32 [ %mapped_src_nents.1328, %if.then177 ], [ 0, %if.end163.if.end182_crit_edge ]
  br i1 %cmp147335, label %if.then185, label %if.end182.if.end189_crit_edge

if.end182.if.end189_crit_edge:                    ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

if.then185:                                       ; preds = %if.end182
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dst, align 8
  %46 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %sec4_sg, align 4
  %add.ptr188 = getelementptr %struct.sec4_sg_entry, ptr %47, i32 %sec4_sg_index.0
  tail call fastcc void @sg_to_sec4_sg_last(ptr noundef %45, i32 noundef %dst_len.0, ptr noundef %add.ptr188)
  br label %if.end189

if.end189:                                        ; preds = %if.then185, %if.end182.if.end189_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool190.not = icmp eq i32 %mul, 0
  br i1 %tobool190.not, label %if.end189.cleanup_crit_edge, label %if.end192

if.end189.cleanup_crit_edge:                      ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end192:                                        ; preds = %if.end189
  %48 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %sec4_sg, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %49) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end192
  %.b51.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i320, !prof !210

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i320:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %50 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %51, null
  br i1 %tobool.not.i.i, label %if.end.i.i321, label %if.then.i320.dev_name.exit.i_crit_edge

if.then.i320.dev_name.exit.i_crit_edge:           ; preds = %if.then.i320
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i321:                                    ; preds = %if.then.i320
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i321, %if.then.i320.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %53, %if.end.i.i321 ], [ %51, %if.then.i320.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %sec4_sg_dma341 = getelementptr inbounds %struct.aead_edesc, ptr %call9.i.i, i32 0, i32 6
  %54 = ptrtoint ptr %sec4_sg_dma341 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 -1, ptr %sec4_sg_dma341, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #7
  br label %do.end201

dma_map_single_attrs.exit:                        ; preds = %if.end192
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %49, i32 noundef %mul) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %55 = load ptr, ptr @mem_map, align 4
  %56 = ptrtoint ptr %49 to i32
  %sub.i = add i32 %56, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %55, i32 %shr.i
  %and.i322 = and i32 %56, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i322, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #7
  %sec4_sg_dma = getelementptr inbounds %struct.aead_edesc, ptr %call9.i.i, i32 0, i32 6
  %57 = ptrtoint ptr %sec4_sg_dma to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %call41.i, ptr %sec4_sg_dma, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end201_crit_edge, label %if.end203

dma_map_single_attrs.exit.do.end201_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end201

do.end201:                                        ; preds = %dma_map_single_attrs.exit.do.end201_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.36) #10
  tail call fastcc void @aead_unmap(ptr noundef %3, ptr noundef nonnull %call9.i.i, ptr noundef %req)
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup

if.end203:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sec4_sg_bytes204 = getelementptr inbounds %struct.aead_edesc, ptr %call9.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %sec4_sg_bytes204 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %mul, ptr %sec4_sg_bytes204, align 16
  br label %cleanup

cleanup:                                          ; preds = %if.end203, %do.end201, %if.end189.cleanup_crit_edge, %if.else.i, %if.then3.i, %if.end.i.cleanup_crit_edge, %do.end134, %do.end113, %do.end93, %do.end64, %do.end37, %do.end
  %retval.0 = phi ptr [ %16, %do.end ], [ %19, %do.end37 ], [ inttoptr (i32 -12 to ptr), %do.end93 ], [ inttoptr (i32 -12 to ptr), %do.end201 ], [ %call9.i.i, %if.end203 ], [ inttoptr (i32 -12 to ptr), %do.end113 ], [ inttoptr (i32 -12 to ptr), %do.end134 ], [ %20, %do.end64 ], [ %call9.i.i, %if.end189.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then3.i ], [ inttoptr (i32 -12 to ptr), %if.else.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @caam_unmap(ptr noundef %dev, ptr noundef %src, ptr noundef %dst, i32 noundef %src_nents, i32 noundef %dst_nents, i32 noundef %iv_dma, i32 noundef %ivsize, i32 noundef %sec4_sg_dma, i32 noundef %sec4_sg_bytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cmp.not = icmp eq ptr %dst, %src
  br i1 %cmp.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_nents)
  %tobool.not = icmp eq i32 %src_nents, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then1

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then1:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %src, i32 noundef %src_nents, i32 noundef 1, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then1, %if.then.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_nents)
  %tobool2.not = icmp eq i32 %dst_nents, 0
  br i1 %tobool2.not, label %if.end.if.end5_crit_edge, label %if.then3

if.end.if.end5_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %dst, i32 noundef %dst_nents, i32 noundef 2, i32 noundef 0) #7
  br label %if.end5

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %dst, i32 noundef %src_nents, i32 noundef 0, i32 noundef 0) #7
  br label %if.end5

if.end5:                                          ; preds = %if.else, %if.then3, %if.end.if.end5_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iv_dma)
  %tobool6.not = icmp eq i32 %iv_dma, 0
  br i1 %tobool6.not, label %if.end5.if.end8_crit_edge, label %if.then7

if.end5.if.end8_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %iv_dma, i32 noundef %ivsize, i32 noundef 0, i32 noundef 0) #7
  br label %if.end8

if.end8:                                          ; preds = %if.then7, %if.end5.if.end8_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sec4_sg_bytes)
  %tobool9.not = icmp eq i32 %sec4_sg_bytes, 0
  br i1 %tobool9.not, label %if.end8.if.end11_crit_edge, label %if.then10

if.end8.if.end11_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %sec4_sg_dma, i32 noundef %sec4_sg_bytes, i32 noundef 1, i32 noundef 0) #7
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.end8.if.end11_crit_edge
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sg_to_sec4_sg_last(ptr noundef %sg, i32 noundef %len, ptr noundef %sec4_sg_ptr) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not1.i = icmp eq i32 %len, 0
  br i1 %tobool.not1.i, label %entry.sg_to_sec4_sg.exit_crit_edge, label %entry.while.body.i_crit_edge

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

entry.sg_to_sec4_sg.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sg_to_sec4_sg.exit

while.body.i:                                     ; preds = %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %sg.addr.06.i = phi ptr [ %call.i, %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge ], [ %sg, %entry.while.body.i_crit_edge ]
  %len.addr.05.i = phi i32 [ %sub.i, %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge ], [ %len, %entry.while.body.i_crit_edge ]
  %sec4_sg_ptr.addr.02.i = phi ptr [ %incdec.ptr.i, %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge ], [ %sec4_sg_ptr, %entry.while.body.i_crit_edge ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.06.i, i32 0, i32 4
  %0 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_length.i, align 4
  %2 = tail call i32 @llvm.smin.i32(i32 %1, i32 %len.addr.05.i) #7
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.06.i, i32 0, i32 3
  %3 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dma_address.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %5 = load i8, ptr @caam_dpaa2, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not.i.i = icmp eq i8 %5, 0
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i = zext i32 %4 to i64
  %6 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i.i) #7
  %7 = ptrtoint ptr %sec4_sg_ptr.addr.02.i to i32
  call void @__asan_store8_noabort(i32 %7)
  store i64 %6, ptr %sec4_sg_ptr.addr.02.i, align 8
  %format_offset.i.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 3
  %8 = ptrtoint ptr %format_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %format_offset.i.i.i.i, align 2
  %10 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %len1.i.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 1
  %11 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %len1.i.i.i.i, align 8
  %bpid1.i.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 2
  %12 = ptrtoint ptr %bpid1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %bpid1.i.i.i.i, align 4
  %14 = and i16 %13, 192
  store i16 %14, ptr %bpid1.i.i.i.i, align 4
  %15 = and i16 %9, 64
  %16 = ptrtoint ptr %format_offset.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %format_offset.i.i.i.i, align 2
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %while.body.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_imx to i32))
  %17 = load i8, ptr @caam_imx, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool.not.i.i.i = icmp eq i8 %17, 0
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %18 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i.i.i.i = icmp eq i8 %18, 0
  %19 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %4, i32 %19
  %conv.i.i.i = zext i32 %retval.0.i.i.i.i to i64
  %shl.i.i.i = shl nuw i64 %conv.i.i.i, 32
  br label %cpu_to_caam_dma64.exit.i.i

if.end.i.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i.i.i = zext i32 %4 to i64
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %20 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i4.i.i.i = icmp eq i8 %20, 0
  %21 = tail call i64 @llvm.bswap.i64(i64 %conv1.i.i.i) #7
  %retval.0.i5.i.i.i = select i1 %tobool.not.i4.i.i.i, i64 %conv1.i.i.i, i64 %21
  br label %cpu_to_caam_dma64.exit.i.i

cpu_to_caam_dma64.exit.i.i:                       ; preds = %if.end.i.i.i, %if.then.i.i.i
  %retval.0.i1.i.i = phi i64 [ %shl.i.i.i, %if.then.i.i.i ], [ %retval.0.i5.i.i.i, %if.end.i.i.i ]
  %22 = ptrtoint ptr %sec4_sg_ptr.addr.02.i to i32
  call void @__asan_store8_noabort(i32 %22)
  store i64 %retval.0.i1.i.i, ptr %sec4_sg_ptr.addr.02.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %23 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i2.i.i = icmp eq i8 %23, 0
  %24 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %retval.0.i3.i.i = select i1 %tobool.not.i2.i.i, i32 %2, i32 %24
  %len2.i.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 1
  %25 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %retval.0.i3.i.i, ptr %len2.i.i, align 8
  %bpid_offset.i.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 2
  %26 = ptrtoint ptr %bpid_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %bpid_offset.i.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %cpu_to_caam_dma64.exit.i.i, %if.then.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sg_to_sec4_sg_last, %dma_to_sec4_sg_one.exit.i)) #7
          to label %if.then9.i.i [label %dma_to_sec4_sg_one.exit.i], !srcloc !208

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sec4_sg_ptr.addr.02.i, i32 noundef 16, i1 noundef zeroext true) #7
  br label %dma_to_sec4_sg_one.exit.i

dma_to_sec4_sg_one.exit.i:                        ; preds = %if.then9.i.i, %do.body.i.i
  %incdec.ptr.i = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 1
  %call.i = tail call ptr @sg_next(ptr noundef %sg.addr.06.i) #7
  %sub.i = sub i32 %len.addr.05.i, %2
  %tobool.not.i = icmp eq i32 %sub.i, 0
  br i1 %tobool.not.i, label %dma_to_sec4_sg_one.exit.i.sg_to_sec4_sg.exit_crit_edge, label %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge

dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge: ; preds = %dma_to_sec4_sg_one.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

dma_to_sec4_sg_one.exit.i.sg_to_sec4_sg.exit_crit_edge: ; preds = %dma_to_sec4_sg_one.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sg_to_sec4_sg.exit

sg_to_sec4_sg.exit:                               ; preds = %dma_to_sec4_sg_one.exit.i.sg_to_sec4_sg.exit_crit_edge, %entry.sg_to_sec4_sg.exit_crit_edge
  %sec4_sg_ptr.addr.0.lcssa.i = phi ptr [ %sec4_sg_ptr, %entry.sg_to_sec4_sg.exit_crit_edge ], [ %incdec.ptr.i, %dma_to_sec4_sg_one.exit.i.sg_to_sec4_sg.exit_crit_edge ]
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %27 = load i8, ptr @caam_dpaa2, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i1 = icmp eq i8 %27, 0
  br i1 %tobool.not.i1, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %sg_to_sec4_sg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.0.lcssa.i, i32 -1
  %format_offset.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %add.ptr.i, i32 0, i32 3
  %28 = ptrtoint ptr %format_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %format_offset.i.i, align 2
  %or.i.i = or i16 %29, 128
  store i16 %or.i.i, ptr %format_offset.i.i, align 2
  br label %sg_to_sec4_set_last.exit

if.else.i:                                        ; preds = %sg_to_sec4_sg.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %30 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i2 = icmp eq i8 %30, 0
  %retval.0.i.i = select i1 %tobool.not.i.i2, i32 1073741824, i32 64
  %len.i = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.0.lcssa.i, i32 -1, i32 1
  %31 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len.i, align 8
  %or.i = or i32 %retval.0.i.i, %32
  store i32 %or.i, ptr %len.i, align 8
  br label %sg_to_sec4_set_last.exit

sg_to_sec4_set_last.exit:                         ; preds = %if.else.i, %if.then.i
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @aead_unmap(ptr noundef %dev, ptr nocapture noundef readonly %edesc, ptr nocapture noundef readonly %req) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst, align 8
  %4 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %edesc, align 4
  %dst_nents = getelementptr inbounds %struct.aead_edesc, ptr %edesc, i32 0, i32 1
  %6 = ptrtoint ptr %dst_nents to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_nents, align 4
  %sec4_sg_dma = getelementptr inbounds %struct.aead_edesc, ptr %edesc, i32 0, i32 6
  %8 = ptrtoint ptr %sec4_sg_dma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sec4_sg_dma, align 4
  %sec4_sg_bytes = getelementptr inbounds %struct.aead_edesc, ptr %edesc, i32 0, i32 4
  %10 = ptrtoint ptr %sec4_sg_bytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sec4_sg_bytes, align 4
  %cmp.not.i = icmp eq ptr %3, %1
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not.i = icmp eq i32 %5, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %1, i32 noundef %5, i32 noundef 1, i32 noundef 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool2.not.i = icmp eq i32 %7, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end5.i_crit_edge, label %if.then3.i

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %3, i32 noundef %7, i32 noundef 2, i32 noundef 0) #7
  br label %if.end5.i

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %1, i32 noundef %5, i32 noundef 0, i32 noundef 0) #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i, %if.then3.i, %if.end.i.if.end5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool9.not.i = icmp eq i32 %11, 0
  br i1 %tobool9.not.i, label %if.end5.i.caam_unmap.exit_crit_edge, label %if.then10.i

if.end5.i.caam_unmap.exit_crit_edge:              ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %caam_unmap.exit

if.then10.i:                                      ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %9, i32 noundef %11, i32 noundef 1, i32 noundef 0) #7
  br label %caam_unmap.exit

caam_unmap.exit:                                  ; preds = %if.then10.i, %if.end5.i.caam_unmap.exit_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_aead_job(ptr nocapture noundef readonly %req, ptr nocapture noundef %edesc, i1 noundef zeroext %all_contig, i1 noundef zeroext %encrypt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %authsize3 = getelementptr i8, ptr %1, i32 820
  %2 = ptrtoint ptr %authsize3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %authsize3, align 4
  %hw_desc = getelementptr inbounds %struct.aead_edesc, ptr %edesc, i32 0, i32 8
  %cond.v = select i1 %encrypt, i32 140, i32 364
  %cond = getelementptr i8, ptr %1, i32 %cond.v
  %cond10.in.v = select i1 %encrypt, i32 752, i32 756
  %cond10.in = getelementptr i8, ptr %1, i32 %cond10.in.v
  %4 = ptrtoint ptr %cond10.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %cond10 = load i32, ptr %cond10.in, align 4
  %5 = ptrtoint ptr %cond to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cond, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %7 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i.i = icmp eq i8 %7, 0
  %8 = lshr i32 %6, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %6, i32 %8
  %9 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %hw_desc, align 4
  %11 = lshr i32 %10, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i, i32 %10, i32 %11
  %and.i.i = and i32 %retval.0.i.i.i, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.44, i32 0, i32 7)) #10
  %and.i = shl i32 %retval.0.i.i, 16
  %shl.i = and i32 %and.i, 8323072
  %add.i.i.i = or i32 %shl.i, -1333781503
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %12 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i.i.i.i = icmp eq i8 %12, 0
  %13 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #7
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %add.i.i.i, i32 %13
  %add.ptr.i.i.i = getelementptr %struct.aead_edesc, ptr %edesc, i32 1, i32 1
  %14 = tail call i32 @llvm.bswap.i32(i32 %cond10) #7
  %retval.0.i.i.i1.i = select i1 %tobool.not.i.i.i.i, i32 %cond10, i32 %14
  %15 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %retval.0.i.i.i1.i, ptr %add.ptr.i.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %16 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i.i2.i = icmp eq i8 %16, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i.i.i) #7
  %retval.0.i.i3.i = select i1 %tobool.not.i.i2.i, i32 %retval.0.i.i.i.i, i32 %17
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %18 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i = lshr i32 %18, 2
  %add.i.i = add nuw nsw i32 %retval.0.i.i3.i, %div14.i.i
  %19 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #7
  %retval.0.i23.i.i = select i1 %tobool.not.i.i2.i, i32 %add.i.i, i32 %19
  %20 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %retval.0.i23.i.i, ptr %hw_desc, align 4
  br i1 %all_contig, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %mapped_src_nents = getelementptr inbounds %struct.aead_edesc, ptr %edesc, i32 0, i32 2
  %21 = ptrtoint ptr %mapped_src_nents to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mapped_src_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool13.not = icmp eq i32 %22, 0
  br i1 %tobool13.not, label %if.then.if.end_crit_edge, label %cond.true14

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

cond.true14:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %23 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %src, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma_address, align 4
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %sec4_sg_dma = getelementptr inbounds %struct.aead_edesc, ptr %edesc, i32 0, i32 6
  %27 = ptrtoint ptr %sec4_sg_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sec4_sg_dma, align 4
  %mapped_src_nents18 = getelementptr inbounds %struct.aead_edesc, ptr %edesc, i32 0, i32 2
  %29 = ptrtoint ptr %mapped_src_nents18 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mapped_src_nents18, align 4
  %phi.bo = shl i32 %30, 4
  br label %if.end

if.end:                                           ; preds = %if.else, %cond.true14, %if.then.if.end_crit_edge
  %in_options.0 = phi i32 [ 16777216, %if.else ], [ 0, %if.then.if.end_crit_edge ], [ 0, %cond.true14 ]
  %src_dma.0 = phi i32 [ %28, %if.else ], [ 0, %if.then.if.end_crit_edge ], [ %26, %cond.true14 ]
  %sec4_sg_index.0 = phi i32 [ %phi.bo, %if.else ], [ 0, %if.then.if.end_crit_edge ], [ 0, %cond.true14 ]
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %31 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %assoclen, align 8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %33 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cryptlen, align 4
  %add19 = add i32 %34, %32
  tail call fastcc void @append_seq_in_ptr(ptr noundef %hw_desc, i32 noundef %src_dma.0, i32 noundef %add19, i32 noundef %in_options.0)
  %src20 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %35 = ptrtoint ptr %src20 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %src20, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %37 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dst, align 8
  %cmp.not = icmp eq ptr %36, %38
  br i1 %cmp.not, label %if.end.if.end37_crit_edge, label %if.then23, !prof !210

if.end.if.end37_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then23:                                        ; preds = %if.end
  %mapped_dst_nents = getelementptr inbounds %struct.aead_edesc, ptr %edesc, i32 0, i32 3
  %39 = ptrtoint ptr %mapped_dst_nents to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mapped_dst_nents, align 4
  %41 = zext i32 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %40, label %if.else32 [
    i32 0, label %if.then23.if.end37_crit_edge
    i32 1, label %if.then29
  ]

if.then23.if.end37_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then29:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %dma_address31 = getelementptr inbounds %struct.scatterlist, ptr %38, i32 0, i32 3
  %42 = ptrtoint ptr %dma_address31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_address31, align 4
  br label %if.end37

if.else32:                                        ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %sec4_sg_dma33 = getelementptr inbounds %struct.aead_edesc, ptr %edesc, i32 0, i32 6
  %44 = ptrtoint ptr %sec4_sg_dma33 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %sec4_sg_dma33, align 4
  %add34 = add i32 %45, %sec4_sg_index.0
  br label %if.end37

if.end37:                                         ; preds = %if.else32, %if.then29, %if.then23.if.end37_crit_edge, %if.end.if.end37_crit_edge
  %out_options.0 = phi i32 [ 0, %if.then29 ], [ 16777216, %if.else32 ], [ %in_options.0, %if.end.if.end37_crit_edge ], [ %40, %if.then23.if.end37_crit_edge ]
  %dst_dma.0 = phi i32 [ %43, %if.then29 ], [ %add34, %if.else32 ], [ %src_dma.0, %if.end.if.end37_crit_edge ], [ %40, %if.then23.if.end37_crit_edge ]
  %46 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %assoclen, align 8
  %48 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %cryptlen, align 4
  %50 = sub i32 0, %3
  %add47.sink.p = select i1 %encrypt, i32 %3, i32 %50
  %add47.sink = add i32 %47, %add47.sink.p
  %sub = add i32 %add47.sink, %49
  tail call fastcc void @append_seq_out_ptr(ptr noundef %hw_desc, i32 noundef %dst_dma.0, i32 noundef %sub, i32 noundef %out_options.0)
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @append_seq_in_ptr(ptr nocapture noundef %desc, i32 noundef %ptr, i32 noundef %len, i32 noundef %options) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %2 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  %3 = lshr i32 %1, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %1, i32 %3
  %and.i = and i32 %retval.0.i.i, 127
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %and.i, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.46, i32 0, i32 7)) #10
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %6 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i.i = icmp eq i8 %6, 0
  %7 = lshr i32 %5, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %5, i32 %7
  %and.i.i = and i32 %retval.0.i.i.i, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([25 x i8], ptr @.str.47, i32 0, i32 7)) #10
  %or.i = or i32 %options, -264241152
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %10 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i.i.i.i.i = icmp eq i8 %10, 0
  %11 = lshr i32 %9, 24
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %9, i32 %11
  %and.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %or.i, i32 %12
  %13 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %16 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i6.i.i.i = icmp eq i8 %16, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %retval.0.i7.i.i.i = select i1 %tobool.not.i6.i.i.i, i32 %15, i32 %17
  %add.i.i.i = add i32 %retval.0.i7.i.i.i, 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #7
  %retval.0.i9.i.i.i = select i1 %tobool.not.i6.i.i.i, i32 %add.i.i.i, i32 %18
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i9.i.i.i, ptr %desc, align 4
  %and.i5.i = and i32 %options, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i)
  %tobool.not.i.i5 = icmp eq i32 %and.i5.i, 0
  br i1 %tobool.not.i.i5, label %if.then.i.i, label %entry.append_seq_in_ptr_extlen.exit_crit_edge

entry.append_seq_in_ptr_extlen.exit_crit_edge:    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %append_seq_in_ptr_extlen.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %20 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i.i.i4.i.i = icmp eq i8 %20, 0
  %21 = lshr i32 %retval.0.i9.i.i.i, 24
  %retval.0.i.i.i.i5.i.i = select i1 %tobool.not.i.i.i.i4.i.i, i32 %retval.0.i9.i.i.i, i32 %21
  %and.i.i.i6.i.i = and i32 %retval.0.i.i.i.i5.i.i, 127
  %add.ptr.i.i7.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i6.i.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %ptr) #7
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i4.i.i, i32 %ptr, i32 %22
  %23 = ptrtoint ptr %add.ptr.i.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i.i.i.i.i, ptr %add.ptr.i.i7.i.i, align 4
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %26 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i.i.i = icmp eq i8 %26, 0
  %27 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %retval.0.i.i8.i.i = select i1 %tobool.not.i.i.i.i, i32 %25, i32 %27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %28 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i = lshr i32 %28, 2
  %add.i9.i.i = add i32 %retval.0.i.i8.i.i, %div14.i.i.i
  %29 = tail call i32 @llvm.bswap.i32(i32 %add.i9.i.i) #7
  %retval.0.i23.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %add.i9.i.i, i32 %29
  %30 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i23.i.i.i, ptr %desc, align 4
  br label %append_seq_in_ptr_extlen.exit

append_seq_in_ptr_extlen.exit:                    ; preds = %if.then.i.i, %entry.append_seq_in_ptr_extlen.exit_crit_edge
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %33 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i.i.i10.i.i = icmp eq i8 %33, 0
  %34 = lshr i32 %32, 24
  %retval.0.i.i.i.i11.i.i = select i1 %tobool.not.i.i.i.i10.i.i, i32 %32, i32 %34
  %and.i.i.i12.i.i = and i32 %retval.0.i.i.i.i11.i.i, 127
  %add.ptr.i.i13.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i12.i.i
  %35 = tail call i32 @llvm.bswap.i32(i32 %len) #7
  %retval.0.i.i14.i.i = select i1 %tobool.not.i.i.i.i10.i.i, i32 %len, i32 %35
  %36 = ptrtoint ptr %add.ptr.i.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i.i14.i.i, ptr %add.ptr.i.i13.i.i, align 4
  %37 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %39 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i6.i15.i.i = icmp eq i8 %39, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  %retval.0.i7.i16.i.i = select i1 %tobool.not.i6.i15.i.i, i32 %38, i32 %40
  %add.i17.i.i = add i32 %retval.0.i7.i16.i.i, 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %add.i17.i.i) #7
  %retval.0.i9.i18.i.i = select i1 %tobool.not.i6.i15.i.i, i32 %add.i17.i.i, i32 %41
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i9.i18.i.i, ptr %desc, align 4
  ret void
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @append_seq_out_ptr(ptr nocapture noundef %desc, i32 noundef %ptr, i32 noundef %len, i32 noundef %options) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %2 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i = icmp eq i8 %2, 0
  %3 = lshr i32 %1, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %1, i32 %3
  %and.i = and i32 %retval.0.i.i, 127
  %call2 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %and.i, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.48, i32 0, i32 7)) #10
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %6 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i.i = icmp eq i8 %6, 0
  %7 = lshr i32 %5, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %5, i32 %7
  %and.i.i = and i32 %retval.0.i.i.i, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([26 x i8], ptr @.str.49, i32 0, i32 7)) #10
  %or.i = or i32 %options, -130023424
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %10 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i.i.i.i.i.i = icmp eq i8 %10, 0
  %11 = lshr i32 %9, 24
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %9, i32 %11
  %and.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i.i
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %or.i, i32 %12
  %13 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %retval.0.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %16 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not.i6.i.i.i = icmp eq i8 %16, 0
  %17 = tail call i32 @llvm.bswap.i32(i32 %15) #7
  %retval.0.i7.i.i.i = select i1 %tobool.not.i6.i.i.i, i32 %15, i32 %17
  %add.i.i.i = add i32 %retval.0.i7.i.i.i, 1
  %18 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #7
  %retval.0.i9.i.i.i = select i1 %tobool.not.i6.i.i.i, i32 %add.i.i.i, i32 %18
  %19 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %retval.0.i9.i.i.i, ptr %desc, align 4
  %and.i5.i = and i32 %options, 10485760
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i5.i)
  %tobool.not.i.i5 = icmp eq i32 %and.i5.i, 0
  br i1 %tobool.not.i.i5, label %if.then.i.i, label %entry.append_seq_out_ptr_extlen.exit_crit_edge

entry.append_seq_out_ptr_extlen.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %append_seq_out_ptr_extlen.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %20 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %20)
  %tobool.not.i.i.i.i4.i.i = icmp eq i8 %20, 0
  %21 = lshr i32 %retval.0.i9.i.i.i, 24
  %retval.0.i.i.i.i5.i.i = select i1 %tobool.not.i.i.i.i4.i.i, i32 %retval.0.i9.i.i.i, i32 %21
  %and.i.i.i6.i.i = and i32 %retval.0.i.i.i.i5.i.i, 127
  %add.ptr.i.i7.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i6.i.i
  %22 = tail call i32 @llvm.bswap.i32(i32 %ptr) #7
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i4.i.i, i32 %ptr, i32 %22
  %23 = ptrtoint ptr %add.ptr.i.i7.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %retval.0.i.i.i.i.i, ptr %add.ptr.i.i7.i.i, align 4
  %24 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %26 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool.not.i.i.i.i = icmp eq i8 %26, 0
  %27 = tail call i32 @llvm.bswap.i32(i32 %25) #7
  %retval.0.i.i8.i.i = select i1 %tobool.not.i.i.i.i, i32 %25, i32 %27
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %28 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i = lshr i32 %28, 2
  %add.i9.i.i = add i32 %retval.0.i.i8.i.i, %div14.i.i.i
  %29 = tail call i32 @llvm.bswap.i32(i32 %add.i9.i.i) #7
  %retval.0.i23.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %add.i9.i.i, i32 %29
  %30 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i23.i.i.i, ptr %desc, align 4
  br label %append_seq_out_ptr_extlen.exit

append_seq_out_ptr_extlen.exit:                   ; preds = %if.then.i.i, %entry.append_seq_out_ptr_extlen.exit_crit_edge
  %31 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %33 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i.i.i.i10.i.i = icmp eq i8 %33, 0
  %34 = lshr i32 %32, 24
  %retval.0.i.i.i.i11.i.i = select i1 %tobool.not.i.i.i.i10.i.i, i32 %32, i32 %34
  %and.i.i.i12.i.i = and i32 %retval.0.i.i.i.i11.i.i, 127
  %add.ptr.i.i13.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i12.i.i
  %35 = tail call i32 @llvm.bswap.i32(i32 %len) #7
  %retval.0.i.i14.i.i = select i1 %tobool.not.i.i.i.i10.i.i, i32 %len, i32 %35
  %36 = ptrtoint ptr %add.ptr.i.i13.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i.i14.i.i, ptr %add.ptr.i.i13.i.i, align 4
  %37 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %39 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i6.i15.i.i = icmp eq i8 %39, 0
  %40 = tail call i32 @llvm.bswap.i32(i32 %38) #7
  %retval.0.i7.i16.i.i = select i1 %tobool.not.i6.i15.i.i, i32 %38, i32 %40
  %add.i17.i.i = add i32 %retval.0.i7.i16.i.i, 1
  %41 = tail call i32 @llvm.bswap.i32(i32 %add.i17.i.i) #7
  %retval.0.i9.i18.i.i = select i1 %tobool.not.i6.i15.i.i, i32 %add.i17.i.i, i32 %41
  %42 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i9.i18.i.i, ptr %desc, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_aead_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_jr_enqueue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @aead_crypt_done(ptr noundef %jrdev, ptr nocapture noundef readnone %desc, i32 noundef %err, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %context, i32 0, i32 7
  %driver_data.i = getelementptr inbounds %struct.device, ptr %jrdev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aead_crypt_done.__UNIQUE_ID_ddebug524, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aead_crypt_done, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @aead_crypt_done.__UNIQUE_ID_ddebug524, ptr noundef %jrdev, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef 979, i32 noundef %err) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %2 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__ctx.i, align 4
  %bklog = getelementptr inbounds %struct.aead_edesc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bklog to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %bklog, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool9.not = icmp eq i32 %err, 0
  br i1 %tobool9.not, label %do.end.if.end12_crit_edge, label %if.then10

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

if.then10:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @caam_strstatus(ptr noundef %jrdev, i32 noundef %err, i1 noundef zeroext false) #7
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end.if.end12_crit_edge
  %ecode.0 = phi i32 [ %call11, %if.then10 ], [ 0, %do.end.if.end12_crit_edge ]
  tail call fastcc void @aead_unmap(ptr noundef %jrdev, ptr noundef %3, ptr noundef %context)
  tail call void @kfree(ptr noundef %3) #7
  br i1 %tobool7.not, label %if.then14, label %if.else

if.then14:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %context, i32 0, i32 1
  %6 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %complete.i, align 8
  tail call void %7(ptr noundef %context, i32 noundef %ecode.0) #7
  br label %if.end15

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %engine = getelementptr inbounds %struct.caam_drv_private_jr, ptr %1, i32 0, i32 18
  %8 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %engine, align 4
  tail call void @crypto_finalize_aead_request(ptr noundef %9, ptr noundef %context, i32 noundef %ecode.0) #7
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.then14
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_strstatus(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_aead_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_authenc_extractkeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @gen_split_key(ptr noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aead_set_sh_desc(ptr noundef %aead) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %1, i32 -104
  %2 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ivsize.i.i, align 8
  %jrdev3 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3
  %4 = ptrtoint ptr %jrdev3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jrdev3, align 4
  %parent = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i, align 4
  %cdata = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 12
  %10 = ptrtoint ptr %cdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cdata, align 4
  %and = and i32 %11, 8176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  %rfc3686 = getelementptr i8, ptr %1, i32 520
  %12 = ptrtoint ptr %rfc3686 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %rfc3686, align 8, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool = icmp ne i8 %13, 0
  %authsize = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 36
  %14 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %authsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool6.not = icmp eq i32 %15, 0
  br i1 %tobool6.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %keylen = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 16
  %16 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool8.not = icmp eq i32 %17, 0
  br i1 %tobool8.not, label %if.then9, label %if.end11

if.then9:                                         ; preds = %if.end
  %18 = ptrtoint ptr %jrdev3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %jrdev3, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %driver_data.i.i, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %24 = load i32, ptr @caam_ptr_sz, align 4
  %mul.neg.i = mul i32 %24, -3
  %sub.i = add i32 %mul.neg.i, 228
  %adata.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 1
  %keylen_pad.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 3
  %25 = ptrtoint ptr %keylen_pad.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %keylen_pad.i, align 4
  %sub4.i = sub i32 %sub.i, %26
  call void @__sanitizer_cov_trace_const_cmp4(i32 55, i32 %sub4.i)
  %cmp.i = icmp ugt i32 %sub4.i, 55
  br i1 %cmp.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %key.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %key_virt.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 4
  %27 = ptrtoint ptr %key_virt.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %key.i, ptr %key_virt.i, align 4
  br label %if.end.i

if.else.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %key_dma.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 112
  %28 = ptrtoint ptr %key_dma.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %key_dma.i, align 4
  %key_dma10.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4
  %30 = ptrtoint ptr %key_dma10.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %29, ptr %key_dma10.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %.sink.i = phi i8 [ 1, %if.then.i ], [ 0, %if.else.i ]
  %31 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 8
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 %.sink.i, ptr %31, align 4
  %sh_desc_enc.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 4
  %33 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %authsize, align 4
  %era.i = getelementptr inbounds %struct.caam_drv_private, ptr %23, i32 0, i32 11
  %35 = ptrtoint ptr %era.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %era.i, align 4
  tail call void @cnstr_shdsc_aead_null_encap(ptr noundef %sh_desc_enc.i, ptr noundef %adata.i, i32 noundef %34, i32 noundef %36) #7
  %sh_desc_enc_dma.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 104
  %37 = ptrtoint ptr %sh_desc_enc_dma.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sh_desc_enc_dma.i, align 4
  %39 = ptrtoint ptr %sh_desc_enc.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %sh_desc_enc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %41 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i.i.i = icmp eq i8 %41, 0
  %42 = lshr i32 %40, 24
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %40, i32 %42
  %and.i.i.i = shl i32 %retval.0.i.i.i.i, 2
  %mul.i.i = and i32 %and.i.i.i, 508
  %dir.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 116
  %43 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dir.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %19, i32 noundef %38, i32 noundef %mul.i.i, i32 noundef %44) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %sub4.i)
  %cmp14.i = icmp ugt i32 %sub4.i, 63
  br i1 %cmp14.i, label %if.then15.i, label %if.else22.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %key18.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %key_virt21.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 4
  %45 = ptrtoint ptr %key_virt21.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %key18.i, ptr %key_virt21.i, align 4
  br label %aead_null_set_sh_desc.exit

if.else22.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %key_dma25.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 112
  %46 = ptrtoint ptr %key_dma25.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %key_dma25.i, align 4
  %key_dma27.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4
  %48 = ptrtoint ptr %key_dma27.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %key_dma27.i, align 4
  br label %aead_null_set_sh_desc.exit

aead_null_set_sh_desc.exit:                       ; preds = %if.else22.i, %if.then15.i
  %.sink5.i = phi i8 [ 1, %if.then15.i ], [ 0, %if.else22.i ]
  %49 = ptrtoint ptr %31 to i32
  call void @__asan_store1_noabort(i32 %49)
  store i8 %.sink5.i, ptr %31, align 4
  %sh_desc_dec.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 3, i32 4, i32 92
  %50 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %authsize, align 4
  %52 = ptrtoint ptr %era.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %era.i, align 4
  tail call void @cnstr_shdsc_aead_null_decap(ptr noundef %sh_desc_dec.i, ptr noundef %adata.i, i32 noundef %51, i32 noundef %53) #7
  %sh_desc_dec_dma.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 108
  %54 = ptrtoint ptr %sh_desc_dec_dma.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %sh_desc_dec_dma.i, align 4
  %56 = ptrtoint ptr %sh_desc_dec.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sh_desc_dec.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %58 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool.not.i.i.i1.i = icmp eq i8 %58, 0
  %59 = lshr i32 %57, 24
  %retval.0.i.i.i2.i = select i1 %tobool.not.i.i.i1.i, i32 %57, i32 %59
  %and.i.i3.i = shl i32 %retval.0.i.i.i2.i, 2
  %mul.i4.i = and i32 %and.i.i3.i, 508
  %60 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dir.i, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %19, i32 noundef %55, i32 noundef %mul.i4.i, i32 noundef %61) #7
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %spec.select = select i1 %cmp, i32 16, i32 0
  br i1 %tobool, label %if.then16, label %if.end11.if.end22_crit_edge

if.end11.if.end22_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then16:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  %key = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %keylen_pad = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 3
  %62 = ptrtoint ptr %keylen_pad to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %keylen_pad, align 4
  %add.ptr17 = getelementptr i8, ptr %key, i32 %63
  %add.ptr20 = getelementptr i8, ptr %add.ptr17, i32 %17
  %add.ptr21 = getelementptr i8, ptr %add.ptr20, i32 -4
  br label %if.end22

if.end22:                                         ; preds = %if.then16, %if.end11.if.end22_crit_edge
  %ctx1_iv_off.1 = phi i32 [ 20, %if.then16 ], [ %spec.select, %if.end11.if.end22_crit_edge ]
  %nonce.0 = phi ptr [ %add.ptr21, %if.then16 ], [ null, %if.end11.if.end22_crit_edge ]
  %key23 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 2, i32 3, i32 4, i32 60
  %adata25 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 1
  %key_virt = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 4
  %64 = ptrtoint ptr %key_virt to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %key23, ptr %key_virt, align 4
  %key_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 112
  %65 = ptrtoint ptr %key_dma to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %key_dma, align 4
  %key_dma27 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4
  %67 = ptrtoint ptr %key_dma27 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %66, ptr %key_dma27, align 4
  %keylen_pad31 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 3
  %68 = ptrtoint ptr %keylen_pad31 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %keylen_pad31, align 4
  %add.ptr32 = getelementptr i8, ptr %key23, i32 %69
  %key_virt34 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 28
  %70 = ptrtoint ptr %key_virt34 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %add.ptr32, ptr %key_virt34, align 4
  %add = add i32 %69, %66
  %key_dma39 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 24
  %71 = ptrtoint ptr %key_dma39 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add, ptr %key_dma39, align 4
  %geniv = getelementptr i8, ptr %1, i32 521
  %72 = ptrtoint ptr %geniv to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %geniv, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool46.not = icmp eq i8 %73, 0
  br i1 %tobool46.not, label %if.end48, label %if.end22.skip_enc_crit_edge

if.end22.skip_enc_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %skip_enc

if.end48:                                         ; preds = %if.end22
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %74 = load i32, ptr @caam_ptr_sz, align 4
  %mul.neg = mul i32 %74, -3
  %.neg = select i1 %tobool, i32 132, i32 148
  %sub1.i = add i32 %.neg, %mul.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i)
  %cmp22.i = icmp sgt i32 %sub1.i, 0
  br i1 %cmp22.i, label %for.body.i.preheader, label %if.end48.desc_inline_query.exit_crit_edge

if.end48.desc_inline_query.exit_crit_edge:        ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %desc_inline_query.exit

for.body.i.preheader:                             ; preds = %if.end48
  %add.neg.i.peel = sub i32 %sub1.i, %69
  %sub5.i.peel = sub i32 %add.neg.i.peel, %74
  %.pre.i.peel = sub i32 %sub1.i, %74
  %75 = xor i32 %sub5.i.peel, -1
  %sub5.i.peel.lobit.not = lshr i32 %75, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i.peel)
  %cmp6.i.peel313 = icmp slt i32 %sub5.i.peel, 0
  %rem_bytes.1.pre-phi.i.peel = select i1 %cmp6.i.peel313, i32 %.pre.i.peel, i32 %add.neg.i.peel
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem_bytes.1.pre-phi.i.peel)
  %cmp2.i.peel = icmp sgt i32 %rem_bytes.1.pre-phi.i.peel, 0
  br i1 %cmp2.i.peel, label %desc_inline_query.exit.loopexit.loopexit, label %for.body.i.preheader.desc_inline_query.exit_crit_edge

for.body.i.preheader.desc_inline_query.exit_crit_edge: ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %desc_inline_query.exit

desc_inline_query.exit.loopexit.loopexit:         ; preds = %for.body.i.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %add.neg.i = sub i32 %rem_bytes.1.pre-phi.i.peel, %17
  %.pre.i = sub i32 %rem_bytes.1.pre-phi.i.peel, %74
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.neg.i)
  %cmp6.i314 = icmp slt i32 %add.neg.i, 0
  %rem_bytes.1.pre-phi.i = select i1 %cmp6.i314, i32 %.pre.i, i32 %add.neg.i
  %76 = lshr i32 %add.neg.i, 30
  %77 = and i32 %76, 2
  %78 = or i32 %77, %sub5.i.peel.lobit.not
  %inl_mask.1 = xor i32 %78, 2
  br label %desc_inline_query.exit

desc_inline_query.exit:                           ; preds = %desc_inline_query.exit.loopexit.loopexit, %for.body.i.preheader.desc_inline_query.exit_crit_edge, %if.end48.desc_inline_query.exit_crit_edge
  %inl_mask.2 = phi i32 [ 0, %if.end48.desc_inline_query.exit_crit_edge ], [ %sub5.i.peel.lobit.not, %for.body.i.preheader.desc_inline_query.exit_crit_edge ], [ %inl_mask.1, %desc_inline_query.exit.loopexit.loopexit ]
  %rem_bytes.0.lcssa.i = phi i32 [ %sub1.i, %if.end48.desc_inline_query.exit_crit_edge ], [ %rem_bytes.1.pre-phi.i.peel, %for.body.i.preheader.desc_inline_query.exit_crit_edge ], [ %rem_bytes.1.pre-phi.i, %desc_inline_query.exit.loopexit.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem_bytes.0.lcssa.i)
  %cmp56 = icmp slt i32 %rem_bytes.0.lcssa.i, 0
  br i1 %cmp56, label %desc_inline_query.exit.cleanup_crit_edge, label %if.end58

desc_inline_query.exit.cleanup_crit_edge:         ; preds = %desc_inline_query.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end58:                                         ; preds = %desc_inline_query.exit
  call void @__sanitizer_cov_trace_pc() #9
  %key_inline = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 8
  %79 = trunc i32 %inl_mask.2 to i8
  %80 = and i8 %79, 1
  %81 = ptrtoint ptr %key_inline to i32
  call void @__asan_store1_noabort(i32 %81)
  store i8 %80, ptr %key_inline, align 4
  %key_inline69 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 32
  %82 = lshr i8 %79, 1
  %83 = and i8 %82, 1
  %84 = ptrtoint ptr %key_inline69 to i32
  call void @__asan_store1_noabort(i32 %84)
  store i8 %83, ptr %key_inline69, align 4
  %sh_desc_enc = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 4
  %era = getelementptr inbounds %struct.caam_drv_private, ptr %9, i32 0, i32 11
  %85 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %era, align 4
  tail call void @cnstr_shdsc_aead_encap(ptr noundef %sh_desc_enc, ptr noundef %cdata, ptr noundef %adata25, i32 noundef %3, i32 noundef %15, i1 noundef zeroext %tobool, ptr noundef %nonce.0, i32 noundef %ctx1_iv_off.1, i1 noundef zeroext false, i32 noundef %86) #7
  %sh_desc_enc_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 104
  %87 = ptrtoint ptr %sh_desc_enc_dma to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %sh_desc_enc_dma, align 4
  %89 = ptrtoint ptr %sh_desc_enc to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %sh_desc_enc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %91 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %91)
  %tobool.not.i.i.i = icmp eq i8 %91, 0
  %92 = lshr i32 %90, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %90, i32 %92
  %and.i.i = shl i32 %retval.0.i.i.i, 2
  %mul.i = and i32 %and.i.i, 508
  %dir = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 116
  %93 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %88, i32 noundef %mul.i, i32 noundef %94) #7
  br label %skip_enc

skip_enc:                                         ; preds = %if.end58, %if.end22.skip_enc_crit_edge
  %cond78.neg301 = select i1 %tobool, i32 -16, i32 0
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %95 = load i32, ptr @caam_ptr_sz, align 4
  %mul80.neg = mul i32 %95, -3
  %.neg299 = add nsw i32 %cond78.neg301, 132
  %sub1.i238 = add i32 %.neg299, %mul80.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i238)
  %cmp22.i239 = icmp sgt i32 %sub1.i238, 0
  br i1 %cmp22.i239, label %for.body.i249.preheader, label %skip_enc.desc_inline_query.exit261_crit_edge

skip_enc.desc_inline_query.exit261_crit_edge:     ; preds = %skip_enc
  call void @__sanitizer_cov_trace_pc() #9
  br label %desc_inline_query.exit261

for.body.i249.preheader:                          ; preds = %skip_enc
  %add.neg.i246.peel = sub i32 %sub1.i238, %69
  %sub5.i247.peel = sub i32 %add.neg.i246.peel, %95
  %.pre.i250.peel = sub i32 %sub1.i238, %95
  %96 = xor i32 %sub5.i247.peel, -1
  %sub5.i247.peel.lobit.not = lshr i32 %96, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i247.peel)
  %cmp6.i248.peel311 = icmp slt i32 %sub5.i247.peel, 0
  %rem_bytes.1.pre-phi.i255.peel = select i1 %cmp6.i248.peel311, i32 %.pre.i250.peel, i32 %add.neg.i246.peel
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem_bytes.1.pre-phi.i255.peel)
  %cmp2.i256.peel = icmp sgt i32 %rem_bytes.1.pre-phi.i255.peel, 0
  br i1 %cmp2.i256.peel, label %desc_inline_query.exit261.loopexit.loopexit, label %for.body.i249.preheader.desc_inline_query.exit261_crit_edge

for.body.i249.preheader.desc_inline_query.exit261_crit_edge: ; preds = %for.body.i249.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %desc_inline_query.exit261

desc_inline_query.exit261.loopexit.loopexit:      ; preds = %for.body.i249.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %add.neg.i246 = sub i32 %rem_bytes.1.pre-phi.i255.peel, %17
  %.pre.i250 = sub i32 %rem_bytes.1.pre-phi.i255.peel, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.neg.i246)
  %cmp6.i248312 = icmp slt i32 %add.neg.i246, 0
  %rem_bytes.1.pre-phi.i255 = select i1 %cmp6.i248312, i32 %.pre.i250, i32 %add.neg.i246
  %97 = lshr i32 %add.neg.i246, 30
  %98 = and i32 %97, 2
  %99 = or i32 %98, %sub5.i247.peel.lobit.not
  %inl_mask.4 = xor i32 %99, 2
  br label %desc_inline_query.exit261

desc_inline_query.exit261:                        ; preds = %desc_inline_query.exit261.loopexit.loopexit, %for.body.i249.preheader.desc_inline_query.exit261_crit_edge, %skip_enc.desc_inline_query.exit261_crit_edge
  %inl_mask.5 = phi i32 [ 0, %skip_enc.desc_inline_query.exit261_crit_edge ], [ %sub5.i247.peel.lobit.not, %for.body.i249.preheader.desc_inline_query.exit261_crit_edge ], [ %inl_mask.4, %desc_inline_query.exit261.loopexit.loopexit ]
  %rem_bytes.0.lcssa.i259 = phi i32 [ %sub1.i238, %skip_enc.desc_inline_query.exit261_crit_edge ], [ %rem_bytes.1.pre-phi.i255.peel, %for.body.i249.preheader.desc_inline_query.exit261_crit_edge ], [ %rem_bytes.1.pre-phi.i255, %desc_inline_query.exit261.loopexit.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem_bytes.0.lcssa.i259)
  %cmp86 = icmp slt i32 %rem_bytes.0.lcssa.i259, 0
  br i1 %cmp86, label %desc_inline_query.exit261.cleanup_crit_edge, label %if.end88

desc_inline_query.exit261.cleanup_crit_edge:      ; preds = %desc_inline_query.exit261
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end88:                                         ; preds = %desc_inline_query.exit261
  %key_inline94 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 8
  %100 = trunc i32 %inl_mask.5 to i8
  %101 = and i8 %100, 1
  %102 = ptrtoint ptr %key_inline94 to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 %101, ptr %key_inline94, align 4
  %key_inline101 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 32
  %103 = lshr i8 %100, 1
  %104 = and i8 %103, 1
  %105 = ptrtoint ptr %key_inline101 to i32
  call void @__asan_store1_noabort(i32 %105)
  store i8 %104, ptr %key_inline101, align 4
  %sh_desc_dec = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 3, i32 4, i32 92
  %106 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %authsize, align 4
  %108 = ptrtoint ptr %geniv to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %geniv, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %109)
  %tobool109 = icmp ne i8 %109, 0
  %era111 = getelementptr inbounds %struct.caam_drv_private, ptr %9, i32 0, i32 11
  %110 = ptrtoint ptr %era111 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %era111, align 4
  tail call void @cnstr_shdsc_aead_decap(ptr noundef %sh_desc_dec, ptr noundef %cdata, ptr noundef %adata25, i32 noundef %3, i32 noundef %107, i1 noundef zeroext %tobool109, i1 noundef zeroext %tobool, ptr noundef %nonce.0, i32 noundef %ctx1_iv_off.1, i1 noundef zeroext false, i32 noundef %111) #7
  %sh_desc_dec_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 108
  %112 = ptrtoint ptr %sh_desc_dec_dma to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %sh_desc_dec_dma, align 4
  %114 = ptrtoint ptr %sh_desc_dec to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %sh_desc_dec, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %116 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %116)
  %tobool.not.i.i.i262 = icmp eq i8 %116, 0
  %117 = lshr i32 %115, 24
  %retval.0.i.i.i263 = select i1 %tobool.not.i.i.i262, i32 %115, i32 %117
  %and.i.i264 = shl i32 %retval.0.i.i.i263, 2
  %mul.i265 = and i32 %and.i.i264, 508
  %dir113 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 116
  %118 = ptrtoint ptr %dir113 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dir113, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %113, i32 noundef %mul.i265, i32 noundef %119) #7
  %120 = ptrtoint ptr %geniv to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %geniv, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %121)
  %tobool116.not = icmp eq i8 %121, 0
  br i1 %tobool116.not, label %if.end88.cleanup_crit_edge, label %if.end118

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end118:                                        ; preds = %if.end88
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %122 = load i32, ptr @caam_ptr_sz, align 4
  %mul122.neg = mul i32 %122, -3
  %add125.neg = add nsw i32 %cond78.neg301, 116
  %sub1.i266 = add i32 %add125.neg, %mul122.neg
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub1.i266)
  %cmp22.i267 = icmp sgt i32 %sub1.i266, 0
  br i1 %cmp22.i267, label %for.body.i277.preheader, label %if.end118.desc_inline_query.exit289_crit_edge

if.end118.desc_inline_query.exit289_crit_edge:    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #9
  br label %desc_inline_query.exit289

for.body.i277.preheader:                          ; preds = %if.end118
  %add.neg.i274.peel = sub i32 %sub1.i266, %69
  %sub5.i275.peel = sub i32 %add.neg.i274.peel, %122
  %.pre.i278.peel = sub i32 %sub1.i266, %122
  %123 = xor i32 %sub5.i275.peel, -1
  %sub5.i275.peel.lobit.not = lshr i32 %123, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub5.i275.peel)
  %cmp6.i276.peel309 = icmp slt i32 %sub5.i275.peel, 0
  %rem_bytes.1.pre-phi.i283.peel = select i1 %cmp6.i276.peel309, i32 %.pre.i278.peel, i32 %add.neg.i274.peel
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem_bytes.1.pre-phi.i283.peel)
  %cmp2.i284.peel = icmp sgt i32 %rem_bytes.1.pre-phi.i283.peel, 0
  br i1 %cmp2.i284.peel, label %desc_inline_query.exit289.loopexit.loopexit, label %for.body.i277.preheader.desc_inline_query.exit289_crit_edge

for.body.i277.preheader.desc_inline_query.exit289_crit_edge: ; preds = %for.body.i277.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %desc_inline_query.exit289

desc_inline_query.exit289.loopexit.loopexit:      ; preds = %for.body.i277.preheader
  call void @__sanitizer_cov_trace_pc() #9
  %add.neg.i274 = sub i32 %rem_bytes.1.pre-phi.i283.peel, %17
  %.pre.i278 = sub i32 %rem_bytes.1.pre-phi.i283.peel, %122
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %add.neg.i274)
  %cmp6.i276310 = icmp slt i32 %add.neg.i274, 0
  %rem_bytes.1.pre-phi.i283 = select i1 %cmp6.i276310, i32 %.pre.i278, i32 %add.neg.i274
  %124 = lshr i32 %add.neg.i274, 30
  %125 = and i32 %124, 2
  %126 = or i32 %125, %sub5.i275.peel.lobit.not
  %inl_mask.7 = xor i32 %126, 2
  br label %desc_inline_query.exit289

desc_inline_query.exit289:                        ; preds = %desc_inline_query.exit289.loopexit.loopexit, %for.body.i277.preheader.desc_inline_query.exit289_crit_edge, %if.end118.desc_inline_query.exit289_crit_edge
  %inl_mask.8 = phi i32 [ 0, %if.end118.desc_inline_query.exit289_crit_edge ], [ %sub5.i275.peel.lobit.not, %for.body.i277.preheader.desc_inline_query.exit289_crit_edge ], [ %inl_mask.7, %desc_inline_query.exit289.loopexit.loopexit ]
  %rem_bytes.0.lcssa.i287 = phi i32 [ %sub1.i266, %if.end118.desc_inline_query.exit289_crit_edge ], [ %rem_bytes.1.pre-phi.i283.peel, %for.body.i277.preheader.desc_inline_query.exit289_crit_edge ], [ %rem_bytes.1.pre-phi.i283, %desc_inline_query.exit289.loopexit.loopexit ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem_bytes.0.lcssa.i287)
  %cmp128 = icmp slt i32 %rem_bytes.0.lcssa.i287, 0
  br i1 %cmp128, label %desc_inline_query.exit289.cleanup_crit_edge, label %if.end130

desc_inline_query.exit289.cleanup_crit_edge:      ; preds = %desc_inline_query.exit289
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end130:                                        ; preds = %desc_inline_query.exit289
  call void @__sanitizer_cov_trace_pc() #9
  %127 = trunc i32 %inl_mask.8 to i8
  %128 = and i8 %127, 1
  %129 = ptrtoint ptr %key_inline94 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %128, ptr %key_inline94, align 4
  %130 = lshr i8 %127, 1
  %131 = and i8 %130, 1
  %132 = ptrtoint ptr %key_inline101 to i32
  call void @__asan_store1_noabort(i32 %132)
  store i8 %131, ptr %key_inline101, align 4
  %sh_desc_enc145 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 4
  %133 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %authsize, align 4
  %135 = ptrtoint ptr %era111 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %era111, align 4
  tail call void @cnstr_shdsc_aead_givencap(ptr noundef %sh_desc_enc145, ptr noundef %cdata, ptr noundef %adata25, i32 noundef %3, i32 noundef %134, i1 noundef zeroext %tobool, ptr noundef %nonce.0, i32 noundef %ctx1_iv_off.1, i1 noundef zeroext false, i32 noundef %136) #7
  %sh_desc_enc_dma152 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 104
  %137 = ptrtoint ptr %sh_desc_enc_dma152 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %sh_desc_enc_dma152, align 4
  %139 = ptrtoint ptr %sh_desc_enc145 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %sh_desc_enc145, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %141 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %141)
  %tobool.not.i.i.i290 = icmp eq i8 %141, 0
  %142 = lshr i32 %140, 24
  %retval.0.i.i.i291 = select i1 %tobool.not.i.i.i290, i32 %140, i32 %142
  %and.i.i292 = shl i32 %retval.0.i.i.i291, 2
  %mul.i293 = and i32 %and.i.i292, 508
  %143 = ptrtoint ptr %dir113 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %dir113, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %5, i32 noundef %138, i32 noundef %mul.i293, i32 noundef %144) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end130, %desc_inline_query.exit289.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %desc_inline_query.exit261.cleanup_crit_edge, %desc_inline_query.exit.cleanup_crit_edge, %aead_null_set_sh_desc.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %aead_null_set_sh_desc.exit ], [ 0, %entry.cleanup_crit_edge ], [ -22, %desc_inline_query.exit.cleanup_crit_edge ], [ -22, %desc_inline_query.exit261.cleanup_crit_edge ], [ -22, %desc_inline_query.exit289.cleanup_crit_edge ], [ 0, %if.end88.cleanup_crit_edge ], [ 0, %if.end130 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_aead_encap(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_aead_decap(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_aead_givencap(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_aead_null_encap(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_aead_null_decap(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @aead_crypt(ptr noundef %req, i1 noundef zeroext %encrypt) unnamed_addr #5 align 64 {
entry:
  %all_contig = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %jrdev2 = getelementptr i8, ptr %1, i32 768
  %2 = ptrtoint ptr %jrdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %all_contig) #7
  %4 = ptrtoint ptr %all_contig to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %all_contig, align 1, !annotation !211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %5 = load i32, ptr @caam_ptr_sz, align 4
  %mul = mul i32 %5, 3
  %add4 = add i32 %mul, 48
  %call5 = call fastcc ptr @aead_edesc_alloc(ptr noundef %req, i32 noundef %add4, ptr noundef nonnull %all_contig, i1 noundef zeroext %encrypt)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %all_contig to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %all_contig, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8 = icmp ne i8 %8, 0
  %9 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %10, i32 12
  %11 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i.i = getelementptr i8, ptr %12, i32 -104
  %13 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ivsize.i.i.i, align 8
  %jrdev.i = getelementptr i8, ptr %10, i32 768
  %15 = ptrtoint ptr %jrdev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %jrdev.i, align 4
  %parent.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent.i, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 8
  %19 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %driver_data.i.i, align 4
  %cdata.i = getelementptr i8, ptr %10, i32 796
  %21 = ptrtoint ptr %cdata.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cdata.i, align 4
  %and.i = and i32 %22, 8176
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i34 = icmp eq i32 %and.i, 0
  %rfc3686.i = getelementptr i8, ptr %12, i32 520
  %23 = ptrtoint ptr %rfc3686.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %rfc3686.i, align 8, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  %hw_desc.i = getelementptr inbounds %struct.aead_edesc, ptr %call5, i32 0, i32 8
  tail call fastcc void @init_aead_job(ptr noundef %req, ptr noundef %call5, i1 noundef zeroext %tobool8, i1 noundef zeroext %encrypt) #7
  %era.i = getelementptr inbounds %struct.caam_drv_private, ptr %20, i32 0, i32 11
  %25 = ptrtoint ptr %era.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %era.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %26)
  %cmp14.i = icmp slt i32 %26, 3
  %27 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %29 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool.not.i.i.i.i.i = icmp eq i8 %29, 0
  %30 = lshr i32 %28, 24
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %28, i32 %30
  %and.i.i.i.i = and i32 %retval.0.i.i.i.i.i, 127
  %add.ptr.i.i46.i = getelementptr i32, ptr %hw_desc.i, i32 %and.i.i.i.i
  br i1 %cmp14.i, label %do.body.i, label %do.body16.i

do.body.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 -1475591420, i32 71503016
  %31 = ptrtoint ptr %add.ptr.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i.i.i, ptr %add.ptr.i.i46.i, align 4
  %32 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %34 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i6.i.i = icmp eq i8 %34, 0
  %35 = tail call i32 @llvm.bswap.i32(i32 %33) #7
  %retval.0.i7.i.i = select i1 %tobool.not.i6.i.i, i32 %33, i32 %35
  %add.i.i = add i32 %retval.0.i7.i.i, 1
  %36 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #7
  %retval.0.i9.i.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %36
  %37 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %retval.0.i9.i.i, ptr %hw_desc.i, align 4
  %assoclen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %38 = ptrtoint ptr %assoclen.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %assoclen.i, align 8
  %40 = lshr i32 %36, 24
  %retval.0.i.i.i.i48.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %40
  %and.i.i.i49.i = and i32 %retval.0.i.i.i.i48.i, 127
  %add.ptr.i.i50.i = getelementptr i32, ptr %hw_desc.i, i32 %and.i.i.i49.i
  %41 = tail call i32 @llvm.bswap.i32(i32 %39) #7
  %retval.0.i.i51.i = select i1 %tobool.not.i6.i.i, i32 %39, i32 %41
  %42 = ptrtoint ptr %add.ptr.i.i50.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %retval.0.i.i51.i, ptr %add.ptr.i.i50.i, align 4
  %43 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %45 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i6.i52.i = icmp eq i8 %45, 0
  %46 = tail call i32 @llvm.bswap.i32(i32 %44) #7
  %retval.0.i7.i53.i = select i1 %tobool.not.i6.i52.i, i32 %44, i32 %46
  %add.i54.i = add i32 %retval.0.i7.i53.i, 1
  %47 = tail call i32 @llvm.bswap.i32(i32 %add.i54.i) #7
  %retval.0.i9.i55.i = select i1 %tobool.not.i6.i52.i, i32 %add.i54.i, i32 %47
  br label %if.end20.i

do.body16.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %retval.0.i.i60.i = select i1 %tobool.not.i.i.i.i.i, i32 -1475590396, i32 71765160
  %48 = ptrtoint ptr %add.ptr.i.i46.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %retval.0.i.i60.i, ptr %add.ptr.i.i46.i, align 4
  %49 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %51 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i6.i61.i = icmp eq i8 %51, 0
  %52 = tail call i32 @llvm.bswap.i32(i32 %50) #7
  %retval.0.i7.i62.i = select i1 %tobool.not.i6.i61.i, i32 %50, i32 %52
  %add.i63.i = add i32 %retval.0.i7.i62.i, 1
  %53 = tail call i32 @llvm.bswap.i32(i32 %add.i63.i) #7
  %retval.0.i9.i64.i = select i1 %tobool.not.i6.i61.i, i32 %add.i63.i, i32 %53
  %54 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %retval.0.i9.i64.i, ptr %hw_desc.i, align 4
  %assoclen17.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %55 = ptrtoint ptr %assoclen17.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %assoclen17.i, align 8
  %57 = lshr i32 %53, 24
  %retval.0.i.i.i.i66.i = select i1 %tobool.not.i6.i61.i, i32 %add.i63.i, i32 %57
  %and.i.i.i67.i = and i32 %retval.0.i.i.i.i66.i, 127
  %add.ptr.i.i68.i = getelementptr i32, ptr %hw_desc.i, i32 %and.i.i.i67.i
  %58 = tail call i32 @llvm.bswap.i32(i32 %56) #7
  %retval.0.i.i69.i = select i1 %tobool.not.i6.i61.i, i32 %56, i32 %58
  %59 = ptrtoint ptr %add.ptr.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i.i69.i, ptr %add.ptr.i.i68.i, align 4
  %60 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %62 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i6.i70.i = icmp eq i8 %62, 0
  %63 = tail call i32 @llvm.bswap.i32(i32 %61) #7
  %retval.0.i7.i71.i = select i1 %tobool.not.i6.i70.i, i32 %61, i32 %63
  %add.i72.i = add i32 %retval.0.i7.i71.i, 1
  %64 = tail call i32 @llvm.bswap.i32(i32 %add.i72.i) #7
  %retval.0.i9.i73.i = select i1 %tobool.not.i6.i70.i, i32 %add.i72.i, i32 %64
  br label %if.end20.i

if.end20.i:                                       ; preds = %do.body16.i, %do.body.i
  %storemerge.i = phi i32 [ %retval.0.i9.i73.i, %do.body16.i ], [ %retval.0.i9.i55.i, %do.body.i ]
  %65 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %storemerge.i, ptr %hw_desc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool21.not.i = icmp eq i32 %14, 0
  br i1 %tobool21.not.i, label %if.end20.i.init_authenc_job.exit_crit_edge, label %land.lhs.true.i

if.end20.i.init_authenc_job.exit_crit_edge:       ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_authenc_job.exit

land.lhs.true.i:                                  ; preds = %if.end20.i
  %encrypt.not.i = xor i1 %encrypt, true
  %brmerge.i = or i1 %tobool.not.i, %encrypt.not.i
  br i1 %brmerge.i, label %lor.lhs.false.i, label %land.lhs.true.i.append_load_as_imm.exit.i_crit_edge

land.lhs.true.i.append_load_as_imm.exit.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %append_load_as_imm.exit.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true.i
  %geniv.i = getelementptr i8, ptr %12, i32 521
  %66 = ptrtoint ptr %geniv.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %geniv.i, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool26.not.i = icmp eq i8 %67, 0
  br i1 %tobool26.not.i, label %lor.lhs.false.i.append_load_as_imm.exit.i_crit_edge, label %lor.lhs.false.i.init_authenc_job.exit_crit_edge

lor.lhs.false.i.init_authenc_job.exit_crit_edge:  ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_authenc_job.exit

lor.lhs.false.i.append_load_as_imm.exit.i_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %append_load_as_imm.exit.i

append_load_as_imm.exit.i:                        ; preds = %lor.lhs.false.i.append_load_as_imm.exit.i_crit_edge, %land.lhs.true.i.append_load_as_imm.exit.i_crit_edge
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %68 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %iv.i, align 32
  %spec.store.select.op.i = select i1 %cmp.i34, i32 35655680, i32 35651584
  %or.i = select i1 %tobool.not.i, i32 %spec.store.select.op.i, i32 35656704
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %70 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %70)
  %tobool.not.i.i.i.i = icmp eq i8 %70, 0
  %71 = lshr i32 %storemerge.i, 24
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %storemerge.i, i32 %71
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 127
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %and.i.i.i, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.58, i32 0, i32 7)) #10
  %or.i.i = or i32 %14, %or.i
  %or1.i.i.i = or i32 %or.i.i, 276824064
  %72 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %74 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i8 %74, 0
  %75 = lshr i32 %73, 24
  %retval.0.i.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %73, i32 %75
  %and.i.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %hw_desc.i, i32 %and.i.i.i.i.i.i
  %76 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i.i) #7
  %retval.0.i.i.i.i74.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %or1.i.i.i, i32 %76
  %77 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %retval.0.i.i.i.i74.i, ptr %add.ptr.i.i.i.i.i, align 4
  %78 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %80 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool.not.i6.i.i.i.i = icmp eq i8 %80, 0
  %81 = tail call i32 @llvm.bswap.i32(i32 %79) #7
  %retval.0.i7.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %79, i32 %81
  %add.i.i.i.i = add i32 %retval.0.i7.i.i.i.i, 1
  %82 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.i) #7
  %retval.0.i9.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %82
  %83 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %retval.0.i9.i.i.i.i, ptr %hw_desc.i, align 4
  %84 = lshr i32 %82, 24
  %retval.0.i.i.i.i5.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %84
  %and.i.i.i6.i.i.i = and i32 %retval.0.i.i.i.i5.i.i.i, 127
  %add.ptr.i.i7.i.i.i = getelementptr i32, ptr %hw_desc.i, i32 %and.i.i.i6.i.i.i
  %85 = call ptr @memcpy(ptr %add.ptr.i.i7.i.i.i, ptr %69, i32 %14)
  %86 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %87 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool.not.i.i.i.i75.i = icmp eq i8 %87, 0
  %88 = tail call i32 @llvm.bswap.i32(i32 %86) #7
  %retval.0.i.i8.i.i.i = select i1 %tobool.not.i.i.i.i75.i, i32 %86, i32 %88
  %sub.i.i.i.i = add i32 %14, 3
  %div8.i.i.i.i = lshr i32 %sub.i.i.i.i, 2
  %add2.i.i.i.i = add i32 %retval.0.i.i8.i.i.i, %div8.i.i.i.i
  %89 = tail call i32 @llvm.bswap.i32(i32 %add2.i.i.i.i) #7
  %retval.0.i10.i.i.i.i = select i1 %tobool.not.i.i.i.i75.i, i32 %add2.i.i.i.i, i32 %89
  %90 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %retval.0.i10.i.i.i.i, ptr %hw_desc.i, align 4
  br label %init_authenc_job.exit

init_authenc_job.exit:                            ; preds = %append_load_as_imm.exit.i, %lor.lhs.false.i.init_authenc_job.exit_crit_edge, %if.end20.i.init_authenc_job.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @aead_crypt.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@aead_crypt, %do.end)) #7
          to label %if.then16 [label %do.end], !srcloc !208

if.then16:                                        ; preds = %init_authenc_job.exit
  call void @__sanitizer_cov_trace_pc() #9
  %91 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %93 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i.i.i = icmp eq i8 %93, 0
  %94 = lshr i32 %92, 24
  %retval.0.i.i.i35 = select i1 %tobool.not.i.i.i, i32 %92, i32 %94
  %and.i.i = shl i32 %retval.0.i.i.i35, 2
  %mul.i = and i32 %and.i.i, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.57, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %hw_desc.i, i32 noundef %mul.i, i1 noundef zeroext true) #7
  br label %do.end

do.end:                                           ; preds = %if.then16, %init_authenc_job.exit
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %95 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %__ctx.i.i, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %97 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %flags.i, align 4
  %and.i36 = and i32 %98, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i36)
  %tobool.not.i37 = icmp eq i32 %and.i36, 0
  br i1 %tobool.not.i37, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i38 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %99 = ptrtoint ptr %driver_data.i.i38 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %driver_data.i.i38, align 4
  %engine.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %100, i32 0, i32 18
  %101 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %engine.i, align 4
  %call3.i = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %102, ptr noundef %req) #7
  br label %if.end.i

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %hw_desc.i39 = getelementptr inbounds %struct.aead_edesc, ptr %96, i32 0, i32 8
  %call4.i = tail call i32 @caam_jr_enqueue(ptr noundef %3, ptr noundef %hw_desc.i39, ptr noundef nonnull @aead_crypt_done, ptr noundef %req) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call3.i, %if.then.i ], [ %call4.i, %if.else.i ]
  %103 = zext i32 %ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %103, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %ret.0.i, label %if.then6.i [
    i32 -115, label %if.end.i.cleanup_crit_edge
    i32 -16, label %if.end.i.cleanup_crit_edge41
  ]

if.end.i.cleanup_crit_edge41:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @aead_unmap(ptr noundef %3, ptr noundef %96, ptr noundef %req) #7
  %104 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %__ctx.i.i, align 4
  tail call void @kfree(ptr noundef %105) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %if.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge41, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %ret.0.i, %if.end.i.cleanup_crit_edge ], [ %ret.0.i, %if.end.i.cleanup_crit_edge41 ], [ %ret.0.i, %if.then6.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %all_contig) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @chachapoly_set_sh_desc(ptr noundef %aead) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jrdev1 = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3
  %0 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jrdev1, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 0, i32 3, i32 3
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %3, i32 -104
  %4 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ivsize.i.i, align 8
  %cdata = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 12
  %keylen = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 16
  %6 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %authsize = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 4, i32 36
  %8 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %authsize, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool3.not = icmp eq i32 %9, 0
  br i1 %tobool3.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %sh_desc_enc = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 2, i32 4
  %adata = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 3, i32 1
  tail call void @cnstr_shdsc_chachapoly(ptr noundef %sh_desc_enc, ptr noundef %cdata, ptr noundef %adata, i32 noundef %5, i32 noundef %9, i1 noundef zeroext true, i1 noundef zeroext false) #7
  %sh_desc_enc_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 104
  %10 = ptrtoint ptr %sh_desc_enc_dma to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %sh_desc_enc_dma, align 4
  %12 = ptrtoint ptr %sh_desc_enc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sh_desc_enc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %14 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool.not.i.i.i = icmp eq i8 %14, 0
  %15 = lshr i32 %13, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %13, i32 %15
  %and.i.i = shl i32 %retval.0.i.i.i, 2
  %mul.i = and i32 %and.i.i, 508
  %dir = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 116
  %16 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %11, i32 noundef %mul.i, i32 noundef %17) #7
  %sh_desc_dec = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 1, i32 3, i32 4, i32 92
  %18 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %authsize, align 4
  tail call void @cnstr_shdsc_chachapoly(ptr noundef %sh_desc_dec, ptr noundef %cdata, ptr noundef %adata, i32 noundef %5, i32 noundef %19, i1 noundef zeroext false, i1 noundef zeroext false) #7
  %sh_desc_dec_dma = getelementptr inbounds %struct.crypto_aead, ptr %aead, i32 3, i32 2, i32 108
  %20 = ptrtoint ptr %sh_desc_dec_dma to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %sh_desc_dec_dma, align 4
  %22 = ptrtoint ptr %sh_desc_dec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %sh_desc_dec, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %24 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i.i.i1 = icmp eq i8 %24, 0
  %25 = lshr i32 %23, 24
  %retval.0.i.i.i2 = select i1 %tobool.not.i.i.i1, i32 %23, i32 %25
  %and.i.i3 = shl i32 %retval.0.i.i.i2, 2
  %mul.i4 = and i32 %and.i.i3, 508
  %26 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %21, i32 noundef %mul.i4, i32 noundef %27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_chachapoly(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @chachapoly_crypt(ptr noundef %req, i1 noundef zeroext %encrypt) unnamed_addr #5 align 64 {
entry:
  %all_contig = alloca i8, align 1
  call void @__sanitizer_cov_trace_pc() #9
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %jrdev2 = getelementptr i8, ptr %1, i32 768
  %2 = ptrtoint ptr %jrdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev2, align 4
  call void @llvm.lifetime.start.p0(i64 1, ptr nonnull %all_contig) #7
  %4 = ptrtoint ptr %all_contig to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 -1, ptr %all_contig, align 1, !annotation !211
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %5 = load i32, ptr @caam_ptr_sz, align 4
  %mul = mul i32 %5, 3
  %add4 = add i32 %mul, 52
  %call5 = call fastcc ptr @aead_edesc_alloc(ptr noundef %req, i32 noundef %add4, ptr noundef nonnull %all_contig, i1 noundef zeroext %encrypt)
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %call5 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %all_contig to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %all_contig, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool8 = icmp ne i8 %8, 0
  %9 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %10, i32 12
  %11 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i.i = getelementptr i8, ptr %12, i32 -104
  %13 = ptrtoint ptr %ivsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ivsize.i.i.i, align 8
  %assoclen3.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %15 = ptrtoint ptr %assoclen3.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %assoclen3.i, align 8
  tail call fastcc void @init_aead_job(ptr noundef %req, ptr noundef %call5, i1 noundef zeroext %tobool8, i1 noundef zeroext %encrypt) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %14)
  %cmp.not.i = icmp eq i32 %14, 12
  %sub.i = select i1 %cmp.not.i, i32 0, i32 %14
  %spec.select.i = sub i32 %16, %sub.i
  %spec.select15.i = select i1 %cmp.not.i, i32 35652608, i32 35653632
  %hw_desc.i = getelementptr inbounds %struct.aead_edesc, ptr %call5, i32 0, i32 8
  %17 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %19 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i.i.i.i = icmp eq i8 %19, 0
  %20 = lshr i32 %18, 24
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %18, i32 %20
  %and.i.i.i.i = and i32 %retval.0.i.i.i.i.i, 127
  %add.ptr.i.i16.i = getelementptr i32, ptr %hw_desc.i, i32 %and.i.i.i.i
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 -1475591420, i32 71503016
  %21 = ptrtoint ptr %add.ptr.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i.i.i, ptr %add.ptr.i.i16.i, align 4
  %22 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %24 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i6.i.i = icmp eq i8 %24, 0
  %25 = tail call i32 @llvm.bswap.i32(i32 %23) #7
  %retval.0.i7.i.i = select i1 %tobool.not.i6.i.i, i32 %23, i32 %25
  %add.i.i = add i32 %retval.0.i7.i.i, 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #7
  %retval.0.i9.i.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %26
  %27 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i9.i.i, ptr %hw_desc.i, align 4
  %28 = lshr i32 %26, 24
  %retval.0.i.i.i.i18.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %28
  %and.i.i.i19.i = and i32 %retval.0.i.i.i.i18.i, 127
  %add.ptr.i.i20.i = getelementptr i32, ptr %hw_desc.i, i32 %and.i.i.i19.i
  %29 = tail call i32 @llvm.bswap.i32(i32 %spec.select.i) #7
  %retval.0.i.i21.i = select i1 %tobool.not.i6.i.i, i32 %spec.select.i, i32 %29
  %30 = ptrtoint ptr %add.ptr.i.i20.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %retval.0.i.i21.i, ptr %add.ptr.i.i20.i, align 4
  %31 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %33 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool.not.i6.i22.i = icmp eq i8 %33, 0
  %34 = tail call i32 @llvm.bswap.i32(i32 %32) #7
  %retval.0.i7.i23.i = select i1 %tobool.not.i6.i22.i, i32 %32, i32 %34
  %add.i24.i = add i32 %retval.0.i7.i23.i, 1
  %35 = tail call i32 @llvm.bswap.i32(i32 %add.i24.i) #7
  %retval.0.i9.i25.i = select i1 %tobool.not.i6.i22.i, i32 %add.i24.i, i32 %35
  %36 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %retval.0.i9.i25.i, ptr %hw_desc.i, align 4
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %37 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %iv.i, align 32
  %39 = lshr i32 %35, 24
  %retval.0.i.i.i.i = select i1 %tobool.not.i6.i22.i, i32 %add.i24.i, i32 %39
  %and.i.i.i = and i32 %retval.0.i.i.i.i, 127
  %call2.i.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %and.i.i.i, ptr noundef getelementptr inbounds ([19 x i8], ptr @.str.58, i32 0, i32 7)) #10
  %or.i.i = or i32 %14, %spec.select15.i
  %or1.i.i.i = or i32 %or.i.i, 276824064
  %40 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %42 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %42)
  %tobool.not.i.i.i.i.i.i.i = icmp eq i8 %42, 0
  %43 = lshr i32 %41, 24
  %retval.0.i.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %41, i32 %43
  %and.i.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i.i = getelementptr i32, ptr %hw_desc.i, i32 %and.i.i.i.i.i.i
  %44 = tail call i32 @llvm.bswap.i32(i32 %or1.i.i.i) #7
  %retval.0.i.i.i.i26.i = select i1 %tobool.not.i.i.i.i.i.i.i, i32 %or1.i.i.i, i32 %44
  %45 = ptrtoint ptr %add.ptr.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %retval.0.i.i.i.i26.i, ptr %add.ptr.i.i.i.i.i, align 4
  %46 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %48 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool.not.i6.i.i.i.i = icmp eq i8 %48, 0
  %49 = tail call i32 @llvm.bswap.i32(i32 %47) #7
  %retval.0.i7.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %47, i32 %49
  %add.i.i.i.i = add i32 %retval.0.i7.i.i.i.i, 1
  %50 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i.i) #7
  %retval.0.i9.i.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %50
  %51 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %retval.0.i9.i.i.i.i, ptr %hw_desc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i5.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i5.i.i, label %if.end.init_chachapoly_job.exit_crit_edge, label %if.then.i.i.i.i

if.end.init_chachapoly_job.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %init_chachapoly_job.exit

if.then.i.i.i.i:                                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %52 = lshr i32 %50, 24
  %retval.0.i.i.i.i5.i.i.i = select i1 %tobool.not.i6.i.i.i.i, i32 %add.i.i.i.i, i32 %52
  %and.i.i.i6.i.i.i = and i32 %retval.0.i.i.i.i5.i.i.i, 127
  %add.ptr.i.i7.i.i.i = getelementptr i32, ptr %hw_desc.i, i32 %and.i.i.i6.i.i.i
  %53 = call ptr @memcpy(ptr %add.ptr.i.i7.i.i.i, ptr %38, i32 %14)
  br label %init_chachapoly_job.exit

init_chachapoly_job.exit:                         ; preds = %if.then.i.i.i.i, %if.end.init_chachapoly_job.exit_crit_edge
  %54 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %56 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool.not.i.i.i.i27.i = icmp eq i8 %56, 0
  %57 = tail call i32 @llvm.bswap.i32(i32 %55) #7
  %retval.0.i.i8.i.i.i = select i1 %tobool.not.i.i.i.i27.i, i32 %55, i32 %57
  %sub.i.i.i.i = add i32 %14, 3
  %div8.i.i.i.i = lshr i32 %sub.i.i.i.i, 2
  %add2.i.i.i.i = add i32 %retval.0.i.i8.i.i.i, %div8.i.i.i.i
  %58 = tail call i32 @llvm.bswap.i32(i32 %add2.i.i.i.i) #7
  %retval.0.i10.i.i.i.i = select i1 %tobool.not.i.i.i.i27.i, i32 %add2.i.i.i.i, i32 %58
  %59 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %retval.0.i10.i.i.i.i, ptr %hw_desc.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @chachapoly_crypt.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@chachapoly_crypt, %do.end)) #7
          to label %if.then16 [label %do.end], !srcloc !208

if.then16:                                        ; preds = %init_chachapoly_job.exit
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %hw_desc.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %hw_desc.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %62 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %62)
  %tobool.not.i.i.i = icmp eq i8 %62, 0
  %63 = lshr i32 %61, 24
  %retval.0.i.i.i33 = select i1 %tobool.not.i.i.i, i32 %61, i32 %63
  %and.i.i = shl i32 %retval.0.i.i.i33, 2
  %mul.i = and i32 %and.i.i, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.60, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %hw_desc.i, i32 noundef %mul.i, i1 noundef zeroext true) #7
  br label %do.end

do.end:                                           ; preds = %if.then16, %init_chachapoly_job.exit
  %__ctx.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %64 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %__ctx.i.i, align 4
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 4
  %66 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %67, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %68 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %driver_data.i.i, align 4
  %engine.i = getelementptr inbounds %struct.caam_drv_private_jr, ptr %69, i32 0, i32 18
  %70 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %engine.i, align 4
  %call3.i = tail call i32 @crypto_transfer_aead_request_to_engine(ptr noundef %71, ptr noundef %req) #7
  br label %if.end.i

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %hw_desc.i34 = getelementptr inbounds %struct.aead_edesc, ptr %65, i32 0, i32 8
  %call4.i = tail call i32 @caam_jr_enqueue(ptr noundef %3, ptr noundef %hw_desc.i34, ptr noundef nonnull @aead_crypt_done, ptr noundef %req) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.else.i, %if.then.i
  %ret.0.i = phi i32 [ %call3.i, %if.then.i ], [ %call4.i, %if.else.i ]
  %72 = zext i32 %ret.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %ret.0.i, label %if.then6.i [
    i32 -115, label %if.end.i.cleanup_crit_edge
    i32 -16, label %if.end.i.cleanup_crit_edge36
  ]

if.end.i.cleanup_crit_edge36:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @aead_unmap(ptr noundef %3, ptr noundef %65, ptr noundef %req) #7
  %73 = ptrtoint ptr %__ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %__ctx.i.i, align 4
  tail call void @kfree(ptr noundef %74) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then6.i, %if.end.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge36, %if.then
  %retval.0 = phi i32 [ %6, %if.then ], [ %ret.0.i, %if.end.i.cleanup_crit_edge ], [ %ret.0.i, %if.end.i.cleanup_crit_edge36 ], [ %ret.0.i, %if.then6.i ]
  call void @llvm.lifetime.end.p0(i64 1, ptr nonnull %all_contig) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aes_skcipher_setkey(ptr noundef %skcipher, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 24, label %entry.if.end_crit_edge6
    i32 32, label %entry.if.end_crit_edge7
  ]

entry.if.end_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge6:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge6, %entry.if.end_crit_edge7
  tail call fastcc void @skcipher_setkey(ptr noundef %skcipher, ptr noundef %key, i32 noundef %keylen, i32 noundef 0)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @skcipher_crypt(ptr noundef %req, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @skcipher_crypt(ptr noundef %req, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @des3_skcipher_setkey(ptr noundef %skcipher, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #7
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
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.cond.false_crit_edge, label %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %verify_skcipher_des3_key.exit.thread

lor.lhs.false.i.i.i.cond.false_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

land.lhs.true.i.i.i:                              ; preds = %entry
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.i.cond.false_crit_edge, label %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %verify_skcipher_des3_key.exit.thread

land.lhs.true.i.i.i.cond.false_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.false

verify_skcipher_des3_key.exit.thread:             ; preds = %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge
  %24 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !209
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.i.i.i.cond.false_crit_edge, %lor.lhs.false.i.i.i.cond.false_crit_edge
  %25 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !209
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  call fastcc void @skcipher_setkey(ptr noundef %skcipher, ptr noundef %key, i32 noundef %keylen, i32 noundef 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %verify_skcipher_des3_key.exit.thread
  %ret.0.i.i.i6 = phi i32 [ -126, %verify_skcipher_des3_key.exit.thread ], [ 0, %cond.false ]
  ret i32 %ret.0.i.i.i6
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @des_skcipher_setkey(ptr noundef %skcipher, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.des_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i) #7
  %0 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 128)
  %call.i.i = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i, ptr noundef %key, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -126
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.verify_skcipher_des_key.exit_crit_edge

entry.verify_skcipher_des_key.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %verify_skcipher_des_key.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 0, i32 2
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
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #7, !srcloc !209
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool.not, label %cond.false, label %verify_skcipher_des_key.exit.cond.end_crit_edge

verify_skcipher_des_key.exit.cond.end_crit_edge:  ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @skcipher_setkey(ptr noundef %skcipher, ptr noundef %key, i32 noundef %keylen, i32 noundef 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %verify_skcipher_des_key.exit.cond.end_crit_edge
  ret i32 %err.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ctr_skcipher_setkey(ptr noundef %skcipher, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 24, label %entry.if.end_crit_edge7
    i32 32, label %entry.if.end_crit_edge8
  ]

entry.if.end_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge7:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge7, %entry.if.end_crit_edge8
  tail call fastcc void @skcipher_setkey(ptr noundef %skcipher, ptr noundef %key, i32 noundef %keylen, i32 noundef 16)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rfc3686_skcipher_setkey(ptr noundef %skcipher, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 20, label %entry.if.end_crit_edge
    i32 28, label %entry.if.end_crit_edge8
    i32 36, label %entry.if.end_crit_edge9
  ]

entry.if.end_crit_edge9:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge8:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge8, %entry.if.end_crit_edge9
  %sub = add nsw i32 %keylen, -4
  tail call fastcc void @skcipher_setkey(ptr noundef %skcipher, ptr noundef %key, i32 noundef %sub, i32 noundef 20)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @xts_skcipher_setkey(ptr noundef %skcipher, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jrdev1 = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 2
  %0 = ptrtoint ptr %jrdev1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jrdev1, align 4
  %parent = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %rem.i = and i32 %keylen, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.body_crit_edge

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.end.i:                                         ; preds = %entry
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 0, i32 2
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %7, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end10_crit_edge, label %land.lhs.true.i

if.end.i.if.end10_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true.i:                                  ; preds = %if.end.i
  %div10.i = lshr i32 %keylen, 1
  %add.ptr.i = getelementptr i8, ptr %key, i32 %div10.i
  %call.i.i = tail call i32 @__crypto_memneq(ptr noundef %key, ptr noundef %add.ptr.i, i32 noundef %div10.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.not.i, label %land.lhs.true.i.do.body_crit_edge, label %land.lhs.true.i.if.end10_crit_edge

land.lhs.true.i.if.end10_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

land.lhs.true.i.do.body_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.i.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @xts_skcipher_setkey.__UNIQUE_ID_ddebug523, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@xts_skcipher_setkey, %cleanup)) #7
          to label %if.then9 [label %cleanup], !srcloc !208

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @xts_skcipher_setkey.__UNIQUE_ID_ddebug523, ptr noundef %1, ptr noundef nonnull @.str.91) #7
  br label %cleanup

if.end10:                                         ; preds = %land.lhs.true.i.if.end10_crit_edge, %if.end.i.if.end10_crit_edge
  %8 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %keylen, label %if.then12 [
    i32 32, label %if.end10.if.end13_crit_edge
    i32 64, label %if.end10.if.end13_crit_edge75
  ]

if.end10.if.end13_crit_edge75:                    ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.end10.if.end13_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then12:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %xts_key_fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 2, i32 4, i32 40
  %9 = ptrtoint ptr %xts_key_fallback to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %xts_key_fallback, align 4
  br label %if.end13

if.end13:                                         ; preds = %if.then12, %if.end10.if.end13_crit_edge, %if.end10.if.end13_crit_edge75
  %era = getelementptr inbounds %struct.caam_drv_private, ptr %5, i32 0, i32 11
  %10 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %era, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %11)
  %cmp14 = icmp slt i32 %11, 9
  br i1 %cmp14, label %if.end13.if.then17_crit_edge, label %lor.lhs.false

if.end13.if.then17_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

lor.lhs.false:                                    ; preds = %if.end13
  %xts_key_fallback15 = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 2, i32 4, i32 40
  %12 = ptrtoint ptr %xts_key_fallback15 to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %xts_key_fallback15, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool16.not = icmp eq i8 %13, 0
  br i1 %tobool16.not, label %lor.lhs.false.if.end22_crit_edge, label %lor.lhs.false.if.then17_crit_edge

lor.lhs.false.if.then17_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then17

lor.lhs.false.if.end22_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then17:                                        ; preds = %lor.lhs.false.if.then17_crit_edge, %if.end13.if.then17_crit_edge
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 2, i32 4, i32 44
  %14 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fallback, align 4
  %call18 = tail call i32 @crypto_skcipher_setkey(ptr noundef %15, ptr noundef %key, i32 noundef %keylen) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call18)
  %tobool19.not = icmp eq i32 %call18, 0
  br i1 %tobool19.not, label %if.then17.if.end22_crit_edge, label %if.then17.cleanup_crit_edge

if.then17.cleanup_crit_edge:                      ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then17.if.end22_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.end22:                                         ; preds = %if.then17.if.end22_crit_edge, %lor.lhs.false.if.end22_crit_edge
  %cdata = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 2, i32 4, i32 12
  %keylen23 = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 2, i32 4, i32 16
  %16 = ptrtoint ptr %keylen23 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %keylen, ptr %keylen23, align 4
  %key_virt = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 2, i32 4, i32 28
  %17 = ptrtoint ptr %key_virt to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %key, ptr %key_virt, align 4
  %key_inline = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 2, i32 4, i32 32
  %18 = ptrtoint ptr %key_inline to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %key_inline, align 4
  %sh_desc_enc = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 1, i32 1, i32 8
  tail call void @cnstr_shdsc_xts_skcipher_encap(ptr noundef %sh_desc_enc, ptr noundef %cdata) #7
  %sh_desc_enc_dma = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 1, i32 108
  %19 = ptrtoint ptr %sh_desc_enc_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sh_desc_enc_dma, align 4
  %21 = ptrtoint ptr %sh_desc_enc to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sh_desc_enc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %23 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i.i = icmp eq i8 %23, 0
  %24 = lshr i32 %22, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %22, i32 %24
  %and.i.i = shl i32 %retval.0.i.i.i, 2
  %mul.i = and i32 %and.i.i, 508
  %dir = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 1, i32 120
  %25 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %20, i32 noundef %mul.i, i32 noundef %26) #7
  %sh_desc_dec = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 1, i32 2, i32 4, i32 92
  tail call void @cnstr_shdsc_xts_skcipher_decap(ptr noundef %sh_desc_dec, ptr noundef %cdata) #7
  %sh_desc_dec_dma = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 1, i32 112
  %27 = ptrtoint ptr %sh_desc_dec_dma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %sh_desc_dec_dma, align 4
  %29 = ptrtoint ptr %sh_desc_dec to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %sh_desc_dec, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %31 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i.i.i67 = icmp eq i8 %31, 0
  %32 = lshr i32 %30, 24
  %retval.0.i.i.i68 = select i1 %tobool.not.i.i.i67, i32 %30, i32 %32
  %and.i.i69 = shl i32 %retval.0.i.i.i68, 2
  %mul.i70 = and i32 %and.i.i69, 508
  %33 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %1, i32 noundef %28, i32 noundef %mul.i70, i32 noundef %34) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end22, %if.then17.cleanup_crit_edge, %if.then9, %do.body
  %retval.0 = phi i32 [ 0, %if.end22 ], [ -22, %if.then9 ], [ %call18, %if.then17.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @skcipher_setkey(ptr noundef %skcipher, ptr noundef %key, i32 noundef %keylen, i32 noundef %ctx1_iv_off) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %jrdev2 = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 2
  %2 = ptrtoint ptr %jrdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev2, align 4
  %ivsize.i = getelementptr i8, ptr %1, i32 -100
  %4 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ivsize.i, align 4
  %rfc3686 = getelementptr i8, ptr %1, i32 520
  %6 = ptrtoint ptr %rfc3686 to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %rfc3686, align 8, !range !205
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skcipher_setkey.__UNIQUE_ID_ddebug522, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@skcipher_setkey, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.62, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %key, i32 noundef %keylen, i1 noundef zeroext true) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool = icmp ne i8 %7, 0
  %cdata = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 2, i32 4, i32 12
  %keylen11 = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 2, i32 4, i32 16
  %8 = ptrtoint ptr %keylen11 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %keylen, ptr %keylen11, align 4
  %key_virt = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 2, i32 4, i32 28
  %9 = ptrtoint ptr %key_virt to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %key, ptr %key_virt, align 4
  %key_inline = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 2, i32 4, i32 32
  %10 = ptrtoint ptr %key_inline to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %key_inline, align 4
  %sh_desc_enc = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 1, i32 1, i32 8
  tail call void @cnstr_shdsc_skcipher_encap(ptr noundef %sh_desc_enc, ptr noundef %cdata, i32 noundef %5, i1 noundef zeroext %tobool, i32 noundef %ctx1_iv_off) #7
  %sh_desc_enc_dma = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 1, i32 108
  %11 = ptrtoint ptr %sh_desc_enc_dma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sh_desc_enc_dma, align 4
  %13 = ptrtoint ptr %sh_desc_enc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sh_desc_enc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %15 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i.i = icmp eq i8 %15, 0
  %16 = lshr i32 %14, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %14, i32 %16
  %and.i.i = shl i32 %retval.0.i.i.i, 2
  %mul.i = and i32 %and.i.i, 508
  %dir = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 1, i32 120
  %17 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %3, i32 noundef %12, i32 noundef %mul.i, i32 noundef %18) #7
  %sh_desc_dec = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 1, i32 2, i32 4, i32 92
  tail call void @cnstr_shdsc_skcipher_decap(ptr noundef %sh_desc_dec, ptr noundef %cdata, i32 noundef %5, i1 noundef zeroext %tobool, i32 noundef %ctx1_iv_off) #7
  %sh_desc_dec_dma = getelementptr inbounds %struct.crypto_skcipher, ptr %skcipher, i32 3, i32 1, i32 112
  %19 = ptrtoint ptr %sh_desc_dec_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sh_desc_dec_dma, align 4
  %21 = ptrtoint ptr %sh_desc_dec to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %sh_desc_dec, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %23 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i.i.i1 = icmp eq i8 %23, 0
  %24 = lshr i32 %22, 24
  %retval.0.i.i.i2 = select i1 %tobool.not.i.i.i1, i32 %22, i32 %24
  %and.i.i3 = shl i32 %retval.0.i.i.i2, 2
  %mul.i4 = and i32 %and.i.i3, 508
  %25 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dir, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %3, i32 noundef %20, i32 noundef %mul.i4, i32 noundef %26) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_skcipher_encap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_skcipher_decap(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i32 noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @skcipher_crypt(ptr noundef %req, i1 noundef zeroext %encrypt) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %jrdev2 = getelementptr i8, ptr %1, i32 768
  %2 = ptrtoint ptr %jrdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev2, align 4
  %driver_data.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  %parent = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %parent, align 8
  %driver_data.i102 = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %driver_data.i102 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %driver_data.i102, align 4
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %fallback = getelementptr i8, ptr %1, i32 828
  %12 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fallback, align 4
  %tobool5.not = icmp eq ptr %13, null
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %fallback6 = getelementptr i8, ptr %1, i32 828
  %14 = ptrtoint ptr %fallback6 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fallback6, align 4
  %tobool7.not = icmp eq ptr %15, null
  br i1 %tobool7.not, label %if.end.if.end25_crit_edge, label %land.lhs.true8

if.end.if.end25_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

land.lhs.true8:                                   ; preds = %if.end
  %era = getelementptr inbounds %struct.caam_drv_private, ptr %9, i32 0, i32 11
  %16 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %era, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %17)
  %cmp = icmp slt i32 %17, 9
  br i1 %cmp, label %land.lhs.true9, label %land.lhs.true8.lor.lhs.false_crit_edge

land.lhs.true8.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true9:                                   ; preds = %land.lhs.true8
  %__crt_alg.i.i.i = getelementptr i8, ptr %1, i32 12
  %18 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %19, i32 -100
  %20 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ivsize.i.i, align 4
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %22 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %iv.i, align 4
  %div4.i = lshr i32 %21, 1
  %add.ptr.i = getelementptr i8, ptr %23, i32 %div4.i
  %24 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %add.ptr.i, align 1
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %25)
  %tobool.i.not = icmp eq i64 %25, 0
  br i1 %tobool.i.not, label %land.lhs.true9.lor.lhs.false_crit_edge, label %land.lhs.true9.if.then12_crit_edge

land.lhs.true9.if.then12_crit_edge:               ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

land.lhs.true9.lor.lhs.false_crit_edge:           ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %land.lhs.true9.lor.lhs.false_crit_edge, %land.lhs.true8.lor.lhs.false_crit_edge
  %xts_key_fallback = getelementptr i8, ptr %1, i32 824
  %26 = ptrtoint ptr %xts_key_fallback to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %xts_key_fallback, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool11.not = icmp eq i8 %27, 0
  br i1 %tobool11.not, label %lor.lhs.false.if.end25_crit_edge, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then12

lor.lhs.false.if.end25_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end25

if.then12:                                        ; preds = %lor.lhs.false.if.then12_crit_edge, %land.lhs.true9.if.then12_crit_edge
  %fallback_req = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %15, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 3
  %28 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %29 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 1
  %31 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 2
  %33 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 1
  %35 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 2
  %36 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %34, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 4, i32 4
  %37 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %30, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %38 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %40 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dst, align 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %42 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 2
  %44 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %39, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 3
  %45 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %41, ptr %dst2.i, align 4
  %46 = ptrtoint ptr %fallback_req to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %11, ptr %fallback_req, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 2, i32 1
  %47 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %43, ptr %iv4.i, align 4
  br i1 %encrypt, label %cond.true, label %cond.false

cond.true:                                        ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %call22 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req) #7
  br label %cleanup

cond.false:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %call24 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req) #7
  br label %cleanup

if.end25:                                         ; preds = %lor.lhs.false.if.end25_crit_edge, %if.end.if.end25_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %48 = load i32, ptr @caam_ptr_sz, align 4
  %add = mul i32 %48, 12
  %mul26 = add i32 %add, 80
  %call27 = tail call fastcc ptr @skcipher_edesc_alloc(ptr noundef %req, i32 noundef %mul26)
  %cmp.i = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end31

if.then29:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %call27 to i32
  br label %cleanup

if.end31:                                         ; preds = %if.end25
  tail call fastcc void @init_skcipher_job(ptr noundef %req, ptr noundef %call27, i1 noundef zeroext %encrypt)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skcipher_crypt.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@skcipher_crypt, %do.end)) #7
          to label %if.then39 [label %do.end], !srcloc !208

if.then39:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  %hw_desc = getelementptr inbounds %struct.skcipher_edesc, ptr %call27, i32 0, i32 9
  %50 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %hw_desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %52 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool.not.i.i.i = icmp eq i8 %52, 0
  %53 = lshr i32 %51, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 %51, i32 %53
  %and.i.i = shl i32 %retval.0.i.i.i, 2
  %mul.i = and i32 %and.i.i, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.64, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %hw_desc, i32 noundef %mul.i, i1 noundef zeroext true) #7
  br label %do.end

do.end:                                           ; preds = %if.then39, %if.end31
  %flags47 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %54 = ptrtoint ptr %flags47 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags47, align 4
  %and = and i32 %55, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool48.not = icmp eq i32 %and, 0
  br i1 %tobool48.not, label %if.else, label %if.then49

if.then49:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %engine = getelementptr inbounds %struct.caam_drv_private_jr, ptr %5, i32 0, i32 18
  %56 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %engine, align 4
  %call50 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %57, ptr noundef %req) #7
  br label %if.end52

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %hw_desc44 = getelementptr inbounds %struct.skcipher_edesc, ptr %call27, i32 0, i32 9
  %call51 = tail call i32 @caam_jr_enqueue(ptr noundef %3, ptr noundef %hw_desc44, ptr noundef nonnull @skcipher_crypt_done, ptr noundef %req) #7
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then49
  %ret.0 = phi i32 [ %call50, %if.then49 ], [ %call51, %if.else ]
  %58 = zext i32 %ret.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %58, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %ret.0, label %if.then56 [
    i32 -115, label %if.end52.cleanup_crit_edge
    i32 -16, label %if.end52.cleanup_crit_edge107
  ]

if.end52.cleanup_crit_edge107:                    ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then56:                                        ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #9
  %59 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i.i104 = getelementptr i8, ptr %60, i32 12
  %61 = ptrtoint ptr %__crt_alg.i.i.i104 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %__crt_alg.i.i.i104, align 4
  %ivsize.i.i105 = getelementptr i8, ptr %62, i32 -100
  %63 = ptrtoint ptr %ivsize.i.i105 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %ivsize.i.i105, align 4
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %65 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %67 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dst.i, align 4
  %69 = ptrtoint ptr %call27 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %call27, align 4
  %dst_nents.i = getelementptr inbounds %struct.skcipher_edesc, ptr %call27, i32 0, i32 1
  %71 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dst_nents.i, align 4
  %iv_dma.i = getelementptr inbounds %struct.skcipher_edesc, ptr %call27, i32 0, i32 4
  %73 = ptrtoint ptr %iv_dma.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %iv_dma.i, align 4
  %sec4_sg_dma.i = getelementptr inbounds %struct.skcipher_edesc, ptr %call27, i32 0, i32 7
  %75 = ptrtoint ptr %sec4_sg_dma.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %sec4_sg_dma.i, align 4
  %sec4_sg_bytes.i = getelementptr inbounds %struct.skcipher_edesc, ptr %call27, i32 0, i32 5
  %77 = ptrtoint ptr %sec4_sg_bytes.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %sec4_sg_bytes.i, align 4
  tail call fastcc void @caam_unmap(ptr noundef %3, ptr noundef %66, ptr noundef %68, i32 noundef %70, i32 noundef %72, i32 noundef %74, i32 noundef %64, i32 noundef %76, i32 noundef %78) #7
  tail call void @kfree(ptr noundef %call27) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then56, %if.end52.cleanup_crit_edge, %if.end52.cleanup_crit_edge107, %if.then29, %cond.false, %cond.true, %land.lhs.true.cleanup_crit_edge
  %retval.0 = phi i32 [ %49, %if.then29 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ %call22, %cond.true ], [ %call24, %cond.false ], [ %ret.0, %if.end52.cleanup_crit_edge ], [ %ret.0, %if.end52.cleanup_crit_edge107 ], [ %ret.0, %if.then56 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @skcipher_edesc_alloc(ptr nocapture noundef %req, i32 noundef %desc_bytes) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %jrdev3 = getelementptr i8, ptr %1, i32 768
  %2 = ptrtoint ptr %jrdev3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev3, align 4
  %flags4 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %4 = ptrtoint ptr %flags4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flags4, align 4
  %and = and i32 %5, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %7, i32 -100
  %8 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ivsize.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 8
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req, align 128
  %conv = zext i32 %13 to i64
  %call6 = tail call i32 @sg_nents_for_len(ptr noundef %11, i64 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %do.end, label %if.end, !prof !212

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %req, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.18, i32 noundef %15) #10
  %16 = inttoptr i32 %call6 to ptr
  br label %cleanup

if.end:                                           ; preds = %entry
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst, align 4
  %19 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %src, align 8
  %cmp13.not = icmp eq ptr %18, %20
  br i1 %cmp13.not, label %if.end.if.end35_crit_edge, label %if.then15

if.end.if.end35_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then15:                                        ; preds = %if.end
  %21 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %req, align 128
  %conv18 = zext i32 %22 to i64
  %call19 = tail call i32 @sg_nents_for_len(ptr noundef %18, i64 noundef %conv18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %cmp20 = icmp slt i32 %call19, 0
  br i1 %cmp20, label %do.end31, label %if.then15.if.end35_crit_edge, !prof !212

if.then15.if.end35_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

do.end31:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #9
  %23 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %req, align 128
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.23, i32 noundef %24) #10
  %25 = inttoptr i32 %call19 to ptr
  br label %cleanup

if.end35:                                         ; preds = %if.then15.if.end35_crit_edge, %if.end.if.end35_crit_edge
  %dst_nents.0 = phi i32 [ %call19, %if.then15.if.end35_crit_edge ], [ 0, %if.end.if.end35_crit_edge ]
  %26 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %src, align 8
  %28 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dst, align 4
  %cmp38 = icmp eq ptr %27, %29
  br i1 %cmp38, label %if.then46, label %if.else, !prof !210

if.then46:                                        ; preds = %if.end35
  %call48 = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %27, i32 noundef %call6, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %do.end61, label %if.then46.if.end99_crit_edge, !prof !212

if.then46.if.end99_crit_edge:                     ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

do.end61:                                         ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.else:                                          ; preds = %if.end35
  %call65 = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %27, i32 noundef %call6, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %do.end78, label %if.end80, !prof !212

do.end78:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.28) #10
  br label %cleanup

if.end80:                                         ; preds = %if.else
  %30 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dst, align 4
  %call82 = tail call i32 @dma_map_sg_attrs(ptr noundef %3, ptr noundef %31, i32 noundef %dst_nents.0, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call82)
  %tobool83.not = icmp eq i32 %call82, 0
  br i1 %tobool83.not, label %do.end95, label %if.end80.if.end99_crit_edge, !prof !212

if.end80.if.end99_crit_edge:                      ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end99

do.end95:                                         ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.33) #10
  %32 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %src, align 8
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %33, i32 noundef %call6, i32 noundef 1, i32 noundef 0) #7
  br label %cleanup

if.end99:                                         ; preds = %if.end80.if.end99_crit_edge, %if.then46.if.end99_crit_edge
  %mapped_src_nents.0 = phi i32 [ %call48, %if.then46.if.end99_crit_edge ], [ %call65, %if.end80.if.end99_crit_edge ]
  %mapped_dst_nents.0 = phi i32 [ 0, %if.then46.if.end99_crit_edge ], [ %call82, %if.end80.if.end99_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool100 = icmp ne i32 %9, 0
  %tobool100.not = xor i1 %tobool100, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mapped_src_nents.0)
  %cmp101 = icmp eq i32 %mapped_src_nents.0, 1
  %or.cond = select i1 %tobool100.not, i1 %cmp101, i1 false
  %lnot.ext109 = zext i1 %tobool100 to i32
  %add = add i32 %mapped_src_nents.0, %lnot.ext109
  %sec4_sg_ents.0 = select i1 %or.cond, i32 0, i32 %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %mapped_dst_nents.0)
  %cmp112 = icmp sgt i32 %mapped_dst_nents.0, 1
  %or.cond408 = select i1 %tobool100, i1 true, i1 %cmp112
  br i1 %or.cond408, label %if.then114, label %if.else137

if.then114:                                       ; preds = %if.end99
  %34 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src, align 8
  %36 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dst, align 4
  %cmp117 = icmp eq ptr %35, %37
  br i1 %cmp117, label %if.then119, label %if.else127

if.then119:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %sec4_sg_ents.0, 3
  %and.i = and i32 %add.i, -4
  %add126 = or i32 %and.i, %lnot.ext109
  br label %if.end139

if.else127:                                       ; preds = %if.then114
  call void @__sanitizer_cov_trace_pc() #9
  %add133 = select i1 %tobool100, i32 4, i32 3
  %add.i411 = add i32 %add133, %mapped_dst_nents.0
  %and.i412 = and i32 %add.i411, -4
  %add135 = add i32 %sec4_sg_ents.0, %and.i412
  br label %if.end139

if.else137:                                       ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %add.i413 = add i32 %sec4_sg_ents.0, 3
  %and.i414 = and i32 %add.i413, -4
  br label %if.end139

if.end139:                                        ; preds = %if.else137, %if.else127, %if.then119
  %sec4_sg_ents.1 = phi i32 [ %add126, %if.then119 ], [ %add135, %if.else127 ], [ %and.i414, %if.else137 ]
  %mul = shl i32 %sec4_sg_ents.1, 4
  %or.i = select i1 %tobool.not, i32 2849, i32 3521
  %add140 = add i32 %desc_bytes, 36
  %add141 = add i32 %add140, %9
  %add142 = add i32 %add141, %mul
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add142, i32 noundef %or.i) #11
  %tobool144.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool144.not, label %do.end148, label %if.end152

do.end148:                                        ; preds = %if.end139
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.75) #10
  %38 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %src, align 8
  %40 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dst, align 4
  %cmp.not.i = icmp eq ptr %41, %39
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.end148
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not.i = icmp eq i32 %call6, 0
  br i1 %tobool.not.i, label %if.then.i.if.end.i_crit_edge, label %if.then1.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then1.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %39, i32 noundef %call6, i32 noundef 1, i32 noundef 0) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then1.i, %if.then.i.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_nents.0)
  %tobool2.not.i = icmp eq i32 %dst_nents.0, 0
  br i1 %tobool2.not.i, label %if.end.i.cleanup_crit_edge, label %if.then3.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %41, i32 noundef %dst_nents.0, i32 noundef 2, i32 noundef 0) #7
  br label %cleanup

if.else.i:                                        ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %39, i32 noundef %call6, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

if.end152:                                        ; preds = %if.end139
  %42 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call6, ptr %call9.i.i, align 128
  %dst_nents154 = getelementptr inbounds %struct.skcipher_edesc, ptr %call9.i.i, i32 0, i32 1
  %43 = ptrtoint ptr %dst_nents154 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %dst_nents.0, ptr %dst_nents154, align 4
  %mapped_src_nents155 = getelementptr inbounds %struct.skcipher_edesc, ptr %call9.i.i, i32 0, i32 2
  %44 = ptrtoint ptr %mapped_src_nents155 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %mapped_src_nents.0, ptr %mapped_src_nents155, align 8
  %mapped_dst_nents156 = getelementptr inbounds %struct.skcipher_edesc, ptr %call9.i.i, i32 0, i32 3
  %45 = ptrtoint ptr %mapped_dst_nents156 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %mapped_dst_nents.0, ptr %mapped_dst_nents156, align 4
  %sec4_sg_bytes157 = getelementptr inbounds %struct.skcipher_edesc, ptr %call9.i.i, i32 0, i32 5
  %46 = ptrtoint ptr %sec4_sg_bytes157 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul, ptr %sec4_sg_bytes157, align 4
  %hw_desc = getelementptr inbounds %struct.skcipher_edesc, ptr %call9.i.i, i32 0, i32 9
  %add.ptr = getelementptr i8, ptr %hw_desc, i32 %desc_bytes
  %sec4_sg = getelementptr inbounds %struct.skcipher_edesc, ptr %call9.i.i, i32 0, i32 8
  %47 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %add.ptr, ptr %sec4_sg, align 32
  %48 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %call9.i.i, ptr %__ctx.i, align 128
  br i1 %tobool100, label %if.then160, label %if.end152.if.end176_crit_edge

if.end152.if.end176_crit_edge:                    ; preds = %if.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end176

if.then160:                                       ; preds = %if.end152
  %49 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %sec4_sg, align 32
  %add.ptr162 = getelementptr i8, ptr %50, i32 %mul
  %iv163 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %51 = ptrtoint ptr %iv163 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %iv163, align 4
  %53 = call ptr @memcpy(ptr %add.ptr162, ptr %52, i32 %9)
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %add.ptr162) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.then160
  %.b51.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i415, !prof !210

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i415:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %3) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %54 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %if.end.i.i416, label %if.then.i415.dev_name.exit.i_crit_edge

if.then.i415.dev_name.exit.i_crit_edge:           ; preds = %if.then.i415
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i416:                                    ; preds = %if.then.i415
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i416, %if.then.i415.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %57, %if.end.i.i416 ], [ %55, %if.then.i415.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #7
  br label %do.end170

dma_map_single_attrs.exit:                        ; preds = %if.then160
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %add.ptr162, i32 noundef %9) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %58 = load ptr, ptr @mem_map, align 4
  %59 = ptrtoint ptr %add.ptr162 to i32
  %sub.i = add i32 %59, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %58, i32 %shr.i
  %and.i417 = and i32 %59, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i, i32 noundef %and.i417, i32 noundef %9, i32 noundef 0, i32 noundef 0) #7
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end170_crit_edge, label %if.end174

dma_map_single_attrs.exit.do.end170_crit_edge:    ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end170

do.end170:                                        ; preds = %dma_map_single_attrs.exit.do.end170_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.78) #10
  %60 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %src, align 8
  %62 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dst, align 4
  %cmp.not.i419 = icmp eq ptr %63, %61
  br i1 %cmp.not.i419, label %if.else.i426, label %if.then.i421

if.then.i421:                                     ; preds = %do.end170
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not.i420 = icmp eq i32 %call6, 0
  br i1 %tobool.not.i420, label %if.then.i421.if.end.i424_crit_edge, label %if.then1.i422

if.then.i421.if.end.i424_crit_edge:               ; preds = %if.then.i421
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i424

if.then1.i422:                                    ; preds = %if.then.i421
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %61, i32 noundef %call6, i32 noundef 1, i32 noundef 0) #7
  br label %if.end.i424

if.end.i424:                                      ; preds = %if.then1.i422, %if.then.i421.if.end.i424_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_nents.0)
  %tobool2.not.i423 = icmp eq i32 %dst_nents.0, 0
  br i1 %tobool2.not.i423, label %if.end.i424.caam_unmap.exit427_crit_edge, label %if.then3.i425

if.end.i424.caam_unmap.exit427_crit_edge:         ; preds = %if.end.i424
  call void @__sanitizer_cov_trace_pc() #9
  br label %caam_unmap.exit427

if.then3.i425:                                    ; preds = %if.end.i424
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %63, i32 noundef %dst_nents.0, i32 noundef 2, i32 noundef 0) #7
  br label %caam_unmap.exit427

if.else.i426:                                     ; preds = %do.end170
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %61, i32 noundef %call6, i32 noundef 0, i32 noundef 0) #7
  br label %caam_unmap.exit427

caam_unmap.exit427:                               ; preds = %if.else.i426, %if.then3.i425, %if.end.i424.caam_unmap.exit427_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup

if.end174:                                        ; preds = %dma_map_single_attrs.exit
  %64 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %sec4_sg, align 32
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %66 = load i8, ptr @caam_dpaa2, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool.not.i428 = icmp eq i8 %66, 0
  br i1 %tobool.not.i428, label %if.else.i431, label %if.then.i429

if.then.i429:                                     ; preds = %if.end174
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i = zext i32 %call41.i to i64
  %67 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i) #7
  %68 = ptrtoint ptr %65 to i32
  call void @__asan_store8_noabort(i32 %68)
  store i64 %67, ptr %65, align 8
  %format_offset.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %65, i32 0, i32 3
  %69 = ptrtoint ptr %format_offset.i.i.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %format_offset.i.i.i, align 2
  %71 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %len1.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %65, i32 0, i32 1
  %72 = ptrtoint ptr %len1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %len1.i.i.i, align 8
  %bpid1.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %65, i32 0, i32 2
  %73 = ptrtoint ptr %bpid1.i.i.i to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %bpid1.i.i.i, align 4
  %75 = and i16 %74, 192
  store i16 %75, ptr %bpid1.i.i.i, align 4
  %76 = and i16 %70, 64
  %77 = ptrtoint ptr %format_offset.i.i.i to i32
  call void @__asan_store2_noabort(i32 %77)
  store i16 %76, ptr %format_offset.i.i.i, align 2
  br label %do.body.i

if.else.i431:                                     ; preds = %if.end174
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_imx to i32))
  %78 = load i8, ptr @caam_imx, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %78)
  %tobool.not.i.i430 = icmp eq i8 %78, 0
  br i1 %tobool.not.i.i430, label %if.end.i.i434, label %if.then.i.i433

if.then.i.i433:                                   ; preds = %if.else.i431
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %79 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool.not.i.i.i432 = icmp eq i8 %79, 0
  %80 = tail call i32 @llvm.bswap.i32(i32 %call41.i) #7
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i432, i32 %call41.i, i32 %80
  %conv.i.i = zext i32 %retval.0.i.i.i to i64
  %shl.i.i = shl nuw i64 %conv.i.i, 32
  br label %cpu_to_caam_dma64.exit.i

if.end.i.i434:                                    ; preds = %if.else.i431
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i.i = zext i32 %call41.i to i64
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %81 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool.not.i4.i.i = icmp eq i8 %81, 0
  %82 = tail call i64 @llvm.bswap.i64(i64 %conv1.i.i) #7
  %retval.0.i5.i.i = select i1 %tobool.not.i4.i.i, i64 %conv1.i.i, i64 %82
  br label %cpu_to_caam_dma64.exit.i

cpu_to_caam_dma64.exit.i:                         ; preds = %if.end.i.i434, %if.then.i.i433
  %retval.0.i1.i = phi i64 [ %shl.i.i, %if.then.i.i433 ], [ %retval.0.i5.i.i, %if.end.i.i434 ]
  %83 = ptrtoint ptr %65 to i32
  call void @__asan_store8_noabort(i32 %83)
  store i64 %retval.0.i1.i, ptr %65, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %84 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool.not.i2.i = icmp eq i8 %84, 0
  %85 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %retval.0.i3.i = select i1 %tobool.not.i2.i, i32 %9, i32 %85
  %len2.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %65, i32 0, i32 1
  %86 = ptrtoint ptr %len2.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %retval.0.i3.i, ptr %len2.i, align 8
  %bpid_offset.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %65, i32 0, i32 2
  %87 = ptrtoint ptr %bpid_offset.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 0, ptr %bpid_offset.i, align 4
  br label %do.body.i

do.body.i:                                        ; preds = %cpu_to_caam_dma64.exit.i, %if.then.i429
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@skcipher_edesc_alloc, %if.end176)) #7
          to label %if.then9.i [label %if.end176], !srcloc !208

if.then9.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %65, i32 noundef 16, i1 noundef zeroext true) #7
  br label %if.end176

if.end176:                                        ; preds = %if.then9.i, %do.body.i, %if.end152.if.end176_crit_edge
  %iv_dma.0 = phi i32 [ 0, %if.end152.if.end176_crit_edge ], [ %call41.i, %do.body.i ], [ %call41.i, %if.then9.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sec4_sg_ents.0)
  %tobool177.not = icmp eq i32 %sec4_sg_ents.0, 0
  br i1 %tobool177.not, label %if.end176.if.end189_crit_edge, label %if.then178

if.end176.if.end189_crit_edge:                    ; preds = %if.end176
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

if.then178:                                       ; preds = %if.end176
  %88 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %tobool.not1.i = icmp eq i32 %89, 0
  br i1 %tobool.not1.i, label %if.then178.if.end189_crit_edge, label %while.body.i.preheader

if.then178.if.end189_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

while.body.i.preheader:                           ; preds = %if.then178
  %90 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %sec4_sg, align 32
  %add.ptr187 = getelementptr %struct.sec4_sg_entry, ptr %91, i32 %lnot.ext109
  %92 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %src, align 8
  br label %while.body.i

while.body.i:                                     ; preds = %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge, %while.body.i.preheader
  %sg.addr.06.i = phi ptr [ %call.i440, %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge ], [ %93, %while.body.i.preheader ]
  %len.addr.05.i = phi i32 [ %sub.i441, %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge ], [ %89, %while.body.i.preheader ]
  %sec4_sg_ptr.addr.02.i = phi ptr [ %incdec.ptr.i, %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge ], [ %add.ptr187, %while.body.i.preheader ]
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.06.i, i32 0, i32 4
  %94 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma_length.i, align 4
  %96 = tail call i32 @llvm.smin.i32(i32 %95, i32 %len.addr.05.i) #7
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.06.i, i32 0, i32 3
  %97 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %dma_address.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %99 = load i8, ptr @caam_dpaa2, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %99)
  %tobool.not.i.i435 = icmp eq i8 %99, 0
  br i1 %tobool.not.i.i435, label %if.else.i.i, label %if.then.i.i436

if.then.i.i436:                                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i = zext i32 %98 to i64
  %100 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i.i) #7
  %101 = ptrtoint ptr %sec4_sg_ptr.addr.02.i to i32
  call void @__asan_store8_noabort(i32 %101)
  store i64 %100, ptr %sec4_sg_ptr.addr.02.i, align 8
  %format_offset.i.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 3
  %102 = ptrtoint ptr %format_offset.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %format_offset.i.i.i.i, align 2
  %104 = tail call i32 @llvm.bswap.i32(i32 %96) #7
  %len1.i.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 1
  %105 = ptrtoint ptr %len1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %104, ptr %len1.i.i.i.i, align 8
  %bpid1.i.i.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 2
  %106 = ptrtoint ptr %bpid1.i.i.i.i to i32
  call void @__asan_load2_noabort(i32 %106)
  %107 = load i16, ptr %bpid1.i.i.i.i, align 4
  %108 = and i16 %107, 192
  store i16 %108, ptr %bpid1.i.i.i.i, align 4
  %109 = and i16 %103, 64
  %110 = ptrtoint ptr %format_offset.i.i.i.i to i32
  call void @__asan_store2_noabort(i32 %110)
  store i16 %109, ptr %format_offset.i.i.i.i, align 2
  br label %do.body.i.i

if.else.i.i:                                      ; preds = %while.body.i
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_imx to i32))
  %111 = load i8, ptr @caam_imx, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %111)
  %tobool.not.i.i.i437 = icmp eq i8 %111, 0
  br i1 %tobool.not.i.i.i437, label %if.end.i.i.i439, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %112 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %112)
  %tobool.not.i.i.i.i = icmp eq i8 %112, 0
  %113 = tail call i32 @llvm.bswap.i32(i32 %98) #7
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %98, i32 %113
  %conv.i.i.i438 = zext i32 %retval.0.i.i.i.i to i64
  %shl.i.i.i = shl nuw i64 %conv.i.i.i438, 32
  br label %cpu_to_caam_dma64.exit.i.i

if.end.i.i.i439:                                  ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i.i.i = zext i32 %98 to i64
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %114 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool.not.i4.i.i.i = icmp eq i8 %114, 0
  %115 = tail call i64 @llvm.bswap.i64(i64 %conv1.i.i.i) #7
  %retval.0.i5.i.i.i = select i1 %tobool.not.i4.i.i.i, i64 %conv1.i.i.i, i64 %115
  br label %cpu_to_caam_dma64.exit.i.i

cpu_to_caam_dma64.exit.i.i:                       ; preds = %if.end.i.i.i439, %if.then.i.i.i
  %retval.0.i1.i.i = phi i64 [ %shl.i.i.i, %if.then.i.i.i ], [ %retval.0.i5.i.i.i, %if.end.i.i.i439 ]
  %116 = ptrtoint ptr %sec4_sg_ptr.addr.02.i to i32
  call void @__asan_store8_noabort(i32 %116)
  store i64 %retval.0.i1.i.i, ptr %sec4_sg_ptr.addr.02.i, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %117 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %117)
  %tobool.not.i2.i.i = icmp eq i8 %117, 0
  %118 = tail call i32 @llvm.bswap.i32(i32 %96) #7
  %retval.0.i3.i.i = select i1 %tobool.not.i2.i.i, i32 %96, i32 %118
  %len2.i.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 1
  %119 = ptrtoint ptr %len2.i.i to i32
  call void @__asan_store4_noabort(i32 %119)
  store i32 %retval.0.i3.i.i, ptr %len2.i.i, align 8
  %bpid_offset.i.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 0, i32 2
  %120 = ptrtoint ptr %bpid_offset.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 0, ptr %bpid_offset.i.i, align 4
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %cpu_to_caam_dma64.exit.i.i, %if.then.i.i436
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@skcipher_edesc_alloc, %dma_to_sec4_sg_one.exit.i)) #7
          to label %if.then9.i.i [label %dma_to_sec4_sg_one.exit.i], !srcloc !208

if.then9.i.i:                                     ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sec4_sg_ptr.addr.02.i, i32 noundef 16, i1 noundef zeroext true) #7
  br label %dma_to_sec4_sg_one.exit.i

dma_to_sec4_sg_one.exit.i:                        ; preds = %if.then9.i.i, %do.body.i.i
  %incdec.ptr.i = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i, i32 1
  %call.i440 = tail call ptr @sg_next(ptr noundef %sg.addr.06.i) #7
  %sub.i441 = sub i32 %len.addr.05.i, %96
  %tobool.not.i442 = icmp eq i32 %sub.i441, 0
  br i1 %tobool.not.i442, label %dma_to_sec4_sg_one.exit.i.if.end189_crit_edge, label %dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge

dma_to_sec4_sg_one.exit.i.while.body.i_crit_edge: ; preds = %dma_to_sec4_sg_one.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

dma_to_sec4_sg_one.exit.i.if.end189_crit_edge:    ; preds = %dma_to_sec4_sg_one.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end189

if.end189:                                        ; preds = %dma_to_sec4_sg_one.exit.i.if.end189_crit_edge, %if.then178.if.end189_crit_edge, %if.end176.if.end189_crit_edge
  %121 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %src, align 8
  %123 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dst, align 4
  %cmp192.not = icmp ne ptr %122, %124
  %or.cond410 = select i1 %cmp192.not, i1 %or.cond408, i1 false
  br i1 %or.cond410, label %if.then199, label %if.end189.if.end205_crit_edge

if.end189.if.end205_crit_edge:                    ; preds = %if.end189
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.then199:                                       ; preds = %if.end189
  %125 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %126)
  %tobool.not1.i444 = icmp eq i32 %126, 0
  br i1 %tobool.not1.i444, label %if.then199.if.end205_crit_edge, label %while.body.i451.preheader

if.then199.if.end205_crit_edge:                   ; preds = %if.then199
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

while.body.i451.preheader:                        ; preds = %if.then199
  %127 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %sec4_sg, align 32
  %add.ptr203 = getelementptr %struct.sec4_sg_entry, ptr %128, i32 %sec4_sg_ents.0
  br label %while.body.i451

while.body.i451:                                  ; preds = %dma_to_sec4_sg_one.exit.i480.while.body.i451_crit_edge, %while.body.i451.preheader
  %sg.addr.06.i445 = phi ptr [ %call.i477, %dma_to_sec4_sg_one.exit.i480.while.body.i451_crit_edge ], [ %124, %while.body.i451.preheader ]
  %len.addr.05.i446 = phi i32 [ %sub.i478, %dma_to_sec4_sg_one.exit.i480.while.body.i451_crit_edge ], [ %126, %while.body.i451.preheader ]
  %sec4_sg_ptr.addr.02.i447 = phi ptr [ %incdec.ptr.i476, %dma_to_sec4_sg_one.exit.i480.while.body.i451_crit_edge ], [ %add.ptr203, %while.body.i451.preheader ]
  %dma_length.i448 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.06.i445, i32 0, i32 4
  %129 = ptrtoint ptr %dma_length.i448 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %dma_length.i448, align 4
  %131 = tail call i32 @llvm.smin.i32(i32 %130, i32 %len.addr.05.i446) #7
  %dma_address.i449 = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.06.i445, i32 0, i32 3
  %132 = ptrtoint ptr %dma_address.i449 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %dma_address.i449, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %134 = load i8, ptr @caam_dpaa2, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %134)
  %tobool.not.i.i450 = icmp eq i8 %134, 0
  br i1 %tobool.not.i.i450, label %if.else.i.i458, label %if.then.i.i456

if.then.i.i456:                                   ; preds = %while.body.i451
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i.i452 = zext i32 %133 to i64
  %135 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i.i452) #7
  %136 = ptrtoint ptr %sec4_sg_ptr.addr.02.i447 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %135, ptr %sec4_sg_ptr.addr.02.i447, align 8
  %format_offset.i.i.i.i453 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i447, i32 0, i32 3
  %137 = ptrtoint ptr %format_offset.i.i.i.i453 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %format_offset.i.i.i.i453, align 2
  %139 = tail call i32 @llvm.bswap.i32(i32 %131) #7
  %len1.i.i.i.i454 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i447, i32 0, i32 1
  %140 = ptrtoint ptr %len1.i.i.i.i454 to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %len1.i.i.i.i454, align 8
  %bpid1.i.i.i.i455 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %sec4_sg_ptr.addr.02.i447, i32 0, i32 2
  %141 = ptrtoint ptr %bpid1.i.i.i.i455 to i32
  call void @__asan_load2_noabort(i32 %141)
  %142 = load i16, ptr %bpid1.i.i.i.i455, align 4
  %143 = and i16 %142, 192
  store i16 %143, ptr %bpid1.i.i.i.i455, align 4
  %144 = and i16 %138, 64
  %145 = ptrtoint ptr %format_offset.i.i.i.i453 to i32
  call void @__asan_store2_noabort(i32 %145)
  store i16 %144, ptr %format_offset.i.i.i.i453, align 2
  br label %do.body.i.i474

if.else.i.i458:                                   ; preds = %while.body.i451
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_imx to i32))
  %146 = load i8, ptr @caam_imx, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool.not.i.i.i457 = icmp eq i8 %146, 0
  br i1 %tobool.not.i.i.i457, label %if.end.i.i.i467, label %if.then.i.i.i463

if.then.i.i.i463:                                 ; preds = %if.else.i.i458
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %147 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool.not.i.i.i.i459 = icmp eq i8 %147, 0
  %148 = tail call i32 @llvm.bswap.i32(i32 %133) #7
  %retval.0.i.i.i.i460 = select i1 %tobool.not.i.i.i.i459, i32 %133, i32 %148
  %conv.i.i.i461 = zext i32 %retval.0.i.i.i.i460 to i64
  %shl.i.i.i462 = shl nuw i64 %conv.i.i.i461, 32
  br label %cpu_to_caam_dma64.exit.i.i473

if.end.i.i.i467:                                  ; preds = %if.else.i.i458
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i.i.i464 = zext i32 %133 to i64
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %149 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i4.i.i.i465 = icmp eq i8 %149, 0
  %150 = tail call i64 @llvm.bswap.i64(i64 %conv1.i.i.i464) #7
  %retval.0.i5.i.i.i466 = select i1 %tobool.not.i4.i.i.i465, i64 %conv1.i.i.i464, i64 %150
  br label %cpu_to_caam_dma64.exit.i.i473

cpu_to_caam_dma64.exit.i.i473:                    ; preds = %if.end.i.i.i467, %if.then.i.i.i463
  %retval.0.i1.i.i468 = phi i64 [ %shl.i.i.i462, %if.then.i.i.i463 ], [ %retval.0.i5.i.i.i466, %if.end.i.i.i467 ]
  %151 = ptrtoint ptr %sec4_sg_ptr.addr.02.i447 to i32
  call void @__asan_store8_noabort(i32 %151)
  store i64 %retval.0.i1.i.i468, ptr %sec4_sg_ptr.addr.02.i447, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %152 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %152)
  %tobool.not.i2.i.i469 = icmp eq i8 %152, 0
  %153 = tail call i32 @llvm.bswap.i32(i32 %131) #7
  %retval.0.i3.i.i470 = select i1 %tobool.not.i2.i.i469, i32 %131, i32 %153
  %len2.i.i471 = getelementptr inbounds %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i447, i32 0, i32 1
  %154 = ptrtoint ptr %len2.i.i471 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %retval.0.i3.i.i470, ptr %len2.i.i471, align 8
  %bpid_offset.i.i472 = getelementptr inbounds %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i447, i32 0, i32 2
  %155 = ptrtoint ptr %bpid_offset.i.i472 to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 0, ptr %bpid_offset.i.i472, align 4
  br label %do.body.i.i474

do.body.i.i474:                                   ; preds = %cpu_to_caam_dma64.exit.i.i473, %if.then.i.i456
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@skcipher_edesc_alloc, %dma_to_sec4_sg_one.exit.i480)) #7
          to label %if.then9.i.i475 [label %dma_to_sec4_sg_one.exit.i480], !srcloc !208

if.then9.i.i475:                                  ; preds = %do.body.i.i474
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %sec4_sg_ptr.addr.02.i447, i32 noundef 16, i1 noundef zeroext true) #7
  br label %dma_to_sec4_sg_one.exit.i480

dma_to_sec4_sg_one.exit.i480:                     ; preds = %if.then9.i.i475, %do.body.i.i474
  %incdec.ptr.i476 = getelementptr %struct.sec4_sg_entry, ptr %sec4_sg_ptr.addr.02.i447, i32 1
  %call.i477 = tail call ptr @sg_next(ptr noundef %sg.addr.06.i445) #7
  %sub.i478 = sub i32 %len.addr.05.i446, %131
  %tobool.not.i479 = icmp eq i32 %sub.i478, 0
  br i1 %tobool.not.i479, label %dma_to_sec4_sg_one.exit.i480.if.end205_crit_edge, label %dma_to_sec4_sg_one.exit.i480.while.body.i451_crit_edge

dma_to_sec4_sg_one.exit.i480.while.body.i451_crit_edge: ; preds = %dma_to_sec4_sg_one.exit.i480
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i451

dma_to_sec4_sg_one.exit.i480.if.end205_crit_edge: ; preds = %dma_to_sec4_sg_one.exit.i480
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end205

if.end205:                                        ; preds = %dma_to_sec4_sg_one.exit.i480.if.end205_crit_edge, %if.then199.if.end205_crit_edge, %if.end189.if.end205_crit_edge
  br i1 %tobool100, label %if.then207, label %lor.lhs.false213.critedge

if.then207:                                       ; preds = %if.end205
  %156 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %sec4_sg, align 32
  %add.ptr209 = getelementptr %struct.sec4_sg_entry, ptr %157, i32 %sec4_sg_ents.0
  %add.ptr210 = getelementptr %struct.sec4_sg_entry, ptr %add.ptr209, i32 %mapped_dst_nents.0
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %158 = load i8, ptr @caam_dpaa2, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %158)
  %tobool.not.i484 = icmp eq i8 %158, 0
  br i1 %tobool.not.i484, label %if.else.i491, label %if.then.i489

if.then.i489:                                     ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #9
  %conv.i.i.i485 = zext i32 %iv_dma.0 to i64
  %159 = tail call i64 @llvm.bswap.i64(i64 %conv.i.i.i485) #7
  %160 = ptrtoint ptr %add.ptr210 to i32
  call void @__asan_store8_noabort(i32 %160)
  store i64 %159, ptr %add.ptr210, align 8
  %format_offset.i.i.i486 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %add.ptr210, i32 0, i32 3
  %161 = ptrtoint ptr %format_offset.i.i.i486 to i32
  call void @__asan_load2_noabort(i32 %161)
  %162 = load i16, ptr %format_offset.i.i.i486, align 2
  %163 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %len1.i.i.i487 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %add.ptr210, i32 0, i32 1
  %164 = ptrtoint ptr %len1.i.i.i487 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 %163, ptr %len1.i.i.i487, align 8
  %bpid1.i.i.i488 = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %add.ptr210, i32 0, i32 2
  %165 = ptrtoint ptr %bpid1.i.i.i488 to i32
  call void @__asan_load2_noabort(i32 %165)
  %166 = load i16, ptr %bpid1.i.i.i488, align 4
  %167 = and i16 %166, 192
  store i16 %167, ptr %bpid1.i.i.i488, align 4
  %168 = and i16 %162, 64
  %169 = ptrtoint ptr %format_offset.i.i.i486 to i32
  call void @__asan_store2_noabort(i32 %169)
  store i16 %168, ptr %format_offset.i.i.i486, align 2
  br label %do.body.i507

if.else.i491:                                     ; preds = %if.then207
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_imx to i32))
  %170 = load i8, ptr @caam_imx, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool.not.i.i490 = icmp eq i8 %170, 0
  br i1 %tobool.not.i.i490, label %if.end.i.i500, label %if.then.i.i496

if.then.i.i496:                                   ; preds = %if.else.i491
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %171 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %171)
  %tobool.not.i.i.i492 = icmp eq i8 %171, 0
  %172 = tail call i32 @llvm.bswap.i32(i32 %iv_dma.0) #7
  %retval.0.i.i.i493 = select i1 %tobool.not.i.i.i492, i32 %iv_dma.0, i32 %172
  %conv.i.i494 = zext i32 %retval.0.i.i.i493 to i64
  %shl.i.i495 = shl nuw i64 %conv.i.i494, 32
  br label %cpu_to_caam_dma64.exit.i506

if.end.i.i500:                                    ; preds = %if.else.i491
  call void @__sanitizer_cov_trace_pc() #9
  %conv1.i.i497 = zext i32 %iv_dma.0 to i64
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %173 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %173)
  %tobool.not.i4.i.i498 = icmp eq i8 %173, 0
  %174 = tail call i64 @llvm.bswap.i64(i64 %conv1.i.i497) #7
  %retval.0.i5.i.i499 = select i1 %tobool.not.i4.i.i498, i64 %conv1.i.i497, i64 %174
  br label %cpu_to_caam_dma64.exit.i506

cpu_to_caam_dma64.exit.i506:                      ; preds = %if.end.i.i500, %if.then.i.i496
  %retval.0.i1.i501 = phi i64 [ %shl.i.i495, %if.then.i.i496 ], [ %retval.0.i5.i.i499, %if.end.i.i500 ]
  %175 = ptrtoint ptr %add.ptr210 to i32
  call void @__asan_store8_noabort(i32 %175)
  store i64 %retval.0.i1.i501, ptr %add.ptr210, align 8
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %176 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %176)
  %tobool.not.i2.i502 = icmp eq i8 %176, 0
  %177 = tail call i32 @llvm.bswap.i32(i32 %9) #7
  %retval.0.i3.i503 = select i1 %tobool.not.i2.i502, i32 %9, i32 %177
  %len2.i504 = getelementptr inbounds %struct.sec4_sg_entry, ptr %add.ptr210, i32 0, i32 1
  %178 = ptrtoint ptr %len2.i504 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %retval.0.i3.i503, ptr %len2.i504, align 8
  %bpid_offset.i505 = getelementptr inbounds %struct.sec4_sg_entry, ptr %add.ptr210, i32 0, i32 2
  %179 = ptrtoint ptr %bpid_offset.i505 to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 0, ptr %bpid_offset.i505, align 4
  br label %do.body.i507

do.body.i507:                                     ; preds = %cpu_to_caam_dma64.exit.i506, %if.then.i489
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@skcipher_edesc_alloc, %if.then216)) #7
          to label %if.then9.i508 [label %if.then216], !srcloc !208

if.then9.i508:                                    ; preds = %do.body.i507
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.40, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %add.ptr210, i32 noundef 16, i1 noundef zeroext true) #7
  br label %if.then216

lor.lhs.false213.critedge:                        ; preds = %if.end205
  br i1 %cmp112, label %lor.lhs.false213.critedge.if.then216_crit_edge, label %lor.lhs.false213.critedge.if.end227_crit_edge

lor.lhs.false213.critedge.if.end227_crit_edge:    ; preds = %lor.lhs.false213.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end227

lor.lhs.false213.critedge.if.then216_crit_edge:   ; preds = %lor.lhs.false213.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then216

if.then216:                                       ; preds = %lor.lhs.false213.critedge.if.then216_crit_edge, %if.then9.i508, %do.body.i507
  %180 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %sec4_sg, align 32
  %add.ptr218 = getelementptr %struct.sec4_sg_entry, ptr %181, i32 %sec4_sg_ents.0
  %add.ptr219 = getelementptr %struct.sec4_sg_entry, ptr %add.ptr218, i32 %mapped_dst_nents.0
  %add.ptr220 = getelementptr %struct.sec4_sg_entry, ptr %add.ptr219, i32 -1
  %add.ptr226 = getelementptr %struct.sec4_sg_entry, ptr %add.ptr220, i32 %lnot.ext109
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_dpaa2 to i32))
  %182 = load i8, ptr @caam_dpaa2, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %182)
  %tobool.not.i510 = icmp eq i8 %182, 0
  br i1 %tobool.not.i510, label %if.else.i515, label %if.then.i511

if.then.i511:                                     ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #9
  %format_offset.i.i = getelementptr inbounds %struct.dpaa2_sg_entry, ptr %add.ptr226, i32 0, i32 3
  %183 = ptrtoint ptr %format_offset.i.i to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %format_offset.i.i, align 2
  %or.i.i = or i16 %184, 128
  store i16 %or.i.i, ptr %format_offset.i.i, align 2
  br label %if.end227

if.else.i515:                                     ; preds = %if.then216
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %185 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %185)
  %tobool.not.i.i512 = icmp eq i8 %185, 0
  %retval.0.i.i513 = select i1 %tobool.not.i.i512, i32 1073741824, i32 64
  %len.i = getelementptr inbounds %struct.sec4_sg_entry, ptr %add.ptr226, i32 0, i32 1
  %186 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %len.i, align 8
  %or.i514 = or i32 %retval.0.i.i513, %187
  store i32 %or.i514, ptr %len.i, align 8
  br label %if.end227

if.end227:                                        ; preds = %if.else.i515, %if.then.i511, %lor.lhs.false213.critedge.if.end227_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %tobool228.not = icmp eq i32 %mul, 0
  br i1 %tobool228.not, label %if.end227.if.end243_crit_edge, label %if.then229

if.end227.if.end243_crit_edge:                    ; preds = %if.end227
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end243

if.then229:                                       ; preds = %if.end227
  %188 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %sec4_sg, align 32
  %call.i517 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %189) #7
  br i1 %call.i517, label %land.rhs.i519, label %dma_map_single_attrs.exit534

land.rhs.i519:                                    ; preds = %if.then229
  %.b51.i518 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i518, label %land.rhs.i519.dma_map_single_attrs.exit534.thread_crit_edge, label %if.then.i523, !prof !210

land.rhs.i519.dma_map_single_attrs.exit534.thread_crit_edge: ; preds = %land.rhs.i519
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit534.thread

if.then.i523:                                     ; preds = %land.rhs.i519
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i520 = tail call ptr @dev_driver_string(ptr noundef %3) #7
  %init_name.i.i521 = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 3
  %190 = ptrtoint ptr %init_name.i.i521 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %init_name.i.i521, align 8
  %tobool.not.i.i522 = icmp eq ptr %191, null
  br i1 %tobool.not.i.i522, label %if.end.i.i524, label %if.then.i523.dev_name.exit.i526_crit_edge

if.then.i523.dev_name.exit.i526_crit_edge:        ; preds = %if.then.i523
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i526

if.end.i.i524:                                    ; preds = %if.then.i523
  call void @__sanitizer_cov_trace_pc() #9
  %192 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %3, align 4
  br label %dev_name.exit.i526

dev_name.exit.i526:                               ; preds = %if.end.i.i524, %if.then.i523.dev_name.exit.i526_crit_edge
  %retval.0.i.i525 = phi ptr [ %193, %if.end.i.i524 ], [ %191, %if.then.i523.dev_name.exit.i526_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i520, ptr noundef %retval.0.i.i525) #7
  br label %dma_map_single_attrs.exit534.thread

dma_map_single_attrs.exit534.thread:              ; preds = %dev_name.exit.i526, %land.rhs.i519.dma_map_single_attrs.exit534.thread_crit_edge
  %sec4_sg_dma557 = getelementptr inbounds %struct.skcipher_edesc, ptr %call9.i.i, i32 0, i32 7
  %194 = ptrtoint ptr %sec4_sg_dma557 to i32
  call void @__asan_store4_noabort(i32 %194)
  store i32 -1, ptr %sec4_sg_dma557, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef -1) #7
  br label %do.end238

dma_map_single_attrs.exit534:                     ; preds = %if.then229
  tail call void @debug_dma_map_single(ptr noundef %3, ptr noundef %189, i32 noundef %mul) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %195 = load ptr, ptr @mem_map, align 4
  %196 = ptrtoint ptr %189 to i32
  %sub.i527 = add i32 %196, 1073741824
  %shr.i528 = lshr i32 %sub.i527, 12
  %add.ptr.i529 = getelementptr %struct.page, ptr %195, i32 %shr.i528
  %and.i530 = and i32 %196, 4095
  %call41.i531 = tail call i32 @dma_map_page_attrs(ptr noundef %3, ptr noundef %add.ptr.i529, i32 noundef %and.i530, i32 noundef %mul, i32 noundef 1, i32 noundef 0) #7
  %sec4_sg_dma = getelementptr inbounds %struct.skcipher_edesc, ptr %call9.i.i, i32 0, i32 7
  %197 = ptrtoint ptr %sec4_sg_dma to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %call41.i531, ptr %sec4_sg_dma, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %3, i32 noundef %call41.i531) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i531)
  %cmp.i535 = icmp eq i32 %call41.i531, -1
  br i1 %cmp.i535, label %dma_map_single_attrs.exit534.do.end238_crit_edge, label %dma_map_single_attrs.exit534.if.end243_crit_edge

dma_map_single_attrs.exit534.if.end243_crit_edge: ; preds = %dma_map_single_attrs.exit534
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end243

dma_map_single_attrs.exit534.do.end238_crit_edge: ; preds = %dma_map_single_attrs.exit534
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end238

do.end238:                                        ; preds = %dma_map_single_attrs.exit534.do.end238_crit_edge, %dma_map_single_attrs.exit534.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.36) #10
  %198 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %src, align 8
  %200 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dst, align 4
  %cmp.not.i537 = icmp eq ptr %201, %199
  br i1 %cmp.not.i537, label %if.else.i544, label %if.then.i539

if.then.i539:                                     ; preds = %do.end238
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool.not.i538 = icmp eq i32 %call6, 0
  br i1 %tobool.not.i538, label %if.then.i539.if.end.i542_crit_edge, label %if.then1.i540

if.then.i539.if.end.i542_crit_edge:               ; preds = %if.then.i539
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i542

if.then1.i540:                                    ; preds = %if.then.i539
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %199, i32 noundef %call6, i32 noundef 1, i32 noundef 0) #7
  br label %if.end.i542

if.end.i542:                                      ; preds = %if.then1.i540, %if.then.i539.if.end.i542_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_nents.0)
  %tobool2.not.i541 = icmp eq i32 %dst_nents.0, 0
  br i1 %tobool2.not.i541, label %if.end.i542.if.end5.i_crit_edge, label %if.then3.i543

if.end.i542.if.end5.i_crit_edge:                  ; preds = %if.end.i542
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end5.i

if.then3.i543:                                    ; preds = %if.end.i542
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %201, i32 noundef %dst_nents.0, i32 noundef 2, i32 noundef 0) #7
  br label %if.end5.i

if.else.i544:                                     ; preds = %do.end238
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %3, ptr noundef %199, i32 noundef %call6, i32 noundef 0, i32 noundef 0) #7
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.else.i544, %if.then3.i543, %if.end.i542.if.end5.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %iv_dma.0)
  %tobool6.not.i = icmp eq i32 %iv_dma.0, 0
  br i1 %tobool6.not.i, label %if.end5.i.caam_unmap.exit545_crit_edge, label %if.then7.i

if.end5.i.caam_unmap.exit545_crit_edge:           ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %caam_unmap.exit545

if.then7.i:                                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %iv_dma.0, i32 noundef %9, i32 noundef 0, i32 noundef 0) #7
  br label %caam_unmap.exit545

caam_unmap.exit545:                               ; preds = %if.then7.i, %if.end5.i.caam_unmap.exit545_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #7
  br label %cleanup

if.end243:                                        ; preds = %dma_map_single_attrs.exit534.if.end243_crit_edge, %if.end227.if.end243_crit_edge
  %iv_dma244 = getelementptr inbounds %struct.skcipher_edesc, ptr %call9.i.i, i32 0, i32 4
  %202 = ptrtoint ptr %iv_dma244 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %iv_dma.0, ptr %iv_dma244, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skcipher_edesc_alloc.__UNIQUE_ID_ddebug532, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@skcipher_edesc_alloc, %cleanup)) #7
          to label %if.then256 [label %cleanup], !srcloc !208

if.then256:                                       ; preds = %if.end243
  call void @__sanitizer_cov_trace_pc() #9
  %203 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %sec4_sg, align 32
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.82, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %204, i32 noundef %mul, i1 noundef zeroext true) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then256, %if.end243, %caam_unmap.exit545, %caam_unmap.exit427, %if.else.i, %if.then3.i, %if.end.i.cleanup_crit_edge, %do.end95, %do.end78, %do.end61, %do.end31, %do.end
  %retval.0 = phi ptr [ %16, %do.end ], [ %25, %do.end31 ], [ inttoptr (i32 -12 to ptr), %do.end61 ], [ inttoptr (i32 -12 to ptr), %caam_unmap.exit427 ], [ inttoptr (i32 -12 to ptr), %caam_unmap.exit545 ], [ inttoptr (i32 -12 to ptr), %do.end78 ], [ inttoptr (i32 -12 to ptr), %do.end95 ], [ %call9.i.i, %if.then256 ], [ inttoptr (i32 -12 to ptr), %if.end.i.cleanup_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then3.i ], [ inttoptr (i32 -12 to ptr), %if.else.i ], [ %call9.i.i, %if.end243 ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @init_skcipher_job(ptr nocapture noundef readonly %req, ptr nocapture noundef %edesc, i1 noundef zeroext %encrypt) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %jrdev2 = getelementptr i8, ptr %1, i32 768
  %2 = ptrtoint ptr %jrdev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev2, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %5, i32 -100
  %6 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ivsize.i, align 4
  %hw_desc = getelementptr inbounds %struct.skcipher_edesc, ptr %edesc, i32 0, i32 9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_skcipher_job.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@init_skcipher_job, %do.body9)) #7
          to label %if.then [label %do.body9], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %8 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iv, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.84, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %9, i32 noundef %7, i1 noundef zeroext true) #7
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @init_skcipher_job.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@init_skcipher_job, %do.end27)) #7
          to label %if.then23 [label %do.end27], !srcloc !208

if.then23:                                        ; preds = %do.body9
  %10 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %edesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp = icmp sgt i32 %11, 1
  br i1 %cmp, label %if.then23.cond.end_crit_edge, label %cond.false

if.then23.cond.end_crit_edge:                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %req, align 128
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.then23.cond.end_crit_edge
  %cond = phi i32 [ %13, %cond.false ], [ 100, %if.then23.cond.end_crit_edge ]
  %14 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %req, align 128
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @init_skcipher_job.__UNIQUE_ID_ddebug528, ptr noundef %3, ptr noundef nonnull @.str.85, i32 noundef %cond, i32 noundef %15) #7
  br label %do.end27

do.end27:                                         ; preds = %cond.end, %do.body9
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %16 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %src, align 8
  %18 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %edesc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp29 = icmp sgt i32 %19, 1
  br i1 %cmp29, label %do.end27.cond.end33_crit_edge, label %cond.false31

do.end27.cond.end33_crit_edge:                    ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end33

cond.false31:                                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %req, align 128
  br label %cond.end33

cond.end33:                                       ; preds = %cond.false31, %do.end27.cond.end33_crit_edge
  %cond34 = phi i32 [ %21, %cond.false31 ], [ 100, %do.end27.cond.end33_crit_edge ]
  tail call void @caam_dump_sg(ptr noundef nonnull @.str.86, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %17, i32 noundef %cond34, i1 noundef zeroext true) #7
  %cond41.v = select i1 %encrypt, i32 140, i32 364
  %cond41 = getelementptr i8, ptr %1, i32 %cond41.v
  %cond46.in.v = select i1 %encrypt, i32 752, i32 756
  %cond46.in = getelementptr i8, ptr %1, i32 %cond46.in.v
  %22 = ptrtoint ptr %cond46.in to i32
  call void @__asan_load4_noabort(i32 %22)
  %cond46 = load i32, ptr %cond46.in, align 4
  %23 = ptrtoint ptr %cond41 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cond41, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %25 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i.i = icmp eq i8 %25, 0
  %26 = lshr i32 %24, 24
  %retval.0.i.i = select i1 %tobool.not.i.i, i32 %24, i32 %26
  %27 = ptrtoint ptr %hw_desc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %hw_desc, align 4
  %29 = lshr i32 %28, 24
  %retval.0.i.i.i = select i1 %tobool.not.i.i, i32 %28, i32 %29
  %and.i.i = and i32 %retval.0.i.i.i, 127
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.43, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([21 x i8], ptr @.str.44, i32 0, i32 7)) #10
  %and.i = shl i32 %retval.0.i.i, 16
  %shl.i = and i32 %and.i, 8323072
  %add.i.i.i = or i32 %shl.i, -1333781503
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %30 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not.i.i.i.i = icmp eq i8 %30, 0
  %31 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #7
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %add.i.i.i, i32 %31
  %add.ptr.i.i.i = getelementptr %struct.skcipher_edesc, ptr %edesc, i32 1, i32 1
  %32 = tail call i32 @llvm.bswap.i32(i32 %cond46) #7
  %retval.0.i.i.i1.i = select i1 %tobool.not.i.i.i.i, i32 %cond46, i32 %32
  %33 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %retval.0.i.i.i1.i, ptr %add.ptr.i.i.i, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %34 = load i8, ptr @caam_little_end, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i2.i = icmp eq i8 %34, 0
  %35 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i.i.i.i) #7
  %retval.0.i.i3.i = select i1 %tobool.not.i.i2.i, i32 %retval.0.i.i.i.i, i32 %35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %36 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i = lshr i32 %36, 2
  %add.i.i = add nuw nsw i32 %retval.0.i.i3.i, %div14.i.i
  %37 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #7
  %retval.0.i23.i.i = select i1 %tobool.not.i.i2.i, i32 %add.i.i, i32 %37
  %38 = ptrtoint ptr %hw_desc to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i23.i.i, ptr %hw_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool48 = icmp ne i32 %7, 0
  br i1 %tobool48, label %cond.end33.if.then50_crit_edge, label %lor.lhs.false

cond.end33.if.then50_crit_edge:                   ; preds = %cond.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

lor.lhs.false:                                    ; preds = %cond.end33
  %mapped_src_nents = getelementptr inbounds %struct.skcipher_edesc, ptr %edesc, i32 0, i32 2
  %39 = ptrtoint ptr %mapped_src_nents to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mapped_src_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %40)
  %cmp49 = icmp sgt i32 %40, 1
  br i1 %cmp49, label %lor.lhs.false.if.then50_crit_edge, label %if.else

lor.lhs.false.if.then50_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then50

if.then50:                                        ; preds = %lor.lhs.false.if.then50_crit_edge, %cond.end33.if.then50_crit_edge
  %sec4_sg_dma = getelementptr inbounds %struct.skcipher_edesc, ptr %edesc, i32 0, i32 7
  %mapped_src_nents51 = getelementptr inbounds %struct.skcipher_edesc, ptr %edesc, i32 0, i32 2
  %41 = ptrtoint ptr %mapped_src_nents51 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %mapped_src_nents51, align 4
  %lnot.ext56 = zext i1 %tobool48 to i32
  %add = add i32 %42, %lnot.ext56
  %phi.bo = shl i32 %add, 4
  br label %if.end58

if.else:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %src, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %44, i32 0, i32 3
  br label %if.end58

if.end58:                                         ; preds = %if.else, %if.then50
  %in_options.0 = phi i32 [ 16777216, %if.then50 ], [ 0, %if.else ]
  %src_dma.0.in = phi ptr [ %sec4_sg_dma, %if.then50 ], [ %dma_address, %if.else ]
  %sec4_sg_index.0 = phi i32 [ %phi.bo, %if.then50 ], [ 0, %if.else ]
  %45 = ptrtoint ptr %src_dma.0.in to i32
  call void @__asan_load4_noabort(i32 %45)
  %src_dma.0 = load i32, ptr %src_dma.0.in, align 4
  %46 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %req, align 128
  %add60 = add i32 %47, %7
  tail call fastcc void @append_seq_in_ptr(ptr noundef %hw_desc, i32 noundef %src_dma.0, i32 noundef %add60, i32 noundef %in_options.0)
  %48 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %50 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dst, align 4
  %cmp62 = icmp eq ptr %49, %51
  br i1 %cmp62, label %if.then69, label %if.else76, !prof !210

if.then69:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %mul = select i1 %tobool48, i32 16, i32 0
  %add75 = add i32 %src_dma.0, %mul
  br label %if.end87

if.else76:                                        ; preds = %if.end58
  br i1 %tobool48, label %if.else76.if.else82_crit_edge, label %land.lhs.true

if.else76.if.else82_crit_edge:                    ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else82

land.lhs.true:                                    ; preds = %if.else76
  %mapped_dst_nents = getelementptr inbounds %struct.skcipher_edesc, ptr %edesc, i32 0, i32 3
  %52 = ptrtoint ptr %mapped_dst_nents to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %mapped_dst_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %53)
  %cmp78 = icmp eq i32 %53, 1
  br i1 %cmp78, label %if.then79, label %land.lhs.true.if.else82_crit_edge

land.lhs.true.if.else82_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else82

if.then79:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %dma_address81 = getelementptr inbounds %struct.scatterlist, ptr %51, i32 0, i32 3
  %54 = ptrtoint ptr %dma_address81 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_address81, align 4
  br label %if.end87

if.else82:                                        ; preds = %land.lhs.true.if.else82_crit_edge, %if.else76.if.else82_crit_edge
  %sec4_sg_dma83 = getelementptr inbounds %struct.skcipher_edesc, ptr %edesc, i32 0, i32 7
  %56 = ptrtoint ptr %sec4_sg_dma83 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %sec4_sg_dma83, align 4
  %add85 = add i32 %57, %sec4_sg_index.0
  br label %if.end87

if.end87:                                         ; preds = %if.else82, %if.then79, %if.then69
  %out_options.0 = phi i32 [ %in_options.0, %if.then69 ], [ 16777216, %if.else82 ], [ 0, %if.then79 ]
  %dst_dma.0 = phi i32 [ %add75, %if.then69 ], [ %add85, %if.else82 ], [ %55, %if.then79 ]
  %58 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %req, align 128
  %add89 = add i32 %59, %7
  tail call fastcc void @append_seq_out_ptr(ptr noundef %hw_desc, i32 noundef %dst_dma.0, i32 noundef %add89, i32 noundef %out_options.0)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @skcipher_crypt_done(ptr noundef %jrdev, ptr nocapture noundef readnone %desc, i32 noundef %err, ptr noundef %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %context, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %context, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %driver_data.i = getelementptr inbounds %struct.device, ptr %jrdev, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %5, i32 -100
  %6 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ivsize.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skcipher_crypt_done.__UNIQUE_ID_ddebug525, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@skcipher_crypt_done, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !208

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @skcipher_crypt_done.__UNIQUE_ID_ddebug525, ptr noundef %jrdev, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.87, i32 noundef 1013, i32 noundef %err) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %8 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__ctx.i, align 128
  %bklog = getelementptr inbounds %struct.skcipher_edesc, ptr %9, i32 0, i32 6
  %10 = ptrtoint ptr %bklog to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %bklog, align 4, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool9.not = icmp eq i8 %11, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool11.not = icmp eq i32 %err, 0
  br i1 %tobool11.not, label %do.end.if.end14_crit_edge, label %if.then12

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end14

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %call13 = tail call i32 @caam_strstatus(ptr noundef %jrdev, i32 noundef %err, i1 noundef zeroext false) #7
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end.if.end14_crit_edge
  %ecode.0 = phi i32 [ %call13, %if.then12 ], [ 0, %do.end.if.end14_crit_edge ]
  %12 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %13, i32 12
  %14 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %15, i32 -100
  %16 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ivsize.i.i, align 4
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %context, i32 0, i32 2
  %18 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %context, i32 0, i32 3
  %20 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst.i, align 4
  %22 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %9, align 4
  %dst_nents.i = getelementptr inbounds %struct.skcipher_edesc, ptr %9, i32 0, i32 1
  %24 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dst_nents.i, align 4
  %iv_dma.i = getelementptr inbounds %struct.skcipher_edesc, ptr %9, i32 0, i32 4
  %26 = ptrtoint ptr %iv_dma.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %iv_dma.i, align 4
  %sec4_sg_dma.i = getelementptr inbounds %struct.skcipher_edesc, ptr %9, i32 0, i32 7
  %28 = ptrtoint ptr %sec4_sg_dma.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sec4_sg_dma.i, align 4
  %sec4_sg_bytes.i = getelementptr inbounds %struct.skcipher_edesc, ptr %9, i32 0, i32 5
  %30 = ptrtoint ptr %sec4_sg_bytes.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sec4_sg_bytes.i, align 4
  tail call fastcc void @caam_unmap(ptr noundef %jrdev, ptr noundef %19, ptr noundef %21, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %17, i32 noundef %29, i32 noundef %31) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool15.not = icmp ne i32 %7, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ecode.0)
  %tobool16.not = icmp eq i32 %ecode.0, 0
  %or.cond = select i1 %tobool15.not, i1 %tobool16.not, i1 false
  br i1 %or.cond, label %if.then17, label %if.end14.if.end37_crit_edge

if.end14.if.end37_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %context, i32 0, i32 1
  %32 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iv, align 4
  %sec4_sg = getelementptr inbounds %struct.skcipher_edesc, ptr %9, i32 0, i32 8
  %34 = ptrtoint ptr %sec4_sg to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sec4_sg, align 4
  %36 = ptrtoint ptr %sec4_sg_bytes.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %sec4_sg_bytes.i, align 4
  %add.ptr = getelementptr i8, ptr %35, i32 %37
  %38 = call ptr @memcpy(ptr %33, ptr %add.ptr, i32 %7)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @skcipher_crypt_done.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@skcipher_crypt_done, %if.end37)) #7
          to label %if.then32 [label %if.end37], !srcloc !208

if.then32:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %iv, align 4
  tail call void @print_hex_dump(ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.88, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %40, i32 noundef %7, i1 noundef zeroext true) #7
  br label %if.end37

if.end37:                                         ; preds = %if.then32, %if.then17, %if.end14.if.end37_crit_edge
  %41 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dst.i, align 4
  %43 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dst_nents.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp = icmp sgt i32 %44, 1
  br i1 %cmp, label %if.end37.cond.end_crit_edge, label %cond.false

if.end37.cond.end_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %45 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %context, align 128
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %if.end37.cond.end_crit_edge
  %cond = phi i32 [ %46, %cond.false ], [ 100, %if.end37.cond.end_crit_edge ]
  tail call void @caam_dump_sg(ptr noundef nonnull @.str.89, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %42, i32 noundef %cond, i1 noundef zeroext true) #7
  tail call void @kfree(ptr noundef %9) #7
  br i1 %tobool9.not, label %if.then39, label %if.else

if.then39:                                        ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %context, i32 0, i32 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %context, i32 0, i32 4, i32 1
  %47 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %complete.i, align 8
  tail call void %48(ptr noundef %base.i, i32 noundef %ecode.0) #7
  br label %if.end40

if.else:                                          ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  %engine = getelementptr inbounds %struct.caam_drv_private_jr, ptr %3, i32 0, i32 18
  %49 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %engine, align 4
  tail call void @crypto_finalize_skcipher_request(ptr noundef %50, ptr noundef %context, i32 noundef %ecode.0) #7
  br label %if.end40

if.end40:                                         ; preds = %if.else, %if.then39
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_dump_sg(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_skcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_xts_skcipher_encap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cnstr_shdsc_xts_skcipher_decap(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_cra_init(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %caam = getelementptr i8, ptr %1, i32 512
  %2 = ptrtoint ptr %caam to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %caam, align 128
  %and = and i32 %3, 8176
  %do_one_request = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %4 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @skcipher_do_one_req, ptr %do_one_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1280, i32 %and)
  %cmp = icmp eq i32 %and, 1280
  br i1 %cmp, label %if.then, label %entry.if.end13_crit_edge

entry.if.end13_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end13

if.then:                                          ; preds = %entry
  %5 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %6, i32 0, i32 8
  %call3 = tail call ptr @crypto_alloc_skcipher(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #7
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup.thread, label %cleanup

cleanup.thread:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call3 to i32
  %call8 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.92, ptr noundef %cra_name.i, i32 noundef %7) #10
  br label %cleanup21

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %fallback10 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 3, i32 2, i32 4, i32 44
  %8 = ptrtoint ptr %fallback10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call3, ptr %fallback10, align 4
  %9 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %call3, align 128
  %add = add i32 %10, 256
  br label %if.end13

if.end13:                                         ; preds = %cleanup, %entry.if.end13_crit_edge
  %storemerge = phi i32 [ %add, %cleanup ], [ 256, %entry.if.end13_crit_edge ]
  %11 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %storemerge, ptr %tfm, align 128
  %call15 = tail call fastcc i32 @caam_init_common(ptr noundef %__crt_ctx.i.i, ptr noundef %caam, i1 noundef zeroext false)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %tobool.not = icmp eq i32 %call15, 0
  br i1 %tobool.not, label %if.end13.cleanup21_crit_edge, label %land.lhs.true

if.end13.cleanup21_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

land.lhs.true:                                    ; preds = %if.end13
  %fallback16 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 3, i32 2, i32 4, i32 44
  %12 = ptrtoint ptr %fallback16 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fallback16, align 4
  %tobool17.not = icmp eq ptr %13, null
  br i1 %tobool17.not, label %land.lhs.true.cleanup21_crit_edge, label %if.then18

land.lhs.true.cleanup21_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup21

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %13, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %13, ptr noundef %base.i.i) #7
  br label %cleanup21

cleanup21:                                        ; preds = %if.then18, %land.lhs.true.cleanup21_crit_edge, %if.end13.cleanup21_crit_edge, %cleanup.thread
  %retval.1 = phi i32 [ %call15, %if.then18 ], [ %call15, %land.lhs.true.cleanup21_crit_edge ], [ 0, %if.end13.cleanup21_crit_edge ], [ %7, %cleanup.thread ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caam_cra_exit(ptr nocapture noundef readonly %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 3, i32 2, i32 4, i32 44
  %0 = ptrtoint ptr %fallback to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef nonnull %1, ptr noundef %base.i.i) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %jrdev.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 3, i32 2
  %2 = ptrtoint ptr %jrdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %jrdev.i, align 4
  %sh_desc_enc_dma.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 3, i32 1, i32 108
  %4 = ptrtoint ptr %sh_desc_enc_dma.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %sh_desc_enc_dma.i, align 4
  %dir.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 3, i32 1, i32 120
  %6 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dir.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %3, i32 noundef %5, i32 noundef 612, i32 noundef %7, i32 noundef 32) #7
  %8 = ptrtoint ptr %jrdev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %jrdev.i, align 4
  tail call void @caam_jr_free(ptr noundef %9) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @skcipher_do_one_req(ptr nocapture noundef readonly %engine, ptr noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %areq, i32 -16
  %tfm.i = getelementptr i8, ptr %areq, i32 16
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr i8, ptr %areq, i32 112
  %2 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__ctx.i, align 128
  %hw_desc = getelementptr inbounds %struct.skcipher_edesc, ptr %3, i32 0, i32 9
  %bklog = getelementptr inbounds %struct.skcipher_edesc, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %bklog to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %bklog, align 4
  %jrdev = getelementptr i8, ptr %1, i32 768
  %5 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %jrdev, align 4
  %call5 = tail call i32 @caam_jr_enqueue(ptr noundef %6, ptr noundef %hw_desc, ptr noundef nonnull @skcipher_crypt_done, ptr noundef %add.ptr.i) #7
  %7 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %call5, label %entry.if.then7_crit_edge [
    i32 -28, label %land.lhs.true
    i32 -115, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

land.lhs.true:                                    ; preds = %entry
  %retry_support = getelementptr inbounds %struct.crypto_engine, ptr %engine, i32 0, i32 4
  %8 = ptrtoint ptr %retry_support to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %retry_support, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %land.lhs.true.if.then7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %land.lhs.true.if.then7_crit_edge, %entry.if.then7_crit_edge
  %10 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jrdev, align 4
  %12 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__ctx.i, align 128
  %14 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i.i = getelementptr i8, ptr %15, i32 12
  %16 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %17, i32 -100
  %18 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ivsize.i.i, align 4
  %src.i = getelementptr i8, ptr %areq, i32 -8
  %20 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr i8, ptr %areq, i32 -4
  %22 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dst.i, align 4
  %24 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %13, align 4
  %dst_nents.i = getelementptr inbounds %struct.skcipher_edesc, ptr %13, i32 0, i32 1
  %26 = ptrtoint ptr %dst_nents.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dst_nents.i, align 4
  %iv_dma.i = getelementptr inbounds %struct.skcipher_edesc, ptr %13, i32 0, i32 4
  %28 = ptrtoint ptr %iv_dma.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %iv_dma.i, align 4
  %sec4_sg_dma.i = getelementptr inbounds %struct.skcipher_edesc, ptr %13, i32 0, i32 7
  %30 = ptrtoint ptr %sec4_sg_dma.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sec4_sg_dma.i, align 4
  %sec4_sg_bytes.i = getelementptr inbounds %struct.skcipher_edesc, ptr %13, i32 0, i32 5
  %32 = ptrtoint ptr %sec4_sg_bytes.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %sec4_sg_bytes.i, align 4
  tail call fastcc void @caam_unmap(ptr noundef %11, ptr noundef %21, ptr noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %19, i32 noundef %31, i32 noundef %33) #7
  %34 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__ctx.i, align 128
  tail call void @kfree(ptr noundef %35) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %land.lhs.true.cleanup_crit_edge ], [ %call5, %if.then7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @caam_init_common(ptr noundef %ctx, ptr nocapture noundef readonly %caam, i1 noundef zeroext %uses_dkp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @caam_jr_alloc() #7
  %jrdev = getelementptr inbounds %struct.caam_ctx, ptr %ctx, i32 0, i32 8
  %0 = ptrtoint ptr %jrdev to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call, ptr %jrdev, align 4
  %cmp.i = icmp ugt ptr %call, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call3 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.94) #10
  %1 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %jrdev, align 4
  %3 = ptrtoint ptr %2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %parent = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 1
  %4 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %parent, align 8
  %driver_data.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %driver_data.i, align 4
  %era = getelementptr inbounds %struct.caam_drv_private, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %era, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %9)
  %cmp = icmp sgt i32 %9, 5
  %10 = and i1 %cmp, %uses_dkp
  %not. = xor i1 %10, true
  %spec.select = zext i1 %not. to i32
  %11 = getelementptr inbounds %struct.caam_ctx, ptr %ctx, i32 0, i32 7
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %spec.select, ptr %11, align 4
  %sh_desc_enc = getelementptr inbounds %struct.caam_ctx, ptr %ctx, i32 0, i32 1
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %sh_desc_enc) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end
  %.b51.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b51.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !210

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %call) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %call, i32 0, i32 3
  %13 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %14, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %call, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %16, %if.end.i.i ], [ %14, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.41, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %17 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %jrdev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %18, i32 noundef -1) #7
  br label %do.end20

dma_map_single_attrs.exit:                        ; preds = %if.end
  tail call void @debug_dma_map_single(ptr noundef %call, ptr noundef %sh_desc_enc, i32 noundef 612) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %19 = load ptr, ptr @mem_map, align 4
  %20 = ptrtoint ptr %sh_desc_enc to i32
  %sub.i = add i32 %20, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %19, i32 %shr.i
  %and.i = and i32 %20, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %call, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 612, i32 noundef %spec.select, i32 noundef 32) #7
  %21 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %jrdev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %22, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i50 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i50, label %dma_map_single_attrs.exit.do.end20_crit_edge, label %if.end23

dma_map_single_attrs.exit.do.end20_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end20

do.end20:                                         ; preds = %dma_map_single_attrs.exit.do.end20_crit_edge, %dma_map_single_attrs.exit.thread
  %23 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %jrdev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.97) #10
  %25 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %jrdev, align 4
  tail call void @caam_jr_free(ptr noundef %26) #7
  br label %cleanup

if.end23:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %sh_desc_enc_dma = getelementptr inbounds %struct.caam_ctx, ptr %ctx, i32 0, i32 4
  %27 = ptrtoint ptr %sh_desc_enc_dma to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %call41.i, ptr %sh_desc_enc_dma, align 4
  %sub = add i32 %call41.i, 224
  %sh_desc_dec_dma = getelementptr inbounds %struct.caam_ctx, ptr %ctx, i32 0, i32 5
  %28 = ptrtoint ptr %sh_desc_dec_dma to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %sub, ptr %sh_desc_dec_dma, align 4
  %sub25 = add i32 %call41.i, 448
  %key_dma = getelementptr inbounds %struct.caam_ctx, ptr %ctx, i32 0, i32 6
  %29 = ptrtoint ptr %key_dma to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub25, ptr %key_dma, align 4
  %30 = ptrtoint ptr %caam to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %caam, align 4
  %or = or i32 %31, 33554432
  %cdata = getelementptr inbounds %struct.caam_ctx, ptr %ctx, i32 0, i32 10
  %32 = ptrtoint ptr %cdata to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or, ptr %cdata, align 4
  %class2_alg_type = getelementptr inbounds %struct.caam_alg_entry, ptr %caam, i32 0, i32 1
  %33 = ptrtoint ptr %class2_alg_type to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %class2_alg_type, align 4
  %or26 = or i32 %34, 67108864
  %adata = getelementptr inbounds %struct.caam_ctx, ptr %ctx, i32 0, i32 9
  %35 = ptrtoint ptr %adata to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or26, ptr %adata, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %do.end20, %do.end
  %retval.0 = phi i32 [ %3, %do.end ], [ -12, %do.end20 ], [ 0, %if.end23 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @caam_jr_alloc() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_jr_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_aead_init(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %2 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 4, ptr %reqsize1.i, align 4
  %do_one_request = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %3 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr @aead_do_one_req, ptr %do_one_request, align 4
  %caam = getelementptr i8, ptr %1, i32 512
  %nodkp = getelementptr i8, ptr %1, i32 522
  %4 = ptrtoint ptr %nodkp to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %nodkp, align 2, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  %call3 = tail call fastcc i32 @caam_init_common(ptr noundef %__crt_ctx.i.i, ptr noundef %caam, i1 noundef zeroext %tobool.not)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caam_aead_exit(ptr nocapture noundef readonly %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %jrdev.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 3, i32 3
  %0 = ptrtoint ptr %jrdev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %jrdev.i, align 4
  %sh_desc_enc_dma.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 3, i32 2, i32 104
  %2 = ptrtoint ptr %sh_desc_enc_dma.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sh_desc_enc_dma.i, align 4
  %dir.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 3, i32 2, i32 116
  %4 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir.i, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %1, i32 noundef %3, i32 noundef 612, i32 noundef %5, i32 noundef 32) #7
  %6 = ptrtoint ptr %jrdev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jrdev.i, align 4
  tail call void @caam_jr_free(ptr noundef %7) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @aead_do_one_req(ptr nocapture noundef readonly %engine, ptr noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 7
  %2 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__ctx.i, align 4
  %hw_desc = getelementptr inbounds %struct.aead_edesc, ptr %3, i32 0, i32 8
  %bklog = getelementptr inbounds %struct.aead_edesc, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %bklog to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %bklog, align 4
  %jrdev = getelementptr i8, ptr %1, i32 768
  %5 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %jrdev, align 4
  %call5 = tail call i32 @caam_jr_enqueue(ptr noundef %6, ptr noundef %hw_desc, ptr noundef nonnull @aead_crypt_done, ptr noundef %areq) #7
  %7 = zext i32 %call5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %call5, label %entry.if.then7_crit_edge [
    i32 -28, label %land.lhs.true
    i32 -115, label %entry.cleanup_crit_edge
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

entry.if.then7_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

land.lhs.true:                                    ; preds = %entry
  %retry_support = getelementptr inbounds %struct.crypto_engine, ptr %engine, i32 0, i32 4
  %8 = ptrtoint ptr %retry_support to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %retry_support, align 1, !range !205
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool.not = icmp eq i8 %9, 0
  br i1 %tobool.not, label %land.lhs.true.if.then7_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.if.then7_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then7

if.then7:                                         ; preds = %land.lhs.true.if.then7_crit_edge, %entry.if.then7_crit_edge
  %10 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %jrdev, align 4
  %12 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__ctx.i, align 4
  tail call fastcc void @aead_unmap(ptr noundef %11, ptr noundef %13, ptr noundef %areq)
  %14 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__ctx.i, align 4
  tail call void @kfree(ptr noundef %15) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -28, %land.lhs.true.cleanup_crit_edge ], [ %call5, %if.then7 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 95)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !15, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !49, !50, !51, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !67, !69, !70, !71, !73, !74, !75, !76, !77, !79, !80, !81, !83, !84, !85, !87, !88, !89, !91, !92, !93, !95, !96, !97, !99, !100, !101, !103, !104, !106, !107, !109, !111, !112, !113, !115, !116, !117, !119, !120, !121, !123, !125, !126, !127, !129, !130, !131, !133, !134, !135, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !151, !153, !154, !155, !157, !158, !160, !161, !163, !164, !165, !167, !168, !170, !172, !173, !175, !176, !178, !180, !181, !182, !184, !185, !186, !187, !189, !190, !191, !192, !194, !195}
!llvm.module.flags = !{!196, !197, !198, !199, !200, !201, !202, !203}
!llvm.ident = !{!204}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/caam/caamalg.c", i32 3595, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @caam_algapi_init._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @caam_algapi_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @caam_algapi_init._entry.3, !7, !"_entry", i1 false, i1 false}
!7 = !{!"../drivers/crypto/caam/caamalg.c", i32 3647, i32 4}
!8 = !{ptr @caam_algapi_init._entry_ptr.4, !7, !"_entry_ptr", i1 false, i1 false}
!9 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/crypto/caam/caamalg.c", i32 3657, i32 3}
!11 = !{ptr @caam_algapi_init._entry.5, !10, !"_entry", i1 false, i1 false}
!12 = !{ptr @caam_algapi_init._entry_ptr.7, !10, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @driver_aeads, !14, !"driver_aeads", i1 false, i1 false}
!14 = !{!"../drivers/crypto/caam/caamalg.c", i32 2020, i32 29}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/crypto/caam/caamalg.c", i32 688, i32 2}
!17 = !{ptr @.str.9, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.10, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @rfc4106_setkey.__UNIQUE_ID_ddebug520, !16, !"__UNIQUE_ID_ddebug520", i1 false, i1 false}
!20 = !{ptr @.str.11, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/crypto/caam/caamalg.c", i32 714, i32 2}
!23 = !{ptr @.str.13, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @rfc4543_setkey.__UNIQUE_ID_ddebug521, !22, !"__UNIQUE_ID_ddebug521", i1 false, i1 false}
!25 = !{ptr @.str.14, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/crypto/caam/caamalg.c", i32 667, i32 2}
!27 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @gcm_setkey.__UNIQUE_ID_ddebug519, !26, !"__UNIQUE_ID_ddebug519", i1 false, i1 false}
!29 = !{ptr @.str.16, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/crypto/caam/caamalg.c", i32 1566, i32 2}
!31 = !{ptr @.str.17, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @gcm_crypt.__UNIQUE_ID_ddebug531, !30, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!33 = !{ptr @.str.18, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/crypto/caam/caamalg.c", i32 1310, i32 4}
!35 = !{ptr @.str.19, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.20, !34, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @aead_edesc_alloc._entry, !34, !"_entry", i1 false, i1 false}
!39 = !{ptr @aead_edesc_alloc._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.23, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/caam/caamalg.c", i32 1317, i32 4}
!42 = !{ptr @aead_edesc_alloc._entry.22, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @aead_edesc_alloc._entry_ptr.24, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @aead_edesc_alloc._entry.25, !45, !"_entry", i1 false, i1 false}
!45 = !{!"../drivers/crypto/caam/caamalg.c", i32 1327, i32 4}
!46 = !{ptr @aead_edesc_alloc._entry_ptr.26, !45, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.28, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/crypto/caam/caamalg.c", i32 1337, i32 4}
!49 = !{ptr @aead_edesc_alloc._entry.27, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @aead_edesc_alloc._entry_ptr.29, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @aead_edesc_alloc._entry.30, !52, !"_entry", i1 false, i1 false}
!52 = !{!"../drivers/crypto/caam/caamalg.c", i32 1346, i32 5}
!53 = !{ptr @aead_edesc_alloc._entry_ptr.31, !52, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.33, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/crypto/caam/caamalg.c", i32 1359, i32 5}
!56 = !{ptr @aead_edesc_alloc._entry.32, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @aead_edesc_alloc._entry_ptr.34, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.36, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/crypto/caam/caamalg.c", i32 1418, i32 3}
!60 = !{ptr @aead_edesc_alloc._entry.35, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @aead_edesc_alloc._entry_ptr.37, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.38, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/crypto/caam/sg_sw_sec4.h", i32 39, i32 2}
!64 = !{ptr @.str.39, !63, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.40, !63, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @dma_to_sec4_sg_one.__UNIQUE_ID_ddebug513, !63, !"__UNIQUE_ID_ddebug513", i1 false, i1 false}
!67 = distinct !{null, !68, !"__already_done", i1 false, i1 false}
!68 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!69 = !{ptr @.str.41, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.42, !68, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.43, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/crypto/caam/desc_constr.h", i32 156, i32 2}
!73 = !{ptr @.str.44, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.45, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @init_job_desc_shared._entry, !72, !"_entry", i1 false, i1 false}
!76 = !{ptr @init_job_desc_shared._entry_ptr, !72, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.46, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/crypto/caam/desc_constr.h", i32 358, i32 1}
!79 = !{ptr @append_seq_in_ptr._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @append_seq_in_ptr._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.47, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/crypto/caam/desc_constr.h", i32 341, i32 1}
!83 = !{ptr @append_seq_in_ptr_extlen._entry, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @append_seq_in_ptr_extlen._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.48, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/crypto/caam/desc_constr.h", i32 359, i32 1}
!87 = !{ptr @append_seq_out_ptr._entry, !86, !"_entry", i1 false, i1 false}
!88 = !{ptr @append_seq_out_ptr._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.49, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/crypto/caam/desc_constr.h", i32 342, i32 1}
!91 = !{ptr @append_seq_out_ptr_extlen._entry, !90, !"_entry", i1 false, i1 false}
!92 = !{ptr @append_seq_out_ptr_extlen._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.50, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/crypto/caam/caamalg.c", i32 979, i32 2}
!95 = !{ptr @.str.51, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @aead_crypt_done.__UNIQUE_ID_ddebug524, !94, !"__UNIQUE_ID_ddebug524", i1 false, i1 false}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/crypto/caam/caamalg.c", i32 587, i32 2}
!99 = !{ptr @.str.53, !98, !"<string literal>", i1 false, i1 false}
!100 = !{ptr @aead_setkey.__UNIQUE_ID_ddebug516, !98, !"__UNIQUE_ID_ddebug516", i1 false, i1 false}
!101 = !{ptr @.str.54, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/crypto/caam/caamalg.c", i32 590, i32 2}
!103 = !{ptr @aead_setkey.__UNIQUE_ID_ddebug517, !102, !"__UNIQUE_ID_ddebug517", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/crypto/caam/caamalg.c", i32 626, i32 2}
!106 = !{ptr @aead_setkey.__UNIQUE_ID_ddebug518, !105, !"__UNIQUE_ID_ddebug518", i1 false, i1 false}
!107 = !{ptr @split_key_len.mdpadlen, !108, !"mdpadlen", i1 false, i1 false}
!108 = !{!"../drivers/crypto/caam/key_gen.h", i32 19, i32 18}
!109 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/crypto/caam/caamalg.c", i32 1507, i32 2}
!111 = !{ptr @.str.57, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @aead_crypt.__UNIQUE_ID_ddebug530, !110, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!113 = !{ptr @.str.58, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/crypto/caam/desc_constr.h", i32 331, i32 1}
!115 = !{ptr @append_load_as_imm._entry, !114, !"_entry", i1 false, i1 false}
!116 = !{ptr @append_load_as_imm._entry_ptr, !114, !"_entry_ptr", i1 false, i1 false}
!117 = !{ptr @.str.59, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/crypto/caam/caamalg.c", i32 1473, i32 2}
!119 = !{ptr @.str.60, !118, !"<string literal>", i1 false, i1 false}
!120 = !{ptr @chachapoly_crypt.__UNIQUE_ID_ddebug529, !118, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!121 = !{ptr @driver_algs, !122, !"driver_algs", i1 false, i1 false}
!122 = !{!"../drivers/crypto/caam/caamalg.c", i32 1866, i32 33}
!123 = !{ptr @.str.61, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/crypto/caam/caamalg.c", i32 741, i32 2}
!125 = !{ptr @.str.62, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @skcipher_setkey.__UNIQUE_ID_ddebug522, !124, !"__UNIQUE_ID_ddebug522", i1 false, i1 false}
!127 = !{ptr @.str.63, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/crypto/caam/caamalg.c", i32 1832, i32 2}
!129 = !{ptr @.str.64, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @skcipher_crypt.__UNIQUE_ID_ddebug533, !128, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!131 = !{ptr @.str.65, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/crypto/caam/caamalg.c", i32 1614, i32 3}
!133 = !{ptr @skcipher_edesc_alloc._entry, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @skcipher_edesc_alloc._entry_ptr, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @skcipher_edesc_alloc._entry.66, !136, !"_entry", i1 false, i1 false}
!136 = !{!"../drivers/crypto/caam/caamalg.c", i32 1622, i32 4}
!137 = !{ptr @skcipher_edesc_alloc._entry_ptr.67, !136, !"_entry_ptr", i1 false, i1 false}
!138 = !{ptr @skcipher_edesc_alloc._entry.68, !139, !"_entry", i1 false, i1 false}
!139 = !{!"../drivers/crypto/caam/caamalg.c", i32 1632, i32 4}
!140 = !{ptr @skcipher_edesc_alloc._entry_ptr.69, !139, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @skcipher_edesc_alloc._entry.70, !142, !"_entry", i1 false, i1 false}
!142 = !{!"../drivers/crypto/caam/caamalg.c", i32 1639, i32 4}
!143 = !{ptr @skcipher_edesc_alloc._entry_ptr.71, !142, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @skcipher_edesc_alloc._entry.72, !145, !"_entry", i1 false, i1 false}
!145 = !{!"../drivers/crypto/caam/caamalg.c", i32 1645, i32 4}
!146 = !{ptr @skcipher_edesc_alloc._entry_ptr.73, !145, !"_entry_ptr", i1 false, i1 false}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/crypto/caam/caamalg.c", i32 1687, i32 3}
!149 = !{ptr @skcipher_edesc_alloc._entry.74, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @skcipher_edesc_alloc._entry_ptr.76, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.78, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/crypto/caam/caamalg.c", i32 1709, i32 4}
!153 = !{ptr @skcipher_edesc_alloc._entry.77, !152, !"_entry", i1 false, i1 false}
!154 = !{ptr @skcipher_edesc_alloc._entry_ptr.79, !152, !"_entry_ptr", i1 false, i1 false}
!155 = !{ptr @skcipher_edesc_alloc._entry.80, !156, !"_entry", i1 false, i1 false}
!156 = !{!"../drivers/crypto/caam/caamalg.c", i32 1739, i32 4}
!157 = !{ptr @skcipher_edesc_alloc._entry_ptr.81, !156, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.82, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/crypto/caam/caamalg.c", i32 1749, i32 2}
!160 = !{ptr @skcipher_edesc_alloc.__UNIQUE_ID_ddebug532, !159, !"__UNIQUE_ID_ddebug532", i1 false, i1 false}
!161 = !{ptr @.str.83, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/crypto/caam/caamalg.c", i32 1246, i32 2}
!163 = !{ptr @.str.84, !162, !"<string literal>", i1 false, i1 false}
!164 = !{ptr @init_skcipher_job.__UNIQUE_ID_ddebug527, !162, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!165 = !{ptr @.str.85, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/crypto/caam/caamalg.c", i32 1248, i32 2}
!167 = !{ptr @init_skcipher_job.__UNIQUE_ID_ddebug528, !166, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!168 = !{ptr @.str.86, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/crypto/caam/caamalg.c", i32 1251, i32 15}
!170 = !{ptr @.str.87, !171, !"<string literal>", i1 false, i1 false}
!171 = !{!"../drivers/crypto/caam/caamalg.c", i32 1013, i32 2}
!172 = !{ptr @skcipher_crypt_done.__UNIQUE_ID_ddebug525, !171, !"__UNIQUE_ID_ddebug525", i1 false, i1 false}
!173 = !{ptr @.str.88, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/crypto/caam/caamalg.c", i32 1031, i32 3}
!175 = !{ptr @skcipher_crypt_done.__UNIQUE_ID_ddebug526, !174, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!176 = !{ptr @.str.89, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/crypto/caam/caamalg.c", i32 1036, i32 15}
!178 = !{ptr @.str.90, !179, !"<string literal>", i1 false, i1 false}
!179 = !{!"../drivers/crypto/caam/caamalg.c", i32 843, i32 3}
!180 = !{ptr @.str.91, !179, !"<string literal>", i1 false, i1 false}
!181 = !{ptr @xts_skcipher_setkey.__UNIQUE_ID_ddebug523, !179, !"__UNIQUE_ID_ddebug523", i1 false, i1 false}
!182 = !{ptr @.str.92, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/crypto/caam/caamalg.c", i32 3413, i32 4}
!184 = !{ptr @.str.93, !183, !"<string literal>", i1 false, i1 false}
!185 = !{ptr @caam_cra_init._entry, !183, !"_entry", i1 false, i1 false}
!186 = !{ptr @caam_cra_init._entry_ptr, !183, !"_entry_ptr", i1 false, i1 false}
!187 = !{ptr @.str.94, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/crypto/caam/caamalg.c", i32 3360, i32 3}
!189 = !{ptr @.str.95, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @caam_init_common._entry, !188, !"_entry", i1 false, i1 false}
!191 = !{ptr @caam_init_common._entry_ptr, !188, !"_entry_ptr", i1 false, i1 false}
!192 = !{ptr @.str.97, !193, !"<string literal>", i1 false, i1 false}
!193 = !{!"../drivers/crypto/caam/caamalg.c", i32 3376, i32 3}
!194 = !{ptr @caam_init_common._entry.96, !193, !"_entry", i1 false, i1 false}
!195 = !{ptr @caam_init_common._entry_ptr.98, !193, !"_entry_ptr", i1 false, i1 false}
!196 = !{i32 1, !"wchar_size", i32 2}
!197 = !{i32 1, !"min_enum_size", i32 4}
!198 = !{i32 8, !"branch-target-enforcement", i32 0}
!199 = !{i32 8, !"sign-return-address", i32 0}
!200 = !{i32 8, !"sign-return-address-all", i32 0}
!201 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!202 = !{i32 7, !"uwtable", i32 1}
!203 = !{i32 7, !"frame-pointer", i32 2}
!204 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!205 = !{i8 0, i8 2}
!206 = !{i64 2152527172}
!207 = !{i64 2158461426}
!208 = !{i64 2148789567, i64 2148789572, i64 2148789585, i64 2148789629, i64 2148789663, i64 2148789684}
!209 = !{i64 2149108575}
!210 = !{!"branch_weights", i32 2000, i32 1}
!211 = !{!"auto-init"}
!212 = !{!"branch_weights", i32 1, i32 2000}
