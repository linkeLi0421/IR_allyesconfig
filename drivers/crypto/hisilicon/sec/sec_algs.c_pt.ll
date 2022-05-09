; ModuleID = '/llk/IR_all_yes/drivers/crypto/hisilicon/sec/sec_algs.c_pt.bc'
source_filename = "../drivers/crypto/hisilicon/sec/sec_algs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.4, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.4 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.lock_class_key = type { %union.anon.2 }
%union.anon.2 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.sec_request = type { %struct.list_head, i32, %struct.mutex, ptr, i32, i32, i32, i32, ptr, ptr, %struct.list_head }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.sec_queue = type { ptr, i32, [64 x i8], %struct.sec_queue_ring_cmd, %struct.sec_queue_ring_cq, %struct.sec_queue_ring_db, ptr, i32, i8, i32, [16 x i32], %struct.anon, i8, %struct.mutex, [512 x ptr] }
%struct.sec_queue_ring_cmd = type { %struct.atomic_t, %struct.mutex, ptr, i32, ptr }
%struct.sec_queue_ring_cq = type { ptr, i32 }
%struct.sec_queue_ring_db = type { ptr, i32 }
%struct.anon = type { %union.anon.3, [0 x ptr] }
%union.anon.3 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.sec_dev_info = type { i32, i32, [2 x ptr], %struct.mutex, i32, [16 x %struct.sec_queue], ptr, ptr }
%struct.des_ctx = type { [32 x i32] }
%struct.sec_c_alg_cfg = type { i16, [2 x i8] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.5 }
%union.anon.5 = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.7, %union.anon.68, %struct.atomic_t, i32 }
%union.anon.7 = type { %struct.anon.8 }
%struct.anon.8 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.68 = type { %struct.atomic_t }
%struct.sec_request_el = type { %struct.list_head, %struct.sec_bd_info, ptr, i32, ptr, ptr, i32, ptr, ptr, i32 }
%struct.sec_bd_info = type { i32, i32, i32, i32, %union.anon, %union.anon.0, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%union.anon = type { i32 }
%union.anon.0 = type { i32 }
%struct.sec_hw_sgl = type { i32, i16, i16, i32, i64, i32, i32, ptr, i64, [64 x %struct.sec_hw_sge], [16 x i8] }
%struct.sec_hw_sge = type { i32, i32, i32 }
%struct.sec_alg_tfm_ctx = type { i32, ptr, i32, %struct.sec_bd_info, ptr, %struct.mutex, ptr, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@algs_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @algs_lock, i64 52), ptr getelementptr (i8, ptr @algs_lock, i64 52) }, ptr @algs_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.1, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@active_devs = internal global { i32, [28 x i8] } zeroinitializer, align 32
@sec_algs = internal global [8 x %struct.skcipher_alg] [%struct.skcipher_alg { ptr @sec_alg_skcipher_setkey_aes_ecb, ptr @sec_alg_skcipher_encrypt, ptr @sec_alg_skcipher_decrypt, ptr @sec_alg_skcipher_init, ptr @sec_alg_skcipher_exit, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 16, i32 184, i32 0, i32 4001, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hisi_sec_aes_ecb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.4 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @sec_alg_skcipher_setkey_aes_cbc, ptr @sec_alg_skcipher_encrypt, ptr @sec_alg_skcipher_decrypt, ptr @sec_alg_skcipher_init_with_queue, ptr @sec_alg_skcipher_exit_with_queue, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 16, i32 184, i32 0, i32 4001, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hisi_sec_aes_cbc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.4 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @sec_alg_skcipher_setkey_aes_ctr, ptr @sec_alg_skcipher_encrypt, ptr @sec_alg_skcipher_decrypt, ptr @sec_alg_skcipher_init_with_queue, ptr @sec_alg_skcipher_exit_with_queue, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 16, i32 184, i32 0, i32 4001, %struct.refcount_struct zeroinitializer, [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hisi_sec_aes_ctr\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.4 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @sec_alg_skcipher_setkey_aes_xts, ptr @sec_alg_skcipher_encrypt, ptr @sec_alg_skcipher_decrypt, ptr @sec_alg_skcipher_init, ptr @sec_alg_skcipher_exit, i32 32, i32 64, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 16, i32 184, i32 0, i32 4001, %struct.refcount_struct zeroinitializer, [128 x i8] c"xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hisi_sec_aes_xts\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.4 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @sec_alg_skcipher_setkey_des_ecb, ptr @sec_alg_skcipher_encrypt, ptr @sec_alg_skcipher_decrypt, ptr @sec_alg_skcipher_init, ptr @sec_alg_skcipher_exit, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 8, i32 184, i32 0, i32 4001, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hisi_sec_des_ecb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.4 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @sec_alg_skcipher_setkey_des_cbc, ptr @sec_alg_skcipher_encrypt, ptr @sec_alg_skcipher_decrypt, ptr @sec_alg_skcipher_init_with_queue, ptr @sec_alg_skcipher_exit_with_queue, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 8, i32 184, i32 0, i32 4001, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hisi_sec_des_cbc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.4 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @sec_alg_skcipher_setkey_3des_cbc, ptr @sec_alg_skcipher_encrypt, ptr @sec_alg_skcipher_decrypt, ptr @sec_alg_skcipher_init_with_queue, ptr @sec_alg_skcipher_exit_with_queue, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 8, i32 184, i32 0, i32 4001, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hisi_sec_3des_cbc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.4 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }, %struct.skcipher_alg { ptr @sec_alg_skcipher_setkey_3des_ecb, ptr @sec_alg_skcipher_encrypt, ptr @sec_alg_skcipher_decrypt, ptr @sec_alg_skcipher_init, ptr @sec_alg_skcipher_exit, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 8, i32 184, i32 0, i32 4001, %struct.refcount_struct zeroinitializer, [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"hisi_sec_3des_ecb\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.4 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.72 zeroinitializer, [120 x i8] undef } }], align 128
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"algs_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"algs_lock\00", [22 x i8] zeroinitializer }, align 32
@sec_c_alg_cfgs = internal constant { [18 x { i8, i8, [2 x i8] }], [56 x i8] } { [18 x { i8, i8, [2 x i8] }] [{ i8, i8, [2 x i8] } { i8 1, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 5, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 33, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 35, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 37, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 39, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 64, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 65, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 66, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 68, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 69, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 70, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 80, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 81, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 82, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 92, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 94, i8 0, [2 x i8] undef }, { i8, i8, [2 x i8] } { i8 0, i8 0, [2 x i8] undef }], [56 x i8] zeroinitializer }, align 32
@sec_alg_skcipher_crypto.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&sec_req->lock\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sec_skcipher_alg_callback._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 443, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Got an invalid answer %lu %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sec_skcipher_alg_callback\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"drivers/crypto/hisilicon/sec/sec_algs.c\00", [56 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sec_skcipher_alg_callback._entry_ptr = internal global ptr @sec_skcipher_alg_callback._entry, section ".printk_index", align 4
@sec_skcipher_alg_callback._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 491, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Error getting next element from kfifo %d\0A\00", [54 x i8] zeroinitializer }, align 32
@sec_skcipher_alg_callback._entry_ptr.11 = internal global ptr @sec_skcipher_alg_callback._entry.9, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@sec_alg_skcipher_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&ctx->lock\00", [21 x i8] zeroinitializer }, align 32
@sec_alg_skcipher_init.__key.15 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"&ctx->queue->queuelock\00", [41 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.17 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 64]
@__sancov_gen_cov_switch_values.20 = internal global [8 x i64] [i64 6, i64 32, i64 9, i64 10, i64 11, i64 12, i64 13, i64 14]
@___asan_gen_.21 = private unnamed_addr constant [10 x i8] c"algs_lock\00", align 1
@___asan_gen_.24 = private unnamed_addr constant [12 x i8] c"active_devs\00", align 1
@___asan_gen_.26 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 124, i32 21 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 123, i32 8 }
@___asan_gen_.33 = private unnamed_addr constant [15 x i8] c"sec_c_alg_cfgs\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 29, i32 35 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 726, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 441, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 489, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.70, i32 326, i32 6 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 876, i32 2 }
@___asan_gen_.78 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [43 x i8] c"../drivers/crypto/hisilicon/sec/sec_algs.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 884, i32 2 }
@llvm.compiler.used = appending global [23 x ptr] [ptr @sec_skcipher_alg_callback._entry, ptr @sec_skcipher_alg_callback._entry.9, ptr @sec_skcipher_alg_callback._entry_ptr, ptr @sec_skcipher_alg_callback._entry_ptr.11, ptr @algs_lock, ptr @active_devs, ptr @.str, ptr @.str.1, ptr @sec_c_alg_cfgs, ptr @sec_alg_skcipher_crypto.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @sec_alg_skcipher_init.__key, ptr @.str.14, ptr @sec_alg_skcipher_init.__key.15, ptr @.str.16], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algs_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @active_devs to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_c_alg_cfgs to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_alg_skcipher_crypto.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_skcipher_alg_callback._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_skcipher_alg_callback._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_alg_skcipher_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sec_alg_skcipher_init.__key.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sec_alg_callback(ptr noundef %resp, ptr nocapture noundef readonly %shadow) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cb = getelementptr inbounds %struct.sec_request, ptr %shadow, i32 0, i32 9
  %0 = ptrtoint ptr %cb to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cb, align 4
  %req_base = getelementptr inbounds %struct.sec_request, ptr %shadow, i32 0, i32 8
  %2 = ptrtoint ptr %req_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %req_base, align 4
  tail call void %1(ptr noundef %resp, ptr noundef %3) #7
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sec_algs_register() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @algs_lock, i32 noundef 0) #7
  %0 = load i32, ptr @active_devs, align 4
  %inc = add i32 %0, 1
  store i32 %inc, ptr @active_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp.not = icmp eq i32 %0, 0
  br i1 %cmp.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %entry
  %call = tail call i32 @crypto_register_skciphers(ptr noundef nonnull @sec_algs, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end.unlock_crit_edge, label %if.then1

if.end.unlock_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.then1:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %1 = load i32, ptr @active_devs, align 4
  %dec = add i32 %1, -1
  store i32 %dec, ptr @active_devs, align 4
  br label %unlock

unlock:                                           ; preds = %if.then1, %if.end.unlock_crit_edge, %entry.unlock_crit_edge
  %ret.0 = phi i32 [ 0, %entry.unlock_crit_edge ], [ %call, %if.then1 ], [ 0, %if.end.unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef nonnull @algs_lock) #7
  ret i32 %ret.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sec_algs_unregister() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @algs_lock, i32 noundef 0) #7
  %0 = load i32, ptr @active_devs, align 4
  %dec = add i32 %0, -1
  store i32 %dec, ptr @active_devs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp.not = icmp eq i32 %dec, 0
  br i1 %cmp.not, label %if.end, label %entry.unlock_crit_edge

entry.unlock_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %unlock

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @crypto_unregister_skciphers(ptr noundef nonnull @sec_algs, i32 noundef 8) #7
  br label %unlock

