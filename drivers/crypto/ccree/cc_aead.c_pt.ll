; ModuleID = '/llk/IR_all_yes/drivers/crypto/ccree/cc_aead.c_pt.bc'
source_filename = "../drivers/crypto/ccree/cc_aead.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.118, ptr, ptr, ptr, ptr, %union.anon.119, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.118 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.119 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.cc_drvdata = type { ptr, i32, %struct.completion, ptr, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cc_aead_handle = type { i32, %struct.list_head }
%struct.cc_crypto_alg = type { %struct.list_head, i32, i32, i32, ptr, [104 x i8], %struct.skcipher_alg, %struct.aead_alg }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.cc_alg_template = type { [128 x i8], [128 x i8], i32, [124 x i8], %union.anon.122, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] }
%union.anon.122 = type { %struct.skcipher_alg }
%struct.cc_crypto_req = type { ptr, ptr, %struct.completion, %struct.cc_cpp_req }
%struct.cc_cpp_req = type { i8, i32, i8 }
%struct.cc_hw_desc = type { %union.anon.125 }
%union.anon.125 = type { [6 x i32] }
%struct.crypto_authenc_keys = type { ptr, ptr, i32, i32 }
%struct.crypto_aead = type { i32, i32, [120 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.page = type { i32, %union.anon.2, %union.anon.96, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.96 = type { %struct.atomic_t }
%struct.aead_request = type { %struct.crypto_async_request, i32, i32, ptr, ptr, ptr, [84 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.aead_req_ctx = type { [32 x i8], [96 x i8], [16 x i8], [112 x i8], [16 x i8], [112 x i8], [16 x i8], [112 x i8], [16 x i8], [112 x i8], %struct.anon.126, [48 x i8], [80 x i8], i32, [32 x i8], ptr, i32, i32, i32, i32, i32, i32, i32, i32, ptr, %struct.async_gen_req_ctx, %struct.cc_mlli, %struct.cc_mlli, %struct.cc_mlli, ptr, ptr, i32, i32, i32, i32, %struct.mlli_params, i32, %struct.scatterlist, i32, i32, i32, i8, i8, i8, [41 x i8] }
%struct.anon.126 = type { [8 x i8], [8 x i8], [112 x i8] }
%struct.async_gen_req_ctx = type { i32, ptr, i32 }
%struct.cc_mlli = type { i32, i32, i32, i32 }
%struct.mlli_params = type { ptr, ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.cc_aead_ctx = type { ptr, [4 x i8], ptr, i32, %union.anon.124, i32, i32, i32, i32, i32, i32, i32 }
%union.anon.124 = type { %struct.cc_hmac_s }
%struct.cc_hmac_s = type { ptr, ptr, i32, i32 }

@cc_aead_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 2642, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s alg allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"cc_aead_alloc\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/crypto/ccree/cc_aead.c\00", [33 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cc_aead_alloc._entry_ptr = internal global ptr @cc_aead_alloc._entry, section ".printk_index", align 4
@cc_aead_alloc._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 2649, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s alg registration failed\0A\00", [36 x i8] zeroinitializer }, align 32
@cc_aead_alloc._entry_ptr.7 = internal global ptr @cc_aead_alloc._entry.5, section ".printk_index", align 4
@cc_aead_alloc.__UNIQUE_ID_ddebug557 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 2, i8 -105, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ccree\00", [26 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Registered %s\0A\00", [17 x i8] zeroinitializer }, align 32
@aead_algs = internal global [13 x { [128 x i8], [128 x i8], i32, [124 x i8], { %struct.aead_alg }, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] }] [{ [128 x i8], [128 x i8], i32, [124 x i8], { %struct.aead_alg }, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] } { [128 x i8] c"authenc(hmac(sha1),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, { %struct.aead_alg } { %struct.aead_alg { ptr @cc_aead_setkey, ptr @cc_aead_setauthsize, ptr @cc_aead_encrypt, ptr @cc_aead_decrypt, ptr @cc_aead_init, ptr @cc_aead_exit, i32 16, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1, i32 32, i32 0, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, { [128 x i8], [128 x i8], i32, [124 x i8], { %struct.aead_alg }, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] } { [128 x i8] c"authenc(hmac(sha1),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-cbc-des3-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, [124 x i8] undef, { %struct.aead_alg } { %struct.aead_alg { ptr @cc_des3_aead_setkey, ptr @cc_aead_setauthsize, ptr @cc_aead_encrypt, ptr @cc_aead_decrypt, ptr @cc_aead_init, ptr @cc_aead_exit, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1, i32 34, i32 0, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, { [128 x i8], [128 x i8], i32, [124 x i8], { %struct.aead_alg }, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] } { [128 x i8] c"authenc(hmac(sha256),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, { %struct.aead_alg } { %struct.aead_alg { ptr @cc_aead_setkey, ptr @cc_aead_setauthsize, ptr @cc_aead_encrypt, ptr @cc_aead_decrypt, ptr @cc_aead_init, ptr @cc_aead_exit, i32 16, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1, i32 32, i32 1, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, { [128 x i8], [128 x i8], i32, [124 x i8], { %struct.aead_alg }, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] } { [128 x i8] c"authenc(hmac(sha256),cbc(des3_ede))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-cbc-des3-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, [124 x i8] undef, { %struct.aead_alg } { %struct.aead_alg { ptr @cc_des3_aead_setkey, ptr @cc_aead_setauthsize, ptr @cc_aead_encrypt, ptr @cc_aead_decrypt, ptr @cc_aead_init, ptr @cc_aead_exit, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1, i32 34, i32 1, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, { [128 x i8], [128 x i8], i32, [124 x i8], { %struct.aead_alg }, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] } { [128 x i8] c"authenc(xcbc(aes),cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-xcbc-aes-cbc-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, { %struct.aead_alg } { %struct.aead_alg { ptr @cc_aead_setkey, ptr @cc_aead_setauthsize, ptr @cc_aead_encrypt, ptr @cc_aead_decrypt, ptr @cc_aead_init, ptr @cc_aead_exit, i32 16, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1, i32 32, i32 7, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, { [128 x i8], [128 x i8], i32, [124 x i8], { %struct.aead_alg }, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] } { [128 x i8] c"authenc(hmac(sha1),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha1-rfc3686-ctr-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, [124 x i8] undef, { %struct.aead_alg } { %struct.aead_alg { ptr @cc_aead_setkey, ptr @cc_aead_setauthsize, ptr @cc_aead_encrypt, ptr @cc_aead_decrypt, ptr @cc_aead_init, ptr @cc_aead_exit, i32 8, i32 20, i32 0, [92 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 2, i32 32, i32 0, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, { [128 x i8], [128 x i8], i32, [124 x i8], { %struct.aead_alg }, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] } { [128 x i8] c"authenc(hmac(sha256),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-hmac-sha256-rfc3686-ctr-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, [124 x i8] undef, { %struct.aead_alg } { %struct.aead_alg { ptr @cc_aead_setkey, ptr @cc_aead_setauthsize, ptr @cc_aead_encrypt, ptr @cc_aead_decrypt, ptr @cc_aead_init, ptr @cc_aead_exit, i32 8, i32 32, i32 0, [92 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 2, i32 32, i32 1, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, { [128 x i8], [128 x i8], i32, [124 x i8], { %struct.aead_alg }, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] } { [128 x i8] c"authenc(xcbc(aes),rfc3686(ctr(aes)))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"authenc-xcbc-aes-rfc3686-ctr-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, [124 x i8] undef, { %struct.aead_alg } { %struct.aead_alg { ptr @cc_aead_setkey, ptr @cc_aead_setauthsize, ptr @cc_aead_encrypt, ptr @cc_aead_decrypt, ptr @cc_aead_init, ptr @cc_aead_exit, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 2, i32 32, i32 7, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, { [128 x i8], [128 x i8], i32, [124 x i8], { %struct.aead_alg }, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] } { [128 x i8] c"ccm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ccm-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, [124 x i8] undef, { %struct.aead_alg } { %struct.aead_alg { ptr @cc_aead_setkey, ptr @cc_ccm_setauthsize, ptr @cc_aead_encrypt, ptr @cc_aead_decrypt, ptr @cc_aead_init, ptr @cc_aead_exit, i32 16, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 8, i32 32, i32 -1, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, { [128 x i8], [128 x i8], i32, [124 x i8], { %struct.aead_alg }, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] } { [128 x i8] c"rfc4309(ccm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc4309-ccm-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, [124 x i8] undef, { %struct.aead_alg } { %struct.aead_alg { ptr @cc_rfc4309_ccm_setkey, ptr @cc_rfc4309_ccm_setauthsize, ptr @cc_rfc4309_ccm_encrypt, ptr @cc_rfc4309_ccm_decrypt, ptr @cc_aead_init, ptr @cc_aead_exit, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 8, i32 32, i32 -1, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, { [128 x i8], [128 x i8], i32, [124 x i8], { %struct.aead_alg }, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] } { [128 x i8] c"gcm(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"gcm-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, [124 x i8] undef, { %struct.aead_alg } { %struct.aead_alg { ptr @cc_aead_setkey, ptr @cc_gcm_setauthsize, ptr @cc_aead_encrypt, ptr @cc_aead_decrypt, ptr @cc_aead_init, ptr @cc_aead_exit, i32 12, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 12, i32 32, i32 -1, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, { [128 x i8], [128 x i8], i32, [124 x i8], { %struct.aead_alg }, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] } { [128 x i8] c"rfc4106(gcm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc4106-gcm-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, [124 x i8] undef, { %struct.aead_alg } { %struct.aead_alg { ptr @cc_rfc4106_gcm_setkey, ptr @cc_rfc4106_gcm_setauthsize, ptr @cc_rfc4106_gcm_encrypt, ptr @cc_rfc4106_gcm_decrypt, ptr @cc_aead_init, ptr @cc_aead_exit, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 12, i32 32, i32 -1, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, { [128 x i8], [128 x i8], i32, [124 x i8], { %struct.aead_alg }, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] } { [128 x i8] c"rfc4543(gcm(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"rfc4543-gcm-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, [124 x i8] undef, { %struct.aead_alg } { %struct.aead_alg { ptr @cc_rfc4543_gcm_setkey, ptr @cc_rfc4543_gcm_setauthsize, ptr @cc_rfc4543_gcm_encrypt, ptr @cc_rfc4543_gcm_decrypt, ptr @cc_aead_init, ptr @cc_aead_exit, i32 8, i32 16, i32 0, [92 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 12, i32 32, i32 -1, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }], align 128
@cc_aead_setkey.__UNIQUE_ID_ddebug539 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.11, ptr @.str.2, ptr @.str.12, i8 0, i8 -118, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.11 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc_aead_setkey\00", [17 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"Setting key in context @%p for %s. key=%p keylen=%u\0A\00", [43 x i8] zeroinitializer }, align 32
@cc_aead_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.2, i32 620, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported authenc (%d)\0A\00", [38 x i8] zeroinitializer }, align 32
@cc_aead_setkey._entry_ptr = internal global ptr @cc_aead_setkey._entry, section ".printk_index", align 4
@cc_aead_setkey._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.11, ptr @.str.2, i32 629, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"send_request() failed (rc=%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@cc_aead_setkey._entry_ptr.16 = internal global ptr @cc_aead_setkey._entry.14, section ".printk_index", align 4
@validate_keys_sizes.__UNIQUE_ID_ddebug535 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 91, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"validate_keys_sizes\00", [44 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"enc_keylen=%u  authkeylen=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@validate_keys_sizes.__UNIQUE_ID_ddebug536 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.17, ptr @.str.2, ptr @.str.19, i8 0, i8 96, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid auth_mode=%d\0A\00", [42 x i8] zeroinitializer }, align 32
@validate_keys_sizes.__UNIQUE_ID_ddebug537 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.17, ptr @.str.2, ptr @.str.20, i8 0, i8 97, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.20 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Invalid cipher(3DES) key size: %u\0A\00", [61 x i8] zeroinitializer }, align 32
@validate_keys_sizes.__UNIQUE_ID_ddebug538 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.17, ptr @.str.2, ptr @.str.21, i8 0, i8 99, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Invalid cipher(AES) key size: %u\0A\00", [62 x i8] zeroinitializer }, align 32
@cc_get_plain_hmac_key._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 450, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Mapping key va=0x%p len=%u for DMA failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cc_get_plain_hmac_key\00", [42 x i8] zeroinitializer }, align 32
@cc_get_plain_hmac_key._entry_ptr = internal global ptr @cc_get_plain_hmac_key._entry, section ".printk_index", align 4
@cc_get_plain_hmac_key._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.23, ptr @.str.2, i32 531, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_get_plain_hmac_key._entry_ptr.25 = internal global ptr @cc_get_plain_hmac_key._entry.24, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.26 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@cc_aead_setauthsize.__UNIQUE_ID_ddebug540 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.28, ptr @.str.2, ptr @.str.29, i8 0, i8 -86, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cc_aead_setauthsize\00", [44 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"authlen=%d\0A\00", [20 x i8] zeroinitializer }, align 32
@cc_proc_aead.__UNIQUE_ID_ddebug550 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.30, ptr @.str.2, ptr @.str.31, i8 1, i8 -36, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cc_proc_aead\00", [19 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s context=%p req=%p iv=%p src=%p src_ofs=%d dst=%p dst_ofs=%d cryptolen=%d\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Enc\00", [28 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"Dec\00", [28 x i8] zeroinitializer }, align 32
@cc_proc_aead._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.30, ptr @.str.2, i32 1913, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported crypt/assoc len %d/%d.\0A\00", [60 x i8] zeroinitializer }, align 32
@cc_proc_aead._entry_ptr = internal global ptr @cc_proc_aead._entry, section ".printk_index", align 4
@cc_proc_aead.__UNIQUE_ID_ddebug551 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.30, ptr @.str.2, ptr @.str.35, i8 1, i8 -23, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"config_ccm_adata() returned with a failure %d!\00", [49 x i8] zeroinitializer }, align 32
@cc_proc_aead._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.2, i32 1977, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"map_request() failed\0A\00", [42 x i8] zeroinitializer }, align 32
@cc_proc_aead._entry_ptr.39 = internal global ptr @cc_proc_aead._entry.37, section ".printk_index", align 4
@cc_proc_aead._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.30, ptr @.str.2, i32 2001, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_proc_aead._entry_ptr.41 = internal global ptr @cc_proc_aead._entry.40, section ".printk_index", align 4
@cc_proc_aead._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.30, ptr @.str.2, i32 2012, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@cc_proc_aead._entry_ptr.43 = internal global ptr @cc_proc_aead._entry.42, section ".printk_index", align 4
@validate_data_size._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.2, i32 1355, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unexpected flow mode (%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"validate_data_size\00", [45 x i8] zeroinitializer }, align 32
@validate_data_size._entry_ptr = internal global ptr @validate_data_size._entry, section ".printk_index", align 4
@cc_aead_complete.__UNIQUE_ID_ddebug534 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.46, ptr @.str.2, ptr @.str.47, i8 0, i8 57, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cc_aead_complete\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [59 x i8], [37 x i8] } { [59 x i8] c"Payload authentication failure, (auth-size=%d, cipher=%d)\0A\00", [37 x i8] zeroinitializer }, align 32
@config_ccm_adata.__UNIQUE_ID_ddebug548 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.48, ptr @.str.2, ptr @.str.49, i8 1, i8 -123, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"config_ccm_adata\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"illegal iv value %X\0A\00", [43 x i8] zeroinitializer }, align 32
@config_ccm_adata._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.2, i32 1573, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"message len overflow detected\00", [34 x i8] zeroinitializer }, align 32
@config_ccm_adata._entry_ptr = internal global ptr @config_ccm_adata._entry, section ".printk_index", align 4
@config_gcm_context.__UNIQUE_ID_ddebug549 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.51, ptr @.str.2, ptr @.str.52, i8 1, i8 -52, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"config_gcm_context\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s() cryptlen = %d, req_ctx->assoclen = %d ctx->authsize = %d\0A\00", [33 x i8] zeroinitializer }, align 32
@cc_mlli_to_sram.__UNIQUE_ID_ddebug547 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.53, ptr @.str.2, ptr @.str.54, i8 1, i8 36, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cc_mlli_to_sram\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Copy-to-sram: mlli_dma=%08x, mlli_size=%u\0A\00", [53 x i8] zeroinitializer }, align 32
@cc_set_assoc_desc.__UNIQUE_ID_ddebug541 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.55, ptr @.str.2, ptr @.str.56, i8 0, i8 -73, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cc_set_assoc_desc\00", [46 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ASSOC buffer type DLLI\0A\00", [40 x i8] zeroinitializer }, align 32
@cc_set_assoc_desc.__UNIQUE_ID_ddebug542 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.55, ptr @.str.2, ptr @.str.57, i8 0, i8 -71, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ASSOC buffer type MLLI\0A\00", [40 x i8] zeroinitializer }, align 32
@cc_set_assoc_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.55, ptr @.str.2, i32 754, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid ASSOC buffer type\0A\00", [37 x i8] zeroinitializer }, align 32
@cc_set_assoc_desc._entry_ptr = internal global ptr @cc_set_assoc_desc._entry, section ".printk_index", align 4
@cc_proc_cipher_desc.__UNIQUE_ID_ddebug545 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.59, ptr @.str.2, ptr @.str.60, i8 0, i8 -46, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cc_proc_cipher_desc\00", [44 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CIPHER: SRC/DST buffer type DLLI\0A\00", [62 x i8] zeroinitializer }, align 32
@cc_proc_cipher_desc.__UNIQUE_ID_ddebug546 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.59, ptr @.str.2, ptr @.str.61, i8 0, i8 -43, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"CIPHER: SRC/DST buffer type MLLI\0A\00", [62 x i8] zeroinitializer }, align 32
@cc_proc_cipher_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.59, ptr @.str.2, i32 864, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"CIPHER: Invalid SRC/DST buffer type\0A\00", [59 x i8] zeroinitializer }, align 32
@cc_proc_cipher_desc._entry_ptr = internal global ptr @cc_proc_cipher_desc._entry, section ".printk_index", align 4
@cc_proc_authen_desc.__UNIQUE_ID_ddebug543 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.63, ptr @.str.2, ptr @.str.64, i8 0, i8 -61, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cc_proc_authen_desc\00", [44 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AUTHENC: SRC/DST buffer type DLLI\0A\00", [61 x i8] zeroinitializer }, align 32
@cc_proc_authen_desc.__UNIQUE_ID_ddebug544 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.63, ptr @.str.2, ptr @.str.65, i8 0, i8 -54, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"AUTHENC: SRC/DST buffer type MLLI\0A\00", [61 x i8] zeroinitializer }, align 32
@cc_proc_authen_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.66, ptr @.str.63, ptr @.str.2, i32 818, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"AUTHENC: Invalid SRC/DST buffer type\0A\00", [58 x i8] zeroinitializer }, align 32
@cc_proc_authen_desc._entry_ptr = internal global ptr @cc_proc_authen_desc._entry, section ".printk_index", align 4
@cc_aead_init.__UNIQUE_ID_ddebug531 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cc_aead_init\00", [19 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Initializing context @%p for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@cc_aead_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.67, ptr @.str.2, i32 147, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed allocating key buffer\0A\00", [34 x i8] zeroinitializer }, align 32
@cc_aead_init._entry_ptr = internal global ptr @cc_aead_init._entry, section ".printk_index", align 4
@cc_aead_init.__UNIQUE_ID_ddebug532 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.67, ptr @.str.2, ptr @.str.70, i8 0, i8 37, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Allocated enckey buffer in context ctx->enckey=@%p\0A\00", [44 x i8] zeroinitializer }, align 32
@cc_aead_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"Failed allocating buffer for XCBC keys\0A\00", [56 x i8] zeroinitializer }, align 32
@cc_aead_init._entry_ptr.73 = internal global ptr @cc_aead_init._entry.71, section ".printk_index", align 4
@cc_aead_init._entry.74 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.67, ptr @.str.2, i32 179, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed allocating IPAD/OPAD buffer\0A\00", [60 x i8] zeroinitializer }, align 32
@cc_aead_init._entry_ptr.76 = internal global ptr @cc_aead_init._entry.74, section ".printk_index", align 4
@cc_aead_init.__UNIQUE_ID_ddebug533 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.67, ptr @.str.2, ptr @.str.77, i8 0, i8 46, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Allocated authkey buffer in context ctx->authkey=@%p\0A\00", [42 x i8] zeroinitializer }, align 32
@cc_aead_init._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.79, ptr @.str.67, ptr @.str.2, i32 192, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.79 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"failed to allocate padded_authkey\0A\00", [61 x i8] zeroinitializer }, align 32
@cc_aead_init._entry_ptr.80 = internal global ptr @cc_aead_init._entry.78, section ".printk_index", align 4
@cc_aead_exit.__UNIQUE_ID_ddebug526 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.81, ptr @.str.2, ptr @.str.82, i8 0, i8 17, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cc_aead_exit\00", [19 x i8] zeroinitializer }, align 32
@.str.82 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Clearing context @%p for %s\0A\00", [35 x i8] zeroinitializer }, align 32
@cc_aead_exit.__UNIQUE_ID_ddebug527 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.81, ptr @.str.2, ptr @.str.83, i8 0, i8 19, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Freed enckey DMA buffer enckey_dma_addr=%pad\0A\00", [50 x i8] zeroinitializer }, align 32
@cc_aead_exit.__UNIQUE_ID_ddebug528 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.81, ptr @.str.2, ptr @.str.84, i8 0, i8 22, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Freed xcbc_keys DMA buffer xcbc_keys_dma_addr=%pad\0A\00", [44 x i8] zeroinitializer }, align 32
@cc_aead_exit.__UNIQUE_ID_ddebug529 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.81, ptr @.str.2, ptr @.str.85, i8 0, i8 25, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"Freed ipad_opad DMA buffer ipad_opad_dma_addr=%pad\0A\00", [44 x i8] zeroinitializer }, align 32
@cc_aead_exit.__UNIQUE_ID_ddebug530 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.81, ptr @.str.2, ptr @.str.86, i8 0, i8 27, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"Freed padded_authkey DMA buffer padded_authkey_dma_addr=%pad\0A\00", [34 x i8] zeroinitializer }, align 32
@cc_rfc4106_gcm_setkey.__UNIQUE_ID_ddebug553 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.87, ptr @.str.2, ptr @.str.88, i8 2, i8 16, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cc_rfc4106_gcm_setkey\00", [42 x i8] zeroinitializer }, align 32
@.str.88 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s()  keylen %d, key %p\0A\00", [39 x i8] zeroinitializer }, align 32
@cc_rfc4106_gcm_setauthsize.__UNIQUE_ID_ddebug555 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.89, ptr @.str.2, ptr @.str.90, i8 2, i8 29, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cc_rfc4106_gcm_setauthsize\00", [37 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"authsize %d\0A\00", [19 x i8] zeroinitializer }, align 32
@cc_rfc4543_gcm_setkey.__UNIQUE_ID_ddebug554 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.91, ptr @.str.2, ptr @.str.88, i8 2, i8 20, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"cc_rfc4543_gcm_setkey\00", [42 x i8] zeroinitializer }, align 32
@cc_rfc4543_gcm_setauthsize.__UNIQUE_ID_ddebug556 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.92, ptr @.str.2, ptr @.str.90, i8 2, i8 34, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"cc_rfc4543_gcm_setauthsize\00", [37 x i8] zeroinitializer }, align 32
@.str.93 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 4294967295]
@__sancov_gen_cov_switch_values.94 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 7, i64 4294967295]
@__sancov_gen_cov_switch_values.95 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.97 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 4294967295]
@__sancov_gen_cov_switch_values.98 = internal global [4 x i64] [i64 2, i64 32, i64 7, i64 4294967295]
@__sancov_gen_cov_switch_values.99 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 6, i64 8, i64 10, i64 12, i64 14, i64 16]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.101 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.103 = internal global [9 x i64] [i64 7, i64 32, i64 4, i64 8, i64 12, i64 13, i64 14, i64 15, i64 16]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 12, i64 16]
@__sancov_gen_cov_switch_values.105 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.106 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.107 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.108 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.109 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 7, i64 4294967295]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.112 = internal global [4 x i64] [i64 2, i64 32, i64 32, i64 34]
@__sancov_gen_cov_switch_values.113 = internal global [4 x i64] [i64 2, i64 32, i64 8, i64 12]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 32, i64 2, i64 8, i64 12]
@__sancov_gen_cov_switch_values.115 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 7, i64 4294967295]
@__sancov_gen_cov_switch_values.116 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.117 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.118 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.119 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2641, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2648, i32 4 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2654, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 552, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 620, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 629, i32 4 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 366, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 384, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 390, i32 4 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 398, i32 4 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 449, i32 4 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 531, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.199, i32 326, i32 6 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 682, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1903, i32 2 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1912, i32 3 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1958, i32 4 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1977, i32 3 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2001, i32 3 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2012, i32 3 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1355, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 230, i32 4 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1559, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1573, i32 3 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1842, i32 2 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 1169, i32 3 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 733, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 743, i32 3 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 754, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 841, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 854, i32 3 }
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 864, i32 3 }
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 782, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 809, i32 3 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 818, i32 3 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 133, i32 2 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 147, i32 3 }
@___asan_gen_.338 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 150, i32 2 }
@___asan_gen_.344 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 165, i32 4 }
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 179, i32 4 }
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 183, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 192, i32 4 }
@___asan_gen_.365 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 69, i32 2 }
@___asan_gen_.368 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 76, i32 3 }
@___asan_gen_.371 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 90, i32 3 }
@___asan_gen_.374 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 101, i32 4 }
@___asan_gen_.377 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 110, i32 4 }
@___asan_gen_.383 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2113, i32 2 }
@___asan_gen_.389 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2166, i32 2 }
@___asan_gen_.392 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2130, i32 2 }
@___asan_gen_.395 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2186, i32 2 }
@___asan_gen_.396 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.397 = private constant [34 x i8] c"../drivers/crypto/ccree/cc_aead.c\00", align 1
@___asan_gen_.398 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.397, i32 2572, i32 52 }
@llvm.compiler.used = appending global [112 x ptr] [ptr @cc_aead_alloc._entry, ptr @cc_aead_alloc._entry.5, ptr @cc_aead_alloc._entry_ptr, ptr @cc_aead_alloc._entry_ptr.7, ptr @cc_aead_init._entry, ptr @cc_aead_init._entry.71, ptr @cc_aead_init._entry.74, ptr @cc_aead_init._entry.78, ptr @cc_aead_init._entry_ptr, ptr @cc_aead_init._entry_ptr.73, ptr @cc_aead_init._entry_ptr.76, ptr @cc_aead_init._entry_ptr.80, ptr @cc_aead_setkey._entry, ptr @cc_aead_setkey._entry.14, ptr @cc_aead_setkey._entry_ptr, ptr @cc_aead_setkey._entry_ptr.16, ptr @cc_get_plain_hmac_key._entry, ptr @cc_get_plain_hmac_key._entry.24, ptr @cc_get_plain_hmac_key._entry_ptr, ptr @cc_get_plain_hmac_key._entry_ptr.25, ptr @cc_proc_aead._entry, ptr @cc_proc_aead._entry.37, ptr @cc_proc_aead._entry.40, ptr @cc_proc_aead._entry.42, ptr @cc_proc_aead._entry_ptr, ptr @cc_proc_aead._entry_ptr.39, ptr @cc_proc_aead._entry_ptr.41, ptr @cc_proc_aead._entry_ptr.43, ptr @cc_proc_authen_desc._entry, ptr @cc_proc_authen_desc._entry_ptr, ptr @cc_proc_cipher_desc._entry, ptr @cc_proc_cipher_desc._entry_ptr, ptr @cc_set_assoc_desc._entry, ptr @cc_set_assoc_desc._entry_ptr, ptr @config_ccm_adata._entry, ptr @config_ccm_adata._entry_ptr, ptr @validate_data_size._entry, ptr @validate_data_size._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.38, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93], section "llvm.metadata"
@0 = internal global [93 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_aead_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_aead_alloc._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_aead_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_aead_setkey._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_get_plain_hmac_key._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_get_plain_hmac_key._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_proc_aead._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_proc_aead._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_proc_aead._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_proc_aead._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @validate_data_size._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 59, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @config_ccm_adata._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_set_assoc_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_proc_cipher_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_proc_authen_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_aead_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.338 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_aead_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.344 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_aead_init._entry.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_aead_init._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.365 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.368 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.371 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.374 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.377 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.383 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.389 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.392 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.395 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.398 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_aead_free(ptr nocapture noundef readonly %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %aead_handle1 = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 8
  %0 = ptrtoint ptr %aead_handle1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %aead_handle1, align 4
  %aead_list = getelementptr inbounds %struct.cc_aead_handle, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %aead_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %aead_list, align 4
  %cmp.not20 = icmp eq ptr %3, %aead_list
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %t_alg.021 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %t_alg.021 to i32
  call void @__asan_load4_noabort(i32 %4)
  %n.0 = load ptr, ptr %t_alg.021, align 128
  %aead_alg = getelementptr inbounds %struct.cc_crypto_alg, ptr %t_alg.021, i32 0, i32 7
  tail call void @crypto_unregister_aead(ptr noundef %aead_alg) #6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %t_alg.021) #6
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %t_alg.021, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %t_alg.021 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %t_alg.021, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %11 = ptrtoint ptr %t_alg.021 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %t_alg.021, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %t_alg.021, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %n.0, %aead_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_aead(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_aead_alloc(ptr noundef %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %call1 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 12, i32 noundef 3264) #6
  %tobool.not = icmp eq ptr %call1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %aead_list = getelementptr inbounds %struct.cc_aead_handle, ptr %call1, i32 0, i32 1
  %2 = ptrtoint ptr %aead_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %aead_list, ptr %aead_list, align 4
  %prev.i = getelementptr inbounds %struct.cc_aead_handle, ptr %call1, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %aead_list, ptr %prev.i, align 4
  %aead_handle2 = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 8
  %4 = ptrtoint ptr %aead_handle2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %aead_handle2, align 4
  %call3 = tail call i32 @cc_sram_alloc(ptr noundef %drvdata, i32 noundef 32) #6
  %5 = ptrtoint ptr %call1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call3, ptr %call1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call3)
  %cmp = icmp eq i32 %call3, -1
  br i1 %cmp, label %if.end.fail1_crit_edge, label %for.cond.preheader

if.end.fail1_crit_edge:                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %fail1

for.cond.preheader:                               ; preds = %if.end
  %hw_rev = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 16
  %std_bodies = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 20
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %alg.089 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089
  %min_hw_rev = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 8
  %6 = ptrtoint ptr %min_hw_rev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %min_hw_rev, align 4
  %8 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp8 = icmp ugt i32 %7, %9
  br i1 %cmp8, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %10 = ptrtoint ptr %std_bodies to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %std_bodies, align 4
  %std_body = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 9
  %12 = ptrtoint ptr %std_body to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %std_body, align 16
  %and = and i32 %13, %11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %lor.lhs.false.for.inc_crit_edge, label %if.end12

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.end12:                                         ; preds = %lor.lhs.false
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 1408, i32 noundef 3520) #6
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end12.if.then16_crit_edge, label %cc_create_aead_alg.exit

if.end12.if.then16_crit_edge:                     ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

cc_create_aead_alg.exit:                          ; preds = %if.end12
  %template_u.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 4
  %cra_name.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 4, i32 0, i32 11, i32 8
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name.i, i32 noundef 128, ptr noundef nonnull @.str.93, ptr noundef %arrayidx) #6
  %cra_driver_name.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 4, i32 0, i32 11, i32 9
  %driver_name.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 1
  %call7.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name.i, i32 noundef 128, ptr noundef nonnull @.str.93, ptr noundef %driver_name.i) #6
  %cra_module.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 4, i32 0, i32 11, i32 15
  %14 = ptrtoint ptr %cra_module.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %cra_module.i, align 4
  %cra_priority.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 4, i32 0, i32 11, i32 6
  %15 = ptrtoint ptr %cra_priority.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 400, ptr %cra_priority.i, align 32
  %cra_ctxsize.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 4, i32 0, i32 11, i32 4
  %16 = ptrtoint ptr %cra_ctxsize.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 60, ptr %cra_ctxsize.i, align 8
  %cra_flags.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 4, i32 0, i32 11, i32 2
  %17 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 4224, ptr %cra_flags.i, align 16
  %blocksize.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 2
  %18 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocksize.i, align 128
  %cra_blocksize.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 4, i32 0, i32 11, i32 3
  %20 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cra_blocksize.i, align 4
  %init.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 4, i32 0, i32 4
  %21 = ptrtoint ptr %init.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @cc_aead_init, ptr %init.i, align 16
  %exit.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 4, i32 0, i32 5
  %22 = ptrtoint ptr %exit.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @cc_aead_exit, ptr %exit.i, align 4
  %aead_alg.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 7
  %23 = call ptr @memcpy(ptr %aead_alg.i, ptr %template_u.i, i32 640)
  %cipher_mode.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 5
  %24 = ptrtoint ptr %cipher_mode.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cipher_mode.i, align 128
  %cipher_mode13.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %cipher_mode13.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %cipher_mode13.i, align 8
  %flow_mode.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 6
  %27 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %flow_mode.i, align 4
  %flow_mode14.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 2
  %29 = ptrtoint ptr %flow_mode14.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %flow_mode14.i, align 4
  %auth_mode.i = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 7
  %30 = ptrtoint ptr %auth_mode.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %auth_mode.i, align 8
  %auth_mode15.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 3
  %32 = ptrtoint ptr %auth_mode15.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %auth_mode15.i, align 16
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cc_create_aead_alg.exit.if.then16_crit_edge, label %if.end19

cc_create_aead_alg.exit.if.then16_crit_edge:      ; preds = %cc_create_aead_alg.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then16

if.then16:                                        ; preds = %cc_create_aead_alg.exit.if.then16_crit_edge, %if.end12.if.then16_crit_edge
  %retval.0.i7783 = phi ptr [ %call.i.i, %cc_create_aead_alg.exit.if.then16_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end12.if.then16_crit_edge ]
  %33 = ptrtoint ptr %retval.0.i7783 to i32
  %driver_name = getelementptr [13 x %struct.cc_alg_template], ptr @aead_algs, i32 0, i32 %alg.089, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str, ptr noundef %driver_name) #9
  br label %fail1

if.end19:                                         ; preds = %cc_create_aead_alg.exit
  %drvdata20 = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 4
  %34 = ptrtoint ptr %drvdata20 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %drvdata, ptr %drvdata20, align 4
  %call21 = tail call i32 @crypto_register_aead(ptr noundef %aead_alg.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %if.end29, label %do.end26

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %cra_driver_name = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 7, i32 10, i32 9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.6, ptr noundef %cra_driver_name) #9
  br label %fail1

if.end29:                                         ; preds = %if.end19
  %35 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i, align 4
  %call.i.i79 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %36, ptr noundef %aead_list) #6
  br i1 %call.i.i79, label %if.end.i.i, label %if.end29.list_add_tail.exit_crit_edge

if.end29.list_add_tail.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call.i.i, ptr %prev.i, align 4
  %38 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %aead_list, ptr %call.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %call.i.i, ptr %36, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end29.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_alloc.__UNIQUE_ID_ddebug557, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_alloc, %if.then37)) #6
          to label %for.inc [label %if.then37], !srcloc !210

if.then37:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #8
  %cra_driver_name40 = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 7, i32 10, i32 9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_alloc.__UNIQUE_ID_ddebug557, ptr noundef %dev.i, ptr noundef nonnull @.str.9, ptr noundef %cra_driver_name40) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then37, %list_add_tail.exit, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %alg.089, 1
  %exitcond.not = icmp eq i32 %inc, 13
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

fail1:                                            ; preds = %do.end26, %if.then16, %if.end.fail1_crit_edge
  %rc.0 = phi i32 [ %33, %if.then16 ], [ %call21, %do.end26 ], [ -12, %if.end.fail1_crit_edge ]
  %41 = ptrtoint ptr %aead_handle2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %aead_handle2, align 4
  %aead_list.i = getelementptr inbounds %struct.cc_aead_handle, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %aead_list.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %aead_list.i, align 4
  %cmp.not20.i = icmp eq ptr %44, %aead_list.i
  br i1 %cmp.not20.i, label %fail1.cleanup_crit_edge, label %fail1.for.body.i_crit_edge

fail1.for.body.i_crit_edge:                       ; preds = %fail1
  br label %for.body.i

fail1.cleanup_crit_edge:                          ; preds = %fail1
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %fail1.for.body.i_crit_edge
  %t_alg.021.i = phi ptr [ %n.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %44, %fail1.for.body.i_crit_edge ]
  %45 = ptrtoint ptr %t_alg.021.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %n.0.i = load ptr, ptr %t_alg.021.i, align 128
  %aead_alg.i80 = getelementptr inbounds %struct.cc_crypto_alg, ptr %t_alg.021.i, i32 0, i32 7
  tail call void @crypto_unregister_aead(ptr noundef %aead_alg.i80) #6
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %t_alg.021.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %t_alg.021.i, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i.i, align 4
  %48 = ptrtoint ptr %t_alg.021.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %t_alg.021.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev1.i.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %49, ptr %47, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %52 = ptrtoint ptr %t_alg.021.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 256 to ptr), ptr %t_alg.021.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %t_alg.021.i, i32 0, i32 1
  %53 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %n.0.i, %aead_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %fail1.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %rc.0, %fail1.cleanup_crit_edge ], [ %rc.0, %list_del.exit.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_sram_alloc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_aead(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_aead_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %cc_req.i = alloca %struct.cc_crypto_req, align 4
  %desc.i = alloca [12 x %struct.cc_hw_desc], align 4
  %cc_req = alloca %struct.cc_crypto_req, align 4
  %desc = alloca [12 x %struct.cc_hw_desc], align 4
  %keys = alloca %struct.crypto_authenc_keys, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %cc_req) #6
  %0 = call ptr @memset(ptr %cc_req, i32 0, i32 76)
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %desc) #6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 288)
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_setkey.__UNIQUE_ID_ddebug539, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_setkey, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !210

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_alg.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_setkey.__UNIQUE_ID_ddebug539, ptr noundef %dev.i, ptr noundef nonnull @.str.12, ptr noundef %__crt_ctx.i.i, ptr noundef %cra_name.i, ptr noundef %key, i32 noundef %keylen) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %auth_mode = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 48
  %8 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %auth_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp.not = icmp eq i32 %9, -1
  br i1 %cmp.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %do.end
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys) #6
  %10 = call ptr @memset(ptr %keys, i32 255, i32 16)
  %call8 = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %keys, ptr noundef %key, i32 noundef %keylen) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %if.end11, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end11:                                         ; preds = %if.then7
  %11 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 3
  %12 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 2
  %13 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 1
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  %16 = ptrtoint ptr %keys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %keys, align 4
  %18 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %11, align 4
  %enc_keylen = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 24
  %20 = ptrtoint ptr %enc_keylen to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %enc_keylen, align 4
  %21 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %12, align 4
  %auth_keylen = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 28
  %23 = ptrtoint ptr %auth_keylen to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %auth_keylen, align 4
  %cipher_mode = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 40
  %24 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %cipher_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp14 = icmp eq i32 %25, 2
  br i1 %cmp14, label %if.then15, label %if.end11.cleanup.thread_crit_edge

if.end11.cleanup.thread_crit_edge:                ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup.thread

if.then15:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %19)
  %cmp17 = icmp ult i32 %19, 20
  br i1 %cmp17, label %if.then15.cleanup_crit_edge, label %if.end19

if.then15.cleanup_crit_edge:                      ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #8
  %ctr_nonce = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %add.ptr = getelementptr i8, ptr %15, i32 %19
  %add.ptr21 = getelementptr i8, ptr %add.ptr, i32 -4
  %26 = ptrtoint ptr %add.ptr21 to i32
  call void @__asan_loadN_noabort(i32 %26, i32 4)
  %27 = load i32, ptr %add.ptr21, align 1
  %28 = ptrtoint ptr %ctr_nonce to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %ctr_nonce, align 4
  %sub = add i32 %19, -4
  %29 = ptrtoint ptr %enc_keylen to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %sub, ptr %enc_keylen, align 4
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %if.end19, %if.end11.cleanup.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys) #6
  br label %if.end26

cleanup:                                          ; preds = %if.then15.cleanup_crit_edge, %if.then7.cleanup_crit_edge
  %retval.0 = phi i32 [ %call8, %if.then7.cleanup_crit_edge ], [ -22, %if.then15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys) #6
  br label %cleanup76

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %enc_keylen24 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 24
  %30 = ptrtoint ptr %enc_keylen24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %keylen, ptr %enc_keylen24, align 4
  %auth_keylen25 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 28
  %31 = ptrtoint ptr %auth_keylen25 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %auth_keylen25, align 4
  br label %if.end26

if.end26:                                         ; preds = %if.else, %cleanup.thread
  %enckey.1 = phi ptr [ %key, %if.else ], [ %15, %cleanup.thread ]
  %authkey.1 = phi ptr [ null, %if.else ], [ %17, %cleanup.thread ]
  %call27 = call fastcc i32 @validate_keys_sizes(ptr noundef %__crt_ctx.i.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.end26.cleanup76_crit_edge

if.end26.cleanup76_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

if.end30:                                         ; preds = %if.end26
  %enckey31 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %32 = ptrtoint ptr %enckey31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %enckey31, align 4
  %enc_keylen32 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 24
  %34 = ptrtoint ptr %enc_keylen32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %enc_keylen32, align 4
  %36 = call ptr @memcpy(ptr %33, ptr %enckey.1, i32 %35)
  %37 = load i32, ptr %enc_keylen32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %37)
  %cmp34 = icmp eq i32 %37, 24
  br i1 %cmp34, label %if.then35, label %if.end30.if.end38_crit_edge

if.end30.if.end38_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end38

if.then35:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %enckey31 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %enckey31, align 4
  %add.ptr37 = getelementptr i8, ptr %39, i32 24
  %40 = ptrtoint ptr %add.ptr37 to i32
  call void @__asan_storeN_noabort(i32 %40, i32 8)
  store i64 0, ptr %add.ptr37, align 1
  br label %if.end38

if.end38:                                         ; preds = %if.then35, %if.end30.if.end38_crit_edge
  %41 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %auth_mode, align 4
  %43 = zext i32 %42 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values)
  switch i32 %42, label %if.then46 [
    i32 7, label %if.then41
    i32 -1, label %if.end38.cleanup76_crit_edge
  ]

if.end38.cleanup76_crit_edge:                     ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

if.then41:                                        ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #8
  %auth_state = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 8
  %44 = ptrtoint ptr %auth_state to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %auth_state, align 4
  %auth_keylen42 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 28
  %46 = ptrtoint ptr %auth_keylen42 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %auth_keylen42, align 4
  %48 = call ptr @memcpy(ptr %45, ptr %authkey.1, i32 %47)
  br label %if.end53

if.then46:                                        ; preds = %if.end38
  %auth_keylen47 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 28
  %49 = ptrtoint ptr %auth_keylen47 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %auth_keylen47, align 4
  %51 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i.i = getelementptr inbounds %struct.cc_drvdata, ptr %52, i32 0, i32 3
  %53 = ptrtoint ptr %plat_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %plat_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %54, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %cc_req.i) #6
  %55 = call ptr @memset(ptr %cc_req.i, i32 0, i32 76)
  call void @llvm.lifetime.start.p0(i64 288, ptr nonnull %desc.i) #6
  %56 = call ptr @memset(ptr %desc.i, i32 255, i32 288)
  %padded_authkey_dma_addr2.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 16
  %57 = ptrtoint ptr %padded_authkey_dma_addr2.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %padded_authkey_dma_addr2.i, align 4
  %59 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %auth_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cond.i = icmp eq i32 %60, 0
  %..i = select i1 %cond.i, i32 20, i32 32
  %.189.i = select i1 %cond.i, i32 1024, i32 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp.not.i = icmp eq i32 %50, 0
  br i1 %cmp.not.i, label %if.else63.i, label %if.then.i

if.then.i:                                        ; preds = %if.then46
  %call4.i = call ptr @kmemdup(ptr noundef %authkey.1, i32 noundef %50, i32 noundef 3264) #6
  %tobool.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool.not.i, label %if.then.i.cc_get_plain_hmac_key.exit.thread_crit_edge, label %if.end.i

if.then.i.cc_get_plain_hmac_key.exit.thread_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_get_plain_hmac_key.exit.thread

if.end.i:                                         ; preds = %if.then.i
  %call.i.i = call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call4.i) #6
  br i1 %call.i.i, label %land.rhs.i.i, label %dma_map_single_attrs.exit.i

land.rhs.i.i:                                     ; preds = %if.end.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge, label %if.then.i.i, !prof !211

land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = call ptr @dev_driver_string(ptr noundef %dev.i.i) #6
  %init_name.i.i.i = getelementptr inbounds %struct.platform_device, ptr %54, i32 0, i32 3, i32 3
  %61 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %62, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev.i.i, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %64, %if.end.i.i.i ], [ %62, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.26, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.27, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #6
  br label %dma_map_single_attrs.exit.thread.i

dma_map_single_attrs.exit.thread.i:               ; preds = %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.thread.i_crit_edge
  call void @debug_dma_mapping_error(ptr noundef %dev.i.i, i32 noundef -1) #6
  br label %do.end.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end.i
  call void @debug_dma_map_single(ptr noundef %dev.i.i, ptr noundef nonnull %call4.i, i32 noundef %50) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %65 = load ptr, ptr @mem_map, align 4
  %66 = ptrtoint ptr %call4.i to i32
  %sub.i.i = add i32 %66, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %65, i32 %shr.i.i
  %and.i.i = and i32 %66, 4095
  %call41.i.i = call i32 @dma_map_page_attrs(ptr noundef %dev.i.i, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %50, i32 noundef 1, i32 noundef 0) #6
  call void @debug_dma_mapping_error(ptr noundef %dev.i.i, i32 noundef %call41.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i.i)
  %cmp.i.i = icmp eq i32 %call41.i.i, -1
  br i1 %cmp.i.i, label %dma_map_single_attrs.exit.i.do.end.i_crit_edge, label %if.end10.i

dma_map_single_attrs.exit.i.do.end.i_crit_edge:   ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end.i

do.end.i:                                         ; preds = %dma_map_single_attrs.exit.i.do.end.i_crit_edge, %dma_map_single_attrs.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.22, ptr noundef nonnull %call4.i, i32 noundef %50) #9
  call void @kfree_sensitive(ptr noundef nonnull %call4.i) #6
  br label %cc_get_plain_hmac_key.exit.thread

if.end10.i:                                       ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %50)
  %cmp11.i = icmp ugt i32 %50, 64
  br i1 %cmp11.i, label %if.then12.i, label %set_dout_dlli.exit256.i

if.then12.i:                                      ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #8
  %67 = getelementptr inbounds i8, ptr %desc.i, i32 8
  %68 = call ptr @memset(ptr %67, i32 0, i32 16)
  %arrayidx.i.i = getelementptr inbounds [6 x i32], ptr %desc.i, i32 0, i32 4
  %69 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %__crt_ctx.i.i, align 4
  %71 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %auth_mode, align 4
  %call16.i = call i32 @cc_larval_digest_addr(ptr noundef %70, i32 noundef %72) #6
  %73 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %call16.i, ptr %desc.i, align 4
  %shl.i190.i = shl nuw nsw i32 %..i, 2
  %arrayidx21.i.i = getelementptr inbounds [6 x i32], ptr %desc.i, i32 0, i32 1
  %or22.i.i = or i32 %shl.i190.i, 1
  %74 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or22.i.i, ptr %arrayidx21.i.i, align 4
  %or.i196.i = or i32 %.189.i, 16777253
  %75 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %or.i196.i, ptr %arrayidx.i.i, align 4
  %arrayidx20.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 1
  %76 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %77 = call ptr @memset(ptr %76, i32 0, i32 20)
  %hash_len.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 36
  %78 = ptrtoint ptr %hash_len.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %hash_len.i, align 4
  %80 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 0, ptr %arrayidx20.i, align 4
  %arrayidx.i199.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 1, i32 0, i32 0, i32 4
  %shl.i202.i = shl i32 %79, 2
  %and31.i.i = and i32 %shl.i202.i, 67108860
  %81 = ptrtoint ptr %76 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %76, align 4
  %or32.i.i = or i32 %and31.i.i, %82
  %or34.i.i = or i32 %or32.i.i, 134217729
  store i32 %or34.i.i, ptr %76, align 4
  %or.i208.i = or i32 %.189.i, 67633189
  %83 = ptrtoint ptr %arrayidx.i199.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %or.i208.i, ptr %arrayidx.i199.i, align 4
  %arrayidx27.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 2
  %84 = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 2, i32 0, i32 0, i32 1
  %85 = call ptr @memset(ptr %84, i32 0, i32 20)
  %86 = ptrtoint ptr %arrayidx27.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %call41.i.i, ptr %arrayidx27.i, align 4
  %shl28.i.i = shl i32 %50, 2
  %and29.i.i = and i32 %shl28.i.i, 67108860
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %84, align 4
  %or.i209.i = or i32 %and29.i.i, %88
  %or51.i.i = or i32 %or.i209.i, 67108866
  store i32 %or51.i.i, ptr %84, align 4
  %arrayidx.i210.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 2, i32 0, i32 0, i32 4
  %89 = ptrtoint ptr %arrayidx.i210.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx.i210.i, align 4
  %or.i211.i = or i32 %90, 7
  store i32 %or.i211.i, ptr %arrayidx.i210.i, align 4
  %arrayidx31.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 3
  %91 = call ptr @memset(ptr %arrayidx31.i, i32 0, i32 24)
  %arrayidx.i214.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 3, i32 0, i32 0, i32 4
  %arrayidx.i.i.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 3, i32 0, i32 0, i32 2
  %92 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %58, ptr %arrayidx.i.i.i, align 4
  %arrayidx50.i.i.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 3, i32 0, i32 0, i32 3
  %or51.i.i.i = or i32 %shl.i190.i, 67108866
  %93 = ptrtoint ptr %arrayidx50.i.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %or51.i.i.i, ptr %arrayidx50.i.i.i, align 4
  %or.i222.i = or i32 %.189.i, 134479915
  %94 = ptrtoint ptr %arrayidx.i214.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %or.i222.i, ptr %arrayidx.i214.i, align 4
  %arrayidx39.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 4
  %.neg290.i = mul nuw nsw i32 %..i, 67108860
  %shl.i225.i = add nuw i32 %.neg290.i, 256
  %and31.i226.i = and i32 %shl.i225.i, 67108848
  %arrayidx33.i227.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 4, i32 0, i32 0, i32 1
  %or34.i229.i = or i32 %and31.i226.i, 134217729
  %95 = call ptr @memset(ptr %arrayidx39.i, i32 0, i32 24)
  %96 = ptrtoint ptr %arrayidx33.i227.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %or34.i229.i, ptr %arrayidx33.i227.i, align 4
  %add.i = add i32 %..i, %58
  %arrayidx.i.i232.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 4, i32 0, i32 0, i32 2
  %97 = ptrtoint ptr %arrayidx.i.i232.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %add.i, ptr %arrayidx.i.i232.i, align 4
  %arrayidx50.i.i235.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 4, i32 0, i32 0, i32 3
  %or51.i.i237.i = or i32 %and31.i226.i, 67108866
  %98 = ptrtoint ptr %arrayidx50.i.i235.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 %or51.i.i237.i, ptr %arrayidx50.i.i235.i, align 4
  br label %if.end70.i

set_dout_dlli.exit256.i:                          ; preds = %if.end10.i
  %99 = getelementptr inbounds i8, ptr %desc.i, i32 16
  %100 = ptrtoint ptr %99 to i32
  call void @__asan_storeN_noabort(i32 %100, i32 8)
  store i64 0, ptr %99, align 4
  %101 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %call41.i.i, ptr %desc.i, align 4
  %shl28.i240.i = shl nuw nsw i32 %50, 2
  %and29.i241.i = and i32 %shl28.i240.i, 67108860
  %arrayidx50.i242.i = getelementptr inbounds [6 x i32], ptr %desc.i, i32 0, i32 1
  %or51.i245.i = or i32 %and29.i241.i, 67108866
  %102 = ptrtoint ptr %arrayidx50.i242.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 %or51.i245.i, ptr %arrayidx50.i242.i, align 4
  %arrayidx.i.i248.i = getelementptr inbounds [6 x i32], ptr %desc.i, i32 0, i32 2
  %103 = ptrtoint ptr %arrayidx.i.i248.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store i32 %58, ptr %arrayidx.i.i248.i, align 4
  %arrayidx50.i.i253.i = getelementptr inbounds [6 x i32], ptr %desc.i, i32 0, i32 3
  %104 = ptrtoint ptr %arrayidx50.i.i253.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %or51.i245.i, ptr %arrayidx50.i.i253.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %50)
  %cmp51.not.i = icmp eq i32 %50, 64
  br i1 %cmp51.not.i, label %set_dout_dlli.exit256.i.if.end70.i_crit_edge, label %if.then52.i

set_dout_dlli.exit256.i.if.end70.i_crit_edge:     ; preds = %set_dout_dlli.exit256.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end70.i

if.then52.i:                                      ; preds = %set_dout_dlli.exit256.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx53.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 1
  %.neg.i = mul nuw i32 %50, 67108860
  %shl.i259.i = add nuw i32 %.neg.i, 256
  %and31.i260.i = and i32 %shl.i259.i, 67108860
  %arrayidx33.i261.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 1, i32 0, i32 0, i32 1
  %or34.i263.i = or i32 %and31.i260.i, 134217729
  %105 = call ptr @memset(ptr %arrayidx53.i, i32 0, i32 24)
  %106 = ptrtoint ptr %arrayidx33.i261.i to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %or34.i263.i, ptr %arrayidx33.i261.i, align 4
  %add58.i = add i32 %58, %50
  %arrayidx.i.i266.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 1, i32 0, i32 0, i32 2
  %107 = ptrtoint ptr %arrayidx.i.i266.i to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %add58.i, ptr %arrayidx.i.i266.i, align 4
  %arrayidx50.i.i271.i = getelementptr inbounds [12 x %struct.cc_hw_desc], ptr %desc.i, i32 0, i32 1, i32 0, i32 0, i32 3
  %or51.i.i273.i = or i32 %and31.i260.i, 67108866
  %108 = ptrtoint ptr %arrayidx50.i.i271.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %or51.i.i273.i, ptr %arrayidx50.i.i271.i, align 4
  br label %if.end70.i

if.else63.i:                                      ; preds = %if.then46
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx33.i275.i = getelementptr inbounds [6 x i32], ptr %desc.i, i32 0, i32 1
  %109 = call ptr @memset(ptr %desc.i, i32 0, i32 24)
  %110 = ptrtoint ptr %arrayidx33.i275.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 134217985, ptr %arrayidx33.i275.i, align 4
  %arrayidx.i.i279.i = getelementptr inbounds [6 x i32], ptr %desc.i, i32 0, i32 2
  %111 = ptrtoint ptr %arrayidx.i.i279.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %58, ptr %arrayidx.i.i279.i, align 4
  %arrayidx50.i.i280.i = getelementptr inbounds [6 x i32], ptr %desc.i, i32 0, i32 3
  %112 = ptrtoint ptr %arrayidx50.i.i280.i to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 67109122, ptr %arrayidx50.i.i280.i, align 4
  br label %if.end70.i

if.end70.i:                                       ; preds = %if.else63.i, %if.then52.i, %set_dout_dlli.exit256.i.if.end70.i_crit_edge, %if.then12.i
  %key_dma_addr.0.i = phi i32 [ %call41.i.i, %if.then12.i ], [ %call41.i.i, %if.then52.i ], [ %call41.i.i, %set_dout_dlli.exit256.i.if.end70.i_crit_edge ], [ 0, %if.else63.i ]
  %idx.0.i = phi i32 [ 5, %if.then12.i ], [ 2, %if.then52.i ], [ 1, %set_dout_dlli.exit256.i.if.end70.i_crit_edge ], [ 1, %if.else63.i ]
  %key.0.i = phi ptr [ %call4.i, %if.then12.i ], [ %call4.i, %if.then52.i ], [ %call4.i, %set_dout_dlli.exit256.i.if.end70.i_crit_edge ], [ null, %if.else63.i ]
  %113 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call72.i = call i32 @cc_send_sync_request(ptr noundef %114, ptr noundef nonnull %cc_req.i, ptr noundef nonnull %desc.i, i32 noundef %idx.0.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call72.i)
  %tobool73.not.i = icmp eq i32 %call72.i, 0
  br i1 %tobool73.not.i, label %if.end70.i.if.end78.i_crit_edge, label %do.end77.i

if.end70.i.if.end78.i_crit_edge:                  ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end78.i

do.end77.i:                                       ; preds = %if.end70.i
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.15, i32 noundef %call72.i) #9
  br label %if.end78.i

if.end78.i:                                       ; preds = %do.end77.i, %if.end70.i.if.end78.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %key_dma_addr.0.i)
  %tobool79.not.i = icmp eq i32 %key_dma_addr.0.i, 0
  br i1 %tobool79.not.i, label %if.end78.i.cc_get_plain_hmac_key.exit_crit_edge, label %if.then80.i

if.end78.i.cc_get_plain_hmac_key.exit_crit_edge:  ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_get_plain_hmac_key.exit

if.then80.i:                                      ; preds = %if.end78.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @dma_unmap_page_attrs(ptr noundef %dev.i.i, i32 noundef %key_dma_addr.0.i, i32 noundef %50, i32 noundef 1, i32 noundef 0) #6
  br label %cc_get_plain_hmac_key.exit

cc_get_plain_hmac_key.exit.thread:                ; preds = %do.end.i, %if.then.i.cc_get_plain_hmac_key.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %desc.i) #6
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cc_req.i) #6
  br label %cleanup76

cc_get_plain_hmac_key.exit:                       ; preds = %if.then80.i, %if.end78.i.cc_get_plain_hmac_key.exit_crit_edge
  call void @kfree_sensitive(ptr noundef %key.0.i) #6
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %desc.i) #6
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cc_req.i) #6
  br i1 %tobool73.not.i, label %cc_get_plain_hmac_key.exit.if.end53_crit_edge, label %cc_get_plain_hmac_key.exit.cleanup76_crit_edge

cc_get_plain_hmac_key.exit.cleanup76_crit_edge:   ; preds = %cc_get_plain_hmac_key.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

cc_get_plain_hmac_key.exit.if.end53_crit_edge:    ; preds = %cc_get_plain_hmac_key.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end53

if.end53:                                         ; preds = %cc_get_plain_hmac_key.exit.if.end53_crit_edge, %if.then41
  %115 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %115)
  %.pr = load i32, ptr %auth_mode, align 4
  %116 = zext i32 %.pr to i64
  call void @__sanitizer_cov_trace_switch(i64 %116, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %.pr, label %do.end62 [
    i32 0, label %if.end53.sw.bb_crit_edge
    i32 1, label %if.end53.sw.bb_crit_edge174
    i32 7, label %sw.bb57
    i32 -1, label %if.end53.cleanup76_crit_edge
  ]

if.end53.cleanup76_crit_edge:                     ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

if.end53.sw.bb_crit_edge174:                      ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end53.sw.bb_crit_edge:                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end53.sw.bb_crit_edge, %if.end53.sw.bb_crit_edge174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr)
  %cmp.i = icmp eq i32 %.pr, 0
  %cond.i133 = select i1 %cmp.i, i32 1024, i32 2048
  %cond3.i = select i1 %cmp.i, i32 20, i32 32
  %shl.i109.i = shl nuw nsw i32 %cond3.i, 2
  %padded_authkey_dma_addr.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 16
  %ipad_opad_dma_addr.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 20
  %or.i124.i = or i32 %cond.i133, 67108901
  %or.i133.i = or i32 %cond.i133, 33554469
  %or.i141.i = or i32 %cond.i133, 7
  %or51.i.i.i135 = or i32 %shl.i109.i, 67108866
  %or.i149.i = or i32 %cond.i133, 134217771
  %117 = call ptr @memset(ptr %desc, i32 0, i32 24)
  %arrayidx.i.i136 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 4
  %118 = ptrtoint ptr %arrayidx.i.i136 to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %cond.i133, ptr %arrayidx.i.i136, align 4
  %119 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %__crt_ctx.i.i, align 4
  %121 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %auth_mode, align 4
  %call.i = call i32 @cc_larval_digest_addr(ptr noundef %120, i32 noundef %122) #6
  %123 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %123)
  store i32 %call.i, ptr %desc, align 4
  %arrayidx21.i.i137 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 1
  %124 = ptrtoint ptr %arrayidx21.i.i137 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx21.i.i137, align 4
  %or.i111.i = or i32 %shl.i109.i, %125
  %or22.i.i138 = or i32 %or.i111.i, 1
  store i32 %or22.i.i138, ptr %arrayidx21.i.i137, align 4
  %126 = ptrtoint ptr %arrayidx.i.i136 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %arrayidx.i.i136, align 4
  %or.i115.i = or i32 %127, 16777253
  store i32 %or.i115.i, ptr %arrayidx.i.i136, align 4
  %arrayidx10.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1
  %128 = call ptr @memset(ptr %arrayidx10.i, i32 0, i32 24)
  %arrayidx.i118.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 4
  %129 = ptrtoint ptr %arrayidx.i118.i to i32
  call void @__asan_store4_noabort(i32 %129)
  store i32 %cond.i133, ptr %arrayidx.i118.i, align 4
  %hash_len.i134 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 36
  %130 = ptrtoint ptr %hash_len.i134 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %hash_len.i134, align 4
  %shl.i120.i = shl i32 %131, 2
  %and31.i.i141 = and i32 %shl.i120.i, 67108860
  %arrayidx33.i.i142 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 1
  %132 = ptrtoint ptr %arrayidx33.i.i142 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %arrayidx33.i.i142, align 4
  %or32.i.i143 = or i32 %and31.i.i141, %133
  %or34.i.i144 = or i32 %or32.i.i143, 134217729
  store i32 %or34.i.i144, ptr %arrayidx33.i.i142, align 4
  store i32 %or.i124.i, ptr %arrayidx.i118.i, align 4
  %arrayidx16.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 2
  %134 = call ptr @memset(ptr %arrayidx16.i, i32 0, i32 24)
  %arrayidx.i125.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 2, i32 0, i32 0, i32 2
  %135 = ptrtoint ptr %arrayidx.i125.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store i32 909522486, ptr %arrayidx.i125.i, align 4
  %arrayidx.i128.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 2, i32 0, i32 0, i32 4
  %136 = ptrtoint ptr %arrayidx.i128.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %or.i133.i, ptr %arrayidx.i128.i, align 4
  %arrayidx23.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3
  %137 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3, i32 0, i32 0, i32 2
  %138 = call ptr @memset(ptr %137, i32 0, i32 16)
  %139 = ptrtoint ptr %padded_authkey_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %padded_authkey_dma_addr.i, align 4
  %141 = ptrtoint ptr %arrayidx23.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %140, ptr %arrayidx23.i, align 4
  %arrayidx50.i.i145 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3, i32 0, i32 0, i32 1
  %142 = ptrtoint ptr %arrayidx50.i.i145 to i32
  call void @__asan_store4_noabort(i32 %142)
  store i32 67109122, ptr %arrayidx50.i.i145, align 4
  %arrayidx.i136.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3, i32 0, i32 0, i32 4
  %arrayidx.i138.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3, i32 0, i32 0, i32 3
  %143 = ptrtoint ptr %arrayidx.i138.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 536870912, ptr %arrayidx.i138.i, align 4
  %144 = ptrtoint ptr %arrayidx.i136.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %or.i141.i, ptr %arrayidx.i136.i, align 4
  %arrayidx29.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 4
  %145 = call ptr @memset(ptr %arrayidx29.i, i32 0, i32 24)
  %arrayidx.i144.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 4, i32 0, i32 0, i32 4
  %146 = ptrtoint ptr %ipad_opad_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %ipad_opad_dma_addr.i, align 4
  %arrayidx.i.i.i147 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 4, i32 0, i32 0, i32 2
  %148 = ptrtoint ptr %arrayidx.i.i.i147 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %147, ptr %arrayidx.i.i.i147, align 4
  %arrayidx50.i.i.i148 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 4, i32 0, i32 0, i32 3
  %149 = ptrtoint ptr %arrayidx50.i.i.i148 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %or51.i.i.i135, ptr %arrayidx50.i.i.i148, align 4
  %150 = ptrtoint ptr %arrayidx.i144.i to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %or.i149.i, ptr %arrayidx.i144.i, align 4
  %arrayidx.i.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 5
  %151 = call ptr @memset(ptr %arrayidx.i.1, i32 0, i32 24)
  %arrayidx.i.i136.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 5, i32 0, i32 0, i32 4
  %152 = ptrtoint ptr %arrayidx.i.i136.1 to i32
  call void @__asan_store4_noabort(i32 %152)
  store i32 %cond.i133, ptr %arrayidx.i.i136.1, align 4
  %153 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %__crt_ctx.i.i, align 4
  %155 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %auth_mode, align 4
  %call.i.1 = call i32 @cc_larval_digest_addr(ptr noundef %154, i32 noundef %156) #6
  %157 = ptrtoint ptr %arrayidx.i.1 to i32
  call void @__asan_store4_noabort(i32 %157)
  store i32 %call.i.1, ptr %arrayidx.i.1, align 4
  %arrayidx21.i.i137.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 5, i32 0, i32 0, i32 1
  %158 = ptrtoint ptr %arrayidx21.i.i137.1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %arrayidx21.i.i137.1, align 4
  %or.i111.i.1 = or i32 %shl.i109.i, %159
  %or22.i.i138.1 = or i32 %or.i111.i.1, 1
  store i32 %or22.i.i138.1, ptr %arrayidx21.i.i137.1, align 4
  %160 = ptrtoint ptr %arrayidx.i.i136.1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load i32, ptr %arrayidx.i.i136.1, align 4
  %or.i115.i.1 = or i32 %161, 16777253
  store i32 %or.i115.i.1, ptr %arrayidx.i.i136.1, align 4
  %arrayidx10.i.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 6
  %162 = call ptr @memset(ptr %arrayidx10.i.1, i32 0, i32 24)
  %arrayidx.i118.i.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 6, i32 0, i32 0, i32 4
  %163 = ptrtoint ptr %arrayidx.i118.i.1 to i32
  call void @__asan_store4_noabort(i32 %163)
  store i32 %cond.i133, ptr %arrayidx.i118.i.1, align 4
  %164 = ptrtoint ptr %hash_len.i134 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %hash_len.i134, align 4
  %shl.i120.i.1 = shl i32 %165, 2
  %and31.i.i141.1 = and i32 %shl.i120.i.1, 67108860
  %arrayidx33.i.i142.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 6, i32 0, i32 0, i32 1
  %166 = ptrtoint ptr %arrayidx33.i.i142.1 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %arrayidx33.i.i142.1, align 4
  %or32.i.i143.1 = or i32 %and31.i.i141.1, %167
  %or34.i.i144.1 = or i32 %or32.i.i143.1, 134217729
  store i32 %or34.i.i144.1, ptr %arrayidx33.i.i142.1, align 4
  store i32 %or.i124.i, ptr %arrayidx.i118.i.1, align 4
  %arrayidx16.i.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 7
  %168 = call ptr @memset(ptr %arrayidx16.i.1, i32 0, i32 24)
  %arrayidx.i125.i.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 7, i32 0, i32 0, i32 2
  %169 = ptrtoint ptr %arrayidx.i125.i.1 to i32
  call void @__asan_store4_noabort(i32 %169)
  store i32 1549556828, ptr %arrayidx.i125.i.1, align 4
  %arrayidx.i128.i.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 7, i32 0, i32 0, i32 4
  %170 = ptrtoint ptr %arrayidx.i128.i.1 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or.i133.i, ptr %arrayidx.i128.i.1, align 4
  %arrayidx23.i.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 8
  %171 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 8, i32 0, i32 0, i32 2
  %172 = call ptr @memset(ptr %171, i32 0, i32 16)
  %173 = ptrtoint ptr %padded_authkey_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %padded_authkey_dma_addr.i, align 4
  %175 = ptrtoint ptr %arrayidx23.i.1 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %174, ptr %arrayidx23.i.1, align 4
  %arrayidx50.i.i145.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 8, i32 0, i32 0, i32 1
  %176 = ptrtoint ptr %arrayidx50.i.i145.1 to i32
  call void @__asan_store4_noabort(i32 %176)
  store i32 67109122, ptr %arrayidx50.i.i145.1, align 4
  %arrayidx.i136.i.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 8, i32 0, i32 0, i32 4
  %arrayidx.i138.i.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 8, i32 0, i32 0, i32 3
  %177 = ptrtoint ptr %arrayidx.i138.i.1 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 536870912, ptr %arrayidx.i138.i.1, align 4
  %178 = ptrtoint ptr %arrayidx.i136.i.1 to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %or.i141.i, ptr %arrayidx.i136.i.1, align 4
  %arrayidx29.i.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 9
  %179 = call ptr @memset(ptr %arrayidx29.i.1, i32 0, i32 24)
  %arrayidx.i144.i.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 9, i32 0, i32 0, i32 4
  %180 = ptrtoint ptr %ipad_opad_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %ipad_opad_dma_addr.i, align 4
  %add.i146.1 = add i32 %181, %cond3.i
  %arrayidx.i.i.i147.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 9, i32 0, i32 0, i32 2
  %182 = ptrtoint ptr %arrayidx.i.i.i147.1 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %add.i146.1, ptr %arrayidx.i.i.i147.1, align 4
  %arrayidx50.i.i.i148.1 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 9, i32 0, i32 0, i32 3
  %183 = ptrtoint ptr %arrayidx50.i.i.i148.1 to i32
  call void @__asan_store4_noabort(i32 %183)
  store i32 %or51.i.i.i135, ptr %arrayidx50.i.i.i148.1, align 4
  %184 = ptrtoint ptr %arrayidx.i144.i.1 to i32
  call void @__asan_store4_noabort(i32 %184)
  store i32 %or.i149.i, ptr %arrayidx.i144.i.1, align 4
  br label %if.then65

sw.bb57:                                          ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  %185 = getelementptr inbounds i8, ptr %desc, i32 4
  %186 = call ptr @memset(ptr %185, i32 0, i32 20)
  %xcbc_keys_dma_addr.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 12
  %187 = ptrtoint ptr %xcbc_keys_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %xcbc_keys_dma_addr.i, align 4
  %auth_keylen.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 28
  %189 = ptrtoint ptr %auth_keylen.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %auth_keylen.i, align 4
  %191 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %191)
  store i32 %188, ptr %desc, align 4
  %shl28.i.i152 = shl i32 %190, 2
  %and29.i.i153 = and i32 %shl28.i.i152, 67108860
  %arrayidx50.i.i154 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 1
  %192 = ptrtoint ptr %arrayidx50.i.i154 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %arrayidx50.i.i154, align 4
  %or.i.i = or i32 %and29.i.i153, %193
  %or51.i.i155 = or i32 %or.i.i, 67108866
  store i32 %or51.i.i155, ptr %arrayidx50.i.i154, align 4
  %arrayidx.i.i160 = getelementptr inbounds [6 x i32], ptr %desc, i32 0, i32 4
  %194 = ptrtoint ptr %arrayidx.i.i160 to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %arrayidx.i.i160, align 4
  %196 = shl i32 %190, 19
  %197 = add i32 %196, 8388608
  %and9.i.i.i = and i32 %197, 12582912
  %or.i.i.i = or i32 %and9.i.i.i, %195
  %or.i5.i = or i32 %or.i.i.i, 67108896
  store i32 %or.i5.i, ptr %arrayidx.i.i160, align 4
  %arrayidx8.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1
  %198 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 2
  %199 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 5
  %200 = ptrtoint ptr %199 to i32
  call void @__asan_store4_noabort(i32 %200)
  store i32 0, ptr %199, align 4
  %201 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 16843009, ptr %arrayidx8.i, align 4
  %arrayidx33.i.i161 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 1
  %202 = ptrtoint ptr %arrayidx33.i.i161 to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 134217793, ptr %arrayidx33.i.i161, align 4
  %arrayidx.i6.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 4
  %203 = ptrtoint ptr %arrayidx.i6.i to i32
  call void @__asan_store4_noabort(i32 %203)
  store i32 1, ptr %arrayidx.i6.i, align 4
  %204 = ptrtoint ptr %198 to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %188, ptr %198, align 4
  %arrayidx50.i.i.i162 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 1, i32 0, i32 0, i32 3
  %205 = ptrtoint ptr %arrayidx50.i.i.i162 to i32
  call void @__asan_store4_noabort(i32 %205)
  store i32 67108930, ptr %arrayidx50.i.i.i162, align 4
  %arrayidx14.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 2
  %206 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 2, i32 0, i32 0, i32 2
  %207 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 2, i32 0, i32 0, i32 5
  %208 = ptrtoint ptr %207 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 0, ptr %207, align 4
  %209 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 33686018, ptr %arrayidx14.i, align 4
  %arrayidx33.i10.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 2, i32 0, i32 0, i32 1
  %210 = ptrtoint ptr %arrayidx33.i10.i to i32
  call void @__asan_store4_noabort(i32 %210)
  store i32 134217793, ptr %arrayidx33.i10.i, align 4
  %arrayidx.i13.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 2, i32 0, i32 0, i32 4
  %211 = ptrtoint ptr %arrayidx.i13.i to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 1, ptr %arrayidx.i13.i, align 4
  %add.i163 = add i32 %188, 16
  %212 = ptrtoint ptr %206 to i32
  call void @__asan_store4_noabort(i32 %212)
  store i32 %add.i163, ptr %206, align 4
  %arrayidx50.i.i16.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 2, i32 0, i32 0, i32 3
  %213 = ptrtoint ptr %arrayidx50.i.i16.i to i32
  call void @__asan_store4_noabort(i32 %213)
  store i32 67108930, ptr %arrayidx50.i.i16.i, align 4
  %arrayidx20.i164 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3
  %214 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3, i32 0, i32 0, i32 2
  %215 = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3, i32 0, i32 0, i32 5
  %216 = ptrtoint ptr %215 to i32
  call void @__asan_store4_noabort(i32 %216)
  store i32 0, ptr %215, align 4
  %217 = ptrtoint ptr %arrayidx20.i164 to i32
  call void @__asan_store4_noabort(i32 %217)
  store i32 50529027, ptr %arrayidx20.i164, align 4
  %arrayidx33.i19.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3, i32 0, i32 0, i32 1
  %218 = ptrtoint ptr %arrayidx33.i19.i to i32
  call void @__asan_store4_noabort(i32 %218)
  store i32 134217793, ptr %arrayidx33.i19.i, align 4
  %arrayidx.i22.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3, i32 0, i32 0, i32 4
  %219 = ptrtoint ptr %arrayidx.i22.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 1, ptr %arrayidx.i22.i, align 4
  %add26.i = add i32 %188, 32
  %220 = ptrtoint ptr %214 to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %add26.i, ptr %214, align 4
  %arrayidx50.i.i25.i = getelementptr inbounds %struct.cc_hw_desc, ptr %desc, i32 3, i32 0, i32 0, i32 3
  %221 = ptrtoint ptr %arrayidx50.i.i25.i to i32
  call void @__asan_store4_noabort(i32 %221)
  store i32 67108930, ptr %arrayidx50.i.i25.i, align 4
  br label %if.then65

do.end62:                                         ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %.pr) #9
  br label %cleanup76

if.then65:                                        ; preds = %sw.bb57, %sw.bb
  %seq_len.0 = phi i32 [ 4, %sw.bb57 ], [ 10, %sw.bb ]
  %222 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %222)
  %223 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call68 = call i32 @cc_send_sync_request(ptr noundef %223, ptr noundef nonnull %cc_req, ptr noundef nonnull %desc, i32 noundef %seq_len.0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call68)
  %tobool69.not = icmp eq i32 %call68, 0
  br i1 %tobool69.not, label %if.then65.cleanup76_crit_edge, label %do.end73

if.then65.cleanup76_crit_edge:                    ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup76

do.end73:                                         ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %call68) #9
  br label %cleanup76

cleanup76:                                        ; preds = %do.end73, %if.then65.cleanup76_crit_edge, %do.end62, %if.end53.cleanup76_crit_edge, %cc_get_plain_hmac_key.exit.cleanup76_crit_edge, %cc_get_plain_hmac_key.exit.thread, %if.end38.cleanup76_crit_edge, %if.end26.cleanup76_crit_edge, %cleanup
  %retval.1 = phi i32 [ -524, %do.end62 ], [ %call68, %do.end73 ], [ %retval.0, %cleanup ], [ %call27, %if.end26.cleanup76_crit_edge ], [ %call72.i, %cc_get_plain_hmac_key.exit.cleanup76_crit_edge ], [ 0, %if.then65.cleanup76_crit_edge ], [ -12, %cc_get_plain_hmac_key.exit.thread ], [ 0, %if.end53.cleanup76_crit_edge ], [ 0, %if.end38.cleanup76_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 288, ptr nonnull %desc) #6
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cc_req) #6
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_aead_setauthsize(ptr nocapture noundef %authenc, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %authsize)
  %cmp = icmp eq i32 %authsize, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %maxauthsize.i.i = getelementptr i8, ptr %5, i32 -100
  %6 = ptrtoint ptr %maxauthsize.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %maxauthsize.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %authsize)
  %cmp3 = icmp ult i32 %7, %authsize
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  %authsize4 = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 32
  %8 = ptrtoint ptr %authsize4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %authsize, ptr %authsize4, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_setauthsize.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_setauthsize, %if.then8)) #6
          to label %cleanup [label %if.then8], !srcloc !210

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %authsize4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %authsize4, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_setauthsize.__UNIQUE_ID_ddebug540, ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %10) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %lor.lhs.false.cleanup_crit_edge ], [ -524, %entry.cleanup_crit_edge ], [ 0, %if.then8 ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_aead_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %0 = call ptr @memset(ptr %__ctx.i, i32 0, i32 1152)
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iv, align 32
  %backup_iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 4
  %3 = ptrtoint ptr %backup_iv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %backup_iv, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %assoclen, align 8
  %assoclen1 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 5
  %6 = ptrtoint ptr %assoclen1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %assoclen1, align 8
  %call2 = tail call fastcc i32 @cc_proc_aead(ptr noundef %req, i32 noundef 0)
  %7 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %call2, label %if.then [
    i32 -115, label %entry.if.end_crit_edge
    i32 -16, label %entry.if.end_crit_edge15
  ]

entry.if.end_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %backup_iv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %backup_iv, align 4
  %10 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %iv, align 32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge15
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_aead_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %0 = call ptr @memset(ptr %__ctx.i, i32 0, i32 1152)
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %1 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %iv, align 32
  %backup_iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 4
  %3 = ptrtoint ptr %backup_iv to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %2, ptr %backup_iv, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %4 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %assoclen, align 8
  %assoclen1 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 5
  %6 = ptrtoint ptr %assoclen1 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %assoclen1, align 8
  %call2 = tail call fastcc i32 @cc_proc_aead(ptr noundef %req, i32 noundef 1)
  %7 = zext i32 %call2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %call2, label %if.then [
    i32 -115, label %entry.if.end_crit_edge
    i32 -16, label %entry.if.end_crit_edge15
  ]

entry.if.end_crit_edge15:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %8 = ptrtoint ptr %backup_iv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %backup_iv, align 4
  %10 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %9, ptr %iv, align 32
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge, %entry.if.end_crit_edge15
  ret i32 %call2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_aead_init(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %drvdata = getelementptr i8, ptr %1, i32 -876
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_init.__UNIQUE_ID_ddebug531, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_init, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !210

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %6 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_init.__UNIQUE_ID_ddebug531, ptr noundef %dev.i, ptr noundef nonnull @.str.68, ptr noundef %__crt_ctx.i.i, ptr noundef %cra_name.i) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cipher_mode = getelementptr i8, ptr %1, i32 -888
  %8 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cipher_mode, align 8
  %cipher_mode8 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 40
  %10 = ptrtoint ptr %cipher_mode8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %cipher_mode8, align 4
  %flow_mode = getelementptr i8, ptr %1, i32 -884
  %11 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flow_mode, align 4
  %flow_mode9 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 44
  %13 = ptrtoint ptr %flow_mode9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %12, ptr %flow_mode9, align 4
  %auth_mode = getelementptr i8, ptr %1, i32 -880
  %14 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %auth_mode, align 16
  %auth_mode10 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 48
  %16 = ptrtoint ptr %auth_mode10 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %auth_mode10, align 4
  %17 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %drvdata, align 4
  %19 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %__crt_ctx.i.i, align 4
  %reqsize1.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 1
  %20 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 1152, ptr %reqsize1.i, align 4
  %enckey_dma_addr = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 4
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 32, ptr noundef %enckey_dma_addr, i32 noundef 3264, i32 noundef 0) #6
  %enckey = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %21 = ptrtoint ptr %enckey to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i, ptr %enckey, align 4
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %do.end.init_failed_crit_edge, label %do.body21

do.end.init_failed_crit_edge:                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_failed

do.body21:                                        ; preds = %do.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_init.__UNIQUE_ID_ddebug532, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_init, %if.then33)) #6
          to label %do.end37 [label %if.then33], !srcloc !210

if.then33:                                        ; preds = %do.body21
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %enckey to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %enckey, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_init.__UNIQUE_ID_ddebug532, ptr noundef %dev.i, ptr noundef nonnull @.str.70, ptr noundef %23) #6
  br label %do.end37

do.end37:                                         ; preds = %if.then33, %do.body21
  %24 = ptrtoint ptr %auth_mode10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %auth_mode10, align 4
  %26 = zext i32 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %25, label %if.then51 [
    i32 7, label %if.then39
    i32 -1, label %if.else91
  ]

if.then39:                                        ; preds = %do.end37
  %auth_state = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 8
  %xcbc_keys_dma_addr = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 12
  %call.i153 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 48, ptr noundef %xcbc_keys_dma_addr, i32 noundef 3264, i32 noundef 0) #6
  %27 = ptrtoint ptr %auth_state to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i153, ptr %auth_state, align 4
  %tobool42.not = icmp eq ptr %call.i153, null
  br i1 %tobool42.not, label %if.then39.init_failed_crit_edge, label %if.then39.if.end97_crit_edge

if.then39.if.end97_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

if.then39.init_failed_crit_edge:                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_failed

if.then51:                                        ; preds = %do.end37
  %auth_state52 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 8
  %padded_authkey_dma_addr = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 16
  %ipad_opad_dma_addr = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 20
  %call.i154 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 64, ptr noundef %ipad_opad_dma_addr, i32 noundef 3264, i32 noundef 0) #6
  %ipad_opad = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 12
  %28 = ptrtoint ptr %ipad_opad to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call.i154, ptr %ipad_opad, align 4
  %tobool55.not = icmp eq ptr %call.i154, null
  br i1 %tobool55.not, label %if.then51.init_failed_crit_edge, label %do.body61

if.then51.init_failed_crit_edge:                  ; preds = %if.then51
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_failed

do.body61:                                        ; preds = %if.then51
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_init.__UNIQUE_ID_ddebug533, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_init, %if.then73)) #6
          to label %do.end77 [label %if.then73], !srcloc !210

if.then73:                                        ; preds = %do.body61
  call void @__sanitizer_cov_trace_pc() #8
  %29 = ptrtoint ptr %ipad_opad to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ipad_opad, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_init.__UNIQUE_ID_ddebug533, ptr noundef %dev.i, ptr noundef nonnull @.str.77, ptr noundef %30) #6
  br label %do.end77

do.end77:                                         ; preds = %if.then73, %do.body61
  %call.i155 = tail call ptr @dma_alloc_attrs(ptr noundef %dev.i, i32 noundef 64, ptr noundef %padded_authkey_dma_addr, i32 noundef 3264, i32 noundef 0) #6
  %31 = ptrtoint ptr %auth_state52 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call.i155, ptr %auth_state52, align 4
  %tobool80.not = icmp eq ptr %call.i155, null
  br i1 %tobool80.not, label %do.end77.init_failed_crit_edge, label %do.end77.if.end97_crit_edge

do.end77.if.end97_crit_edge:                      ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end97

do.end77.init_failed_crit_edge:                   ; preds = %do.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %init_failed

if.else91:                                        ; preds = %do.end37
  call void @__sanitizer_cov_trace_pc() #8
  %auth_state92 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 8
  %ipad_opad93 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 12
  %32 = ptrtoint ptr %ipad_opad93 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %ipad_opad93, align 4
  %33 = ptrtoint ptr %auth_state92 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr null, ptr %auth_state92, align 4
  br label %if.end97

if.end97:                                         ; preds = %if.else91, %do.end77.if.end97_crit_edge, %if.then39.if.end97_crit_edge
  %34 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call1.i = tail call i32 @cc_get_default_hash_len(ptr noundef %35) #6
  %hash_len = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 36
  %36 = ptrtoint ptr %hash_len to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call1.i, ptr %hash_len, align 4
  br label %cleanup99

init_failed:                                      ; preds = %do.end77.init_failed_crit_edge, %if.then51.init_failed_crit_edge, %if.then39.init_failed_crit_edge, %do.end.init_failed_crit_edge
  %.str.75.sink = phi ptr [ @.str.69, %do.end.init_failed_crit_edge ], [ @.str.72, %if.then39.init_failed_crit_edge ], [ @.str.75, %if.then51.init_failed_crit_edge ], [ @.str.79, %do.end77.init_failed_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull %.str.75.sink) #9
  tail call void @cc_aead_exit(ptr noundef %tfm)
  br label %cleanup99

cleanup99:                                        ; preds = %init_failed, %if.end97
  %retval.0 = phi i32 [ -12, %init_failed ], [ 0, %if.end97 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc_aead_exit(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_exit.__UNIQUE_ID_ddebug526, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_exit, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !210

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_alg.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_exit.__UNIQUE_ID_ddebug526, ptr noundef %dev.i, ptr noundef nonnull @.str.82, ptr noundef %__crt_ctx.i.i, ptr noundef %cra_name.i) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %enckey = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2
  %6 = ptrtoint ptr %enckey to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enckey, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %do.end.if.end29_crit_edge, label %if.then8

do.end.if.end29_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then8:                                         ; preds = %do.end
  %enckey_dma_addr = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 4
  %8 = ptrtoint ptr %enckey_dma_addr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %enckey_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 32, ptr noundef nonnull %7, i32 noundef %9, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_exit.__UNIQUE_ID_ddebug527, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_exit, %if.then22)) #6
          to label %do.end26 [label %if.then22], !srcloc !210

if.then22:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_exit.__UNIQUE_ID_ddebug527, ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef %enckey_dma_addr) #6
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %if.then8
  %10 = ptrtoint ptr %enckey_dma_addr to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %enckey_dma_addr, align 4
  %11 = ptrtoint ptr %enckey to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %enckey, align 4
  br label %if.end29

if.end29:                                         ; preds = %do.end26, %do.end.if.end29_crit_edge
  %auth_mode = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 48
  %12 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %auth_mode, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %13, label %if.then56 [
    i32 7, label %if.then30
    i32 -1, label %if.end29.if.end105_crit_edge
  ]

if.end29.if.end105_crit_edge:                     ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.then30:                                        ; preds = %if.end29
  %auth_state = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 8
  %15 = ptrtoint ptr %auth_state to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %auth_state, align 4
  %tobool31.not = icmp eq ptr %16, null
  br i1 %tobool31.not, label %if.then30.do.body35_crit_edge, label %if.then32

if.then30.do.body35_crit_edge:                    ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body35

if.then32:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #8
  %xcbc_keys_dma_addr = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 12
  %17 = ptrtoint ptr %xcbc_keys_dma_addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xcbc_keys_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 48, ptr noundef nonnull %16, i32 noundef %18, i32 noundef 0) #6
  br label %do.body35

do.body35:                                        ; preds = %if.then32, %if.then30.do.body35_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_exit.__UNIQUE_ID_ddebug528, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_exit, %if.then47)) #6
          to label %do.end51 [label %if.then47], !srcloc !210

if.then47:                                        ; preds = %do.body35
  call void @__sanitizer_cov_trace_pc() #8
  %xcbc_keys_dma_addr48 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_exit.__UNIQUE_ID_ddebug528, ptr noundef %dev.i, ptr noundef nonnull @.str.84, ptr noundef %xcbc_keys_dma_addr48) #6
  br label %do.end51

do.end51:                                         ; preds = %if.then47, %do.body35
  %xcbc_keys_dma_addr52 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 12
  br label %if.end105.sink.split

if.then56:                                        ; preds = %if.end29
  %auth_state57 = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 8
  %ipad_opad = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 12
  %19 = ptrtoint ptr %ipad_opad to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ipad_opad, align 4
  %tobool58.not = icmp eq ptr %20, null
  br i1 %tobool58.not, label %if.then56.if.end80_crit_edge, label %if.then59

if.then56.if.end80_crit_edge:                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end80

if.then59:                                        ; preds = %if.then56
  %ipad_opad_dma_addr = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 20
  %21 = ptrtoint ptr %ipad_opad_dma_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %ipad_opad_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 64, ptr noundef nonnull %20, i32 noundef %22, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_exit.__UNIQUE_ID_ddebug529, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_exit, %if.then73)) #6
          to label %do.end77 [label %if.then73], !srcloc !210

if.then73:                                        ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_exit.__UNIQUE_ID_ddebug529, ptr noundef %dev.i, ptr noundef nonnull @.str.85, ptr noundef %ipad_opad_dma_addr) #6
  br label %do.end77

do.end77:                                         ; preds = %if.then73, %if.then59
  %23 = ptrtoint ptr %ipad_opad_dma_addr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 0, ptr %ipad_opad_dma_addr, align 4
  %24 = ptrtoint ptr %ipad_opad to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr null, ptr %ipad_opad, align 4
  br label %if.end80

if.end80:                                         ; preds = %do.end77, %if.then56.if.end80_crit_edge
  %25 = ptrtoint ptr %auth_state57 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %auth_state57, align 4
  %tobool81.not = icmp eq ptr %26, null
  br i1 %tobool81.not, label %if.end80.if.end105_crit_edge, label %if.then82

if.end80.if.end105_crit_edge:                     ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end105

if.then82:                                        ; preds = %if.end80
  call void @__sanitizer_cov_trace_pc() #8
  %padded_authkey_dma_addr = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 2, i32 16
  %27 = ptrtoint ptr %padded_authkey_dma_addr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %padded_authkey_dma_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev.i, i32 noundef 64, ptr noundef nonnull %26, i32 noundef %28, i32 noundef 0) #6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_exit.__UNIQUE_ID_ddebug530, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_exit, %if.then96)) #6
          to label %if.end105.sink.split [label %if.then96], !srcloc !210

if.then96:                                        ; preds = %if.then82
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_exit.__UNIQUE_ID_ddebug530, ptr noundef %dev.i, ptr noundef nonnull @.str.86, ptr noundef %padded_authkey_dma_addr) #6
  br label %if.end105.sink.split

if.end105.sink.split:                             ; preds = %if.then96, %if.then82, %do.end51
  %padded_authkey_dma_addr.sink = phi ptr [ %xcbc_keys_dma_addr52, %do.end51 ], [ %padded_authkey_dma_addr, %if.then82 ], [ %padded_authkey_dma_addr, %if.then96 ]
  %auth_state57.sink = phi ptr [ %auth_state, %do.end51 ], [ %auth_state57, %if.then82 ], [ %auth_state57, %if.then96 ]
  %29 = ptrtoint ptr %padded_authkey_dma_addr.sink to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 0, ptr %padded_authkey_dma_addr.sink, align 4
  %30 = ptrtoint ptr %auth_state57.sink to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr null, ptr %auth_state57.sink, align 4
  br label %if.end105

if.end105:                                        ; preds = %if.end105.sink.split, %if.end80.if.end105_crit_edge, %if.end29.if.end105_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_des3_aead_setkey(ptr noundef %aead, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  %keys = alloca %struct.crypto_authenc_keys, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %keys) #6
  %0 = getelementptr inbounds %struct.crypto_authenc_keys, ptr %keys, i32 0, i32 1
  %1 = call ptr @memset(ptr %keys, i32 255, i32 16)
  %call = call i32 @crypto_authenc_extractkeys(ptr noundef nonnull %keys, ptr noundef %key, i32 noundef %keylen) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge, !prof !211

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @__sanitizer_cov_trace_pc() #8
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
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #6
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
  call void @__sanitizer_cov_trace_pc() #8
  br label %verify_aead_des3_key.exit.thread

lor.lhs.false.i.i.i.cond.false_crit_edge:         ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

land.lhs.true.i.i.i:                              ; preds = %if.end.i
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.i.cond.false_crit_edge, label %land.lhs.true.i.i.i.verify_aead_des3_key.exit.thread_crit_edge

land.lhs.true.i.i.i.verify_aead_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %verify_aead_des3_key.exit.thread

land.lhs.true.i.i.i.cond.false_crit_edge:         ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.false

verify_aead_des3_key.exit.thread:                 ; preds = %land.lhs.true.i.i.i.verify_aead_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_aead_des3_key.exit.thread_crit_edge
  %31 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #6, !srcloc !212
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #6
  br label %cond.end

cond.false:                                       ; preds = %land.lhs.true.i.i.i.cond.false_crit_edge, %lor.lhs.false.i.i.i.cond.false_crit_edge
  %32 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #6, !srcloc !212
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #6
  %call5 = call i32 @cc_aead_setkey(ptr noundef %aead, ptr noundef %key, i32 noundef %keylen)
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %verify_aead_des3_key.exit.thread, %if.end.cond.end_crit_edge
  %cond = phi i32 [ %call5, %cond.false ], [ -22, %if.end.cond.end_crit_edge ], [ -126, %verify_aead_des3_key.exit.thread ]
  %33 = call ptr @memset(ptr %keys, i32 0, i32 16)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %keys) #6, !srcloc !212
  br label %cleanup

cleanup:                                          ; preds = %cond.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %cond, %cond.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %keys) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_ccm_setauthsize(ptr nocapture noundef %authenc, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %authsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %authsize, label %entry.return_crit_edge [
    i32 4, label %entry.lor.lhs.false.i_crit_edge
    i32 6, label %entry.lor.lhs.false.i_crit_edge2
    i32 8, label %entry.lor.lhs.false.i_crit_edge3
    i32 10, label %entry.lor.lhs.false.i_crit_edge4
    i32 12, label %entry.lor.lhs.false.i_crit_edge5
    i32 14, label %entry.lor.lhs.false.i_crit_edge6
    i32 16, label %entry.lor.lhs.false.i_crit_edge7
  ]

entry.lor.lhs.false.i_crit_edge7:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge6:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge5:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge4:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge3:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge2:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false.i:                                  ; preds = %entry.lor.lhs.false.i_crit_edge, %entry.lor.lhs.false.i_crit_edge2, %entry.lor.lhs.false.i_crit_edge3, %entry.lor.lhs.false.i_crit_edge4, %entry.lor.lhs.false.i_crit_edge5, %entry.lor.lhs.false.i_crit_edge6, %entry.lor.lhs.false.i_crit_edge7
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1
  %1 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %plat_dev.i.i = getelementptr inbounds %struct.cc_drvdata, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %plat_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plat_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %maxauthsize.i.i.i = getelementptr i8, ptr %6, i32 -100
  %7 = ptrtoint ptr %maxauthsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %maxauthsize.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %authsize)
  %cmp3.i = icmp ult i32 %8, %authsize
  br i1 %cmp3.i, label %lor.lhs.false.i.return_crit_edge, label %if.end.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %authsize4.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 32
  %9 = ptrtoint ptr %authsize4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %authsize, ptr %authsize4.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_setauthsize.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_ccm_setauthsize, %if.then8.i)) #6
          to label %return [label %if.then8.i], !srcloc !210

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %authsize4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %authsize4.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_setauthsize.__UNIQUE_ID_ddebug540, ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef %11) #6
  br label %return

return:                                           ; preds = %if.then8.i, %if.end.i, %lor.lhs.false.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -524, %lor.lhs.false.i.return_crit_edge ], [ 0, %if.then8.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_rfc4309_ccm_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 3
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %keylen, -3
  %ctr_nonce = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %0 = call ptr @memcpy(ptr %ctr_nonce, ptr %add.ptr, i32 3)
  %call1 = tail call i32 @cc_aead_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_rfc4309_ccm_setauthsize(ptr nocapture noundef %authenc, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %authsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %authsize, label %entry.return_crit_edge [
    i32 8, label %entry.lor.lhs.false.i_crit_edge
    i32 12, label %entry.lor.lhs.false.i_crit_edge2
    i32 16, label %entry.lor.lhs.false.i_crit_edge3
  ]

entry.lor.lhs.false.i_crit_edge3:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge2:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false.i:                                  ; preds = %entry.lor.lhs.false.i_crit_edge, %entry.lor.lhs.false.i_crit_edge2, %entry.lor.lhs.false.i_crit_edge3
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1
  %1 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %plat_dev.i.i = getelementptr inbounds %struct.cc_drvdata, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %plat_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plat_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %maxauthsize.i.i.i = getelementptr i8, ptr %6, i32 -100
  %7 = ptrtoint ptr %maxauthsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %maxauthsize.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %authsize)
  %cmp3.i = icmp ult i32 %8, %authsize
  br i1 %cmp3.i, label %lor.lhs.false.i.return_crit_edge, label %if.end.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %authsize4.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 32
  %9 = ptrtoint ptr %authsize4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %authsize, ptr %authsize4.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_setauthsize.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_rfc4309_ccm_setauthsize, %if.then8.i)) #6
          to label %return [label %if.then8.i], !srcloc !210

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %authsize4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %authsize4.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_setauthsize.__UNIQUE_ID_ddebug540, ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef %11) #6
  br label %return

return:                                           ; preds = %if.then8.i, %if.end.i, %lor.lhs.false.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -524, %lor.lhs.false.i.return_crit_edge ], [ 0, %if.then8.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_rfc4309_ccm_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = add i32 %1, -16
  %switch.and.i = and i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %3 = call ptr @memset(ptr %__ctx.i, i32 0, i32 1152)
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iv, align 32
  %backup_iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 4
  %6 = ptrtoint ptr %backup_iv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %backup_iv, align 4
  %sub = add i32 %1, -8
  %assoclen3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 5
  %7 = ptrtoint ptr %assoclen3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %assoclen3, align 8
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm.i.i, align 16
  %ctr_iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %10 = call ptr @memset(ptr %ctr_iv.i, i32 0, i32 16)
  %11 = ptrtoint ptr %ctr_iv.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %ctr_iv.i, align 128
  %add.ptr.i = getelementptr %struct.aead_req_ctx, ptr %__ctx.i, i32 0, i32 2, i32 1
  %ctr_nonce.i = getelementptr i8, ptr %9, i32 132
  %12 = call ptr @memcpy(ptr %add.ptr.i, ptr %ctr_nonce.i, i32 3)
  %add.ptr9.i = getelementptr %struct.aead_request, ptr %req, i32 2, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %5, align 1
  %15 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %add.ptr9.i, align 1
  store ptr %ctr_iv.i, ptr %iv, align 32
  %call4 = tail call fastcc i32 @cc_proc_aead(ptr noundef %req, i32 noundef 0)
  %16 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %call4, label %if.then6 [
    i32 -115, label %if.end.out_crit_edge
    i32 -16, label %out.fold.split
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %backup_iv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %backup_iv, align 4
  %19 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %iv, align 32
  br label %out

out.fold.split:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %out.fold.split, %if.then6, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -22, %entry.out_crit_edge ], [ %call4, %if.then6 ], [ %call4, %if.end.out_crit_edge ], [ -16, %out.fold.split ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_rfc4309_ccm_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = add i32 %1, -16
  %switch.and.i = and i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %3 = call ptr @memset(ptr %__ctx.i, i32 0, i32 1152)
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iv, align 32
  %backup_iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 4
  %6 = ptrtoint ptr %backup_iv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %backup_iv, align 4
  %sub = add i32 %1, -8
  %assoclen3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 5
  %7 = ptrtoint ptr %assoclen3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %assoclen3, align 8
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm.i.i, align 16
  %ctr_iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %10 = call ptr @memset(ptr %ctr_iv.i, i32 0, i32 16)
  %11 = ptrtoint ptr %ctr_iv.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 3, ptr %ctr_iv.i, align 128
  %add.ptr.i = getelementptr %struct.aead_req_ctx, ptr %__ctx.i, i32 0, i32 2, i32 1
  %ctr_nonce.i = getelementptr i8, ptr %9, i32 132
  %12 = call ptr @memcpy(ptr %add.ptr.i, ptr %ctr_nonce.i, i32 3)
  %add.ptr9.i = getelementptr %struct.aead_request, ptr %req, i32 2, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %5, align 1
  %15 = ptrtoint ptr %add.ptr9.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %add.ptr9.i, align 1
  store ptr %ctr_iv.i, ptr %iv, align 32
  %call4 = tail call fastcc i32 @cc_proc_aead(ptr noundef %req, i32 noundef 1)
  %16 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %call4, label %if.then6 [
    i32 -115, label %if.end.out_crit_edge
    i32 -16, label %out.fold.split
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %backup_iv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %backup_iv, align 4
  %19 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %iv, align 32
  br label %out

out.fold.split:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %out.fold.split, %if.then6, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -22, %entry.out_crit_edge ], [ %call4, %if.then6 ], [ %call4, %if.end.out_crit_edge ], [ -16, %out.fold.split ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_gcm_setauthsize(ptr nocapture noundef %authenc, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %authsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %authsize, label %entry.return_crit_edge [
    i32 4, label %entry.lor.lhs.false.i_crit_edge
    i32 8, label %entry.lor.lhs.false.i_crit_edge2
    i32 12, label %entry.lor.lhs.false.i_crit_edge3
    i32 13, label %entry.lor.lhs.false.i_crit_edge4
    i32 14, label %entry.lor.lhs.false.i_crit_edge5
    i32 15, label %entry.lor.lhs.false.i_crit_edge6
    i32 16, label %entry.lor.lhs.false.i_crit_edge7
  ]

entry.lor.lhs.false.i_crit_edge7:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge6:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge5:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge4:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge3:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge2:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.lor.lhs.false.i_crit_edge:                  ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

lor.lhs.false.i:                                  ; preds = %entry.lor.lhs.false.i_crit_edge, %entry.lor.lhs.false.i_crit_edge2, %entry.lor.lhs.false.i_crit_edge3, %entry.lor.lhs.false.i_crit_edge4, %entry.lor.lhs.false.i_crit_edge5, %entry.lor.lhs.false.i_crit_edge6, %entry.lor.lhs.false.i_crit_edge7
  %__crt_ctx.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1
  %1 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %plat_dev.i.i = getelementptr inbounds %struct.cc_drvdata, ptr %2, i32 0, i32 3
  %3 = ptrtoint ptr %plat_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %plat_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %4, i32 0, i32 3
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 0, i32 3, i32 3
  %5 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %maxauthsize.i.i.i = getelementptr i8, ptr %6, i32 -100
  %7 = ptrtoint ptr %maxauthsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %maxauthsize.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %authsize)
  %cmp3.i = icmp ult i32 %8, %authsize
  br i1 %cmp3.i, label %lor.lhs.false.i.return_crit_edge, label %if.end.i

lor.lhs.false.i.return_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %authsize4.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 32
  %9 = ptrtoint ptr %authsize4.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %authsize, ptr %authsize4.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_setauthsize.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_gcm_setauthsize, %if.then8.i)) #6
          to label %return [label %if.then8.i], !srcloc !210

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %authsize4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %authsize4.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_setauthsize.__UNIQUE_ID_ddebug540, ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef %11) #6
  br label %return

return:                                           ; preds = %if.then8.i, %if.end.i, %lor.lhs.false.i.return_crit_edge, %entry.return_crit_edge
  %retval.0 = phi i32 [ -22, %entry.return_crit_edge ], [ -524, %lor.lhs.false.i.return_crit_edge ], [ 0, %if.then8.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_rfc4106_gcm_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_rfc4106_gcm_setkey.__UNIQUE_ID_ddebug553, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_rfc4106_gcm_setkey, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !210

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_rfc4106_gcm_setkey.__UNIQUE_ID_ddebug553, ptr noundef %dev.i, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.87, i32 noundef %keylen, ptr noundef %key) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 4
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %keylen, -4
  %ctr_nonce = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr, align 1
  %6 = ptrtoint ptr %ctr_nonce to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ctr_nonce, align 4
  %call7 = tail call i32 @cc_aead_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_rfc4106_gcm_setauthsize(ptr nocapture noundef %authenc, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_rfc4106_gcm_setauthsize.__UNIQUE_ID_ddebug555, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_rfc4106_gcm_setauthsize, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !210

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_rfc4106_gcm_setauthsize.__UNIQUE_ID_ddebug555, ptr noundef %dev.i, ptr noundef nonnull @.str.90, i32 noundef %authsize) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %4 = zext i32 %authsize to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %authsize, label %do.end.cleanup_crit_edge [
    i32 8, label %do.end.lor.lhs.false.i_crit_edge
    i32 12, label %do.end.lor.lhs.false.i_crit_edge12
    i32 16, label %do.end.lor.lhs.false.i_crit_edge13
  ]

do.end.lor.lhs.false.i_crit_edge13:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

do.end.lor.lhs.false.i_crit_edge12:               ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

do.end.lor.lhs.false.i_crit_edge:                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %lor.lhs.false.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false.i:                                  ; preds = %do.end.lor.lhs.false.i_crit_edge, %do.end.lor.lhs.false.i_crit_edge12, %do.end.lor.lhs.false.i_crit_edge13
  %5 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i.i = getelementptr inbounds %struct.cc_drvdata, ptr %6, i32 0, i32 3
  %7 = ptrtoint ptr %plat_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %plat_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %8, i32 0, i32 3
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %maxauthsize.i.i.i = getelementptr i8, ptr %10, i32 -100
  %11 = ptrtoint ptr %maxauthsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %maxauthsize.i.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %authsize)
  %cmp3.i = icmp ult i32 %12, %authsize
  br i1 %cmp3.i, label %lor.lhs.false.i.cleanup_crit_edge, label %if.end.i

lor.lhs.false.i.cleanup_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  %authsize4.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 32
  %13 = ptrtoint ptr %authsize4.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %authsize, ptr %authsize4.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_setauthsize.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_rfc4106_gcm_setauthsize, %if.then8.i)) #6
          to label %cleanup [label %if.then8.i], !srcloc !210

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %authsize4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %authsize4.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_setauthsize.__UNIQUE_ID_ddebug540, ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef %15) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %if.end.i, %lor.lhs.false.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ -524, %lor.lhs.false.i.cleanup_crit_edge ], [ 0, %if.then8.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_rfc4106_gcm_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = add i32 %1, -16
  %switch.and.i = and i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %3 = call ptr @memset(ptr %__ctx.i, i32 0, i32 1152)
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iv, align 32
  %backup_iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 4
  %6 = ptrtoint ptr %backup_iv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %backup_iv, align 4
  %sub = add i32 %1, -8
  %assoclen3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 5
  %7 = ptrtoint ptr %assoclen3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %assoclen3, align 8
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm.i.i, align 16
  %ctr_iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %ctr_nonce.i = getelementptr i8, ptr %9, i32 132
  %10 = ptrtoint ptr %ctr_nonce.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctr_nonce.i, align 4
  %12 = ptrtoint ptr %ctr_iv.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %ctr_iv.i, align 1
  %add.ptr6.i = getelementptr %struct.aead_request, ptr %req, i32 2, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %5, align 1
  %15 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %add.ptr6.i, align 1
  store ptr %ctr_iv.i, ptr %iv, align 32
  %call4 = tail call fastcc i32 @cc_proc_aead(ptr noundef %req, i32 noundef 0)
  %16 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %call4, label %if.then6 [
    i32 -115, label %if.end.out_crit_edge
    i32 -16, label %out.fold.split
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %backup_iv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %backup_iv, align 4
  %19 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %iv, align 32
  br label %out

out.fold.split:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %out.fold.split, %if.then6, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -22, %entry.out_crit_edge ], [ %call4, %if.then6 ], [ %call4, %if.end.out_crit_edge ], [ -16, %out.fold.split ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_rfc4106_gcm_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = add i32 %1, -16
  %switch.and.i = and i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %3 = call ptr @memset(ptr %__ctx.i, i32 0, i32 1152)
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %4 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iv, align 32
  %backup_iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 4
  %6 = ptrtoint ptr %backup_iv to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %backup_iv, align 4
  %sub = add i32 %1, -8
  %assoclen3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 5
  %7 = ptrtoint ptr %assoclen3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %sub, ptr %assoclen3, align 8
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %8 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm.i.i, align 16
  %ctr_iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %ctr_nonce.i = getelementptr i8, ptr %9, i32 132
  %10 = ptrtoint ptr %ctr_nonce.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ctr_nonce.i, align 4
  %12 = ptrtoint ptr %ctr_iv.i to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %11, ptr %ctr_iv.i, align 1
  %add.ptr6.i = getelementptr %struct.aead_request, ptr %req, i32 2, i32 0, i32 0, i32 1
  %13 = ptrtoint ptr %5 to i32
  call void @__asan_loadN_noabort(i32 %13, i32 8)
  %14 = load i64, ptr %5, align 1
  %15 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_storeN_noabort(i32 %15, i32 8)
  store i64 %14, ptr %add.ptr6.i, align 1
  store ptr %ctr_iv.i, ptr %iv, align 32
  %call4 = tail call fastcc i32 @cc_proc_aead(ptr noundef %req, i32 noundef 1)
  %16 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.106)
  switch i32 %call4, label %if.then6 [
    i32 -115, label %if.end.out_crit_edge
    i32 -16, label %out.fold.split
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %17 = ptrtoint ptr %backup_iv to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %backup_iv, align 4
  %19 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %18, ptr %iv, align 32
  br label %out

out.fold.split:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %out.fold.split, %if.then6, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -22, %entry.out_crit_edge ], [ %call4, %if.then6 ], [ %call4, %if.end.out_crit_edge ], [ -16, %out.fold.split ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_rfc4543_gcm_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_rfc4543_gcm_setkey.__UNIQUE_ID_ddebug554, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_rfc4543_gcm_setkey, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !210

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_rfc4543_gcm_setkey.__UNIQUE_ID_ddebug554, ptr noundef %dev.i, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.91, i32 noundef %keylen, ptr noundef %key) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen)
  %cmp = icmp ult i32 %keylen, 4
  br i1 %cmp, label %do.end.cleanup_crit_edge, label %if.end6

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %sub = add i32 %keylen, -4
  %ctr_nonce = getelementptr inbounds %struct.crypto_aead, ptr %tfm, i32 1, i32 1
  %add.ptr = getelementptr i8, ptr %key, i32 %sub
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_loadN_noabort(i32 %4, i32 4)
  %5 = load i32, ptr %add.ptr, align 1
  %6 = ptrtoint ptr %ctr_nonce to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %ctr_nonce, align 4
  %call7 = tail call i32 @cc_aead_setkey(ptr noundef %tfm, ptr noundef %key, i32 noundef %sub)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %call7, %if.end6 ], [ -22, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_rfc4543_gcm_setauthsize(ptr nocapture noundef %authenc, i32 noundef %authsize) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_rfc4543_gcm_setauthsize.__UNIQUE_ID_ddebug556, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_rfc4543_gcm_setauthsize, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !210

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_rfc4543_gcm_setauthsize.__UNIQUE_ID_ddebug556, ptr noundef %dev.i, ptr noundef nonnull @.str.90, i32 noundef %authsize) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %authsize)
  %cmp.not = icmp eq i32 %authsize, 16
  br i1 %cmp.not, label %if.end6, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %do.end
  %4 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i.i = getelementptr inbounds %struct.cc_drvdata, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %plat_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plat_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %__crt_alg.i.i.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 0, i32 3, i32 3
  %8 = ptrtoint ptr %__crt_alg.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i.i, align 4
  %maxauthsize.i.i.i = getelementptr i8, ptr %9, i32 -100
  %10 = ptrtoint ptr %maxauthsize.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %maxauthsize.i.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %11)
  %cmp3.i = icmp ult i32 %11, 16
  br i1 %cmp3.i, label %if.end6.cleanup_crit_edge, label %if.end.i

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end.i:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  %authsize4.i = getelementptr inbounds %struct.crypto_aead, ptr %authenc, i32 1, i32 2, i32 32
  %12 = ptrtoint ptr %authsize4.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16, ptr %authsize4.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_setauthsize.__UNIQUE_ID_ddebug540, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_rfc4543_gcm_setauthsize, %if.then8.i)) #6
          to label %cleanup [label %if.then8.i], !srcloc !210

if.then8.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %13 = ptrtoint ptr %authsize4.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %authsize4.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_setauthsize.__UNIQUE_ID_ddebug540, ptr noundef %dev.i.i, ptr noundef nonnull @.str.29, i32 noundef %14) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then8.i, %if.end.i, %if.end6.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %do.end.cleanup_crit_edge ], [ -524, %if.end6.cleanup_crit_edge ], [ 0, %if.then8.i ], [ 0, %if.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_rfc4543_gcm_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = add i32 %1, -16
  %switch.and.i = and i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %3 = call ptr @memset(ptr %__ctx.i, i32 0, i32 1152)
  %plaintext_authenticate_only = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 42
  %4 = ptrtoint ptr %plaintext_authenticate_only to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %plaintext_authenticate_only, align 2
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iv, align 32
  %backup_iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 4
  %7 = ptrtoint ptr %backup_iv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %backup_iv, align 4
  %assoclen3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 5
  %8 = ptrtoint ptr %assoclen3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %assoclen3, align 8
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tfm.i.i, align 16
  %ctr_iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %ctr_nonce.i = getelementptr i8, ptr %10, i32 132
  %11 = ptrtoint ptr %ctr_nonce.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctr_nonce.i, align 4
  %13 = ptrtoint ptr %ctr_iv.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %ctr_iv.i, align 1
  %add.ptr6.i = getelementptr %struct.aead_request, ptr %req, i32 2, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %6, align 1
  %16 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %add.ptr6.i, align 1
  store ptr %ctr_iv.i, ptr %iv, align 32
  %call4 = tail call fastcc i32 @cc_proc_aead(ptr noundef %req, i32 noundef 0)
  %17 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.107)
  switch i32 %call4, label %if.then6 [
    i32 -115, label %if.end.out_crit_edge
    i32 -16, label %out.fold.split
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %backup_iv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %backup_iv, align 4
  %20 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %iv, align 32
  br label %out

out.fold.split:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %out.fold.split, %if.then6, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -22, %entry.out_crit_edge ], [ %call4, %if.then6 ], [ %call4, %if.end.out_crit_edge ], [ -16, %out.fold.split ]
  ret i32 %rc.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_rfc4543_gcm_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 1
  %0 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %assoclen, align 8
  %2 = add i32 %1, -16
  %switch.and.i = and i32 %2, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp.i, label %if.end, label %entry.out_crit_edge

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.end:                                           ; preds = %entry
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %3 = call ptr @memset(ptr %__ctx.i, i32 0, i32 1152)
  %plaintext_authenticate_only = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 42
  %4 = ptrtoint ptr %plaintext_authenticate_only to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %plaintext_authenticate_only, align 2
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %5 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iv, align 32
  %backup_iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 4
  %7 = ptrtoint ptr %backup_iv to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %6, ptr %backup_iv, align 4
  %assoclen3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 5
  %8 = ptrtoint ptr %assoclen3 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %1, ptr %assoclen3, align 8
  %tfm.i.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %9 = ptrtoint ptr %tfm.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %tfm.i.i, align 16
  %ctr_iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %ctr_nonce.i = getelementptr i8, ptr %10, i32 132
  %11 = ptrtoint ptr %ctr_nonce.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ctr_nonce.i, align 4
  %13 = ptrtoint ptr %ctr_iv.i to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %12, ptr %ctr_iv.i, align 1
  %add.ptr6.i = getelementptr %struct.aead_request, ptr %req, i32 2, i32 0, i32 0, i32 1
  %14 = ptrtoint ptr %6 to i32
  call void @__asan_loadN_noabort(i32 %14, i32 8)
  %15 = load i64, ptr %6, align 1
  %16 = ptrtoint ptr %add.ptr6.i to i32
  call void @__asan_storeN_noabort(i32 %16, i32 8)
  store i64 %15, ptr %add.ptr6.i, align 1
  store ptr %ctr_iv.i, ptr %iv, align 32
  %call4 = tail call fastcc i32 @cc_proc_aead(ptr noundef %req, i32 noundef 1)
  %17 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %17, ptr @__sancov_gen_cov_switch_values.108)
  switch i32 %call4, label %if.then6 [
    i32 -115, label %if.end.out_crit_edge
    i32 -16, label %out.fold.split
  ]

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %18 = ptrtoint ptr %backup_iv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %backup_iv, align 4
  %20 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %iv, align 32
  br label %out

out.fold.split:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %out

out:                                              ; preds = %out.fold.split, %if.then6, %if.end.out_crit_edge, %entry.out_crit_edge
  %rc.0 = phi i32 [ -22, %entry.out_crit_edge ], [ %call4, %if.then6 ], [ %call4, %if.end.out_crit_edge ], [ -16, %out.fold.split ]
  ret i32 %rc.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_authenc_extractkeys(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @validate_keys_sizes(ptr nocapture noundef readonly %ctx) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %ctx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctx, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @validate_keys_sizes.__UNIQUE_ID_ddebug535, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@validate_keys_sizes, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !210

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %enc_keylen = getelementptr inbounds %struct.cc_aead_ctx, ptr %ctx, i32 0, i32 5
  %4 = ptrtoint ptr %enc_keylen to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %enc_keylen, align 4
  %auth_keylen = getelementptr inbounds %struct.cc_aead_ctx, ptr %ctx, i32 0, i32 6
  %6 = ptrtoint ptr %auth_keylen to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %auth_keylen, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @validate_keys_sizes.__UNIQUE_ID_ddebug535, ptr noundef %dev.i, ptr noundef nonnull @.str.18, i32 noundef %5, i32 noundef %7) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %auth_mode = getelementptr inbounds %struct.cc_aead_ctx, ptr %ctx, i32 0, i32 11
  %8 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %auth_mode, align 4
  %10 = zext i32 %9 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.109)
  switch i32 %9, label %do.body18 [
    i32 0, label %do.end.sw.epilog_crit_edge
    i32 1, label %do.end.sw.epilog_crit_edge118
    i32 7, label %sw.bb4
    i32 -1, label %sw.bb13
  ]

do.end.sw.epilog_crit_edge118:                    ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4:                                           ; preds = %do.end
  %auth_keylen5 = getelementptr inbounds %struct.cc_aead_ctx, ptr %ctx, i32 0, i32 6
  %11 = ptrtoint ptr %auth_keylen5 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %auth_keylen5, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.110)
  switch i32 %12, label %sw.bb4.cleanup_crit_edge [
    i32 16, label %sw.bb4.sw.epilog_crit_edge
    i32 24, label %sw.bb4.sw.epilog_crit_edge119
    i32 32, label %sw.bb4.sw.epilog_crit_edge120
  ]

sw.bb4.sw.epilog_crit_edge120:                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4.sw.epilog_crit_edge119:                    ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4.sw.epilog_crit_edge:                       ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb13:                                          ; preds = %do.end
  %auth_keylen14 = getelementptr inbounds %struct.cc_aead_ctx, ptr %ctx, i32 0, i32 6
  %14 = ptrtoint ptr %auth_keylen14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %auth_keylen14, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %cmp15.not = icmp eq i32 %15, 0
  br i1 %cmp15.not, label %sw.bb13.sw.epilog_crit_edge, label %sw.bb13.cleanup_crit_edge

sw.bb13.cleanup_crit_edge:                        ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

sw.bb13.sw.epilog_crit_edge:                      ; preds = %sw.bb13
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body18:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @validate_keys_sizes.__UNIQUE_ID_ddebug536, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@validate_keys_sizes, %if.then30)) #6
          to label %cleanup [label %if.then30], !srcloc !210

if.then30:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #8
  %16 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %auth_mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @validate_keys_sizes.__UNIQUE_ID_ddebug536, ptr noundef %dev.i, ptr noundef nonnull @.str.19, i32 noundef %17) #6
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb13.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge, %sw.bb4.sw.epilog_crit_edge119, %sw.bb4.sw.epilog_crit_edge120, %do.end.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge118
  %flow_mode = getelementptr inbounds %struct.cc_aead_ctx, ptr %ctx, i32 0, i32 10
  %18 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %flow_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 34, i32 %19)
  %cmp35 = icmp eq i32 %19, 34
  %enc_keylen37 = getelementptr inbounds %struct.cc_aead_ctx, ptr %ctx, i32 0, i32 5
  %20 = ptrtoint ptr %enc_keylen37 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %enc_keylen37, align 4
  br i1 %cmp35, label %if.then36, label %if.else

if.then36:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %21)
  %cmp38.not = icmp eq i32 %21, 24
  br i1 %cmp38.not, label %if.then36.cleanup_crit_edge, label %do.body40

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body40:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @validate_keys_sizes.__UNIQUE_ID_ddebug537, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@validate_keys_sizes, %if.then52)) #6
          to label %cleanup [label %if.then52], !srcloc !210

if.then52:                                        ; preds = %do.body40
  call void @__sanitizer_cov_trace_pc() #8
  %22 = ptrtoint ptr %enc_keylen37 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %enc_keylen37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @validate_keys_sizes.__UNIQUE_ID_ddebug537, ptr noundef %dev.i, ptr noundef nonnull @.str.20, i32 noundef %23) #6
  br label %cleanup

if.else:                                          ; preds = %sw.epilog
  %24 = zext i32 %21 to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values.111)
  switch i32 %21, label %do.body67 [
    i32 16, label %if.else.cleanup_crit_edge
    i32 24, label %if.else.cleanup_crit_edge121
    i32 32, label %if.else.cleanup_crit_edge122
  ]

if.else.cleanup_crit_edge122:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.cleanup_crit_edge121:                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.body67:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @validate_keys_sizes.__UNIQUE_ID_ddebug538, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@validate_keys_sizes, %if.then79)) #6
          to label %cleanup [label %if.then79], !srcloc !210

if.then79:                                        ; preds = %do.body67
  call void @__sanitizer_cov_trace_pc() #8
  %25 = ptrtoint ptr %enc_keylen37 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %enc_keylen37, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @validate_keys_sizes.__UNIQUE_ID_ddebug538, ptr noundef %dev.i, ptr noundef nonnull @.str.21, i32 noundef %26) #6
  br label %cleanup

cleanup:                                          ; preds = %if.then79, %do.body67, %if.else.cleanup_crit_edge, %if.else.cleanup_crit_edge121, %if.else.cleanup_crit_edge122, %if.then52, %do.body40, %if.then36.cleanup_crit_edge, %if.then30, %do.body18, %sw.bb13.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge
  %retval.0 = phi i32 [ -524, %sw.bb4.cleanup_crit_edge ], [ -22, %sw.bb13.cleanup_crit_edge ], [ -22, %if.then30 ], [ -22, %if.then52 ], [ -22, %if.then79 ], [ 0, %if.else.cleanup_crit_edge ], [ 0, %if.else.cleanup_crit_edge121 ], [ 0, %if.else.cleanup_crit_edge122 ], [ 0, %if.then36.cleanup_crit_edge ], [ -22, %do.body18 ], [ -22, %do.body40 ], [ -22, %do.body67 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_send_sync_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_larval_digest_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_proc_aead(ptr noundef %req, i32 noundef %direct) unnamed_addr #0 align 64 {
entry:
  %idx.i = alloca i32, align 4
  %idx.i105.i = alloca i32, align 4
  %idx.i58.i = alloca i32, align 4
  %idx.i.i261 = alloca i32, align 4
  %idx.i129.i = alloca i32, align 4
  %idx.i69.i = alloca i32, align 4
  %idx.i.i = alloca i32, align 4
  %seq_len = alloca i32, align 4
  %desc = alloca [23 x %struct.cc_hw_desc], align 4
  %cc_req = alloca %struct.cc_crypto_req, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq_len) #6
  %0 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %seq_len, align 4
  call void @llvm.lifetime.start.p0(i64 552, ptr nonnull %desc) #6
  %1 = call ptr @memset(ptr %desc, i32 255, i32 552)
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %3, i32 128
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %4 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %cc_req) #6
  %8 = getelementptr inbounds i8, ptr %cc_req, i32 8
  %9 = call ptr @memset(ptr %8, i32 0, i32 68)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_proc_aead.__UNIQUE_ID_ddebug550, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_proc_aead, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !210

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direct)
  %cmp = icmp eq i32 %direct, 0
  %cond = select i1 %cmp, ptr @.str.32, ptr @.str.33
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %10 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iv, align 32
  %src = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 4
  %12 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %13, align 4
  %and.i.i.i = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !211

do.body2.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !213
  unreachable

sg_virt.exit:                                     ; preds = %if.then
  %and.i.i = and i32 %15, -4
  %16 = inttoptr i32 %and.i.i to ptr
  %call1.i = tail call ptr @page_address(ptr noundef %16) #6
  %dst = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 5
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst, align 8
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %18, align 4
  %and.i.i.i235 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i235)
  %tobool.i.not.i.i236 = icmp eq i32 %and.i.i.i235, 0
  br i1 %tobool.i.not.i.i236, label %sg_virt.exit242, label %do.body2.i.i237, !prof !211

do.body2.i.i237:                                  ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #6, !srcloc !213
  unreachable

sg_virt.exit242:                                  ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %offset, align 4
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %13, i32 0, i32 1
  %25 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %26
  %and.i.i238 = and i32 %20, -4
  %27 = inttoptr i32 %and.i.i238 to ptr
  %call1.i239 = tail call ptr @page_address(ptr noundef %27) #6
  %offset.i240 = getelementptr inbounds %struct.scatterlist, ptr %18, i32 0, i32 1
  %28 = ptrtoint ptr %offset.i240 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %offset.i240, align 4
  %add.ptr.i241 = getelementptr i8, ptr %call1.i239, i32 %29
  %30 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dst, align 8
  %offset11 = getelementptr inbounds %struct.scatterlist, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %offset11 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %offset11, align 4
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %34 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %cryptlen, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_proc_aead.__UNIQUE_ID_ddebug550, ptr noundef %dev.i, ptr noundef nonnull @.str.31, ptr noundef nonnull %cond, ptr noundef %__crt_ctx.i.i, ptr noundef %req, ptr noundef %11, ptr noundef %add.ptr.i, i32 noundef %24, ptr noundef %add.ptr.i241, i32 noundef %33, i32 noundef %35) #6
  br label %do.end

do.end:                                           ; preds = %sg_virt.exit242, %entry
  %36 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i.i = getelementptr inbounds %struct.cc_drvdata, ptr %37, i32 0, i32 3
  %38 = ptrtoint ptr %plat_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %plat_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %39, i32 0, i32 3
  %assoclen2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 5
  %40 = ptrtoint ptr %assoclen2.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %assoclen2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direct)
  %cmp.i = icmp eq i32 %direct, 1
  %cryptlen.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %42 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %cryptlen.i, align 4
  br i1 %cmp.i, label %land.lhs.true.i, label %do.end.if.end.i_crit_edge

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i:                                  ; preds = %do.end
  %authsize.i = getelementptr i8, ptr %3, i32 168
  %44 = ptrtoint ptr %authsize.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %authsize.i, align 4
  %sub.i = sub i32 %43, %45
  call void @__sanitizer_cov_trace_cmp4(i32 %43, i32 %45)
  %cmp7.i = icmp ult i32 %43, %45
  br i1 %cmp7.i, label %land.lhs.true.i.do.end17_crit_edge, label %land.lhs.true.i.if.end.i_crit_edge

land.lhs.true.i.if.end.i_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

land.lhs.true.i.do.end17_crit_edge:               ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

if.end.i:                                         ; preds = %land.lhs.true.i.if.end.i_crit_edge, %do.end.if.end.i_crit_edge
  %cond74.i = phi i32 [ %sub.i, %land.lhs.true.i.if.end.i_crit_edge ], [ %43, %do.end.if.end.i_crit_edge ]
  %is_single_pass.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 41
  %46 = ptrtoint ptr %is_single_pass.i to i32
  call void @__asan_store1_noabort(i32 %46)
  store i8 1, ptr %is_single_pass.i, align 1
  %flow_mode.i = getelementptr i8, ptr %3, i32 180
  %47 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flow_mode.i, align 4
  %49 = zext i32 %48 to i64
  call void @__sanitizer_cov_trace_switch(i64 %49, ptr @__sancov_gen_cov_switch_values.112)
  switch i32 %48, label %do.end.i [
    i32 32, label %sw.bb.i
    i32 34, label %sw.bb37.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  %cipher_mode.i = getelementptr i8, ptr %3, i32 176
  %50 = ptrtoint ptr %cipher_mode.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cipher_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %51)
  %cmp8.i = icmp ne i32 %51, 1
  %and.i = and i32 %cond74.i, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp10.i = icmp eq i32 %and.i, 0
  %or.cond.i = select i1 %cmp8.i, i1 true, i1 %cmp10.i
  br i1 %or.cond.i, label %if.end12.i, label %sw.bb.i.do.end17_crit_edge

sw.bb.i.do.end17_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

if.end12.i:                                       ; preds = %sw.bb.i
  %52 = zext i32 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %52, ptr @__sancov_gen_cov_switch_values.113)
  switch i32 %51, label %if.end23.i [
    i32 8, label %if.end12.i.if.end19_crit_edge
    i32 12, label %if.then19.i
  ]

if.end12.i.if.end19_crit_edge:                    ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.then19.i:                                      ; preds = %if.end12.i
  %plaintext_authenticate_only.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 42
  %53 = ptrtoint ptr %plaintext_authenticate_only.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %plaintext_authenticate_only.i, align 2, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool.not.i = icmp eq i8 %54, 0
  br i1 %tobool.not.i, label %if.then19.i.if.end19_crit_edge, label %if.then19.i.if.end19.sink.split_crit_edge

if.then19.i.if.end19.sink.split_crit_edge:        ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.sink.split

if.then19.i.if.end19_crit_edge:                   ; preds = %if.then19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

if.end23.i:                                       ; preds = %if.end12.i
  %and24.i = and i32 %41, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24.i)
  %cmp25.i = icmp eq i32 %and24.i, 0
  br i1 %cmp25.i, label %if.end23.i.if.end28.i_crit_edge, label %if.then26.i

if.end23.i.if.end28.i_crit_edge:                  ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end28.i

if.then26.i:                                      ; preds = %if.end23.i
  call void @__sanitizer_cov_trace_pc() #8
  %55 = ptrtoint ptr %is_single_pass.i to i32
  call void @__asan_store1_noabort(i32 %55)
  store i8 0, ptr %is_single_pass.i, align 1
  br label %if.end28.i

if.end28.i:                                       ; preds = %if.then26.i, %if.end23.i.if.end28.i_crit_edge
  %56 = ptrtoint ptr %cipher_mode.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %cipher_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %57)
  %cmp30.i = icmp ne i32 %57, 2
  %and32.i = and i32 %cond74.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32.i)
  %cmp33.i = icmp eq i32 %and32.i, 0
  %or.cond72.i = select i1 %cmp30.i, i1 true, i1 %cmp33.i
  br i1 %or.cond72.i, label %if.end28.i.if.end19_crit_edge, label %if.end28.i.if.end19.sink.split_crit_edge

if.end28.i.if.end19.sink.split_crit_edge:         ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.sink.split

if.end28.i.if.end19_crit_edge:                    ; preds = %if.end28.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

sw.bb37.i:                                        ; preds = %if.end.i
  %and38.i = and i32 %cond74.i, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and38.i)
  %cmp39.i = icmp eq i32 %and38.i, 0
  br i1 %cmp39.i, label %if.end41.i, label %sw.bb37.i.do.end17_crit_edge

sw.bb37.i.do.end17_crit_edge:                     ; preds = %sw.bb37.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end17

if.end41.i:                                       ; preds = %sw.bb37.i
  %and42.i = and i32 %41, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and42.i)
  %cmp43.i = icmp eq i32 %and42.i, 0
  br i1 %cmp43.i, label %if.end41.i.if.end19_crit_edge, label %if.end41.i.if.end19.sink.split_crit_edge

if.end41.i.if.end19.sink.split_crit_edge:         ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.sink.split

if.end41.i.if.end19_crit_edge:                    ; preds = %if.end41.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.44, i32 noundef %48) #9
  br label %do.end17

do.end17:                                         ; preds = %do.end.i, %sw.bb37.i.do.end17_crit_edge, %sw.bb.i.do.end17_crit_edge, %land.lhs.true.i.do.end17_crit_edge
  %58 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %cryptlen.i, align 4
  %60 = ptrtoint ptr %assoclen2.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %assoclen2.i, align 8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.34, i32 noundef %59, i32 noundef %61) #9
  br label %cleanup

if.end19.sink.split:                              ; preds = %if.end41.i.if.end19.sink.split_crit_edge, %if.end28.i.if.end19.sink.split_crit_edge, %if.then19.i.if.end19.sink.split_crit_edge
  %62 = ptrtoint ptr %is_single_pass.i to i32
  call void @__asan_store1_noabort(i32 %62)
  store i8 0, ptr %is_single_pass.i, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.end19.sink.split, %if.end41.i.if.end19_crit_edge, %if.end28.i.if.end19_crit_edge, %if.then19.i.if.end19_crit_edge, %if.end12.i.if.end19_crit_edge
  %63 = ptrtoint ptr %cc_req to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @cc_aead_complete, ptr %cc_req, align 4
  %user_arg = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 1
  %64 = ptrtoint ptr %user_arg to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %req, ptr %user_arg, align 4
  %op_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 40
  %65 = ptrtoint ptr %op_type to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %direct, ptr %op_type, align 4
  %authsize = getelementptr i8, ptr %3, i32 168
  %66 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %authsize, align 4
  %req_authsize = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 32
  %68 = ptrtoint ptr %req_authsize to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %req_authsize, align 4
  %cipher_mode = getelementptr i8, ptr %3, i32 176
  %69 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %cipher_mode, align 4
  %cipher_mode20 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 36
  %71 = ptrtoint ptr %cipher_mode20 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %cipher_mode20, align 16
  %72 = load i32, ptr %cipher_mode, align 4
  %73 = zext i32 %72 to i64
  call void @__sanitizer_cov_trace_switch(i64 %73, ptr @__sancov_gen_cov_switch_values.114)
  switch i32 %72, label %if.else54 [
    i32 2, label %if.then23
    i32 8, label %if.end19.if.then39_crit_edge
    i32 12, label %if.end19.if.then39_crit_edge381
  ]

if.end19.if.then39_crit_edge381:                  ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.end19.if.then39_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then39

if.then23:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %ctr_iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %ctr_nonce = getelementptr i8, ptr %3, i32 132
  %74 = ptrtoint ptr %ctr_nonce to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %ctr_nonce, align 4
  %76 = ptrtoint ptr %ctr_iv to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %ctr_iv, align 128
  %add.ptr = getelementptr %struct.aead_request, ptr %req, i32 2, i32 0, i32 0, i32 1
  %iv27 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %77 = ptrtoint ptr %iv27 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %iv27, align 32
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_loadN_noabort(i32 %79, i32 8)
  %80 = load i64, ptr %78, align 1
  %81 = ptrtoint ptr %add.ptr to i32
  call void @__asan_storeN_noabort(i32 %81, i32 8)
  store i64 %80, ptr %add.ptr, align 1
  %add.ptr31 = getelementptr %struct.aead_request, ptr %req, i32 2, i32 0, i32 2
  %82 = ptrtoint ptr %add.ptr31 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 1, ptr %add.ptr31, align 4
  store ptr %ctr_iv, ptr %iv27, align 32
  %hw_iv_size = getelementptr inbounds %struct.aead_request, ptr %req, i32 8
  %83 = ptrtoint ptr %hw_iv_size to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 16, ptr %hw_iv_size, align 128
  br label %if.end58

if.then39:                                        ; preds = %if.end19.if.then39_crit_edge, %if.end19.if.then39_crit_edge381
  %hw_iv_size40 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8
  %84 = ptrtoint ptr %hw_iv_size40 to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 16, ptr %hw_iv_size40, align 128
  %ctr_iv41 = getelementptr inbounds %struct.aead_request, ptr %req, i32 2
  %iv43 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %85 = ptrtoint ptr %iv43 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %iv43, align 32
  %cmp44.not = icmp eq ptr %ctr_iv41, %86
  br i1 %cmp44.not, label %if.then39.if.end58_crit_edge, label %if.then45

if.then39.if.end58_crit_edge:                     ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end58

if.then45:                                        ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_alg.i.i = getelementptr i8, ptr %3, i32 12
  %87 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i.i = getelementptr i8, ptr %88, i32 -104
  %89 = ptrtoint ptr %ivsize.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ivsize.i.i, align 8
  %91 = call ptr @memcpy(ptr %ctr_iv41, ptr %86, i32 %90)
  %92 = ptrtoint ptr %iv43 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %ctr_iv41, ptr %iv43, align 32
  br label %if.end58

if.else54:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  %__crt_alg.i.i244 = getelementptr i8, ptr %3, i32 12
  %93 = ptrtoint ptr %__crt_alg.i.i244 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %__crt_alg.i.i244, align 4
  %ivsize.i.i245 = getelementptr i8, ptr %94, i32 -104
  %95 = ptrtoint ptr %ivsize.i.i245 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %ivsize.i.i245, align 8
  %hw_iv_size56 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8
  %97 = ptrtoint ptr %hw_iv_size56 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %96, ptr %hw_iv_size56, align 128
  br label %if.end58

if.end58:                                         ; preds = %if.else54, %if.then45, %if.then39.if.end58_crit_edge, %if.then23
  %98 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %cipher_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %99)
  %cmp60 = icmp eq i32 %99, 8
  br i1 %cmp60, label %if.then61, label %if.else82

if.then61:                                        ; preds = %if.end58
  %call62 = tail call fastcc i32 @config_ccm_adata(ptr noundef %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool63.not = icmp eq i32 %call62, 0
  br i1 %tobool63.not, label %if.then61.if.end83_crit_edge, label %do.body65

if.then61.if.end83_crit_edge:                     ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end83

do.body65:                                        ; preds = %if.then61
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_proc_aead.__UNIQUE_ID_ddebug551, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_proc_aead, %if.then77)) #6
          to label %cleanup [label %if.then77], !srcloc !210

if.then77:                                        ; preds = %do.body65
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_proc_aead.__UNIQUE_ID_ddebug551, ptr noundef %dev.i, ptr noundef nonnull @.str.35, i32 noundef %call62) #6
  br label %cleanup

if.else82:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #8
  %ccm_hdr_size = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 28
  %100 = ptrtoint ptr %ccm_hdr_size to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 -1, ptr %ccm_hdr_size, align 8
  br label %if.end83

if.end83:                                         ; preds = %if.else82, %if.then61.if.end83_crit_edge
  %101 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %cipher_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %102)
  %cmp85 = icmp eq i32 %102, 12
  br i1 %cmp85, label %if.then86, label %if.end83.if.end107_crit_edge

if.end83.if.end107_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end107

if.then86:                                        ; preds = %if.end83
  %103 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i = getelementptr i8, ptr %104, i32 128
  %105 = ptrtoint ptr %__crt_ctx.i.i.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %__crt_ctx.i.i.i, align 4
  %plat_dev.i.i246 = getelementptr inbounds %struct.cc_drvdata, ptr %106, i32 0, i32 3
  %107 = ptrtoint ptr %plat_dev.i.i246 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %plat_dev.i.i246, align 4
  %dev.i.i247 = getelementptr inbounds %struct.platform_device, ptr %108, i32 0, i32 3
  %109 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %op_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %cmp.i248 = icmp eq i32 %110, 0
  %111 = ptrtoint ptr %cryptlen.i to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %cryptlen.i, align 4
  br i1 %cmp.i248, label %if.then86.cond.end.i_crit_edge, label %cond.false.i

if.then86.cond.end.i_crit_edge:                   ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  br label %cond.end.i

cond.false.i:                                     ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #8
  %authsize.i249 = getelementptr i8, ptr %104, i32 168
  %113 = ptrtoint ptr %authsize.i249 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %authsize.i249, align 4
  %sub.i250 = sub i32 %112, %114
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %if.then86.cond.end.i_crit_edge
  %cond.i = phi i32 [ %sub.i250, %cond.false.i ], [ %112, %if.then86.cond.end.i_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_gcm_context.__UNIQUE_ID_ddebug549, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_proc_aead, %if.then.i)) #6
          to label %config_gcm_context.exit [label %if.then.i], !srcloc !210

if.then.i:                                        ; preds = %cond.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %115 = ptrtoint ptr %assoclen2.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %assoclen2.i, align 8
  %authsize9.i = getelementptr i8, ptr %104, i32 168
  %117 = ptrtoint ptr %authsize9.i to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %authsize9.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_gcm_context.__UNIQUE_ID_ddebug549, ptr noundef %dev.i.i247, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef %cond.i, i32 noundef %116, i32 noundef %118) #6
  br label %config_gcm_context.exit

config_gcm_context.exit:                          ; preds = %if.then.i, %cond.end.i
  %hkey.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 5
  %119 = call ptr @memset(ptr %hkey.i, i32 0, i32 16)
  %120 = call ptr @memset(ptr %__ctx.i, i32 0, i32 16)
  %iv.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %121 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %iv.i, align 32
  %add.ptr.i251 = getelementptr i8, ptr %122, i32 12
  %123 = ptrtoint ptr %add.ptr.i251 to i32
  call void @__asan_storeN_noabort(i32 %123, i32 4)
  store i32 2, ptr %add.ptr.i251, align 1
  %gcm_iv_inc2.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 4
  %124 = load ptr, ptr %iv.i, align 32
  %125 = call ptr @memcpy(ptr %gcm_iv_inc2.i, ptr %124, i32 16)
  %add.ptr14.i = getelementptr i8, ptr %124, i32 12
  %126 = ptrtoint ptr %add.ptr14.i to i32
  call void @__asan_storeN_noabort(i32 %126, i32 4)
  store i32 1, ptr %add.ptr14.i, align 1
  %gcm_iv_inc1.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 3
  %127 = load ptr, ptr %iv.i, align 32
  %128 = call ptr @memcpy(ptr %gcm_iv_inc1.i, ptr %127, i32 16)
  %plaintext_authenticate_only.i252 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 42
  %129 = ptrtoint ptr %plaintext_authenticate_only.i252 to i32
  call void @__asan_load1_noabort(i32 %129)
  %130 = load i8, ptr %plaintext_authenticate_only.i252, align 2, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %130)
  %tobool17.not.i = icmp eq i8 %130, 0
  %131 = ptrtoint ptr %assoclen2.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %assoclen2.i, align 8
  %mul20.i = shl i32 %cond.i, 3
  %conv21.i = zext i32 %mul20.i to i64
  %add.i = select i1 %tobool17.not.i, i32 0, i32 %cond.i
  %conv26.sink.in.in.i = add i32 %add.i, %132
  %.sink.i = select i1 %tobool17.not.i, i64 %conv21.i, i64 0
  %conv26.sink.in.i = shl i32 %conv26.sink.in.in.i, 3
  %conv26.sink.i = zext i32 %conv26.sink.in.i to i64
  %133 = getelementptr inbounds %struct.aead_request, ptr %req, i32 6
  %134 = ptrtoint ptr %133 to i32
  call void @__asan_store8_noabort(i32 %134)
  store i64 %conv26.sink.i, ptr %133, align 128
  %135 = getelementptr inbounds %struct.aead_request, ptr %req, i32 6, i32 0, i32 1
  %136 = ptrtoint ptr %135 to i32
  call void @__asan_store8_noabort(i32 %136)
  store i64 %.sink.i, ptr %135, align 8
  br label %if.end107

if.end107:                                        ; preds = %config_gcm_context.exit, %if.end83.if.end107_crit_edge
  %137 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call109 = tail call i32 @cc_map_aead_request(ptr noundef %138, ptr noundef %req) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call109)
  %tobool110.not = icmp eq i32 %call109, 0
  br i1 %tobool110.not, label %if.end115, label %do.end114

do.end114:                                        ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.38) #9
  br label %cleanup

if.end115:                                        ; preds = %if.end107
  call fastcc void @cc_mlli_to_sram(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len)
  %auth_mode = getelementptr i8, ptr %3, i32 184
  %139 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %auth_mode, align 4
  %141 = zext i32 %140 to i64
  call void @__sanitizer_cov_trace_switch(i64 %141, ptr @__sancov_gen_cov_switch_values.115)
  switch i32 %140, label %do.end135 [
    i32 0, label %if.end115.sw.bb_crit_edge
    i32 1, label %if.end115.sw.bb_crit_edge382
    i32 7, label %sw.bb118
    i32 -1, label %sw.bb120
  ]

if.end115.sw.bb_crit_edge382:                     ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

if.end115.sw.bb_crit_edge:                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb

sw.bb:                                            ; preds = %if.end115.sw.bb_crit_edge, %if.end115.sw.bb_crit_edge382
  %142 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %tfm.i, align 16
  %144 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %op_type, align 4
  %flow_mode.i256 = getelementptr i8, ptr %143, i32 180
  %146 = ptrtoint ptr %flow_mode.i256 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load i32, ptr %flow_mode.i256, align 4
  %148 = ptrtoint ptr %is_single_pass.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %is_single_pass.i, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i258 = icmp eq i8 %149, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp.i.i = icmp eq i32 %145, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %147)
  %cmp1.i.i = icmp eq i32 %147, 32
  br i1 %cmp.i.i, label %if.then.i.i, label %if.else5.i.i

if.then.i.i:                                      ; preds = %sw.bb
  br i1 %cmp1.i.i, label %if.then2.i.i, label %if.else.i.i

if.then2.i.i:                                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond.i.i = select i1 %tobool.not.i258, i32 1, i32 10
  br label %cc_get_data_flow.exit.i

if.else.i.i:                                      ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond4.i.i = select i1 %tobool.not.i258, i32 4, i32 12
  br label %cc_get_data_flow.exit.i

if.else5.i.i:                                     ; preds = %sw.bb
  br i1 %cmp1.i.i, label %if.then7.i.i, label %if.else10.i.i

if.then7.i.i:                                     ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond9.i.i = select i1 %tobool.not.i258, i32 1, i32 3
  br label %cc_get_data_flow.exit.i

if.else10.i.i:                                    ; preds = %if.else5.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %cond12.i.i = select i1 %tobool.not.i258, i32 4, i32 6
  br label %cc_get_data_flow.exit.i

cc_get_data_flow.exit.i:                          ; preds = %if.else10.i.i, %if.then7.i.i, %if.else.i.i, %if.then2.i.i
  %data_flow_mode.0.i.i = phi i32 [ %cond.i.i, %if.then2.i.i ], [ %cond4.i.i, %if.else.i.i ], [ %cond9.i.i, %if.then7.i.i ], [ %cond12.i.i, %if.else10.i.i ]
  br i1 %tobool.not.i258, label %if.end.i260, label %if.then.i259

if.then.i259:                                     ; preds = %cc_get_data_flow.exit.i
  %__crt_ctx.i.i.i.i = getelementptr i8, ptr %143, i32 128
  %auth_mode.i.i = getelementptr i8, ptr %143, i32 184
  %150 = ptrtoint ptr %auth_mode.i.i to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load i32, ptr %auth_mode.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %151)
  %cmp.i66.i = icmp eq i32 %151, 0
  %cond.i67.i = select i1 %cmp.i66.i, i32 1, i32 2
  %152 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %seq_len, align 4
  %arrayidx.i.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %153
  %154 = call ptr @memset(ptr %arrayidx.i.i, i32 0, i32 24)
  %shl.i.i.i = shl nuw nsw i32 %cond.i67.i, 10
  %arrayidx.i.i.i = getelementptr [6 x i32], ptr %arrayidx.i.i, i32 0, i32 4
  %155 = ptrtoint ptr %arrayidx.i.i.i to i32
  call void @__asan_store4_noabort(i32 %155)
  store i32 %shl.i.i.i, ptr %arrayidx.i.i.i, align 4
  %ipad_opad_dma_addr.i.i = getelementptr i8, ptr %143, i32 156
  %156 = ptrtoint ptr %ipad_opad_dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %ipad_opad_dma_addr.i.i, align 4
  %158 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %157, ptr %arrayidx.i.i, align 4
  %arrayidx50.i.i.i = getelementptr [6 x i32], ptr %arrayidx.i.i, i32 0, i32 1
  %or49.i.i.i = select i1 %cmp.i66.i, i32 67108946, i32 67108994
  %159 = ptrtoint ptr %arrayidx50.i.i.i to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %or49.i.i.i, ptr %arrayidx50.i.i.i, align 4
  %or.i48.i.i = or i32 %shl.i.i.i, 16777253
  store i32 %or.i48.i.i, ptr %arrayidx.i.i.i, align 4
  %inc.i.i = add i32 %153, 1
  %arrayidx9.i.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i.i
  %160 = call ptr @memset(ptr %arrayidx9.i.i, i32 0, i32 24)
  %arrayidx.i51.i.i = getelementptr [6 x i32], ptr %arrayidx9.i.i, i32 0, i32 4
  %161 = ptrtoint ptr %arrayidx.i51.i.i to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 %shl.i.i.i, ptr %arrayidx.i51.i.i, align 4
  %162 = ptrtoint ptr %__crt_ctx.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load ptr, ptr %__crt_ctx.i.i.i.i, align 4
  %call12.i.i = tail call i32 @cc_digest_len_addr(ptr noundef %163, i32 noundef %cond.i67.i) #6
  %hash_len.i.i = getelementptr i8, ptr %143, i32 172
  %164 = ptrtoint ptr %hash_len.i.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %hash_len.i.i, align 4
  %166 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_store4_noabort(i32 %166)
  store i32 %call12.i.i, ptr %arrayidx9.i.i, align 4
  %shl.i53.i.i = shl i32 %165, 2
  %and9.i54.i.i = and i32 %shl.i53.i.i, 67108860
  %arrayidx21.i.i.i = getelementptr [6 x i32], ptr %arrayidx9.i.i, i32 0, i32 1
  %167 = ptrtoint ptr %arrayidx21.i.i.i to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %arrayidx21.i.i.i, align 4
  %or.i55.i.i = or i32 %and9.i54.i.i, %168
  %or22.i.i.i = or i32 %or.i55.i.i, 1
  store i32 %or22.i.i.i, ptr %arrayidx21.i.i.i, align 4
  %169 = ptrtoint ptr %arrayidx.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %arrayidx.i51.i.i, align 4
  %or.i59.i.i = or i32 %170, 67108901
  store i32 %or.i59.i.i, ptr %arrayidx.i51.i.i, align 4
  %inc15.i.i = add i32 %153, 2
  %171 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %inc15.i.i, ptr %seq_len, align 4
  call fastcc void @cc_set_cipher_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i.i) #6
  %172 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %seq_len, align 4
  %174 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_store4_noabort(i32 %174)
  store i32 %173, ptr %idx.i.i, align 4
  %175 = ptrtoint ptr %assoclen2.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load i32, ptr %assoclen2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %176)
  %cmp.not.i.i = icmp eq i32 %176, 0
  br i1 %cmp.not.i.i, label %if.then.i259.cc_proc_header_desc.exit.i_crit_edge, label %if.then.i68.i

if.then.i259.cc_proc_header_desc.exit.i_crit_edge: ; preds = %if.then.i259
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_proc_header_desc.exit.i

if.then.i68.i:                                    ; preds = %if.then.i259
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @cc_set_assoc_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %idx.i.i) #6
  br label %cc_proc_header_desc.exit.i

cc_proc_header_desc.exit.i:                       ; preds = %if.then.i68.i, %if.then.i259.cc_proc_header_desc.exit.i_crit_edge
  %177 = ptrtoint ptr %idx.i.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %idx.i.i, align 4
  %179 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %178, ptr %seq_len, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i.i) #6
  call fastcc void @cc_proc_cipher_desc(ptr noundef %req, i32 noundef %data_flow_mode.0.i.i, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len) #6
  call fastcc void @cc_proc_scheme_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len) #6
  br label %cc_hmac_authenc.exit

if.end.i260:                                      ; preds = %cc_get_data_flow.exit.i
  br i1 %cmp.i.i, label %if.then6.i, label %if.else.i

if.then6.i:                                       ; preds = %if.end.i260
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i69.i) #6
  %180 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load i32, ptr %seq_len, align 4
  %182 = ptrtoint ptr %idx.i69.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %idx.i69.i, align 4
  %cryptlen.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 4
  %183 = ptrtoint ptr %cryptlen.i.i to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %cryptlen.i.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %184)
  %cmp.i70.i = icmp eq i32 %184, 0
  br i1 %cmp.i70.i, label %if.then6.i.cc_proc_cipher.exit.i_crit_edge, label %if.end5.i.i

if.then6.i.cc_proc_cipher.exit.i_crit_edge:       ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_proc_cipher.exit.i

if.end5.i.i:                                      ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @cc_set_cipher_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %idx.i69.i) #6
  call fastcc void @cc_proc_cipher_desc(ptr noundef %req, i32 noundef %data_flow_mode.0.i.i, ptr noundef nonnull %desc, ptr noundef nonnull %idx.i69.i) #6
  %185 = ptrtoint ptr %idx.i69.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %idx.i69.i, align 4
  %arrayidx.i72.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %186
  %arrayidx10.i.i.i = getelementptr [6 x i32], ptr %arrayidx.i72.i, i32 0, i32 1
  %187 = call ptr @memset(ptr %arrayidx.i72.i, i32 0, i32 24)
  %188 = ptrtoint ptr %arrayidx10.i.i.i to i32
  call void @__asan_store4_noabort(i32 %188)
  store i32 67108800, ptr %arrayidx10.i.i.i, align 4
  %arrayidx33.i.i.i = getelementptr [6 x i32], ptr %arrayidx.i72.i, i32 0, i32 3
  %189 = ptrtoint ptr %arrayidx33.i.i.i to i32
  call void @__asan_store4_noabort(i32 %189)
  store i32 134217728, ptr %arrayidx33.i.i.i, align 4
  %inc.i73.i = add i32 %186, 1
  %190 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %190)
  store i32 %inc.i73.i, ptr %seq_len, align 4
  br label %cc_proc_cipher.exit.i

cc_proc_cipher.exit.i:                            ; preds = %if.end5.i.i, %if.then6.i.cc_proc_cipher.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i69.i) #6
  %191 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i76.i = getelementptr i8, ptr %192, i32 128
  %auth_mode.i77.i = getelementptr i8, ptr %192, i32 184
  %193 = ptrtoint ptr %auth_mode.i77.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %auth_mode.i77.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %194)
  %cmp.i78.i = icmp eq i32 %194, 0
  %cond.i79.i = select i1 %cmp.i78.i, i32 1, i32 2
  %195 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load i32, ptr %seq_len, align 4
  %arrayidx.i80.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %196
  %197 = call ptr @memset(ptr %arrayidx.i80.i, i32 0, i32 24)
  %shl.i.i81.i = shl nuw nsw i32 %cond.i79.i, 10
  %arrayidx.i.i82.i = getelementptr [6 x i32], ptr %arrayidx.i80.i, i32 0, i32 4
  %198 = ptrtoint ptr %arrayidx.i.i82.i to i32
  call void @__asan_store4_noabort(i32 %198)
  store i32 %shl.i.i81.i, ptr %arrayidx.i.i82.i, align 4
  %ipad_opad_dma_addr.i83.i = getelementptr i8, ptr %192, i32 156
  %199 = ptrtoint ptr %ipad_opad_dma_addr.i83.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %ipad_opad_dma_addr.i83.i, align 4
  %201 = ptrtoint ptr %arrayidx.i80.i to i32
  call void @__asan_store4_noabort(i32 %201)
  store i32 %200, ptr %arrayidx.i80.i, align 4
  %arrayidx50.i.i84.i = getelementptr [6 x i32], ptr %arrayidx.i80.i, i32 0, i32 1
  %or49.i.i85.i = select i1 %cmp.i78.i, i32 67108946, i32 67108994
  %202 = ptrtoint ptr %arrayidx50.i.i84.i to i32
  call void @__asan_store4_noabort(i32 %202)
  store i32 %or49.i.i85.i, ptr %arrayidx50.i.i84.i, align 4
  %or.i48.i86.i = or i32 %shl.i.i81.i, 16777253
  store i32 %or.i48.i86.i, ptr %arrayidx.i.i82.i, align 4
  %inc.i87.i = add i32 %196, 1
  %arrayidx9.i88.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i87.i
  %203 = call ptr @memset(ptr %arrayidx9.i88.i, i32 0, i32 24)
  %arrayidx.i51.i89.i = getelementptr [6 x i32], ptr %arrayidx9.i88.i, i32 0, i32 4
  %204 = ptrtoint ptr %arrayidx.i51.i89.i to i32
  call void @__asan_store4_noabort(i32 %204)
  store i32 %shl.i.i81.i, ptr %arrayidx.i51.i89.i, align 4
  %205 = ptrtoint ptr %__crt_ctx.i.i.i76.i to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %__crt_ctx.i.i.i76.i, align 4
  %call12.i90.i = tail call i32 @cc_digest_len_addr(ptr noundef %206, i32 noundef %cond.i79.i) #6
  %hash_len.i91.i = getelementptr i8, ptr %192, i32 172
  %207 = ptrtoint ptr %hash_len.i91.i to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %hash_len.i91.i, align 4
  %209 = ptrtoint ptr %arrayidx9.i88.i to i32
  call void @__asan_store4_noabort(i32 %209)
  store i32 %call12.i90.i, ptr %arrayidx9.i88.i, align 4
  %shl.i53.i94.i = shl i32 %208, 2
  %and9.i54.i95.i = and i32 %shl.i53.i94.i, 67108860
  %arrayidx21.i.i96.i = getelementptr [6 x i32], ptr %arrayidx9.i88.i, i32 0, i32 1
  %210 = ptrtoint ptr %arrayidx21.i.i96.i to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %arrayidx21.i.i96.i, align 4
  %or.i55.i97.i = or i32 %and9.i54.i95.i, %211
  %or22.i.i98.i = or i32 %or.i55.i97.i, 1
  store i32 %or22.i.i98.i, ptr %arrayidx21.i.i96.i, align 4
  %212 = ptrtoint ptr %arrayidx.i51.i89.i to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx.i51.i89.i, align 4
  %or.i59.i99.i = or i32 %213, 67108901
  store i32 %or.i59.i99.i, ptr %arrayidx.i51.i89.i, align 4
  %inc15.i100.i = add i32 %196, 2
  %214 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %214)
  store i32 %inc15.i100.i, ptr %seq_len, align 4
  call fastcc void @cc_proc_authen_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len, i32 noundef 0) #6
  call fastcc void @cc_proc_scheme_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len) #6
  br label %cc_hmac_authenc.exit

if.else.i:                                        ; preds = %if.end.i260
  %__crt_ctx.i.i.i103.i = getelementptr i8, ptr %143, i32 128
  %auth_mode.i104.i = getelementptr i8, ptr %143, i32 184
  %215 = ptrtoint ptr %auth_mode.i104.i to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load i32, ptr %auth_mode.i104.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %216)
  %cmp.i105.i = icmp eq i32 %216, 0
  %cond.i106.i = select i1 %cmp.i105.i, i32 1, i32 2
  %217 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %seq_len, align 4
  %arrayidx.i107.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %218
  %219 = call ptr @memset(ptr %arrayidx.i107.i, i32 0, i32 24)
  %shl.i.i108.i = shl nuw nsw i32 %cond.i106.i, 10
  %arrayidx.i.i109.i = getelementptr [6 x i32], ptr %arrayidx.i107.i, i32 0, i32 4
  %220 = ptrtoint ptr %arrayidx.i.i109.i to i32
  call void @__asan_store4_noabort(i32 %220)
  store i32 %shl.i.i108.i, ptr %arrayidx.i.i109.i, align 4
  %ipad_opad_dma_addr.i110.i = getelementptr i8, ptr %143, i32 156
  %221 = ptrtoint ptr %ipad_opad_dma_addr.i110.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %ipad_opad_dma_addr.i110.i, align 4
  %223 = ptrtoint ptr %arrayidx.i107.i to i32
  call void @__asan_store4_noabort(i32 %223)
  store i32 %222, ptr %arrayidx.i107.i, align 4
  %arrayidx50.i.i111.i = getelementptr [6 x i32], ptr %arrayidx.i107.i, i32 0, i32 1
  %or49.i.i112.i = select i1 %cmp.i105.i, i32 67108946, i32 67108994
  %224 = ptrtoint ptr %arrayidx50.i.i111.i to i32
  call void @__asan_store4_noabort(i32 %224)
  store i32 %or49.i.i112.i, ptr %arrayidx50.i.i111.i, align 4
  %or.i48.i113.i = or i32 %shl.i.i108.i, 16777253
  store i32 %or.i48.i113.i, ptr %arrayidx.i.i109.i, align 4
  %inc.i114.i = add i32 %218, 1
  %arrayidx9.i115.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i114.i
  %225 = call ptr @memset(ptr %arrayidx9.i115.i, i32 0, i32 24)
  %arrayidx.i51.i116.i = getelementptr [6 x i32], ptr %arrayidx9.i115.i, i32 0, i32 4
  %226 = ptrtoint ptr %arrayidx.i51.i116.i to i32
  call void @__asan_store4_noabort(i32 %226)
  store i32 %shl.i.i108.i, ptr %arrayidx.i51.i116.i, align 4
  %227 = ptrtoint ptr %__crt_ctx.i.i.i103.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %__crt_ctx.i.i.i103.i, align 4
  %call12.i117.i = tail call i32 @cc_digest_len_addr(ptr noundef %228, i32 noundef %cond.i106.i) #6
  %hash_len.i118.i = getelementptr i8, ptr %143, i32 172
  %229 = ptrtoint ptr %hash_len.i118.i to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load i32, ptr %hash_len.i118.i, align 4
  %231 = ptrtoint ptr %arrayidx9.i115.i to i32
  call void @__asan_store4_noabort(i32 %231)
  store i32 %call12.i117.i, ptr %arrayidx9.i115.i, align 4
  %shl.i53.i121.i = shl i32 %230, 2
  %and9.i54.i122.i = and i32 %shl.i53.i121.i, 67108860
  %arrayidx21.i.i123.i = getelementptr [6 x i32], ptr %arrayidx9.i115.i, i32 0, i32 1
  %232 = ptrtoint ptr %arrayidx21.i.i123.i to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load i32, ptr %arrayidx21.i.i123.i, align 4
  %or.i55.i124.i = or i32 %and9.i54.i122.i, %233
  %or22.i.i125.i = or i32 %or.i55.i124.i, 1
  store i32 %or22.i.i125.i, ptr %arrayidx21.i.i123.i, align 4
  %234 = ptrtoint ptr %arrayidx.i51.i116.i to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %arrayidx.i51.i116.i, align 4
  %or.i59.i126.i = or i32 %235, 67108901
  store i32 %or.i59.i126.i, ptr %arrayidx.i51.i116.i, align 4
  %inc15.i127.i = add i32 %218, 2
  %236 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %236)
  store i32 %inc15.i127.i, ptr %seq_len, align 4
  call fastcc void @cc_proc_authen_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len, i32 noundef %145) #6
  call fastcc void @cc_proc_scheme_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len) #6
  %237 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load i32, ptr %op_type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i129.i) #6
  %239 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %seq_len, align 4
  %241 = ptrtoint ptr %idx.i129.i to i32
  call void @__asan_store4_noabort(i32 %241)
  store i32 %240, ptr %idx.i129.i, align 4
  %cryptlen.i131.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 4
  %242 = ptrtoint ptr %cryptlen.i131.i to i32
  call void @__asan_load4_noabort(i32 %242)
  %243 = load i32, ptr %cryptlen.i131.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %243)
  %cmp.i132.i = icmp eq i32 %243, 0
  br i1 %cmp.i132.i, label %if.else.i.cc_proc_cipher.exit141.i_crit_edge, label %if.end.i134.i

if.else.i.cc_proc_cipher.exit141.i_crit_edge:     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_proc_cipher.exit141.i

if.end.i134.i:                                    ; preds = %if.else.i
  call fastcc void @cc_set_cipher_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %idx.i129.i) #6
  call fastcc void @cc_proc_cipher_desc(ptr noundef %req, i32 noundef %data_flow_mode.0.i.i, ptr noundef nonnull %desc, ptr noundef nonnull %idx.i129.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %238)
  %cmp1.i133.i = icmp eq i32 %238, 0
  br i1 %cmp1.i133.i, label %if.then2.i139.i, label %if.end.i134.i.if.end5.i140.i_crit_edge

if.end.i134.i.if.end5.i140.i_crit_edge:           ; preds = %if.end.i134.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i140.i

if.then2.i139.i:                                  ; preds = %if.end.i134.i
  call void @__sanitizer_cov_trace_pc() #8
  %244 = ptrtoint ptr %idx.i129.i to i32
  call void @__asan_load4_noabort(i32 %244)
  %245 = load i32, ptr %idx.i129.i, align 4
  %arrayidx.i135.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %245
  %arrayidx10.i.i136.i = getelementptr [6 x i32], ptr %arrayidx.i135.i, i32 0, i32 1
  %246 = call ptr @memset(ptr %arrayidx.i135.i, i32 0, i32 24)
  %247 = ptrtoint ptr %arrayidx10.i.i136.i to i32
  call void @__asan_store4_noabort(i32 %247)
  store i32 67108800, ptr %arrayidx10.i.i136.i, align 4
  %arrayidx33.i.i137.i = getelementptr [6 x i32], ptr %arrayidx.i135.i, i32 0, i32 3
  %248 = ptrtoint ptr %arrayidx33.i.i137.i to i32
  call void @__asan_store4_noabort(i32 %248)
  store i32 134217728, ptr %arrayidx33.i.i137.i, align 4
  %inc.i138.i = add i32 %245, 1
  store i32 %inc.i138.i, ptr %idx.i129.i, align 4
  br label %if.end5.i140.i

if.end5.i140.i:                                   ; preds = %if.then2.i139.i, %if.end.i134.i.if.end5.i140.i_crit_edge
  %249 = ptrtoint ptr %idx.i129.i to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %idx.i129.i, align 4
  %251 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %251)
  store i32 %250, ptr %seq_len, align 4
  br label %cc_proc_cipher.exit141.i

cc_proc_cipher.exit141.i:                         ; preds = %if.end5.i140.i, %if.else.i.cc_proc_cipher.exit141.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i129.i) #6
  br label %cc_hmac_authenc.exit

cc_hmac_authenc.exit:                             ; preds = %cc_proc_cipher.exit141.i, %cc_proc_cipher.exit.i, %cc_proc_header_desc.exit.i
  call fastcc void @cc_proc_digest_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len) #6
  br label %sw.epilog

sw.bb118:                                         ; preds = %if.end115
  %252 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %252)
  %253 = load ptr, ptr %tfm.i, align 16
  %254 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load i32, ptr %op_type, align 4
  %flow_mode.i264 = getelementptr i8, ptr %253, i32 180
  %256 = ptrtoint ptr %flow_mode.i264 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %flow_mode.i264, align 4
  %258 = ptrtoint ptr %is_single_pass.i to i32
  call void @__asan_load1_noabort(i32 %258)
  %259 = load i8, ptr %is_single_pass.i, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %259)
  %tobool.not.i266 = icmp eq i8 %259, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %255)
  %cmp.i.i267 = icmp eq i32 %255, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %257)
  %cmp1.i.i268 = icmp eq i32 %257, 32
  br i1 %cmp.i.i267, label %if.then.i.i269, label %if.else5.i.i274

if.then.i.i269:                                   ; preds = %sw.bb118
  br i1 %cmp1.i.i268, label %if.then2.i.i271, label %if.else.i.i273

if.then2.i.i271:                                  ; preds = %if.then.i.i269
  call void @__sanitizer_cov_trace_pc() #8
  %cond.i.i270 = select i1 %tobool.not.i266, i32 1, i32 10
  br label %cc_get_data_flow.exit.i280

if.else.i.i273:                                   ; preds = %if.then.i.i269
  call void @__sanitizer_cov_trace_pc() #8
  %cond4.i.i272 = select i1 %tobool.not.i266, i32 4, i32 12
  br label %cc_get_data_flow.exit.i280

if.else5.i.i274:                                  ; preds = %sw.bb118
  br i1 %cmp1.i.i268, label %if.then7.i.i276, label %if.else10.i.i278

if.then7.i.i276:                                  ; preds = %if.else5.i.i274
  call void @__sanitizer_cov_trace_pc() #8
  %cond9.i.i275 = select i1 %tobool.not.i266, i32 1, i32 3
  br label %cc_get_data_flow.exit.i280

if.else10.i.i278:                                 ; preds = %if.else5.i.i274
  call void @__sanitizer_cov_trace_pc() #8
  %cond12.i.i277 = select i1 %tobool.not.i266, i32 4, i32 6
  br label %cc_get_data_flow.exit.i280

cc_get_data_flow.exit.i280:                       ; preds = %if.else10.i.i278, %if.then7.i.i276, %if.else.i.i273, %if.then2.i.i271
  %data_flow_mode.0.i.i279 = phi i32 [ %cond.i.i270, %if.then2.i.i271 ], [ %cond4.i.i272, %if.else.i.i273 ], [ %cond9.i.i275, %if.then7.i.i276 ], [ %cond12.i.i277, %if.else10.i.i278 ]
  br i1 %tobool.not.i266, label %if.end.i291, label %if.then.i289

if.then.i289:                                     ; preds = %cc_get_data_flow.exit.i280
  %260 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %260)
  %261 = load i32, ptr %seq_len, align 4
  %arrayidx.i.i281 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %261
  %arrayidx33.i.i.i282 = getelementptr [6 x i32], ptr %arrayidx.i.i281, i32 0, i32 1
  %262 = call ptr @memset(ptr %arrayidx.i.i281, i32 0, i32 24)
  %263 = ptrtoint ptr %arrayidx33.i.i.i282 to i32
  call void @__asan_store4_noabort(i32 %263)
  store i32 134217793, ptr %arrayidx33.i.i.i282, align 4
  %arrayidx.i.i.i283 = getelementptr [6 x i32], ptr %arrayidx.i.i281, i32 0, i32 4
  %264 = ptrtoint ptr %arrayidx.i.i.i283 to i32
  call void @__asan_store4_noabort(i32 %264)
  store i32 16782437, ptr %arrayidx.i.i.i283, align 4
  %inc.i.i284 = add i32 %261, 1
  %arrayidx9.i.i285 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i.i284
  %265 = call ptr @memset(ptr %arrayidx9.i.i285, i32 0, i32 24)
  %xcbc_keys_dma_addr.i.i = getelementptr i8, ptr %253, i32 148
  %266 = ptrtoint ptr %xcbc_keys_dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load i32, ptr %xcbc_keys_dma_addr.i.i, align 4
  %268 = ptrtoint ptr %arrayidx9.i.i285 to i32
  call void @__asan_store4_noabort(i32 %268)
  store i32 %267, ptr %arrayidx9.i.i285, align 4
  %arrayidx50.i.i.i286 = getelementptr [6 x i32], ptr %arrayidx9.i.i285, i32 0, i32 1
  %269 = ptrtoint ptr %arrayidx50.i.i.i286 to i32
  call void @__asan_store4_noabort(i32 %269)
  store i32 67108930, ptr %arrayidx50.i.i.i286, align 4
  %arrayidx.i118.i.i = getelementptr [6 x i32], ptr %arrayidx9.i.i285, i32 0, i32 4
  %270 = ptrtoint ptr %arrayidx.i118.i.i to i32
  call void @__asan_store4_noabort(i32 %270)
  store i32 67114085, ptr %arrayidx.i118.i.i, align 4
  %inc17.i.i = add i32 %261, 2
  %arrayidx18.i.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc17.i.i
  %271 = call ptr @memset(ptr %arrayidx18.i.i, i32 0, i32 24)
  %272 = load i32, ptr %xcbc_keys_dma_addr.i.i, align 4
  %add.i.i = add i32 %272, 16
  %273 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_store4_noabort(i32 %273)
  store i32 %add.i.i, ptr %arrayidx18.i.i, align 4
  %arrayidx50.i128.i.i = getelementptr [6 x i32], ptr %arrayidx18.i.i, i32 0, i32 1
  %274 = ptrtoint ptr %arrayidx50.i128.i.i to i32
  call void @__asan_store4_noabort(i32 %274)
  store i32 67108930, ptr %arrayidx50.i128.i.i, align 4
  %arrayidx.i131.i.i = getelementptr [6 x i32], ptr %arrayidx18.i.i, i32 0, i32 4
  %275 = ptrtoint ptr %arrayidx.i131.i.i to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 33559653, ptr %arrayidx.i131.i.i, align 4
  %inc28.i.i = add i32 %261, 3
  %arrayidx29.i.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc28.i.i
  %276 = call ptr @memset(ptr %arrayidx29.i.i, i32 0, i32 24)
  %277 = load i32, ptr %xcbc_keys_dma_addr.i.i, align 4
  %add33.i.i = add i32 %277, 32
  %278 = ptrtoint ptr %arrayidx29.i.i to i32
  call void @__asan_store4_noabort(i32 %278)
  store i32 %add33.i.i, ptr %arrayidx29.i.i, align 4
  %arrayidx50.i141.i.i = getelementptr [6 x i32], ptr %arrayidx29.i.i, i32 0, i32 1
  %279 = ptrtoint ptr %arrayidx50.i141.i.i to i32
  call void @__asan_store4_noabort(i32 %279)
  store i32 67108930, ptr %arrayidx50.i141.i.i, align 4
  %arrayidx.i144.i.i = getelementptr [6 x i32], ptr %arrayidx29.i.i, i32 0, i32 4
  %280 = ptrtoint ptr %arrayidx.i144.i.i to i32
  call void @__asan_store4_noabort(i32 %280)
  store i32 50336869, ptr %arrayidx.i144.i.i, align 4
  %inc40.i.i = add i32 %261, 4
  store i32 %inc40.i.i, ptr %seq_len, align 4
  call fastcc void @cc_set_cipher_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i.i261) #6
  %281 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %281)
  %282 = load i32, ptr %seq_len, align 4
  %283 = ptrtoint ptr %idx.i.i261 to i32
  call void @__asan_store4_noabort(i32 %283)
  store i32 %282, ptr %idx.i.i261, align 4
  %284 = ptrtoint ptr %assoclen2.i to i32
  call void @__asan_load4_noabort(i32 %284)
  %285 = load i32, ptr %assoclen2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %285)
  %cmp.not.i.i288 = icmp eq i32 %285, 0
  br i1 %cmp.not.i.i288, label %if.then.i289.cc_proc_header_desc.exit.i290_crit_edge, label %if.then.i57.i

if.then.i289.cc_proc_header_desc.exit.i290_crit_edge: ; preds = %if.then.i289
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_proc_header_desc.exit.i290

if.then.i57.i:                                    ; preds = %if.then.i289
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @cc_set_assoc_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %idx.i.i261) #6
  br label %cc_proc_header_desc.exit.i290

cc_proc_header_desc.exit.i290:                    ; preds = %if.then.i57.i, %if.then.i289.cc_proc_header_desc.exit.i290_crit_edge
  %286 = ptrtoint ptr %idx.i.i261 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load i32, ptr %idx.i.i261, align 4
  %288 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %288)
  store i32 %287, ptr %seq_len, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i.i261) #6
  call fastcc void @cc_proc_cipher_desc(ptr noundef %req, i32 noundef %data_flow_mode.0.i.i279, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len) #6
  br label %cc_xcbc_authenc.exit

if.end.i291:                                      ; preds = %cc_get_data_flow.exit.i280
  br i1 %cmp.i.i267, label %if.then6.i293, label %if.else.i298

if.then6.i293:                                    ; preds = %if.end.i291
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i58.i) #6
  %289 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %289)
  %290 = load i32, ptr %seq_len, align 4
  %291 = ptrtoint ptr %idx.i58.i to i32
  call void @__asan_store4_noabort(i32 %291)
  store i32 %290, ptr %idx.i58.i, align 4
  %cryptlen.i.i292 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 4
  %292 = ptrtoint ptr %cryptlen.i.i292 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load i32, ptr %cryptlen.i.i292, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %293)
  %cmp.i59.i = icmp eq i32 %293, 0
  br i1 %cmp.i59.i, label %if.then6.i293.cc_proc_cipher.exit.i297_crit_edge, label %if.end5.i.i296

if.then6.i293.cc_proc_cipher.exit.i297_crit_edge: ; preds = %if.then6.i293
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_proc_cipher.exit.i297

if.end5.i.i296:                                   ; preds = %if.then6.i293
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @cc_set_cipher_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %idx.i58.i) #6
  call fastcc void @cc_proc_cipher_desc(ptr noundef %req, i32 noundef %data_flow_mode.0.i.i279, ptr noundef nonnull %desc, ptr noundef nonnull %idx.i58.i) #6
  %294 = ptrtoint ptr %idx.i58.i to i32
  call void @__asan_load4_noabort(i32 %294)
  %295 = load i32, ptr %idx.i58.i, align 4
  %arrayidx.i61.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %295
  %arrayidx10.i.i.i295 = getelementptr [6 x i32], ptr %arrayidx.i61.i, i32 0, i32 1
  %296 = call ptr @memset(ptr %arrayidx.i61.i, i32 0, i32 24)
  %297 = ptrtoint ptr %arrayidx10.i.i.i295 to i32
  call void @__asan_store4_noabort(i32 %297)
  store i32 67108800, ptr %arrayidx10.i.i.i295, align 4
  %arrayidx33.i.i62.i = getelementptr [6 x i32], ptr %arrayidx.i61.i, i32 0, i32 3
  %298 = ptrtoint ptr %arrayidx33.i.i62.i to i32
  call void @__asan_store4_noabort(i32 %298)
  store i32 134217728, ptr %arrayidx33.i.i62.i, align 4
  %inc.i63.i = add i32 %295, 1
  %299 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %299)
  store i32 %inc.i63.i, ptr %seq_len, align 4
  br label %cc_proc_cipher.exit.i297

cc_proc_cipher.exit.i297:                         ; preds = %if.end5.i.i296, %if.then6.i293.cc_proc_cipher.exit.i297_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i58.i) #6
  %300 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %300)
  %301 = load ptr, ptr %tfm.i, align 16
  %302 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %302)
  %303 = load i32, ptr %seq_len, align 4
  %arrayidx.i66.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %303
  %arrayidx33.i.i67.i = getelementptr [6 x i32], ptr %arrayidx.i66.i, i32 0, i32 1
  %304 = call ptr @memset(ptr %arrayidx.i66.i, i32 0, i32 24)
  %305 = ptrtoint ptr %arrayidx33.i.i67.i to i32
  call void @__asan_store4_noabort(i32 %305)
  store i32 134217793, ptr %arrayidx33.i.i67.i, align 4
  %arrayidx.i.i68.i = getelementptr [6 x i32], ptr %arrayidx.i66.i, i32 0, i32 4
  %306 = ptrtoint ptr %arrayidx.i.i68.i to i32
  call void @__asan_store4_noabort(i32 %306)
  store i32 16782437, ptr %arrayidx.i.i68.i, align 4
  %inc.i69.i = add i32 %303, 1
  %arrayidx9.i70.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i69.i
  %307 = call ptr @memset(ptr %arrayidx9.i70.i, i32 0, i32 24)
  %xcbc_keys_dma_addr.i71.i = getelementptr i8, ptr %301, i32 148
  %308 = ptrtoint ptr %xcbc_keys_dma_addr.i71.i to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load i32, ptr %xcbc_keys_dma_addr.i71.i, align 4
  %310 = ptrtoint ptr %arrayidx9.i70.i to i32
  call void @__asan_store4_noabort(i32 %310)
  store i32 %309, ptr %arrayidx9.i70.i, align 4
  %arrayidx50.i.i72.i = getelementptr [6 x i32], ptr %arrayidx9.i70.i, i32 0, i32 1
  %311 = ptrtoint ptr %arrayidx50.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %311)
  store i32 67108930, ptr %arrayidx50.i.i72.i, align 4
  %arrayidx.i118.i73.i = getelementptr [6 x i32], ptr %arrayidx9.i70.i, i32 0, i32 4
  %312 = ptrtoint ptr %arrayidx.i118.i73.i to i32
  call void @__asan_store4_noabort(i32 %312)
  store i32 67114085, ptr %arrayidx.i118.i73.i, align 4
  %inc17.i74.i = add i32 %303, 2
  %arrayidx18.i75.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc17.i74.i
  %313 = call ptr @memset(ptr %arrayidx18.i75.i, i32 0, i32 24)
  %314 = load i32, ptr %xcbc_keys_dma_addr.i71.i, align 4
  %add.i76.i = add i32 %314, 16
  %315 = ptrtoint ptr %arrayidx18.i75.i to i32
  call void @__asan_store4_noabort(i32 %315)
  store i32 %add.i76.i, ptr %arrayidx18.i75.i, align 4
  %arrayidx50.i128.i77.i = getelementptr [6 x i32], ptr %arrayidx18.i75.i, i32 0, i32 1
  %316 = ptrtoint ptr %arrayidx50.i128.i77.i to i32
  call void @__asan_store4_noabort(i32 %316)
  store i32 67108930, ptr %arrayidx50.i128.i77.i, align 4
  %arrayidx.i131.i78.i = getelementptr [6 x i32], ptr %arrayidx18.i75.i, i32 0, i32 4
  %317 = ptrtoint ptr %arrayidx.i131.i78.i to i32
  call void @__asan_store4_noabort(i32 %317)
  store i32 33559653, ptr %arrayidx.i131.i78.i, align 4
  %inc28.i79.i = add i32 %303, 3
  %arrayidx29.i80.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc28.i79.i
  %318 = call ptr @memset(ptr %arrayidx29.i80.i, i32 0, i32 24)
  %319 = load i32, ptr %xcbc_keys_dma_addr.i71.i, align 4
  %add33.i81.i = add i32 %319, 32
  %320 = ptrtoint ptr %arrayidx29.i80.i to i32
  call void @__asan_store4_noabort(i32 %320)
  store i32 %add33.i81.i, ptr %arrayidx29.i80.i, align 4
  %arrayidx50.i141.i82.i = getelementptr [6 x i32], ptr %arrayidx29.i80.i, i32 0, i32 1
  %321 = ptrtoint ptr %arrayidx50.i141.i82.i to i32
  call void @__asan_store4_noabort(i32 %321)
  store i32 67108930, ptr %arrayidx50.i141.i82.i, align 4
  %arrayidx.i144.i83.i = getelementptr [6 x i32], ptr %arrayidx29.i80.i, i32 0, i32 4
  %322 = ptrtoint ptr %arrayidx.i144.i83.i to i32
  call void @__asan_store4_noabort(i32 %322)
  store i32 50336869, ptr %arrayidx.i144.i83.i, align 4
  %inc40.i84.i = add i32 %303, 4
  store i32 %inc40.i84.i, ptr %seq_len, align 4
  call fastcc void @cc_proc_authen_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len, i32 noundef 0) #6
  br label %cc_xcbc_authenc.exit

if.else.i298:                                     ; preds = %if.end.i291
  %323 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %323)
  %324 = load i32, ptr %seq_len, align 4
  %arrayidx.i86.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %324
  %arrayidx33.i.i87.i = getelementptr [6 x i32], ptr %arrayidx.i86.i, i32 0, i32 1
  %325 = call ptr @memset(ptr %arrayidx.i86.i, i32 0, i32 24)
  %326 = ptrtoint ptr %arrayidx33.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %326)
  store i32 134217793, ptr %arrayidx33.i.i87.i, align 4
  %arrayidx.i.i88.i = getelementptr [6 x i32], ptr %arrayidx.i86.i, i32 0, i32 4
  %327 = ptrtoint ptr %arrayidx.i.i88.i to i32
  call void @__asan_store4_noabort(i32 %327)
  store i32 16782437, ptr %arrayidx.i.i88.i, align 4
  %inc.i89.i = add i32 %324, 1
  %arrayidx9.i90.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i89.i
  %328 = call ptr @memset(ptr %arrayidx9.i90.i, i32 0, i32 24)
  %xcbc_keys_dma_addr.i91.i = getelementptr i8, ptr %253, i32 148
  %329 = ptrtoint ptr %xcbc_keys_dma_addr.i91.i to i32
  call void @__asan_load4_noabort(i32 %329)
  %330 = load i32, ptr %xcbc_keys_dma_addr.i91.i, align 4
  %331 = ptrtoint ptr %arrayidx9.i90.i to i32
  call void @__asan_store4_noabort(i32 %331)
  store i32 %330, ptr %arrayidx9.i90.i, align 4
  %arrayidx50.i.i92.i = getelementptr [6 x i32], ptr %arrayidx9.i90.i, i32 0, i32 1
  %332 = ptrtoint ptr %arrayidx50.i.i92.i to i32
  call void @__asan_store4_noabort(i32 %332)
  store i32 67108930, ptr %arrayidx50.i.i92.i, align 4
  %arrayidx.i118.i93.i = getelementptr [6 x i32], ptr %arrayidx9.i90.i, i32 0, i32 4
  %333 = ptrtoint ptr %arrayidx.i118.i93.i to i32
  call void @__asan_store4_noabort(i32 %333)
  store i32 67114085, ptr %arrayidx.i118.i93.i, align 4
  %inc17.i94.i = add i32 %324, 2
  %arrayidx18.i95.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc17.i94.i
  %334 = call ptr @memset(ptr %arrayidx18.i95.i, i32 0, i32 24)
  %335 = load i32, ptr %xcbc_keys_dma_addr.i91.i, align 4
  %add.i96.i = add i32 %335, 16
  %336 = ptrtoint ptr %arrayidx18.i95.i to i32
  call void @__asan_store4_noabort(i32 %336)
  store i32 %add.i96.i, ptr %arrayidx18.i95.i, align 4
  %arrayidx50.i128.i97.i = getelementptr [6 x i32], ptr %arrayidx18.i95.i, i32 0, i32 1
  %337 = ptrtoint ptr %arrayidx50.i128.i97.i to i32
  call void @__asan_store4_noabort(i32 %337)
  store i32 67108930, ptr %arrayidx50.i128.i97.i, align 4
  %arrayidx.i131.i98.i = getelementptr [6 x i32], ptr %arrayidx18.i95.i, i32 0, i32 4
  %338 = ptrtoint ptr %arrayidx.i131.i98.i to i32
  call void @__asan_store4_noabort(i32 %338)
  store i32 33559653, ptr %arrayidx.i131.i98.i, align 4
  %inc28.i99.i = add i32 %324, 3
  %arrayidx29.i100.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc28.i99.i
  %339 = call ptr @memset(ptr %arrayidx29.i100.i, i32 0, i32 24)
  %340 = load i32, ptr %xcbc_keys_dma_addr.i91.i, align 4
  %add33.i101.i = add i32 %340, 32
  %341 = ptrtoint ptr %arrayidx29.i100.i to i32
  call void @__asan_store4_noabort(i32 %341)
  store i32 %add33.i101.i, ptr %arrayidx29.i100.i, align 4
  %arrayidx50.i141.i102.i = getelementptr [6 x i32], ptr %arrayidx29.i100.i, i32 0, i32 1
  %342 = ptrtoint ptr %arrayidx50.i141.i102.i to i32
  call void @__asan_store4_noabort(i32 %342)
  store i32 67108930, ptr %arrayidx50.i141.i102.i, align 4
  %arrayidx.i144.i103.i = getelementptr [6 x i32], ptr %arrayidx29.i100.i, i32 0, i32 4
  %343 = ptrtoint ptr %arrayidx.i144.i103.i to i32
  call void @__asan_store4_noabort(i32 %343)
  store i32 50336869, ptr %arrayidx.i144.i103.i, align 4
  %inc40.i104.i = add i32 %324, 4
  store i32 %inc40.i104.i, ptr %seq_len, align 4
  call fastcc void @cc_proc_authen_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len, i32 noundef %255) #6
  %344 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %344)
  %345 = load i32, ptr %op_type, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i105.i) #6
  %346 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load i32, ptr %seq_len, align 4
  %348 = ptrtoint ptr %idx.i105.i to i32
  call void @__asan_store4_noabort(i32 %348)
  store i32 %347, ptr %idx.i105.i, align 4
  %cryptlen.i107.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 4
  %349 = ptrtoint ptr %cryptlen.i107.i to i32
  call void @__asan_load4_noabort(i32 %349)
  %350 = load i32, ptr %cryptlen.i107.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %350)
  %cmp.i108.i = icmp eq i32 %350, 0
  br i1 %cmp.i108.i, label %if.else.i298.cc_proc_cipher.exit117.i_crit_edge, label %if.end.i110.i

if.else.i298.cc_proc_cipher.exit117.i_crit_edge:  ; preds = %if.else.i298
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_proc_cipher.exit117.i

if.end.i110.i:                                    ; preds = %if.else.i298
  call fastcc void @cc_set_cipher_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %idx.i105.i) #6
  call fastcc void @cc_proc_cipher_desc(ptr noundef %req, i32 noundef %data_flow_mode.0.i.i279, ptr noundef nonnull %desc, ptr noundef nonnull %idx.i105.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %cmp1.i109.i = icmp eq i32 %345, 0
  br i1 %cmp1.i109.i, label %if.then2.i115.i, label %if.end.i110.i.if.end5.i116.i_crit_edge

if.end.i110.i.if.end5.i116.i_crit_edge:           ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i116.i

if.then2.i115.i:                                  ; preds = %if.end.i110.i
  call void @__sanitizer_cov_trace_pc() #8
  %351 = ptrtoint ptr %idx.i105.i to i32
  call void @__asan_load4_noabort(i32 %351)
  %352 = load i32, ptr %idx.i105.i, align 4
  %arrayidx.i111.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %352
  %arrayidx10.i.i112.i = getelementptr [6 x i32], ptr %arrayidx.i111.i, i32 0, i32 1
  %353 = call ptr @memset(ptr %arrayidx.i111.i, i32 0, i32 24)
  %354 = ptrtoint ptr %arrayidx10.i.i112.i to i32
  call void @__asan_store4_noabort(i32 %354)
  store i32 67108800, ptr %arrayidx10.i.i112.i, align 4
  %arrayidx33.i.i113.i = getelementptr [6 x i32], ptr %arrayidx.i111.i, i32 0, i32 3
  %355 = ptrtoint ptr %arrayidx33.i.i113.i to i32
  call void @__asan_store4_noabort(i32 %355)
  store i32 134217728, ptr %arrayidx33.i.i113.i, align 4
  %inc.i114.i299 = add i32 %352, 1
  store i32 %inc.i114.i299, ptr %idx.i105.i, align 4
  br label %if.end5.i116.i

if.end5.i116.i:                                   ; preds = %if.then2.i115.i, %if.end.i110.i.if.end5.i116.i_crit_edge
  %356 = ptrtoint ptr %idx.i105.i to i32
  call void @__asan_load4_noabort(i32 %356)
  %357 = load i32, ptr %idx.i105.i, align 4
  %358 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %358)
  store i32 %357, ptr %seq_len, align 4
  br label %cc_proc_cipher.exit117.i

cc_proc_cipher.exit117.i:                         ; preds = %if.end5.i116.i, %if.else.i298.cc_proc_cipher.exit117.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i105.i) #6
  br label %cc_xcbc_authenc.exit

cc_xcbc_authenc.exit:                             ; preds = %cc_proc_cipher.exit117.i, %cc_proc_cipher.exit.i297, %cc_proc_header_desc.exit.i290
  call fastcc void @cc_proc_digest_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len) #6
  br label %sw.epilog

sw.bb120:                                         ; preds = %if.end115
  %359 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %359)
  %360 = load i32, ptr %cipher_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %360)
  %cmp122 = icmp eq i32 %360, 8
  br i1 %cmp122, label %if.then123, label %sw.bb120.if.end126_crit_edge

sw.bb120.if.end126_crit_edge:                     ; preds = %sw.bb120
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end126

if.then123:                                       ; preds = %sw.bb120
  %361 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %361)
  %362 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i301 = getelementptr i8, ptr %362, i32 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %idx.i) #6
  %363 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %363)
  %364 = load i32, ptr %seq_len, align 4
  %365 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %365)
  store i32 %364, ptr %idx.i, align 4
  %gen_ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 32
  %366 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %366)
  %367 = load i32, ptr %op_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %367)
  %cmp.i303 = icmp eq i32 %367, 1
  %mac_buf_dma_addr.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6
  %icv_dma_addr.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 8
  %cipher_flow_mode.0.i = select i1 %cmp.i303, i32 10, i32 3
  %mac_result.0.in.i = select i1 %cmp.i303, ptr %mac_buf_dma_addr.i, ptr %icv_dma_addr.i
  %368 = ptrtoint ptr %mac_result.0.in.i to i32
  call void @__asan_load4_noabort(i32 %368)
  %mac_result.0.i = load i32, ptr %mac_result.0.in.i, align 4
  %arrayidx.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %364
  %369 = call ptr @memset(ptr %arrayidx.i, i32 0, i32 24)
  %arrayidx.i.i304 = getelementptr [6 x i32], ptr %arrayidx.i, i32 0, i32 4
  %370 = ptrtoint ptr %arrayidx.i.i304 to i32
  call void @__asan_store4_noabort(i32 %370)
  store i32 2048, ptr %arrayidx.i.i304, align 4
  %enckey_dma_addr.i = getelementptr i8, ptr %362, i32 140
  %371 = ptrtoint ptr %enckey_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %371)
  %372 = load i32, ptr %enckey_dma_addr.i, align 4
  %enc_keylen.i = getelementptr i8, ptr %362, i32 160
  %373 = ptrtoint ptr %enc_keylen.i to i32
  call void @__asan_load4_noabort(i32 %373)
  %374 = load i32, ptr %enc_keylen.i, align 4
  %375 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %375)
  store i32 %372, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %374)
  %cmp5.i = icmp eq i32 %374, 24
  %.op = shl i32 %374, 2
  %.op.op = and i32 %.op, 67108860
  %and29.i.i = select i1 %cmp5.i, i32 128, i32 %.op.op
  %arrayidx50.i.i = getelementptr [6 x i32], ptr %arrayidx.i, i32 0, i32 1
  %376 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %376)
  %377 = load i32, ptr %arrayidx50.i.i, align 4
  %or.i1.i = or i32 %and29.i.i, %377
  %or51.i.i = or i32 %or.i1.i, 67108866
  store i32 %or51.i.i, ptr %arrayidx50.i.i, align 4
  %378 = ptrtoint ptr %enc_keylen.i to i32
  call void @__asan_load4_noabort(i32 %378)
  %379 = load i32, ptr %enc_keylen.i, align 4
  %380 = shl i32 %379, 19
  %381 = add i32 %380, 8388608
  %and9.i.i.i = and i32 %381, 12582912
  %or.i6.i = or i32 %and9.i.i.i, 67110944
  %382 = ptrtoint ptr %arrayidx.i.i304 to i32
  call void @__asan_store4_noabort(i32 %382)
  store i32 %or.i6.i, ptr %arrayidx.i.i304, align 4
  %inc.i = add i32 %364, 1
  %arrayidx12.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i
  %383 = call ptr @memset(ptr %arrayidx12.i, i32 0, i32 24)
  %arrayidx.i7.i = getelementptr [6 x i32], ptr %arrayidx12.i, i32 0, i32 4
  %384 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_store4_noabort(i32 %384)
  store i32 2048, ptr %arrayidx.i7.i, align 4
  %385 = load i32, ptr %enc_keylen.i, align 4
  %386 = shl i32 %385, 19
  %387 = add i32 %386, 8388608
  %and9.i.i14.i = and i32 %387, 12582912
  %388 = ptrtoint ptr %gen_ctx.i to i32
  call void @__asan_load4_noabort(i32 %388)
  %389 = load i32, ptr %gen_ctx.i, align 4
  %390 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %390)
  store i32 %389, ptr %arrayidx12.i, align 4
  %arrayidx50.i18.i = getelementptr [6 x i32], ptr %arrayidx12.i, i32 0, i32 1
  %391 = ptrtoint ptr %arrayidx50.i18.i to i32
  call void @__asan_load4_noabort(i32 %391)
  %392 = load i32, ptr %arrayidx50.i18.i, align 4
  %or51.i20.i = or i32 %392, 67108930
  store i32 %or51.i20.i, ptr %arrayidx50.i18.i, align 4
  %or.i25.i = or i32 %and9.i.i14.i, 33556512
  store i32 %or.i25.i, ptr %arrayidx.i7.i, align 4
  %inc21.i = add i32 %364, 2
  %arrayidx22.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc21.i
  %393 = call ptr @memset(ptr %arrayidx22.i, i32 0, i32 24)
  %arrayidx.i26.i = getelementptr [6 x i32], ptr %arrayidx22.i, i32 0, i32 4
  %394 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_store4_noabort(i32 %394)
  store i32 3072, ptr %arrayidx.i26.i, align 4
  %395 = ptrtoint ptr %enckey_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %395)
  %396 = load i32, ptr %enckey_dma_addr.i, align 4
  %397 = load i32, ptr %enc_keylen.i, align 4
  %398 = ptrtoint ptr %arrayidx22.i to i32
  call void @__asan_store4_noabort(i32 %398)
  store i32 %396, ptr %arrayidx22.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %397)
  %cmp27.i = icmp eq i32 %397, 24
  %.op380 = shl i32 %397, 2
  %.op380.op = and i32 %.op380, 67108860
  %and29.i31.i = select i1 %cmp27.i, i32 128, i32 %.op380.op
  %arrayidx50.i32.i = getelementptr [6 x i32], ptr %arrayidx22.i, i32 0, i32 1
  %399 = ptrtoint ptr %arrayidx50.i32.i to i32
  call void @__asan_load4_noabort(i32 %399)
  %400 = load i32, ptr %arrayidx50.i32.i, align 4
  %or.i33.i = or i32 %and29.i31.i, %400
  %or51.i35.i = or i32 %or.i33.i, 67108866
  store i32 %or51.i35.i, ptr %arrayidx50.i32.i, align 4
  %401 = ptrtoint ptr %enc_keylen.i to i32
  call void @__asan_load4_noabort(i32 %401)
  %402 = load i32, ptr %enc_keylen.i, align 4
  %403 = shl i32 %402, 19
  %404 = add i32 %403, 8388608
  %and9.i.i42.i = and i32 %404, 12582912
  %or.i52.i = or i32 %and9.i.i42.i, 67112037
  %405 = ptrtoint ptr %arrayidx.i26.i to i32
  call void @__asan_store4_noabort(i32 %405)
  store i32 %or.i52.i, ptr %arrayidx.i26.i, align 4
  %inc39.i = add i32 %364, 3
  %arrayidx40.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc39.i
  %406 = call ptr @memset(ptr %arrayidx40.i, i32 0, i32 24)
  %arrayidx.i53.i = getelementptr [6 x i32], ptr %arrayidx40.i, i32 0, i32 4
  %407 = ptrtoint ptr %arrayidx.i53.i to i32
  call void @__asan_store4_noabort(i32 %407)
  store i32 3072, ptr %arrayidx.i53.i, align 4
  %408 = load i32, ptr %enc_keylen.i, align 4
  %409 = shl i32 %408, 19
  %410 = add i32 %409, 8388608
  %and9.i.i60.i = and i32 %410, 12582912
  %411 = ptrtoint ptr %mac_buf_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %411)
  %412 = load i32, ptr %mac_buf_dma_addr.i, align 4
  %413 = ptrtoint ptr %arrayidx40.i to i32
  call void @__asan_store4_noabort(i32 %413)
  store i32 %412, ptr %arrayidx40.i, align 4
  %arrayidx50.i64.i = getelementptr [6 x i32], ptr %arrayidx40.i, i32 0, i32 1
  %414 = ptrtoint ptr %arrayidx50.i64.i to i32
  call void @__asan_load4_noabort(i32 %414)
  %415 = load i32, ptr %arrayidx50.i64.i, align 4
  %or51.i66.i = or i32 %415, 67108930
  store i32 %or51.i66.i, ptr %arrayidx50.i64.i, align 4
  %or.i73.i = or i32 %and9.i.i60.i, 16780389
  store i32 %or.i73.i, ptr %arrayidx.i53.i, align 4
  %inc50.i = add i32 %364, 4
  %416 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %416)
  store i32 %inc50.i, ptr %idx.i, align 4
  %417 = ptrtoint ptr %assoclen2.i to i32
  call void @__asan_load4_noabort(i32 %417)
  %418 = load i32, ptr %assoclen2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %418)
  %cmp51.not.i = icmp eq i32 %418, 0
  br i1 %cmp51.not.i, label %if.else53.i, label %if.then52.i

if.then52.i:                                      ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @cc_set_assoc_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %idx.i) #6
  br label %if.end58.i

if.else53.i:                                      ; preds = %if.then123
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx54.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc50.i
  %419 = getelementptr inbounds i8, ptr %arrayidx54.i, i32 4
  %420 = call ptr @memset(ptr %419, i32 0, i32 20)
  %dma_address.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 20
  %421 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %421)
  %422 = load i32, ptr %dma_address.i, align 4
  %ccm_hdr_size.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 28
  %423 = ptrtoint ptr %ccm_hdr_size.i to i32
  call void @__asan_load4_noabort(i32 %423)
  %424 = load i32, ptr %ccm_hdr_size.i, align 8
  %425 = ptrtoint ptr %arrayidx54.i to i32
  call void @__asan_store4_noabort(i32 %425)
  store i32 %422, ptr %arrayidx54.i, align 4
  %add.i310 = shl i32 %424, 2
  %shl28.i76.i = add i32 %add.i310, 64
  %and29.i77.i = and i32 %shl28.i76.i, 67108860
  %arrayidx50.i78.i = getelementptr [6 x i32], ptr %arrayidx54.i, i32 0, i32 1
  %426 = ptrtoint ptr %arrayidx50.i78.i to i32
  call void @__asan_load4_noabort(i32 %426)
  %427 = load i32, ptr %arrayidx50.i78.i, align 4
  %or.i79.i = or i32 %and29.i77.i, %427
  %or51.i81.i = or i32 %or.i79.i, 67108866
  store i32 %or51.i81.i, ptr %arrayidx50.i78.i, align 4
  %arrayidx.i83.i = getelementptr [6 x i32], ptr %arrayidx54.i, i32 0, i32 4
  %428 = ptrtoint ptr %arrayidx.i83.i to i32
  call void @__asan_load4_noabort(i32 %428)
  %429 = load i32, ptr %arrayidx.i83.i, align 4
  %or.i84.i = or i32 %429, 7
  store i32 %or.i84.i, ptr %arrayidx.i83.i, align 4
  %inc57.i = add i32 %364, 5
  %430 = ptrtoint ptr %idx.i to i32
  call void @__asan_store4_noabort(i32 %430)
  store i32 %inc57.i, ptr %idx.i, align 4
  br label %if.end58.i

if.end58.i:                                       ; preds = %if.else53.i, %if.then52.i
  %cryptlen.i311 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 4
  %431 = ptrtoint ptr %cryptlen.i311 to i32
  call void @__asan_load4_noabort(i32 %431)
  %432 = load i32, ptr %cryptlen.i311, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %432)
  %tobool.not.i312 = icmp eq i32 %432, 0
  br i1 %tobool.not.i312, label %if.end58.i.if.end60.i_crit_edge, label %if.then59.i

if.end58.i.if.end60.i_crit_edge:                  ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end60.i

if.then59.i:                                      ; preds = %if.end58.i
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @cc_proc_cipher_desc(ptr noundef %req, i32 noundef %cipher_flow_mode.0.i, ptr noundef nonnull %desc, ptr noundef nonnull %idx.i) #6
  br label %if.end60.i

if.end60.i:                                       ; preds = %if.then59.i, %if.end58.i.if.end60.i_crit_edge
  %433 = ptrtoint ptr %idx.i to i32
  call void @__asan_load4_noabort(i32 %433)
  %434 = load i32, ptr %idx.i, align 4
  %arrayidx61.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %434
  %435 = call ptr @memset(ptr %arrayidx61.i, i32 0, i32 24)
  %arrayidx.i85.i = getelementptr [6 x i32], ptr %arrayidx61.i, i32 0, i32 4
  %436 = ptrtoint ptr %arrayidx.i85.i to i32
  call void @__asan_store4_noabort(i32 %436)
  store i32 3072, ptr %arrayidx.i85.i, align 4
  %437 = ptrtoint ptr %mac_buf_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %437)
  %438 = load i32, ptr %mac_buf_dma_addr.i, align 4
  %authsize.i313 = getelementptr i8, ptr %362, i32 168
  %439 = ptrtoint ptr %authsize.i313 to i32
  call void @__asan_load4_noabort(i32 %439)
  %440 = load i32, ptr %authsize.i313, align 4
  %arrayidx.i.i87.i = getelementptr [6 x i32], ptr %arrayidx61.i, i32 0, i32 2
  %441 = ptrtoint ptr %arrayidx.i.i87.i to i32
  call void @__asan_store4_noabort(i32 %441)
  store i32 %438, ptr %arrayidx.i.i87.i, align 4
  %shl28.i.i.i = shl i32 %440, 2
  %and29.i.i.i = and i32 %shl28.i.i.i, 67108860
  %arrayidx50.i.i.i314 = getelementptr [6 x i32], ptr %arrayidx61.i, i32 0, i32 3
  %442 = ptrtoint ptr %arrayidx50.i.i.i314 to i32
  call void @__asan_load4_noabort(i32 %442)
  %443 = load i32, ptr %arrayidx50.i.i.i314, align 4
  %or.i.i88.i = or i32 %and29.i.i.i, %443
  %or51.i.i.i = or i32 %or.i.i88.i, 67108866
  store i32 %or51.i.i.i, ptr %arrayidx50.i.i.i314, align 4
  store i32 134483051, ptr %arrayidx.i85.i, align 4
  %inc69.i = add i32 %434, 1
  %arrayidx70.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc69.i
  %444 = getelementptr inbounds i8, ptr %arrayidx70.i, i32 8
  %445 = call ptr @memset(ptr %444, i32 0, i32 16)
  %arrayidx.i97.i = getelementptr [6 x i32], ptr %arrayidx70.i, i32 0, i32 4
  %446 = ptrtoint ptr %arrayidx.i97.i to i32
  call void @__asan_store4_noabort(i32 %446)
  store i32 2048, ptr %arrayidx.i97.i, align 4
  %ccm_iv0_dma_addr.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 4
  %447 = ptrtoint ptr %ccm_iv0_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %447)
  %448 = load i32, ptr %ccm_iv0_dma_addr.i, align 16
  %449 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_store4_noabort(i32 %449)
  store i32 %448, ptr %arrayidx70.i, align 4
  %arrayidx50.i100.i = getelementptr [6 x i32], ptr %arrayidx70.i, i32 0, i32 1
  %450 = ptrtoint ptr %arrayidx50.i100.i to i32
  call void @__asan_store4_noabort(i32 %450)
  store i32 67108930, ptr %arrayidx50.i100.i, align 4
  %451 = ptrtoint ptr %enc_keylen.i to i32
  call void @__asan_load4_noabort(i32 %451)
  %452 = load i32, ptr %enc_keylen.i, align 4
  %453 = shl i32 %452, 19
  %454 = add i32 %453, 8388608
  %and9.i.i108.i = and i32 %454, 12582912
  %or.i115.i = or i32 %and9.i.i108.i, 33556512
  store i32 %or.i115.i, ptr %arrayidx.i97.i, align 4
  %inc78.i = add i32 %434, 2
  %arrayidx79.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc78.i
  %arrayidx10.i.i = getelementptr [6 x i32], ptr %arrayidx79.i, i32 0, i32 1
  %455 = call ptr @memset(ptr %arrayidx79.i, i32 0, i32 24)
  %456 = ptrtoint ptr %arrayidx10.i.i to i32
  call void @__asan_store4_noabort(i32 %456)
  store i32 67108800, ptr %arrayidx10.i.i, align 4
  %arrayidx33.i.i = getelementptr [6 x i32], ptr %arrayidx79.i, i32 0, i32 3
  %457 = ptrtoint ptr %arrayidx33.i.i to i32
  call void @__asan_store4_noabort(i32 %457)
  store i32 134217728, ptr %arrayidx33.i.i, align 4
  %inc82.i = add i32 %434, 3
  %arrayidx83.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc82.i
  %458 = call ptr @memset(ptr %arrayidx83.i, i32 0, i32 24)
  %459 = load i32, ptr %authsize.i313, align 4
  %460 = ptrtoint ptr %arrayidx83.i to i32
  call void @__asan_store4_noabort(i32 %460)
  store i32 %438, ptr %arrayidx83.i, align 4
  %shl28.i120.i = shl i32 %459, 2
  %and29.i121.i = and i32 %shl28.i120.i, 67108860
  %arrayidx50.i122.i = getelementptr [6 x i32], ptr %arrayidx83.i, i32 0, i32 1
  %461 = ptrtoint ptr %arrayidx50.i122.i to i32
  call void @__asan_load4_noabort(i32 %461)
  %462 = load i32, ptr %arrayidx50.i122.i, align 4
  %or.i123.i = or i32 %and29.i121.i, %462
  %or51.i125.i = or i32 %or.i123.i, 67108866
  store i32 %or51.i125.i, ptr %arrayidx50.i122.i, align 4
  %463 = load i32, ptr %authsize.i313, align 4
  %arrayidx.i.i127.i = getelementptr [6 x i32], ptr %arrayidx83.i, i32 0, i32 2
  %464 = ptrtoint ptr %arrayidx.i.i127.i to i32
  call void @__asan_store4_noabort(i32 %464)
  store i32 %mac_result.0.i, ptr %arrayidx.i.i127.i, align 4
  %shl28.i.i130.i = shl i32 %463, 2
  %and29.i.i131.i = and i32 %shl28.i.i130.i, 67108860
  %arrayidx50.i.i132.i = getelementptr [6 x i32], ptr %arrayidx83.i, i32 0, i32 3
  %465 = ptrtoint ptr %arrayidx50.i.i132.i to i32
  call void @__asan_load4_noabort(i32 %465)
  %466 = load i32, ptr %arrayidx50.i.i132.i, align 4
  %or.i.i133.i = or i32 %466, %and29.i.i131.i
  %or.i135.i = or i32 %or.i.i133.i, 201326594
  store i32 %or.i135.i, ptr %arrayidx50.i.i132.i, align 4
  %467 = ptrtoint ptr %__crt_ctx.i.i.i301 to i32
  call void @__asan_load4_noabort(i32 %467)
  %468 = load ptr, ptr %__crt_ctx.i.i.i301, align 4
  %hw_rev.i.i = getelementptr inbounds %struct.cc_drvdata, ptr %468, i32 0, i32 16
  %469 = ptrtoint ptr %hw_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %469)
  %470 = load i32, ptr %hw_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %470)
  %cmp.i.i315 = icmp ugt i32 %470, 711
  br i1 %cmp.i.i315, label %if.then.i.i316, label %if.end60.i.cc_ccm.exit_crit_edge

if.end60.i.cc_ccm.exit_crit_edge:                 ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_ccm.exit

if.then.i.i316:                                   ; preds = %if.end60.i
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i138.i = or i32 %or.i.i133.i, -1946157054
  %471 = ptrtoint ptr %arrayidx50.i.i132.i to i32
  call void @__asan_store4_noabort(i32 %471)
  store i32 %or.i.i138.i, ptr %arrayidx50.i.i132.i, align 4
  br label %cc_ccm.exit

cc_ccm.exit:                                      ; preds = %if.then.i.i316, %if.end60.i.cc_ccm.exit_crit_edge
  %arrayidx.i139.i = getelementptr [6 x i32], ptr %arrayidx83.i, i32 0, i32 4
  %472 = ptrtoint ptr %arrayidx.i139.i to i32
  call void @__asan_load4_noabort(i32 %472)
  %473 = load i32, ptr %arrayidx.i139.i, align 4
  %or.i140.i = or i32 %473, 1
  store i32 %or.i140.i, ptr %arrayidx.i139.i, align 4
  %inc91.i = add i32 %434, 4
  %474 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %474)
  store i32 %inc91.i, ptr %seq_len, align 4
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %idx.i) #6
  %475 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %475)
  %.pr = load i32, ptr %cipher_mode, align 4
  br label %if.end126

if.end126:                                        ; preds = %cc_ccm.exit, %sw.bb120.if.end126_crit_edge
  %476 = phi i32 [ %.pr, %cc_ccm.exit ], [ %360, %sw.bb120.if.end126_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %476)
  %cmp128 = icmp eq i32 %476, 12
  br i1 %cmp128, label %if.then129, label %if.end126.sw.epilog_crit_edge

if.end126.sw.epilog_crit_edge:                    ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then129:                                       ; preds = %if.end126
  %plaintext_authenticate_only.i317 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 42
  %477 = ptrtoint ptr %plaintext_authenticate_only.i317 to i32
  call void @__asan_load1_noabort(i32 %477)
  %478 = load i8, ptr %plaintext_authenticate_only.i317, align 2, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %478)
  %tobool.not.i318 = icmp eq i8 %478, 0
  br i1 %tobool.not.i318, label %if.end.i338, label %if.then.i321

if.then.i321:                                     ; preds = %if.then129
  call fastcc void @cc_proc_cipher_desc(ptr noundef %req, i32 noundef 0, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len) #6
  %479 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %479)
  %480 = load ptr, ptr %tfm.i, align 16
  %481 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %481)
  %482 = load i32, ptr %seq_len, align 4
  %arrayidx.i.i319 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %482
  %483 = call ptr @memset(ptr %arrayidx.i.i319, i32 0, i32 24)
  %enckey_dma_addr.i.i = getelementptr i8, ptr %480, i32 140
  %484 = ptrtoint ptr %enckey_dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %484)
  %485 = load i32, ptr %enckey_dma_addr.i.i, align 4
  %enc_keylen.i.i = getelementptr i8, ptr %480, i32 160
  %486 = ptrtoint ptr %enc_keylen.i.i to i32
  call void @__asan_load4_noabort(i32 %486)
  %487 = load i32, ptr %enc_keylen.i.i, align 4
  %488 = ptrtoint ptr %arrayidx.i.i319 to i32
  call void @__asan_store4_noabort(i32 %488)
  store i32 %485, ptr %arrayidx.i.i319, align 4
  %shl28.i.i.i323 = shl i32 %487, 2
  %and29.i.i.i324 = and i32 %shl28.i.i.i323, 67108860
  %arrayidx50.i.i.i325 = getelementptr [6 x i32], ptr %arrayidx.i.i319, i32 0, i32 1
  %489 = ptrtoint ptr %arrayidx50.i.i.i325 to i32
  call void @__asan_load4_noabort(i32 %489)
  %490 = load i32, ptr %arrayidx50.i.i.i325, align 4
  %or.i.i.i = or i32 %and29.i.i.i324, %490
  %or51.i.i.i326 = or i32 %or.i.i.i, 67108866
  store i32 %or51.i.i.i326, ptr %arrayidx50.i.i.i325, align 4
  %491 = load i32, ptr %enc_keylen.i.i, align 4
  %arrayidx.i.i.i327 = getelementptr [6 x i32], ptr %arrayidx.i.i319, i32 0, i32 4
  %492 = shl i32 %491, 19
  %493 = add i32 %492, 8388608
  %and9.i.i.i.i = and i32 %493, 12582912
  %or.i143.i.i = or i32 %and9.i.i.i.i, 67108896
  %494 = ptrtoint ptr %arrayidx.i.i.i327 to i32
  call void @__asan_store4_noabort(i32 %494)
  store i32 %or.i143.i.i, ptr %arrayidx.i.i.i327, align 4
  %inc.i.i328 = add i32 %482, 1
  %arrayidx10.i.i329 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i.i328
  %arrayidx33.i.i.i330 = getelementptr [6 x i32], ptr %arrayidx10.i.i329, i32 0, i32 1
  %495 = call ptr @memset(ptr %arrayidx10.i.i329, i32 0, i32 24)
  %496 = ptrtoint ptr %arrayidx33.i.i.i330 to i32
  call void @__asan_store4_noabort(i32 %496)
  store i32 134217793, ptr %arrayidx33.i.i.i330, align 4
  %hkey_dma_addr.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 20
  %497 = ptrtoint ptr %hkey_dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %497)
  %498 = load i32, ptr %hkey_dma_addr.i.i, align 64
  %arrayidx.i.i144.i.i = getelementptr [6 x i32], ptr %arrayidx10.i.i329, i32 0, i32 2
  %499 = ptrtoint ptr %arrayidx.i.i144.i.i to i32
  call void @__asan_store4_noabort(i32 %499)
  store i32 %498, ptr %arrayidx.i.i144.i.i, align 4
  %arrayidx50.i.i.i.i = getelementptr [6 x i32], ptr %arrayidx10.i.i329, i32 0, i32 3
  %500 = ptrtoint ptr %arrayidx50.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %500)
  store i32 67108930, ptr %arrayidx50.i.i.i.i, align 4
  %arrayidx.i146.i.i = getelementptr [6 x i32], ptr %arrayidx10.i.i329, i32 0, i32 4
  %501 = ptrtoint ptr %arrayidx.i146.i.i to i32
  call void @__asan_store4_noabort(i32 %501)
  store i32 1, ptr %arrayidx.i146.i.i, align 4
  %inc14.i.i = add i32 %482, 2
  %arrayidx15.i.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc14.i.i
  %arrayidx10.i.i.i331 = getelementptr [6 x i32], ptr %arrayidx15.i.i, i32 0, i32 1
  %502 = call ptr @memset(ptr %arrayidx15.i.i, i32 0, i32 24)
  %503 = ptrtoint ptr %arrayidx10.i.i.i331 to i32
  call void @__asan_store4_noabort(i32 %503)
  store i32 67108800, ptr %arrayidx10.i.i.i331, align 4
  %arrayidx33.i150.i.i = getelementptr [6 x i32], ptr %arrayidx15.i.i, i32 0, i32 3
  %504 = ptrtoint ptr %arrayidx33.i150.i.i to i32
  call void @__asan_store4_noabort(i32 %504)
  store i32 134217728, ptr %arrayidx33.i150.i.i, align 4
  %inc18.i.i = add i32 %482, 3
  %arrayidx19.i.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc18.i.i
  %505 = getelementptr inbounds i8, ptr %arrayidx19.i.i, i32 20
  %506 = ptrtoint ptr %505 to i32
  call void @__asan_store4_noabort(i32 %506)
  store i32 0, ptr %505, align 4
  %507 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_store4_noabort(i32 %507)
  store i32 %498, ptr %arrayidx19.i.i, align 4
  %arrayidx50.i152.i.i = getelementptr [6 x i32], ptr %arrayidx19.i.i, i32 0, i32 1
  %508 = ptrtoint ptr %arrayidx50.i152.i.i to i32
  call void @__asan_store4_noabort(i32 %508)
  store i32 67108930, ptr %arrayidx50.i152.i.i, align 4
  %arrayidx.i155.i.i = getelementptr [6 x i32], ptr %arrayidx19.i.i, i32 0, i32 2
  %509 = ptrtoint ptr %arrayidx.i155.i.i to i32
  call void @__asan_store4_noabort(i32 %509)
  store i32 0, ptr %arrayidx.i155.i.i, align 4
  %arrayidx33.i156.i.i = getelementptr [6 x i32], ptr %arrayidx19.i.i, i32 0, i32 3
  %510 = ptrtoint ptr %arrayidx33.i156.i.i to i32
  call void @__asan_store4_noabort(i32 %510)
  store i32 134217728, ptr %arrayidx33.i156.i.i, align 4
  %arrayidx.i158.i.i = getelementptr [6 x i32], ptr %arrayidx19.i.i, i32 0, i32 4
  %511 = ptrtoint ptr %arrayidx.i158.i.i to i32
  call void @__asan_store4_noabort(i32 %511)
  store i32 67639397, ptr %arrayidx.i158.i.i, align 4
  %inc28.i.i332 = add i32 %482, 4
  %arrayidx29.i.i333 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc28.i.i332
  %arrayidx10.i168.i.i = getelementptr [6 x i32], ptr %arrayidx29.i.i333, i32 0, i32 1
  %512 = call ptr @memset(ptr %arrayidx29.i.i333, i32 0, i32 24)
  %513 = ptrtoint ptr %arrayidx10.i168.i.i to i32
  call void @__asan_store4_noabort(i32 %513)
  store i32 67108800, ptr %arrayidx10.i168.i.i, align 4
  %arrayidx33.i171.i.i = getelementptr [6 x i32], ptr %arrayidx29.i.i333, i32 0, i32 3
  %514 = ptrtoint ptr %arrayidx33.i171.i.i to i32
  call void @__asan_store4_noabort(i32 %514)
  store i32 134217728, ptr %arrayidx33.i171.i.i, align 4
  %arrayidx.i173.i.i = getelementptr [6 x i32], ptr %arrayidx29.i.i333, i32 0, i32 4
  %515 = ptrtoint ptr %arrayidx.i173.i.i to i32
  call void @__asan_store4_noabort(i32 %515)
  store i32 67672165, ptr %arrayidx.i173.i.i, align 4
  %inc39.i.i = add i32 %482, 5
  %arrayidx40.i.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc39.i.i
  %arrayidx33.i186.i.i = getelementptr [6 x i32], ptr %arrayidx40.i.i, i32 0, i32 1
  %516 = call ptr @memset(ptr %arrayidx40.i.i, i32 0, i32 24)
  %517 = ptrtoint ptr %arrayidx33.i186.i.i to i32
  call void @__asan_store4_noabort(i32 %517)
  store i32 134217793, ptr %arrayidx33.i186.i.i, align 4
  %arrayidx33.i190.i.i = getelementptr [6 x i32], ptr %arrayidx40.i.i, i32 0, i32 3
  %518 = ptrtoint ptr %arrayidx33.i190.i.i to i32
  call void @__asan_store4_noabort(i32 %518)
  store i32 134217728, ptr %arrayidx33.i190.i.i, align 4
  %arrayidx.i192.i.i = getelementptr [6 x i32], ptr %arrayidx40.i.i, i32 0, i32 4
  %519 = ptrtoint ptr %arrayidx.i192.i.i to i32
  call void @__asan_store4_noabort(i32 %519)
  store i32 17307749, ptr %arrayidx.i192.i.i, align 4
  %inc48.i.i = add i32 %482, 6
  store i32 %inc48.i.i, ptr %seq_len, align 4
  call fastcc void @cc_set_assoc_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len) #6
  %520 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %520)
  %521 = load ptr, ptr %tfm.i, align 16
  %522 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %522)
  %523 = load i32, ptr %seq_len, align 4
  %arrayidx.i2.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %523
  %524 = call ptr @memset(ptr %arrayidx.i2.i, i32 0, i32 24)
  %arrayidx.i.i3.i = getelementptr [6 x i32], ptr %arrayidx.i2.i, i32 0, i32 4
  %525 = ptrtoint ptr %arrayidx.i.i3.i to i32
  call void @__asan_store4_noabort(i32 %525)
  store i32 12288, ptr %arrayidx.i.i3.i, align 4
  %enckey_dma_addr.i4.i = getelementptr i8, ptr %521, i32 140
  %526 = ptrtoint ptr %enckey_dma_addr.i4.i to i32
  call void @__asan_load4_noabort(i32 %526)
  %527 = load i32, ptr %enckey_dma_addr.i4.i, align 4
  %enc_keylen.i5.i = getelementptr i8, ptr %521, i32 160
  %528 = ptrtoint ptr %enc_keylen.i5.i to i32
  call void @__asan_load4_noabort(i32 %528)
  %529 = load i32, ptr %enc_keylen.i5.i, align 4
  %530 = ptrtoint ptr %arrayidx.i2.i to i32
  call void @__asan_store4_noabort(i32 %530)
  store i32 %527, ptr %arrayidx.i2.i, align 4
  %shl28.i.i8.i = shl i32 %529, 2
  %and29.i.i9.i = and i32 %shl28.i.i8.i, 67108860
  %arrayidx50.i.i10.i = getelementptr [6 x i32], ptr %arrayidx.i2.i, i32 0, i32 1
  %531 = ptrtoint ptr %arrayidx50.i.i10.i to i32
  call void @__asan_load4_noabort(i32 %531)
  %532 = load i32, ptr %arrayidx50.i.i10.i, align 4
  %or.i57.i.i = or i32 %and29.i.i9.i, %532
  %or51.i.i11.i = or i32 %or.i57.i.i, 67108866
  store i32 %or51.i.i11.i, ptr %arrayidx50.i.i10.i, align 4
  %533 = load i32, ptr %enc_keylen.i5.i, align 4
  %534 = shl i32 %533, 19
  %535 = add i32 %534, 8388608
  %and9.i.i.i18.i = and i32 %535, 12582912
  %or.i61.i.i = or i32 %and9.i.i.i18.i, 67121184
  store i32 %or.i61.i.i, ptr %arrayidx.i.i3.i, align 4
  %inc.i19.i = add i32 %523, 1
  %cryptlen.i.i334 = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 4
  %536 = ptrtoint ptr %cryptlen.i.i334 to i32
  call void @__asan_load4_noabort(i32 %536)
  %537 = load i32, ptr %cryptlen.i.i334, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %537)
  %tobool.not.i.i = icmp eq i32 %537, 0
  br i1 %tobool.not.i.i, label %if.then.i321.cc_set_gctr_desc.exit.i_crit_edge, label %land.lhs.true.i.i

if.then.i321.cc_set_gctr_desc.exit.i_crit_edge:   ; preds = %if.then.i321
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_set_gctr_desc.exit.i

land.lhs.true.i.i:                                ; preds = %if.then.i321
  %538 = ptrtoint ptr %plaintext_authenticate_only.i317 to i32
  call void @__asan_load1_noabort(i32 %538)
  %539 = load i8, ptr %plaintext_authenticate_only.i317, align 2, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %539)
  %tobool10.not.i.i = icmp eq i8 %539, 0
  br i1 %tobool10.not.i.i, label %if.then.i.i335, label %land.lhs.true.i.i.cc_set_gctr_desc.exit.i_crit_edge

land.lhs.true.i.i.cc_set_gctr_desc.exit.i_crit_edge: ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_set_gctr_desc.exit.i

if.then.i.i335:                                   ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx11.i.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i19.i
  %540 = call ptr @memset(ptr %arrayidx11.i.i, i32 0, i32 24)
  %arrayidx.i62.i.i = getelementptr [6 x i32], ptr %arrayidx11.i.i, i32 0, i32 4
  %541 = ptrtoint ptr %arrayidx.i62.i.i to i32
  call void @__asan_store4_noabort(i32 %541)
  store i32 12288, ptr %arrayidx.i62.i.i, align 4
  %542 = ptrtoint ptr %enc_keylen.i5.i to i32
  call void @__asan_load4_noabort(i32 %542)
  %543 = load i32, ptr %enc_keylen.i5.i, align 4
  %544 = shl i32 %543, 19
  %545 = add i32 %544, 8388608
  %and9.i.i69.i.i = and i32 %545, 12582912
  %gcm_iv_inc2_dma_addr.i.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 16
  %546 = ptrtoint ptr %gcm_iv_inc2_dma_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %546)
  %547 = load i32, ptr %gcm_iv_inc2_dma_addr.i.i, align 4
  %548 = ptrtoint ptr %arrayidx11.i.i to i32
  call void @__asan_store4_noabort(i32 %548)
  store i32 %547, ptr %arrayidx11.i.i, align 4
  %arrayidx50.i73.i.i = getelementptr [6 x i32], ptr %arrayidx11.i.i, i32 0, i32 1
  %549 = ptrtoint ptr %arrayidx50.i73.i.i to i32
  call void @__asan_load4_noabort(i32 %549)
  %550 = load i32, ptr %arrayidx50.i73.i.i, align 4
  %or51.i75.i.i = or i32 %550, 67108930
  store i32 %or51.i75.i.i, ptr %arrayidx50.i73.i.i, align 4
  %or.i80.i.i = or i32 %and9.i.i69.i.i, 33566752
  store i32 %or.i80.i.i, ptr %arrayidx.i62.i.i, align 4
  %inc19.i.i = add i32 %523, 2
  br label %cc_set_gctr_desc.exit.i

cc_set_gctr_desc.exit.i:                          ; preds = %if.then.i.i335, %land.lhs.true.i.i.cc_set_gctr_desc.exit.i_crit_edge, %if.then.i321.cc_set_gctr_desc.exit.i_crit_edge
  %idx.0.i.i = phi i32 [ %inc.i19.i, %land.lhs.true.i.i.cc_set_gctr_desc.exit.i_crit_edge ], [ %inc19.i.i, %if.then.i.i335 ], [ %inc.i19.i, %if.then.i321.cc_set_gctr_desc.exit.i_crit_edge ]
  %551 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %551)
  store i32 %idx.0.i.i, ptr %seq_len, align 4
  br label %cc_gcm.exit

if.end.i338:                                      ; preds = %if.then129
  %552 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %552)
  %553 = load i32, ptr %op_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %553)
  %cmp.i337 = icmp eq i32 %553, 1
  %..i = select i1 %cmp.i337, i32 3, i32 10
  %554 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %554)
  %555 = load ptr, ptr %tfm.i, align 16
  %556 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %556)
  %557 = load i32, ptr %seq_len, align 4
  %arrayidx.i21.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %557
  %558 = call ptr @memset(ptr %arrayidx.i21.i, i32 0, i32 24)
  %enckey_dma_addr.i22.i = getelementptr i8, ptr %555, i32 140
  %559 = ptrtoint ptr %enckey_dma_addr.i22.i to i32
  call void @__asan_load4_noabort(i32 %559)
  %560 = load i32, ptr %enckey_dma_addr.i22.i, align 4
  %enc_keylen.i23.i = getelementptr i8, ptr %555, i32 160
  %561 = ptrtoint ptr %enc_keylen.i23.i to i32
  call void @__asan_load4_noabort(i32 %561)
  %562 = load i32, ptr %enc_keylen.i23.i, align 4
  %563 = ptrtoint ptr %arrayidx.i21.i to i32
  call void @__asan_store4_noabort(i32 %563)
  store i32 %560, ptr %arrayidx.i21.i, align 4
  %shl28.i.i26.i = shl i32 %562, 2
  %and29.i.i27.i = and i32 %shl28.i.i26.i, 67108860
  %arrayidx50.i.i28.i = getelementptr [6 x i32], ptr %arrayidx.i21.i, i32 0, i32 1
  %564 = ptrtoint ptr %arrayidx50.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %564)
  %565 = load i32, ptr %arrayidx50.i.i28.i, align 4
  %or.i.i29.i = or i32 %and29.i.i27.i, %565
  %or51.i.i30.i = or i32 %or.i.i29.i, 67108866
  store i32 %or51.i.i30.i, ptr %arrayidx50.i.i28.i, align 4
  %566 = load i32, ptr %enc_keylen.i23.i, align 4
  %arrayidx.i.i36.i = getelementptr [6 x i32], ptr %arrayidx.i21.i, i32 0, i32 4
  %567 = shl i32 %566, 19
  %568 = add i32 %567, 8388608
  %and9.i.i.i38.i = and i32 %568, 12582912
  %or.i143.i39.i = or i32 %and9.i.i.i38.i, 67108896
  %569 = ptrtoint ptr %arrayidx.i.i36.i to i32
  call void @__asan_store4_noabort(i32 %569)
  store i32 %or.i143.i39.i, ptr %arrayidx.i.i36.i, align 4
  %inc.i40.i = add i32 %557, 1
  %arrayidx10.i41.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i40.i
  %arrayidx33.i.i42.i = getelementptr [6 x i32], ptr %arrayidx10.i41.i, i32 0, i32 1
  %570 = call ptr @memset(ptr %arrayidx10.i41.i, i32 0, i32 24)
  %571 = ptrtoint ptr %arrayidx33.i.i42.i to i32
  call void @__asan_store4_noabort(i32 %571)
  store i32 134217793, ptr %arrayidx33.i.i42.i, align 4
  %hkey_dma_addr.i43.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 20
  %572 = ptrtoint ptr %hkey_dma_addr.i43.i to i32
  call void @__asan_load4_noabort(i32 %572)
  %573 = load i32, ptr %hkey_dma_addr.i43.i, align 64
  %arrayidx.i.i144.i44.i = getelementptr [6 x i32], ptr %arrayidx10.i41.i, i32 0, i32 2
  %574 = ptrtoint ptr %arrayidx.i.i144.i44.i to i32
  call void @__asan_store4_noabort(i32 %574)
  store i32 %573, ptr %arrayidx.i.i144.i44.i, align 4
  %arrayidx50.i.i.i45.i = getelementptr [6 x i32], ptr %arrayidx10.i41.i, i32 0, i32 3
  %575 = ptrtoint ptr %arrayidx50.i.i.i45.i to i32
  call void @__asan_store4_noabort(i32 %575)
  store i32 67108930, ptr %arrayidx50.i.i.i45.i, align 4
  %arrayidx.i146.i46.i = getelementptr [6 x i32], ptr %arrayidx10.i41.i, i32 0, i32 4
  %576 = ptrtoint ptr %arrayidx.i146.i46.i to i32
  call void @__asan_store4_noabort(i32 %576)
  store i32 1, ptr %arrayidx.i146.i46.i, align 4
  %inc14.i47.i = add i32 %557, 2
  %arrayidx15.i48.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc14.i47.i
  %arrayidx10.i.i49.i = getelementptr [6 x i32], ptr %arrayidx15.i48.i, i32 0, i32 1
  %577 = call ptr @memset(ptr %arrayidx15.i48.i, i32 0, i32 24)
  %578 = ptrtoint ptr %arrayidx10.i.i49.i to i32
  call void @__asan_store4_noabort(i32 %578)
  store i32 67108800, ptr %arrayidx10.i.i49.i, align 4
  %arrayidx33.i150.i50.i = getelementptr [6 x i32], ptr %arrayidx15.i48.i, i32 0, i32 3
  %579 = ptrtoint ptr %arrayidx33.i150.i50.i to i32
  call void @__asan_store4_noabort(i32 %579)
  store i32 134217728, ptr %arrayidx33.i150.i50.i, align 4
  %inc18.i51.i = add i32 %557, 3
  %arrayidx19.i52.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc18.i51.i
  %580 = getelementptr inbounds i8, ptr %arrayidx19.i52.i, i32 20
  %581 = ptrtoint ptr %580 to i32
  call void @__asan_store4_noabort(i32 %581)
  store i32 0, ptr %580, align 4
  %582 = ptrtoint ptr %arrayidx19.i52.i to i32
  call void @__asan_store4_noabort(i32 %582)
  store i32 %573, ptr %arrayidx19.i52.i, align 4
  %arrayidx50.i152.i53.i = getelementptr [6 x i32], ptr %arrayidx19.i52.i, i32 0, i32 1
  %583 = ptrtoint ptr %arrayidx50.i152.i53.i to i32
  call void @__asan_store4_noabort(i32 %583)
  store i32 67108930, ptr %arrayidx50.i152.i53.i, align 4
  %arrayidx.i155.i54.i = getelementptr [6 x i32], ptr %arrayidx19.i52.i, i32 0, i32 2
  %584 = ptrtoint ptr %arrayidx.i155.i54.i to i32
  call void @__asan_store4_noabort(i32 %584)
  store i32 0, ptr %arrayidx.i155.i54.i, align 4
  %arrayidx33.i156.i55.i = getelementptr [6 x i32], ptr %arrayidx19.i52.i, i32 0, i32 3
  %585 = ptrtoint ptr %arrayidx33.i156.i55.i to i32
  call void @__asan_store4_noabort(i32 %585)
  store i32 134217728, ptr %arrayidx33.i156.i55.i, align 4
  %arrayidx.i158.i56.i = getelementptr [6 x i32], ptr %arrayidx19.i52.i, i32 0, i32 4
  %586 = ptrtoint ptr %arrayidx.i158.i56.i to i32
  call void @__asan_store4_noabort(i32 %586)
  store i32 67639397, ptr %arrayidx.i158.i56.i, align 4
  %inc28.i57.i = add i32 %557, 4
  %arrayidx29.i58.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc28.i57.i
  %arrayidx10.i168.i59.i = getelementptr [6 x i32], ptr %arrayidx29.i58.i, i32 0, i32 1
  %587 = call ptr @memset(ptr %arrayidx29.i58.i, i32 0, i32 24)
  %588 = ptrtoint ptr %arrayidx10.i168.i59.i to i32
  call void @__asan_store4_noabort(i32 %588)
  store i32 67108800, ptr %arrayidx10.i168.i59.i, align 4
  %arrayidx33.i171.i60.i = getelementptr [6 x i32], ptr %arrayidx29.i58.i, i32 0, i32 3
  %589 = ptrtoint ptr %arrayidx33.i171.i60.i to i32
  call void @__asan_store4_noabort(i32 %589)
  store i32 134217728, ptr %arrayidx33.i171.i60.i, align 4
  %arrayidx.i173.i61.i = getelementptr [6 x i32], ptr %arrayidx29.i58.i, i32 0, i32 4
  %590 = ptrtoint ptr %arrayidx.i173.i61.i to i32
  call void @__asan_store4_noabort(i32 %590)
  store i32 67672165, ptr %arrayidx.i173.i61.i, align 4
  %inc39.i62.i = add i32 %557, 5
  %arrayidx40.i63.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc39.i62.i
  %arrayidx33.i186.i64.i = getelementptr [6 x i32], ptr %arrayidx40.i63.i, i32 0, i32 1
  %591 = call ptr @memset(ptr %arrayidx40.i63.i, i32 0, i32 24)
  %592 = ptrtoint ptr %arrayidx33.i186.i64.i to i32
  call void @__asan_store4_noabort(i32 %592)
  store i32 134217793, ptr %arrayidx33.i186.i64.i, align 4
  %arrayidx33.i190.i65.i = getelementptr [6 x i32], ptr %arrayidx40.i63.i, i32 0, i32 3
  %593 = ptrtoint ptr %arrayidx33.i190.i65.i to i32
  call void @__asan_store4_noabort(i32 %593)
  store i32 134217728, ptr %arrayidx33.i190.i65.i, align 4
  %arrayidx.i192.i66.i = getelementptr [6 x i32], ptr %arrayidx40.i63.i, i32 0, i32 4
  %594 = ptrtoint ptr %arrayidx.i192.i66.i to i32
  call void @__asan_store4_noabort(i32 %594)
  store i32 17307749, ptr %arrayidx.i192.i66.i, align 4
  %inc48.i67.i = add i32 %557, 6
  store i32 %inc48.i67.i, ptr %seq_len, align 4
  %595 = ptrtoint ptr %assoclen2.i to i32
  call void @__asan_load4_noabort(i32 %595)
  %596 = load i32, ptr %assoclen2.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %596)
  %cmp3.not.i = icmp eq i32 %596, 0
  br i1 %cmp3.not.i, label %if.end.i338.if.end5.i_crit_edge, label %if.then4.i

if.end.i338.if.end5.i_crit_edge:                  ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i338
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @cc_set_assoc_desc(ptr noundef %req, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then4.i, %if.end.i338.if.end5.i_crit_edge
  %597 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %597)
  %598 = load ptr, ptr %tfm.i, align 16
  %599 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %599)
  %600 = load i32, ptr %seq_len, align 4
  %arrayidx.i71.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %600
  %601 = call ptr @memset(ptr %arrayidx.i71.i, i32 0, i32 24)
  %arrayidx.i.i72.i = getelementptr [6 x i32], ptr %arrayidx.i71.i, i32 0, i32 4
  %602 = ptrtoint ptr %arrayidx.i.i72.i to i32
  call void @__asan_store4_noabort(i32 %602)
  store i32 12288, ptr %arrayidx.i.i72.i, align 4
  %enckey_dma_addr.i73.i = getelementptr i8, ptr %598, i32 140
  %603 = ptrtoint ptr %enckey_dma_addr.i73.i to i32
  call void @__asan_load4_noabort(i32 %603)
  %604 = load i32, ptr %enckey_dma_addr.i73.i, align 4
  %enc_keylen.i74.i = getelementptr i8, ptr %598, i32 160
  %605 = ptrtoint ptr %enc_keylen.i74.i to i32
  call void @__asan_load4_noabort(i32 %605)
  %606 = load i32, ptr %enc_keylen.i74.i, align 4
  %607 = ptrtoint ptr %arrayidx.i71.i to i32
  call void @__asan_store4_noabort(i32 %607)
  store i32 %604, ptr %arrayidx.i71.i, align 4
  %shl28.i.i77.i = shl i32 %606, 2
  %and29.i.i78.i = and i32 %shl28.i.i77.i, 67108860
  %arrayidx50.i.i79.i = getelementptr [6 x i32], ptr %arrayidx.i71.i, i32 0, i32 1
  %608 = ptrtoint ptr %arrayidx50.i.i79.i to i32
  call void @__asan_load4_noabort(i32 %608)
  %609 = load i32, ptr %arrayidx50.i.i79.i, align 4
  %or.i57.i80.i = or i32 %and29.i.i78.i, %609
  %or51.i.i81.i = or i32 %or.i57.i80.i, 67108866
  store i32 %or51.i.i81.i, ptr %arrayidx50.i.i79.i, align 4
  %610 = load i32, ptr %enc_keylen.i74.i, align 4
  %611 = shl i32 %610, 19
  %612 = add i32 %611, 8388608
  %and9.i.i.i88.i = and i32 %612, 12582912
  %or.i61.i89.i = or i32 %and9.i.i.i88.i, 67121184
  store i32 %or.i61.i89.i, ptr %arrayidx.i.i72.i, align 4
  %inc.i90.i = add i32 %600, 1
  %cryptlen.i91.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 4
  %613 = ptrtoint ptr %cryptlen.i91.i to i32
  call void @__asan_load4_noabort(i32 %613)
  %614 = load i32, ptr %cryptlen.i91.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %614)
  %tobool.not.i92.i = icmp eq i32 %614, 0
  br i1 %tobool.not.i92.i, label %cc_set_gctr_desc.exit114.i, label %land.lhs.true.i96.i

land.lhs.true.i96.i:                              ; preds = %if.end5.i
  %615 = ptrtoint ptr %plaintext_authenticate_only.i317 to i32
  call void @__asan_load1_noabort(i32 %615)
  %616 = load i8, ptr %plaintext_authenticate_only.i317, align 2, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %616)
  %tobool10.not.i95.i = icmp eq i8 %616, 0
  br i1 %tobool10.not.i95.i, label %if.then.i102.i, label %land.lhs.true.i96.i.if.then7.i_crit_edge

land.lhs.true.i96.i.if.then7.i_crit_edge:         ; preds = %land.lhs.true.i96.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then7.i

if.then.i102.i:                                   ; preds = %land.lhs.true.i96.i
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx11.i97.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i90.i
  %617 = call ptr @memset(ptr %arrayidx11.i97.i, i32 0, i32 24)
  %arrayidx.i62.i98.i = getelementptr [6 x i32], ptr %arrayidx11.i97.i, i32 0, i32 4
  %618 = ptrtoint ptr %arrayidx.i62.i98.i to i32
  call void @__asan_store4_noabort(i32 %618)
  store i32 12288, ptr %arrayidx.i62.i98.i, align 4
  %619 = ptrtoint ptr %enc_keylen.i74.i to i32
  call void @__asan_load4_noabort(i32 %619)
  %620 = load i32, ptr %enc_keylen.i74.i, align 4
  %621 = shl i32 %620, 19
  %622 = add i32 %621, 8388608
  %and9.i.i69.i105.i = and i32 %622, 12582912
  %gcm_iv_inc2_dma_addr.i107.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 16
  %623 = ptrtoint ptr %gcm_iv_inc2_dma_addr.i107.i to i32
  call void @__asan_load4_noabort(i32 %623)
  %624 = load i32, ptr %gcm_iv_inc2_dma_addr.i107.i, align 4
  %625 = ptrtoint ptr %arrayidx11.i97.i to i32
  call void @__asan_store4_noabort(i32 %625)
  store i32 %624, ptr %arrayidx11.i97.i, align 4
  %arrayidx50.i73.i108.i = getelementptr [6 x i32], ptr %arrayidx11.i97.i, i32 0, i32 1
  %626 = ptrtoint ptr %arrayidx50.i73.i108.i to i32
  call void @__asan_load4_noabort(i32 %626)
  %627 = load i32, ptr %arrayidx50.i73.i108.i, align 4
  %or51.i75.i109.i = or i32 %627, 67108930
  store i32 %or51.i75.i109.i, ptr %arrayidx50.i73.i108.i, align 4
  %or.i80.i110.i = or i32 %and9.i.i69.i105.i, 33566752
  store i32 %or.i80.i110.i, ptr %arrayidx.i62.i98.i, align 4
  %inc19.i111.i = add i32 %600, 2
  br label %if.then7.i

cc_set_gctr_desc.exit114.i:                       ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #8
  %628 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %628)
  store i32 %inc.i90.i, ptr %seq_len, align 4
  br label %cc_gcm.exit

if.then7.i:                                       ; preds = %if.then.i102.i, %land.lhs.true.i96.i.if.then7.i_crit_edge
  %idx.0.i113.i.ph = phi i32 [ %inc19.i111.i, %if.then.i102.i ], [ %inc.i90.i, %land.lhs.true.i96.i.if.then7.i_crit_edge ]
  %629 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %629)
  store i32 %idx.0.i113.i.ph, ptr %seq_len, align 4
  call fastcc void @cc_proc_cipher_desc(ptr noundef %req, i32 noundef %..i, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len) #6
  br label %cc_gcm.exit

cc_gcm.exit:                                      ; preds = %if.then7.i, %cc_set_gctr_desc.exit114.i, %cc_set_gctr_desc.exit.i
  %630 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %630)
  %631 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i.i341 = getelementptr i8, ptr %631, i32 128
  %632 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %632)
  %633 = load i32, ptr %seq_len, align 4
  %634 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %634)
  %635 = load i32, ptr %op_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %635)
  %cmp.i343 = icmp eq i32 %635, 1
  %mac_buf_dma_addr.i344 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6
  %icv_dma_addr.i345 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 8
  %mac_result.0.in.i346 = select i1 %cmp.i343, ptr %mac_buf_dma_addr.i344, ptr %icv_dma_addr.i345
  %636 = ptrtoint ptr %mac_result.0.in.i346 to i32
  call void @__asan_load4_noabort(i32 %636)
  %mac_result.0.i347 = load i32, ptr %mac_result.0.in.i346, align 4
  %arrayidx.i348 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %633
  %637 = getelementptr inbounds i8, ptr %arrayidx.i348, i32 8
  %638 = call ptr @memset(ptr %637, i32 0, i32 16)
  %gcm_block_len_dma_addr.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 24
  %639 = ptrtoint ptr %gcm_block_len_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %639)
  %640 = load i32, ptr %gcm_block_len_dma_addr.i, align 4
  %641 = ptrtoint ptr %arrayidx.i348 to i32
  call void @__asan_store4_noabort(i32 %641)
  store i32 %640, ptr %arrayidx.i348, align 4
  %arrayidx50.i.i349 = getelementptr [6 x i32], ptr %arrayidx.i348, i32 0, i32 1
  %642 = ptrtoint ptr %arrayidx50.i.i349 to i32
  call void @__asan_store4_noabort(i32 %642)
  store i32 67108930, ptr %arrayidx50.i.i349, align 4
  %arrayidx.i.i350 = getelementptr [6 x i32], ptr %arrayidx.i348, i32 0, i32 4
  %643 = ptrtoint ptr %arrayidx.i.i350 to i32
  call void @__asan_store4_noabort(i32 %643)
  store i32 7, ptr %arrayidx.i.i350, align 4
  %inc.i351 = add i32 %633, 1
  %arrayidx5.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i351
  %644 = getelementptr i8, ptr %arrayidx5.i, i32 8
  %645 = getelementptr inbounds i8, ptr %644, i32 12
  %646 = ptrtoint ptr %645 to i32
  call void @__asan_store4_noabort(i32 %646)
  store i32 0, ptr %645, align 4
  %arrayidx.i100.i = getelementptr [6 x i32], ptr %arrayidx5.i, i32 0, i32 4
  %647 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store4_noabort(i32 %647)
  store i32 0, ptr %arrayidx5.i, align 4
  %arrayidx10.i.i352 = getelementptr [6 x i32], ptr %arrayidx5.i, i32 0, i32 1
  %648 = ptrtoint ptr %arrayidx10.i.i352 to i32
  call void @__asan_store4_noabort(i32 %648)
  store i32 67108800, ptr %arrayidx10.i.i352, align 4
  %649 = ptrtoint ptr %mac_buf_dma_addr.i344 to i32
  call void @__asan_load4_noabort(i32 %649)
  %650 = load i32, ptr %mac_buf_dma_addr.i344, align 4
  %651 = ptrtoint ptr %644 to i32
  call void @__asan_store4_noabort(i32 %651)
  store i32 %650, ptr %644, align 4
  %arrayidx50.i.i.i354 = getelementptr [6 x i32], ptr %arrayidx5.i, i32 0, i32 3
  %652 = ptrtoint ptr %arrayidx50.i.i.i354 to i32
  call void @__asan_store4_noabort(i32 %652)
  store i32 67108930, ptr %arrayidx50.i.i.i354, align 4
  %653 = ptrtoint ptr %arrayidx.i100.i to i32
  call void @__asan_store4_noabort(i32 %653)
  store i32 134223979, ptr %arrayidx.i100.i, align 4
  %inc13.i = add i32 %633, 2
  %arrayidx14.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc13.i
  %654 = call ptr @memset(ptr %arrayidx14.i, i32 0, i32 24)
  %arrayidx.i109.i = getelementptr [6 x i32], ptr %arrayidx14.i, i32 0, i32 4
  %655 = ptrtoint ptr %arrayidx.i109.i to i32
  call void @__asan_store4_noabort(i32 %655)
  store i32 12288, ptr %arrayidx.i109.i, align 4
  %enc_keylen.i355 = getelementptr i8, ptr %631, i32 160
  %656 = ptrtoint ptr %enc_keylen.i355 to i32
  call void @__asan_load4_noabort(i32 %656)
  %657 = load i32, ptr %enc_keylen.i355, align 4
  %658 = shl i32 %657, 19
  %659 = add i32 %658, 8388608
  %and9.i.i.i361 = and i32 %659, 12582912
  %gcm_iv_inc1_dma_addr.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 12
  %660 = ptrtoint ptr %gcm_iv_inc1_dma_addr.i to i32
  call void @__asan_load4_noabort(i32 %660)
  %661 = load i32, ptr %gcm_iv_inc1_dma_addr.i, align 8
  %662 = ptrtoint ptr %arrayidx14.i to i32
  call void @__asan_store4_noabort(i32 %662)
  store i32 %661, ptr %arrayidx14.i, align 4
  %arrayidx50.i113.i = getelementptr [6 x i32], ptr %arrayidx14.i, i32 0, i32 1
  %663 = ptrtoint ptr %arrayidx50.i113.i to i32
  call void @__asan_load4_noabort(i32 %663)
  %664 = load i32, ptr %arrayidx50.i113.i, align 4
  %or51.i115.i = or i32 %664, 67108930
  store i32 %or51.i115.i, ptr %arrayidx50.i113.i, align 4
  %or.i120.i = or i32 %and9.i.i.i361, 33566752
  store i32 %or.i120.i, ptr %arrayidx.i109.i, align 4
  %inc21.i362 = add i32 %633, 3
  %arrayidx22.i363 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc21.i362
  %arrayidx10.i121.i = getelementptr [6 x i32], ptr %arrayidx22.i363, i32 0, i32 1
  %665 = call ptr @memset(ptr %arrayidx22.i363, i32 0, i32 24)
  %666 = ptrtoint ptr %arrayidx10.i121.i to i32
  call void @__asan_store4_noabort(i32 %666)
  store i32 67108800, ptr %arrayidx10.i121.i, align 4
  %arrayidx33.i.i364 = getelementptr [6 x i32], ptr %arrayidx22.i363, i32 0, i32 3
  %667 = ptrtoint ptr %arrayidx33.i.i364 to i32
  call void @__asan_store4_noabort(i32 %667)
  store i32 134217728, ptr %arrayidx33.i.i364, align 4
  %inc25.i = add i32 %633, 4
  %arrayidx26.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc25.i
  %668 = getelementptr inbounds i8, ptr %arrayidx26.i, i32 8
  %669 = call ptr @memset(ptr %668, i32 0, i32 16)
  %arrayidx.i124.i = getelementptr [6 x i32], ptr %arrayidx26.i, i32 0, i32 4
  %670 = ptrtoint ptr %arrayidx.i124.i to i32
  call void @__asan_store4_noabort(i32 %670)
  store i32 12288, ptr %arrayidx.i124.i, align 4
  %671 = ptrtoint ptr %arrayidx26.i to i32
  call void @__asan_store4_noabort(i32 %671)
  store i32 %650, ptr %arrayidx26.i, align 4
  %arrayidx50.i126.i = getelementptr [6 x i32], ptr %arrayidx26.i, i32 0, i32 1
  %672 = ptrtoint ptr %arrayidx50.i126.i to i32
  call void @__asan_store4_noabort(i32 %672)
  store i32 67108930, ptr %arrayidx50.i126.i, align 4
  %authsize.i365 = getelementptr i8, ptr %631, i32 168
  %673 = ptrtoint ptr %authsize.i365 to i32
  call void @__asan_load4_noabort(i32 %673)
  %674 = load i32, ptr %authsize.i365, align 4
  %arrayidx.i.i129.i = getelementptr [6 x i32], ptr %arrayidx26.i, i32 0, i32 2
  %675 = ptrtoint ptr %arrayidx.i.i129.i to i32
  call void @__asan_store4_noabort(i32 %675)
  store i32 %mac_result.0.i347, ptr %arrayidx.i.i129.i, align 4
  %shl28.i.i.i369 = shl i32 %674, 2
  %and29.i.i.i370 = and i32 %shl28.i.i.i369, 67108860
  %arrayidx50.i.i130.i = getelementptr [6 x i32], ptr %arrayidx26.i, i32 0, i32 3
  %676 = ptrtoint ptr %arrayidx50.i.i130.i to i32
  call void @__asan_load4_noabort(i32 %676)
  %677 = load i32, ptr %arrayidx50.i.i130.i, align 4
  %or.i.i131.i = or i32 %677, %and29.i.i.i370
  %or.i133.i = or i32 %or.i.i131.i, 201326594
  store i32 %or.i133.i, ptr %arrayidx50.i.i130.i, align 4
  %678 = ptrtoint ptr %__crt_ctx.i.i.i341 to i32
  call void @__asan_load4_noabort(i32 %678)
  %679 = load ptr, ptr %__crt_ctx.i.i.i341, align 4
  %hw_rev.i.i371 = getelementptr inbounds %struct.cc_drvdata, ptr %679, i32 0, i32 16
  %680 = ptrtoint ptr %hw_rev.i.i371 to i32
  call void @__asan_load4_noabort(i32 %680)
  %681 = load i32, ptr %hw_rev.i.i371, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %681)
  %cmp.i.i372 = icmp ugt i32 %681, 711
  br i1 %cmp.i.i372, label %if.then.i.i374, label %cc_gcm.exit.cc_proc_gcm_result.exit_crit_edge

cc_gcm.exit.cc_proc_gcm_result.exit_crit_edge:    ; preds = %cc_gcm.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %cc_proc_gcm_result.exit

if.then.i.i374:                                   ; preds = %cc_gcm.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i135.i = or i32 %or.i.i131.i, -1946157054
  %682 = ptrtoint ptr %arrayidx50.i.i130.i to i32
  call void @__asan_store4_noabort(i32 %682)
  store i32 %or.i.i135.i, ptr %arrayidx50.i.i130.i, align 4
  br label %cc_proc_gcm_result.exit

cc_proc_gcm_result.exit:                          ; preds = %if.then.i.i374, %cc_gcm.exit.cc_proc_gcm_result.exit_crit_edge
  %683 = ptrtoint ptr %arrayidx.i124.i to i32
  call void @__asan_load4_noabort(i32 %683)
  %684 = load i32, ptr %arrayidx.i124.i, align 4
  %or.i137.i = or i32 %684, 1
  store i32 %or.i137.i, ptr %arrayidx.i124.i, align 4
  %inc33.i = add i32 %633, 5
  %685 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %685)
  store i32 %inc33.i, ptr %seq_len, align 4
  br label %sw.epilog

do.end135:                                        ; preds = %if.end115
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.13, i32 noundef %140) #9
  tail call void @cc_unmap_aead_request(ptr noundef %dev.i, ptr noundef %req) #6
  br label %cleanup

sw.epilog:                                        ; preds = %cc_proc_gcm_result.exit, %if.end126.sw.epilog_crit_edge, %cc_xcbc_authenc.exit, %cc_hmac_authenc.exit
  %686 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %686)
  %687 = load ptr, ptr %__crt_ctx.i.i, align 4
  %688 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %688)
  %689 = load i32, ptr %seq_len, align 4
  %call139 = call i32 @cc_send_request(ptr noundef %687, ptr noundef nonnull %cc_req, ptr noundef nonnull %desc, i32 noundef %689, ptr noundef %req) #6
  %690 = zext i32 %call139 to i64
  call void @__sanitizer_cov_trace_switch(i64 %690, ptr @__sancov_gen_cov_switch_values.116)
  switch i32 %call139, label %do.end145 [
    i32 -115, label %sw.epilog.cleanup_crit_edge
    i32 -16, label %exit.fold.split
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

do.end145:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.15, i32 noundef %call139) #9
  call void @cc_unmap_aead_request(ptr noundef %dev.i, ptr noundef %req) #6
  br label %cleanup

exit.fold.split:                                  ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %exit.fold.split, %do.end145, %sw.epilog.cleanup_crit_edge, %do.end135, %do.end114, %if.then77, %do.body65, %do.end17
  %retval.0 = phi i32 [ -22, %do.end17 ], [ %call62, %if.then77 ], [ %call109, %do.end114 ], [ -524, %do.end135 ], [ %call139, %do.end145 ], [ %call139, %sw.epilog.cleanup_crit_edge ], [ -16, %exit.fold.split ], [ %call62, %do.body65 ]
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cc_req) #6
  call void @llvm.lifetime.end.p0(i64 552, ptr nonnull %desc) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq_len) #6
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc_aead_complete(ptr noundef %dev, ptr noundef %cc_req, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %cc_req, i32 0, i32 7
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %cc_req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err)
  %cmp = icmp eq i32 %err, -115
  br i1 %cmp, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end:                                           ; preds = %entry
  tail call void @cc_unmap_aead_request(ptr noundef %dev, ptr noundef %cc_req) #6
  %backup_iv = getelementptr inbounds %struct.aead_request, ptr %cc_req, i32 8, i32 4
  %2 = ptrtoint ptr %backup_iv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %backup_iv, align 4
  %iv = getelementptr inbounds %struct.aead_request, ptr %cc_req, i32 0, i32 3
  %4 = ptrtoint ptr %iv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %iv, align 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %if.end4, label %if.end.done_crit_edge

if.end.done_crit_edge:                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.end4:                                          ; preds = %if.end
  %op_type = getelementptr inbounds %struct.aead_request, ptr %cc_req, i32 8, i32 6, i32 40
  %5 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %op_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %6)
  %cmp5 = icmp eq i32 %6, 1
  br i1 %cmp5, label %if.then6, label %if.else

if.then6:                                         ; preds = %if.end4
  %icv_virt_addr = getelementptr inbounds %struct.aead_request, ptr %cc_req, i32 8, i32 6, i32 28
  %7 = ptrtoint ptr %icv_virt_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %icv_virt_addr, align 8
  %authsize = getelementptr i8, ptr %1, i32 168
  %9 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %authsize, align 4
  %bcmp = tail call i32 @bcmp(ptr %__ctx.i, ptr %8, i32 %10) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bcmp)
  %cmp8.not = icmp eq i32 %bcmp, 0
  br i1 %cmp8.not, label %if.then6.done_crit_edge, label %do.body

if.then6.done_crit_edge:                          ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

do.body:                                          ; preds = %if.then6
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_aead_complete.__UNIQUE_ID_ddebug534, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_aead_complete, %if.then14)) #6
          to label %do.end [label %if.then14], !srcloc !210

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %authsize, align 4
  %cipher_mode = getelementptr i8, ptr %1, i32 176
  %13 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %cipher_mode, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_aead_complete.__UNIQUE_ID_ddebug534, ptr noundef %dev, ptr noundef nonnull @.str.47, i32 noundef %12, i32 noundef %14) #6
  br label %do.end

do.end:                                           ; preds = %if.then14, %do.body
  %dst = getelementptr inbounds %struct.aead_request, ptr %cc_req, i32 0, i32 5
  %15 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dst, align 8
  %call18 = tail call i32 @sg_nents(ptr noundef %16) #6
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %cc_req, i32 0, i32 2
  %17 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cryptlen, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %cc_req, i32 0, i32 1
  %19 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %assoclen, align 8
  %call19 = tail call i32 @sg_zero_buffer(ptr noundef %16, i32 noundef %call18, i32 noundef %18, i32 noundef %20) #6
  br label %done

if.else:                                          ; preds = %if.end4
  %is_icv_fragmented = getelementptr inbounds %struct.aead_request, ptr %cc_req, i32 9, i32 6, i32 40
  %21 = ptrtoint ptr %is_icv_fragmented to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %is_icv_fragmented, align 4, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool21.not = icmp eq i8 %22, 0
  br i1 %tobool21.not, label %if.else.done_crit_edge, label %if.then22

if.else.done_crit_edge:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %done

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %cryptlen23 = getelementptr inbounds %struct.aead_request, ptr %cc_req, i32 0, i32 2
  %23 = ptrtoint ptr %cryptlen23 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cryptlen23, align 4
  %dst_offset = getelementptr inbounds %struct.aead_request, ptr %cc_req, i32 9, i32 0, i32 4
  %25 = ptrtoint ptr %dst_offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dst_offset, align 4
  %add = add i32 %26, %24
  %dst_sgl = getelementptr inbounds %struct.aead_request, ptr %cc_req, i32 9, i32 0, i32 2
  %27 = ptrtoint ptr %dst_sgl to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dst_sgl, align 4
  %authsize26 = getelementptr i8, ptr %1, i32 168
  %29 = ptrtoint ptr %authsize26 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %authsize26, align 4
  %add27 = add i32 %30, %add
  tail call void @cc_copy_sg_portion(ptr noundef %dev, ptr noundef %__ctx.i, ptr noundef %28, i32 noundef %add, i32 noundef %add27, i32 noundef 1) #6
  br label %done

done:                                             ; preds = %if.then22, %if.else.done_crit_edge, %do.end, %if.then6.done_crit_edge, %if.end.done_crit_edge, %entry.done_crit_edge
  %err.addr.0 = phi i32 [ -115, %entry.done_crit_edge ], [ %err, %if.end.done_crit_edge ], [ -74, %do.end ], [ 0, %if.then6.done_crit_edge ], [ 0, %if.then22 ], [ 0, %if.else.done_crit_edge ]
  %complete.i = getelementptr inbounds %struct.crypto_async_request, ptr %cc_req, i32 0, i32 1
  %31 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %complete.i, align 8
  tail call void %32(ptr noundef %cc_req, i32 noundef %err.addr.0) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @config_ccm_adata(ptr nocapture noundef %req) unnamed_addr #0 align 64 {
entry:
  %data.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %__ctx.i = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 7
  %iv = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iv, align 32
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %7, align 1
  %conv = zext i8 %9 to i32
  %add = add nuw nsw i32 %conv, 1
  %authsize = getelementptr i8, ptr %1, i32 168
  %10 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %authsize, align 4
  %ccm_config = getelementptr inbounds %struct.aead_request, ptr %req, i32 7
  %add.ptr6 = getelementptr %struct.aead_request, ptr %req, i32 7, i32 0, i32 3
  %add.ptr9 = getelementptr %struct.aead_request, ptr %req, i32 7, i32 3
  %op_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 40
  %12 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %op_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp = icmp eq i32 %13, 0
  %cryptlen11 = getelementptr inbounds %struct.aead_request, ptr %req, i32 0, i32 2
  %14 = ptrtoint ptr %cryptlen11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %cryptlen11, align 4
  %sub = select i1 %cmp, i32 0, i32 %11
  %cond = sub i32 %15, %sub
  %16 = call ptr @memset(ptr %__ctx.i, i32 0, i32 16)
  %17 = call ptr @memset(ptr %ccm_config, i32 0, i32 48)
  %18 = add i8 %9, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 -7, i8 %18)
  %19 = icmp ult i8 %18, -7
  br i1 %19, label %do.body, label %if.end28

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @config_ccm_adata.__UNIQUE_ID_ddebug548, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@config_ccm_adata, %if.then24)) #6
          to label %cleanup [label %if.then24], !srcloc !210

if.then24:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iv, align 32
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  %conv27 = zext i8 %23 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @config_ccm_adata.__UNIQUE_ID_ddebug548, ptr noundef %dev.i, ptr noundef nonnull @.str.49, i32 noundef %conv27) #6
  br label %cleanup

if.end28:                                         ; preds = %entry
  %24 = call ptr @memcpy(ptr %ccm_config, ptr %7, i32 16)
  %25 = ptrtoint ptr %ccm_config to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ccm_config, align 1
  %.tr = trunc i32 %11 to i8
  %27 = shl i8 %.tr, 2
  %28 = add i8 %27, -8
  %29 = and i8 %28, -8
  %conv32 = or i8 %26, %29
  store i8 %conv32, ptr %ccm_config, align 1
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 5
  %30 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %assoclen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp33.not = icmp eq i32 %31, 0
  br i1 %cmp33.not, label %if.end28.if.end39_crit_edge, label %if.then35

if.end28.if.end39_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end39

if.then35:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %32 = or i8 %conv32, 64
  %33 = ptrtoint ptr %ccm_config to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 %32, ptr %ccm_config, align 1
  br label %if.end39

if.end39:                                         ; preds = %if.then35, %if.end28.if.end39_crit_edge
  %idx.neg = xor i32 %conv, -1
  %add.ptr41 = getelementptr i8, ptr %add.ptr6, i32 %idx.neg
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %data.i) #6
  %34 = call ptr @memset(ptr %add.ptr41, i32 0, i32 %add)
  call void @__sanitizer_cov_trace_const_cmp1(i8 2, i8 %9)
  %cmp.i = icmp ugt i8 %9, 2
  br i1 %cmp.i, label %if.end39.if.end48_crit_edge, label %if.else.i

if.end39.if.end48_crit_edge:                      ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

if.else.i:                                        ; preds = %if.end39
  %mul.i = shl nuw nsw i32 %add, 3
  %shl.i = shl nuw nsw i32 1, %mul.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl.i, i32 %cond)
  %cmp1.i = icmp ult i32 %shl.i, %cond
  br i1 %cmp1.i, label %do.end47, label %if.else.i.if.end48_crit_edge

if.else.i.if.end48_crit_edge:                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end48

do.end47:                                         ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.50) #9
  br label %cleanup

if.end48:                                         ; preds = %if.else.i.if.end48_crit_edge, %if.end39.if.end48_crit_edge
  %csize.addr.0.i = phi i32 [ %add, %if.else.i.if.end48_crit_edge ], [ 4, %if.end39.if.end48_crit_edge ]
  %35 = ptrtoint ptr %data.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %cond, ptr %data.i, align 4
  %idx.neg.i = sub nsw i32 0, %csize.addr.0.i
  %add.ptr4.i = getelementptr i8, ptr %add.ptr6, i32 %idx.neg.i
  %add.ptr5.i = getelementptr inbounds i8, ptr %data.i, i32 4
  %add.ptr7.i = getelementptr i8, ptr %add.ptr5.i, i32 %idx.neg.i
  %36 = call ptr @memcpy(ptr %add.ptr4.i, ptr %add.ptr7.i, i32 %csize.addr.0.i)
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %data.i) #6
  %37 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %assoclen, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp.i109 = icmp eq i32 %38, 0
  br i1 %cmp.i109, label %if.end48.format_ccm_a0.exit_crit_edge, label %if.end.i

if.end48.format_ccm_a0.exit_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #8
  br label %format_ccm_a0.exit

if.end.i:                                         ; preds = %if.end48
  call void @__sanitizer_cov_trace_const_cmp4(i32 65280, i32 %38)
  %cmp1.i110 = icmp ult i32 %38, 65280
  br i1 %cmp1.i110, label %if.then2.i, label %if.else.i111

if.then2.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %shr.i = lshr i32 %38, 8
  %conv.i = trunc i32 %shr.i to i8
  %39 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 %conv.i, ptr %add.ptr6, align 1
  br label %cleanup.sink.split.i

if.else.i111:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %40 = ptrtoint ptr %add.ptr6 to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 -1, ptr %add.ptr6, align 1
  %arrayidx7.i = getelementptr i8, ptr %add.ptr6, i32 1
  %41 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 -2, ptr %arrayidx7.i, align 1
  %shr8.i = lshr i32 %38, 24
  %conv10.i = trunc i32 %shr8.i to i8
  %arrayidx11.i = getelementptr i8, ptr %add.ptr6, i32 2
  %42 = ptrtoint ptr %arrayidx11.i to i32
  call void @__asan_store1_noabort(i32 %42)
  store i8 %conv10.i, ptr %arrayidx11.i, align 1
  %shr12.i = lshr i32 %38, 16
  %conv14.i = trunc i32 %shr12.i to i8
  %arrayidx15.i = getelementptr i8, ptr %add.ptr6, i32 3
  %43 = ptrtoint ptr %arrayidx15.i to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 %conv14.i, ptr %arrayidx15.i, align 1
  %shr16.i = lshr i32 %38, 8
  %conv18.i = trunc i32 %shr16.i to i8
  %arrayidx19.i = getelementptr %struct.aead_request, ptr %req, i32 7, i32 0, i32 4
  %44 = ptrtoint ptr %arrayidx19.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 %conv18.i, ptr %arrayidx19.i, align 1
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %if.else.i111, %if.then2.i
  %.sink.i = phi i32 [ 1, %if.then2.i ], [ 5, %if.else.i111 ]
  %retval.0.ph.i = phi i32 [ 2, %if.then2.i ], [ 6, %if.else.i111 ]
  %conv4.i = trunc i32 %38 to i8
  %arrayidx5.i = getelementptr i8, ptr %add.ptr6, i32 %.sink.i
  %45 = ptrtoint ptr %arrayidx5.i to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %conv4.i, ptr %arrayidx5.i, align 1
  br label %format_ccm_a0.exit

format_ccm_a0.exit:                               ; preds = %cleanup.sink.split.i, %if.end48.format_ccm_a0.exit_crit_edge
  %retval.0.i112 = phi i32 [ 0, %if.end48.format_ccm_a0.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.sink.split.i ]
  %ccm_hdr_size = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 28
  %46 = ptrtoint ptr %ccm_hdr_size to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %retval.0.i112, ptr %ccm_hdr_size, align 8
  %47 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %iv, align 32
  %add.ptr52 = getelementptr i8, ptr %48, i32 15
  %49 = ptrtoint ptr %48 to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %48, align 1
  %conv55 = zext i8 %50 to i32
  %idx.neg56 = sub nsw i32 0, %conv55
  %add.ptr57 = getelementptr i8, ptr %add.ptr52, i32 %idx.neg56
  %add61 = add nuw nsw i32 %conv55, 1
  %51 = call ptr @memset(ptr %add.ptr57, i32 0, i32 %add61)
  %52 = load ptr, ptr %iv, align 32
  %arrayidx63 = getelementptr i8, ptr %52, i32 15
  %53 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 1, ptr %arrayidx63, align 1
  %54 = load ptr, ptr %iv, align 32
  %55 = call ptr @memcpy(ptr %add.ptr9, ptr %54, i32 15)
  %arrayidx65 = getelementptr %struct.aead_request, ptr %req, i32 7, i32 6, i32 3
  %56 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store1_noabort(i32 %56)
  store i8 0, ptr %arrayidx65, align 1
  br label %cleanup

cleanup:                                          ; preds = %format_ccm_a0.exit, %do.end47, %if.then24, %do.body
  %retval.0 = phi i32 [ -75, %do.end47 ], [ 0, %format_ccm_a0.exit ], [ -22, %if.then24 ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_map_aead_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_mlli_to_sram(ptr nocapture noundef readonly %req, ptr nocapture noundef %desc, ptr nocapture noundef %seq_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %assoc_buff_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 1
  %6 = ptrtoint ptr %assoc_buff_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %assoc_buff_type, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %entry.land.lhs.true_crit_edge, label %lor.lhs.false

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false:                                    ; preds = %entry
  %data_buff_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 2
  %8 = ptrtoint ptr %data_buff_type to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %data_buff_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp4 = icmp eq i32 %9, 2
  br i1 %cmp4, label %lor.lhs.false.land.lhs.true_crit_edge, label %lor.lhs.false5

lor.lhs.false.land.lhs.true_crit_edge:            ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

lor.lhs.false5:                                   ; preds = %lor.lhs.false
  %is_single_pass = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6, i32 41
  %10 = ptrtoint ptr %is_single_pass to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %is_single_pass, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  br i1 %tobool.not, label %lor.lhs.false5.land.lhs.true_crit_edge, label %lor.lhs.false5.if.end25_crit_edge

lor.lhs.false5.if.end25_crit_edge:                ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

lor.lhs.false5.land.lhs.true_crit_edge:           ; preds = %lor.lhs.false5
  call void @__sanitizer_cov_trace_pc() #8
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %lor.lhs.false5.land.lhs.true_crit_edge, %lor.lhs.false.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %mlli_len = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 6
  %12 = ptrtoint ptr %mlli_len to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %mlli_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool6.not = icmp eq i32 %13, 0
  br i1 %tobool6.not, label %land.lhs.true.if.end25_crit_edge, label %do.body

land.lhs.true.if.end25_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

do.body:                                          ; preds = %land.lhs.true
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_mlli_to_sram.__UNIQUE_ID_ddebug547, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_mlli_to_sram, %if.then11)) #6
          to label %do.end [label %if.then11], !srcloc !210

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %14 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_ctx.i.i, align 4
  %mlli_sram_addr = getelementptr inbounds %struct.cc_drvdata, ptr %15, i32 0, i32 4
  %16 = ptrtoint ptr %mlli_sram_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %mlli_sram_addr, align 4
  %18 = ptrtoint ptr %mlli_len to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %mlli_len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_mlli_to_sram.__UNIQUE_ID_ddebug547, ptr noundef %dev.i, ptr noundef nonnull @.str.54, i32 noundef %17, i32 noundef %19) #6
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %20 = ptrtoint ptr %seq_size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %seq_size, align 4
  %arrayidx = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %21
  %22 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %23 = load i32, ptr %seq_size, align 4
  %arrayidx15 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %23
  %mlli_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 9, i32 5
  %24 = ptrtoint ptr %mlli_dma_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %mlli_dma_addr, align 8
  %26 = ptrtoint ptr %mlli_len to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mlli_len, align 4
  %28 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %25, ptr %arrayidx15, align 4
  %shl28.i = shl i32 %27, 2
  %and29.i = and i32 %shl28.i, 67108860
  %arrayidx50.i = getelementptr [6 x i32], ptr %arrayidx15, i32 0, i32 1
  %29 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx50.i, align 4
  %or.i = or i32 %and29.i, %30
  %or51.i = or i32 %or.i, 67108866
  store i32 %or51.i, ptr %arrayidx50.i, align 4
  %31 = load i32, ptr %seq_size, align 4
  %arrayidx19 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %31
  %32 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__crt_ctx.i.i, align 4
  %mlli_sram_addr21 = getelementptr inbounds %struct.cc_drvdata, ptr %33, i32 0, i32 4
  %34 = ptrtoint ptr %mlli_sram_addr21 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %mlli_sram_addr21, align 4
  %36 = load i32, ptr %mlli_len, align 4
  %arrayidx.i = getelementptr [6 x i32], ptr %arrayidx19, i32 0, i32 2
  %37 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %35, ptr %arrayidx.i, align 4
  %shl.i = shl i32 %36, 2
  %and20.i = and i32 %shl.i, 67108860
  %arrayidx21.i = getelementptr [6 x i32], ptr %arrayidx19, i32 0, i32 3
  %38 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx21.i, align 4
  %or.i43 = or i32 %and20.i, %39
  %or22.i = or i32 %or.i43, 1
  store i32 %or22.i, ptr %arrayidx21.i, align 4
  %40 = load i32, ptr %seq_size, align 4
  %inc = add i32 %40, 1
  store i32 %inc, ptr %seq_size, align 4
  br label %if.end25

if.end25:                                         ; preds = %do.end, %land.lhs.true.if.end25_crit_edge, %lor.lhs.false5.if.end25_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @cc_unmap_aead_request(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_send_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_zero_buffer(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cc_copy_sg_portion(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_set_cipher_desc(ptr nocapture noundef readonly %req, ptr nocapture noundef %desc, ptr nocapture noundef %seq_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %hw_iv_size3 = getelementptr inbounds %struct.aead_request, ptr %req, i32 8
  %2 = ptrtoint ptr %hw_iv_size3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %hw_iv_size3, align 128
  %4 = ptrtoint ptr %seq_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seq_size, align 4
  %gen_ctx = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 32
  %op_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 40
  %6 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op_type, align 4
  %arrayidx = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %5
  %8 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %shl.i = shl i32 %7, 17
  %and9.i = and i32 %shl.i, 393216
  %arrayidx.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %10, %and9.i
  store i32 %or.i, ptr %arrayidx.i, align 4
  %flow_mode = getelementptr i8, ptr %1, i32 180
  %11 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flow_mode, align 4
  %and9.i87 = and i32 %12, 63
  %or.i89 = or i32 %and9.i87, %or.i
  store i32 %or.i89, ptr %arrayidx.i, align 4
  %13 = ptrtoint ptr %gen_ctx to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %gen_ctx, align 4
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %arrayidx, align 4
  %shl28.i = shl i32 %3, 2
  %and29.i = and i32 %shl28.i, 67108860
  %arrayidx50.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 1
  %16 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx50.i, align 4
  %or.i90 = or i32 %and29.i, %17
  %or51.i = or i32 %or.i90, 67108866
  store i32 %or51.i, ptr %arrayidx50.i, align 4
  %cipher_mode = getelementptr i8, ptr %1, i32 176
  %18 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %cipher_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %19)
  %cmp = icmp eq i32 %19, 2
  %storemerge.v = select i1 %cmp, i32 33554432, i32 16777216
  %storemerge = or i32 %or.i89, %storemerge.v
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %storemerge, ptr %arrayidx.i, align 4
  %21 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cipher_mode, align 4
  %shl.i97 = shl i32 %22, 10
  %and9.i98 = and i32 %shl.i97, 15360
  %or.i100 = or i32 %storemerge, %and9.i98
  store i32 %or.i100, ptr %arrayidx.i, align 4
  %inc = add i32 %5, 1
  %arrayidx12 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc
  %23 = call ptr @memset(ptr %arrayidx12, i32 0, i32 24)
  %arrayidx.i105 = getelementptr [6 x i32], ptr %arrayidx12, i32 0, i32 4
  %or.i109 = or i32 %and9.i, 67108864
  %24 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or.i109, ptr %arrayidx.i105, align 4
  %25 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %flow_mode, align 4
  %and9.i112 = and i32 %26, 63
  %or.i114 = or i32 %and9.i112, %or.i109
  store i32 %or.i114, ptr %arrayidx.i105, align 4
  %27 = load i32, ptr %flow_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %27)
  %cmp18 = icmp eq i32 %27, 32
  %enckey_dma_addr = getelementptr i8, ptr %1, i32 140
  %28 = ptrtoint ptr %enckey_dma_addr to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %enckey_dma_addr, align 4
  %enc_keylen = getelementptr i8, ptr %1, i32 160
  %30 = ptrtoint ptr %enc_keylen to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %enc_keylen, align 4
  %32 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %arrayidx12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %31)
  %cmp21 = icmp eq i32 %31, 24
  %.op = shl i32 %31, 2
  %.op.op = and i32 %.op, 67108860
  %and29.i119 = select i1 %cmp21, i32 128, i32 %.op.op
  %shl28.i127 = shl i32 %31, 2
  %and29.i128 = and i32 %shl28.i127, 67108860
  %and29.i119.sink = select i1 %cmp18, i32 %and29.i119, i32 %and29.i128
  %.sink = select i1 %cmp18, i32 2, i32 3
  %arrayidx50.i120 = getelementptr [6 x i32], ptr %arrayidx12, i32 0, i32 1
  %33 = ptrtoint ptr %arrayidx50.i120 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx50.i120, align 4
  %or.i121 = or i32 %and29.i119.sink, %34
  %or51.i123 = or i32 %or.i121, 67108866
  store i32 %or51.i123, ptr %arrayidx50.i120, align 4
  %35 = ptrtoint ptr %enc_keylen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %enc_keylen, align 4
  %shr.i = lshr i32 %36, 3
  %sub.i = add nuw nsw i32 %shr.i, %.sink
  %and9.i.i139.pn.in = shl i32 %sub.i, 22
  %and9.i.i139.pn = and i32 %and9.i.i139.pn.in, 12582912
  %storemerge149 = or i32 %and9.i.i139.pn, %or.i114
  %37 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %storemerge149, ptr %arrayidx.i105, align 4
  %38 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %cipher_mode, align 4
  %shl.i144 = shl i32 %39, 10
  %and9.i145 = and i32 %shl.i144, 15360
  %or.i147 = or i32 %storemerge149, %and9.i145
  store i32 %or.i147, ptr %arrayidx.i105, align 4
  %inc34 = add i32 %5, 2
  %40 = ptrtoint ptr %seq_size to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %inc34, ptr %seq_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_proc_cipher_desc(ptr nocapture noundef readonly %areq, i32 noundef %flow_mode, ptr nocapture noundef %desc, ptr nocapture noundef %seq_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %seq_size to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %seq_size, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %2 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %3, i32 128
  %4 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 6, i32 4
  %8 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cryptlen, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp = icmp eq i32 %9, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %data_buff_type = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 2
  %10 = ptrtoint ptr %data_buff_type to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %data_buff_type, align 4
  %12 = zext i32 %11 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.117)
  switch i32 %11, label %do.end44 [
    i32 1, label %do.body
    i32 2, label %do.body17
  ]

do.body:                                          ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_proc_cipher_desc.__UNIQUE_ID_ddebug545, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_proc_cipher_desc, %if.then7)) #6
          to label %do.end [label %if.then7], !srcloc !210

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_proc_cipher_desc.__UNIQUE_ID_ddebug545, ptr noundef %dev.i, ptr noundef nonnull @.str.60) #6
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %arrayidx = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %1
  %13 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %src_sgl = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 0, i32 1
  %14 = ptrtoint ptr %src_sgl to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %src_sgl, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_address, align 4
  %src_offset = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 0, i32 3
  %18 = ptrtoint ptr %src_offset to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src_offset, align 16
  %add = add i32 %19, %17
  %20 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cryptlen, align 16
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %add, ptr %arrayidx, align 4
  %shl28.i = shl i32 %21, 2
  %and29.i = and i32 %shl28.i, 67108860
  %arrayidx50.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 1
  %23 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx50.i, align 4
  %or.i = or i32 %and29.i, %24
  %or51.i = or i32 %or.i, 67108866
  store i32 %or51.i, ptr %arrayidx50.i, align 4
  %dst_sgl = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 0, i32 2
  %25 = ptrtoint ptr %dst_sgl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dst_sgl, align 4
  %dma_address12 = getelementptr inbounds %struct.scatterlist, ptr %26, i32 0, i32 3
  %27 = ptrtoint ptr %dma_address12 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_address12, align 4
  %dst_offset = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 0, i32 4
  %29 = ptrtoint ptr %dst_offset to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dst_offset, align 4
  %add13 = add i32 %30, %28
  %31 = load i32, ptr %cryptlen, align 16
  %arrayidx.i.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 2
  %32 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %add13, ptr %arrayidx.i.i, align 4
  %shl28.i.i = shl i32 %31, 2
  %and29.i.i = and i32 %shl28.i.i, 67108860
  %arrayidx50.i.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 3
  %33 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %arrayidx50.i.i, align 4
  %or.i.i = or i32 %and29.i.i, %34
  %or51.i.i = or i32 %or.i.i, 67108866
  store i32 %or51.i.i, ptr %arrayidx50.i.i, align 4
  %and9.i = and i32 %flow_mode, 63
  %arrayidx.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %35 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx.i, align 4
  %or.i84 = or i32 %36, %and9.i
  store i32 %or.i84, ptr %arrayidx.i, align 4
  br label %sw.epilog

do.body17:                                        ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_proc_cipher_desc.__UNIQUE_ID_ddebug546, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_proc_cipher_desc, %if.then29)) #6
          to label %do.end32 [label %if.then29], !srcloc !210

if.then29:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_proc_cipher_desc.__UNIQUE_ID_ddebug546, ptr noundef %dev.i, ptr noundef nonnull @.str.61) #6
  br label %do.end32

do.end32:                                         ; preds = %if.then29, %do.body17
  %arrayidx33 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %1
  %37 = call ptr @memset(ptr %arrayidx33, i32 0, i32 24)
  %src = getelementptr inbounds %struct.aead_request, ptr %areq, i32 8, i32 6, i32 60
  %38 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src, align 8
  %mlli_nents = getelementptr inbounds %struct.aead_request, ptr %areq, i32 8, i32 6, i32 72
  %40 = ptrtoint ptr %mlli_nents to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %mlli_nents, align 4
  %42 = ptrtoint ptr %arrayidx33 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %39, ptr %arrayidx33, align 4
  %shl28.i87 = shl i32 %41, 2
  %and29.i88 = and i32 %shl28.i87, 67108860
  %arrayidx50.i89 = getelementptr [6 x i32], ptr %arrayidx33, i32 0, i32 1
  %43 = ptrtoint ptr %arrayidx50.i89 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %arrayidx50.i89, align 4
  %or.i90 = or i32 %and29.i88, %44
  %or51.i92 = or i32 %or.i90, 67108867
  store i32 %or51.i92, ptr %arrayidx50.i89, align 4
  %dst = getelementptr inbounds %struct.aead_request, ptr %areq, i32 8, i32 6, i32 76
  %45 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dst, align 8
  %mlli_nents39 = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 0, i32 0, i32 1
  %47 = ptrtoint ptr %mlli_nents39 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mlli_nents39, align 4
  %arrayidx.i.i94 = getelementptr [6 x i32], ptr %arrayidx33, i32 0, i32 2
  %49 = ptrtoint ptr %arrayidx.i.i94 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %46, ptr %arrayidx.i.i94, align 4
  %shl28.i.i97 = shl i32 %48, 2
  %and29.i.i98 = and i32 %shl28.i.i97, 67108860
  %arrayidx50.i.i99 = getelementptr [6 x i32], ptr %arrayidx33, i32 0, i32 3
  %50 = ptrtoint ptr %arrayidx50.i.i99 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx50.i.i99, align 4
  %or.i.i100 = or i32 %and29.i.i98, %51
  %or51.i.i101 = or i32 %or.i.i100, 67108867
  store i32 %or51.i.i101, ptr %arrayidx50.i.i99, align 4
  %and9.i104 = and i32 %flow_mode, 63
  %arrayidx.i105 = getelementptr [6 x i32], ptr %arrayidx33, i32 0, i32 4
  %52 = ptrtoint ptr %arrayidx.i105 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx.i105, align 4
  %or.i106 = or i32 %53, %and9.i104
  store i32 %or.i106, ptr %arrayidx.i105, align 4
  br label %sw.epilog

do.end44:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.62) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end44, %do.end32, %do.end
  %inc = add i32 %1, 1
  %54 = ptrtoint ptr %seq_size to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %inc, ptr %seq_size, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_proc_scheme_desc(ptr nocapture noundef readonly %req, ptr nocapture noundef %desc, ptr nocapture noundef %seq_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_ctx.i.i, align 4
  %aead_handle2 = getelementptr inbounds %struct.cc_drvdata, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %aead_handle2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %aead_handle2, align 4
  %auth_mode = getelementptr i8, ptr %1, i32 184
  %6 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %auth_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp = icmp eq i32 %7, 0
  %cond = select i1 %cmp, i32 1, i32 2
  %8 = ptrtoint ptr %seq_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %seq_size, align 4
  %arrayidx = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %9
  %10 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %shl.i = shl nuw nsw i32 %cond, 10
  %arrayidx.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %shl.i, ptr %arrayidx.i, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %5, align 4
  %hash_len = getelementptr i8, ptr %1, i32 172
  %14 = ptrtoint ptr %hash_len to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %hash_len, align 4
  %arrayidx.i112 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 2
  %16 = ptrtoint ptr %arrayidx.i112 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %13, ptr %arrayidx.i112, align 4
  %cond5 = select i1 %cmp, i32 20, i32 32
  %shl.i113 = shl i32 %15, 2
  %and20.i = and i32 %shl.i113, 67108860
  %arrayidx21.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 3
  %17 = ptrtoint ptr %arrayidx21.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx21.i, align 4
  %or.i114 = or i32 %and20.i, %18
  %or22.i = or i32 %or.i114, 1
  store i32 %or22.i, ptr %arrayidx21.i, align 4
  %or.i120 = or i32 %shl.i, 151027755
  store i32 %or.i120, ptr %arrayidx.i, align 4
  %inc = add i32 %9, 1
  %arrayidx11 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc
  %19 = call ptr @memset(ptr %arrayidx11, i32 0, i32 24)
  %20 = load i32, ptr %5, align 4
  %arrayidx.i121 = getelementptr [6 x i32], ptr %arrayidx11, i32 0, i32 2
  %21 = ptrtoint ptr %arrayidx.i121 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %arrayidx.i121, align 4
  %shl.i122 = shl nuw nsw i32 %cond5, 2
  %arrayidx21.i124 = getelementptr [6 x i32], ptr %arrayidx11, i32 0, i32 3
  %or22.i126 = or i32 %shl.i122, 1
  %22 = ptrtoint ptr %arrayidx21.i124 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or22.i126, ptr %arrayidx21.i124, align 4
  %arrayidx.i127 = getelementptr [6 x i32], ptr %arrayidx11, i32 0, i32 4
  %or.i136 = or i32 %shl.i, 134479915
  %23 = ptrtoint ptr %arrayidx.i127 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i136, ptr %arrayidx.i127, align 4
  %inc18 = add i32 %9, 2
  %arrayidx19 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc18
  %24 = call ptr @memset(ptr %arrayidx19, i32 0, i32 24)
  %arrayidx.i139 = getelementptr [6 x i32], ptr %arrayidx19, i32 0, i32 4
  %25 = ptrtoint ptr %arrayidx.i139 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %shl.i, ptr %arrayidx.i139, align 4
  %ipad_opad_dma_addr = getelementptr i8, ptr %1, i32 156
  %26 = ptrtoint ptr %ipad_opad_dma_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ipad_opad_dma_addr, align 4
  %add = add i32 %27, %cond5
  %28 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %arrayidx19, align 4
  %arrayidx50.i = getelementptr [6 x i32], ptr %arrayidx19, i32 0, i32 1
  %or51.i = or i32 %shl.i122, 67108866
  %29 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %or51.i, ptr %arrayidx50.i, align 4
  %or.i145 = or i32 %shl.i, 16777253
  store i32 %or.i145, ptr %arrayidx.i139, align 4
  %inc24 = add i32 %9, 3
  %arrayidx25 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc24
  %30 = call ptr @memset(ptr %arrayidx25, i32 0, i32 24)
  %arrayidx.i148 = getelementptr [6 x i32], ptr %arrayidx25, i32 0, i32 4
  %31 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %shl.i, ptr %arrayidx.i148, align 4
  %32 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %__crt_ctx.i.i, align 4
  %call29 = tail call i32 @cc_digest_len_addr(ptr noundef %33, i32 noundef %cond) #6
  %34 = ptrtoint ptr %hash_len to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %hash_len, align 4
  %36 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %call29, ptr %arrayidx25, align 4
  %shl.i152 = shl i32 %35, 2
  %and9.i153 = and i32 %shl.i152, 67108860
  %arrayidx21.i154 = getelementptr [6 x i32], ptr %arrayidx25, i32 0, i32 1
  %37 = ptrtoint ptr %arrayidx21.i154 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx21.i154, align 4
  %or.i155 = or i32 %and9.i153, %38
  %or22.i156 = or i32 %or.i155, 1
  store i32 %or22.i156, ptr %arrayidx21.i154, align 4
  %39 = ptrtoint ptr %arrayidx.i148 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %arrayidx.i148, align 4
  %or.i162 = or i32 %40, 67633189
  store i32 %or.i162, ptr %arrayidx.i148, align 4
  %inc34 = add i32 %9, 4
  %arrayidx35 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc34
  %41 = call ptr @memset(ptr %arrayidx35, i32 0, i32 24)
  %42 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %5, align 4
  %44 = ptrtoint ptr %arrayidx35 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %arrayidx35, align 4
  %arrayidx21.i165 = getelementptr [6 x i32], ptr %arrayidx35, i32 0, i32 1
  %45 = ptrtoint ptr %arrayidx21.i165 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or22.i126, ptr %arrayidx21.i165, align 4
  %arrayidx.i168 = getelementptr [6 x i32], ptr %arrayidx35, i32 0, i32 4
  %46 = ptrtoint ptr %arrayidx.i168 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 7, ptr %arrayidx.i168, align 4
  %inc39 = add i32 %9, 5
  %47 = ptrtoint ptr %seq_size to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %inc39, ptr %seq_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_proc_digest_desc(ptr nocapture noundef readonly %req, ptr nocapture noundef %desc, ptr nocapture noundef %seq_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %req, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %2 = ptrtoint ptr %seq_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq_size, align 4
  %auth_mode = getelementptr i8, ptr %1, i32 184
  %4 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %auth_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  %cond = select i1 %cmp, i32 1, i32 2
  %op_type = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 40
  %6 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %op_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp3 = icmp eq i32 %7, 0
  %arrayidx = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %3
  %8 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %arrayidx.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %9 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 134217771, ptr %arrayidx.i, align 4
  br i1 %cmp3, label %if.then, label %if.else15

if.then:                                          ; preds = %entry
  %icv_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6, i32 8
  %10 = ptrtoint ptr %icv_dma_addr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %icv_dma_addr, align 4
  %authsize = getelementptr i8, ptr %1, i32 168
  %12 = ptrtoint ptr %authsize to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %authsize, align 4
  %arrayidx.i.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 2
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %arrayidx.i.i, align 4
  %shl28.i.i = shl i32 %13, 2
  %and29.i.i = and i32 %shl28.i.i, 67108860
  %arrayidx50.i.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 3
  %15 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx50.i.i, align 4
  %or.i.i = or i32 %16, %and29.i.i
  %or.i84 = or i32 %or.i.i, 201326594
  store i32 %or.i84, ptr %arrayidx50.i.i, align 4
  %17 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %__crt_ctx.i.i, align 4
  %hw_rev.i = getelementptr inbounds %struct.cc_drvdata, ptr %18, i32 0, i32 16
  %19 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %hw_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %20)
  %cmp.i = icmp ugt i32 %20, 711
  br i1 %cmp.i, label %if.then.i, label %if.then.set_queue_last_ind.exit_crit_edge

if.then.set_queue_last_ind.exit_crit_edge:        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_queue_last_ind.exit

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i86 = or i32 %or.i.i, -1946157054
  %21 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or.i.i86, ptr %arrayidx50.i.i, align 4
  br label %set_queue_last_ind.exit

set_queue_last_ind.exit:                          ; preds = %if.then.i, %if.then.set_queue_last_ind.exit_crit_edge
  %22 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %auth_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %23)
  %cmp9 = icmp eq i32 %23, 7
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %arrayidx.i, align 4
  br i1 %cmp9, label %if.then10, label %if.else

if.then10:                                        ; preds = %set_queue_last_ind.exit
  call void @__sanitizer_cov_trace_pc() #8
  %or.i90 = or i32 %25, 5184
  br label %if.end33

if.else:                                          ; preds = %set_queue_last_ind.exit
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i = shl nuw nsw i32 %cond, 10
  %or.i92 = or i32 %shl.i, %25
  %or.i94 = or i32 %or.i92, 262144
  br label %if.end33

if.else15:                                        ; preds = %entry
  %mac_buf_dma_addr = getelementptr inbounds %struct.aead_request, ptr %req, i32 8, i32 6
  %26 = ptrtoint ptr %mac_buf_dma_addr to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %mac_buf_dma_addr, align 4
  %authsize20 = getelementptr i8, ptr %1, i32 168
  %28 = ptrtoint ptr %authsize20 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %authsize20, align 4
  %arrayidx.i.i99 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx.i.i99 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %27, ptr %arrayidx.i.i99, align 4
  %shl28.i.i102 = shl i32 %29, 2
  %and29.i.i103 = and i32 %shl28.i.i102, 67108860
  %arrayidx50.i.i104 = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 3
  %31 = ptrtoint ptr %arrayidx50.i.i104 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %arrayidx50.i.i104, align 4
  %or.i.i105 = or i32 %32, %and29.i.i103
  %or.i107 = or i32 %or.i.i105, 201326594
  store i32 %or.i107, ptr %arrayidx50.i.i104, align 4
  %33 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__crt_ctx.i.i, align 4
  %hw_rev.i109 = getelementptr inbounds %struct.cc_drvdata, ptr %34, i32 0, i32 16
  %35 = ptrtoint ptr %hw_rev.i109 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %hw_rev.i109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %36)
  %cmp.i110 = icmp ugt i32 %36, 711
  br i1 %cmp.i110, label %if.then.i113, label %if.else15.set_queue_last_ind.exit114_crit_edge

if.else15.set_queue_last_ind.exit114_crit_edge:   ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  br label %set_queue_last_ind.exit114

if.then.i113:                                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #8
  %or.i.i112 = or i32 %or.i.i105, -1946157054
  %37 = ptrtoint ptr %arrayidx50.i.i104 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %or.i.i112, ptr %arrayidx50.i.i104, align 4
  br label %set_queue_last_ind.exit114

set_queue_last_ind.exit114:                       ; preds = %if.then.i113, %if.else15.set_queue_last_ind.exit114_crit_edge
  %38 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %arrayidx.i, align 4
  %or.i116 = or i32 %39, 262144
  store i32 %or.i116, ptr %arrayidx.i, align 4
  %40 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %auth_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %41)
  %cmp26 = icmp eq i32 %41, 7
  br i1 %cmp26, label %if.then27, label %if.else30

if.then27:                                        ; preds = %set_queue_last_ind.exit114
  call void @__sanitizer_cov_trace_pc() #8
  %or.i121 = or i32 %39, 267328
  br label %if.end33

if.else30:                                        ; preds = %set_queue_last_ind.exit114
  call void @__sanitizer_cov_trace_pc() #8
  %shl.i122 = shl nuw nsw i32 %cond, 10
  %or.i125 = or i32 %or.i116, %shl.i122
  br label %if.end33

if.end33:                                         ; preds = %if.else30, %if.then27, %if.else, %if.then10
  %or.i121.sink = phi i32 [ %or.i121, %if.then27 ], [ %or.i125, %if.else30 ], [ %or.i90, %if.then10 ], [ %or.i94, %if.else ]
  %42 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i121.sink, ptr %arrayidx.i, align 4
  %inc = add i32 %3, 1
  %43 = ptrtoint ptr %seq_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %inc, ptr %seq_size, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_proc_authen_desc(ptr nocapture noundef readonly %areq, ptr nocapture noundef %desc, ptr nocapture noundef %seq_size, i32 noundef %direct) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %data_buff_type = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 2
  %0 = ptrtoint ptr %data_buff_type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %data_buff_type, align 4
  %2 = ptrtoint ptr %seq_size to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %seq_size, align 4
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %4 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %5, i32 128
  %6 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = zext i32 %1 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.118)
  switch i32 %1, label %do.end51 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb14
  ]

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direct)
  %cmp = icmp eq i32 %direct, 0
  %dst_sgl = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 0, i32 2
  %src_sgl = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 0, i32 1
  %cond.in = select i1 %cmp, ptr %dst_sgl, ptr %src_sgl
  %11 = ptrtoint ptr %cond.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %cond = load ptr, ptr %cond.in, align 4
  %dst_offset = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 0, i32 4
  %src_offset = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 0, i32 3
  %cond8.in = select i1 %cmp, ptr %dst_offset, ptr %src_offset
  %12 = ptrtoint ptr %cond8.in to i32
  call void @__asan_load4_noabort(i32 %12)
  %cond8 = load i32, ptr %cond8.in, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_proc_authen_desc.__UNIQUE_ID_ddebug543, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_proc_authen_desc, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !210

if.then:                                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_proc_authen_desc.__UNIQUE_ID_ddebug543, ptr noundef %dev.i, ptr noundef nonnull @.str.64) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %sw.bb
  %arrayidx = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %3
  %13 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %cond, i32 0, i32 3
  %14 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_address, align 4
  %add = add i32 %15, %cond8
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 6, i32 4
  %16 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %cryptlen, align 16
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %add, ptr %arrayidx, align 4
  %shl28.i = shl i32 %17, 2
  %and29.i = and i32 %shl28.i, 67108860
  %arrayidx50.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx50.i, align 4
  %or.i = or i32 %and29.i, %20
  %or51.i = or i32 %or.i, 67108866
  store i32 %or51.i, ptr %arrayidx50.i, align 4
  %arrayidx.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %or.i4 = or i32 %22, 7
  store i32 %or.i4, ptr %arrayidx.i, align 4
  br label %sw.epilog

sw.bb14:                                          ; preds = %entry
  %assoc = getelementptr inbounds %struct.aead_request, ptr %areq, i32 8, i32 6, i32 44
  %mlli_nents16 = getelementptr inbounds %struct.aead_request, ptr %areq, i32 8, i32 6, i32 56
  %is_single_pass = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 6, i32 41
  %23 = ptrtoint ptr %is_single_pass to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %is_single_pass, align 1, !range !214
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool17.not = icmp eq i8 %24, 0
  br i1 %tobool17.not, label %sw.bb14.do.body29_crit_edge, label %if.then18

sw.bb14.do.body29_crit_edge:                      ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body29

if.then18:                                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direct)
  %cmp19 = icmp eq i32 %direct, 0
  br i1 %cmp19, label %if.then20, label %if.else

if.then20:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %dst = getelementptr inbounds %struct.aead_request, ptr %areq, i32 8, i32 6, i32 76
  %mlli_nents23 = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 0, i32 0, i32 1
  br label %do.body29

if.else:                                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %src = getelementptr inbounds %struct.aead_request, ptr %areq, i32 8, i32 6, i32 60
  %mlli_nents26 = getelementptr inbounds %struct.aead_request, ptr %areq, i32 8, i32 6, i32 72
  br label %do.body29

do.body29:                                        ; preds = %if.else, %if.then20, %sw.bb14.do.body29_crit_edge
  %mlli_addr.0.in = phi ptr [ %dst, %if.then20 ], [ %src, %if.else ], [ %assoc, %sw.bb14.do.body29_crit_edge ]
  %mlli_nents.0.in = phi ptr [ %mlli_nents23, %if.then20 ], [ %mlli_nents26, %if.else ], [ %mlli_nents16, %sw.bb14.do.body29_crit_edge ]
  %25 = ptrtoint ptr %mlli_nents.0.in to i32
  call void @__asan_load4_noabort(i32 %25)
  %mlli_nents.0 = load i32, ptr %mlli_nents.0.in, align 4
  %26 = ptrtoint ptr %mlli_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %26)
  %mlli_addr.0 = load i32, ptr %mlli_addr.0.in, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_proc_authen_desc.__UNIQUE_ID_ddebug544, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_proc_authen_desc, %if.then41)) #6
          to label %do.end44 [label %if.then41], !srcloc !210

if.then41:                                        ; preds = %do.body29
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_proc_authen_desc.__UNIQUE_ID_ddebug544, ptr noundef %dev.i, ptr noundef nonnull @.str.65) #6
  br label %do.end44

do.end44:                                         ; preds = %if.then41, %do.body29
  %arrayidx45 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %3
  %27 = getelementptr inbounds i8, ptr %arrayidx45, i32 4
  %28 = call ptr @memset(ptr %27, i32 0, i32 20)
  %29 = ptrtoint ptr %arrayidx45 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %mlli_addr.0, ptr %arrayidx45, align 4
  %shl28.i7 = shl i32 %mlli_nents.0, 2
  %and29.i8 = and i32 %shl28.i7, 67108860
  %arrayidx50.i9 = getelementptr [6 x i32], ptr %arrayidx45, i32 0, i32 1
  %30 = ptrtoint ptr %arrayidx50.i9 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx50.i9, align 4
  %or.i10 = or i32 %and29.i8, %31
  %or51.i12 = or i32 %or.i10, 67108867
  store i32 %or51.i12, ptr %arrayidx50.i9, align 4
  %arrayidx.i14 = getelementptr [6 x i32], ptr %arrayidx45, i32 0, i32 4
  %32 = ptrtoint ptr %arrayidx.i14 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx.i14, align 4
  %or.i15 = or i32 %33, 7
  store i32 %or.i15, ptr %arrayidx.i14, align 4
  br label %sw.epilog

do.end51:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.66) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end51, %do.end44, %do.end
  %inc = add i32 %3, 1
  %34 = ptrtoint ptr %seq_size to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %inc, ptr %seq_size, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_digest_len_addr(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_set_assoc_desc(ptr nocapture noundef readonly %areq, ptr nocapture noundef %desc, ptr nocapture noundef %seq_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %assoc_buff_type = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 1
  %2 = ptrtoint ptr %assoc_buff_type to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %assoc_buff_type, align 8
  %4 = ptrtoint ptr %seq_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %seq_size, align 4
  %6 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_ctx.i.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %9, i32 0, i32 3
  %10 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.119)
  switch i32 %3, label %do.end45 [
    i32 1, label %do.body
    i32 2, label %do.body14
  ]

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_set_assoc_desc.__UNIQUE_ID_ddebug541, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_set_assoc_desc, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !210

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_set_assoc_desc.__UNIQUE_ID_ddebug541, ptr noundef %dev.i, ptr noundef nonnull @.str.56) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %arrayidx = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %5
  %11 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %src = getelementptr inbounds %struct.aead_request, ptr %areq, i32 0, i32 4
  %12 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_address, align 4
  %assoclen = getelementptr inbounds %struct.aead_request, ptr %areq, i32 8, i32 5
  %16 = ptrtoint ptr %assoclen to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %assoclen, align 8
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %15, ptr %arrayidx, align 4
  %shl28.i = shl i32 %17, 2
  %and29.i = and i32 %shl28.i, 67108860
  %arrayidx50.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 1
  %19 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx50.i, align 4
  %or.i = or i32 %20, %and29.i
  %or51.i = or i32 %or.i, 67108866
  store i32 %or51.i, ptr %arrayidx50.i, align 4
  %arrayidx.i = getelementptr [6 x i32], ptr %arrayidx, i32 0, i32 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %or.i4 = or i32 %22, 7
  store i32 %or.i4, ptr %arrayidx.i, align 4
  %auth_mode = getelementptr i8, ptr %1, i32 184
  %23 = ptrtoint ptr %auth_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %auth_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %24)
  %cmp = icmp eq i32 %24, 7
  br i1 %cmp, label %land.lhs.true, label %do.end.sw.epilog_crit_edge

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true:                                    ; preds = %do.end
  %cryptlen = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 6, i32 4
  %25 = ptrtoint ptr %cryptlen to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cryptlen, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp9.not = icmp eq i32 %26, 0
  br i1 %cmp9.not, label %land.lhs.true.sw.epilog_crit_edge, label %if.then10

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then10:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #8
  %or.i6 = or i32 %or.i, 335544322
  %27 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %or.i6, ptr %arrayidx50.i, align 4
  br label %sw.epilog

do.body14:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_set_assoc_desc.__UNIQUE_ID_ddebug542, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_set_assoc_desc, %if.then26)) #6
          to label %do.end29 [label %if.then26], !srcloc !210

if.then26:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_set_assoc_desc.__UNIQUE_ID_ddebug542, ptr noundef %dev.i, ptr noundef nonnull @.str.57) #6
  br label %do.end29

do.end29:                                         ; preds = %if.then26, %do.body14
  %arrayidx30 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %5
  %28 = call ptr @memset(ptr %arrayidx30, i32 0, i32 24)
  %assoc = getelementptr inbounds %struct.aead_request, ptr %areq, i32 8, i32 6, i32 44
  %29 = ptrtoint ptr %assoc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %assoc, align 8
  %mlli_nents = getelementptr inbounds %struct.aead_request, ptr %areq, i32 8, i32 6, i32 56
  %31 = ptrtoint ptr %mlli_nents to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %mlli_nents, align 4
  %33 = ptrtoint ptr %arrayidx30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %30, ptr %arrayidx30, align 4
  %shl28.i9 = shl i32 %32, 2
  %and29.i10 = and i32 %shl28.i9, 67108860
  %arrayidx50.i11 = getelementptr [6 x i32], ptr %arrayidx30, i32 0, i32 1
  %34 = ptrtoint ptr %arrayidx50.i11 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %arrayidx50.i11, align 4
  %or.i12 = or i32 %35, %and29.i10
  %or51.i14 = or i32 %or.i12, 67108867
  store i32 %or51.i14, ptr %arrayidx50.i11, align 4
  %arrayidx.i16 = getelementptr [6 x i32], ptr %arrayidx30, i32 0, i32 4
  %36 = ptrtoint ptr %arrayidx.i16 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %arrayidx.i16, align 4
  %or.i17 = or i32 %37, 7
  store i32 %or.i17, ptr %arrayidx.i16, align 4
  %auth_mode34 = getelementptr i8, ptr %1, i32 184
  %38 = ptrtoint ptr %auth_mode34 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %auth_mode34, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %39)
  %cmp35 = icmp eq i32 %39, 7
  br i1 %cmp35, label %land.lhs.true36, label %do.end29.sw.epilog_crit_edge

do.end29.sw.epilog_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

land.lhs.true36:                                  ; preds = %do.end29
  %cryptlen37 = getelementptr inbounds %struct.aead_request, ptr %areq, i32 9, i32 6, i32 4
  %40 = ptrtoint ptr %cryptlen37 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cryptlen37, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp38.not = icmp eq i32 %41, 0
  br i1 %cmp38.not, label %land.lhs.true36.sw.epilog_crit_edge, label %if.then39

land.lhs.true36.sw.epilog_crit_edge:              ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

if.then39:                                        ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #8
  %or.i19 = or i32 %or.i12, 335544323
  %42 = ptrtoint ptr %arrayidx50.i11 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or.i19, ptr %arrayidx50.i11, align 4
  br label %sw.epilog

do.end45:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.58) #9
  br label %sw.epilog

sw.epilog:                                        ; preds = %do.end45, %if.then39, %land.lhs.true36.sw.epilog_crit_edge, %do.end29.sw.epilog_crit_edge, %if.then10, %land.lhs.true.sw.epilog_crit_edge, %do.end.sw.epilog_crit_edge
  %inc = add i32 %5, 1
  %43 = ptrtoint ptr %seq_size to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %inc, ptr %seq_size, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_get_default_hash_len(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nofree nounwind readonly willreturn
declare i32 @bcmp(ptr nocapture, ptr nocapture, i32) local_unnamed_addr #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

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

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 93)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly nofree nounwind readonly willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nobuiltin }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !14, !15, !16, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !63, !64, !65, !67, !68, !69, !71, !72, !74, !75, !77, !78, !79, !81, !82, !84, !85, !87, !88, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !116, !117, !119, !120, !121, !123, !124, !125, !127, !128, !130, !131, !132, !134, !135, !136, !138, !139, !141, !142, !143, !145, !146, !147, !149, !150, !151, !153, !154, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !173, !175, !176, !178, !179, !181, !182, !184, !185, !187, !188, !189, !191, !192, !193, !195, !196, !198, !199}
!llvm.module.flags = !{!201, !202, !203, !204, !205, !206, !207, !208}
!llvm.ident = !{!209}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 2641, i32 4}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @cc_aead_alloc._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @cc_aead_alloc._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 2648, i32 4}
!10 = !{ptr @cc_aead_alloc._entry.5, !9, !"_entry", i1 false, i1 false}
!11 = !{ptr @cc_aead_alloc._entry_ptr.7, !9, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.8, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 2654, i32 3}
!14 = !{ptr @.str.9, !13, !"<string literal>", i1 false, i1 false}
!15 = !{ptr @cc_aead_alloc.__UNIQUE_ID_ddebug557, !13, !"__UNIQUE_ID_ddebug557", i1 false, i1 false}
!16 = !{ptr @aead_algs, !17, !"aead_algs", i1 false, i1 false}
!17 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 2297, i32 31}
!18 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 552, i32 2}
!20 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @cc_aead_setkey.__UNIQUE_ID_ddebug539, !19, !"__UNIQUE_ID_ddebug539", i1 false, i1 false}
!22 = !{ptr @.str.13, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 620, i32 3}
!24 = !{ptr @cc_aead_setkey._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @cc_aead_setkey._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.15, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 629, i32 4}
!28 = !{ptr @cc_aead_setkey._entry.14, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @cc_aead_setkey._entry_ptr.16, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.17, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 366, i32 2}
!32 = !{ptr @.str.18, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @validate_keys_sizes.__UNIQUE_ID_ddebug535, !31, !"__UNIQUE_ID_ddebug535", i1 false, i1 false}
!34 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 384, i32 3}
!36 = !{ptr @validate_keys_sizes.__UNIQUE_ID_ddebug536, !35, !"__UNIQUE_ID_ddebug536", i1 false, i1 false}
!37 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 390, i32 4}
!39 = !{ptr @validate_keys_sizes.__UNIQUE_ID_ddebug537, !38, !"__UNIQUE_ID_ddebug537", i1 false, i1 false}
!40 = !{ptr @.str.21, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 398, i32 4}
!42 = !{ptr @validate_keys_sizes.__UNIQUE_ID_ddebug538, !41, !"__UNIQUE_ID_ddebug538", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 449, i32 4}
!45 = !{ptr @.str.23, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cc_get_plain_hmac_key._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @cc_get_plain_hmac_key._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @cc_get_plain_hmac_key._entry.24, !49, !"_entry", i1 false, i1 false}
!49 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 531, i32 3}
!50 = !{ptr @cc_get_plain_hmac_key._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!51 = distinct !{null, !52, !"__already_done", i1 false, i1 false}
!52 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!53 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @.str.27, !52, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.28, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 682, i32 2}
!57 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @cc_aead_setauthsize.__UNIQUE_ID_ddebug540, !56, !"__UNIQUE_ID_ddebug540", i1 false, i1 false}
!59 = !{ptr @.str.30, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 1903, i32 2}
!61 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!62 = !{ptr @cc_proc_aead.__UNIQUE_ID_ddebug550, !60, !"__UNIQUE_ID_ddebug550", i1 false, i1 false}
!63 = !{ptr @.str.32, !60, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.33, !60, !"<string literal>", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 1912, i32 3}
!67 = !{ptr @cc_proc_aead._entry, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @cc_proc_aead._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.35, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 1958, i32 4}
!71 = !{ptr @cc_proc_aead.__UNIQUE_ID_ddebug551, !70, !"__UNIQUE_ID_ddebug551", i1 false, i1 false}
!72 = distinct !{null, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 1969, i32 4}
!74 = distinct !{null, !73, !"__UNIQUE_ID_ddebug552", i1 false, i1 false}
!75 = !{ptr @.str.38, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 1977, i32 3}
!77 = !{ptr @cc_proc_aead._entry.37, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @cc_proc_aead._entry_ptr.39, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @cc_proc_aead._entry.40, !80, !"_entry", i1 false, i1 false}
!80 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 2001, i32 3}
!81 = !{ptr @cc_proc_aead._entry_ptr.41, !80, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @cc_proc_aead._entry.42, !83, !"_entry", i1 false, i1 false}
!83 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 2012, i32 3}
!84 = !{ptr @cc_proc_aead._entry_ptr.43, !83, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 1355, i32 3}
!87 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @validate_data_size._entry, !86, !"_entry", i1 false, i1 false}
!89 = !{ptr @validate_data_size._entry_ptr, !86, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 230, i32 4}
!92 = !{ptr @.str.47, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @cc_aead_complete.__UNIQUE_ID_ddebug534, !91, !"__UNIQUE_ID_ddebug534", i1 false, i1 false}
!94 = !{ptr @.str.48, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 1559, i32 3}
!96 = !{ptr @.str.49, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @config_ccm_adata.__UNIQUE_ID_ddebug548, !95, !"__UNIQUE_ID_ddebug548", i1 false, i1 false}
!98 = !{ptr @.str.50, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 1573, i32 3}
!100 = !{ptr @config_ccm_adata._entry, !99, !"_entry", i1 false, i1 false}
!101 = !{ptr @config_ccm_adata._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 1842, i32 2}
!104 = !{ptr @.str.52, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @config_gcm_context.__UNIQUE_ID_ddebug549, !103, !"__UNIQUE_ID_ddebug549", i1 false, i1 false}
!106 = !{ptr @.str.53, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 1169, i32 3}
!108 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @cc_mlli_to_sram.__UNIQUE_ID_ddebug547, !107, !"__UNIQUE_ID_ddebug547", i1 false, i1 false}
!110 = !{ptr @.str.55, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 733, i32 3}
!112 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @cc_set_assoc_desc.__UNIQUE_ID_ddebug541, !111, !"__UNIQUE_ID_ddebug541", i1 false, i1 false}
!114 = !{ptr @.str.57, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 743, i32 3}
!116 = !{ptr @cc_set_assoc_desc.__UNIQUE_ID_ddebug542, !115, !"__UNIQUE_ID_ddebug542", i1 false, i1 false}
!117 = !{ptr @.str.58, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 754, i32 3}
!119 = !{ptr @cc_set_assoc_desc._entry, !118, !"_entry", i1 false, i1 false}
!120 = !{ptr @cc_set_assoc_desc._entry_ptr, !118, !"_entry_ptr", i1 false, i1 false}
!121 = !{ptr @.str.59, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 841, i32 3}
!123 = !{ptr @.str.60, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @cc_proc_cipher_desc.__UNIQUE_ID_ddebug545, !122, !"__UNIQUE_ID_ddebug545", i1 false, i1 false}
!125 = !{ptr @.str.61, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 854, i32 3}
!127 = !{ptr @cc_proc_cipher_desc.__UNIQUE_ID_ddebug546, !126, !"__UNIQUE_ID_ddebug546", i1 false, i1 false}
!128 = !{ptr @.str.62, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 864, i32 3}
!130 = !{ptr @cc_proc_cipher_desc._entry, !129, !"_entry", i1 false, i1 false}
!131 = !{ptr @cc_proc_cipher_desc._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 782, i32 3}
!134 = !{ptr @.str.64, !133, !"<string literal>", i1 false, i1 false}
!135 = !{ptr @cc_proc_authen_desc.__UNIQUE_ID_ddebug543, !133, !"__UNIQUE_ID_ddebug543", i1 false, i1 false}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 809, i32 3}
!138 = !{ptr @cc_proc_authen_desc.__UNIQUE_ID_ddebug544, !137, !"__UNIQUE_ID_ddebug544", i1 false, i1 false}
!139 = !{ptr @.str.66, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 818, i32 3}
!141 = !{ptr @cc_proc_authen_desc._entry, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @cc_proc_authen_desc._entry_ptr, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.67, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 133, i32 2}
!145 = !{ptr @.str.68, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @cc_aead_init.__UNIQUE_ID_ddebug531, !144, !"__UNIQUE_ID_ddebug531", i1 false, i1 false}
!147 = !{ptr @.str.69, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 147, i32 3}
!149 = !{ptr @cc_aead_init._entry, !148, !"_entry", i1 false, i1 false}
!150 = !{ptr @cc_aead_init._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!151 = !{ptr @.str.70, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 150, i32 2}
!153 = !{ptr @cc_aead_init.__UNIQUE_ID_ddebug532, !152, !"__UNIQUE_ID_ddebug532", i1 false, i1 false}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 165, i32 4}
!156 = !{ptr @cc_aead_init._entry.71, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @cc_aead_init._entry_ptr.73, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.75, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 179, i32 4}
!160 = !{ptr @cc_aead_init._entry.74, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @cc_aead_init._entry_ptr.76, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.77, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 183, i32 3}
!164 = !{ptr @cc_aead_init.__UNIQUE_ID_ddebug533, !163, !"__UNIQUE_ID_ddebug533", i1 false, i1 false}
!165 = !{ptr @.str.79, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 192, i32 4}
!167 = !{ptr @cc_aead_init._entry.78, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @cc_aead_init._entry_ptr.80, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.81, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 69, i32 2}
!171 = !{ptr @.str.82, !170, !"<string literal>", i1 false, i1 false}
!172 = !{ptr @cc_aead_exit.__UNIQUE_ID_ddebug526, !170, !"__UNIQUE_ID_ddebug526", i1 false, i1 false}
!173 = !{ptr @.str.83, !174, !"<string literal>", i1 false, i1 false}
!174 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 76, i32 3}
!175 = !{ptr @cc_aead_exit.__UNIQUE_ID_ddebug527, !174, !"__UNIQUE_ID_ddebug527", i1 false, i1 false}
!176 = !{ptr @.str.84, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 90, i32 3}
!178 = !{ptr @cc_aead_exit.__UNIQUE_ID_ddebug528, !177, !"__UNIQUE_ID_ddebug528", i1 false, i1 false}
!179 = !{ptr @.str.85, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 101, i32 4}
!181 = !{ptr @cc_aead_exit.__UNIQUE_ID_ddebug529, !180, !"__UNIQUE_ID_ddebug529", i1 false, i1 false}
!182 = !{ptr @.str.86, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 110, i32 4}
!184 = !{ptr @cc_aead_exit.__UNIQUE_ID_ddebug530, !183, !"__UNIQUE_ID_ddebug530", i1 false, i1 false}
!185 = !{ptr @.str.87, !186, !"<string literal>", i1 false, i1 false}
!186 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 2113, i32 2}
!187 = !{ptr @.str.88, !186, !"<string literal>", i1 false, i1 false}
!188 = !{ptr @cc_rfc4106_gcm_setkey.__UNIQUE_ID_ddebug553, !186, !"__UNIQUE_ID_ddebug553", i1 false, i1 false}
!189 = !{ptr @.str.89, !190, !"<string literal>", i1 false, i1 false}
!190 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 2166, i32 2}
!191 = !{ptr @.str.90, !190, !"<string literal>", i1 false, i1 false}
!192 = !{ptr @cc_rfc4106_gcm_setauthsize.__UNIQUE_ID_ddebug555, !190, !"__UNIQUE_ID_ddebug555", i1 false, i1 false}
!193 = !{ptr @.str.91, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 2130, i32 2}
!195 = !{ptr @cc_rfc4543_gcm_setkey.__UNIQUE_ID_ddebug554, !194, !"__UNIQUE_ID_ddebug554", i1 false, i1 false}
!196 = !{ptr @.str.92, !197, !"<string literal>", i1 false, i1 false}
!197 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 2186, i32 2}
!198 = !{ptr @cc_rfc4543_gcm_setauthsize.__UNIQUE_ID_ddebug556, !197, !"__UNIQUE_ID_ddebug556", i1 false, i1 false}
!199 = !{ptr @.str.93, !200, !"<string literal>", i1 false, i1 false}
!200 = !{!"../drivers/crypto/ccree/cc_aead.c", i32 2572, i32 52}
!201 = !{i32 1, !"wchar_size", i32 2}
!202 = !{i32 1, !"min_enum_size", i32 4}
!203 = !{i32 8, !"branch-target-enforcement", i32 0}
!204 = !{i32 8, !"sign-return-address", i32 0}
!205 = !{i32 8, !"sign-return-address-all", i32 0}
!206 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!207 = !{i32 7, !"uwtable", i32 1}
!208 = !{i32 7, !"frame-pointer", i32 2}
!209 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!210 = !{i64 2148766479, i64 2148766484, i64 2148766497, i64 2148766541, i64 2148766575, i64 2148766596}
!211 = !{!"branch_weights", i32 2000, i32 1}
!212 = !{i64 2149085487}
!213 = !{i64 2154920617, i64 2154921109, i64 2154920654, i64 2154920710, i64 2154920744, i64 2154920768, i64 2154920809, i64 2154920830, i64 2154920858, i64 2154920892}
!214 = !{i8 0, i8 2}
