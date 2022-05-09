; ModuleID = '/llk/IR_all_yes/drivers/crypto/ccree/cc_cipher.c_pt.bc'
source_filename = "../drivers/crypto/ccree/cc_cipher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.atomic_t = type { i32 }
%struct.cc_alg_template = type { [128 x i8], [128 x i8], i32, [124 x i8], %union.anon.76, i32, i32, i32, i32, i32, i8, i32, ptr, [96 x i8] }
%union.anon.76 = type { %struct.skcipher_alg }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.71 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cc_drvdata = type { ptr, i32, %struct.completion, ptr, i32, ptr, %struct.list_head, ptr, ptr, ptr, ptr, i32, ptr, ptr, i8, ptr, i32, i32, i32, i32, i32, i8, i32, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.cc_crypto_alg = type { %struct.list_head, i32, i32, i32, ptr, [104 x i8], %struct.skcipher_alg, %struct.aead_alg }
%struct.aead_alg = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, i32, [92 x i8], %struct.crypto_alg }
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
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.des_ctx = type { [32 x i32] }
%struct.cc_hw_desc = type { %union.anon.78 }
%union.anon.78 = type { [6 x i32] }
%struct.cc_crypto_req = type { ptr, ptr, %struct.completion, %struct.cc_cpp_req }
%struct.cc_cpp_req = type { i8, i32, i8 }
%struct.cipher_req_ctx = type { %struct.async_gen_req_ctx, i32, i32, i32, i32, i32, ptr, %struct.mlli_params }
%struct.async_gen_req_ctx = type { i32, ptr, i32 }
%struct.mlli_params = type { ptr, ptr, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.63, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.63 = type { %struct.atomic_t }
%struct.crypto_shash = type { i32, [124 x i8], %struct.crypto_tfm }

@cc_cipher_alloc.__UNIQUE_ID_ddebug460 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, i8 1, i8 112, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ccree\00", [26 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cc_cipher_alloc\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/crypto/ccree/cc_cipher.c\00", [63 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Number of algorithms = %zu\0A\00", [36 x i8] zeroinitializer }, align 32
@skcipher_algs = internal constant [23 x %struct.cc_alg_template] [%struct.cc_alg_template { [128 x i8] c"xts(paes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xts-paes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_sethkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 4, i32 4, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4, i32 32, i32 0, i32 630, i32 1, i8 1, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"essiv(cbc(paes),sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"essiv-paes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_sethkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 4, i32 4, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 13, i32 32, i32 0, i32 712, i32 1, i8 1, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"ecb(paes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-paes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_sethkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 4, i32 4, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 0, i32 32, i32 0, i32 712, i32 1, i8 1, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"cbc(paes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-paes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_sethkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 4, i32 4, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1, i32 32, i32 0, i32 712, i32 1, i8 1, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"ofb(paes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ofb-paes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_sethkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 4, i32 4, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 6, i32 32, i32 0, i32 712, i32 1, i8 1, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"cts(cbc(paes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cts-cbc-paes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_sethkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 4, i32 4, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 11, i32 32, i32 0, i32 712, i32 1, i8 1, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"ctr(paes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-paes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_sethkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 4, i32 4, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 2, i32 32, i32 0, i32 712, i32 1, i8 1, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"xts(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"xts-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_setkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 32, i32 64, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 4, i32 32, i32 0, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"essiv(cbc(aes),sha256)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"essiv-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_setkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 13, i32 32, i32 0, i32 712, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"ecb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_setkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 16, i32 32, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 0, i32 32, i32 0, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_setkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1, i32 32, i32 0, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"ofb(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ofb-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_setkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 6, i32 32, i32 0, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"cts(cbc(aes))\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cts-cbc-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_setkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 11, i32 32, i32 0, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"ctr(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-aes-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_setkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 2, i32 32, i32 0, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"cbc(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-3des-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_setkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 24, i32 24, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1, i32 34, i32 0, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"ecb(des3_ede)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-3des-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_setkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 24, i32 24, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 0, i32 34, i32 0, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"cbc(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-des-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_setkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 8, i32 8, i32 8, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1, i32 34, i32 0, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"ecb(des)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-des-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 8, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_setkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 8, i32 8, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 0, i32 34, i32 0, i32 630, i32 1, i8 0, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"cbc(sm4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-sm4-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_setkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 16, i32 16, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1, i32 36, i32 0, i32 713, i32 2, i8 0, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"ecb(sm4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ecb-sm4-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_setkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 16, i32 16, i32 0, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 0, i32 36, i32 0, i32 713, i32 2, i8 0, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"ctr(sm4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-sm4-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 1, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_setkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 16, i32 16, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 2, i32 36, i32 0, i32 713, i32 2, i8 0, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"cbc(psm4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"cbc-psm4-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_sethkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 4, i32 4, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 1, i32 36, i32 0, i32 713, i32 2, i8 1, i32 0, ptr null, [96 x i8] undef }, %struct.cc_alg_template { [128 x i8] c"ctr(psm4)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"ctr-psm4-ccree\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", i32 16, [124 x i8] undef, %union.anon.76 { %struct.skcipher_alg { ptr @cc_cipher_sethkey, ptr @cc_cipher_encrypt, ptr @cc_cipher_decrypt, ptr null, ptr null, i32 4, i32 4, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg zeroinitializer } }, i32 2, i32 36, i32 0, i32 713, i32 2, i8 1, i32 0, ptr null, [96 x i8] undef }], align 128
@cc_cipher_alloc.__UNIQUE_ID_ddebug461 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.4, i8 1, i8 113, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.4 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"creating %s\0A\00", [19 x i8] zeroinitializer }, align 32
@cc_cipher_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.1, ptr @.str.2, i32 1484, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"%s alg allocation failed\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cc_cipher_alloc._entry_ptr = internal global ptr @cc_cipher_alloc._entry, section ".printk_index", align 4
@cc_cipher_alloc.__UNIQUE_ID_ddebug462 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.8, i8 1, i8 116, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"registering %s\0A\00", [16 x i8] zeroinitializer }, align 32
@cc_cipher_alloc.__UNIQUE_ID_ddebug463 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.9, i8 1, i8 117, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s alg registration rc = %x\0A\00", [35 x i8] zeroinitializer }, align 32
@cc_cipher_alloc._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.1, ptr @.str.2, i32 1496, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"%s alg registration failed\0A\00", [36 x i8] zeroinitializer }, align 32
@cc_cipher_alloc._entry_ptr.12 = internal global ptr @cc_cipher_alloc._entry.10, section ".printk_index", align 4
@cc_cipher_alloc.__UNIQUE_ID_ddebug464 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.13, i8 1, i8 119, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"Registered %s\0A\00", [17 x i8] zeroinitializer }, align 32
@cc_cipher_sethkey.__UNIQUE_ID_ddebug443 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.15, i8 0, i8 77, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cc_cipher_sethkey\00", [46 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Setting HW key in context @%p for %s. keylen=%u\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"key\00", [28 x i8] zeroinitializer }, align 32
@cc_cipher_sethkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.14, ptr @.str.2, i32 317, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Unsupported protected key size %d.\0A\00", [60 x i8] zeroinitializer }, align 32
@cc_cipher_sethkey._entry_ptr = internal global ptr @cc_cipher_sethkey._entry, section ".printk_index", align 4
@cc_cipher_sethkey.__UNIQUE_ID_ddebug444 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.18, i8 0, i8 82, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported key size %d.\0A\00", [38 x i8] zeroinitializer }, align 32
@cc_cipher_sethkey._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.14, ptr @.str.2, i32 339, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Only AES HW protected keys are supported\0A\00", [54 x i8] zeroinitializer }, align 32
@cc_cipher_sethkey._entry_ptr.21 = internal global ptr @cc_cipher_sethkey._entry.19, section ".printk_index", align 4
@cc_cipher_sethkey._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.14, ptr @.str.2, i32 346, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported hw key1 number (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@cc_cipher_sethkey._entry_ptr.24 = internal global ptr @cc_cipher_sethkey._entry.22, section ".printk_index", align 4
@cc_cipher_sethkey._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.14, ptr @.str.2, i32 354, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Illegal hw key numbers (%d,%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@cc_cipher_sethkey._entry_ptr.27 = internal global ptr @cc_cipher_sethkey._entry.25, section ".printk_index", align 4
@cc_cipher_sethkey._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.14, ptr @.str.2, i32 361, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Unsupported hw key2 number (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@cc_cipher_sethkey._entry_ptr.30 = internal global ptr @cc_cipher_sethkey._entry.28, section ".printk_index", align 4
@cc_cipher_sethkey.__UNIQUE_ID_ddebug445 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.31, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.31 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"HW protected key  %d/%d set\0A.\00", [34 x i8] zeroinitializer }, align 32
@cc_cipher_sethkey._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.14, ptr @.str.2, i32 373, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"CPP keys not supported in this hardware revision.\0A\00", [45 x i8] zeroinitializer }, align 32
@cc_cipher_sethkey._entry_ptr.34 = internal global ptr @cc_cipher_sethkey._entry.32, section ".printk_index", align 4
@cc_cipher_sethkey._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.14, ptr @.str.2, i32 379, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"CPP keys only supported in CBC or CTR modes.\0A\00", [50 x i8] zeroinitializer }, align 32
@cc_cipher_sethkey._entry_ptr.37 = internal global ptr @cc_cipher_sethkey._entry.35, section ".printk_index", align 4
@cc_cipher_sethkey.__UNIQUE_ID_ddebug446 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.14, ptr @.str.2, ptr @.str.38, i8 0, i8 97, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"policy protected key alg: %d slot: %d.\0A\00", [56 x i8] zeroinitializer }, align 32
@cc_cipher_sethkey._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.14, ptr @.str.2, i32 394, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Unsupported protected key (%d)\0A\00", [32 x i8] zeroinitializer }, align 32
@cc_cipher_sethkey._entry_ptr.41 = internal global ptr @cc_cipher_sethkey._entry.39, section ".printk_index", align 4
@cc_dump_bytes = external dso_local local_unnamed_addr global i8, align 1
@cc_cipher_process.__UNIQUE_ID_ddebug458 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.43, i8 0, i8 -32, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cc_cipher_process\00", [46 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s req=%p iv=%p nbytes=%d\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Encrypt\00", [24 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"Decrypt\00", [24 x i8] zeroinitializer }, align 32
@cc_cipher_process.__UNIQUE_ID_ddebug459 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.42, ptr @.str.2, ptr @.str.46, i8 0, i8 -31, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Unsupported data size %d.\0A\00", [37 x i8] zeroinitializer }, align 32
@cc_cipher_process._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.42, ptr @.str.2, i32 952, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"map_request() failed\0A\00", [42 x i8] zeroinitializer }, align 32
@cc_cipher_process._entry_ptr = internal global ptr @cc_cipher_process._entry, section ".printk_index", align 4
@cc_setup_state_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.2, i32 605, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Unsupported cipher mode (%d)\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"cc_setup_state_desc\00", [44 x i8] zeroinitializer }, align 32
@cc_setup_state_desc._entry_ptr = internal global ptr @cc_setup_state_desc._entry, section ".printk_index", align 4
@cc_setup_mlli_desc.__UNIQUE_ID_ddebug453 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.2, ptr @.str.51, i8 0, i8 -60, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cc_setup_mlli_desc\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c" bypass params addr %pad length 0x%X addr 0x%08X\0A\00", [46 x i8] zeroinitializer }, align 32
@cc_setup_key_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.52, ptr @.str.2, i32 766, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cc_setup_key_desc\00", [46 x i8] zeroinitializer }, align 32
@cc_setup_key_desc._entry_ptr = internal global ptr @cc_setup_key_desc._entry, section ".printk_index", align 4
@cc_setup_xex_state_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.53, ptr @.str.2, i32 670, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"cc_setup_xex_state_desc\00", [40 x i8] zeroinitializer }, align 32
@cc_setup_xex_state_desc._entry_ptr = internal global ptr @cc_setup_xex_state_desc._entry, section ".printk_index", align 4
@cc_setup_flow_desc.__UNIQUE_ID_ddebug454 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"cc_setup_flow_desc\00", [45 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c" data params addr %pad length 0x%X\0A\00", [60 x i8] zeroinitializer }, align 32
@cc_setup_flow_desc.__UNIQUE_ID_ddebug455 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.55, i8 0, i8 -53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cc_setup_flow_desc.__UNIQUE_ID_ddebug456 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.56, i8 0, i8 -48, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c" din/dout params addr 0x%08X addr 0x%08X\0A\00", [54 x i8] zeroinitializer }, align 32
@cc_setup_flow_desc.__UNIQUE_ID_ddebug457 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.54, ptr @.str.2, ptr @.str.56, i8 0, i8 -46, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@cc_setup_readiv_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.57, ptr @.str.2, i32 561, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cc_setup_readiv_desc\00", [43 x i8] zeroinitializer }, align 32
@cc_setup_readiv_desc._entry_ptr = internal global ptr @cc_setup_readiv_desc._entry, section ".printk_index", align 4
@cc_cipher_setkey.__UNIQUE_ID_ddebug447 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.59, i8 0, i8 103, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"cc_cipher_setkey\00", [47 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"Setting key in context @%p for %s. keylen=%u\0A\00", [50 x i8] zeroinitializer }, align 32
@cc_cipher_setkey.__UNIQUE_ID_ddebug448 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.60, i8 0, i8 104, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid key size %d.\0A\00", [42 x i8] zeroinitializer }, align 32
@cc_cipher_setkey.__UNIQUE_ID_ddebug449 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.61, i8 0, i8 109, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Unsupported key size %d and no fallback.\0A\00", [54 x i8] zeroinitializer }, align 32
@cc_cipher_setkey.__UNIQUE_ID_ddebug450 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.62, i8 0, i8 114, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"weak DES key\00", [19 x i8] zeroinitializer }, align 32
@cc_cipher_setkey.__UNIQUE_ID_ddebug451 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.63, i8 0, i8 116, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"weak XTS key\00", [19 x i8] zeroinitializer }, align 32
@cc_cipher_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.58, ptr @.str.2, i32 482, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to hash ESSIV key.\0A\00", [37 x i8] zeroinitializer }, align 32
@cc_cipher_setkey._entry_ptr = internal global ptr @cc_cipher_setkey._entry, section ".printk_index", align 4
@cc_cipher_setkey.__UNIQUE_ID_ddebug452 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.58, ptr @.str.2, ptr @.str.65, i8 0, i8 123, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"return safely\00", [18 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@cc_cipher_init.__UNIQUE_ID_ddebug437 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.68, i8 0, i8 41, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc_cipher_init\00", [17 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Initializing context @%p for %s\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c"sha256\00", [25 x i8] zeroinitializer }, align 32
@cc_cipher_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.70, ptr @.str.67, ptr @.str.2, i32 177, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error allocating hash tfm for ESSIV.\0A\00", [58 x i8] zeroinitializer }, align 32
@cc_cipher_init._entry_ptr = internal global ptr @cc_cipher_init._entry, section ".printk_index", align 4
@cc_cipher_init._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.67, ptr @.str.2, i32 191, ptr @.str.73, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [65 x i8], [63 x i8] } { [65 x i8] c"Error allocating fallback algo %s. Some modes may be available.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@cc_cipher_init._entry_ptr.74 = internal global ptr @cc_cipher_init._entry.71, section ".printk_index", align 4
@cc_cipher_init.__UNIQUE_ID_ddebug438 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.75, i8 0, i8 51, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Allocated key buffer in context. key=@%p\0A\00", [54 x i8] zeroinitializer }, align 32
@cc_cipher_init._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.67, ptr @.str.2, i32 215, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Mapping Key %u B at va=%pK for DMA failed\0A\00", [53 x i8] zeroinitializer }, align 32
@cc_cipher_init._entry_ptr.78 = internal global ptr @cc_cipher_init._entry.76, section ".printk_index", align 4
@cc_cipher_init.__UNIQUE_ID_ddebug439 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.2, ptr @.str.79, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Mapped key %u B at va=%pK to dma=%pad\0A\00", [57 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.80 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@cc_cipher_exit.__UNIQUE_ID_ddebug440 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.83, i8 0, i8 60, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"cc_cipher_exit\00", [17 x i8] zeroinitializer }, align 32
@.str.83 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Clearing context @%p for %s\0A\00", [35 x i8] zeroinitializer }, align 32
@cc_cipher_exit.__UNIQUE_ID_ddebug441 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.84, i8 0, i8 64, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unmapped key buffer key_dma_addr=%pad\0A\00", [57 x i8] zeroinitializer }, align 32
@cc_cipher_exit.__UNIQUE_ID_ddebug442 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.2, ptr @.str.85, i8 0, i8 65, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Free key buffer in context. key=@%p\0A\00", [59 x i8] zeroinitializer }, align 32
@switch.table.cc_cipher_sethkey = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 7, i32 9, i32 10, i32 11], [16 x i8] zeroinitializer }, align 32
@switch.table.cc_cipher_sethkey.86 = internal constant { [4 x i32], [16 x i8] } { [4 x i32] [i32 7, i32 9, i32 10, i32 11], [16 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 34, i64 36]
@__sancov_gen_cov_switch_values.87 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.88 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 13]
@__sancov_gen_cov_switch_values.89 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.90 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 13]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 34, i64 36]
@__sancov_gen_cov_switch_values.92 = internal global [7 x i64] [i64 5, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6]
@__sancov_gen_cov_switch_values.93 = internal global [4 x i64] [i64 2, i64 32, i64 4, i64 13]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 34, i64 36]
@__sancov_gen_cov_switch_values.95 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 11, i64 13]
@__sancov_gen_cov_switch_values.96 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.97 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 11, i64 13]
@__sancov_gen_cov_switch_values.98 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 11, i64 13]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 34, i64 36]
@__sancov_gen_cov_switch_values.100 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 11, i64 13]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 34, i64 36]
@__sancov_gen_cov_switch_values.102 = internal global [9 x i64] [i64 7, i64 32, i64 0, i64 1, i64 2, i64 4, i64 6, i64 11, i64 13]
@__sancov_gen_cov_switch_values.103 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.104 = internal global [4 x i64] [i64 2, i64 32, i64 4294967181, i64 4294967280]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 32, i64 32, i64 34, i64 36]
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1471, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1479, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1483, i32 4 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1489, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1492, i32 3 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1495, i32 4 }
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1501, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 309, i32 2 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 311, i32 18 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 317, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 329, i32 3 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 339, i32 4 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 345, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 353, i32 5 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 360, i32 5 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 367, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 373, i32 4 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 379, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 389, i32 3 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 394, i32 3 }
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 896, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 903, i32 3 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 952, i32 3 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 605, i32 3 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 781, i32 3 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 766, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 670, i32 3 }
@___asan_gen_.267 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 811, i32 3 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 831, i32 4 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 561, i32 3 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 412, i32 2 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 419, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 437, i32 4 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 457, i32 4 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 464, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 482, i32 4 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 492, i32 2 }
@___asan_gen_.306 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 1430, i32 52 }
@___asan_gen_.312 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 164, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 175, i32 41 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 177, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 190, i32 4 }
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 206, i32 2 }
@___asan_gen_.334 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 214, i32 3 }
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 218, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.347, i32 326, i32 6 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 242, i32 2 }
@___asan_gen_.357 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 256, i32 2 }
@___asan_gen_.358 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.359 = private constant [36 x i8] c"../drivers/crypto/ccree/cc_cipher.c\00", align 1
@___asan_gen_.360 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.359, i32 261, i32 2 }
@___asan_gen_.361 = private unnamed_addr constant [31 x i8] c"switch.table.cc_cipher_sethkey\00", align 1
@___asan_gen_.362 = private unnamed_addr constant [34 x i8] c"switch.table.cc_cipher_sethkey.86\00", align 1
@llvm.compiler.used = appending global [106 x ptr] [ptr @cc_cipher_alloc._entry, ptr @cc_cipher_alloc._entry.10, ptr @cc_cipher_alloc._entry_ptr, ptr @cc_cipher_alloc._entry_ptr.12, ptr @cc_cipher_init._entry, ptr @cc_cipher_init._entry.71, ptr @cc_cipher_init._entry.76, ptr @cc_cipher_init._entry_ptr, ptr @cc_cipher_init._entry_ptr.74, ptr @cc_cipher_init._entry_ptr.78, ptr @cc_cipher_process._entry, ptr @cc_cipher_process._entry_ptr, ptr @cc_cipher_sethkey._entry, ptr @cc_cipher_sethkey._entry.19, ptr @cc_cipher_sethkey._entry.22, ptr @cc_cipher_sethkey._entry.25, ptr @cc_cipher_sethkey._entry.28, ptr @cc_cipher_sethkey._entry.32, ptr @cc_cipher_sethkey._entry.35, ptr @cc_cipher_sethkey._entry.39, ptr @cc_cipher_sethkey._entry_ptr, ptr @cc_cipher_sethkey._entry_ptr.21, ptr @cc_cipher_sethkey._entry_ptr.24, ptr @cc_cipher_sethkey._entry_ptr.27, ptr @cc_cipher_sethkey._entry_ptr.30, ptr @cc_cipher_sethkey._entry_ptr.34, ptr @cc_cipher_sethkey._entry_ptr.37, ptr @cc_cipher_sethkey._entry_ptr.41, ptr @cc_cipher_setkey._entry, ptr @cc_cipher_setkey._entry_ptr, ptr @cc_setup_key_desc._entry, ptr @cc_setup_key_desc._entry_ptr, ptr @cc_setup_readiv_desc._entry, ptr @cc_setup_readiv_desc._entry_ptr, ptr @cc_setup_state_desc._entry, ptr @cc_setup_state_desc._entry_ptr, ptr @cc_setup_xex_state_desc._entry, ptr @cc_setup_xex_state_desc._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.33, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.73, ptr @.str.75, ptr @.str.77, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @switch.table.cc_cipher_sethkey, ptr @switch.table.cc_cipher_sethkey.86], section "llvm.metadata"
@0 = internal global [87 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_alloc._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_sethkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_sethkey._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_sethkey._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_sethkey._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_sethkey._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_sethkey._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_sethkey._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_sethkey._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_process._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_setup_state_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_setup_key_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_setup_xex_state_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.267 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_setup_readiv_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_init._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 65, i32 128, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cc_cipher_init._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.360 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cc_cipher_sethkey to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.361 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.cc_cipher_sethkey.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.362 to i32), i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_cipher_free(ptr noundef readonly %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %alg_list = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 6
  %0 = ptrtoint ptr %alg_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %alg_list, align 4
  %cmp.not19 = icmp eq ptr %1, %alg_list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %t_alg.020 = phi ptr [ %n.0, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %2 = ptrtoint ptr %t_alg.020 to i32
  call void @__asan_load4_noabort(i32 %2)
  %n.0 = load ptr, ptr %t_alg.020, align 128
  %skcipher_alg = getelementptr inbounds %struct.cc_crypto_alg, ptr %t_alg.020, i32 0, i32 6
  tail call void @crypto_unregister_skcipher(ptr noundef %skcipher_alg) #7
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %t_alg.020) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %t_alg.020, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %t_alg.020 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %t_alg.020, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %t_alg.020 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %t_alg.020, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %t_alg.020, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %n.0, %alg_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @cc_cipher_alloc(ptr noundef %drvdata) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 3
  %0 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %1, i32 0, i32 3
  %alg_list = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 6
  %2 = ptrtoint ptr %alg_list to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %alg_list, ptr %alg_list, align 4
  %prev.i = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 6, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %alg_list, ptr %prev.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_alloc.__UNIQUE_ID_ddebug460, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_alloc, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !195

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_alloc.__UNIQUE_ID_ddebug460, ptr noundef %dev.i, ptr noundef nonnull @.str.3, i32 noundef 23) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %hw_rev = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 16
  %std_bodies = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 20
  %sec_disabled = getelementptr inbounds %struct.cc_drvdata, ptr %drvdata, i32 0, i32 21
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %do.end
  %alg.0177 = phi i32 [ 0, %do.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr [23 x %struct.cc_alg_template], ptr @skcipher_algs, i32 0, i32 %alg.0177
  %min_hw_rev = getelementptr [23 x %struct.cc_alg_template], ptr @skcipher_algs, i32 0, i32 %alg.0177, i32 8
  %4 = ptrtoint ptr %min_hw_rev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %min_hw_rev, align 4
  %6 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp4 = icmp ugt i32 %5, %7
  br i1 %cmp4, label %for.body.for.inc_crit_edge, label %lor.lhs.false

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false:                                    ; preds = %for.body
  %8 = ptrtoint ptr %std_bodies to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %std_bodies, align 4
  %std_body = getelementptr [23 x %struct.cc_alg_template], ptr @skcipher_algs, i32 0, i32 %alg.0177, i32 9
  %10 = ptrtoint ptr %std_body to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %std_body, align 16
  %and = and i32 %11, %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool6.not = icmp eq i32 %and, 0
  br i1 %tobool6.not, label %lor.lhs.false.for.inc_crit_edge, label %lor.lhs.false7

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

lor.lhs.false7:                                   ; preds = %lor.lhs.false
  %12 = ptrtoint ptr %sec_disabled to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %sec_disabled, align 4, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool8.not = icmp eq i8 %13, 0
  %14 = add nsw i32 %alg.0177, -7
  call void @__sanitizer_cov_trace_const_cmp4(i32 14, i32 %14)
  %tobool10.not = icmp ult i32 %14, 14
  %or.cond = select i1 %tobool8.not, i1 true, i1 %tobool10.not
  br i1 %or.cond, label %do.body13, label %lor.lhs.false7.for.inc_crit_edge

lor.lhs.false7.for.inc_crit_edge:                 ; preds = %lor.lhs.false7
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.body13:                                        ; preds = %lor.lhs.false7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_alloc.__UNIQUE_ID_ddebug461, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_alloc, %if.then25)) #7
          to label %do.end29 [label %if.then25], !srcloc !195