unlock:                                           ; preds = %if.end, %entry.unlock_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @algs_lock) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skciphers(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_alg_skcipher_setkey_aes_ecb(ptr noundef %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 24, label %sw.bb1
    i32 32, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %alg.0 = phi i32 [ 8, %sw.bb2 ], [ 7, %sw.bb1 ], [ 6, %entry.sw.epilog_crit_edge ]
  %call = tail call fastcc i32 @sec_alg_skcipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen, i32 noundef %alg.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_alg_skcipher_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sec_alg_skcipher_crypto(ptr noundef %req, i1 noundef zeroext true)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_alg_skcipher_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @sec_alg_skcipher_crypto(ptr noundef %req, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_alg_skcipher_init(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 76
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.14, ptr noundef nonnull @sec_alg_skcipher_init.__key) #7
  %backlog = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 32
  %0 = ptrtoint ptr %backlog to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %backlog, ptr %backlog, align 4
  %prev.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 36
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %backlog, ptr %prev.i, align 4
  %2 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 140, ptr %tfm, align 128
  %call1 = tail call ptr @sec_queue_alloc_start_safe() #7
  %queue = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 72
  %3 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1, ptr %queue, align 4
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %do.body6

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %call1 to i32
  br label %cleanup

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %queuelock = getelementptr inbounds %struct.sec_queue, ptr %call1, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %queuelock, ptr noundef nonnull @.str.16, ptr noundef nonnull @sec_alg_skcipher_init.__key.15) #7
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %queue, align 4
  %havesoftqueue = getelementptr inbounds %struct.sec_queue, ptr %6, i32 0, i32 12
  %7 = ptrtoint ptr %havesoftqueue to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %havesoftqueue, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.body6, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ 0, %do.body6 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sec_alg_skcipher_exit(ptr nocapture noundef readonly %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 72
  %key = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %dev1 = getelementptr inbounds %struct.sec_dev_info, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev1, align 4
  %8 = call ptr @memset(ptr %1, i32 0, i32 64)
  tail call void asm sideeffect "", "r,~{memory}"(ptr nonnull %1) #7, !srcloc !44
  %9 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %key, align 4
  %pkey = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %11 = ptrtoint ptr %pkey to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %pkey, align 4
  tail call void @dma_free_attrs(ptr noundef %7, i32 noundef 64, ptr noundef %10, i32 noundef %12, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %13 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %queue, align 4
  %call5 = tail call i32 @sec_queue_stop_release(ptr noundef %14) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_alg_skcipher_setkey_aes_cbc(ptr noundef %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 24, label %sw.bb1
    i32 32, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %alg.0 = phi i32 [ 11, %sw.bb2 ], [ 10, %sw.bb1 ], [ 9, %entry.sw.epilog_crit_edge ]
  %call = tail call fastcc i32 @sec_alg_skcipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen, i32 noundef %alg.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_alg_skcipher_init_with_queue(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 76
  tail call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @sec_alg_skcipher_init.__key) #7
  %backlog.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 32
  %0 = ptrtoint ptr %backlog.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %backlog.i, ptr %backlog.i, align 4
  %prev.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 2, i32 4, i32 36
  %1 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %backlog.i, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 140, ptr %tfm, align 128
  %call1.i = tail call ptr @sec_queue_alloc_start_safe() #7
  %queue.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 72
  %3 = ptrtoint ptr %queue.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call1.i, ptr %queue.i, align 4
  %cmp.i.i = icmp ugt ptr %call1.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %sec_alg_skcipher_init.exit, label %sec_alg_skcipher_init.exit.thread

sec_alg_skcipher_init.exit.thread:                ; preds = %entry
  %queuelock.i = getelementptr inbounds %struct.sec_queue, ptr %call1.i, i32 0, i32 13
  tail call void @__mutex_init(ptr noundef %queuelock.i, ptr noundef nonnull @.str.16, ptr noundef nonnull @sec_alg_skcipher_init.__key.15) #7
  %4 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue.i, align 4
  %havesoftqueue.i = getelementptr inbounds %struct.sec_queue, ptr %5, i32 0, i32 12
  %6 = ptrtoint ptr %havesoftqueue.i to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %havesoftqueue.i, align 4
  %7 = load ptr, ptr %queue.i, align 4
  %softqueue = getelementptr inbounds %struct.sec_queue, ptr %7, i32 0, i32 11
  %8 = ptrtoint ptr %softqueue to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %softqueue, align 4
  %out = getelementptr inbounds %struct.sec_queue, ptr %7, i32 0, i32 11, i32 0, i32 0, i32 1
  %9 = ptrtoint ptr %out to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %out, align 4
  %mask = getelementptr inbounds %struct.sec_queue, ptr %7, i32 0, i32 11, i32 0, i32 0, i32 2
  %10 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %mask, align 4
  %esize = getelementptr inbounds %struct.sec_queue, ptr %7, i32 0, i32 11, i32 0, i32 0, i32 3
  %11 = ptrtoint ptr %esize to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 4, ptr %esize, align 4
  %data = getelementptr inbounds %struct.sec_queue, ptr %7, i32 0, i32 11, i32 0, i32 0, i32 4
  %12 = ptrtoint ptr %data to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %data, align 4
  %13 = load ptr, ptr %queue.i, align 4
  %softqueue4 = getelementptr inbounds %struct.sec_queue, ptr %13, i32 0, i32 11
  %call7 = tail call i32 @__kfifo_alloc(ptr noundef %softqueue4, i32 noundef 512, i32 noundef 4, i32 noundef 3264) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7)
  %tobool9.not = icmp eq i32 %call7, 0
  br i1 %tobool9.not, label %if.end11, label %if.then10

sec_alg_skcipher_init.exit:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %call1.i to i32
  br label %cleanup

if.then10:                                        ; preds = %sec_alg_skcipher_init.exit.thread
  %key.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %15 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %key.i, align 4
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.then10.sec_alg_skcipher_exit.exit_crit_edge, label %if.then.i26

if.then10.sec_alg_skcipher_exit.exit_crit_edge:   ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alg_skcipher_exit.exit

if.then.i26:                                      ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue.i, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %dev1.i = getelementptr inbounds %struct.sec_dev_info, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev1.i, align 4
  %23 = call ptr @memset(ptr %16, i32 0, i32 64)
  tail call void asm sideeffect "", "r,~{memory}"(ptr nonnull %16) #7, !srcloc !44
  %24 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %key.i, align 4
  %pkey.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %26 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %pkey.i, align 4
  tail call void @dma_free_attrs(ptr noundef %22, i32 noundef 64, ptr noundef %25, i32 noundef %27, i32 noundef 0) #7
  br label %sec_alg_skcipher_exit.exit

sec_alg_skcipher_exit.exit:                       ; preds = %if.then.i26, %if.then10.sec_alg_skcipher_exit.exit_crit_edge
  %28 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %queue.i, align 4
  %call5.i = tail call i32 @sec_queue_stop_release(ptr noundef %29) #7
  br label %cleanup

if.end11:                                         ; preds = %sec_alg_skcipher_init.exit.thread
  call void @__sanitizer_cov_trace_pc() #9
  %30 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %queue.i, align 4
  %havesoftqueue = getelementptr inbounds %struct.sec_queue, ptr %31, i32 0, i32 12
  %32 = ptrtoint ptr %havesoftqueue to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 1, ptr %havesoftqueue, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end11, %sec_alg_skcipher_exit.exit, %sec_alg_skcipher_init.exit
  %retval.0 = phi i32 [ %call7, %sec_alg_skcipher_exit.exit ], [ 0, %if.end11 ], [ %14, %sec_alg_skcipher_init.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sec_alg_skcipher_exit_with_queue(ptr nocapture noundef readonly %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 72
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %softqueue = getelementptr inbounds %struct.sec_queue, ptr %1, i32 0, i32 11
  tail call void @__kfifo_free(ptr noundef %softqueue) #7
  %key.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %2 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %key.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %entry.sec_alg_skcipher_exit.exit_crit_edge, label %if.then.i

entry.sec_alg_skcipher_exit.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_alg_skcipher_exit.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev1.i = getelementptr inbounds %struct.sec_dev_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %dev1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1.i, align 4
  %10 = call ptr @memset(ptr %3, i32 0, i32 64)
  tail call void asm sideeffect "", "r,~{memory}"(ptr nonnull %3) #7, !srcloc !44
  %11 = ptrtoint ptr %key.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %key.i, align 4
  %pkey.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %13 = ptrtoint ptr %pkey.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pkey.i, align 4
  tail call void @dma_free_attrs(ptr noundef %9, i32 noundef 64, ptr noundef %12, i32 noundef %14, i32 noundef 0) #7
  br label %sec_alg_skcipher_exit.exit

sec_alg_skcipher_exit.exit:                       ; preds = %if.then.i, %entry.sec_alg_skcipher_exit.exit_crit_edge
  %15 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue, align 4
  %call5.i = tail call i32 @sec_queue_stop_release(ptr noundef %16) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_alg_skcipher_setkey_aes_ctr(ptr noundef %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %keylen, label %entry.cleanup_crit_edge [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 24, label %sw.bb1
    i32 32, label %sw.bb2
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb2, %sw.bb1, %entry.sw.epilog_crit_edge
  %alg.0 = phi i32 [ 14, %sw.bb2 ], [ 13, %sw.bb1 ], [ 12, %entry.sw.epilog_crit_edge ]
  %call = tail call fastcc i32 @sec_alg_skcipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen, i32 noundef %alg.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %sw.epilog ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_alg_skcipher_setkey_aes_xts(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %rem.i = and i32 %keylen, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i.i.i, align 128
  %and.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %div10.i = lshr i32 %keylen, 1
  %add.ptr.i = getelementptr i8, ptr %key, i32 %div10.i
  %call.i.i = tail call i32 @__crypto_memneq(ptr noundef %key, ptr noundef %add.ptr.i, i32 noundef %div10.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i.not.i, label %land.lhs.true.i.cleanup_crit_edge, label %land.lhs.true.i.if.end_crit_edge

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.cleanup_crit_edge:                ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %2 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %keylen, label %if.end.cleanup_crit_edge [
    i32 32, label %if.end.sw.epilog_crit_edge
    i32 64, label %sw.bb1
  ]

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb1:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb1, %if.end.sw.epilog_crit_edge
  %alg.0 = phi i32 [ 16, %sw.bb1 ], [ 15, %if.end.sw.epilog_crit_edge ]
  %call2 = tail call fastcc i32 @sec_alg_skcipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen, i32 noundef %alg.0)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.end.cleanup_crit_edge, %land.lhs.true.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call2, %sw.epilog ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_alg_skcipher_setkey_des_ecb(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
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
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
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
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #7, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool.not, label %cond.false, label %verify_skcipher_des_key.exit.cond.end_crit_edge

verify_skcipher_des_key.exit.cond.end_crit_edge:  ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call fastcc i32 @sec_alg_skcipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen, i32 noundef 0)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %verify_skcipher_des_key.exit.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.false ], [ %err.0.i.i, %verify_skcipher_des_key.exit.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_alg_skcipher_setkey_des_cbc(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
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
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
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
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #7, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool.not, label %cond.false, label %verify_skcipher_des_key.exit.cond.end_crit_edge

verify_skcipher_des_key.exit.cond.end_crit_edge:  ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = call fastcc i32 @sec_alg_skcipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen, i32 noundef 1)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %verify_skcipher_des_key.exit.cond.end_crit_edge
  %cond = phi i32 [ %call1, %cond.false ], [ %err.0.i.i, %verify_skcipher_des_key.exit.cond.end_crit_edge ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_alg_skcipher_setkey_3des_cbc(ptr noundef %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
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
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.i.i.i.cond.false_crit_edge, %lor.lhs.false.i.i.i.cond.false_crit_edge
  %25 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  %call1 = call fastcc i32 @sec_alg_skcipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen, i32 noundef 4)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %verify_skcipher_des3_key.exit.thread
  %cond = phi i32 [ %call1, %cond.false ], [ -126, %verify_skcipher_des3_key.exit.thread ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sec_alg_skcipher_setkey_3des_ecb(ptr noundef %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen) #0 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
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
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.i.i.i.cond.false_crit_edge, %lor.lhs.false.i.i.i.cond.false_crit_edge
  %25 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !44
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  %call1 = call fastcc i32 @sec_alg_skcipher_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen, i32 noundef 2)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %verify_skcipher_des3_key.exit.thread
  %cond = phi i32 [ %call1, %cond.false ], [ -126, %verify_skcipher_des3_key.exit.thread ]
  ret i32 %cond
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sec_alg_skcipher_setkey(ptr noundef %tfm, ptr nocapture noundef readonly %key, i32 noundef %keylen, i32 noundef %alg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %queue = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 72
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %dev1 = getelementptr inbounds %struct.sec_dev_info, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev1, align 4
  %lock = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 76
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %key2 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %6 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %key2, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = call ptr @memset(ptr %7, i32 0, i32 64)
  br label %if.end10

if.else:                                          ; preds = %entry
  %pkey = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %5, i32 noundef 64, ptr noundef %pkey, i32 noundef 3264, i32 noundef 0) #7
  %9 = ptrtoint ptr %key2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %key2, align 4
  %tobool7.not = icmp eq ptr %call.i, null
  br i1 %tobool7.not, label %if.then8, label %if.else.if.end10_crit_edge

if.else.if.end10_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br label %cleanup

if.end10:                                         ; preds = %if.else.if.end10_crit_edge, %if.then
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %10 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %alg, ptr %__crt_ctx.i.i, align 4
  %11 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %key2, align 4
  %13 = call ptr @memcpy(ptr %12, ptr %key, i32 %keylen)
  %req_template.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %14 = load i32, ptr %__crt_ctx.i.i, align 4
  %arrayidx.i.i = getelementptr [18 x %struct.sec_c_alg_cfg], ptr @sec_c_alg_cfgs, i32 0, i32 %14
  %15 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 16
  %16 = call ptr @memset(ptr %15, i32 0, i32 56)
  %17 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %bf.load.i.i = load i16, ptr %arrayidx.i.i, align 4
  %18 = lshr i16 %bf.load.i.i, 3
  %19 = and i16 %18, 896
  %bf.lshr2.i.i = lshr i16 %bf.load.i.i, 13
  %bf.cast3.i.i = zext i16 %bf.lshr2.i.i to i32
  %shl4.i.i = shl nuw i32 %bf.cast3.i.i, 29
  %w1.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %20 = ptrtoint ptr %w1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %shl4.i.i, ptr %w1.i.i, align 4
  %bf.lshr7.i.i = lshr i16 %bf.load.i.i, 8
  %bf.cast9.i.i = zext i16 %bf.lshr7.i.i to i32
  %shl10.i.i = shl i32 %bf.cast9.i.i, 30
  %w3.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 20
  %21 = ptrtoint ptr %w3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %shl10.i.i, ptr %w3.i.i, align 4
  %22 = lshr i16 %bf.load.i.i, 1
  %23 = and i16 %22, 96
  %or1831.i.i = or i16 %19, %23
  %or18.i.i = zext i16 %or1831.i.i to i32
  %24 = ptrtoint ptr %req_template.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or18.i.i, ptr %req_template.i, align 4
  %pkey.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %25 = ptrtoint ptr %pkey.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pkey.i.i, align 4
  %cipher_key_addr_lo.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 32
  %27 = ptrtoint ptr %cipher_key_addr_lo.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %cipher_key_addr_lo.i.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then8
  %retval.0 = phi i32 [ 0, %if.end10 ], [ -12, %if.then8 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sec_alg_skcipher_crypto(ptr noundef %skreq, i1 noundef zeroext %encrypt) unnamed_addr #0 align 64 {
entry:
  %splits_in = alloca ptr, align 4
  %splits_out = alloca ptr, align 4
  %splits_in_nents = alloca ptr, align 4
  %splits_out_nents = alloca ptr, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %queue3 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 60
  %2 = ptrtoint ptr %queue3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue3, align 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 0, i32 6
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %splits_in) #7
  %6 = ptrtoint ptr %splits_in to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 -1 to ptr), ptr %splits_in, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %splits_out) #7
  %7 = ptrtoint ptr %splits_out to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %splits_out, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %splits_in_nents) #7
  %8 = ptrtoint ptr %splits_in_nents to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 -1 to ptr), ptr %splits_in_nents, align 4, !annotation !45
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %splits_out_nents) #7
  %9 = ptrtoint ptr %splits_out_nents to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %splits_out_nents, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 0, i32 2
  %10 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 0, i32 3
  %12 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dst, align 4
  %cmp.not = icmp eq ptr %11, %13
  %base = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 0, i32 4
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 0, i32 4, i32 4
  %14 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %flags, align 4
  %and = and i32 %15, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %cond = select i1 %tobool.not, i32 2592, i32 3264
  %lock = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 1, i32 3
  tail call void @__mutex_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @sec_alg_skcipher_crypto.__key) #7
  %req_base = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 1, i32 5, i32 84
  %16 = ptrtoint ptr %req_base to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %base, ptr %req_base, align 4
  %err = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 1, i32 5, i32 80
  %17 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %err, align 4
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 8
  %call8 = tail call i32 @sg_nents(ptr noundef %19) #7
  %len_in = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 1, i32 5, i32 68
  %20 = ptrtoint ptr %len_in to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call8, ptr %len_in, align 4
  %21 = ptrtoint ptr %skreq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %skreq, align 128
  %add.i = add i32 %22, 33554431
  %div.i = sdiv i32 %add.i, 33554432
  %or.i.i = or i32 %cond, 256
  %23 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %div.i, i32 4) #7
  %24 = extractvalue { i32, i1 } %23, 1
  br i1 %24, label %entry.cleanup_crit_edge, label %if.end7.i.i.i, !prof !46

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7.i.i.i:                                    ; preds = %entry
  %25 = extractvalue { i32, i1 } %23, 0
  %call8.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %25, i32 noundef %or.i.i) #10
  %tobool.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool.not.i, label %if.end7.i.i.i.cleanup_crit_edge, label %for.cond.preheader.i

if.end7.i.i.i.cleanup_crit_edge:                  ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader.i:                             ; preds = %if.end7.i.i.i
  %sub223.i = add nsw i32 %div.i, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 67108863, i32 %add.i)
  %cmp24.i = icmp sgt i32 %add.i, 67108863
  br i1 %cmp24.i, label %for.body.i.preheader, label %for.cond.preheader.i.if.end_crit_edge

for.cond.preheader.i.if.end_crit_edge:            ; preds = %for.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

for.body.i.preheader:                             ; preds = %for.cond.preheader.i
  %smax = call i32 @llvm.smax.i32(i32 %sub223.i, i32 1)
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.025.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %arrayidx.i = getelementptr i32, ptr %call8.i.i.i, i32 %i.025.i
  %26 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 33554432, ptr %arrayidx.i, align 4
  %inc.i = add nuw nsw i32 %i.025.i, 1
  %exitcond.not = icmp eq i32 %inc.i, %smax
  br i1 %exitcond.not, label %for.body.i.if.end_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.if.end_crit_edge:                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.end:                                           ; preds = %for.body.i.if.end_crit_edge, %for.cond.preheader.i.if.end_crit_edge
  %mul4.neg.i = mul i32 %sub223.i, -33554432
  %sub5.i = add i32 %mul4.neg.i, %22
  %arrayidx7.i = getelementptr i32, ptr %call8.i.i.i, i32 %sub223.i
  %27 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub5.i, ptr %arrayidx7.i, align 4
  %num_elements = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 1, i32 2
  %28 = ptrtoint ptr %num_elements to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %div.i, ptr %num_elements, align 4
  %29 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %src, align 8
  %31 = ptrtoint ptr %len_in to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %len_in, align 4
  %dev = getelementptr inbounds %struct.sec_dev_info, ptr %5, i32 0, i32 6
  %33 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev, align 4
  %call13 = call fastcc i32 @sec_map_and_split_sg(ptr noundef %30, ptr noundef nonnull %call8.i.i.i, i32 noundef %div.i, ptr noundef nonnull %splits_in, ptr noundef nonnull %splits_in_nents, i32 noundef %32, ptr noundef %34, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end16, label %if.end.cleanup.sink.split_crit_edge

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end16:                                         ; preds = %if.end
  br i1 %cmp.not, label %if.end16.if.end28_crit_edge, label %if.then18

if.end16.if.end28_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.then18:                                        ; preds = %if.end16
  %35 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dst, align 4
  %call20 = tail call i32 @sg_nents(ptr noundef %36) #7
  %len_out = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 1, i32 5, i32 72
  %37 = ptrtoint ptr %len_out to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call20, ptr %len_out, align 4
  %38 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dst, align 4
  %40 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev, align 4
  %call24 = call fastcc i32 @sec_map_and_split_sg(ptr noundef %39, ptr noundef nonnull %call8.i.i.i, i32 noundef %div.i, ptr noundef nonnull %splits_out, ptr noundef nonnull %splits_out_nents, i32 noundef %call20, ptr noundef %41, i32 noundef %cond)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call24)
  %tobool25.not = icmp eq i32 %call24, 0
  br i1 %tobool25.not, label %if.then18.if.end28_crit_edge, label %if.then18.err_unmap_in_sg_crit_edge

if.then18.err_unmap_in_sg_crit_edge:              ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unmap_in_sg

if.then18.if.end28_crit_edge:                     ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28

if.end28:                                         ; preds = %if.then18.if.end28_crit_edge, %if.end16.if.end28_crit_edge
  %tfm_ctx = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 1, i32 5, i32 64
  %42 = ptrtoint ptr %tfm_ctx to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %__crt_ctx.i, ptr %tfm_ctx, align 4
  %cb = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 2
  %43 = ptrtoint ptr %cb to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @sec_skcipher_alg_callback, ptr %cb, align 4
  %44 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %__ctx.i, ptr %__ctx.i, align 4
  %prev.i = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 1, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %__ctx.i, ptr %prev.i, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %46 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %47, i32 -100
  %48 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ivsize.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %49)
  %tobool30.not = icmp eq i32 %49, 0
  br i1 %tobool30.not, label %if.end28.if.end41_crit_edge, label %if.then31