if.then25:                                        ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  %driver_name = getelementptr [23 x %struct.cc_alg_template], ptr @skcipher_algs, i32 0, i32 %alg.0177, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_alloc.__UNIQUE_ID_ddebug461, ptr noundef %dev.i, ptr noundef nonnull @.str.4, ptr noundef %driver_name) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body13
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev.i, i32 noundef 1408, i32 noundef 3520) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end29.if.then33_crit_edge, label %cc_create_alg.exit

do.end29.if.then33_crit_edge:                     ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

cc_create_alg.exit:                               ; preds = %do.end29
  %skcipher_alg.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 6
  %template_u.i = getelementptr [23 x %struct.cc_alg_template], ptr @skcipher_algs, i32 0, i32 %alg.0177, i32 4
  %15 = call ptr @memcpy(ptr %skcipher_alg.i, ptr %template_u.i, i32 640)
  %cra_name.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 8
  %call3.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_name.i, i32 noundef 128, ptr noundef nonnull @.str.66, ptr noundef %arrayidx) #7
  %cra_driver_name.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 9
  %driver_name.i = getelementptr [23 x %struct.cc_alg_template], ptr @skcipher_algs, i32 0, i32 %alg.0177, i32 1
  %call7.i = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef %cra_driver_name.i, i32 noundef 128, ptr noundef nonnull @.str.66, ptr noundef %driver_name.i) #7
  %cra_module.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 15
  %16 = ptrtoint ptr %cra_module.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %cra_module.i, align 4
  %cra_priority.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 6
  %17 = ptrtoint ptr %cra_priority.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 400, ptr %cra_priority.i, align 32
  %blocksize.i = getelementptr [23 x %struct.cc_alg_template], ptr @skcipher_algs, i32 0, i32 %alg.0177, i32 2
  %18 = ptrtoint ptr %blocksize.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %blocksize.i, align 128
  %cra_blocksize.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 3
  %20 = ptrtoint ptr %cra_blocksize.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %cra_blocksize.i, align 4
  %cra_alignmask.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 5
  %21 = ptrtoint ptr %cra_alignmask.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %cra_alignmask.i, align 4
  %cra_ctxsize.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 4
  %22 = ptrtoint ptr %cra_ctxsize.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 52, ptr %cra_ctxsize.i, align 8
  %cra_init.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 12
  %23 = ptrtoint ptr %cra_init.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @cc_cipher_init, ptr %cra_init.i, align 64
  %cra_exit.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 13
  %24 = ptrtoint ptr %cra_exit.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @cc_cipher_exit, ptr %cra_exit.i, align 4
  %cra_flags.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 6, i32 11, i32 2
  %25 = ptrtoint ptr %cra_flags.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 4224, ptr %cra_flags.i, align 16
  %cipher_mode.i = getelementptr [23 x %struct.cc_alg_template], ptr @skcipher_algs, i32 0, i32 %alg.0177, i32 5
  %26 = ptrtoint ptr %cipher_mode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cipher_mode.i, align 128
  %cipher_mode16.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 1
  %28 = ptrtoint ptr %cipher_mode16.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %cipher_mode16.i, align 8
  %flow_mode.i = getelementptr [23 x %struct.cc_alg_template], ptr @skcipher_algs, i32 0, i32 %alg.0177, i32 6
  %29 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flow_mode.i, align 4
  %flow_mode17.i = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %flow_mode17.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %30, ptr %flow_mode17.i, align 4
  %cmp.i = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cc_create_alg.exit.if.then33_crit_edge, label %if.end41

cc_create_alg.exit.if.then33_crit_edge:           ; preds = %cc_create_alg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then33

if.then33:                                        ; preds = %cc_create_alg.exit.if.then33_crit_edge, %do.end29.if.then33_crit_edge
  %retval.0.i160169 = phi ptr [ %call.i.i, %cc_create_alg.exit.if.then33_crit_edge ], [ inttoptr (i32 -12 to ptr), %do.end29.if.then33_crit_edge ]
  %32 = ptrtoint ptr %retval.0.i160169 to i32
  %driver_name39 = getelementptr [23 x %struct.cc_alg_template], ptr @skcipher_algs, i32 0, i32 %alg.0177, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.5, ptr noundef %driver_name39) #10
  br label %fail0

if.end41:                                         ; preds = %cc_create_alg.exit
  %drvdata42 = getelementptr inbounds %struct.cc_crypto_alg, ptr %call.i.i, i32 0, i32 4
  %33 = ptrtoint ptr %drvdata42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %drvdata, ptr %drvdata42, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_alloc.__UNIQUE_ID_ddebug462, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_alloc, %if.then55)) #7
          to label %do.end61 [label %if.then55], !srcloc !195

if.then55:                                        ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_alloc.__UNIQUE_ID_ddebug462, ptr noundef %dev.i, ptr noundef nonnull @.str.8, ptr noundef %driver_name.i) #7
  br label %do.end61

do.end61:                                         ; preds = %if.then55, %if.end41
  %call62 = tail call i32 @crypto_register_skcipher(ptr noundef %skcipher_alg.i) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_alloc.__UNIQUE_ID_ddebug463, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_alloc, %if.then75)) #7
          to label %do.end80 [label %if.then75], !srcloc !195

if.then75:                                        ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_alloc.__UNIQUE_ID_ddebug463, ptr noundef %dev.i, ptr noundef nonnull @.str.9, ptr noundef %cra_driver_name.i, i32 noundef %call62) #7
  br label %do.end80

do.end80:                                         ; preds = %if.then75, %do.end61
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call62)
  %tobool81.not = icmp eq i32 %call62, 0
  br i1 %tobool81.not, label %if.end90, label %do.end85

do.end85:                                         ; preds = %do.end80
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.11, ptr noundef %cra_driver_name.i) #10
  br label %fail0

if.end90:                                         ; preds = %do.end80
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %call.i.i162 = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i.i, ptr noundef %35, ptr noundef %alg_list) #7
  br i1 %call.i.i162, label %if.end.i.i, label %if.end90.list_add_tail.exit_crit_edge

if.end90.list_add_tail.exit_crit_edge:            ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i.i, ptr %prev.i, align 4
  %37 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %alg_list, ptr %call.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call.i.i, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %call.i.i, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end90.list_add_tail.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_alloc.__UNIQUE_ID_ddebug464, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_alloc, %if.then105)) #7
          to label %for.inc [label %if.then105], !srcloc !195

if.then105:                                       ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_alloc.__UNIQUE_ID_ddebug464, ptr noundef %dev.i, ptr noundef nonnull @.str.13, ptr noundef %cra_driver_name.i) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then105, %list_add_tail.exit, %lor.lhs.false7.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %alg.0177, 1
  %exitcond.not = icmp eq i32 %inc, 23
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

fail0:                                            ; preds = %do.end85, %if.then33
  %rc.0 = phi i32 [ %32, %if.then33 ], [ %call62, %do.end85 ]
  %40 = ptrtoint ptr %alg_list to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %alg_list, align 4
  %cmp.not19.i = icmp eq ptr %41, %alg_list
  br i1 %cmp.not19.i, label %fail0.cleanup_crit_edge, label %fail0.for.body.i_crit_edge

fail0.for.body.i_crit_edge:                       ; preds = %fail0
  br label %for.body.i

fail0.cleanup_crit_edge:                          ; preds = %fail0
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %fail0.for.body.i_crit_edge
  %t_alg.020.i = phi ptr [ %n.0.i, %list_del.exit.i.for.body.i_crit_edge ], [ %41, %fail0.for.body.i_crit_edge ]
  %42 = ptrtoint ptr %t_alg.020.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %n.0.i = load ptr, ptr %t_alg.020.i, align 128
  %skcipher_alg.i163 = getelementptr inbounds %struct.cc_crypto_alg, ptr %t_alg.020.i, i32 0, i32 6
  tail call void @crypto_unregister_skcipher(ptr noundef %skcipher_alg.i163) #7
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %t_alg.020.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %t_alg.020.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i.i.i, align 4
  %45 = ptrtoint ptr %t_alg.020.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %t_alg.020.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %47 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev1.i.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %46, ptr %44, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %49 = ptrtoint ptr %t_alg.020.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 256 to ptr), ptr %t_alg.020.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %t_alg.020.i, i32 0, i32 1
  %50 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %cmp.not.i = icmp eq ptr %n.0.i, %alg_list
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %fail0.cleanup_crit_edge, %for.inc.cleanup_crit_edge
  %retval.0 = phi i32 [ %rc.0, %fail0.cleanup_crit_edge ], [ %rc.0, %list_del.exit.i.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_cipher_sethkey(ptr noundef %sktfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_sethkey.__UNIQUE_ID_ddebug443, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_sethkey, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !195

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %__crt_alg.i = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %5, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_sethkey.__UNIQUE_ID_ddebug443, ptr noundef %dev.i, ptr noundef nonnull @.str.15, ptr noundef %__crt_ctx.i, ptr noundef %cra_name.i, i32 noundef %keylen) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @cc_dump_bytes to i32))
  %6 = load i8, ptr @cc_dump_bytes, align 1, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %do.end.dump_byte_array.exit_crit_edge, label %if.then.i

do.end.dump_byte_array.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_byte_array.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dump_byte_array(ptr noundef nonnull @.str.16, ptr noundef %key, i32 noundef %keylen) #7
  br label %dump_byte_array.exit

dump_byte_array.exit:                             ; preds = %if.then.i, %do.end.dump_byte_array.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 4
  br i1 %cmp.not, label %if.end11, label %do.end10

do.end10:                                         ; preds = %dump_byte_array.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.17, i32 noundef %keylen) #10
  br label %cleanup

if.end11:                                         ; preds = %dump_byte_array.exit
  %7 = ptrtoint ptr %key to i32
  call void @__asan_loadN_noabort(i32 %7, i32 4)
  %8 = load i32, ptr %key, align 1
  %hki.sroa.0.0.extract.shift = lshr i32 %8, 16
  %hki.sroa.5.0.extract.shift = lshr i32 %8, 8
  %hki.sroa.5.0.extract.trunc = trunc i32 %hki.sroa.5.0.extract.shift to i8
  %hki.sroa.12.0.extract.trunc = trunc i32 %8 to i8
  %flow_mode.i = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 8
  %9 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flow_mode.i, align 4
  %11 = zext i32 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values)
  switch i32 %10, label %if.end11.do.body16_crit_edge [
    i32 32, label %sw.bb.i
    i32 34, label %sw.bb10.i
    i32 36, label %sw.bb16.i
  ]

if.end11.do.body16_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb.i:                                          ; preds = %if.end11
  %12 = add nsw i32 %hki.sroa.0.0.extract.shift, -16
  %13 = tail call i32 @llvm.fshl.i32(i32 %12, i32 %12, i32 29) #7
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.87)
  switch i32 %13, label %sw.bb.i.do.body16_crit_edge [
    i32 0, label %sw.bb.i.sw.bb1.i_crit_edge
    i32 1, label %sw.bb.i.sw.bb1.i_crit_edge251
    i32 2, label %sw.bb.i.if.end32_crit_edge
    i32 4, label %sw.bb.i.sw.bb3.i_crit_edge
    i32 6, label %sw.bb.i.sw.bb3.i_crit_edge252
  ]

sw.bb.i.sw.bb3.i_crit_edge252:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

sw.bb.i.sw.bb3.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

sw.bb.i.if.end32_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

sw.bb.i.sw.bb1.i_crit_edge251:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

sw.bb.i.sw.bb1.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

sw.bb.i.do.body16_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb1.i:                                         ; preds = %sw.bb.i.sw.bb1.i_crit_edge, %sw.bb.i.sw.bb1.i_crit_edge251
  %cipher_mode.i = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 4
  %15 = ptrtoint ptr %cipher_mode.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %cipher_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %16)
  %cmp.not.i = icmp eq i32 %16, 4
  br i1 %cmp.not.i, label %sw.bb1.i.do.body16_crit_edge, label %sw.bb1.i.if.end32_crit_edge

sw.bb1.i.if.end32_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

sw.bb1.i.do.body16_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb3.i:                                         ; preds = %sw.bb.i.sw.bb3.i_crit_edge, %sw.bb.i.sw.bb3.i_crit_edge252
  %cipher_mode4.i = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 4
  %17 = ptrtoint ptr %cipher_mode4.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cipher_mode4.i, align 4
  %19 = zext i32 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.88)
  switch i32 %18, label %sw.bb3.i.do.body16_crit_edge [
    i32 13, label %sw.bb3.i.if.end32_crit_edge
    i32 4, label %sw.bb3.i.if.end32_crit_edge253
  ]

sw.bb3.i.if.end32_crit_edge253:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

sw.bb3.i.if.end32_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

sw.bb3.i.do.body16_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb10.i:                                        ; preds = %if.end11
  %20 = add nsw i32 %hki.sroa.0.0.extract.shift, -8
  %switch.and.i = and i32 %20, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp28.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp28.i, label %sw.bb10.i.if.end32_crit_edge, label %sw.bb10.i.do.body16_crit_edge

sw.bb10.i.do.body16_crit_edge:                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb10.i.if.end32_crit_edge:                     ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

sw.bb16.i:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %hki.sroa.0.0.extract.shift)
  %cmp17.i = icmp eq i32 %hki.sroa.0.0.extract.shift, 16
  br i1 %cmp17.i, label %sw.bb16.i.if.end32_crit_edge, label %sw.bb16.i.do.body16_crit_edge

sw.bb16.i.do.body16_crit_edge:                    ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb16.i.if.end32_crit_edge:                     ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.body16:                                        ; preds = %sw.bb16.i.do.body16_crit_edge, %sw.bb10.i.do.body16_crit_edge, %sw.bb3.i.do.body16_crit_edge, %sw.bb1.i.do.body16_crit_edge, %sw.bb.i.do.body16_crit_edge, %if.end11.do.body16_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_sethkey.__UNIQUE_ID_ddebug444, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_sethkey, %if.then28)) #7
          to label %cleanup [label %if.then28], !srcloc !195

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_sethkey.__UNIQUE_ID_ddebug444, ptr noundef %dev.i, ptr noundef nonnull @.str.18, i32 noundef %hki.sroa.0.0.extract.shift) #7
  br label %cleanup

if.end32:                                         ; preds = %sw.bb16.i.if.end32_crit_edge, %sw.bb10.i.if.end32_crit_edge, %sw.bb3.i.if.end32_crit_edge, %sw.bb3.i.if.end32_crit_edge253, %sw.bb1.i.if.end32_crit_edge, %sw.bb.i.if.end32_crit_edge
  %keylen33 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1
  %21 = ptrtoint ptr %keylen33 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %hki.sroa.0.0.extract.shift, ptr %keylen33, align 4
  %fallback_on = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 44
  %22 = ptrtoint ptr %fallback_on to i32
  call void @__asan_store1_noabort(i32 %22)
  store i8 0, ptr %fallback_on, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %hki.sroa.5.0.extract.trunc)
  %cmp3.i = icmp ult i8 %hki.sroa.5.0.extract.trunc, 4
  %23 = and i8 %hki.sroa.5.0.extract.trunc, -8
  call void @__sanitizer_cov_trace_const_cmp1(i8 16, i8 %23)
  %24 = icmp eq i8 %23, 16
  %spec.select.i = select i1 %24, i32 2, i32 3
  %retval.0.i225 = select i1 %cmp3.i, i32 1, i32 %spec.select.i
  %25 = zext i32 %retval.0.i225 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.89)
  switch i32 %retval.0.i225, label %do.end155 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb105
  ]

sw.bb:                                            ; preds = %if.end32
  call void @__sanitizer_cov_trace_const_cmp4(i32 36, i32 %10)
  %cmp35 = icmp eq i32 %10, 36
  br i1 %cmp35, label %do.end40, label %if.end41

do.end40:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.20) #10
  br label %cleanup

if.end41:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %hki.sroa.5.0.extract.trunc)
  %26 = icmp ult i8 %hki.sroa.5.0.extract.trunc, 4
  br i1 %26, label %switch.lookup, label %do.end50

do.end50:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  %27 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 28
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 2147483647, ptr %27, align 4
  %conv52 = and i32 %hki.sroa.5.0.extract.shift, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.23, i32 noundef %conv52) #10
  br label %cleanup

switch.lookup:                                    ; preds = %if.end41
  %sext = shl i32 %hki.sroa.5.0.extract.shift, 24
  %29 = ashr exact i32 %sext, 24
  %switch.gep = getelementptr inbounds [4 x i32], ptr @switch.table.cc_cipher_sethkey, i32 0, i32 %29
  %30 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %30)
  %switch.load = load i32, ptr %switch.gep, align 4
  %31 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 28
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %switch.load, ptr %31, align 4
  %cipher_mode = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 4
  %33 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %cipher_mode, align 4
  %35 = zext i32 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %35, ptr @__sancov_gen_cov_switch_values.90)
  switch i32 %34, label %switch.lookup.if.end86_crit_edge [
    i32 4, label %switch.lookup.if.then59_crit_edge
    i32 13, label %switch.lookup.if.then59_crit_edge254
  ]

switch.lookup.if.then59_crit_edge254:             ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then59

switch.lookup.if.then59_crit_edge:                ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then59

switch.lookup.if.end86_crit_edge:                 ; preds = %switch.lookup
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end86

if.then59:                                        ; preds = %switch.lookup.if.then59_crit_edge, %switch.lookup.if.then59_crit_edge254
  call void @__sanitizer_cov_trace_cmp1(i8 %hki.sroa.5.0.extract.trunc, i8 %hki.sroa.12.0.extract.trunc)
  %cmp63 = icmp eq i8 %hki.sroa.5.0.extract.trunc, %hki.sroa.12.0.extract.trunc
  br i1 %cmp63, label %do.end68, label %if.end73

do.end68:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_pc() #9
  %conv62 = and i32 %8, 255
  %conv61 = and i32 %hki.sroa.5.0.extract.shift, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.26, i32 noundef %conv61, i32 noundef %conv62) #10
  br label %cleanup

if.end73:                                         ; preds = %if.then59
  call void @__sanitizer_cov_trace_const_cmp1(i8 4, i8 %hki.sroa.12.0.extract.trunc)
  %36 = icmp ult i8 %hki.sroa.12.0.extract.trunc, 4
  br i1 %36, label %switch.lookup247, label %do.end82

switch.lookup247:                                 ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %sext250 = shl i32 %8, 24
  %37 = ashr exact i32 %sext250, 24
  %switch.gep248 = getelementptr inbounds [4 x i32], ptr @switch.table.cc_cipher_sethkey.86, i32 0, i32 %37
  %38 = ptrtoint ptr %switch.gep248 to i32
  call void @__asan_load4_noabort(i32 %38)
  %switch.load249 = load i32, ptr %switch.gep248, align 4
  %key2_slot243 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 32
  %39 = ptrtoint ptr %key2_slot243 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %switch.load249, ptr %key2_slot243, align 4
  br label %if.end86

do.end82:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #9
  %key2_slot = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 32
  %40 = ptrtoint ptr %key2_slot to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 2147483647, ptr %key2_slot, align 4
  %conv84 = and i32 %8, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.29, i32 noundef %conv84) #10
  br label %cleanup

if.end86:                                         ; preds = %switch.lookup247, %switch.lookup.if.end86_crit_edge
  %key_type = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 16
  %41 = ptrtoint ptr %key_type to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %key_type, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_sethkey.__UNIQUE_ID_ddebug445, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_sethkey, %if.then99)) #7
          to label %cleanup [label %if.then99], !srcloc !195

if.then99:                                        ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %31, align 4
  %key2_slot101 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 32
  %44 = ptrtoint ptr %key2_slot101 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %key2_slot101, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_sethkey.__UNIQUE_ID_ddebug445, ptr noundef %dev.i, ptr noundef nonnull @.str.31, i32 noundef %43, i32 noundef %45) #7
  br label %cleanup

sw.bb105:                                         ; preds = %if.end32
  %46 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %__crt_ctx.i, align 4
  %hw_rev = getelementptr inbounds %struct.cc_drvdata, ptr %47, i32 0, i32 16
  %48 = ptrtoint ptr %hw_rev to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %hw_rev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 713, i32 %49)
  %cmp107 = icmp ult i32 %49, 713
  br i1 %cmp107, label %do.end112, label %if.end113

do.end112:                                        ; preds = %sw.bb105
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.33) #10
  br label %cleanup

if.end113:                                        ; preds = %sw.bb105
  %cipher_mode114 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 4
  %50 = ptrtoint ptr %cipher_mode114 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cipher_mode114, align 4
  %.off = add i32 %51, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.off)
  %switch = icmp ult i32 %.off, 2
  br i1 %switch, label %if.end124, label %do.end123

do.end123:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.36) #10
  br label %cleanup

if.end124:                                        ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = add i8 %hki.sroa.5.0.extract.trunc, -16
  %52 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 28
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store1_noabort(i32 %53)
  store i8 %sub.i, ptr %52, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %10)
  %cmp128 = icmp ne i32 %10, 32
  %spec.select = zext i1 %cmp128 to i32
  %54 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 32
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %spec.select, ptr %54, align 4
  %key_type133 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 16
  %56 = ptrtoint ptr %key_type133 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 2, ptr %key_type133, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_sethkey.__UNIQUE_ID_ddebug446, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_sethkey, %if.then146)) #7
          to label %cleanup [label %if.then146], !srcloc !195

if.then146:                                       ; preds = %if.end124
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %54, align 4
  %59 = ptrtoint ptr %52 to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %52, align 4
  %conv149 = zext i8 %60 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_sethkey.__UNIQUE_ID_ddebug446, ptr noundef %dev.i, ptr noundef nonnull @.str.38, i32 noundef %58, i32 noundef %conv149) #7
  br label %cleanup

do.end155:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %conv157 = and i32 %hki.sroa.5.0.extract.shift, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.40, i32 noundef %conv157) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end155, %if.then146, %if.end124, %do.end123, %do.end112, %if.then99, %if.end86, %do.end82, %do.end68, %do.end50, %do.end40, %if.then28, %do.body16, %do.end10
  %retval.0 = phi i32 [ -22, %do.end10 ], [ -22, %do.end155 ], [ -22, %do.end112 ], [ -22, %do.end123 ], [ -22, %do.end40 ], [ -22, %do.end50 ], [ -22, %do.end68 ], [ -22, %do.end82 ], [ -22, %if.then28 ], [ 0, %if.then146 ], [ 0, %if.then99 ], [ -22, %do.body16 ], [ 0, %if.end86 ], [ 0, %if.end124 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_cipher_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %0 = call ptr @memset(ptr %__ctx.i, i32 0, i32 52)
  %call1 = tail call fastcc i32 @cc_cipher_process(ptr noundef %req, i32 noundef 0)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_cipher_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %0 = call ptr @memset(ptr %__ctx.i, i32 0, i32 52)
  %call1 = tail call fastcc i32 @cc_cipher_process(ptr noundef %req, i32 noundef 1)
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_cipher_setkey(ptr noundef %sktfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.des_ctx, align 4
  %K.i.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 0, i32 2
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %__crt_alg = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 0, i32 2, i32 3
  %4 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg, align 4
  %max_keysize = getelementptr i8, ptr %5, i32 -104
  %6 = ptrtoint ptr %max_keysize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_keysize, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_setkey.__UNIQUE_ID_ddebug447, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_setkey, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !195

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_setkey.__UNIQUE_ID_ddebug447, ptr noundef %dev.i, ptr noundef nonnull @.str.59, ptr noundef %__crt_ctx.i, ptr noundef %cra_name.i, i32 noundef %keylen) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @cc_dump_bytes to i32))
  %10 = load i8, ptr @cc_dump_bytes, align 1, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %do.end.dump_byte_array.exit_crit_edge, label %if.then.i

do.end.dump_byte_array.exit_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dump_byte_array.exit

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @__dump_byte_array(ptr noundef nonnull @.str.16, ptr noundef %key, i32 noundef %keylen) #7
  br label %dump_byte_array.exit

dump_byte_array.exit:                             ; preds = %if.then.i, %do.end.dump_byte_array.exit_crit_edge
  %flow_mode.i = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 8
  %11 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %flow_mode.i, align 4
  %13 = zext i32 %12 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.91)
  switch i32 %12, label %dump_byte_array.exit.do.body11_crit_edge [
    i32 32, label %sw.bb.i
    i32 34, label %sw.bb10.i
    i32 36, label %sw.bb16.i
  ]

dump_byte_array.exit.do.body11_crit_edge:         ; preds = %dump_byte_array.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

sw.bb.i:                                          ; preds = %dump_byte_array.exit
  %14 = add i32 %keylen, -16
  %15 = tail call i32 @llvm.fshl.i32(i32 %14, i32 %14, i32 29) #7
  %16 = zext i32 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values.92)
  switch i32 %15, label %sw.bb.i.do.body11_crit_edge [
    i32 0, label %sw.bb.i.sw.bb1.i_crit_edge
    i32 1, label %sw.bb.i.sw.bb1.i_crit_edge302
    i32 2, label %sw.bb.i.if.end27_crit_edge
    i32 4, label %sw.bb.i.sw.bb3.i_crit_edge
    i32 6, label %sw.bb.i.sw.bb3.i_crit_edge303
  ]

sw.bb.i.sw.bb3.i_crit_edge303:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

sw.bb.i.sw.bb3.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

sw.bb.i.if.end27_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

sw.bb.i.sw.bb1.i_crit_edge302:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

sw.bb.i.sw.bb1.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

sw.bb.i.do.body11_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

sw.bb1.i:                                         ; preds = %sw.bb.i.sw.bb1.i_crit_edge, %sw.bb.i.sw.bb1.i_crit_edge302
  %cipher_mode.i = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 4
  %17 = ptrtoint ptr %cipher_mode.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cipher_mode.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %18)
  %cmp.not.i = icmp eq i32 %18, 4
  br i1 %cmp.not.i, label %sw.bb1.i.do.body11_crit_edge, label %sw.bb1.i.if.end27_crit_edge

sw.bb1.i.if.end27_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

sw.bb1.i.do.body11_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

sw.bb3.i:                                         ; preds = %sw.bb.i.sw.bb3.i_crit_edge, %sw.bb.i.sw.bb3.i_crit_edge303
  %cipher_mode4.i = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 4
  %19 = ptrtoint ptr %cipher_mode4.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %cipher_mode4.i, align 4
  %21 = zext i32 %20 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.93)
  switch i32 %20, label %sw.bb3.i.do.body11_crit_edge [
    i32 13, label %sw.bb3.i.if.end27_crit_edge
    i32 4, label %sw.bb3.i.if.end27_crit_edge304
  ]

sw.bb3.i.if.end27_crit_edge304:                   ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

sw.bb3.i.if.end27_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

sw.bb3.i.do.body11_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

sw.bb10.i:                                        ; preds = %dump_byte_array.exit
  %22 = add i32 %keylen, -8
  %switch.and.i = and i32 %22, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp28.i = icmp eq i32 %switch.and.i, 0
  br i1 %switch.selectcmp28.i, label %if.end27.thread273, label %sw.bb10.i.do.body11_crit_edge

sw.bb10.i.do.body11_crit_edge:                    ; preds = %sw.bb10.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

sw.bb16.i:                                        ; preds = %dump_byte_array.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %keylen)
  %cmp17.i = icmp eq i32 %keylen, 16
  br i1 %cmp17.i, label %if.end27.thread, label %sw.bb16.i.do.body11_crit_edge

sw.bb16.i.do.body11_crit_edge:                    ; preds = %sw.bb16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

do.body11:                                        ; preds = %sw.bb16.i.do.body11_crit_edge, %sw.bb10.i.do.body11_crit_edge, %sw.bb3.i.do.body11_crit_edge, %sw.bb1.i.do.body11_crit_edge, %sw.bb.i.do.body11_crit_edge, %dump_byte_array.exit.do.body11_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_setkey.__UNIQUE_ID_ddebug448, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_setkey, %if.then23)) #7
          to label %cleanup152 [label %if.then23], !srcloc !195

if.then23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_setkey.__UNIQUE_ID_ddebug448, ptr noundef %dev.i, ptr noundef nonnull @.str.60, i32 noundef %keylen) #7
  br label %cleanup152

if.end27:                                         ; preds = %sw.bb3.i.if.end27_crit_edge, %sw.bb3.i.if.end27_crit_edge304, %sw.bb1.i.if.end27_crit_edge, %sw.bb.i.if.end27_crit_edge
  %cipher_mode = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 4
  %23 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cipher_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %24)
  %cmp = icmp eq i32 %24, 13
  br i1 %cmp, label %if.then28, label %if.end62

if.end27.thread273:                               ; preds = %sw.bb10.i
  %cipher_mode274 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 4
  %25 = ptrtoint ptr %cipher_mode274 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %cipher_mode274, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %26)
  %cmp275 = icmp eq i32 %26, 13
  br i1 %cmp275, label %if.then28.thread282, label %if.then65

if.end27.thread:                                  ; preds = %sw.bb16.i
  %cipher_mode241 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 4
  %27 = ptrtoint ptr %cipher_mode241 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %cipher_mode241, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %28)
  %cmp242 = icmp eq i32 %28, 13
  br i1 %cmp242, label %if.end27.thread.if.then30_crit_edge, label %if.end27.thread.if.end112.sink.split_crit_edge

if.end27.thread.if.end112.sink.split_crit_edge:   ; preds = %if.end27.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112.sink.split

if.end27.thread.if.then30_crit_edge:              ; preds = %if.end27.thread
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.then28:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %keylen)
  %cmp29.not = icmp eq i32 %keylen, 32
  br i1 %cmp29.not, label %if.end62.thread255, label %if.then28.if.then30_crit_edge

if.then28.if.then30_crit_edge:                    ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.then28.thread282:                              ; preds = %if.end27.thread273
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %keylen)
  %cmp29.not284 = icmp eq i32 %keylen, 32
  br i1 %cmp29.not284, label %if.end62.thread255.thread, label %if.then28.thread282.if.then30_crit_edge

if.then28.thread282.if.then30_crit_edge:          ; preds = %if.then28.thread282
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.end62.thread255.thread:                        ; preds = %if.then28.thread282
  call void @__sanitizer_cov_trace_pc() #9
  %shl287 = shl i32 %7, 1
  %fallback_on63258288 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 44
  %29 = ptrtoint ptr %fallback_on63258288 to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 0, ptr %fallback_on63258288, align 4
  %key_type259289 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 16
  %30 = ptrtoint ptr %key_type259289 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %key_type259289, align 4
  br label %lor.lhs.false

if.then30:                                        ; preds = %if.then28.thread282.if.then30_crit_edge, %if.then28.if.then30_crit_edge, %if.end27.thread.if.then30_crit_edge
  %fallback_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 40
  %31 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %fallback_tfm, align 4
  %tobool32.not = icmp eq ptr %32, null
  br i1 %tobool32.not, label %do.body45, label %if.then39, !prof !197

if.then39:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base.i, align 128
  %and = and i32 %34, 1048320
  %fallback_on = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 44
  %35 = ptrtoint ptr %fallback_on to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %fallback_on, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %32, i32 0, i32 2
  %36 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %37, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %38 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i228 = getelementptr inbounds %struct.crypto_skcipher, ptr %39, i32 0, i32 2
  %neg.i.i = xor i32 %and, -1
  %40 = ptrtoint ptr %base.i.i228 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %base.i.i228, align 128
  %and.i.i229 = and i32 %41, %neg.i.i
  store i32 %and.i.i229, ptr %base.i.i228, align 128
  %42 = load ptr, ptr %fallback_tfm, align 4
  %call43 = tail call i32 @crypto_skcipher_setkey(ptr noundef %42, ptr noundef %key, i32 noundef %keylen) #7
  br label %cleanup152

do.body45:                                        ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_setkey.__UNIQUE_ID_ddebug449, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_setkey, %if.then57)) #7
          to label %cleanup152 [label %if.then57], !srcloc !195

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_setkey.__UNIQUE_ID_ddebug449, ptr noundef %dev.i, ptr noundef nonnull @.str.61, i32 noundef %keylen) #7
  br label %cleanup152

if.end62:                                         ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %fallback_on63 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 44
  %43 = ptrtoint ptr %fallback_on63 to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 0, ptr %fallback_on63, align 4
  %key_type = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 16
  %44 = ptrtoint ptr %key_type to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %key_type, align 4
  br label %if.end89

if.end62.thread255:                               ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #9
  %shl = shl i32 %7, 1
  br label %if.end112.sink.split

if.then65:                                        ; preds = %if.end27.thread273
  %fallback_on63279 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 44
  %45 = ptrtoint ptr %fallback_on63279 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %fallback_on63279, align 4
  %key_type280 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 16
  %46 = ptrtoint ptr %key_type280 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %key_type280, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %keylen)
  %cmp66 = icmp eq i32 %keylen, 24
  br i1 %cmp66, label %land.lhs.true, label %if.then65.lor.lhs.false_crit_edge

if.then65.lor.lhs.false_crit_edge:                ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.lhs.false

land.lhs.true:                                    ; preds = %if.then65
  %47 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %base.i, align 128
  %and.i.i231 = and i32 %48, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i231)
  %tobool.not.i.i = icmp eq i32 %and.i.i231, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #7
  %49 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 1
  %50 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 2
  %51 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 3
  %52 = call ptr @memcpy(ptr %K.i.i.i, ptr %key, i32 24)
  %53 = ptrtoint ptr %K.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %K.i.i.i, align 4
  %55 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %50, align 4
  %57 = ptrtoint ptr %49 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %49, align 4
  %59 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %56)
  %61 = icmp eq i32 %54, %56
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %62 = icmp eq i32 %58, %60
  %tobool.not.i.i.i = and i1 %61, %62
  br i1 %tobool.not.i.i.i, label %land.lhs.true.i.i.i, label %lor.lhs.false.i.i.i

lor.lhs.false.i.i.i:                              ; preds = %land.lhs.true
  %63 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 5
  %64 = getelementptr inbounds [6 x i32], ptr %K.i.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %64, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %56, i32 %66)
  %69 = icmp ne i32 %56, %66
  call void @__sanitizer_cov_trace_cmp4(i32 %60, i32 %68)
  %70 = icmp ne i32 %60, %68
  %tobool12.not.not.i.i.i = or i1 %69, %70
  %brmerge.i.i.i = or i1 %tobool.not.i.i, %tobool12.not.not.i.i.i
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge, label %do.body72.critedge

lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

land.lhs.true.i.i.i:                              ; preds = %land.lhs.true
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, label %do.body72.critedge293

land.lhs.true.i.i.i.if.end.i.i.i_crit_edge:       ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.end.i.i.i:                                     ; preds = %land.lhs.true.i.i.i.if.end.i.i.i_crit_edge, %lor.lhs.false.i.i.i.if.end.i.i.i_crit_edge
  %71 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !198
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.end.i.i.i, %if.then65.lor.lhs.false_crit_edge, %if.end62.thread255.thread
  %max_key_buf_size.0262266 = phi i32 [ %7, %if.end.i.i.i ], [ %7, %if.then65.lor.lhs.false_crit_edge ], [ %shl287, %if.end62.thread255.thread ]
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i) #7
  %72 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 128)
  %call.i.i = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i, ptr noundef %key, i32 noundef 8) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -126
  br i1 %cmp.i.i, label %if.then.i.i, label %lor.lhs.false.verify_skcipher_des_key.exit_crit_edge

lor.lhs.false.verify_skcipher_des_key.exit_crit_edge: ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %verify_skcipher_des_key.exit