if.end28.if.end41_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then31:                                        ; preds = %if.end28
  %50 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev, align 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 0, i32 1
  %52 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iv, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %53) #7
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.then31
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !47

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %51) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %51, i32 0, i32 3
  %54 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %51, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %57, %if.end.i.i ], [ %55, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %51, ptr noundef %53, i32 noundef %49) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %58 = load ptr, ptr @mem_map, align 4
  %59 = ptrtoint ptr %53 to i32
  %sub.i = add i32 %59, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %58, i32 %shr.i
  %and.i = and i32 %59, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %51, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %49, i32 noundef 1, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i245 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %dma_iv = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 1, i32 5, i32 76
  %60 = ptrtoint ptr %dma_iv to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %retval.0.i245, ptr %dma_iv, align 4
  %61 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %62, i32 noundef %retval.0.i245) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i245)
  %cmp.i246 = icmp eq i32 %retval.0.i245, -1
  br i1 %cmp.i246, label %dma_map_single_attrs.exit.err_unmap_out_sg_crit_edge, label %dma_map_single_attrs.exit.if.end41_crit_edge

dma_map_single_attrs.exit.if.end41_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

dma_map_single_attrs.exit.err_unmap_out_sg_crit_edge: ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unmap_out_sg

if.end41:                                         ; preds = %dma_map_single_attrs.exit.if.end41_crit_edge, %if.end28.if.end41_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %add.i)
  %cmp42307 = icmp sgt i32 %add.i, 33554431
  br i1 %cmp42307, label %for.body.lr.ph, label %if.end41.for.end_crit_edge

if.end41.for.end_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end41
  %req_template = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 3
  %63 = ptrtoint ptr %splits_in to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %splits_in, align 4
  %65 = ptrtoint ptr %splits_in_nents to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %splits_in_nents, align 4
  %storemerge.v.i = select i1 %encrypt, i32 262144, i32 524288
  %hw_sgl_pool.i.i = getelementptr inbounds %struct.sec_dev_info, ptr %5, i32 0, i32 7
  %dma_iv64 = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 1, i32 5, i32 76
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0308 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %arrayidx = getelementptr i32, ptr %call8.i.i.i, i32 %i.0308
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %arrayidx, align 4
  %69 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %src, align 8
  %71 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dst, align 4
  %cmp47.not = icmp eq ptr %70, %72
  %arrayidx48 = getelementptr ptr, ptr %64, i32 %i.0308
  %73 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx48, align 4
  %arrayidx49 = getelementptr i32, ptr %66, i32 %i.0308
  %75 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %arrayidx49, align 4
  br i1 %cmp.not, label %for.body.cond.end57_crit_edge, label %cond.true54

for.body.cond.end57_crit_edge:                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end57

cond.true54:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %splits_out to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %splits_out, align 4
  %arrayidx51 = getelementptr ptr, ptr %78, i32 %i.0308
  %79 = ptrtoint ptr %arrayidx51 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx51, align 4
  %81 = ptrtoint ptr %splits_out_nents to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %splits_out_nents, align 4
  %arrayidx55 = getelementptr i32, ptr %82, i32 %i.0308
  %83 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %arrayidx55, align 4
  br label %cond.end57

cond.end57:                                       ; preds = %cond.true54, %for.body.cond.end57_crit_edge
  %cond52303 = phi ptr [ %80, %cond.true54 ], [ null, %for.body.cond.end57_crit_edge ]
  %cond58 = phi i32 [ %84, %cond.true54 ], [ 0, %for.body.cond.end57_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %85 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %85, i32 noundef %or.i.i, i32 noundef 104) #11
  %tobool.not.i248 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i248, label %cond.end57.if.then61_crit_edge, label %if.end.i

cond.end57.if.then61_crit_edge:                   ; preds = %cond.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61

if.end.i:                                         ; preds = %cond.end57
  %el_length.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 9
  %86 = ptrtoint ptr %el_length.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %68, ptr %el_length.i, align 4
  %req2.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 1
  %87 = call ptr @memcpy(ptr %req2.i, ptr %req_template, i32 64)
  %88 = ptrtoint ptr %req2.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %req2.i, align 8
  %and.i249 = and i32 %89, -1611644929
  %90 = lshr i32 %68, 2
  %and11.i = and i32 %90, 245760
  %91 = shl i32 %68, 9
  %and18.i = and i32 %91, 1610612736
  %storemerge.i = or i32 %and11.i, %storemerge.v.i
  %or13.i = or i32 %storemerge.i, %and18.i
  %or20.i = or i32 %or13.i, %and.i249
  store i32 %or20.i, ptr %req2.i, align 8
  %and22.i = and i32 %68, 65535
  %or23.i = or i32 %and22.i, 65536
  %w2.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %92 = ptrtoint ptr %w2.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %or23.i, ptr %w2.i, align 8
  %w3.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 1, i32 3
  %93 = ptrtoint ptr %w3.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %w3.i, align 4
  %and24.i = and i32 %94, -1047553
  store i32 %and24.i, ptr %w3.i, align 4
  %w1.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %95 = ptrtoint ptr %w1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %w1.i, align 4
  %or25.i = or i32 %96, 16777216
  store i32 %or25.i, ptr %w1.i, align 4
  %sgl_in26.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 4
  %97 = ptrtoint ptr %sgl_in26.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %74, ptr %sgl_in26.i, align 8
  %in.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 2
  %dma_in.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 3
  %call28.i = tail call fastcc i32 @sec_alloc_and_fill_hw_sgl(ptr noundef %in.i, ptr noundef %dma_in.i, ptr noundef %74, i32 noundef %76, ptr noundef %5, i32 noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28.i)
  %tobool29.not.i = icmp eq i32 %call28.i, 0
  br i1 %tobool29.not.i, label %if.end31.i, label %if.end.i.err_free_el.i_crit_edge

if.end.i.err_free_el.i_crit_edge:                 ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_el.i