if.then.i.i:                                      ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %base.i, align 128
  %and.i.i233 = and i32 %74, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i233)
  %tobool.not.i.i234 = icmp eq i32 %and.i.i233, 0
  %spec.select = select i1 %tobool.not.i.i234, i32 0, i32 -22
  br label %verify_skcipher_des_key.exit

verify_skcipher_des_key.exit:                     ; preds = %if.then.i.i, %lor.lhs.false.verify_skcipher_des_key.exit_crit_edge
  %err.0.i.i = phi i32 [ %call.i.i, %lor.lhs.false.verify_skcipher_des_key.exit_crit_edge ], [ %spec.select, %if.then.i.i ]
  %75 = call ptr @memset(ptr %tmp.i.i, i32 0, i32 128)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #7, !srcloc !198
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool70.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool70.not, label %verify_skcipher_des_key.exit.if.end89_crit_edge, label %verify_skcipher_des_key.exit.do.body72_crit_edge

verify_skcipher_des_key.exit.do.body72_crit_edge: ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body72

verify_skcipher_des_key.exit.if.end89_crit_edge:  ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end89

do.body72.critedge:                               ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %76 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !198
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  br label %do.body72

do.body72.critedge293:                            ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %77 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !198
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  br label %do.body72

do.body72:                                        ; preds = %do.body72.critedge293, %do.body72.critedge, %verify_skcipher_des_key.exit.do.body72_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_setkey.__UNIQUE_ID_ddebug450, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_setkey, %if.then84)) #7
          to label %cleanup152 [label %if.then84], !srcloc !195

if.then84:                                        ; preds = %do.body72
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_setkey.__UNIQUE_ID_ddebug450, ptr noundef %dev.i, ptr noundef nonnull @.str.62) #7
  br label %cleanup152

if.end89:                                         ; preds = %verify_skcipher_des_key.exit.if.end89_crit_edge, %if.end62
  %max_key_buf_size.0254 = phi i32 [ %max_key_buf_size.0262266, %verify_skcipher_des_key.exit.if.end89_crit_edge ], [ %7, %if.end62 ]
  %cipher_mode243253 = phi ptr [ %cipher_mode274, %verify_skcipher_des_key.exit.if.end89_crit_edge ], [ %cipher_mode, %if.end62 ]
  %78 = ptrtoint ptr %cipher_mode243253 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %cipher_mode243253, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %79)
  %cmp91 = icmp ne i32 %79, 4
  %rem.i = and i32 %keylen, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i235 = icmp eq i32 %rem.i, 0
  %or.cond = or i1 %tobool.not.i235, %cmp91
  br i1 %or.cond, label %if.end89.if.end112_crit_edge, label %do.body96

if.end89.if.end112_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

do.body96:                                        ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_setkey.__UNIQUE_ID_ddebug451, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_setkey, %if.then108)) #7
          to label %cleanup152 [label %if.then108], !srcloc !195

if.then108:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_setkey.__UNIQUE_ID_ddebug451, ptr noundef %dev.i, ptr noundef nonnull @.str.63) #7
  br label %cleanup152

if.end112.sink.split:                             ; preds = %if.end62.thread255, %if.end27.thread.if.end112.sink.split_crit_edge
  %cipher_mode243253301.ph = phi ptr [ %cipher_mode, %if.end62.thread255 ], [ %cipher_mode241, %if.end27.thread.if.end112.sink.split_crit_edge ]
  %max_key_buf_size.0254300.ph = phi i32 [ %shl, %if.end62.thread255 ], [ %7, %if.end27.thread.if.end112.sink.split_crit_edge ]
  %fallback_on63250 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 44
  %80 = ptrtoint ptr %fallback_on63250 to i32
  call void @__asan_store1_noabort(i32 %80)
  store i8 0, ptr %fallback_on63250, align 4
  %key_type251 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 16
  %81 = ptrtoint ptr %key_type251 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 0, ptr %key_type251, align 4
  br label %if.end112

if.end112:                                        ; preds = %if.end112.sink.split, %if.end89.if.end112_crit_edge
  %cipher_mode243253301 = phi ptr [ %cipher_mode243253, %if.end89.if.end112_crit_edge ], [ %cipher_mode243253301.ph, %if.end112.sink.split ]
  %max_key_buf_size.0254300 = phi i32 [ %max_key_buf_size.0254, %if.end89.if.end112_crit_edge ], [ %max_key_buf_size.0254300.ph, %if.end112.sink.split ]
  %user = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 20
  %key_dma_addr = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 24
  %82 = ptrtoint ptr %key_dma_addr to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %key_dma_addr, align 4
  call void @dma_sync_single_for_cpu(ptr noundef %dev.i, i32 noundef %83, i32 noundef %max_key_buf_size.0254300, i32 noundef 1) #7
  %84 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %user, align 4
  %86 = call ptr @memcpy(ptr %85, ptr %key, i32 %keylen)
  %87 = ptrtoint ptr %cipher_mode243253301 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %cipher_mode243253301, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %88)
  %cmp116 = icmp eq i32 %88, 13
  br i1 %cmp116, label %if.then117, label %if.end112.if.end132_crit_edge

if.end112.if.end132_crit_edge:                    ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end132

if.then117:                                       ; preds = %if.end112
  %shash_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1, i32 36
  %89 = ptrtoint ptr %shash_tfm to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %shash_tfm, align 4
  %91 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %user, align 4
  %add.ptr122 = getelementptr i8, ptr %92, i32 %keylen
  %call123 = call i32 @crypto_shash_tfm_digest(ptr noundef %90, ptr noundef %92, i32 noundef %keylen, ptr noundef %add.ptr122) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %cleanup131.thread, label %cleanup131

cleanup131.thread:                                ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  %shl130 = shl i32 %keylen, 1
  br label %if.end132

cleanup131:                                       ; preds = %if.then117
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.64) #10
  br label %cleanup152

if.end132:                                        ; preds = %cleanup131.thread, %if.end112.if.end132_crit_edge
  %keylen.addr.1 = phi i32 [ %keylen, %if.end112.if.end132_crit_edge ], [ %shl130, %cleanup131.thread ]
  %93 = ptrtoint ptr %key_dma_addr to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %key_dma_addr, align 4
  call void @dma_sync_single_for_device(ptr noundef %dev.i, i32 noundef %94, i32 noundef %max_key_buf_size.0254300, i32 noundef 1) #7
  %keylen135 = getelementptr inbounds %struct.crypto_skcipher, ptr %sktfm, i32 1, i32 1
  %95 = ptrtoint ptr %keylen135 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %keylen.addr.1, ptr %keylen135, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_setkey.__UNIQUE_ID_ddebug452, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_setkey, %if.then148)) #7
          to label %cleanup152 [label %if.then148], !srcloc !195

if.then148:                                       ; preds = %if.end132
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_setkey.__UNIQUE_ID_ddebug452, ptr noundef %dev.i, ptr noundef nonnull @.str.65) #7
  br label %cleanup152

cleanup152:                                       ; preds = %if.then148, %if.end132, %cleanup131, %if.then108, %do.body96, %if.then84, %do.body72, %if.then57, %do.body45, %if.then39, %if.then23, %do.body11
  %retval.2 = phi i32 [ %call123, %cleanup131 ], [ -22, %if.then23 ], [ %call43, %if.then39 ], [ -22, %if.then57 ], [ -22, %if.then84 ], [ -22, %if.then108 ], [ 0, %if.then148 ], [ -22, %do.body11 ], [ -22, %do.body45 ], [ -22, %do.body72 ], [ -22, %do.body96 ], [ 0, %if.end132 ]
  ret i32 %retval.2
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dump_byte_array(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cc_cipher_process(ptr noundef %req, i32 noundef %direction) unnamed_addr #0 align 64 {
entry:
  %desc = alloca [6 x %struct.cc_hw_desc], align 4
  %cc_req = alloca %struct.cc_crypto_req, align 4
  %seq_len = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 6
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %3, i32 -100
  %4 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ivsize.i, align 4
  %dst4 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %6 = ptrtoint ptr %dst4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst4, align 4
  %src5 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %8 = ptrtoint ptr %src5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src5, align 8
  %10 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %req, align 128
  %iv6 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %12 = ptrtoint ptr %iv6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iv6, align 4
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 5
  %14 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_ctx.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %15, i32 0, i32 3
  %16 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %17, i32 0, i32 3
  call void @llvm.lifetime.start.p0(i64 144, ptr nonnull %desc) #7
  %18 = call ptr @memset(ptr %desc, i32 255, i32 144)
  call void @llvm.lifetime.start.p0(i64 76, ptr nonnull %cc_req) #7
  %19 = call ptr @memset(ptr %cc_req, i32 0, i32 76)
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %seq_len) #7
  %20 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %seq_len, align 4
  %base = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 4
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %22, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %cond.i = select i1 %tobool.not.i, i32 2592, i32 3264
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_process.__UNIQUE_ID_ddebug458, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_process, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !195

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp = icmp eq i32 %direction, 0
  %cond = select i1 %cmp, ptr @.str.44, ptr @.str.45
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_process.__UNIQUE_ID_ddebug458, ptr noundef %dev.i, ptr noundef nonnull @.str.43, ptr noundef nonnull %cond, ptr noundef %req, ptr noundef %13, i32 noundef %11) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %flow_mode.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 3
  %23 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %flow_mode.i, align 4
  %25 = zext i32 %24 to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.94)
  switch i32 %24, label %do.end.do.body16_crit_edge [
    i32 32, label %sw.bb.i
    i32 34, label %sw.bb7.i
    i32 36, label %sw.bb12.i
  ]

do.end.do.body16_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb.i:                                          ; preds = %do.end
  %cipher_mode.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 2
  %26 = ptrtoint ptr %cipher_mode.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %cipher_mode.i, align 4
  %28 = zext i32 %27 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.95)
  switch i32 %27, label %sw.bb.i.do.body16_crit_edge [
    i32 4, label %sw.bb.i.sw.bb1.i_crit_edge
    i32 11, label %sw.bb.i.sw.bb1.i_crit_edge326
    i32 6, label %sw.bb.i.if.end32_crit_edge
    i32 2, label %sw.bb.i.if.end32_crit_edge327
    i32 0, label %sw.bb.i.sw.bb3.i_crit_edge
    i32 1, label %sw.bb.i.sw.bb3.i_crit_edge328
    i32 13, label %sw.bb.i.sw.bb3.i_crit_edge329
  ]

sw.bb.i.sw.bb3.i_crit_edge329:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

sw.bb.i.sw.bb3.i_crit_edge328:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

sw.bb.i.sw.bb3.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb3.i

sw.bb.i.if.end32_crit_edge327:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

sw.bb.i.if.end32_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

sw.bb.i.sw.bb1.i_crit_edge326:                    ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

sw.bb.i.sw.bb1.i_crit_edge:                       ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb1.i

sw.bb.i.do.body16_crit_edge:                      ; preds = %sw.bb.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb1.i:                                         ; preds = %sw.bb.i.sw.bb1.i_crit_edge, %sw.bb.i.sw.bb1.i_crit_edge326
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp.i = icmp ugt i32 %11, 15
  br i1 %cmp.i, label %sw.bb1.i.if.end35_crit_edge, label %sw.bb1.i.do.body16_crit_edge

sw.bb1.i.do.body16_crit_edge:                     ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb1.i.if.end35_crit_edge:                      ; preds = %sw.bb1.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

sw.bb3.i:                                         ; preds = %sw.bb.i.sw.bb3.i_crit_edge, %sw.bb.i.sw.bb3.i_crit_edge328, %sw.bb.i.sw.bb3.i_crit_edge329
  %and.i177 = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i177)
  %cmp4.i = icmp eq i32 %and.i177, 0
  br i1 %cmp4.i, label %sw.bb3.i.if.end32_crit_edge, label %sw.bb3.i.do.body16_crit_edge

sw.bb3.i.do.body16_crit_edge:                     ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb3.i.if.end32_crit_edge:                      ; preds = %sw.bb3.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

sw.bb7.i:                                         ; preds = %do.end
  %and8.i = and i32 %11, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8.i)
  %cmp9.i = icmp eq i32 %and8.i, 0
  br i1 %cmp9.i, label %sw.bb7.i.if.end32_crit_edge, label %sw.bb7.i.do.body16_crit_edge

sw.bb7.i.do.body16_crit_edge:                     ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb7.i.if.end32_crit_edge:                      ; preds = %sw.bb7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

sw.bb12.i:                                        ; preds = %do.end
  %cipher_mode13.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 2
  %29 = ptrtoint ptr %cipher_mode13.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cipher_mode13.i, align 4
  %31 = zext i32 %30 to i64
  call void @__sanitizer_cov_trace_switch(i64 %31, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %30, label %sw.bb12.i.do.body16_crit_edge [
    i32 2, label %sw.bb12.i.if.end32_crit_edge
    i32 0, label %sw.bb12.i.sw.bb15.i_crit_edge
    i32 1, label %sw.bb12.i.sw.bb15.i_crit_edge330
  ]

sw.bb12.i.sw.bb15.i_crit_edge330:                 ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15.i

sw.bb12.i.sw.bb15.i_crit_edge:                    ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb15.i

sw.bb12.i.if.end32_crit_edge:                     ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

sw.bb12.i.do.body16_crit_edge:                    ; preds = %sw.bb12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb15.i:                                        ; preds = %sw.bb12.i.sw.bb15.i_crit_edge, %sw.bb12.i.sw.bb15.i_crit_edge330
  %and16.i = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16.i)
  %cmp17.i = icmp eq i32 %and16.i, 0
  br i1 %cmp17.i, label %sw.bb15.i.if.end32_crit_edge, label %sw.bb15.i.do.body16_crit_edge

sw.bb15.i.do.body16_crit_edge:                    ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body16

sw.bb15.i.if.end32_crit_edge:                     ; preds = %sw.bb15.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

do.body16:                                        ; preds = %sw.bb15.i.do.body16_crit_edge, %sw.bb12.i.do.body16_crit_edge, %sw.bb7.i.do.body16_crit_edge, %sw.bb3.i.do.body16_crit_edge, %sw.bb1.i.do.body16_crit_edge, %sw.bb.i.do.body16_crit_edge, %do.end.do.body16_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_process.__UNIQUE_ID_ddebug459, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_process, %if.then28)) #7
          to label %exit_process [label %if.then28], !srcloc !195

if.then28:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_process.__UNIQUE_ID_ddebug459, ptr noundef %dev.i, ptr noundef nonnull @.str.46, i32 noundef %11) #7
  br label %if.then82

if.end32:                                         ; preds = %sw.bb15.i.if.end32_crit_edge, %sw.bb12.i.if.end32_crit_edge, %sw.bb7.i.if.end32_crit_edge, %sw.bb3.i.if.end32_crit_edge, %sw.bb.i.if.end32_crit_edge, %sw.bb.i.if.end32_crit_edge327
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp33 = icmp eq i32 %11, 0
  br i1 %cmp33, label %if.end32.if.then82_crit_edge, label %if.end32.if.end35_crit_edge

if.end32.if.end35_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.end32.if.then82_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

if.end35:                                         ; preds = %if.end32.if.end35_crit_edge, %sw.bb1.i.if.end35_crit_edge
  %fallback_on = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 32
  %32 = ptrtoint ptr %fallback_on to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %fallback_on, align 4, !range !196
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %33)
  %tobool36.not = icmp eq i8 %33, 0
  br i1 %tobool36.not, label %if.end43, label %if.then37

if.then37:                                        ; preds = %if.end35
  %34 = call ptr @memcpy(ptr %__ctx.i, ptr %req, i32 128)
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 28
  %35 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %36, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %37 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %direction)
  %cmp39 = icmp eq i32 %direction, 0
  br i1 %cmp39, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %call41 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %__ctx.i) #7
  br label %cleanup85

if.else:                                          ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %call42 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %__ctx.i) #7
  br label %cleanup85

if.end43:                                         ; preds = %if.end35
  %call44 = tail call ptr @kmemdup(ptr noundef %13, i32 noundef %5, i32 noundef %cond.i) #7
  %iv45 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %38 = ptrtoint ptr %iv45 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call44, ptr %iv45, align 4
  %tobool47.not = icmp eq ptr %call44, null
  br i1 %tobool47.not, label %if.end43.if.then82_crit_edge, label %if.end49

if.end43.if.then82_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

if.end49:                                         ; preds = %if.end43
  %39 = ptrtoint ptr %cc_req to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @cc_cipher_complete, ptr %cc_req, align 4
  %user_arg = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 1
  %40 = ptrtoint ptr %user_arg to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %req, ptr %user_arg, align 4
  %key_type = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 4
  %41 = ptrtoint ptr %key_type to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %key_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %42)
  %cmp50 = icmp eq i32 %42, 2
  br i1 %cmp50, label %if.then51, label %if.end49.if.end56_crit_edge

if.end49.if.end56_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then51:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  %cpp = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 3
  %43 = ptrtoint ptr %cpp to i32
  call void @__asan_store1_noabort(i32 %43)
  store i8 1, ptr %cpp, align 4
  %44 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 16
  %alg = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 20
  %45 = ptrtoint ptr %alg to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %alg, align 4
  %alg53 = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 3, i32 1
  %47 = ptrtoint ptr %alg53 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %alg53, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %44, align 4
  %slot55 = getelementptr inbounds %struct.cc_crypto_req, ptr %cc_req, i32 0, i32 3, i32 2
  %50 = ptrtoint ptr %slot55 to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %49, ptr %slot55, align 4
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %if.end49.if.end56_crit_edge
  %op_type = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 2
  %51 = ptrtoint ptr %op_type to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %direction, ptr %op_type, align 4
  %52 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %__crt_ctx.i, align 4
  %call59 = tail call i32 @cc_map_cipher_request(ptr noundef %53, ptr noundef %__ctx.i, i32 noundef %5, i32 noundef %11, ptr noundef nonnull %call44, ptr noundef %9, ptr noundef %7, i32 noundef %cond.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call59)
  %tobool60.not = icmp eq i32 %call59, 0
  br i1 %tobool60.not, label %if.end65, label %do.end64

do.end64:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.47) #10
  br label %exit_process

if.end65:                                         ; preds = %if.end56
  %cipher_mode2.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 2
  %54 = ptrtoint ptr %cipher_mode2.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %cipher_mode2.i, align 4
  %56 = zext i32 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.97)
  switch i32 %55, label %do.end.i [
    i32 0, label %if.end65.cc_setup_state_desc.exit_crit_edge
    i32 1, label %if.end65.sw.bb.i180_crit_edge
    i32 11, label %if.end65.sw.bb.i180_crit_edge331
    i32 2, label %if.end65.sw.bb.i180_crit_edge332
    i32 6, label %if.end65.sw.bb.i180_crit_edge333
    i32 4, label %if.end65.cc_setup_state_desc.exit_crit_edge334
    i32 13, label %if.end65.cc_setup_state_desc.exit_crit_edge335
  ]

if.end65.cc_setup_state_desc.exit_crit_edge335:   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_setup_state_desc.exit

if.end65.cc_setup_state_desc.exit_crit_edge334:   ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_setup_state_desc.exit

if.end65.sw.bb.i180_crit_edge333:                 ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i180

if.end65.sw.bb.i180_crit_edge332:                 ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i180

if.end65.sw.bb.i180_crit_edge331:                 ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i180

if.end65.sw.bb.i180_crit_edge:                    ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i180

if.end65.cc_setup_state_desc.exit_crit_edge:      ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_setup_state_desc.exit

sw.bb.i180:                                       ; preds = %if.end65.sw.bb.i180_crit_edge, %if.end65.sw.bb.i180_crit_edge331, %if.end65.sw.bb.i180_crit_edge332, %if.end65.sw.bb.i180_crit_edge333
  %57 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %__ctx.i, align 4
  %59 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %op_type, align 4
  %61 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %flow_mode.i, align 4
  %63 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %seq_len, align 4
  %arrayidx.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %64
  %65 = getelementptr inbounds i8, ptr %arrayidx.i, i32 4
  %66 = call ptr @memset(ptr %65, i32 0, i32 20)
  %67 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %58, ptr %arrayidx.i, align 4
  %shl28.i.i = shl i32 %5, 2
  %and29.i.i = and i32 %shl28.i.i, 67108860
  %arrayidx50.i.i = getelementptr [6 x i32], ptr %arrayidx.i, i32 0, i32 1
  %68 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %arrayidx50.i.i, align 4
  %or.i.i = or i32 %and29.i.i, %69
  %or51.i.i = or i32 %or.i.i, 67108866
  store i32 %or51.i.i, ptr %arrayidx50.i.i, align 4
  %shl.i.i = shl i32 %60, 17
  %and9.i.i = and i32 %shl.i.i, 393216
  %arrayidx.i.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %64, i32 0, i32 0, i32 4
  %70 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %arrayidx.i.i, align 4
  %or.i1.i = or i32 %71, %and9.i.i
  store i32 %or.i1.i, ptr %arrayidx.i.i, align 4
  %and9.i4.i = and i32 %62, 63
  %shl.i9.i = shl nuw nsw i32 %55, 10
  %and9.i10.i = and i32 %shl.i9.i, 15360
  %72 = add nsw i32 %55, -2
  %switch.and.i = and i32 %72, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i)
  %switch.selectcmp.i = icmp eq i32 %switch.and.i, 0
  %73 = select i1 %switch.selectcmp.i, i32 33554432, i32 16777216
  %or.i6.i = or i32 %73, %and9.i10.i
  %or.i12.i = or i32 %or.i6.i, %and9.i4.i
  %or.i16.i = or i32 %or.i12.i, %or.i1.i
  %74 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %or.i16.i, ptr %arrayidx.i.i, align 4
  %inc.i = add i32 %64, 1
  %75 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 %inc.i, ptr %seq_len, align 4
  br label %cc_setup_state_desc.exit