if.end31.i:                                       ; preds = %if.end.i
  %98 = ptrtoint ptr %dma_in.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dma_in.i, align 4
  %data_addr_lo.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 1, i32 10
  %100 = ptrtoint ptr %data_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %data_addr_lo.i, align 8
  %data_addr_hi.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 1, i32 11
  %101 = ptrtoint ptr %data_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %data_addr_hi.i, align 4
  br i1 %cmp47.not, label %if.else52.i, label %if.then38.i

if.then38.i:                                      ; preds = %if.end31.i
  %sgl_out39.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 7
  %102 = ptrtoint ptr %sgl_out39.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %cond52303, ptr %sgl_out39.i, align 4
  %out.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 5
  %dma_out.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 6
  %call41.i250 = tail call fastcc i32 @sec_alloc_and_fill_hw_sgl(ptr noundef %out.i, ptr noundef %dma_out.i, ptr noundef %cond52303, i32 noundef %cond58, ptr noundef %5, i32 noundef %cond) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call41.i250)
  %tobool42.not.i = icmp eq i32 %call41.i250, 0
  br i1 %tobool42.not.i, label %if.end44.i, label %err_free_hw_sgl_in.i

if.end44.i:                                       ; preds = %if.then38.i
  call void @__sanitizer_cov_trace_pc() #9
  %103 = ptrtoint ptr %req2.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %req2.i, align 8
  %or46.i = or i32 %104, 2048
  store i32 %or46.i, ptr %req2.i, align 8
  %105 = ptrtoint ptr %dma_out.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dma_out.i, align 8
  %cipher_destin_addr_lo.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 1, i32 14
  %107 = ptrtoint ptr %cipher_destin_addr_lo.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %cipher_destin_addr_lo.i, align 8
  %cipher_destin_addr_hi.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 1, i32 15
  %108 = ptrtoint ptr %cipher_destin_addr_hi.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 0, ptr %cipher_destin_addr_hi.i, align 4
  br label %sec_alg_alloc_and_fill_el.exit

if.else52.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #9
  %109 = ptrtoint ptr %req2.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %req2.i, align 8
  %and54.i = and i32 %110, -2049
  store i32 %and54.i, ptr %req2.i, align 8
  %cipher_destin_addr_lo57.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 1, i32 14
  %111 = ptrtoint ptr %cipher_destin_addr_lo57.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %99, ptr %cipher_destin_addr_lo57.i, align 8
  %cipher_destin_addr_hi61.i = getelementptr inbounds %struct.sec_request_el, ptr %call7.i.i.i, i32 0, i32 1, i32 15
  %112 = ptrtoint ptr %cipher_destin_addr_hi61.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %cipher_destin_addr_hi61.i, align 4
  br label %sec_alg_alloc_and_fill_el.exit

err_free_hw_sgl_in.i:                             ; preds = %if.then38.i
  %113 = ptrtoint ptr %in.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %in.i, align 8
  %tobool.not4.i.i = icmp eq ptr %114, null
  br i1 %tobool.not4.i.i, label %err_free_hw_sgl_in.i.err_free_el.i_crit_edge, label %while.body.lr.ph.i.i

err_free_hw_sgl_in.i.err_free_el.i_crit_edge:     ; preds = %err_free_hw_sgl_in.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_el.i

while.body.lr.ph.i.i:                             ; preds = %err_free_hw_sgl_in.i
  %115 = ptrtoint ptr %dma_in.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dma_in.i, align 4
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.lr.ph.i.i
  %sgl_current.06.i.i = phi ptr [ %114, %while.body.lr.ph.i.i ], [ %118, %while.body.i.i.while.body.i.i_crit_edge ]
  %psec_sgl.addr.05.i.i = phi i32 [ %116, %while.body.lr.ph.i.i ], [ %120, %while.body.i.i.while.body.i.i_crit_edge ]
  %next.i.i = getelementptr inbounds %struct.sec_hw_sgl, ptr %sgl_current.06.i.i, i32 0, i32 7
  %117 = ptrtoint ptr %next.i.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %next.i.i, align 8
  %119 = ptrtoint ptr %sgl_current.06.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %sgl_current.06.i.i, align 8
  %121 = ptrtoint ptr %hw_sgl_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %hw_sgl_pool.i.i, align 4
  tail call void @dma_pool_free(ptr noundef %122, ptr noundef nonnull %sgl_current.06.i.i, i32 noundef %psec_sgl.addr.05.i.i) #7
  %tobool.not.i.i251 = icmp eq ptr %118, null
  br i1 %tobool.not.i.i251, label %while.body.i.i.err_free_el.i_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i.i

while.body.i.i.err_free_el.i_crit_edge:           ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_el.i

err_free_el.i:                                    ; preds = %while.body.i.i.err_free_el.i_crit_edge, %err_free_hw_sgl_in.i.err_free_el.i_crit_edge, %if.end.i.err_free_el.i_crit_edge
  %ret.0.i = phi i32 [ %call28.i, %if.end.i.err_free_el.i_crit_edge ], [ %call41.i250, %err_free_hw_sgl_in.i.err_free_el.i_crit_edge ], [ %call41.i250, %while.body.i.i.err_free_el.i_crit_edge ]
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #7
  %123 = inttoptr i32 %ret.0.i to ptr
  br label %sec_alg_alloc_and_fill_el.exit

sec_alg_alloc_and_fill_el.exit:                   ; preds = %err_free_el.i, %if.else52.i, %if.end44.i
  %retval.0.i252 = phi ptr [ %123, %err_free_el.i ], [ %call7.i.i.i, %if.else52.i ], [ %call7.i.i.i, %if.end44.i ]
  %cmp.i253 = icmp ugt ptr %retval.0.i252, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i253, label %sec_alg_alloc_and_fill_el.exit.if.then61_crit_edge, label %if.end63

sec_alg_alloc_and_fill_el.exit.if.then61_crit_edge: ; preds = %sec_alg_alloc_and_fill_el.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then61

if.then61:                                        ; preds = %sec_alg_alloc_and_fill_el.exit.if.then61_crit_edge, %cond.end57.if.then61_crit_edge
  %retval.0.i252306 = phi ptr [ %retval.0.i252, %sec_alg_alloc_and_fill_el.exit.if.then61_crit_edge ], [ inttoptr (i32 -12 to ptr), %cond.end57.if.then61_crit_edge ]
  %124 = ptrtoint ptr %retval.0.i252306 to i32
  br label %err_free_elements

if.end63:                                         ; preds = %sec_alg_alloc_and_fill_el.exit
  %125 = ptrtoint ptr %dma_iv64 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dma_iv64, align 4
  %cipher_iv_addr_lo = getelementptr inbounds %struct.sec_request_el, ptr %retval.0.i252, i32 0, i32 1, i32 8
  %127 = ptrtoint ptr %cipher_iv_addr_lo to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %cipher_iv_addr_lo, align 4
  %cipher_iv_addr_hi = getelementptr inbounds %struct.sec_request_el, ptr %retval.0.i252, i32 0, i32 1, i32 9
  %128 = ptrtoint ptr %cipher_iv_addr_hi to i32
  call void @__asan_store4_noabort(i32 %128)
  store i32 0, ptr %cipher_iv_addr_hi, align 4
  %sec_req69 = getelementptr inbounds %struct.sec_request_el, ptr %retval.0.i252, i32 0, i32 8
  %129 = ptrtoint ptr %sec_req69 to i32
  call void @__asan_store4_noabort(i32 %129)
  store ptr %__ctx.i, ptr %sec_req69, align 4
  %130 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %retval.0.i252, ptr noundef %131, ptr noundef %__ctx.i) #7
  br i1 %call.i.i, label %if.end.i.i255, label %if.end63.list_add_tail.exit_crit_edge

if.end63.list_add_tail.exit_crit_edge:            ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i255:                                    ; preds = %if.end63
  call void @__sanitizer_cov_trace_pc() #9
  %132 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %132)
  store ptr %retval.0.i252, ptr %prev.i, align 4
  %133 = ptrtoint ptr %retval.0.i252 to i32
  call void @__asan_store4_noabort(i32 %133)
  store ptr %__ctx.i, ptr %retval.0.i252, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %retval.0.i252, i32 0, i32 1
  %134 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %131, ptr %prev3.i.i, align 4
  %135 = ptrtoint ptr %131 to i32
  call void @__asan_store4_noabort(i32 %135)
  store volatile ptr %retval.0.i252, ptr %131, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i255, %if.end63.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.0308, 1
  %exitcond313.not = icmp eq i32 %inc, %div.i
  br i1 %exitcond313.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %if.end41.for.end_crit_edge
  %queuelock = getelementptr inbounds %struct.sec_queue, ptr %3, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %queuelock, i32 noundef 0) #7
  %call71 = tail call zeroext i1 @sec_queue_can_enqueue(ptr noundef %3, i32 noundef %div.i) #7
  br i1 %call71, label %for.end.lor.lhs.false77_crit_edge, label %land.lhs.true

for.end.lor.lhs.false77_crit_edge:                ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false77

land.lhs.true:                                    ; preds = %for.end
  %havesoftqueue = getelementptr inbounds %struct.sec_queue, ptr %3, i32 0, i32 12
  %136 = ptrtoint ptr %havesoftqueue to i32
  call void @__asan_load1_noabort(i32 %136)
  %137 = load i8, ptr %havesoftqueue, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %137)
  %tobool72.not = icmp eq i8 %137, 0
  br i1 %tobool72.not, label %land.lhs.true.if.then80_crit_edge, label %lor.lhs.false

land.lhs.true.if.then80_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then80

lor.lhs.false:                                    ; preds = %land.lhs.true
  %softqueue = getelementptr inbounds %struct.sec_queue, ptr %3, i32 0, i32 11
  %mask = getelementptr inbounds %struct.sec_queue, ptr %3, i32 0, i32 11, i32 0, i32 0, i32 2
  %138 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %mask, align 4
  %140 = ptrtoint ptr %softqueue to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %softqueue, align 4
  %out = getelementptr inbounds %struct.sec_queue, ptr %3, i32 0, i32 11, i32 0, i32 0, i32 1
  %142 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %out, align 4
  %sub.neg = add i32 %139, 1
  %add = sub i32 %sub.neg, %141
  %sub73 = add i32 %add, %143
  call void @__sanitizer_cov_trace_cmp4(i32 %sub73, i32 %div.i)
  %cmp76 = icmp ugt i32 %sub73, %div.i
  br i1 %cmp76, label %lor.lhs.false.if.then80_crit_edge, label %lor.lhs.false.lor.lhs.false77_crit_edge

lor.lhs.false.lor.lhs.false77_crit_edge:          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false77

lor.lhs.false.if.then80_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then80

lor.lhs.false77:                                  ; preds = %lor.lhs.false.lor.lhs.false77_crit_edge, %for.end.lor.lhs.false77_crit_edge
  %backlog = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 32
  %144 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load volatile ptr, ptr %backlog, align 4
  %cmp.i256.not = icmp eq ptr %145, %backlog
  br i1 %cmp.i256.not, label %if.end90, label %lor.lhs.false77.if.then80_crit_edge

lor.lhs.false77.if.then80_crit_edge:              ; preds = %lor.lhs.false77
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then80

if.then80:                                        ; preds = %lor.lhs.false77.if.then80_crit_edge, %lor.lhs.false.if.then80_crit_edge, %land.lhs.true.if.then80_crit_edge
  %146 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %flags, align 4
  %and83 = and i32 %147, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and83)
  %tobool84.not = icmp eq i32 %and83, 0
  br i1 %tobool84.not, label %if.end88, label %if.then85

if.then85:                                        ; preds = %if.then80
  %backlog_head = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 2, i32 1
  %backlog86 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 32
  %prev.i257 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 2, i32 4, i32 36
  %148 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %prev.i257, align 4
  %call.i.i258 = tail call zeroext i1 @__list_add_valid(ptr noundef %backlog_head, ptr noundef %149, ptr noundef %backlog86) #7
  br i1 %call.i.i258, label %if.end.i.i260, label %if.then85.list_add_tail.exit261_crit_edge

if.then85.list_add_tail.exit261_crit_edge:        ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit261

if.end.i.i260:                                    ; preds = %if.then85
  call void @__sanitizer_cov_trace_pc() #9
  %150 = ptrtoint ptr %prev.i257 to i32
  call void @__asan_store4_noabort(i32 %150)
  store ptr %backlog_head, ptr %prev.i257, align 4
  %151 = ptrtoint ptr %backlog_head to i32
  call void @__asan_store4_noabort(i32 %151)
  store ptr %backlog86, ptr %backlog_head, align 4
  %prev3.i.i259 = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 2, i32 2
  %152 = ptrtoint ptr %prev3.i.i259 to i32
  call void @__asan_store4_noabort(i32 %152)
  store ptr %149, ptr %prev3.i.i259, align 4
  %153 = ptrtoint ptr %149 to i32
  call void @__asan_store4_noabort(i32 %153)
  store volatile ptr %backlog_head, ptr %149, align 4
  br label %list_add_tail.exit261