do.end.i:                                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %__crt_ctx.i, align 4
  %plat_dev.i.i = getelementptr inbounds %struct.cc_drvdata, ptr %77, i32 0, i32 3
  %78 = ptrtoint ptr %plat_dev.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %plat_dev.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.platform_device, ptr %79, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i, ptr noundef nonnull @.str.48, i32 noundef %55) #10
  br label %cc_setup_state_desc.exit

cc_setup_state_desc.exit:                         ; preds = %do.end.i, %sw.bb.i180, %if.end65.cc_setup_state_desc.exit_crit_edge, %if.end65.cc_setup_state_desc.exit_crit_edge334, %if.end65.cc_setup_state_desc.exit_crit_edge335
  %80 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %__crt_ctx.i, align 4
  %plat_dev.i.i182 = getelementptr inbounds %struct.cc_drvdata, ptr %81, i32 0, i32 3
  %82 = ptrtoint ptr %plat_dev.i.i182 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %plat_dev.i.i182, align 4
  %dev.i.i183 = getelementptr inbounds %struct.platform_device, ptr %83, i32 0, i32 3
  %dma_buf_type.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %84 = ptrtoint ptr %dma_buf_type.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_buf_type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %85)
  %cmp.i184 = icmp eq i32 %85, 2
  br i1 %cmp.i184, label %do.body.i, label %cc_setup_state_desc.exit.cc_setup_mlli_desc.exit_crit_edge

cc_setup_state_desc.exit.cc_setup_mlli_desc.exit_crit_edge: ; preds = %cc_setup_state_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_setup_mlli_desc.exit

do.body.i:                                        ; preds = %cc_setup_state_desc.exit
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_setup_mlli_desc.__UNIQUE_ID_ddebug453, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_process, %if.then5.i)) #7
          to label %do.end.i187 [label %if.then5.i], !srcloc !195

if.then5.i:                                       ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %mlli_dma_addr.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 4
  %mlli_len.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 8
  %86 = ptrtoint ptr %mlli_len.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %mlli_len.i, align 4
  %88 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %__crt_ctx.i, align 4
  %mlli_sram_addr.i = getelementptr inbounds %struct.cc_drvdata, ptr %89, i32 0, i32 4
  %90 = ptrtoint ptr %mlli_sram_addr.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %mlli_sram_addr.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_setup_mlli_desc.__UNIQUE_ID_ddebug453, ptr noundef %dev.i.i183, ptr noundef nonnull @.str.51, ptr noundef %mlli_dma_addr.i, i32 noundef %87, i32 noundef %91) #7
  br label %do.end.i187

do.end.i187:                                      ; preds = %if.then5.i, %do.body.i
  %92 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %seq_len, align 4
  %arrayidx.i185 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %93
  %94 = getelementptr inbounds i8, ptr %arrayidx.i185, i32 4
  %95 = call ptr @memset(ptr %94, i32 0, i32 20)
  %mlli_dma_addr10.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 4
  %96 = ptrtoint ptr %mlli_dma_addr10.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %mlli_dma_addr10.i, align 4
  %mlli_len12.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 5, i32 8
  %98 = ptrtoint ptr %mlli_len12.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %mlli_len12.i, align 4
  %100 = ptrtoint ptr %arrayidx.i185 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %97, ptr %arrayidx.i185, align 4
  %shl28.i.i189 = shl i32 %99, 2
  %and29.i.i190 = and i32 %shl28.i.i189, 67108860
  %arrayidx50.i.i191 = getelementptr [6 x i32], ptr %arrayidx.i185, i32 0, i32 1
  %101 = ptrtoint ptr %arrayidx50.i.i191 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %arrayidx50.i.i191, align 4
  %or.i.i192 = or i32 %and29.i.i190, %102
  %or51.i.i193 = or i32 %or.i.i192, 67108866
  store i32 %or51.i.i193, ptr %arrayidx50.i.i191, align 4
  %103 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %__crt_ctx.i, align 4
  %mlli_sram_addr15.i = getelementptr inbounds %struct.cc_drvdata, ptr %104, i32 0, i32 4
  %105 = ptrtoint ptr %mlli_sram_addr15.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %mlli_sram_addr15.i, align 4
  %arrayidx.i.i194 = getelementptr [6 x i32], ptr %arrayidx.i185, i32 0, i32 2
  %107 = ptrtoint ptr %arrayidx.i.i194 to i32
  call void @__asan_store4_noabort(i32 %107)
  store i32 %106, ptr %arrayidx.i.i194, align 4
  %arrayidx21.i.i = getelementptr [6 x i32], ptr %arrayidx.i185, i32 0, i32 3
  %108 = ptrtoint ptr %arrayidx21.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %arrayidx21.i.i, align 4
  %or.i1.i199 = or i32 %and29.i.i190, %109
  %or22.i.i = or i32 %or.i1.i199, 1
  store i32 %or22.i.i, ptr %arrayidx21.i.i, align 4
  %inc.i200 = add i32 %93, 1
  store i32 %inc.i200, ptr %seq_len, align 4
  br label %cc_setup_mlli_desc.exit

cc_setup_mlli_desc.exit:                          ; preds = %do.end.i187, %cc_setup_state_desc.exit.cc_setup_mlli_desc.exit_crit_edge
  %110 = ptrtoint ptr %cipher_mode2.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %cipher_mode2.i, align 4
  %112 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %flow_mode.i, align 4
  %114 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %op_type, align 4
  %key_dma_addr4.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 12
  %116 = ptrtoint ptr %key_dma_addr4.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %key_dma_addr4.i, align 4
  %keylen.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 1
  %118 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %keylen.i, align 4
  %120 = zext i32 %111 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.98)
  switch i32 %111, label %do.end.i224 [
    i32 1, label %cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge
    i32 11, label %cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge336
    i32 2, label %cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge337
    i32 6, label %cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge338
    i32 0, label %cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge339
    i32 4, label %cc_setup_mlli_desc.exit.sw.bb28.i_crit_edge
    i32 13, label %cc_setup_mlli_desc.exit.sw.bb28.i_crit_edge340
  ]

cc_setup_mlli_desc.exit.sw.bb28.i_crit_edge340:   ; preds = %cc_setup_mlli_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28.i

cc_setup_mlli_desc.exit.sw.bb28.i_crit_edge:      ; preds = %cc_setup_mlli_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb28.i

cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge339:  ; preds = %cc_setup_mlli_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i209

cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge338:  ; preds = %cc_setup_mlli_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i209

cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge337:  ; preds = %cc_setup_mlli_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i209

cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge336:  ; preds = %cc_setup_mlli_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i209

cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge:     ; preds = %cc_setup_mlli_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i209

sw.bb.i209:                                       ; preds = %cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge, %cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge336, %cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge337, %cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge338, %cc_setup_mlli_desc.exit.sw.bb.i209_crit_edge339
  %121 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %seq_len, align 4
  %arrayidx.i204 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %122
  %123 = call ptr @memset(ptr %arrayidx.i204, i32 0, i32 24)
  %shl.i.i205 = shl nuw nsw i32 %111, 10
  %and9.i.i206 = and i32 %shl.i.i205, 15360
  %arrayidx.i.i207 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %122, i32 0, i32 0, i32 4
  %124 = ptrtoint ptr %arrayidx.i.i207 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %arrayidx.i.i207, align 4
  %or.i.i208 = or i32 %125, %and9.i.i206
  %shl.i5.i = shl i32 %115, 17
  %and9.i6.i = and i32 %shl.i5.i, 393216
  %or.i8.i = or i32 %or.i.i208, %and9.i6.i
  store i32 %or.i8.i, ptr %arrayidx.i.i207, align 4
  %126 = ptrtoint ptr %key_type to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %key_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %127)
  %cmp.i210 = icmp eq i32 %127, 2
  br i1 %cmp.i210, label %set_key_size_aes.exit.i, label %if.else.i

set_key_size_aes.exit.i:                          ; preds = %sw.bb.i209
  %128 = shl i32 %119, 19
  %129 = add i32 %128, 8388608
  %and9.i.i.i = and i32 %129, 12582912
  %or.i.i.i = or i32 %or.i8.i, %and9.i.i.i
  %130 = ptrtoint ptr %arrayidx.i.i207 to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 %or.i.i.i, ptr %arrayidx.i.i207, align 4
  %131 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 16
  %132 = ptrtoint ptr %131 to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %131, align 4
  %134 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %arrayidx.i204, align 4
  %or.i9.i = or i32 %135, -16711936
  store i32 %or.i9.i, ptr %arrayidx.i204, align 4
  %arrayidx9.i.i = getelementptr [6 x i32], ptr %arrayidx.i204, i32 0, i32 1
  %136 = ptrtoint ptr %arrayidx9.i.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %arrayidx9.i.i, align 4
  %or23.i.i = or i32 %137, 603718652
  store i32 %or23.i.i, ptr %arrayidx9.i.i, align 4
  %conv35.i.i = zext i8 %133 to i32
  %shl.i12.i = shl nuw i32 %conv35.i.i, 24
  %and36.i.i = and i32 %shl.i12.i, 251658240
  %arrayidx37.i.i = getelementptr [6 x i32], ptr %arrayidx.i204, i32 0, i32 4
  %138 = ptrtoint ptr %arrayidx37.i.i to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %arrayidx37.i.i, align 4
  %or38.i.i = or i32 %139, %and36.i.i
  store i32 %or38.i.i, ptr %arrayidx37.i.i, align 4
  %140 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %flow_mode.i, align 4
  %142 = zext i32 %141 to i64
  call void @__sanitizer_cov_trace_switch(i64 %142, ptr @__sancov_gen_cov_switch_values.99)
  switch i32 %141, label %sw.default.i.i [
    i32 32, label %set_key_size_aes.exit.i.set_flow_mode.exit.i_crit_edge
    i32 34, label %sw.bb1.i.i
    i32 36, label %sw.bb2.i.i
  ]

set_key_size_aes.exit.i.set_flow_mode.exit.i_crit_edge: ; preds = %set_key_size_aes.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_flow_mode.exit.i

sw.bb1.i.i:                                       ; preds = %set_key_size_aes.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_flow_mode.exit.i

sw.bb2.i.i:                                       ; preds = %set_key_size_aes.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_flow_mode.exit.i

sw.default.i.i:                                   ; preds = %set_key_size_aes.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_flow_mode.exit.i

if.else.i:                                        ; preds = %sw.bb.i209
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %113)
  %cmp11.i = icmp eq i32 %113, 32
  br i1 %cmp11.i, label %if.then12.i, label %if.else21.i

if.then12.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %127)
  %cmp14.i = icmp eq i32 %127, 1
  br i1 %cmp14.i, label %set_hw_crypto_key.exit.i, label %if.else17.i

set_hw_crypto_key.exit.i:                         ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  %143 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 16
  %144 = ptrtoint ptr %143 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %143, align 4
  %and.i.i = shl i32 %145, 15
  %shl.i15.i = and i32 %and.i.i, 98304
  %146 = shl i32 %145, 18
  %and33.i.i = and i32 %146, 3145728
  %or.i16.i212 = or i32 %shl.i15.i, %or.i8.i
  %or34.i.i = or i32 %or.i16.i212, %and33.i.i
  %147 = ptrtoint ptr %arrayidx.i.i207 to i32
  call void @__asan_store4_noabort(i32 %147)
  store i32 %or34.i.i, ptr %arrayidx.i.i207, align 4
  br label %if.end24.i

if.else17.i:                                      ; preds = %if.then12.i
  call void @__sanitizer_cov_trace_pc() #9
  %148 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %117, ptr %arrayidx.i204, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %119)
  %cmp18.i = icmp eq i32 %119, 24
  %.op = shl i32 %119, 2
  %.op.op = and i32 %.op, 67108860
  %and29.i.i216 = select i1 %cmp18.i, i32 128, i32 %.op.op
  %arrayidx50.i.i217 = getelementptr [6 x i32], ptr %arrayidx.i204, i32 0, i32 1
  %149 = ptrtoint ptr %arrayidx50.i.i217 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %arrayidx50.i.i217, align 4
  %or.i18.i = or i32 %and29.i.i216, %150
  %or51.i.i218 = or i32 %or.i18.i, 67108866
  store i32 %or51.i.i218, ptr %arrayidx50.i.i217, align 4
  br label %if.end24.i

if.else21.i:                                      ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %151 = ptrtoint ptr %arrayidx.i204 to i32
  call void @__asan_store4_noabort(i32 %151)
  store i32 %117, ptr %arrayidx.i204, align 4
  %shl28.i30.i = shl i32 %119, 2
  %and29.i31.i = and i32 %shl28.i30.i, 67108860
  %arrayidx50.i32.i = getelementptr [6 x i32], ptr %arrayidx.i204, i32 0, i32 1
  %152 = ptrtoint ptr %arrayidx50.i32.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load i32, ptr %arrayidx50.i32.i, align 4
  %or.i33.i = or i32 %and29.i31.i, %153
  %or51.i35.i = or i32 %or.i33.i, 67108866
  store i32 %or51.i35.i, ptr %arrayidx50.i32.i, align 4
  br label %if.end24.i

if.end24.i:                                       ; preds = %if.else21.i, %if.else17.i, %set_hw_crypto_key.exit.i
  %.sink = phi i32 [ -1, %if.else21.i ], [ -2, %if.else17.i ], [ -2, %set_hw_crypto_key.exit.i ]
  %shr.i19.i = lshr i32 %119, 3
  %sub.i20.i = add nsw i32 %shr.i19.i, %.sink
  %shl.i.i41.i = shl i32 %sub.i20.i, 22
  %and9.i.i42.i = and i32 %shl.i.i41.i, 12582912
  %154 = ptrtoint ptr %arrayidx.i.i207 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %arrayidx.i.i207, align 4
  %or.i.i44.i = or i32 %155, %and9.i.i42.i
  %or.i46.i = or i32 %or.i.i44.i, 67108864
  store i32 %or.i46.i, ptr %arrayidx.i.i207, align 4
  br label %set_flow_mode.exit.i

set_flow_mode.exit.i:                             ; preds = %if.end24.i, %sw.default.i.i, %sw.bb2.i.i, %sw.bb1.i.i, %set_key_size_aes.exit.i.set_flow_mode.exit.i_crit_edge
  %flow_mode.0.i = phi i32 [ %113, %if.end24.i ], [ %141, %sw.default.i.i ], [ 16, %sw.bb2.i.i ], [ 4, %sw.bb1.i.i ], [ 1, %set_key_size_aes.exit.i.set_flow_mode.exit.i_crit_edge ]
  %and9.i49.i = and i32 %flow_mode.0.i, 63
  %156 = ptrtoint ptr %arrayidx.i.i207 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load i32, ptr %arrayidx.i.i207, align 4
  %or.i51.i = or i32 %157, %and9.i49.i
  store i32 %or.i51.i, ptr %arrayidx.i.i207, align 4
  %inc.i220 = add i32 %122, 1
  %158 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 %inc.i220, ptr %seq_len, align 4
  br label %cc_setup_key_desc.exit

sw.bb28.i:                                        ; preds = %cc_setup_mlli_desc.exit.sw.bb28.i_crit_edge, %cc_setup_mlli_desc.exit.sw.bb28.i_crit_edge340
  %159 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %seq_len, align 4
  %arrayidx29.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %160
  %161 = call ptr @memset(ptr %arrayidx29.i, i32 0, i32 24)
  %shl.i54.i = shl nuw nsw i32 %111, 10
  %and9.i55.i = and i32 %shl.i54.i, 15360
  %arrayidx.i56.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %160, i32 0, i32 0, i32 4
  %162 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %arrayidx.i56.i, align 4
  %or.i57.i = or i32 %163, %and9.i55.i
  %shl.i61.i = shl i32 %115, 17
  %and9.i62.i = and i32 %shl.i61.i, 393216
  %or.i64.i = or i32 %or.i57.i, %and9.i62.i
  store i32 %or.i64.i, ptr %arrayidx.i56.i, align 4
  %164 = ptrtoint ptr %key_type to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %key_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %165)
  %cmp33.i = icmp eq i32 %165, 1
  br i1 %cmp33.i, label %set_hw_crypto_key.exit77.i, label %if.else37.i

set_hw_crypto_key.exit77.i:                       ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #9
  %166 = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 16
  %167 = ptrtoint ptr %166 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %166, align 4
  %and.i70.i = shl i32 %168, 15
  %shl.i71.i = and i32 %and.i70.i, 98304
  %169 = shl i32 %168, 18
  %and33.i73.i = and i32 %169, 3145728
  %or.i74.i = or i32 %shl.i71.i, %or.i64.i
  %or34.i76.i = or i32 %or.i74.i, %and33.i73.i
  %170 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 %or34.i76.i, ptr %arrayidx.i56.i, align 4
  br label %set_key_size_aes.exit95.i

if.else37.i:                                      ; preds = %sw.bb28.i
  call void @__sanitizer_cov_trace_pc() #9
  %171 = ptrtoint ptr %arrayidx29.i to i32
  call void @__asan_store4_noabort(i32 %171)
  store i32 %117, ptr %arrayidx29.i, align 4
  %172 = shl i32 %119, 1
  %and29.i81.i = and i32 %172, 67108860
  %arrayidx50.i82.i = getelementptr [6 x i32], ptr %arrayidx29.i, i32 0, i32 1
  %173 = ptrtoint ptr %arrayidx50.i82.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %arrayidx50.i82.i, align 4
  %or.i83.i = or i32 %and29.i81.i, %174
  %or51.i85.i = or i32 %or.i83.i, 67108866
  store i32 %or51.i85.i, ptr %arrayidx50.i82.i, align 4
  br label %set_key_size_aes.exit95.i

set_key_size_aes.exit95.i:                        ; preds = %if.else37.i, %set_hw_crypto_key.exit77.i
  %175 = shl i32 %119, 18
  %176 = add i32 %175, 8388608
  %and9.i.i92.i = and i32 %176, 12582912
  %177 = ptrtoint ptr %arrayidx.i56.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %arrayidx.i56.i, align 4
  %or.i.i94.i = or i32 %178, %and9.i.i92.i
  %and9.i98.i = and i32 %113, 63
  %or.i100.i = or i32 %and9.i98.i, %or.i.i94.i
  %or.i103.i = or i32 %or.i100.i, 67108864
  store i32 %or.i103.i, ptr %arrayidx.i56.i, align 4
  %inc44.i = add i32 %160, 1
  %179 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %179)
  store i32 %inc44.i, ptr %seq_len, align 4
  br label %cc_setup_key_desc.exit

do.end.i224:                                      ; preds = %cc_setup_mlli_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %180 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %__crt_ctx.i, align 4
  %plat_dev.i.i222 = getelementptr inbounds %struct.cc_drvdata, ptr %181, i32 0, i32 3
  %182 = ptrtoint ptr %plat_dev.i.i222 to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %plat_dev.i.i222, align 4
  %dev.i.i223 = getelementptr inbounds %struct.platform_device, ptr %183, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i223, ptr noundef nonnull @.str.48, i32 noundef %111) #10
  br label %cc_setup_key_desc.exit

cc_setup_key_desc.exit:                           ; preds = %do.end.i224, %set_key_size_aes.exit95.i, %set_flow_mode.exit.i
  %184 = ptrtoint ptr %cipher_mode2.i to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %cipher_mode2.i, align 4
  %186 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %flow_mode.i, align 4
  %188 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load i32, ptr %op_type, align 4
  %190 = ptrtoint ptr %key_dma_addr4.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load i32, ptr %key_dma_addr4.i, align 4
  %192 = ptrtoint ptr %keylen.i to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load i32, ptr %keylen.i, align 4
  %div.i = sdiv i32 %193, 2
  %194 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %__ctx.i, align 4
  %196 = zext i32 %185 to i64
  call void @__sanitizer_cov_trace_switch(i64 %196, ptr @__sancov_gen_cov_switch_values.100)
  switch i32 %185, label %do.end.i281 [
    i32 0, label %cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge
    i32 1, label %cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge341
    i32 11, label %cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge342
    i32 2, label %cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge343
    i32 6, label %cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge344
    i32 13, label %if.then.i230
    i32 4, label %cc_setup_key_desc.exit.set_cipher_mode.exit.i236_crit_edge
  ]

cc_setup_key_desc.exit.set_cipher_mode.exit.i236_crit_edge: ; preds = %cc_setup_key_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_cipher_mode.exit.i236

cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge344: ; preds = %cc_setup_key_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_setup_xex_state_desc.exit

cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge343: ; preds = %cc_setup_key_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_setup_xex_state_desc.exit

cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge342: ; preds = %cc_setup_key_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_setup_xex_state_desc.exit

cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge341: ; preds = %cc_setup_key_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_setup_xex_state_desc.exit

cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge: ; preds = %cc_setup_key_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_setup_xex_state_desc.exit

if.then.i230:                                     ; preds = %cc_setup_key_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_cipher_mode.exit.i236

set_cipher_mode.exit.i236:                        ; preds = %if.then.i230, %cc_setup_key_desc.exit.set_cipher_mode.exit.i236_crit_edge
  %key_len.0.i = phi i32 [ 32, %if.then.i230 ], [ %div.i, %cc_setup_key_desc.exit.set_cipher_mode.exit.i236_crit_edge ]
  %197 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %seq_len, align 4
  %arrayidx.i231 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %198
  %199 = call ptr @memset(ptr %arrayidx.i231, i32 0, i32 24)
  %shl.i.i232 = shl nuw nsw i32 %185, 10
  %and9.i.i233 = and i32 %shl.i.i232, 15360
  %arrayidx.i.i234 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %198, i32 0, i32 0, i32 4
  %200 = ptrtoint ptr %arrayidx.i.i234 to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load i32, ptr %arrayidx.i.i234, align 4
  %or.i.i235 = or i32 %201, %and9.i.i233
  %shl.i3.i = shl i32 %189, 17
  %and9.i4.i237 = and i32 %shl.i3.i, 393216
  %or.i6.i239 = or i32 %or.i.i235, %and9.i4.i237
  store i32 %or.i6.i239, ptr %arrayidx.i.i234, align 4
  %202 = ptrtoint ptr %key_type to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load i32, ptr %key_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %203)
  %cmp11.i241 = icmp eq i32 %203, 1
  br i1 %cmp11.i241, label %set_hw_crypto_key.exit.i252, label %if.else.i254

set_hw_crypto_key.exit.i252:                      ; preds = %set_cipher_mode.exit.i236
  call void @__sanitizer_cov_trace_pc() #9
  %key2_slot.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 1, i32 4, i32 20
  %204 = ptrtoint ptr %key2_slot.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %key2_slot.i, align 4
  %and.i.i247 = shl i32 %205, 15
  %shl.i7.i = and i32 %and.i.i247, 98304
  %206 = shl i32 %205, 18
  %and33.i.i249 = and i32 %206, 3145728
  %or.i8.i250 = or i32 %shl.i7.i, %or.i6.i239
  %or34.i.i251 = or i32 %or.i8.i250, %and33.i.i249
  %207 = ptrtoint ptr %arrayidx.i.i234 to i32
  call void @__asan_store4_noabort(i32 %207)
  store i32 %or34.i.i251, ptr %arrayidx.i.i234, align 4
  br label %if.end15.i

if.else.i254:                                     ; preds = %set_cipher_mode.exit.i236
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %div.i, %191
  %208 = ptrtoint ptr %arrayidx.i231 to i32
  call void @__asan_store4_noabort(i32 %208)
  store i32 %add.i, ptr %arrayidx.i231, align 4
  %shl28.i.i256 = shl i32 %key_len.0.i, 2
  %and29.i.i257 = and i32 %shl28.i.i256, 67108860
  %arrayidx50.i.i258 = getelementptr [6 x i32], ptr %arrayidx.i231, i32 0, i32 1
  %209 = ptrtoint ptr %arrayidx50.i.i258 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %arrayidx50.i.i258, align 4
  %or.i10.i = or i32 %and29.i.i257, %210
  %or51.i.i259 = or i32 %or.i10.i, 67108866
  store i32 %or51.i.i259, ptr %arrayidx50.i.i258, align 4
  br label %if.end15.i

if.end15.i:                                       ; preds = %if.else.i254, %set_hw_crypto_key.exit.i252
  %arrayidx.i11.i261 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %198, i32 0, i32 0, i32 2
  %211 = ptrtoint ptr %arrayidx.i11.i261 to i32
  call void @__asan_store4_noabort(i32 %211)
  store i32 %11, ptr %arrayidx.i11.i261, align 4
  %212 = ptrtoint ptr %arrayidx.i.i234 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load i32, ptr %arrayidx.i.i234, align 4
  %or.i13.i = or i32 %213, 33
  %214 = shl i32 %key_len.0.i, 19
  %215 = add i32 %214, 8388608
  %and9.i.i.i267 = and i32 %215, 12582912
  %or.i.i.i269 = or i32 %and9.i.i.i267, %or.i13.i
  %or.i16.i271 = or i32 %or.i.i.i269, 83886080
  store i32 %or.i16.i271, ptr %arrayidx.i.i234, align 4
  %inc.i272 = add i32 %198, 1
  %arrayidx20.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i272
  %216 = call ptr @memset(ptr %arrayidx20.i, i32 0, i32 24)
  %arrayidx.i17.i273 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %inc.i272, i32 0, i32 0, i32 4
  %217 = ptrtoint ptr %arrayidx.i17.i273 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %arrayidx.i17.i273, align 4
  %or.i18.i274 = or i32 %and9.i.i233, %and9.i4.i237
  %or.i24.i = or i32 %or.i18.i274, %and9.i.i.i267
  %or.i31.i = or i32 %or.i24.i, %218
  %and9.i44.i = and i32 %187, 63
  %or.i.i40.i = or i32 %or.i31.i, %and9.i44.i
  %or.i46.i276 = or i32 %or.i.i40.i, 33554432
  store i32 %or.i46.i276, ptr %arrayidx.i17.i273, align 4
  %219 = ptrtoint ptr %arrayidx20.i to i32
  call void @__asan_store4_noabort(i32 %219)
  store i32 %195, ptr %arrayidx20.i, align 4
  %arrayidx50.i47.i = getelementptr [6 x i32], ptr %arrayidx20.i, i32 0, i32 1
  %220 = ptrtoint ptr %arrayidx50.i47.i to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load i32, ptr %arrayidx50.i47.i, align 4
  %or51.i49.i = or i32 %221, 67108930
  store i32 %or51.i49.i, ptr %arrayidx50.i47.i, align 4
  %inc27.i = add i32 %198, 2
  %222 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %222)
  store i32 %inc27.i, ptr %seq_len, align 4
  br label %cc_setup_xex_state_desc.exit

do.end.i281:                                      ; preds = %cc_setup_key_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %223 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load ptr, ptr %__crt_ctx.i, align 4
  %plat_dev.i.i279 = getelementptr inbounds %struct.cc_drvdata, ptr %224, i32 0, i32 3
  %225 = ptrtoint ptr %plat_dev.i.i279 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %plat_dev.i.i279, align 4
  %dev.i.i280 = getelementptr inbounds %struct.platform_device, ptr %226, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i280, ptr noundef nonnull @.str.48, i32 noundef %185) #10
  br label %cc_setup_xex_state_desc.exit

cc_setup_xex_state_desc.exit:                     ; preds = %do.end.i281, %if.end15.i, %cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge, %cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge341, %cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge342, %cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge343, %cc_setup_key_desc.exit.cc_setup_xex_state_desc.exit_crit_edge344
  call fastcc void @cc_setup_flow_desc(ptr noundef %1, ptr noundef %__ctx.i, ptr noundef %7, ptr noundef %9, i32 noundef %11, ptr noundef nonnull %desc, ptr noundef nonnull %seq_len)
  %227 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %__crt_ctx.i, align 4
  %plat_dev.i.i283 = getelementptr inbounds %struct.cc_drvdata, ptr %228, i32 0, i32 3
  %229 = ptrtoint ptr %plat_dev.i.i283 to i32
  call void @__asan_load4_noabort(i32 %229)
  %230 = load ptr, ptr %plat_dev.i.i283, align 4
  %dev.i.i284 = getelementptr inbounds %struct.platform_device, ptr %230, i32 0, i32 3
  %231 = ptrtoint ptr %cipher_mode2.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load i32, ptr %cipher_mode2.i, align 4
  %233 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load i32, ptr %flow_mode.i, align 4
  %235 = zext i32 %234 to i64
  call void @__sanitizer_cov_trace_switch(i64 %235, ptr @__sancov_gen_cov_switch_values.101)
  switch i32 %234, label %sw.default.i.i288 [
    i32 32, label %cc_setup_xex_state_desc.exit.cc_out_setup_mode.exit.i_crit_edge
    i32 34, label %sw.bb1.i.i286
    i32 36, label %sw.bb2.i.i287
  ]

cc_setup_xex_state_desc.exit.cc_out_setup_mode.exit.i_crit_edge: ; preds = %cc_setup_xex_state_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_out_setup_mode.exit.i

sw.bb1.i.i286:                                    ; preds = %cc_setup_xex_state_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_out_setup_mode.exit.i

sw.bb2.i.i287:                                    ; preds = %cc_setup_xex_state_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_out_setup_mode.exit.i

sw.default.i.i288:                                ; preds = %cc_setup_xex_state_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = and i32 %234, 63
  br label %cc_out_setup_mode.exit.i

cc_out_setup_mode.exit.i:                         ; preds = %sw.default.i.i288, %sw.bb2.i.i287, %sw.bb1.i.i286, %cc_setup_xex_state_desc.exit.cc_out_setup_mode.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %phi.bo, %sw.default.i.i288 ], [ 40, %sw.bb2.i.i287 ], [ 42, %sw.bb1.i.i286 ], [ 38, %cc_setup_xex_state_desc.exit.cc_out_setup_mode.exit.i_crit_edge ]
  %236 = ptrtoint ptr %op_type to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %op_type, align 4
  %238 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %238)
  %239 = load i32, ptr %__ctx.i, align 4
  %240 = ptrtoint ptr %key_type to i32
  call void @__asan_load4_noabort(i32 %240)
  %241 = load i32, ptr %key_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %241)
  %cmp.i290 = icmp eq i32 %241, 2
  br i1 %cmp.i290, label %cc_out_setup_mode.exit.i.cc_setup_readiv_desc.exit_crit_edge, label %if.end.i291

cc_out_setup_mode.exit.i.cc_setup_readiv_desc.exit_crit_edge: ; preds = %cc_out_setup_mode.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_setup_readiv_desc.exit

if.end.i291:                                      ; preds = %cc_out_setup_mode.exit.i
  %242 = zext i32 %232 to i64
  call void @__sanitizer_cov_trace_switch(i64 %242, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %232, label %do.end.i314 [
    i32 0, label %if.end.i291.cc_setup_readiv_desc.exit_crit_edge
    i32 1, label %if.end.i291.sw.bb.i295_crit_edge
    i32 11, label %if.end.i291.sw.bb.i295_crit_edge345
    i32 2, label %if.end.i291.sw.bb.i295_crit_edge346
    i32 6, label %if.end.i291.sw.bb.i295_crit_edge347
    i32 4, label %if.end.i291.sw.bb18.i_crit_edge
    i32 13, label %if.end.i291.sw.bb18.i_crit_edge348
  ]

if.end.i291.sw.bb18.i_crit_edge348:               ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18.i

if.end.i291.sw.bb18.i_crit_edge:                  ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb18.i

if.end.i291.sw.bb.i295_crit_edge347:              ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i295

if.end.i291.sw.bb.i295_crit_edge346:              ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i295

if.end.i291.sw.bb.i295_crit_edge345:              ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i295

if.end.i291.sw.bb.i295_crit_edge:                 ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.bb.i295

if.end.i291.cc_setup_readiv_desc.exit_crit_edge:  ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_setup_readiv_desc.exit

sw.bb.i295:                                       ; preds = %if.end.i291.sw.bb.i295_crit_edge, %if.end.i291.sw.bb.i295_crit_edge345, %if.end.i291.sw.bb.i295_crit_edge346, %if.end.i291.sw.bb.i295_crit_edge347
  %243 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load i32, ptr %seq_len, align 4
  %arrayidx.i292 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %244
  %245 = call ptr @memset(ptr %arrayidx.i292, i32 0, i32 24)
  %arrayidx.i.i.i294 = getelementptr [6 x i32], ptr %arrayidx.i292, i32 0, i32 2
  %246 = ptrtoint ptr %arrayidx.i.i.i294 to i32
  call void @__asan_store4_noabort(i32 %246)
  store i32 %239, ptr %arrayidx.i.i.i294, align 4
  %shl28.i.i.i = shl i32 %5, 2
  %and29.i.i.i = and i32 %shl28.i.i.i, 67108860
  %arrayidx50.i.i.i = getelementptr [6 x i32], ptr %arrayidx.i292, i32 0, i32 3
  %247 = ptrtoint ptr %arrayidx50.i.i.i to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load i32, ptr %arrayidx50.i.i.i, align 4
  %or.i.i.i296 = or i32 %and29.i.i.i, %248
  %or.i.i297 = or i32 %or.i.i.i296, 201326594
  store i32 %or.i.i297, ptr %arrayidx50.i.i.i, align 4
  %shl.i.i300 = shl i32 %237, 17
  %and9.i.i301 = and i32 %shl.i.i300, 393216
  %arrayidx.i.i302 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %244, i32 0, i32 0, i32 4
  %249 = ptrtoint ptr %arrayidx.i.i302 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load i32, ptr %arrayidx.i.i302, align 4
  %or.i77.i = or i32 %250, %and9.i.i301
  store i32 %or.i77.i, ptr %arrayidx.i.i302, align 4
  %shl.i85.i = shl nuw nsw i32 %232, 10
  %and9.i86.i = and i32 %shl.i85.i, 15360
  %251 = add nsw i32 %232, -2
  %switch.and.i304 = and i32 %251, -5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %switch.and.i304)
  %switch.selectcmp.i305 = icmp eq i32 %switch.and.i304, 0
  %252 = select i1 %switch.selectcmp.i305, i32 150994944, i32 134217728
  %or.i82.i = or i32 %252, %and9.i86.i
  %or.i88.i = or i32 %or.i82.i, %retval.0.i.i
  %or.i92.i = or i32 %or.i88.i, %or.i77.i
  %253 = ptrtoint ptr %arrayidx.i.i302 to i32
  call void @__asan_store4_noabort(i32 %253)
  store i32 %or.i92.i, ptr %arrayidx.i.i302, align 4
  %254 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %__crt_ctx.i, align 4
  %hw_rev.i.i = getelementptr inbounds %struct.cc_drvdata, ptr %255, i32 0, i32 16
  %256 = ptrtoint ptr %hw_rev.i.i to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %hw_rev.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %257)
  %cmp.i.i = icmp ugt i32 %257, 711
  br i1 %cmp.i.i, label %if.then.i95.i, label %sw.bb.i295.set_queue_last_ind.exit.i_crit_edge

sw.bb.i295.set_queue_last_ind.exit.i_crit_edge:   ; preds = %sw.bb.i295
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_queue_last_ind.exit.i

if.then.i95.i:                                    ; preds = %sw.bb.i295
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i93.i307 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %244, i32 0, i32 0, i32 3
  %258 = ptrtoint ptr %arrayidx.i.i93.i307 to i32
  call void @__asan_load4_noabort(i32 %258)
  %259 = load i32, ptr %arrayidx.i.i93.i307, align 4
  %or.i.i94.i308 = or i32 %259, -2147483648
  store i32 %or.i.i94.i308, ptr %arrayidx.i.i93.i307, align 4
  br label %set_queue_last_ind.exit.i

set_queue_last_ind.exit.i:                        ; preds = %if.then.i95.i, %sw.bb.i295.set_queue_last_ind.exit.i_crit_edge
  %inc.i309 = add i32 %244, 1
  %260 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %260)
  store i32 %inc.i309, ptr %seq_len, align 4
  br label %cc_setup_readiv_desc.exit

sw.bb18.i:                                        ; preds = %if.end.i291.sw.bb18.i_crit_edge, %if.end.i291.sw.bb18.i_crit_edge348
  %261 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load i32, ptr %seq_len, align 4
  %arrayidx19.i310 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %262
  %263 = call ptr @memset(ptr %arrayidx19.i310, i32 0, i32 24)
  %arrayidx.i96.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %262, i32 0, i32 0, i32 4
  %264 = ptrtoint ptr %arrayidx.i96.i to i32
  call void @__asan_load4_noabort(i32 %264)
  %265 = load i32, ptr %arrayidx.i96.i, align 4
  %shl.i100.i = shl nuw nsw i32 %232, 10
  %and9.i101.i = and i32 %shl.i100.i, 15360
  %or.i97.i = or i32 %and9.i101.i, %265
  %shl.i107.i = shl i32 %237, 17
  %and9.i108.i = and i32 %shl.i107.i, 393216
  %or.i103.i312 = or i32 %or.i97.i, %and9.i108.i
  %or.i110.i = or i32 %or.i103.i312, %retval.0.i.i
  %or.i116.i = or i32 %or.i110.i, 150994944
  store i32 %or.i116.i, ptr %arrayidx.i96.i, align 4
  %arrayidx.i.i118.i = getelementptr [6 x i32], ptr %arrayidx19.i310, i32 0, i32 2
  %266 = ptrtoint ptr %arrayidx.i.i118.i to i32
  call void @__asan_store4_noabort(i32 %266)
  store i32 %239, ptr %arrayidx.i.i118.i, align 4
  %arrayidx50.i.i119.i = getelementptr [6 x i32], ptr %arrayidx19.i310, i32 0, i32 3
  %267 = ptrtoint ptr %arrayidx50.i.i119.i to i32
  call void @__asan_load4_noabort(i32 %267)
  %268 = load i32, ptr %arrayidx50.i.i119.i, align 4
  %or.i122.i = or i32 %268, 201326658
  store i32 %or.i122.i, ptr %arrayidx50.i.i119.i, align 4
  %269 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %269)
  %270 = load ptr, ptr %__crt_ctx.i, align 4
  %hw_rev.i123.i = getelementptr inbounds %struct.cc_drvdata, ptr %270, i32 0, i32 16
  %271 = ptrtoint ptr %hw_rev.i123.i to i32
  call void @__asan_load4_noabort(i32 %271)
  %272 = load i32, ptr %hw_rev.i123.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %272)
  %cmp.i124.i = icmp ugt i32 %272, 711
  br i1 %cmp.i124.i, label %if.then.i127.i, label %sw.bb18.i.set_queue_last_ind.exit128.i_crit_edge

sw.bb18.i.set_queue_last_ind.exit128.i_crit_edge: ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %set_queue_last_ind.exit128.i

if.then.i127.i:                                   ; preds = %sw.bb18.i
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx.i.i125.i = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %262, i32 0, i32 0, i32 3
  %273 = ptrtoint ptr %arrayidx.i.i125.i to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load i32, ptr %arrayidx.i.i125.i, align 4
  %or.i.i126.i = or i32 %274, -2147483648
  store i32 %or.i.i126.i, ptr %arrayidx.i.i125.i, align 4
  br label %set_queue_last_ind.exit128.i

set_queue_last_ind.exit128.i:                     ; preds = %if.then.i127.i, %sw.bb18.i.set_queue_last_ind.exit128.i_crit_edge
  %inc27.i313 = add i32 %262, 1
  %275 = ptrtoint ptr %seq_len to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 %inc27.i313, ptr %seq_len, align 4
  br label %cc_setup_readiv_desc.exit

do.end.i314:                                      ; preds = %if.end.i291
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i.i284, ptr noundef nonnull @.str.48, i32 noundef %232) #10
  br label %cc_setup_readiv_desc.exit