list_add_tail.exit261:                            ; preds = %if.end.i.i260, %if.then85.list_add_tail.exit261_crit_edge
  tail call void @mutex_unlock(ptr noundef %queuelock) #7
  br label %out96

if.end88:                                         ; preds = %if.then80
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @mutex_unlock(ptr noundef %queuelock) #7
  br label %err_free_elements

if.end90:                                         ; preds = %lor.lhs.false77
  %call91 = tail call fastcc i32 @sec_send_request(ptr noundef %__ctx.i, ptr noundef %3)
  tail call void @mutex_unlock(ptr noundef %queuelock) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool93.not = icmp eq i32 %call91, 0
  br i1 %tobool93.not, label %if.end90.out96_crit_edge, label %if.end90.err_free_elements_crit_edge

if.end90.err_free_elements_crit_edge:             ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_elements

if.end90.out96_crit_edge:                         ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %out96

out96:                                            ; preds = %if.end90.out96_crit_edge, %list_add_tail.exit261
  %ret.0 = phi i32 [ -16, %list_add_tail.exit261 ], [ -115, %if.end90.out96_crit_edge ]
  %154 = ptrtoint ptr %splits_in_nents to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %splits_in_nents, align 4
  tail call void @kfree(ptr noundef %155) #7
  %156 = ptrtoint ptr %splits_in to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %splits_in, align 4
  tail call void @kfree(ptr noundef %157) #7
  %158 = ptrtoint ptr %splits_out_nents to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %splits_out_nents, align 4
  tail call void @kfree(ptr noundef %159) #7
  %160 = ptrtoint ptr %splits_out to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %splits_out, align 4
  tail call void @kfree(ptr noundef %161) #7
  br label %cleanup.sink.split

err_free_elements:                                ; preds = %if.end90.err_free_elements_crit_edge, %if.end88, %if.then61
  %ret.1 = phi i32 [ %124, %if.then61 ], [ %call91, %if.end90.err_free_elements_crit_edge ], [ -16, %if.end88 ]
  %162 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %__ctx.i, align 4
  %cmp107.not310 = icmp eq ptr %163, %__ctx.i
  br i1 %cmp107.not310, label %err_free_elements.for.end116_crit_edge, label %err_free_elements.for.body108_crit_edge

err_free_elements.for.body108_crit_edge:          ; preds = %err_free_elements
  br label %for.body108

err_free_elements.for.end116_crit_edge:           ; preds = %err_free_elements
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end116

for.body108:                                      ; preds = %list_del.exit.for.body108_crit_edge, %err_free_elements.for.body108_crit_edge
  %el.0311 = phi ptr [ %temp.0, %list_del.exit.for.body108_crit_edge ], [ %163, %err_free_elements.for.body108_crit_edge ]
  %164 = ptrtoint ptr %el.0311 to i32
  call void @__asan_load4_noabort(i32 %164)
  %temp.0 = load ptr, ptr %el.0311, align 4
  %call.i.i262 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %el.0311) #7
  br i1 %call.i.i262, label %if.end.i.i263, label %for.body108.list_del.exit_crit_edge

for.body108.list_del.exit_crit_edge:              ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i263:                                    ; preds = %for.body108
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %el.0311, i32 0, i32 1
  %165 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %prev.i.i, align 4
  %167 = ptrtoint ptr %el.0311 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %el.0311, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %168, i32 0, i32 1
  %169 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %169)
  store ptr %166, ptr %prev1.i.i.i, align 4
  %170 = ptrtoint ptr %166 to i32
  call void @__asan_store4_noabort(i32 %170)
  store volatile ptr %168, ptr %166, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i263, %for.body108.list_del.exit_crit_edge
  %171 = ptrtoint ptr %el.0311 to i32
  call void @__asan_store4_noabort(i32 %171)
  store ptr inttoptr (i32 256 to ptr), ptr %el.0311, align 4
  %prev.i264 = getelementptr inbounds %struct.list_head, ptr %el.0311, i32 0, i32 1
  %172 = ptrtoint ptr %prev.i264 to i32
  call void @__asan_store4_noabort(i32 %172)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i264, align 4
  tail call fastcc void @sec_alg_free_el(ptr noundef %el.0311, ptr noundef %5)
  %cmp107.not = icmp eq ptr %temp.0, %__ctx.i
  br i1 %cmp107.not, label %list_del.exit.for.end116_crit_edge, label %list_del.exit.for.body108_crit_edge

list_del.exit.for.body108_crit_edge:              ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body108

list_del.exit.for.end116_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end116

for.end116:                                       ; preds = %list_del.exit.for.end116_crit_edge, %err_free_elements.for.end116_crit_edge
  %173 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i266 = getelementptr i8, ptr %174, i32 -100
  %175 = ptrtoint ptr %ivsize.i266 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %ivsize.i266, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %tobool118.not = icmp eq i32 %176, 0
  br i1 %tobool118.not, label %for.end116.err_unmap_out_sg_crit_edge, label %if.then119

for.end116.err_unmap_out_sg_crit_edge:            ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unmap_out_sg

if.then119:                                       ; preds = %for.end116
  call void @__sanitizer_cov_trace_pc() #9
  %177 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %dev, align 4
  %dma_iv121 = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 1, i32 5, i32 76
  %179 = ptrtoint ptr %dma_iv121 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %dma_iv121, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %178, i32 noundef %180, i32 noundef %176, i32 noundef 0, i32 noundef 0) #7
  br label %err_unmap_out_sg

err_unmap_out_sg:                                 ; preds = %if.then119, %for.end116.err_unmap_out_sg_crit_edge, %dma_map_single_attrs.exit.err_unmap_out_sg_crit_edge
  %ret.2 = phi i32 [ %ret.1, %if.then119 ], [ %ret.1, %for.end116.err_unmap_out_sg_crit_edge ], [ -12, %dma_map_single_attrs.exit.err_unmap_out_sg_crit_edge ]
  br i1 %cmp.not, label %err_unmap_out_sg.err_unmap_in_sg_crit_edge, label %if.then125

err_unmap_out_sg.err_unmap_in_sg_crit_edge:       ; preds = %err_unmap_out_sg
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unmap_in_sg

if.then125:                                       ; preds = %err_unmap_out_sg
  %181 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %dst, align 4
  %183 = ptrtoint ptr %splits_out to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %splits_out, align 4
  %185 = ptrtoint ptr %splits_out_nents to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %splits_out_nents, align 4
  %len_out127 = getelementptr inbounds %struct.skcipher_request, ptr %skreq, i32 1, i32 5, i32 72
  %187 = ptrtoint ptr %len_out127 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %len_out127, align 4
  %189 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %add.i)
  %cmp4.i = icmp sgt i32 %add.i, 33554431
  br i1 %cmp4.i, label %if.then125.for.body.i271_crit_edge, label %if.then125.sec_unmap_sg_on_err.exit_crit_edge

if.then125.sec_unmap_sg_on_err.exit_crit_edge:    ; preds = %if.then125
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_unmap_sg_on_err.exit

if.then125.for.body.i271_crit_edge:               ; preds = %if.then125
  br label %for.body.i271

for.body.i271:                                    ; preds = %for.body.i271.for.body.i271_crit_edge, %if.then125.for.body.i271_crit_edge
  %i.05.i = phi i32 [ %inc.i270, %for.body.i271.for.body.i271_crit_edge ], [ 0, %if.then125.for.body.i271_crit_edge ]
  %arrayidx.i269 = getelementptr ptr, ptr %184, i32 %i.05.i
  %191 = ptrtoint ptr %arrayidx.i269 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %arrayidx.i269, align 4
  tail call void @kfree(ptr noundef %192) #7
  %inc.i270 = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i270, %div.i
  br i1 %exitcond.not.i, label %for.body.i271.sec_unmap_sg_on_err.exit_crit_edge, label %for.body.i271.for.body.i271_crit_edge

for.body.i271.for.body.i271_crit_edge:            ; preds = %for.body.i271
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i271

for.body.i271.sec_unmap_sg_on_err.exit_crit_edge: ; preds = %for.body.i271
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_unmap_sg_on_err.exit

sec_unmap_sg_on_err.exit:                         ; preds = %for.body.i271.sec_unmap_sg_on_err.exit_crit_edge, %if.then125.sec_unmap_sg_on_err.exit_crit_edge
  tail call void @kfree(ptr noundef %186) #7
  tail call void @kfree(ptr noundef %184) #7
  tail call void @dma_unmap_sg_attrs(ptr noundef %190, ptr noundef %182, i32 noundef %188, i32 noundef 0, i32 noundef 0) #7
  br label %err_unmap_in_sg

err_unmap_in_sg:                                  ; preds = %sec_unmap_sg_on_err.exit, %err_unmap_out_sg.err_unmap_in_sg_crit_edge, %if.then18.err_unmap_in_sg_crit_edge
  %ret.3 = phi i32 [ %call24, %if.then18.err_unmap_in_sg_crit_edge ], [ %ret.2, %sec_unmap_sg_on_err.exit ], [ %ret.2, %err_unmap_out_sg.err_unmap_in_sg_crit_edge ]
  %193 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %src, align 8
  %195 = ptrtoint ptr %splits_in to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %splits_in, align 4
  %197 = ptrtoint ptr %splits_in_nents to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %splits_in_nents, align 4
  %199 = ptrtoint ptr %len_in to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %len_in, align 4
  %201 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 33554431, i32 %add.i)
  %cmp4.i273 = icmp sgt i32 %add.i, 33554431
  br i1 %cmp4.i273, label %err_unmap_in_sg.for.body.i278_crit_edge, label %err_unmap_in_sg.sec_unmap_sg_on_err.exit280_crit_edge

err_unmap_in_sg.sec_unmap_sg_on_err.exit280_crit_edge: ; preds = %err_unmap_in_sg
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_unmap_sg_on_err.exit280

err_unmap_in_sg.for.body.i278_crit_edge:          ; preds = %err_unmap_in_sg
  br label %for.body.i278

for.body.i278:                                    ; preds = %for.body.i278.for.body.i278_crit_edge, %err_unmap_in_sg.for.body.i278_crit_edge
  %i.05.i274 = phi i32 [ %inc.i276, %for.body.i278.for.body.i278_crit_edge ], [ 0, %err_unmap_in_sg.for.body.i278_crit_edge ]
  %arrayidx.i275 = getelementptr ptr, ptr %196, i32 %i.05.i274
  %203 = ptrtoint ptr %arrayidx.i275 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx.i275, align 4
  tail call void @kfree(ptr noundef %204) #7
  %inc.i276 = add nuw nsw i32 %i.05.i274, 1
  %exitcond.not.i277 = icmp eq i32 %inc.i276, %div.i
  br i1 %exitcond.not.i277, label %for.body.i278.sec_unmap_sg_on_err.exit280_crit_edge, label %for.body.i278.for.body.i278_crit_edge

for.body.i278.for.body.i278_crit_edge:            ; preds = %for.body.i278
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i278

for.body.i278.sec_unmap_sg_on_err.exit280_crit_edge: ; preds = %for.body.i278
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_unmap_sg_on_err.exit280

sec_unmap_sg_on_err.exit280:                      ; preds = %for.body.i278.sec_unmap_sg_on_err.exit280_crit_edge, %err_unmap_in_sg.sec_unmap_sg_on_err.exit280_crit_edge
  tail call void @kfree(ptr noundef %198) #7
  tail call void @kfree(ptr noundef %196) #7
  tail call void @dma_unmap_sg_attrs(ptr noundef %202, ptr noundef %194, i32 noundef %200, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %sec_unmap_sg_on_err.exit280, %out96, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %ret.0, %out96 ], [ %call13, %if.end.cleanup.sink.split_crit_edge ], [ %ret.3, %sec_unmap_sg_on_err.exit280 ]
  tail call void @kfree(ptr noundef nonnull %call8.i.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end7.i.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %if.end7.i.i.i.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %splits_out_nents) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %splits_in_nents) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %splits_out) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %splits_in) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sec_map_and_split_sg(ptr noundef %sgl, ptr noundef %split_sizes, i32 noundef %steps, ptr nocapture noundef %splits, ptr nocapture noundef %splits_nents, i32 noundef %sgl_len_in, ptr noundef %dev, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @dma_map_sg_attrs(ptr noundef %dev, ptr noundef %sgl, i32 noundef %sgl_len_in, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %or.i = or i32 %gfp, 256
  %0 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %steps, i32 4) #7
  %1 = extractvalue { i32, i1 } %0, 1
  %2 = extractvalue { i32, i1 } %0, 0
  br i1 %1, label %kcalloc.exit.thread, label %kcalloc.exit.thread83, !prof !46

kcalloc.exit.thread:                              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %splits to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %splits, align 4
  br label %err_unmap_sg

kcalloc.exit.thread83:                            ; preds = %if.end
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef %or.i) #10
  %4 = ptrtoint ptr %splits to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8.i.i, ptr %splits, align 4
  %tobool2.not85 = icmp eq ptr %call8.i.i, null
  br i1 %tobool2.not85, label %kcalloc.exit.thread83.err_unmap_sg_crit_edge, label %if.end7.i.i72

kcalloc.exit.thread83.err_unmap_sg_crit_edge:     ; preds = %kcalloc.exit.thread83
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unmap_sg

if.end7.i.i72:                                    ; preds = %kcalloc.exit.thread83
  %call8.i.i71 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %2, i32 noundef %or.i) #10
  %5 = ptrtoint ptr %splits_nents to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call8.i.i71, ptr %splits_nents, align 4
  %tobool6.not = icmp eq ptr %call8.i.i71, null
  br i1 %tobool6.not, label %if.end7.i.i72.err_free_splits_crit_edge, label %if.end8

if.end7.i.i72.err_free_splits_crit_edge:          ; preds = %if.end7.i.i72
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_free_splits

if.end8:                                          ; preds = %if.end7.i.i72
  %6 = ptrtoint ptr %splits to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %splits, align 4
  %call9 = tail call i32 @sg_split(ptr noundef %sgl, i32 noundef %call, i32 noundef 0, i32 noundef %steps, ptr noundef %split_sizes, ptr noundef %7, ptr noundef nonnull %call8.i.i71, i32 noundef %gfp) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool10.not = icmp eq i32 %call9, 0
  br i1 %tobool10.not, label %if.end8.cleanup_crit_edge, label %if.then11

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then11:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %splits_nents to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %splits_nents, align 4
  tail call void @kfree(ptr noundef %9) #7
  br label %err_free_splits

err_free_splits:                                  ; preds = %if.then11, %if.end7.i.i72.err_free_splits_crit_edge
  %10 = ptrtoint ptr %splits to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %splits, align 4
  tail call void @kfree(ptr noundef %11) #7
  br label %err_unmap_sg

err_unmap_sg:                                     ; preds = %err_free_splits, %kcalloc.exit.thread83.err_unmap_sg_crit_edge, %kcalloc.exit.thread
  tail call void @dma_unmap_sg_attrs(ptr noundef %dev, ptr noundef %sgl, i32 noundef %sgl_len_in, i32 noundef 0, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %err_unmap_sg, %if.end8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_unmap_sg ], [ -22, %entry.cleanup_crit_edge ], [ 0, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sec_skcipher_alg_callback(ptr nocapture noundef readonly %sec_resp, ptr noundef %req_base) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr i8, ptr %req_base, i32 112
  %tfm_ctx = getelementptr i8, ptr %req_base, i32 216
  %0 = ptrtoint ptr %tfm_ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm_ctx, align 4
  %tfm.i = getelementptr i8, ptr %req_base, i32 16
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %queue = getelementptr inbounds %struct.sec_alg_tfm_ctx, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %dev2 = getelementptr inbounds %struct.sec_dev_info, ptr %7, i32 0, i32 6
  %8 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev2, align 4
  %10 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__ctx.i, align 4
  %12 = ptrtoint ptr %sec_resp to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sec_resp, align 4
  %and = lshr i32 %13, 27
  %shr = and i32 %and, 3
  %w1 = getelementptr inbounds %struct.sec_bd_info, ptr %sec_resp, i32 0, i32 1
  %14 = ptrtoint ptr %w1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %w1, align 4
  %and6 = and i32 %15, 8388608
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and6)
  %tobool.not = icmp ne i32 %and6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %shr)
  %cmp = icmp eq i32 %shr, 3
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.4, i32 noundef %and6, i32 noundef %shr) #12
  %err = getelementptr i8, ptr %req_base, i32 232
  %16 = ptrtoint ptr %err to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -22, ptr %err, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %queue, align 4
  %queuelock = getelementptr inbounds %struct.sec_queue, ptr %18, i32 0, i32 13
  tail call void @mutex_lock_nested(ptr noundef %queuelock, i32 noundef 0) #7
  %19 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %1, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %20, label %if.end.sw.epilog_crit_edge [
    i32 9, label %if.end.sw.bb_crit_edge
    i32 10, label %if.end.sw.bb_crit_edge236
    i32 11, label %if.end.sw.bb_crit_edge237
    i32 12, label %if.end.sw.bb28_crit_edge
    i32 13, label %if.end.sw.bb28_crit_edge238
    i32 14, label %if.end.sw.bb28_crit_edge239
  ]

if.end.sw.bb28_crit_edge239:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb28_crit_edge238:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb28_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28

if.end.sw.bb_crit_edge237:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge236:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.bb_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb

if.end.sw.epilog_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end.sw.bb_crit_edge, %if.end.sw.bb_crit_edge236, %if.end.sw.bb_crit_edge237
  %req = getelementptr inbounds %struct.sec_request_el, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %req, align 4
  %and11 = and i32 %23, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %sgl_out = getelementptr inbounds %struct.sec_request_el, ptr %11, i32 0, i32 7
  %24 = ptrtoint ptr %sgl_out to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sgl_out, align 4
  %call15 = tail call i32 @sg_nents(ptr noundef %25) #7
  %iv = getelementptr i8, ptr %req_base, i32 -12
  %26 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %iv, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %3, i32 12
  %28 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %29, i32 -100
  %30 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ivsize.i, align 4
  %el_length = getelementptr inbounds %struct.sec_request_el, ptr %11, i32 0, i32 9
  %32 = ptrtoint ptr %el_length to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %el_length, align 4
  %sub = sub i32 %33, %31
  %call18 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %25, i32 noundef %call15, ptr noundef %27, i32 noundef %31, i32 noundef %sub) #7
  br label %sw.epilog

if.else:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  %sgl_in = getelementptr inbounds %struct.sec_request_el, ptr %11, i32 0, i32 4
  %34 = ptrtoint ptr %sgl_in to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sgl_in, align 4
  %call20 = tail call i32 @sg_nents(ptr noundef %35) #7
  %iv21 = getelementptr i8, ptr %req_base, i32 -12
  %36 = ptrtoint ptr %iv21 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %iv21, align 4
  %__crt_alg.i.i218 = getelementptr i8, ptr %3, i32 12
  %38 = ptrtoint ptr %__crt_alg.i.i218 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %__crt_alg.i.i218, align 4
  %ivsize.i219 = getelementptr i8, ptr %39, i32 -100
  %40 = ptrtoint ptr %ivsize.i219 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ivsize.i219, align 4
  %el_length23 = getelementptr inbounds %struct.sec_request_el, ptr %11, i32 0, i32 9
  %42 = ptrtoint ptr %el_length23 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %el_length23, align 4
  %sub25 = sub i32 %43, %41
  %call26 = tail call i32 @sg_pcopy_to_buffer(ptr noundef %35, i32 noundef %call20, ptr noundef %37, i32 noundef %41, i32 noundef %sub25) #7
  br label %sw.epilog

sw.bb28:                                          ; preds = %if.end.sw.bb28_crit_edge, %if.end.sw.bb28_crit_edge238, %if.end.sw.bb28_crit_edge239
  %iv29 = getelementptr i8, ptr %req_base, i32 -12
  %44 = ptrtoint ptr %iv29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iv29, align 4
  tail call void @crypto_inc(ptr noundef %45, i32 noundef 16) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb28, %if.else, %if.then13, %if.end.sw.epilog_crit_edge
  %46 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %queue, align 4
  %havesoftqueue = getelementptr inbounds %struct.sec_queue, ptr %47, i32 0, i32 12
  %48 = ptrtoint ptr %havesoftqueue to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %havesoftqueue, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool31.not = icmp eq i8 %49, 0
  br i1 %tobool31.not, label %sw.epilog.if.else76_crit_edge, label %land.lhs.true

sw.epilog.if.else76_crit_edge:                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else76

land.lhs.true:                                    ; preds = %sw.epilog
  %softqueue = getelementptr inbounds %struct.sec_queue, ptr %47, i32 0, i32 11
  %50 = ptrtoint ptr %softqueue to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %softqueue, align 4
  %out = getelementptr inbounds %struct.sec_queue, ptr %47, i32 0, i32 11, i32 0, i32 0, i32 1
  %52 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %53)
  %cmp34 = icmp eq i32 %51, %53
  br i1 %cmp34, label %land.lhs.true.if.else76_crit_edge, label %land.lhs.true36

land.lhs.true.if.else76_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else76

land.lhs.true36:                                  ; preds = %land.lhs.true
  %call38 = tail call zeroext i1 @sec_queue_empty(ptr noundef %47) #7
  br i1 %call38, label %if.then40, label %land.lhs.true36.if.else76_crit_edge

land.lhs.true36.if.else76_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else76

if.then40:                                        ; preds = %land.lhs.true36
  %54 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %queue, align 4
  %softqueue42 = getelementptr inbounds %struct.sec_queue, ptr %55, i32 0, i32 11
  %56 = ptrtoint ptr %softqueue42 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %softqueue42, align 4
  %out46 = getelementptr inbounds %struct.sec_queue, ptr %55, i32 0, i32 11, i32 0, i32 0, i32 1
  %58 = ptrtoint ptr %out46 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %out46, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %57, i32 %59)
  %cmp47.not = icmp eq i32 %57, %59
  br i1 %cmp47.not, label %do.end69, label %if.else70

do.end69:                                         ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.10, i32 noundef 0) #12
  br label %if.end116

if.else70:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #9
  %data = getelementptr inbounds %struct.sec_queue, ptr %55, i32 0, i32 11, i32 0, i32 0, i32 4
  %60 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %data, align 4
  %mask = getelementptr inbounds %struct.sec_queue, ptr %55, i32 0, i32 11, i32 0, i32 0, i32 2
  %62 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %mask, align 4
  %and53 = and i32 %63, %59
  %arrayidx = getelementptr ptr, ptr %61, i32 %and53
  %64 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !49
  %66 = ptrtoint ptr %out46 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %out46, align 4
  %inc = add i32 %67, 1
  store i32 %inc, ptr %out46, align 4
  %68 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %queue, align 4
  %req72 = getelementptr inbounds %struct.sec_request_el, ptr %65, i32 0, i32 1
  %sec_req73 = getelementptr inbounds %struct.sec_request_el, ptr %65, i32 0, i32 8
  %70 = ptrtoint ptr %sec_req73 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %sec_req73, align 4
  %call74 = tail call i32 @sec_queue_send(ptr noundef %69, ptr noundef %req72, ptr noundef %71) #7
  br label %if.end116

if.else76:                                        ; preds = %land.lhs.true36.if.else76_crit_edge, %land.lhs.true.if.else76_crit_edge, %sw.epilog.if.else76_crit_edge
  %backlog = getelementptr inbounds %struct.sec_alg_tfm_ctx, ptr %1, i32 0, i32 7
  %72 = ptrtoint ptr %backlog to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %backlog, align 4
  %cmp.i.not = icmp eq ptr %73, %backlog
  br i1 %cmp.i.not, label %if.else76.if.end116_crit_edge, label %if.then79

if.else76.if.end116_crit_edge:                    ; preds = %if.else76
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

if.then79:                                        ; preds = %if.else76
  %add.ptr84 = getelementptr i8, ptr %73, i32 -132
  %74 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %queue, align 4
  %num_elements = getelementptr i8, ptr %73, i32 -124
  %76 = ptrtoint ptr %num_elements to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %num_elements, align 4
  %call86 = tail call zeroext i1 @sec_queue_can_enqueue(ptr noundef %75, i32 noundef %77) #7
  br i1 %call86, label %if.then79.if.then109_crit_edge, label %lor.lhs.false88

if.then79.if.then109_crit_edge:                   ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then109

lor.lhs.false88:                                  ; preds = %if.then79
  %78 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %queue, align 4
  %havesoftqueue90 = getelementptr inbounds %struct.sec_queue, ptr %79, i32 0, i32 12
  %80 = ptrtoint ptr %havesoftqueue90 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %havesoftqueue90, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %81)
  %tobool91.not = icmp eq i8 %81, 0
  br i1 %tobool91.not, label %lor.lhs.false88.if.end116_crit_edge, label %land.lhs.true93

lor.lhs.false88.if.end116_crit_edge:              ; preds = %lor.lhs.false88
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

land.lhs.true93:                                  ; preds = %lor.lhs.false88
  %softqueue96 = getelementptr inbounds %struct.sec_queue, ptr %79, i32 0, i32 11
  %mask98 = getelementptr inbounds %struct.sec_queue, ptr %79, i32 0, i32 11, i32 0, i32 0, i32 2
  %82 = ptrtoint ptr %mask98 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %mask98, align 4
  %84 = ptrtoint ptr %softqueue96 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %softqueue96, align 4
  %out101 = getelementptr inbounds %struct.sec_queue, ptr %79, i32 0, i32 11, i32 0, i32 0, i32 1
  %86 = ptrtoint ptr %out101 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %out101, align 4
  %sub102.neg = add i32 %83, 1
  %add = sub i32 %sub102.neg, %85
  %sub103 = add i32 %add, %87
  %88 = ptrtoint ptr %num_elements to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_elements, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub103, i32 %89)
  %cmp107 = icmp ugt i32 %sub103, %89
  br i1 %cmp107, label %land.lhs.true93.if.then109_crit_edge, label %land.lhs.true93.if.end116_crit_edge