cc_setup_readiv_desc.exit:                        ; preds = %do.end.i314, %set_queue_last_ind.exit128.i, %set_queue_last_ind.exit.i, %if.end.i291.cc_setup_readiv_desc.exit_crit_edge, %cc_out_setup_mode.exit.i.cc_setup_readiv_desc.exit_crit_edge
  %276 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %__crt_ctx.i, align 4
  %278 = ptrtoint ptr %seq_len to i32
  call void @__asan_load4_noabort(i32 %278)
  %279 = load i32, ptr %seq_len, align 4
  %call74 = call i32 @cc_send_request(ptr noundef %277, ptr noundef nonnull %cc_req, ptr noundef nonnull %desc, i32 noundef %279, ptr noundef %base) #7
  %280 = zext i32 %call74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %280, ptr @__sancov_gen_cov_switch_values.103)
  switch i32 %call74, label %if.then77 [
    i32 -115, label %cc_setup_readiv_desc.exit.cleanup85_crit_edge
    i32 -16, label %exit_process.fold.split
  ]

cc_setup_readiv_desc.exit.cleanup85_crit_edge:    ; preds = %cc_setup_readiv_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

if.then77:                                        ; preds = %cc_setup_readiv_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void @cc_unmap_cipher_request(ptr noundef %dev.i, ptr noundef %__ctx.i, i32 noundef %5, ptr noundef %9, ptr noundef %7) #7
  br label %exit_process

exit_process.fold.split:                          ; preds = %cc_setup_readiv_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

exit_process:                                     ; preds = %if.then77, %do.end64, %do.body16
  %rc.0 = phi i32 [ %call59, %do.end64 ], [ %call74, %if.then77 ], [ -22, %do.body16 ]
  %281 = zext i32 %rc.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %281, ptr @__sancov_gen_cov_switch_values.104)
  switch i32 %rc.0, label %exit_process.if.then82_crit_edge [
    i32 -115, label %exit_process.cleanup85_crit_edge
    i32 -16, label %exit_process.cleanup85_crit_edge349
  ]

exit_process.cleanup85_crit_edge349:              ; preds = %exit_process
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

exit_process.cleanup85_crit_edge:                 ; preds = %exit_process
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup85

exit_process.if.then82_crit_edge:                 ; preds = %exit_process
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then82

if.then82:                                        ; preds = %exit_process.if.then82_crit_edge, %if.end43.if.then82_crit_edge, %if.end32.if.then82_crit_edge, %if.then28
  %rc.0321 = phi i32 [ %rc.0, %exit_process.if.then82_crit_edge ], [ -12, %if.end43.if.then82_crit_edge ], [ 0, %if.end32.if.then82_crit_edge ], [ -22, %if.then28 ]
  %iv83 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 3
  %282 = ptrtoint ptr %iv83 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %iv83, align 4
  call void @kfree_sensitive(ptr noundef %283) #7
  br label %cleanup85

cleanup85:                                        ; preds = %if.then82, %exit_process.cleanup85_crit_edge, %exit_process.cleanup85_crit_edge349, %exit_process.fold.split, %cc_setup_readiv_desc.exit.cleanup85_crit_edge, %if.else, %if.then40
  %retval.1 = phi i32 [ %call41, %if.then40 ], [ %call42, %if.else ], [ %rc.0, %exit_process.cleanup85_crit_edge ], [ %rc.0, %exit_process.cleanup85_crit_edge349 ], [ %rc.0321, %if.then82 ], [ -16, %exit_process.fold.split ], [ %call74, %cc_setup_readiv_desc.exit.cleanup85_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %seq_len) #7
  call void @llvm.lifetime.end.p0(i64 76, ptr nonnull %cc_req) #7
  call void @llvm.lifetime.end.p0(i64 144, ptr nonnull %desc) #7
  ret i32 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc_cipher_complete(ptr noundef %dev, ptr noundef %cc_req, i32 noundef %err) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %err)
  %cmp.not = icmp eq i32 %err, -115
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %cc_req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %3, i32 -100
  %4 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ivsize.i, align 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %cc_req, i32 0, i32 6
  %src2 = getelementptr inbounds %struct.skcipher_request, ptr %cc_req, i32 0, i32 2
  %6 = ptrtoint ptr %src2 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src2, align 8
  %dst1 = getelementptr inbounds %struct.skcipher_request, ptr %cc_req, i32 0, i32 3
  %8 = ptrtoint ptr %dst1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dst1, align 4
  tail call void @cc_unmap_cipher_request(ptr noundef %dev, ptr noundef %__ctx.i, i32 noundef %5, ptr noundef %7, ptr noundef %9) #7
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %cc_req, i32 0, i32 1
  %10 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %iv, align 4
  %iv5 = getelementptr inbounds %struct.skcipher_request, ptr %cc_req, i32 1, i32 4, i32 3
  %12 = ptrtoint ptr %iv5 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iv5, align 4
  %14 = call ptr @memcpy(ptr %11, ptr %13, i32 %5)
  %15 = load ptr, ptr %iv5, align 4
  tail call void @kfree_sensitive(ptr noundef %15) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base.i = getelementptr inbounds %struct.skcipher_request, ptr %cc_req, i32 0, i32 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %cc_req, i32 0, i32 4, i32 1
  %16 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %complete.i, align 8
  tail call void %17(ptr noundef %base.i, i32 noundef %err) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_map_cipher_request(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cc_setup_flow_desc(ptr nocapture noundef readonly %tfm, ptr nocapture noundef readonly %req_ctx, ptr noundef %dst, ptr noundef %src, i32 noundef %nbytes, ptr nocapture noundef %desc, ptr nocapture noundef %seq_size) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %0 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_ctx.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %flow_mode.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %4 = ptrtoint ptr %flow_mode.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flow_mode.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.105)
  switch i32 %5, label %sw.default.i [
    i32 32, label %entry.cc_out_flow_mode.exit_crit_edge
    i32 34, label %sw.bb1.i
    i32 36, label %sw.bb2.i
  ]

entry.cc_out_flow_mode.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_out_flow_mode.exit

sw.bb1.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_out_flow_mode.exit

sw.bb2.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cc_out_flow_mode.exit

sw.default.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phi.bo = and i32 %5, 63
  br label %cc_out_flow_mode.exit

cc_out_flow_mode.exit:                            ; preds = %sw.default.i, %sw.bb2.i, %sw.bb1.i, %entry.cc_out_flow_mode.exit_crit_edge
  %retval.0.i177 = phi i32 [ %phi.bo, %sw.default.i ], [ 16, %sw.bb2.i ], [ 4, %sw.bb1.i ], [ 1, %entry.cc_out_flow_mode.exit_crit_edge ]
  %key_type = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %7 = ptrtoint ptr %key_type to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %key_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %8)
  %cmp = icmp eq i32 %8, 2
  br i1 %cmp, label %cc_out_flow_mode.exit.lor.end_crit_edge, label %lor.rhs

cc_out_flow_mode.exit.lor.end_crit_edge:          ; preds = %cc_out_flow_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %lor.end

lor.rhs:                                          ; preds = %cc_out_flow_mode.exit
  call void @__sanitizer_cov_trace_pc() #9
  %cipher_mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %9 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cipher_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp3 = icmp eq i32 %10, 0
  br label %lor.end

lor.end:                                          ; preds = %lor.rhs, %cc_out_flow_mode.exit.lor.end_crit_edge
  %11 = phi i1 [ true, %cc_out_flow_mode.exit.lor.end_crit_edge ], [ %cmp3, %lor.rhs ]
  %dma_buf_type = getelementptr inbounds %struct.cipher_req_ctx, ptr %req_ctx, i32 0, i32 1
  %12 = ptrtoint ptr %dma_buf_type to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_buf_type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp4 = icmp eq i32 %13, 1
  br i1 %cmp4, label %do.body, label %if.else

do.body:                                          ; preds = %lor.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_setup_flow_desc.__UNIQUE_ID_ddebug454, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_setup_flow_desc, %if.then9)) #7
          to label %do.body10 [label %if.then9], !srcloc !195

if.then9:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %src, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_setup_flow_desc.__UNIQUE_ID_ddebug454, ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef %dma_address, i32 noundef %nbytes) #7
  br label %do.body10

do.body10:                                        ; preds = %if.then9, %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_setup_flow_desc.__UNIQUE_ID_ddebug455, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_setup_flow_desc, %if.then22)) #7
          to label %do.end26 [label %if.then22], !srcloc !195

if.then22:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #9
  %dma_address23 = getelementptr inbounds %struct.scatterlist, ptr %dst, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_setup_flow_desc.__UNIQUE_ID_ddebug455, ptr noundef %dev.i, ptr noundef nonnull @.str.55, ptr noundef %dma_address23, i32 noundef %nbytes) #7
  br label %do.end26

do.end26:                                         ; preds = %if.then22, %do.body10
  %14 = ptrtoint ptr %seq_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %seq_size, align 4
  %arrayidx = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %15
  %16 = call ptr @memset(ptr %arrayidx, i32 0, i32 24)
  %17 = load i32, ptr %seq_size, align 4
  %arrayidx27 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %17
  %dma_address28 = getelementptr inbounds %struct.scatterlist, ptr %src, i32 0, i32 3
  %18 = ptrtoint ptr %dma_address28 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_address28, align 4
  %20 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %arrayidx27, align 4
  %shl28.i = shl i32 %nbytes, 2
  %and29.i = and i32 %shl28.i, 67108860
  %arrayidx50.i = getelementptr [6 x i32], ptr %arrayidx27, i32 0, i32 1
  %21 = ptrtoint ptr %arrayidx50.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx50.i, align 4
  %or.i = or i32 %and29.i, %22
  %or51.i = or i32 %or.i, 67108866
  store i32 %or51.i, ptr %arrayidx50.i, align 4
  %23 = load i32, ptr %seq_size, align 4
  %arrayidx29 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %23
  %dma_address30 = getelementptr inbounds %struct.scatterlist, ptr %dst, i32 0, i32 3
  %24 = ptrtoint ptr %dma_address30 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_address30, align 4
  %arrayidx.i.i = getelementptr [6 x i32], ptr %arrayidx29, i32 0, i32 2
  %26 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %arrayidx.i.i, align 4
  %arrayidx50.i.i = getelementptr [6 x i32], ptr %arrayidx29, i32 0, i32 3
  %27 = ptrtoint ptr %arrayidx50.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx50.i.i, align 4
  %shl.i = select i1 %11, i32 134217728, i32 0
  %or.i.i = or i32 %and29.i, %shl.i
  %or51.i.i = or i32 %or.i.i, %28
  %or.i178 = or i32 %or51.i.i, 67108866
  store i32 %or.i178, ptr %arrayidx50.i.i, align 4
  br i1 %11, label %if.then35, label %do.end26.if.end114_crit_edge

do.end26.if.end114_crit_edge:                     ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then35:                                        ; preds = %do.end26
  %29 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %__crt_ctx.i, align 4
  %hw_rev.i = getelementptr inbounds %struct.cc_drvdata, ptr %30, i32 0, i32 16
  %31 = ptrtoint ptr %hw_rev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %hw_rev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %32)
  %cmp.i = icmp ugt i32 %32, 711
  br i1 %cmp.i, label %if.then35.if.end114.sink.split_crit_edge, label %if.then35.if.end114_crit_edge

if.then35.if.end114_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then35.if.end114.sink.split_crit_edge:         ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114.sink.split

if.else:                                          ; preds = %lor.end
  %33 = ptrtoint ptr %seq_size to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %seq_size, align 4
  %arrayidx40 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %34
  %35 = call ptr @memset(ptr %arrayidx40, i32 0, i32 24)
  %36 = load i32, ptr %seq_size, align 4
  %arrayidx41 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %36
  %37 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %__crt_ctx.i, align 4
  %mlli_sram_addr = getelementptr inbounds %struct.cc_drvdata, ptr %38, i32 0, i32 4
  %39 = ptrtoint ptr %mlli_sram_addr to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %mlli_sram_addr, align 4
  %in_mlli_nents = getelementptr inbounds %struct.cipher_req_ctx, ptr %req_ctx, i32 0, i32 3
  %41 = ptrtoint ptr %in_mlli_nents to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %in_mlli_nents, align 4
  %43 = ptrtoint ptr %arrayidx41 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %40, ptr %arrayidx41, align 4
  %shl28.i186 = shl i32 %42, 2
  %and29.i187 = and i32 %shl28.i186, 67108860
  %arrayidx50.i188 = getelementptr [6 x i32], ptr %arrayidx41, i32 0, i32 1
  %44 = ptrtoint ptr %arrayidx50.i188 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %arrayidx50.i188, align 4
  %or.i189 = or i32 %and29.i187, %45
  %or51.i191 = or i32 %or.i189, 67108867
  store i32 %or51.i191, ptr %arrayidx50.i188, align 4
  %out_nents = getelementptr inbounds %struct.cipher_req_ctx, ptr %req_ctx, i32 0, i32 4
  %46 = ptrtoint ptr %out_nents to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %out_nents, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp43 = icmp eq i32 %47, 0
  br i1 %cmp43, label %do.body45, label %do.body75

do.body45:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_setup_flow_desc.__UNIQUE_ID_ddebug456, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_setup_flow_desc, %if.then57)) #7
          to label %do.end64 [label %if.then57], !srcloc !195

if.then57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %__crt_ctx.i, align 4
  %mlli_sram_addr59 = getelementptr inbounds %struct.cc_drvdata, ptr %49, i32 0, i32 4
  %50 = ptrtoint ptr %mlli_sram_addr59 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %mlli_sram_addr59, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_setup_flow_desc.__UNIQUE_ID_ddebug456, ptr noundef %dev.i, ptr noundef nonnull @.str.56, i32 noundef %51, i32 noundef %51) #7
  br label %do.end64

do.end64:                                         ; preds = %if.then57, %do.body45
  %52 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %__crt_ctx.i, align 4
  %mlli_sram_addr67 = getelementptr inbounds %struct.cc_drvdata, ptr %53, i32 0, i32 4
  %54 = ptrtoint ptr %mlli_sram_addr67 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %mlli_sram_addr67, align 4
  br label %if.end106

do.body75:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_setup_flow_desc.__UNIQUE_ID_ddebug457, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_setup_flow_desc, %if.then87)) #7
          to label %do.end94 [label %if.then87], !srcloc !195

if.then87:                                        ; preds = %do.body75
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %__crt_ctx.i, align 4
  %mlli_sram_addr89 = getelementptr inbounds %struct.cc_drvdata, ptr %57, i32 0, i32 4
  %58 = ptrtoint ptr %mlli_sram_addr89 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %mlli_sram_addr89, align 4
  %in_nents = getelementptr inbounds %struct.cipher_req_ctx, ptr %req_ctx, i32 0, i32 2
  %60 = ptrtoint ptr %in_nents to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %in_nents, align 4
  %mul = shl i32 %61, 3
  %add = add i32 %mul, %59
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_setup_flow_desc.__UNIQUE_ID_ddebug457, ptr noundef %dev.i, ptr noundef nonnull @.str.56, i32 noundef %59, i32 noundef %add) #7
  br label %do.end94

do.end94:                                         ; preds = %if.then87, %do.body75
  %62 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %__crt_ctx.i, align 4
  %mlli_sram_addr97 = getelementptr inbounds %struct.cc_drvdata, ptr %63, i32 0, i32 4
  %64 = ptrtoint ptr %mlli_sram_addr97 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %mlli_sram_addr97, align 4
  %66 = ptrtoint ptr %in_mlli_nents to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %in_mlli_nents, align 4
  %mul99 = shl i32 %67, 3
  %add100 = add i32 %mul99, %65
  %out_mlli_nents = getelementptr inbounds %struct.cipher_req_ctx, ptr %req_ctx, i32 0, i32 5
  br label %if.end106

if.end106:                                        ; preds = %do.end94, %do.end64
  %in_mlli_nents.sink = phi ptr [ %in_mlli_nents, %do.end64 ], [ %out_mlli_nents, %do.end94 ]
  %.sink233 = phi i32 [ %55, %do.end64 ], [ %add100, %do.end94 ]
  %68 = ptrtoint ptr %seq_size to i32
  call void @__asan_load4_noabort(i32 %68)
  %.sink234 = load i32, ptr %seq_size, align 4
  %69 = ptrtoint ptr %in_mlli_nents.sink to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %in_mlli_nents.sink, align 4
  %arrayidx.i.i193 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %.sink234, i32 0, i32 0, i32 2
  %71 = ptrtoint ptr %arrayidx.i.i193 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %.sink233, ptr %arrayidx.i.i193, align 4
  %shl28.i.i206 = shl i32 %70, 2
  %and29.i.i207 = and i32 %shl28.i.i206, 67108860
  %arrayidx50.i.i208 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %.sink234, i32 0, i32 0, i32 3
  %72 = ptrtoint ptr %arrayidx50.i.i208 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %arrayidx50.i.i208, align 4
  %or.i.i210 = select i1 %11, i32 201326595, i32 67108867
  %or51.i.i211 = or i32 %or.i.i210, %and29.i.i207
  %or.i212 = or i32 %or51.i.i211, %73
  store i32 %or.i212, ptr %arrayidx50.i.i208, align 4
  br i1 %11, label %if.then108, label %if.end106.if.end114_crit_edge

if.end106.if.end114_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then108:                                       ; preds = %if.end106
  %74 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %__crt_ctx.i, align 4
  %hw_rev.i214 = getelementptr inbounds %struct.cc_drvdata, ptr %75, i32 0, i32 16
  %76 = ptrtoint ptr %hw_rev.i214 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %hw_rev.i214, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 711, i32 %77)
  %cmp.i215 = icmp ugt i32 %77, 711
  br i1 %cmp.i215, label %if.then108.if.end114.sink.split_crit_edge, label %if.then108.if.end114_crit_edge

if.then108.if.end114_crit_edge:                   ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

if.then108.if.end114.sink.split_crit_edge:        ; preds = %if.then108
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114.sink.split

if.end114.sink.split:                             ; preds = %if.then108.if.end114.sink.split_crit_edge, %if.then35.if.end114.sink.split_crit_edge
  %78 = ptrtoint ptr %seq_size to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %seq_size, align 4
  %arrayidx.i.i179 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %79, i32 0, i32 0, i32 3
  %80 = ptrtoint ptr %arrayidx.i.i179 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx.i.i179, align 4
  %or.i.i217 = or i32 %81, -2147483648
  store i32 %or.i.i217, ptr %arrayidx.i.i179, align 4
  br label %if.end114

if.end114:                                        ; preds = %if.end114.sink.split, %if.then108.if.end114_crit_edge, %if.end106.if.end114_crit_edge, %if.then35.if.end114_crit_edge, %do.end26.if.end114_crit_edge
  %82 = ptrtoint ptr %seq_size to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %seq_size, align 4
  %arrayidx.i223 = getelementptr %struct.cc_hw_desc, ptr %desc, i32 %83, i32 0, i32 0, i32 4
  %84 = ptrtoint ptr %arrayidx.i223 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %arrayidx.i223, align 4
  %or.i224 = or i32 %85, %retval.0.i177
  store i32 %or.i224, ptr %arrayidx.i223, align 4
  %storemerge.in = load i32, ptr %seq_size, align 4
  %storemerge = add i32 %storemerge.in, 1
  store i32 %storemerge, ptr %seq_size, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cc_send_request(ptr noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @cc_unmap_cipher_request(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_cpu(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_shash_tfm_digest(ptr noundef, ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cc_cipher_init(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %drvdata = getelementptr i8, ptr %1, i32 -236
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3
  %max_keysize = getelementptr i8, ptr %1, i32 -104
  %6 = ptrtoint ptr %max_keysize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %max_keysize, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_init.__UNIQUE_ID_ddebug437, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_init, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !195

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_init.__UNIQUE_ID_ddebug437, ptr noundef %dev.i, ptr noundef nonnull @.str.68, ptr noundef %__crt_ctx.i, ptr noundef %cra_name.i) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cipher_mode = getelementptr i8, ptr %1, i32 -248
  %10 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cipher_mode, align 8
  %cipher_mode7 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %12 = ptrtoint ptr %cipher_mode7 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %cipher_mode7, align 4
  %flow_mode = getelementptr i8, ptr %1, i32 -244
  %13 = ptrtoint ptr %flow_mode to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flow_mode, align 4
  %flow_mode8 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %15 = ptrtoint ptr %flow_mode8 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %flow_mode8, align 4
  %16 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %drvdata, align 4
  %18 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %__crt_ctx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %11)
  %cmp = icmp eq i32 %11, 13
  br i1 %cmp, label %if.then12, label %do.end.if.end35_crit_edge

do.end.if.end35_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35

if.then12:                                        ; preds = %do.end
  %19 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %__crt_alg, align 4
  %cra_name.i155 = getelementptr inbounds %struct.crypto_alg, ptr %20, i32 0, i32 8
  %call14 = tail call ptr @crypto_alloc_shash(ptr noundef nonnull @.str.69, i32 noundef 0, i32 noundef 0) #7
  %shash_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %21 = ptrtoint ptr %shash_tfm to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call14, ptr %shash_tfm, align 4
  %cmp.i = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %cleanup, label %if.end23

if.end23:                                         ; preds = %if.then12
  %shl = shl i32 %7, 1
  %call24 = tail call ptr @crypto_alloc_skcipher(ptr noundef %cra_name.i155, i32 noundef 0, i32 noundef 384) #7
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %22 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call24, ptr %fallback_tfm, align 4
  %cmp.i156 = icmp ugt ptr %call24, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i156, label %do.end30, label %if.else

do.end30:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev.i, ptr noundef nonnull @.str.72, ptr noundef %cra_name.i155) #10
  %23 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %fallback_tfm, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %call24 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %call24, align 128
  %phi.bo = add i32 %25, 52
  br label %if.end35

cleanup:                                          ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.70) #10
  %26 = ptrtoint ptr %shash_tfm to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %shash_tfm, align 4
  %28 = ptrtoint ptr %27 to i32
  br label %cleanup100

if.end35:                                         ; preds = %if.else, %do.end30, %do.end.if.end35_crit_edge
  %fallback_req_size.2 = phi i32 [ 52, %do.end.if.end35_crit_edge ], [ %phi.bo, %if.else ], [ 52, %do.end30 ]
  %max_key_buf_size.1 = phi i32 [ %7, %do.end.if.end35_crit_edge ], [ %shl, %if.else ], [ %shl, %do.end30 ]
  %add.ptr.i = getelementptr i8, ptr %tfm, i32 -128
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %fallback_req_size.2, ptr %add.ptr.i, align 128
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %max_key_buf_size.1, i32 noundef 3520) #11
  %user = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %30 = ptrtoint ptr %user to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call9.i.i, ptr %user, align 4
  %tobool40.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool40.not, label %if.end35.free_fallback_crit_edge, label %do.body43