land.lhs.true93.if.end116_crit_edge:              ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end116

land.lhs.true93.if.then109_crit_edge:             ; preds = %land.lhs.true93
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then109

if.then109:                                       ; preds = %land.lhs.true93.if.then109_crit_edge, %if.then79.if.then109_crit_edge
  %90 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %queue, align 4
  %call111 = tail call fastcc i32 @sec_send_request(ptr noundef %add.ptr84, ptr noundef %91)
  %req_base112 = getelementptr i8, ptr %73, i32 -8
  %92 = ptrtoint ptr %req_base112 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %req_base112, align 4
  %complete = getelementptr inbounds %struct.crypto_async_request, ptr %93, i32 0, i32 1
  %94 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %complete, align 4
  tail call void %95(ptr noundef %93, i32 noundef -115) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %73) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then109.list_del.exit_crit_edge

if.then109.list_del.exit_crit_edge:               ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then109
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %96 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %prev.i.i, align 4
  %98 = ptrtoint ptr %73 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %73, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %99, i32 0, i32 1
  %100 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr %97, ptr %prev1.i.i.i, align 4
  %101 = ptrtoint ptr %97 to i32
  call void @__asan_store4_noabort(i32 %101)
  store volatile ptr %99, ptr %97, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then109.list_del.exit_crit_edge
  %102 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr inttoptr (i32 256 to ptr), ptr %73, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %103 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %if.end116

if.end116:                                        ; preds = %list_del.exit, %land.lhs.true93.if.end116_crit_edge, %lor.lhs.false88.if.end116_crit_edge, %if.else76.if.end116_crit_edge, %if.else70, %do.end69
  %104 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %queue, align 4
  %queuelock118 = getelementptr inbounds %struct.sec_queue, ptr %105, i32 0, i32 13
  tail call void @mutex_unlock(ptr noundef %queuelock118) #7
  %lock = getelementptr i8, ptr %req_base, i32 124
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %call.i.i222 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #7
  br i1 %call.i.i222, label %if.end.i.i225, label %if.end116.list_del.exit227_crit_edge

if.end116.list_del.exit227_crit_edge:             ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit227

if.end.i.i225:                                    ; preds = %if.end116
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i223 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i.i223 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i223, align 4
  %108 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %11, align 4
  %prev1.i.i.i224 = getelementptr inbounds %struct.list_head, ptr %109, i32 0, i32 1
  %110 = ptrtoint ptr %prev1.i.i.i224 to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev1.i.i.i224, align 4
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %109, ptr %107, align 4
  br label %list_del.exit227

list_del.exit227:                                 ; preds = %if.end.i.i225, %if.end116.list_del.exit227_crit_edge
  %112 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i226 = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %113 = ptrtoint ptr %prev.i226 to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i226, align 4
  tail call void @mutex_unlock(ptr noundef %lock) #7
  %114 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %queue, align 4
  %116 = ptrtoint ptr %115 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %115, align 4
  tail call fastcc void @sec_alg_free_el(ptr noundef %11, ptr noundef %117)
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %118 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load volatile ptr, ptr %__ctx.i, align 4
  %cmp.i228.not = icmp eq ptr %119, %__ctx.i
  tail call void @mutex_unlock(ptr noundef %lock) #7
  br i1 %cmp.i228.not, label %if.then128, label %list_del.exit227.if.end143_crit_edge

list_del.exit227.if.end143_crit_edge:             ; preds = %list_del.exit227
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end143

if.then128:                                       ; preds = %list_del.exit227
  %__crt_alg.i.i230 = getelementptr i8, ptr %3, i32 12
  %120 = ptrtoint ptr %__crt_alg.i.i230 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %__crt_alg.i.i230, align 4
  %ivsize.i231 = getelementptr i8, ptr %121, i32 -100
  %122 = ptrtoint ptr %ivsize.i231 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ivsize.i231, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %123)
  %tobool130.not = icmp eq i32 %123, 0
  br i1 %tobool130.not, label %if.then128.if.end133_crit_edge, label %if.then131

if.then128.if.end133_crit_edge:                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.then131:                                       ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #9
  %dma_iv = getelementptr i8, ptr %req_base, i32 228
  %124 = ptrtoint ptr %dma_iv to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %dma_iv, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %9, i32 noundef %125, i32 noundef %123, i32 noundef 1, i32 noundef 0) #7
  br label %if.end133

if.end133:                                        ; preds = %if.then131, %if.then128.if.end133_crit_edge
  %src = getelementptr i8, ptr %req_base, i32 -8
  %126 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %src, align 8
  %len_in = getelementptr i8, ptr %req_base, i32 220
  %128 = ptrtoint ptr %len_in to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %len_in, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %127, i32 noundef %129, i32 noundef 0, i32 noundef 0) #7
  %130 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %src, align 8
  %dst = getelementptr i8, ptr %req_base, i32 -4
  %132 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dst, align 4
  %cmp135.not = icmp eq ptr %131, %133
  br i1 %cmp135.not, label %if.end133.if.end139_crit_edge, label %if.then137

if.end133.if.end139_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end139

if.then137:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  %len_out = getelementptr i8, ptr %req_base, i32 224
  %134 = ptrtoint ptr %len_out to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %len_out, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %9, ptr noundef %133, i32 noundef %135, i32 noundef 0, i32 noundef 0) #7
  br label %if.end139

if.end139:                                        ; preds = %if.then137, %if.end133.if.end139_crit_edge
  %complete140 = getelementptr inbounds %struct.crypto_async_request, ptr %req_base, i32 0, i32 1
  %136 = ptrtoint ptr %complete140 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %complete140, align 8
  %err142 = getelementptr i8, ptr %req_base, i32 232
  %138 = ptrtoint ptr %err142 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %err142, align 4
  tail call void %137(ptr noundef %req_base, i32 noundef %139) #7
  br label %if.end143

if.end143:                                        ; preds = %if.end139, %list_del.exit227.if.end143_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sec_queue_can_enqueue(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sec_send_request(ptr noundef %sec_req, ptr noundef %queue) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.sec_request, ptr %sec_req, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #7
  %0 = ptrtoint ptr %sec_req to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sec_req, align 4
  %cmp.not71 = icmp eq ptr %1, %sec_req
  br i1 %cmp.not71, label %entry.err_unlock_crit_edge, label %for.body.lr.ph

entry.err_unlock_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

for.body.lr.ph:                                   ; preds = %entry
  %havesoftqueue = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 12
  %softqueue = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 11
  %out = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 11, i32 0, i32 0, i32 1
  %mask = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 11, i32 0, i32 0, i32 2
  %data = getelementptr inbounds %struct.sec_queue, ptr %queue, i32 0, i32 11, i32 0, i32 0, i32 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %el.073 = phi ptr [ %1, %for.body.lr.ph ], [ %temp.075, %for.inc.for.body_crit_edge ]
  %ret.072 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %el.073 to i32
  call void @__asan_load4_noabort(i32 %2)
  %temp.075 = load ptr, ptr %el.073, align 4
  %3 = ptrtoint ptr %havesoftqueue to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %havesoftqueue, align 4, !range !48
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not = icmp eq i8 %4, 0
  br i1 %tobool.not, label %for.body.if.then_crit_edge, label %lor.lhs.false

for.body.if.then_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

lor.lhs.false:                                    ; preds = %for.body
  %5 = ptrtoint ptr %softqueue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %softqueue, align 4
  %7 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %out, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %6, i32 %8)
  %cmp8 = icmp eq i32 %6, %8
  br i1 %cmp8, label %land.lhs.true, label %lor.lhs.false.if.else19_crit_edge

lor.lhs.false.if.else19_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else19

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call = tail call zeroext i1 @sec_queue_empty(ptr noundef %queue) #7
  br i1 %call, label %land.lhs.true.if.then_crit_edge, label %land.lhs.true.if.else19_crit_edge

land.lhs.true.if.else19_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else19

land.lhs.true.if.then_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then

if.then:                                          ; preds = %land.lhs.true.if.then_crit_edge, %for.body.if.then_crit_edge
  %req = getelementptr inbounds %struct.sec_request_el, ptr %el.073, i32 0, i32 1
  %call11 = tail call i32 @sec_queue_send(ptr noundef %queue, ptr noundef %req, ptr noundef %sec_req) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -11, i32 %call11)
  %cmp12 = icmp eq i32 %call11, -11
  br i1 %cmp12, label %if.then.err_unlock_crit_edge, label %if.then.for.inc_crit_edge

if.then.for.inc_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then.err_unlock_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

if.else19:                                        ; preds = %land.lhs.true.if.else19_crit_edge, %lor.lhs.false.if.else19_crit_edge
  %9 = ptrtoint ptr %softqueue to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %softqueue, align 4
  %11 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %out, align 4
  %sub = sub i32 %10, %12
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %14)
  %cmp25.not = icmp ugt i32 %sub, %14
  br i1 %cmp25.not, label %if.else19.for.inc_crit_edge, label %if.then30

if.else19.for.inc_crit_edge:                      ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then30:                                        ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %data, align 4
  %and = and i32 %14, %10
  %arrayidx = getelementptr ptr, ptr %16, i32 %and
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %el.073, ptr %arrayidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !50
  %18 = ptrtoint ptr %softqueue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %softqueue, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %softqueue, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then30, %if.else19.for.inc_crit_edge, %if.then.for.inc_crit_edge
  %ret.1 = phi i32 [ %call11, %if.then.for.inc_crit_edge ], [ %ret.072, %if.else19.for.inc_crit_edge ], [ %ret.072, %if.then30 ]
  %cmp.not = icmp eq ptr %temp.075, %sec_req
  br i1 %cmp.not, label %for.inc.err_unlock_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.err_unlock_crit_edge:                     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %err_unlock

err_unlock:                                       ; preds = %for.inc.err_unlock_crit_edge, %if.then.err_unlock_crit_edge, %entry.err_unlock_crit_edge
  %ret.2 = phi i32 [ 0, %entry.err_unlock_crit_edge ], [ -16, %if.then.err_unlock_crit_edge ], [ %ret.1, %for.inc.err_unlock_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %lock) #7
  ret i32 %ret.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sec_alg_free_el(ptr noundef %el, ptr nocapture noundef readonly %info) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %out = getelementptr inbounds %struct.sec_request_el, ptr %el, i32 0, i32 5
  %0 = ptrtoint ptr %out to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %out, align 4
  %tobool.not4.i = icmp eq ptr %1, null
  br i1 %tobool.not4.i, label %entry.sec_free_hw_sgl.exit_crit_edge, label %while.body.lr.ph.i

entry.sec_free_hw_sgl.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_free_hw_sgl.exit

while.body.lr.ph.i:                               ; preds = %entry
  %dma_out = getelementptr inbounds %struct.sec_request_el, ptr %el, i32 0, i32 6
  %2 = ptrtoint ptr %dma_out to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_out, align 4
  %hw_sgl_pool.i = getelementptr inbounds %struct.sec_dev_info, ptr %info, i32 0, i32 7
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.lr.ph.i
  %sgl_current.06.i = phi ptr [ %1, %while.body.lr.ph.i ], [ %5, %while.body.i.while.body.i_crit_edge ]
  %psec_sgl.addr.05.i = phi i32 [ %3, %while.body.lr.ph.i ], [ %7, %while.body.i.while.body.i_crit_edge ]
  %next.i = getelementptr inbounds %struct.sec_hw_sgl, ptr %sgl_current.06.i, i32 0, i32 7
  %4 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %next.i, align 8
  %6 = ptrtoint ptr %sgl_current.06.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %sgl_current.06.i, align 8
  %8 = ptrtoint ptr %hw_sgl_pool.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %hw_sgl_pool.i, align 4
  tail call void @dma_pool_free(ptr noundef %9, ptr noundef nonnull %sgl_current.06.i, i32 noundef %psec_sgl.addr.05.i) #7
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %while.body.i.sec_free_hw_sgl.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.sec_free_hw_sgl.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_free_hw_sgl.exit

sec_free_hw_sgl.exit:                             ; preds = %while.body.i.sec_free_hw_sgl.exit_crit_edge, %entry.sec_free_hw_sgl.exit_crit_edge
  %in = getelementptr inbounds %struct.sec_request_el, ptr %el, i32 0, i32 2
  %10 = ptrtoint ptr %in to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %in, align 4
  %tobool.not4.i8 = icmp eq ptr %11, null
  br i1 %tobool.not4.i8, label %sec_free_hw_sgl.exit.sec_free_hw_sgl.exit16_crit_edge, label %while.body.lr.ph.i10

sec_free_hw_sgl.exit.sec_free_hw_sgl.exit16_crit_edge: ; preds = %sec_free_hw_sgl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_free_hw_sgl.exit16

while.body.lr.ph.i10:                             ; preds = %sec_free_hw_sgl.exit
  %dma_in = getelementptr inbounds %struct.sec_request_el, ptr %el, i32 0, i32 3
  %12 = ptrtoint ptr %dma_in to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_in, align 4
  %hw_sgl_pool.i9 = getelementptr inbounds %struct.sec_dev_info, ptr %info, i32 0, i32 7
  br label %while.body.i15

while.body.i15:                                   ; preds = %while.body.i15.while.body.i15_crit_edge, %while.body.lr.ph.i10
  %sgl_current.06.i11 = phi ptr [ %11, %while.body.lr.ph.i10 ], [ %15, %while.body.i15.while.body.i15_crit_edge ]
  %psec_sgl.addr.05.i12 = phi i32 [ %13, %while.body.lr.ph.i10 ], [ %17, %while.body.i15.while.body.i15_crit_edge ]
  %next.i13 = getelementptr inbounds %struct.sec_hw_sgl, ptr %sgl_current.06.i11, i32 0, i32 7
  %14 = ptrtoint ptr %next.i13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %next.i13, align 8
  %16 = ptrtoint ptr %sgl_current.06.i11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %sgl_current.06.i11, align 8
  %18 = ptrtoint ptr %hw_sgl_pool.i9 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %hw_sgl_pool.i9, align 4
  tail call void @dma_pool_free(ptr noundef %19, ptr noundef nonnull %sgl_current.06.i11, i32 noundef %psec_sgl.addr.05.i12) #7
  %tobool.not.i14 = icmp eq ptr %15, null
  br i1 %tobool.not.i14, label %while.body.i15.sec_free_hw_sgl.exit16_crit_edge, label %while.body.i15.while.body.i15_crit_edge

while.body.i15.while.body.i15_crit_edge:          ; preds = %while.body.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i15

while.body.i15.sec_free_hw_sgl.exit16_crit_edge:  ; preds = %while.body.i15
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_free_hw_sgl.exit16

sec_free_hw_sgl.exit16:                           ; preds = %while.body.i15.sec_free_hw_sgl.exit16_crit_edge, %sec_free_hw_sgl.exit.sec_free_hw_sgl.exit16_crit_edge
  %sgl_in = getelementptr inbounds %struct.sec_request_el, ptr %el, i32 0, i32 4
  %20 = ptrtoint ptr %sgl_in to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sgl_in, align 4
  tail call void @kfree(ptr noundef %21) #7
  %sgl_out = getelementptr inbounds %struct.sec_request_el, ptr %el, i32 0, i32 7
  %22 = ptrtoint ptr %sgl_out to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sgl_out, align 4
  tail call void @kfree(ptr noundef %23) #7
  tail call void @kfree(ptr noundef %el) #7
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #3

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_split(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_pcopy_to_buffer(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_inc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sec_queue_empty(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sec_queue_send(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
define internal fastcc i32 @sec_alloc_and_fill_hw_sgl(ptr nocapture noundef %sec_sgl, ptr nocapture noundef %psec_sgl, ptr noundef %sgl, i32 noundef %count, ptr nocapture noundef readonly %info, i32 noundef %gfp) unnamed_addr #0 align 64 {
entry:
  %sgl_next_dma = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sgl_next_dma) #7
  %0 = ptrtoint ptr %sgl_next_dma to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %sgl_next_dma, align 4, !annotation !45
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %tobool.not = icmp eq i32 %count, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %count)
  %cmp51 = icmp sgt i32 %count, 0
  br i1 %cmp51, label %for.body.lr.ph, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %hw_sgl_pool = getelementptr inbounds %struct.sec_dev_info, ptr %info, i32 0, i32 7
  %or.i = or i32 %gfp, 256
  br label %for.body

for.body:                                         ; preds = %if.end9.for.body_crit_edge, %for.body.lr.ph
  %i.054 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end9.for.body_crit_edge ]
  %sg.053 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call13, %if.end9.for.body_crit_edge ]
  %sgl_current.052 = phi ptr [ null, %for.body.lr.ph ], [ %sgl_current.1, %if.end9.for.body_crit_edge ]
  %rem = and i32 %i.054, 63
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp1 = icmp eq i32 %rem, 0
  br i1 %cmp1, label %if.then2, label %for.body.if.end9_crit_edge

for.body.if.end9_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end9

if.then2:                                         ; preds = %for.body
  %1 = ptrtoint ptr %hw_sgl_pool to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %hw_sgl_pool, align 4
  %call.i = call ptr @dma_pool_alloc(ptr noundef %2, i32 noundef %or.i, ptr noundef nonnull %sgl_next_dma) #7
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end5

if.then4:                                         ; preds = %if.then2
  %3 = ptrtoint ptr %sec_sgl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %sec_sgl, align 4
  %tobool.not4.i = icmp eq ptr %4, null
  br i1 %tobool.not4.i, label %if.then4.sec_free_hw_sgl.exit_crit_edge, label %while.body.i.preheader

if.then4.sec_free_hw_sgl.exit_crit_edge:          ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_free_hw_sgl.exit

while.body.i.preheader:                           ; preds = %if.then4
  %5 = ptrtoint ptr %psec_sgl to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %psec_sgl, align 4
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.body.i.preheader
  %sgl_current.06.i = phi ptr [ %8, %while.body.i.while.body.i_crit_edge ], [ %4, %while.body.i.preheader ]
  %psec_sgl.addr.05.i = phi i32 [ %10, %while.body.i.while.body.i_crit_edge ], [ %6, %while.body.i.preheader ]
  %next.i = getelementptr inbounds %struct.sec_hw_sgl, ptr %sgl_current.06.i, i32 0, i32 7
  %7 = ptrtoint ptr %next.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %next.i, align 8
  %9 = ptrtoint ptr %sgl_current.06.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sgl_current.06.i, align 8
  %11 = ptrtoint ptr %hw_sgl_pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %hw_sgl_pool, align 4
  call void @dma_pool_free(ptr noundef %12, ptr noundef nonnull %sgl_current.06.i, i32 noundef %psec_sgl.addr.05.i) #7
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %while.body.i.sec_free_hw_sgl.exit_crit_edge, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body.i

while.body.i.sec_free_hw_sgl.exit_crit_edge:      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sec_free_hw_sgl.exit

sec_free_hw_sgl.exit:                             ; preds = %while.body.i.sec_free_hw_sgl.exit_crit_edge, %if.then4.sec_free_hw_sgl.exit_crit_edge
  %13 = ptrtoint ptr %psec_sgl to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %psec_sgl, align 4
  br label %cleanup

if.end5:                                          ; preds = %if.then2
  %tobool6.not = icmp eq ptr %sgl_current.052, null
  br i1 %tobool6.not, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %sgl_next_dma to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sgl_next_dma, align 4
  %16 = ptrtoint ptr %psec_sgl to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %psec_sgl, align 4
  %17 = ptrtoint ptr %sec_sgl to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %sec_sgl, align 4
  br label %if.end9

if.else:                                          ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  %entry_sum_in_sgl = getelementptr inbounds %struct.sec_hw_sgl, ptr %sgl_current.052, i32 0, i32 2
  %18 = ptrtoint ptr %entry_sum_in_sgl to i32
  call void @__asan_store2_noabort(i32 %18)
  store i16 64, ptr %entry_sum_in_sgl, align 2
  %19 = ptrtoint ptr %sgl_next_dma to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %sgl_next_dma, align 4
  %21 = ptrtoint ptr %sgl_current.052 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %sgl_current.052, align 8
  %next = getelementptr inbounds %struct.sec_hw_sgl, ptr %sgl_current.052, i32 0, i32 7
  %22 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call.i, ptr %next, align 8
  br label %if.end9

if.end9:                                          ; preds = %if.else, %if.then7, %for.body.if.end9_crit_edge
  %sgl_current.1 = phi ptr [ %sgl_current.052, %for.body.if.end9_crit_edge ], [ %call.i, %if.else ], [ %call.i, %if.then7 ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.053, i32 0, i32 3
  %23 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_address, align 4
  %arrayidx = getelementptr %struct.sec_hw_sgl, ptr %sgl_current.1, i32 0, i32 9, i32 %rem
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %arrayidx, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.053, i32 0, i32 4
  %26 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_length, align 4
  %len = getelementptr %struct.sec_hw_sgl, ptr %sgl_current.1, i32 0, i32 9, i32 %rem, i32 1
  %28 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %len, align 4
  %29 = load i32, ptr %dma_length, align 4
  %data_bytes_in_sgl = getelementptr inbounds %struct.sec_hw_sgl, ptr %sgl_current.1, i32 0, i32 6
  %30 = ptrtoint ptr %data_bytes_in_sgl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %data_bytes_in_sgl, align 4
  %add = add i32 %31, %29
  store i32 %add, ptr %data_bytes_in_sgl, align 4
  %inc = add nuw nsw i32 %i.054, 1
  %call13 = call ptr @sg_next(ptr noundef %sg.053) #7
  %exitcond.not = icmp eq i32 %inc, %count
  br i1 %exitcond.not, label %if.end9.for.end_crit_edge, label %if.end9.for.body_crit_edge

if.end9.for.body_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end9.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %sgl_current.0.lcssa = phi ptr [ null, %for.cond.preheader.for.end_crit_edge ], [ %sgl_current.1, %if.end9.for.end_crit_edge ]
  %rem14 = srem i32 %count, 64
  %conv = trunc i32 %rem14 to i16
  %entry_sum_in_sgl15 = getelementptr inbounds %struct.sec_hw_sgl, ptr %sgl_current.0.lcssa, i32 0, i32 2
  %32 = ptrtoint ptr %entry_sum_in_sgl15 to i32
  call void @__asan_store2_noabort(i32 %32)
  store i16 %conv, ptr %entry_sum_in_sgl15, align 2
  %33 = ptrtoint ptr %sgl_current.0.lcssa to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %sgl_current.0.lcssa, align 8
  %conv17 = trunc i32 %count to i16
  %34 = ptrtoint ptr %sec_sgl to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %sec_sgl, align 4
  %entry_sum_in_chain = getelementptr inbounds %struct.sec_hw_sgl, ptr %35, i32 0, i32 1
  %36 = ptrtoint ptr %entry_sum_in_chain to i32
  call void @__asan_store2_noabort(i32 %36)
  store i16 %conv17, ptr %entry_sum_in_chain, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %sec_free_hw_sgl.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %sec_free_hw_sgl.exit ], [ 0, %for.end ], [ -22, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sgl_next_dma) #7
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sec_queue_alloc_start_safe() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sec_queue_stop_release(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__crypto_memneq(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { nounwind allocsize(0) }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !8, !10, !12, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34}
!llvm.module.flags = !{!35, !36, !37, !38, !39, !40, !41, !42}
!llvm.ident = !{!43}

!0 = !{ptr @active_devs, !1, !"active_devs", i1 false, i1 false}
!1 = !{!"../drivers/crypto/hisilicon/sec/sec_algs.c", i32 124, i32 21}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/crypto/hisilicon/sec/sec_algs.c", i32 123, i32 8}
!4 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @algs_lock, !3, !"algs_lock", i1 false, i1 false}
!6 = !{ptr @sec_algs, !7, !"sec_algs", i1 false, i1 false}
!7 = !{!"../drivers/crypto/hisilicon/sec/sec_algs.c", i32 931, i32 28}
!8 = !{ptr @sec_c_alg_cfgs, !9, !"sec_c_alg_cfgs", i1 false, i1 false}
!9 = !{!"../drivers/crypto/hisilicon/sec/sec_algs.c", i32 29, i32 35}
!10 = !{ptr @sec_alg_skcipher_crypto.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/crypto/hisilicon/sec/sec_algs.c", i32 726, i32 2}
!12 = !{ptr @.str.3, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/crypto/hisilicon/sec/sec_algs.c", i32 441, i32 3}
!15 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.6, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @sec_skcipher_alg_callback._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @sec_skcipher_alg_callback._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/crypto/hisilicon/sec/sec_algs.c", i32 489, i32 4}
!23 = !{ptr @sec_skcipher_alg_callback._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @sec_skcipher_alg_callback._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = distinct !{null, !26, !"__already_done", i1 false, i1 false}
!26 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!27 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sec_alg_skcipher_init.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/crypto/hisilicon/sec/sec_algs.c", i32 876, i32 2}
!31 = !{ptr @.str.14, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sec_alg_skcipher_init.__key.15, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/crypto/hisilicon/sec/sec_algs.c", i32 884, i32 2}
!34 = !{ptr @.str.16, !33, !"<string literal>", i1 false, i1 false}
!35 = !{i32 1, !"wchar_size", i32 2}
!36 = !{i32 1, !"min_enum_size", i32 4}
!37 = !{i32 8, !"branch-target-enforcement", i32 0}
!38 = !{i32 8, !"sign-return-address", i32 0}
!39 = !{i32 8, !"sign-return-address-all", i32 0}
!40 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!41 = !{i32 7, !"uwtable", i32 1}
!42 = !{i32 7, !"frame-pointer", i32 2}
!43 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!44 = !{i64 2149236466}
!45 = !{!"auto-init"}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{!"branch_weights", i32 2000, i32 1}
!48 = !{i8 0, i8 2}
!49 = !{i64 2154066975}
!50 = !{i64 2154059658}