if.end35.free_fallback_crit_edge:                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %free_fallback

do.body43:                                        ; preds = %if.end35
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_init.__UNIQUE_ID_ddebug438, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_init, %if.then55)) #7
          to label %do.end60 [label %if.then55], !srcloc !195

if.then55:                                        ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %user, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_init.__UNIQUE_ID_ddebug438, ptr noundef %dev.i, ptr noundef nonnull @.str.75, ptr noundef %32) #7
  br label %do.end60

do.end60:                                         ; preds = %if.then55, %do.body43
  %33 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %user, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %34) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %do.end60
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !199

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev.i) #7
  %init_name.i.i = getelementptr inbounds %struct.platform_device, ptr %5, i32 0, i32 3, i32 3
  %35 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %36, null
  br i1 %tobool.not.i.i, label %if.end.i.i157, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i157:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i157, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %38, %if.end.i.i157 ], [ %36, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.80, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.81, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %key_dma_addr173 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %39 = ptrtoint ptr %key_dma_addr173 to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -1, ptr %key_dma_addr173, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef -1) #7
  br label %do.end72

dma_map_single_attrs.exit:                        ; preds = %do.end60
  tail call void @debug_dma_map_single(ptr noundef %dev.i, ptr noundef %34, i32 noundef %max_key_buf_size.1) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %40 = load ptr, ptr @mem_map, align 4
  %41 = ptrtoint ptr %34 to i32
  %sub.i = add i32 %41, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i158 = getelementptr %struct.page, ptr %40, i32 %shr.i
  %and.i = and i32 %41, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev.i, ptr noundef %add.ptr.i158, i32 noundef %and.i, i32 noundef %max_key_buf_size.1, i32 noundef 1, i32 noundef 0) #7
  %key_dma_addr = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %42 = ptrtoint ptr %key_dma_addr to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call41.i, ptr %key_dma_addr, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %dev.i, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i160 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i160, label %dma_map_single_attrs.exit.do.end72_crit_edge, label %do.body76

dma_map_single_attrs.exit.do.end72_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end72

do.end72:                                         ; preds = %dma_map_single_attrs.exit.do.end72_crit_edge, %dma_map_single_attrs.exit.thread
  %43 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %user, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev.i, ptr noundef nonnull @.str.77, i32 noundef %max_key_buf_size.1, ptr noundef %44) #10
  %45 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %user, align 4
  tail call void @kfree(ptr noundef %46) #7
  br label %free_fallback

do.body76:                                        ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_init.__UNIQUE_ID_ddebug439, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_init, %if.then88)) #7
          to label %cleanup100 [label %if.then88], !srcloc !195

if.then88:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #9
  %47 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %user, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_init.__UNIQUE_ID_ddebug439, ptr noundef %dev.i, ptr noundef nonnull @.str.79, i32 noundef %max_key_buf_size.1, ptr noundef %48, ptr noundef %key_dma_addr) #7
  br label %cleanup100

free_fallback:                                    ; preds = %do.end72, %if.end35.free_fallback_crit_edge
  %fallback_tfm98 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %49 = ptrtoint ptr %fallback_tfm98 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %fallback_tfm98, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %50, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %50, ptr noundef %base.i.i) #7
  %shash_tfm99 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %51 = ptrtoint ptr %shash_tfm99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %shash_tfm99, align 4
  %base.i.i161 = getelementptr inbounds %struct.crypto_shash, ptr %52, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %52, ptr noundef %base.i.i161) #7
  br label %cleanup100

cleanup100:                                       ; preds = %free_fallback, %if.then88, %do.body76, %cleanup
  %retval.1 = phi i32 [ -12, %free_fallback ], [ %28, %cleanup ], [ 0, %if.then88 ], [ 0, %do.body76 ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cc_cipher_exit(ptr noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %max_keysize = getelementptr i8, ptr %1, i32 -104
  %2 = ptrtoint ptr %max_keysize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %max_keysize, align 8
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %4 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_ctx.i, align 4
  %plat_dev.i = getelementptr inbounds %struct.cc_drvdata, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %plat_dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %plat_dev.i, align 4
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %7, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_exit.__UNIQUE_ID_ddebug440, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_exit, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !195

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %9, i32 0, i32 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_exit.__UNIQUE_ID_ddebug440, ptr noundef %dev.i, ptr noundef nonnull @.str.83, ptr noundef %__crt_ctx.i, ptr noundef %cra_name.i) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cipher_mode = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %10 = ptrtoint ptr %cipher_mode to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cipher_mode, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 13, i32 %11)
  %cmp = icmp eq i32 %11, 13
  br i1 %cmp, label %if.then8, label %do.end.if.end11_crit_edge

do.end.if.end11_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end11

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %shash_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %12 = ptrtoint ptr %shash_tfm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %shash_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_shash, ptr %13, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %13, ptr noundef %base.i.i) #7
  %14 = ptrtoint ptr %shash_tfm to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr null, ptr %shash_tfm, align 4
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %15 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i71 = getelementptr inbounds %struct.crypto_skcipher, ptr %16, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %16, ptr noundef %base.i.i71) #7
  %17 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %fallback_tfm, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then8, %do.end.if.end11_crit_edge
  %user = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %key_dma_addr = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %18 = ptrtoint ptr %key_dma_addr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %key_dma_addr, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %dev.i, i32 noundef %19, i32 noundef %3, i32 noundef 1, i32 noundef 0) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_exit.__UNIQUE_ID_ddebug441, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_exit, %if.then24)) #7
          to label %do.end29 [label %if.then24], !srcloc !195

if.then24:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_exit.__UNIQUE_ID_ddebug441, ptr noundef %dev.i, ptr noundef nonnull @.str.84, ptr noundef %key_dma_addr) #7
  br label %do.end29

do.end29:                                         ; preds = %if.then24, %if.end11
  %20 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %user, align 4
  tail call void @kfree_sensitive(ptr noundef %21) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @cc_cipher_exit.__UNIQUE_ID_ddebug442, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@cc_cipher_exit, %if.then43)) #7
          to label %do.end48 [label %if.then43], !srcloc !195

if.then43:                                        ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %user to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %user, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @cc_cipher_exit.__UNIQUE_ID_ddebug442, ptr noundef %dev.i, ptr noundef nonnull @.str.85, ptr noundef %23) #7
  br label %do.end48

do.end48:                                         ; preds = %if.then43, %do.end29
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_shash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

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
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.fshl.i32(i32, i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 87)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !9, !11, !12, !13, !14, !15, !17, !18, !20, !21, !23, !24, !25, !27, !28, !30, !32, !33, !34, !36, !38, !39, !40, !42, !43, !45, !46, !47, !49, !50, !51, !53, !54, !55, !57, !58, !59, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !81, !82, !83, !85, !86, !88, !89, !90, !92, !93, !94, !95, !97, !98, !99, !101, !102, !103, !105, !106, !107, !109, !110, !111, !113, !115, !116, !118, !120, !121, !122, !124, !125, !126, !128, !129, !131, !132, !134, !135, !137, !138, !140, !141, !142, !144, !145, !147, !149, !150, !151, !153, !155, !156, !157, !159, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !174, !175, !176, !178, !179, !180, !182, !183, !185}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 1471, i32 2}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @cc_cipher_alloc.__UNIQUE_ID_ddebug460, !1, !"__UNIQUE_ID_ddebug460", i1 false, i1 false}
!6 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 1479, i32 3}
!8 = !{ptr @cc_cipher_alloc.__UNIQUE_ID_ddebug461, !7, !"__UNIQUE_ID_ddebug461", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 1483, i32 4}
!11 = !{ptr @.str.6, !10, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @.str.7, !10, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @cc_cipher_alloc._entry, !10, !"_entry", i1 false, i1 false}
!14 = !{ptr @cc_cipher_alloc._entry_ptr, !10, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.8, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 1489, i32 3}
!17 = !{ptr @cc_cipher_alloc.__UNIQUE_ID_ddebug462, !16, !"__UNIQUE_ID_ddebug462", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 1492, i32 3}
!20 = !{ptr @cc_cipher_alloc.__UNIQUE_ID_ddebug463, !19, !"__UNIQUE_ID_ddebug463", i1 false, i1 false}
!21 = !{ptr @.str.11, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 1495, i32 4}
!23 = !{ptr @cc_cipher_alloc._entry.10, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @cc_cipher_alloc._entry_ptr.12, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.13, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 1501, i32 3}
!27 = !{ptr @cc_cipher_alloc.__UNIQUE_ID_ddebug464, !26, !"__UNIQUE_ID_ddebug464", i1 false, i1 false}
!28 = !{ptr @skcipher_algs, !29, !"skcipher_algs", i1 false, i1 false}
!29 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 1009, i32 37}
!30 = !{ptr @.str.14, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 309, i32 2}
!32 = !{ptr @.str.15, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @cc_cipher_sethkey.__UNIQUE_ID_ddebug443, !31, !"__UNIQUE_ID_ddebug443", i1 false, i1 false}
!34 = !{ptr @.str.16, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 311, i32 18}
!36 = !{ptr @.str.17, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 317, i32 3}
!38 = !{ptr @cc_cipher_sethkey._entry, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @cc_cipher_sethkey._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 329, i32 3}
!42 = !{ptr @cc_cipher_sethkey.__UNIQUE_ID_ddebug444, !41, !"__UNIQUE_ID_ddebug444", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 339, i32 4}
!45 = !{ptr @cc_cipher_sethkey._entry.19, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @cc_cipher_sethkey._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 345, i32 4}
!49 = !{ptr @cc_cipher_sethkey._entry.22, !48, !"_entry", i1 false, i1 false}
!50 = !{ptr @cc_cipher_sethkey._entry_ptr.24, !48, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.26, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 353, i32 5}
!53 = !{ptr @cc_cipher_sethkey._entry.25, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @cc_cipher_sethkey._entry_ptr.27, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.29, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 360, i32 5}
!57 = !{ptr @cc_cipher_sethkey._entry.28, !56, !"_entry", i1 false, i1 false}
!58 = !{ptr @cc_cipher_sethkey._entry_ptr.30, !56, !"_entry_ptr", i1 false, i1 false}
!59 = !{ptr @.str.31, !60, !"<string literal>", i1 false, i1 false}
!60 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 367, i32 3}
!61 = !{ptr @cc_cipher_sethkey.__UNIQUE_ID_ddebug445, !60, !"__UNIQUE_ID_ddebug445", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 373, i32 4}
!64 = !{ptr @cc_cipher_sethkey._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @cc_cipher_sethkey._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 379, i32 4}
!68 = !{ptr @cc_cipher_sethkey._entry.35, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @cc_cipher_sethkey._entry_ptr.37, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.38, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 389, i32 3}
!72 = !{ptr @cc_cipher_sethkey.__UNIQUE_ID_ddebug446, !71, !"__UNIQUE_ID_ddebug446", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 394, i32 3}
!75 = !{ptr @cc_cipher_sethkey._entry.39, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @cc_cipher_sethkey._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.42, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 896, i32 2}
!79 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @cc_cipher_process.__UNIQUE_ID_ddebug458, !78, !"__UNIQUE_ID_ddebug458", i1 false, i1 false}
!81 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.45, !78, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @.str.46, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 903, i32 3}
!85 = !{ptr @cc_cipher_process.__UNIQUE_ID_ddebug459, !84, !"__UNIQUE_ID_ddebug459", i1 false, i1 false}
!86 = !{ptr @.str.47, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 952, i32 3}
!88 = !{ptr @cc_cipher_process._entry, !87, !"_entry", i1 false, i1 false}
!89 = !{ptr @cc_cipher_process._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!90 = !{ptr @.str.48, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 605, i32 3}
!92 = !{ptr @.str.49, !91, !"<string literal>", i1 false, i1 false}
!93 = !{ptr @cc_setup_state_desc._entry, !91, !"_entry", i1 false, i1 false}
!94 = !{ptr @cc_setup_state_desc._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!95 = !{ptr @.str.50, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 781, i32 3}
!97 = !{ptr @.str.51, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @cc_setup_mlli_desc.__UNIQUE_ID_ddebug453, !96, !"__UNIQUE_ID_ddebug453", i1 false, i1 false}
!99 = !{ptr @.str.52, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 766, i32 3}
!101 = !{ptr @cc_setup_key_desc._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @cc_setup_key_desc._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.53, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 670, i32 3}
!105 = !{ptr @cc_setup_xex_state_desc._entry, !104, !"_entry", i1 false, i1 false}
!106 = !{ptr @cc_setup_xex_state_desc._entry_ptr, !104, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.54, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 811, i32 3}
!109 = !{ptr @.str.55, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @cc_setup_flow_desc.__UNIQUE_ID_ddebug454, !108, !"__UNIQUE_ID_ddebug454", i1 false, i1 false}
!111 = !{ptr @cc_setup_flow_desc.__UNIQUE_ID_ddebug455, !112, !"__UNIQUE_ID_ddebug455", i1 false, i1 false}
!112 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 813, i32 3}
!113 = !{ptr @.str.56, !114, !"<string literal>", i1 false, i1 false}
!114 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 831, i32 4}
!115 = !{ptr @cc_setup_flow_desc.__UNIQUE_ID_ddebug456, !114, !"__UNIQUE_ID_ddebug456", i1 false, i1 false}
!116 = !{ptr @cc_setup_flow_desc.__UNIQUE_ID_ddebug457, !117, !"__UNIQUE_ID_ddebug457", i1 false, i1 false}
!117 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 839, i32 4}
!118 = !{ptr @.str.57, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 561, i32 3}
!120 = !{ptr @cc_setup_readiv_desc._entry, !119, !"_entry", i1 false, i1 false}
!121 = !{ptr @cc_setup_readiv_desc._entry_ptr, !119, !"_entry_ptr", i1 false, i1 false}
!122 = !{ptr @.str.58, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 412, i32 2}
!124 = !{ptr @.str.59, !123, !"<string literal>", i1 false, i1 false}
!125 = !{ptr @cc_cipher_setkey.__UNIQUE_ID_ddebug447, !123, !"__UNIQUE_ID_ddebug447", i1 false, i1 false}
!126 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 419, i32 3}
!128 = !{ptr @cc_cipher_setkey.__UNIQUE_ID_ddebug448, !127, !"__UNIQUE_ID_ddebug448", i1 false, i1 false}
!129 = !{ptr @.str.61, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 437, i32 4}
!131 = !{ptr @cc_cipher_setkey.__UNIQUE_ID_ddebug449, !130, !"__UNIQUE_ID_ddebug449", i1 false, i1 false}
!132 = !{ptr @.str.62, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 457, i32 4}
!134 = !{ptr @cc_cipher_setkey.__UNIQUE_ID_ddebug450, !133, !"__UNIQUE_ID_ddebug450", i1 false, i1 false}
!135 = !{ptr @.str.63, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 464, i32 3}
!137 = !{ptr @cc_cipher_setkey.__UNIQUE_ID_ddebug451, !136, !"__UNIQUE_ID_ddebug451", i1 false, i1 false}
!138 = !{ptr @.str.64, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 482, i32 4}
!140 = !{ptr @cc_cipher_setkey._entry, !139, !"_entry", i1 false, i1 false}
!141 = !{ptr @cc_cipher_setkey._entry_ptr, !139, !"_entry_ptr", i1 false, i1 false}
!142 = !{ptr @.str.65, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 492, i32 2}
!144 = !{ptr @cc_cipher_setkey.__UNIQUE_ID_ddebug452, !143, !"__UNIQUE_ID_ddebug452", i1 false, i1 false}
!145 = !{ptr @.str.66, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 1430, i32 52}
!147 = !{ptr @.str.67, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 164, i32 2}
!149 = !{ptr @.str.68, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @cc_cipher_init.__UNIQUE_ID_ddebug437, !148, !"__UNIQUE_ID_ddebug437", i1 false, i1 false}
!151 = !{ptr @.str.69, !152, !"<string literal>", i1 false, i1 false}
!152 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 175, i32 41}
!153 = !{ptr @.str.70, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 177, i32 4}
!155 = !{ptr @cc_cipher_init._entry, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @cc_cipher_init._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.72, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 190, i32 4}
!159 = !{ptr @.str.73, !158, !"<string literal>", i1 false, i1 false}
!160 = !{ptr @cc_cipher_init._entry.71, !158, !"_entry", i1 false, i1 false}
!161 = !{ptr @cc_cipher_init._entry_ptr.74, !158, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @.str.75, !163, !"<string literal>", i1 false, i1 false}
!163 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 206, i32 2}
!164 = !{ptr @cc_cipher_init.__UNIQUE_ID_ddebug438, !163, !"__UNIQUE_ID_ddebug438", i1 false, i1 false}
!165 = !{ptr @.str.77, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 214, i32 3}
!167 = !{ptr @cc_cipher_init._entry.76, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @cc_cipher_init._entry_ptr.78, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.79, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 218, i32 2}
!171 = !{ptr @cc_cipher_init.__UNIQUE_ID_ddebug439, !170, !"__UNIQUE_ID_ddebug439", i1 false, i1 false}
!172 = distinct !{null, !173, !"__already_done", i1 false, i1 false}
!173 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!174 = !{ptr @.str.80, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @.str.81, !173, !"<string literal>", i1 false, i1 false}
!176 = !{ptr @.str.82, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 242, i32 2}
!178 = !{ptr @.str.83, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @cc_cipher_exit.__UNIQUE_ID_ddebug440, !177, !"__UNIQUE_ID_ddebug440", i1 false, i1 false}
!180 = !{ptr @.str.84, !181, !"<string literal>", i1 false, i1 false}
!181 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 256, i32 2}
!182 = !{ptr @cc_cipher_exit.__UNIQUE_ID_ddebug441, !181, !"__UNIQUE_ID_ddebug441", i1 false, i1 false}
!183 = !{ptr @.str.85, !184, !"<string literal>", i1 false, i1 false}
!184 = !{!"../drivers/crypto/ccree/cc_cipher.c", i32 261, i32 2}
!185 = !{ptr @cc_cipher_exit.__UNIQUE_ID_ddebug442, !184, !"__UNIQUE_ID_ddebug442", i1 false, i1 false}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{i64 2148731263, i64 2148731268, i64 2148731281, i64 2148731325, i64 2148731359, i64 2148731380}
!196 = !{i8 0, i8 2}
!197 = !{!"branch_weights", i32 1, i32 2000}
!198 = !{i64 2149050271}
!199 = !{!"branch_weights", i32 2000, i32 1}
