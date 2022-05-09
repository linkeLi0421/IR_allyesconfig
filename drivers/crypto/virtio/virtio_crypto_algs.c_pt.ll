; ModuleID = '/llk/IR_all_yes/drivers/crypto/virtio/virtio_crypto_algs.c_pt.bc'
source_filename = "../drivers/crypto/virtio/virtio_crypto_algs.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.virtio_crypto_algo = type { i32, i32, i32, [116 x i8], %struct.skcipher_alg }
%struct.skcipher_alg = type { ptr, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i32, [88 x i8], %struct.crypto_alg }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.67, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.67 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.cpu_topology = type { i32, i32, i32, i32, i32, %struct.cpumask, %struct.cpumask, %struct.cpumask, %struct.cpumask }
%struct.cpumask = type { [1 x i32] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.virtio_crypto_sym_request = type { %struct.virtio_crypto_request, i32, ptr, ptr, ptr, i8 }
%struct.virtio_crypto_request = type { i8, ptr, ptr, ptr, ptr }
%struct.virtio_crypto_skcipher_ctx = type { %struct.crypto_engine_ctx, ptr, ptr, %struct.virtio_crypto_sym_session_info, %struct.virtio_crypto_sym_session_info }
%struct.crypto_engine_ctx = type { %struct.crypto_engine_op }
%struct.crypto_engine_op = type { ptr, ptr, ptr }
%struct.virtio_crypto_sym_session_info = type { i64 }
%struct.virtio_crypto_op_header = type { i32, i32, i64, i32, i32 }
%struct.virtio_crypto_op_data_req = type { %struct.virtio_crypto_op_header, %union.anon.75 }
%union.anon.75 = type { %struct.virtio_crypto_sym_data_req }
%struct.virtio_crypto_sym_data_req = type { %union.anon.76, i32, i32 }
%union.anon.76 = type { %struct.virtio_crypto_cipher_data_req }
%struct.virtio_crypto_cipher_data_req = type { %struct.virtio_crypto_cipher_para, [24 x i8] }
%struct.virtio_crypto_cipher_para = type { i32, i32, i32, i32 }
%struct.virtio_crypto = type { ptr, ptr, ptr, %struct.spinlock, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.virtio_crypto_op_ctrl_req, %struct.virtio_crypto_session_input, %struct.virtio_crypto_inhdr, i32, %struct.atomic_t, %struct.list_head, ptr, i8, i8 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.virtio_crypto_op_ctrl_req = type { %struct.virtio_crypto_ctrl_header, %union.anon.77 }
%struct.virtio_crypto_ctrl_header = type { i32, i32, i32, i32 }
%union.anon.77 = type { %struct.virtio_crypto_destroy_session_req }
%struct.virtio_crypto_destroy_session_req = type { i64, [48 x i8] }
%struct.virtio_crypto_session_input = type { i64, i32, i32 }
%struct.virtio_crypto_inhdr = type { i8 }
%struct.data_queue = type { ptr, %struct.spinlock, [32 x i8], ptr }
%struct.virtio_device = type { i32, i8, i8, i8, %struct.spinlock, %struct.spinlock, %struct.device, %struct.virtio_device_id, ptr, ptr, %struct.list_head, i64, ptr }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
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
%struct.virtio_device_id = type { i32, i32 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }
%struct.virtio_crypto_cipher_session_para = type { i32, i32, i32, i32 }

@algs_lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.16, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @algs_lock, i64 52), ptr getelementptr (i8, ptr @algs_lock, i64 52) }, ptr @algs_lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.17, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@virtio_crypto_algs = internal global [1 x %struct.virtio_crypto_algo] [%struct.virtio_crypto_algo { i32 3, i32 0, i32 0, [116 x i8] undef, %struct.skcipher_alg { ptr @virtio_crypto_skcipher_setkey, ptr @virtio_crypto_skcipher_encrypt, ptr @virtio_crypto_skcipher_decrypt, ptr @virtio_crypto_skcipher_init, ptr @virtio_crypto_skcipher_exit, i32 16, i32 32, i32 16, i32 0, i32 0, [88 x i8] undef, %struct.crypto_alg { %struct.list_head zeroinitializer, %struct.list_head zeroinitializer, i32 65664, i32 16, i32 40, i32 0, i32 150, %struct.refcount_struct zeroinitializer, [128 x i8] c"cbc(aes)\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", [128 x i8] c"virtio_crypto_aes_cbc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null, %union.anon.67 zeroinitializer, ptr null, ptr null, ptr null, ptr null, %union.anon.68 zeroinitializer, [120 x i8] undef } } }], align 128
@virtio_crypto_algs_register._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 639, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Registered algo %s\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"virtio_crypto_algs_register\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/crypto/virtio/virtio_crypto_algs.c\00", [53 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@virtio_crypto_algs_register._entry_ptr = internal global ptr @virtio_crypto_algs_register._entry, section ".printk_index", align 4
@__virtio_crypto_skcipher_do_req._entry = internal constant %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.2, i32 361, ptr null, ptr null }, align 1
@.str.5 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"\013Invalid number of src SG.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"__virtio_crypto_skcipher_do_req\00", [32 x i8] zeroinitializer }, align 32
@__virtio_crypto_skcipher_do_req._entry_ptr = internal global ptr @__virtio_crypto_skcipher_do_req._entry, section ".printk_index", align 4
@__virtio_crypto_skcipher_do_req.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.6, ptr @.str.2, ptr @.str.8, i8 0, i8 92, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"virtio_crypto\00", [18 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [61 x i8], [35 x i8] } { [61 x i8] c"virtio_crypto: Number of sgs (src_nents: %d, dst_nents: %d)\0A\00", [35 x i8] zeroinitializer }, align 32
@__virtio_crypto_skcipher_do_req._entry.9 = internal constant %struct.pi_entry { ptr @.str.10, ptr @.str.6, ptr @.str.2, i32 405, ptr null, ptr null }, align 1
@.str.10 = internal constant { [48 x i8], [48 x i8] } { [48 x i8] c"\013virtio_crypto: The dst_len is beyond U32_MAX\0A\00", [48 x i8] zeroinitializer }, align 32
@__virtio_crypto_skcipher_do_req._entry_ptr.11 = internal global ptr @__virtio_crypto_skcipher_do_req._entry.9, section ".printk_index", align 4
@__virtio_crypto_skcipher_do_req.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.7, ptr @.str.6, ptr @.str.2, ptr @.str.12, i8 0, i8 103, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"virtio_crypto: src_len: %u, dst_len: %llu\0A\00", [53 x i8] zeroinitializer }, align 32
@__virtio_crypto_skcipher_do_req._entry.13 = internal constant %struct.pi_entry { ptr @.str.14, ptr @.str.6, ptr @.str.2, i32 416, ptr null, ptr null }, align 1
@.str.14 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"\013virtio_crypto: The length is too big\0A\00", [56 x i8] zeroinitializer }, align 32
@__virtio_crypto_skcipher_do_req._entry_ptr.15 = internal global ptr @__virtio_crypto_skcipher_do_req._entry.13, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"algs_lock.wait_lock\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"algs_lock\00", [22 x i8] zeroinitializer }, align 32
@virtio_crypto_skcipher_setkey._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 316, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [83 x i8], [45 x i8] } { [83 x i8] c"\013virtio_crypto: Could not find a virtio device in the system or unsupported algo\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"virtio_crypto_skcipher_setkey\00", [34 x i8] zeroinitializer }, align 32
@virtio_crypto_skcipher_setkey._entry_ptr = internal global ptr @virtio_crypto_skcipher_setkey._entry, section ".printk_index", align 4
@cpu_topology = external dso_local local_unnamed_addr global [4 x %struct.cpu_topology], align 4
@virtio_crypto_alg_skcipher_close_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.2, i32 256, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [70 x i8], [58 x i8] } { [70 x i8] c"\013virtio_crypto: Close session failed status: %u, session_id: 0x%llx\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"virtio_crypto_alg_skcipher_close_session\00", [55 x i8] zeroinitializer }, align 32
@virtio_crypto_alg_skcipher_close_session._entry_ptr = internal global ptr @virtio_crypto_alg_skcipher_close_session._entry, section ".printk_index", align 4
@virtio_crypto_alg_skcipher_init_sessions._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.2, i32 274, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"\013virtio_crypto: the key is too long\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"virtio_crypto_alg_skcipher_init_sessions\00", [55 x i8] zeroinitializer }, align 32
@virtio_crypto_alg_skcipher_init_sessions._entry_ptr = internal global ptr @virtio_crypto_alg_skcipher_init_sessions._entry, section ".printk_index", align 4
@virtio_crypto_alg_skcipher_init_session._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.25, ptr @.str.2, i32 186, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013virtio_crypto: Create session failed status: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"virtio_crypto_alg_skcipher_init_session\00", [56 x i8] zeroinitializer }, align 32
@virtio_crypto_alg_skcipher_init_session._entry_ptr = internal global ptr @virtio_crypto_alg_skcipher_init_session._entry, section ".printk_index", align 4
@switch.table.virtio_crypto_dataq_sym_callback = internal constant { [5 x i32], [44 x i8] } { [5 x i32] [i32 0, i32 -22, i32 -74, i32 -5, i32 -22], [44 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@__sancov_gen_cov_switch_values.26 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.27 = private unnamed_addr constant [10 x i8] c"algs_lock\00", align 1
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 638, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 361, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 367, i32 2 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 405, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 411, i32 2 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 416, i32 3 }
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 52, i32 8 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 316, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 254, i32 3 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 274, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.108 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.109 = private constant [46 x i8] c"../drivers/crypto/virtio/virtio_crypto_algs.c\00", align 1
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.109, i32 185, i32 3 }
@___asan_gen_.111 = private unnamed_addr constant [46 x i8] c"switch.table.virtio_crypto_dataq_sym_callback\00", align 1
@llvm.compiler.used = appending global [40 x ptr] [ptr @__virtio_crypto_skcipher_do_req._entry, ptr @__virtio_crypto_skcipher_do_req._entry.13, ptr @__virtio_crypto_skcipher_do_req._entry.9, ptr @__virtio_crypto_skcipher_do_req._entry_ptr, ptr @__virtio_crypto_skcipher_do_req._entry_ptr.11, ptr @__virtio_crypto_skcipher_do_req._entry_ptr.15, ptr @virtio_crypto_alg_skcipher_close_session._entry, ptr @virtio_crypto_alg_skcipher_close_session._entry_ptr, ptr @virtio_crypto_alg_skcipher_init_session._entry, ptr @virtio_crypto_alg_skcipher_init_session._entry_ptr, ptr @virtio_crypto_alg_skcipher_init_sessions._entry, ptr @virtio_crypto_alg_skcipher_init_sessions._entry_ptr, ptr @virtio_crypto_algs_register._entry, ptr @virtio_crypto_algs_register._entry_ptr, ptr @virtio_crypto_skcipher_setkey._entry, ptr @virtio_crypto_skcipher_setkey._entry_ptr, ptr @algs_lock, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @switch.table.virtio_crypto_dataq_sym_callback], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @algs_lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_crypto_algs_register._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 61, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_crypto_skcipher_setkey._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 83, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_crypto_alg_skcipher_close_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 70, i32 128, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_crypto_alg_skcipher_init_sessions._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @virtio_crypto_alg_skcipher_init_session._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @switch.table.virtio_crypto_dataq_sym_callback to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 0, i32 0, i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_crypto_skcipher_crypt_req(ptr nocapture readnone %engine, ptr noundef %vreq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %vreq, i32 -16
  %__ctx.i = getelementptr i8, ptr %vreq, i32 112
  %dataq = getelementptr i8, ptr %vreq, i32 124
  %0 = ptrtoint ptr %dataq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dataq, align 4
  %call1 = tail call fastcc i32 @__virtio_crypto_skcipher_do_req(ptr noundef %__ctx.i, ptr noundef %add.ptr, ptr noundef %1)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %cmp = icmp slt i32 %call1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call2 = tail call zeroext i1 @virtqueue_kick(ptr noundef %3) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ %call1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @__virtio_crypto_skcipher_do_req(ptr noundef %vc_sym_req, ptr nocapture noundef readonly %req, ptr noundef %data_vq) unnamed_addr #0 align 64 {
entry:
  %outhdr = alloca %struct.scatterlist, align 4
  %iv_sg = alloca %struct.scatterlist, align 4
  %status_sg = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %skcipher_ctx = getelementptr inbounds %struct.virtio_crypto_sym_request, ptr %vc_sym_req, i32 0, i32 2
  %2 = ptrtoint ptr %skcipher_ctx to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %skcipher_ctx, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %5, i32 -100
  %6 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ivsize.i, align 4
  %vcrypto2 = getelementptr inbounds %struct.virtio_crypto_skcipher_ctx, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %vcrypto2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %vcrypto2, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %outhdr) #9
  %10 = call ptr @memset(ptr %outhdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %iv_sg) #9
  %11 = call ptr @memset(ptr %iv_sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %status_sg) #9
  %src = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 2
  %12 = call ptr @memset(ptr %status_sg, i32 255, i32 20)
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src, align 8
  %15 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %req, align 128
  %conv = zext i32 %16 to i64
  %call3 = tail call i32 @sg_nents_for_len(ptr noundef %14, i64 noundef %conv) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp = icmp slt i32 %call3, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %call5 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.5) #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 3
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dst, align 4
  %call6 = tail call i32 @sg_nents(ptr noundef %18) #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__virtio_crypto_skcipher_do_req.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__virtio_crypto_skcipher_do_req, %if.then12)) #9
          to label %do.end15 [label %if.then12], !srcloc !64

if.then12:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__virtio_crypto_skcipher_do_req.__UNIQUE_ID_ddebug244, ptr noundef nonnull @.str.8, i32 noundef %call3, i32 noundef %call6) #9
  br label %do.end15

do.end15:                                         ; preds = %if.then12, %if.end
  %add = add nuw i32 %call3, 3
  %add16 = add i32 %add, %call6
  %19 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add16, i32 4) #9
  %20 = extractvalue { i32, i1 } %19, 1
  br i1 %20, label %do.end15.cleanup_crit_edge, label %if.end7.i.i, !prof !65

do.end15.cleanup_crit_edge:                       ; preds = %do.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end7.i.i:                                      ; preds = %do.end15
  %21 = extractvalue { i32, i1 } %19, 0
  %call.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %21, i32 noundef 3520) #13
  %tobool19.not = icmp eq ptr %call.i.i.i, null
  br i1 %tobool19.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end21

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end21:                                         ; preds = %if.end7.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %22 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call.i.i.i279 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %22, i32 noundef 3520, i32 noundef 72) #14
  %tobool26.not = icmp eq ptr %call.i.i.i279, null
  br i1 %tobool26.not, label %if.then27, label %if.end28

if.then27:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

if.end28:                                         ; preds = %if.end21
  %req_data29 = getelementptr inbounds %struct.virtio_crypto_request, ptr %vc_sym_req, i32 0, i32 1
  %23 = ptrtoint ptr %req_data29 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call.i.i.i279, ptr %req_data29, align 4
  %type = getelementptr inbounds %struct.virtio_crypto_sym_request, ptr %vc_sym_req, i32 0, i32 1
  %24 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 1, ptr %type, align 4
  %encrypt = getelementptr inbounds %struct.virtio_crypto_sym_request, ptr %vc_sym_req, i32 0, i32 5
  %25 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %encrypt, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool30.not = icmp eq i8 %26, 0
  %dec_sess_info = getelementptr inbounds %struct.virtio_crypto_skcipher_ctx, ptr %3, i32 0, i32 4
  %enc_sess_info = getelementptr inbounds %struct.virtio_crypto_skcipher_ctx, ptr %3, i32 0, i32 3
  %dec_sess_info.sink = select i1 %tobool30.not, ptr %dec_sess_info, ptr %enc_sess_info
  %storemerge = select i1 %tobool30.not, i32 16777216, i32 0
  %27 = ptrtoint ptr %dec_sess_info.sink to i32
  call void @__asan_load8_noabort(i32 %27)
  %28 = load i64, ptr %dec_sess_info.sink, align 8
  %29 = tail call i64 @llvm.bswap.i64(i64 %28)
  %30 = getelementptr inbounds %struct.virtio_crypto_op_header, ptr %call.i.i.i279, i32 0, i32 2
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_store8_noabort(i32 %31)
  store i64 %29, ptr %30, align 8
  %32 = ptrtoint ptr %call.i.i.i279 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %storemerge, ptr %call.i.i.i279, align 8
  %u = getelementptr inbounds %struct.virtio_crypto_op_data_req, ptr %call.i.i.i279, i32 0, i32 1
  %op_type = getelementptr inbounds %struct.virtio_crypto_op_data_req, ptr %call.i.i.i279, i32 0, i32 1, i32 0, i32 1
  %33 = ptrtoint ptr %op_type to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 16777216, ptr %op_type, align 8
  %34 = tail call i32 @llvm.bswap.i32(i32 %7)
  %35 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %34, ptr %u, align 8
  %36 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %req, align 128
  %38 = tail call i32 @llvm.bswap.i32(i32 %37)
  %src_data_len = getelementptr inbounds %struct.virtio_crypto_op_data_req, ptr %call.i.i.i279, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 1
  %39 = ptrtoint ptr %src_data_len to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %src_data_len, align 4
  %40 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dst, align 4
  %tobool.not4.i = icmp eq ptr %41, null
  br i1 %tobool.not4.i, label %if.end28.if.end62_crit_edge, label %if.end28.for.body.i_crit_edge

if.end28.for.body.i_crit_edge:                    ; preds = %if.end28
  br label %for.body.i

if.end28.if.end62_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end28.for.body.i_crit_edge
  %total.06.i = phi i64 [ %add.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end28.for.body.i_crit_edge ]
  %sg.addr.05.i = phi ptr [ %call.i, %for.body.i.for.body.i_crit_edge ], [ %41, %if.end28.for.body.i_crit_edge ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.addr.05.i, i32 0, i32 2
  %42 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %length.i, align 4
  %conv.i = zext i32 %43 to i64
  %add.i = add i64 %total.06.i, %conv.i
  %call.i = tail call ptr @sg_next(ptr noundef nonnull %sg.addr.05.i) #9
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %virtio_crypto_alg_sg_nents_length.exit, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

virtio_crypto_alg_sg_nents_length.exit:           ; preds = %for.body.i
  call void @__sanitizer_cov_trace_const_cmp8(i64 4294967295, i64 %add.i)
  %cmp48 = icmp ugt i64 %add.i, 4294967295
  %extract.t = trunc i64 %add.i to i32
  br i1 %cmp48, label %do.end59, label %virtio_crypto_alg_sg_nents_length.exit.if.end62_crit_edge, !prof !65

virtio_crypto_alg_sg_nents_length.exit.if.end62_crit_edge: ; preds = %virtio_crypto_alg_sg_nents_length.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end62

do.end59:                                         ; preds = %virtio_crypto_alg_sg_nents_length.exit
  call void @__sanitizer_cov_trace_pc() #11
  %call61 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.10) #12
  br label %free

if.end62:                                         ; preds = %virtio_crypto_alg_sg_nents_length.exit.if.end62_crit_edge, %if.end28.if.end62_crit_edge
  %total.0.lcssa.i294.off0 = phi i32 [ %extract.t, %virtio_crypto_alg_sg_nents_length.exit.if.end62_crit_edge ], [ 0, %if.end28.if.end62_crit_edge ]
  %44 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %req, align 128
  %46 = tail call i32 @llvm.umin.i32(i32 %45, i32 %total.0.lcssa.i294.off0)
  %conv68 = zext i32 %46 to i64
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__virtio_crypto_skcipher_do_req.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@__virtio_crypto_skcipher_do_req, %if.then81)) #9
          to label %do.end85 [label %if.then81], !srcloc !64

if.then81:                                        ; preds = %if.end62
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %req, align 128
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @__virtio_crypto_skcipher_do_req.__UNIQUE_ID_ddebug247, ptr noundef nonnull @.str.12, i32 noundef %48, i64 noundef %conv68) #9
  br label %do.end85

do.end85:                                         ; preds = %if.then81, %if.end62
  %49 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %req, align 128
  %conv87 = zext i32 %50 to i64
  %conv89 = zext i32 %7 to i64
  %add88 = add nuw nsw i64 %conv68, %conv89
  %add90 = add nuw nsw i64 %add88, %conv87
  %max_size = getelementptr inbounds %struct.virtio_crypto, ptr %9, i32 0, i32 15
  %51 = ptrtoint ptr %max_size to i32
  call void @__asan_load8_noabort(i32 %51)
  %52 = load i64, ptr %max_size, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %add90, i64 %52)
  %cmp92.not = icmp ult i64 %add90, %52
  br i1 %cmp92.not, label %if.end106, label %do.end103, !prof !67

do.end103:                                        ; preds = %do.end85
  call void @__sanitizer_cov_trace_pc() #11
  %call105 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.14) #12
  br label %free

if.end106:                                        ; preds = %do.end85
  %53 = tail call i32 @llvm.bswap.i32(i32 %46)
  %dst_data_len = getelementptr inbounds %struct.virtio_crypto_op_data_req, ptr %call.i.i.i279, i32 0, i32 1, i32 0, i32 0, i32 0, i32 0, i32 2
  %54 = ptrtoint ptr %dst_data_len to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %dst_data_len, align 8
  call void @sg_init_one(ptr noundef nonnull %outhdr, ptr noundef nonnull %call.i.i.i279, i32 noundef 72) #9
  %55 = ptrtoint ptr %call.i.i.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %outhdr, ptr %call.i.i.i, align 128
  %call.i4.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 2848) #13
  %tobool115.not = icmp eq ptr %call.i4.i.i, null
  br i1 %tobool115.not, label %if.end106.free_crit_edge, label %if.end117

if.end106.free_crit_edge:                         ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #11
  br label %free

if.end117:                                        ; preds = %if.end106
  %iv118 = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 1
  %56 = ptrtoint ptr %iv118 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %iv118, align 4
  %58 = call ptr @memcpy(ptr %call.i4.i.i, ptr %57, i32 %7)
  %59 = ptrtoint ptr %encrypt to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %encrypt, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool120.not = icmp eq i8 %60, 0
  br i1 %tobool120.not, label %if.then121, label %if.end117.if.end125_crit_edge

if.end117.if.end125_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end125

if.then121:                                       ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #11
  %61 = ptrtoint ptr %iv118 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iv118, align 4
  %63 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %src, align 8
  %65 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %req, align 128
  %sub = add i32 %66, -16
  call void @scatterwalk_map_and_copy(ptr noundef %62, ptr noundef %64, i32 noundef %sub, i32 noundef 16, i32 noundef 0) #9
  br label %if.end125

if.end125:                                        ; preds = %if.then121, %if.end117.if.end125_crit_edge
  call void @sg_init_one(ptr noundef nonnull %iv_sg, ptr noundef nonnull %call.i4.i.i, i32 noundef %7) #9
  %arrayidx127 = getelementptr ptr, ptr %call.i.i.i, i32 1
  %67 = ptrtoint ptr %arrayidx127 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %iv_sg, ptr %arrayidx127, align 4
  %iv128 = getelementptr inbounds %struct.virtio_crypto_sym_request, ptr %vc_sym_req, i32 0, i32 4
  %68 = ptrtoint ptr %iv128 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %call.i4.i.i, ptr %iv128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool130.not299 = icmp eq i32 %call3, 0
  br i1 %tobool130.not299, label %if.end125.for.end_crit_edge, label %for.body.preheader

if.end125.for.end_crit_edge:                      ; preds = %if.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.preheader:                               ; preds = %if.end125
  %69 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %src, align 8
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %src_nents.0302 = phi i32 [ %dec, %for.body.for.body_crit_edge ], [ %call3, %for.body.preheader ]
  %sg.0301 = phi ptr [ %call133, %for.body.for.body_crit_edge ], [ %70, %for.body.preheader ]
  %num_out.0300 = phi i32 [ %inc131, %for.body.for.body_crit_edge ], [ 2, %for.body.preheader ]
  %inc131 = add i32 %num_out.0300, 1
  %arrayidx132 = getelementptr ptr, ptr %call.i.i.i, i32 %num_out.0300
  %71 = ptrtoint ptr %arrayidx132 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %sg.0301, ptr %arrayidx132, align 4
  %call133 = call ptr @sg_next(ptr noundef %sg.0301) #9
  %dec = add i32 %src_nents.0302, -1
  %tobool130.not = icmp eq i32 %dec, 0
  br i1 %tobool130.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end125.for.end_crit_edge
  %num_out.0.lcssa = phi i32 [ 2, %if.end125.for.end_crit_edge ], [ %inc131, %for.body.for.end_crit_edge ]
  %72 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dst, align 4
  %tobool136.not303 = icmp eq ptr %73, null
  br i1 %tobool136.not303, label %for.end.for.end143_crit_edge, label %for.end.for.body137_crit_edge

for.end.for.body137_crit_edge:                    ; preds = %for.end
  br label %for.body137

for.end.for.end143_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end143

for.body137:                                      ; preds = %for.body137.for.body137_crit_edge, %for.end.for.body137_crit_edge
  %sg.1305 = phi ptr [ %call142, %for.body137.for.body137_crit_edge ], [ %73, %for.end.for.body137_crit_edge ]
  %num_in.0304 = phi i32 [ %inc138, %for.body137.for.body137_crit_edge ], [ 0, %for.end.for.body137_crit_edge ]
  %inc138 = add i32 %num_in.0304, 1
  %add139 = add i32 %num_in.0304, %num_out.0.lcssa
  %arrayidx140 = getelementptr ptr, ptr %call.i.i.i, i32 %add139
  %74 = ptrtoint ptr %arrayidx140 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %sg.1305, ptr %arrayidx140, align 4
  %call142 = call ptr @sg_next(ptr noundef nonnull %sg.1305) #9
  %tobool136.not = icmp eq ptr %call142, null
  br i1 %tobool136.not, label %for.body137.for.end143_crit_edge, label %for.body137.for.body137_crit_edge

for.body137.for.body137_crit_edge:                ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body137

for.body137.for.end143_crit_edge:                 ; preds = %for.body137
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end143

for.end143:                                       ; preds = %for.body137.for.end143_crit_edge, %for.end.for.end143_crit_edge
  %num_in.0.lcssa = phi i32 [ 0, %for.end.for.end143_crit_edge ], [ %inc138, %for.body137.for.end143_crit_edge ]
  call void @sg_init_one(ptr noundef nonnull %status_sg, ptr noundef %vc_sym_req, i32 noundef 1) #9
  %inc144 = add i32 %num_in.0.lcssa, 1
  %add145 = add i32 %num_in.0.lcssa, %num_out.0.lcssa
  %arrayidx146 = getelementptr ptr, ptr %call.i.i.i, i32 %add145
  %75 = ptrtoint ptr %arrayidx146 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %status_sg, ptr %arrayidx146, align 4
  %sgs147 = getelementptr inbounds %struct.virtio_crypto_request, ptr %vc_sym_req, i32 0, i32 2
  %76 = ptrtoint ptr %sgs147 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %call.i.i.i, ptr %sgs147, align 4
  %lock = getelementptr inbounds %struct.data_queue, ptr %data_vq, i32 0, i32 1
  %call154 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %77 = ptrtoint ptr %data_vq to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %data_vq, align 4
  %call159 = call i32 @virtqueue_add_sgs(ptr noundef %78, ptr noundef nonnull %call.i.i.i, i32 noundef %num_out.0.lcssa, i32 noundef %inc144, ptr noundef %vc_sym_req, i32 noundef 2592) #9
  %79 = ptrtoint ptr %data_vq to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %data_vq, align 4
  %call161 = call zeroext i1 @virtqueue_kick(ptr noundef %80) #9
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call154) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call159)
  %cmp163 = icmp slt i32 %call159, 0
  br i1 %cmp163, label %free_iv, label %for.end143.cleanup_crit_edge, !prof !65

for.end143.cleanup_crit_edge:                     ; preds = %for.end143
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

free_iv:                                          ; preds = %for.end143
  call void @__sanitizer_cov_trace_pc() #11
  call void @kfree_sensitive(ptr noundef nonnull %call.i4.i.i) #9
  br label %free

free:                                             ; preds = %free_iv, %if.end106.free_crit_edge, %do.end103, %do.end59
  %err.0 = phi i32 [ -22, %do.end59 ], [ -22, %do.end103 ], [ %call159, %free_iv ], [ -12, %if.end106.free_crit_edge ]
  call void @kfree_sensitive(ptr noundef nonnull %call.i.i.i279) #9
  call void @kfree(ptr noundef nonnull %call.i.i.i) #9
  br label %cleanup

cleanup:                                          ; preds = %free, %for.end143.cleanup_crit_edge, %if.then27, %if.end7.i.i.cleanup_crit_edge, %do.end15.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %call3, %do.end ], [ %err.0, %free ], [ -12, %if.then27 ], [ -12, %if.end7.i.i.cleanup_crit_edge ], [ 0, %for.end143.cleanup_crit_edge ], [ -12, %do.end15.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %status_sg) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %iv_sg) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %outhdr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_kick(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @virtio_crypto_algs_register(ptr noundef %vcrypto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @algs_lock, i32 noundef 0) #9
  %0 = load i32, ptr getelementptr inbounds ([1 x %struct.virtio_crypto_algo], ptr @virtio_crypto_algs, i32 0, i32 0, i32 1), align 4
  %1 = load i32, ptr @virtio_crypto_algs, align 128
  %call = tail call zeroext i1 @virtcrypto_algo_is_supported(ptr noundef %vcrypto, i32 noundef %0, i32 noundef %1) #9
  br i1 %call, label %if.end, label %entry.cleanup18_crit_edge

entry.cleanup18_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup18

if.end:                                           ; preds = %entry
  %2 = load i32, ptr getelementptr inbounds ([1 x %struct.virtio_crypto_algo], ptr @virtio_crypto_algs, i32 0, i32 0, i32 2), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp5 = icmp eq i32 %2, 0
  br i1 %cmp5, label %if.then6, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then6:                                         ; preds = %if.end
  %call8 = tail call i32 @crypto_register_skcipher(ptr noundef getelementptr inbounds ([1 x %struct.virtio_crypto_algo], ptr @virtio_crypto_algs, i32 0, i32 0, i32 4)) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool.not = icmp eq i32 %call8, 0
  br i1 %tobool.not, label %if.then6.if.end11_crit_edge, label %if.then6.cleanup18_crit_edge

if.then6.cleanup18_crit_edge:                     ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup18

if.then6.if.end11_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.end11:                                         ; preds = %if.then6.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %3 = load i32, ptr getelementptr inbounds ([1 x %struct.virtio_crypto_algo], ptr @virtio_crypto_algs, i32 0, i32 0, i32 2), align 8
  %inc = add i32 %3, 1
  store i32 %inc, ptr getelementptr inbounds ([1 x %struct.virtio_crypto_algo], ptr @virtio_crypto_algs, i32 0, i32 0, i32 2), align 8
  %4 = ptrtoint ptr %vcrypto to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcrypto, align 8
  %dev = getelementptr inbounds %struct.virtio_device, ptr %5, i32 0, i32 6
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str, ptr noundef getelementptr inbounds ([1 x %struct.virtio_crypto_algo], ptr @virtio_crypto_algs, i32 0, i32 0, i32 4, i32 11, i32 8)) #12
  br label %cleanup18

cleanup18:                                        ; preds = %if.end11, %if.then6.cleanup18_crit_edge, %entry.cleanup18_crit_edge
  %ret.3 = phi i32 [ %call8, %if.then6.cleanup18_crit_edge ], [ 0, %entry.cleanup18_crit_edge ], [ 0, %if.end11 ]
  tail call void @mutex_unlock(ptr noundef nonnull @algs_lock) #9
  ret i32 %ret.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtcrypto_algo_is_supported(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_register_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @virtio_crypto_algs_unregister(ptr noundef %vcrypto) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @algs_lock, i32 noundef 0) #9
  %0 = load i32, ptr getelementptr inbounds ([1 x %struct.virtio_crypto_algo], ptr @virtio_crypto_algs, i32 0, i32 0, i32 2), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %cmp5 = icmp eq i32 %0, 0
  br i1 %cmp5, label %entry.for.end_crit_edge, label %lor.lhs.false

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false:                                    ; preds = %entry
  %1 = load i32, ptr @virtio_crypto_algs, align 128
  %2 = load i32, ptr getelementptr inbounds ([1 x %struct.virtio_crypto_algo], ptr @virtio_crypto_algs, i32 0, i32 0, i32 1), align 4
  %call = tail call zeroext i1 @virtcrypto_algo_is_supported(ptr noundef %vcrypto, i32 noundef %2, i32 noundef %1) #9
  br i1 %call, label %if.end, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end:                                           ; preds = %lor.lhs.false
  %3 = load i32, ptr getelementptr inbounds ([1 x %struct.virtio_crypto_algo], ptr @virtio_crypto_algs, i32 0, i32 0, i32 2), align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp8 = icmp eq i32 %3, 1
  br i1 %cmp8, label %if.then9, label %if.end.if.end11_crit_edge

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @crypto_unregister_skcipher(ptr noundef getelementptr inbounds ([1 x %struct.virtio_crypto_algo], ptr @virtio_crypto_algs, i32 0, i32 0, i32 4)) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %if.end.if.end11_crit_edge
  %4 = load i32, ptr getelementptr inbounds ([1 x %struct.virtio_crypto_algo], ptr @virtio_crypto_algs, i32 0, i32 0, i32 2), align 8
  %dec = add i32 %4, -1
  store i32 %dec, ptr getelementptr inbounds ([1 x %struct.virtio_crypto_algo], ptr @virtio_crypto_algs, i32 0, i32 0, i32 2), align 8
  br label %for.end

for.end:                                          ; preds = %if.end11, %lor.lhs.false.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @algs_lock) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_unregister_skcipher(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents_for_len(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_one(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @virtqueue_add_sgs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_crypto_skcipher_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values)
  switch i32 %keylen, label %entry.cleanup22_crit_edge [
    i32 16, label %entry.if.end_crit_edge
    i32 24, label %entry.if.end_crit_edge44
    i32 32, label %entry.if.end_crit_edge45
  ]

entry.if.end_crit_edge45:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge44:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

entry.cleanup22_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup22

if.end:                                           ; preds = %entry.if.end_crit_edge, %entry.if.end_crit_edge44, %entry.if.end_crit_edge45
  %vcrypto = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %1 = ptrtoint ptr %vcrypto to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %vcrypto, align 4
  %tobool2.not = icmp eq ptr %2, null
  br i1 %tobool2.not, label %if.then3, label %if.else

if.then3:                                         ; preds = %if.end
  %3 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i.i = and i32 %3, -16384
  %4 = inttoptr i32 %and.i.i.i.i to ptr
  %preempt_count.i.i.i = getelementptr inbounds %struct.thread_info, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %preempt_count.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile i32, ptr %preempt_count.i.i.i, align 4
  %add.i.i = add i32 %6, 1
  store volatile i32 %add.i.i, ptr %preempt_count.i.i.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !68
  %7 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i = and i32 %7, -16384
  %8 = inttoptr i32 %and.i.i to ptr
  %cpu1.i = getelementptr inbounds %struct.thread_info, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %cpu1.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %cpu1.i, align 4
  %package_id.i = getelementptr [4 x %struct.cpu_topology], ptr @cpu_topology, i32 0, i32 %10, i32 3
  %11 = ptrtoint ptr %package_id.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %package_id.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !69
  %13 = tail call i32 @llvm.read_register.i32(metadata !54) #9
  %and.i.i.i5.i = and i32 %13, -16384
  %14 = inttoptr i32 %and.i.i.i5.i to ptr
  %preempt_count.i.i6.i = getelementptr inbounds %struct.thread_info, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %preempt_count.i.i6.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile i32, ptr %preempt_count.i.i6.i, align 4
  %sub.i.i = add i32 %16, -1
  store volatile i32 %sub.i.i, ptr %preempt_count.i.i6.i, align 4
  %call6 = tail call ptr @virtcrypto_get_dev_node(i32 noundef %12, i32 noundef 0, i32 noundef 3) #9
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %do.end, label %if.end10

do.end:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %call9 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.18) #12
  br label %cleanup22

if.end10:                                         ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #11
  %17 = ptrtoint ptr %vcrypto to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call6, ptr %vcrypto, align 4
  br label %if.end15

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @virtio_crypto_alg_skcipher_close_session(ptr noundef %__crt_ctx.i.i, i32 noundef 1)
  tail call fastcc void @virtio_crypto_alg_skcipher_close_session(ptr noundef %__crt_ctx.i.i, i32 noundef 0)
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end10
  %18 = ptrtoint ptr %vcrypto to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %vcrypto, align 4
  %max_cipher_key_len.i = getelementptr inbounds %struct.virtio_crypto, ptr %19, i32 0, i32 13
  %20 = ptrtoint ptr %max_cipher_key_len.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %max_cipher_key_len.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %keylen)
  %cmp.i = icmp ult i32 %21, %keylen
  br i1 %cmp.i, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  %call.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.22) #12
  br label %if.then18

if.end.i:                                         ; preds = %if.end15
  %22 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.26)
  switch i32 %keylen, label %if.end.i.if.then18_crit_edge [
    i32 16, label %if.end.i.if.end4.i_crit_edge
    i32 24, label %if.end.i.if.end4.i_crit_edge46
    i32 32, label %if.end.i.if.end4.i_crit_edge47
  ]

if.end.i.if.end4.i_crit_edge47:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end.i.if.end4.i_crit_edge46:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end.i.if.end4.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end4.i

if.end.i.if.then18_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.end4.i:                                        ; preds = %if.end.i.if.end4.i_crit_edge, %if.end.i.if.end4.i_crit_edge46, %if.end.i.if.end4.i_crit_edge47
  %call5.i = tail call fastcc i32 @virtio_crypto_alg_skcipher_init_session(ptr noundef %__crt_ctx.i.i, i32 noundef 3, ptr noundef %key, i32 noundef %keylen, i32 noundef 1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5.i)
  %tobool6.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool6.not.i, label %if.end8.i, label %if.end4.i.if.then18_crit_edge

if.end4.i.if.then18_crit_edge:                    ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then18

if.end8.i:                                        ; preds = %if.end4.i
  %call9.i = tail call fastcc i32 @virtio_crypto_alg_skcipher_init_session(ptr noundef %__crt_ctx.i.i, i32 noundef 3, ptr noundef %key, i32 noundef %keylen, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9.i)
  %tobool10.not.i = icmp eq i32 %call9.i, 0
  br i1 %tobool10.not.i, label %if.end8.i.cleanup22_crit_edge, label %if.then11.i

if.end8.i.cleanup22_crit_edge:                    ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup22

if.then11.i:                                      ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @virtio_crypto_alg_skcipher_close_session(ptr noundef %__crt_ctx.i.i, i32 noundef 1) #9
  br label %if.then18

if.then18:                                        ; preds = %if.then11.i, %if.end4.i.if.then18_crit_edge, %if.end.i.if.then18_crit_edge, %do.end.i
  %retval.0.i36.ph = phi i32 [ -22, %if.end.i.if.then18_crit_edge ], [ %call5.i, %if.end4.i.if.then18_crit_edge ], [ %call9.i, %if.then11.i ], [ -22, %do.end.i ]
  %23 = ptrtoint ptr %vcrypto to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %vcrypto, align 4
  tail call void @virtcrypto_dev_put(ptr noundef %24) #9
  %25 = ptrtoint ptr %vcrypto to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %vcrypto, align 4
  br label %cleanup22

cleanup22:                                        ; preds = %if.then18, %if.end8.i.cleanup22_crit_edge, %do.end, %entry.cleanup22_crit_edge
  %retval.1 = phi i32 [ %retval.0.i36.ph, %if.then18 ], [ -19, %do.end ], [ -22, %entry.cleanup22_crit_edge ], [ 0, %if.end8.i.cleanup22_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_crypto_skcipher_encrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %vcrypto3 = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %vcrypto3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcrypto3, align 4
  %data_vq4 = getelementptr inbounds %struct.virtio_crypto, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %data_vq4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_vq4, align 8
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool6.not = icmp eq i32 %rem, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dataq = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %8 = ptrtoint ptr %dataq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %dataq, align 4
  %alg_cb = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4
  %9 = ptrtoint ptr %alg_cb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @virtio_crypto_dataq_sym_callback, ptr %alg_cb, align 4
  %skcipher_ctx = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 1
  %10 = ptrtoint ptr %skcipher_ctx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %__crt_ctx.i.i, ptr %skcipher_ctx, align 4
  %skcipher_req = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 2
  %11 = ptrtoint ptr %skcipher_req to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %req, ptr %skcipher_req, align 4
  %encrypt = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 4
  %12 = ptrtoint ptr %encrypt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 1, ptr %encrypt, align 4
  %engine = getelementptr inbounds %struct.data_queue, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %engine, align 4
  %call9 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %14, ptr noundef %req) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @virtio_crypto_skcipher_decrypt(ptr noundef %req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %vcrypto3 = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %vcrypto3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcrypto3, align 4
  %data_vq4 = getelementptr inbounds %struct.virtio_crypto, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %data_vq4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data_vq4, align 8
  %6 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %req, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool6.not = icmp eq i32 %rem, 0
  br i1 %tobool6.not, label %if.end8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %dataq = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 3
  %8 = ptrtoint ptr %dataq to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %dataq, align 4
  %alg_cb = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4
  %9 = ptrtoint ptr %alg_cb to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @virtio_crypto_dataq_sym_callback, ptr %alg_cb, align 4
  %skcipher_ctx = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 1
  %10 = ptrtoint ptr %skcipher_ctx to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %__crt_ctx.i.i, ptr %skcipher_ctx, align 4
  %skcipher_req = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 2
  %11 = ptrtoint ptr %skcipher_req to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %req, ptr %skcipher_req, align 4
  %encrypt = getelementptr inbounds %struct.skcipher_request, ptr %req, i32 1, i32 4, i32 4
  %12 = ptrtoint ptr %encrypt to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 0, ptr %encrypt, align 4
  %engine = getelementptr inbounds %struct.data_queue, ptr %5, i32 0, i32 3
  %13 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %engine, align 4
  %call9 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %14, ptr noundef %req) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call9, %if.end8 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync)
define internal i32 @virtio_crypto_skcipher_init(ptr noundef %tfm) #7 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %0 = ptrtoint ptr %tfm to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 40, ptr %tfm, align 128
  %tfm1 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %1 = ptrtoint ptr %tfm1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %tfm, ptr %tfm1, align 8
  %do_one_request = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 4
  %2 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr @virtio_crypto_skcipher_crypt_req, ptr %do_one_request, align 8
  %3 = ptrtoint ptr %__crt_ctx.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr null, ptr %__crt_ctx.i.i, align 8
  %unprepare_request = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1
  %4 = ptrtoint ptr %unprepare_request to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %unprepare_request, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_crypto_skcipher_exit(ptr nocapture noundef %tfm) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %vcrypto = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %0 = ptrtoint ptr %vcrypto to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vcrypto, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  tail call fastcc void @virtio_crypto_alg_skcipher_close_session(ptr noundef %__crt_ctx.i.i, i32 noundef 1)
  tail call fastcc void @virtio_crypto_alg_skcipher_close_session(ptr noundef %__crt_ctx.i.i, i32 noundef 0)
  %2 = ptrtoint ptr %vcrypto to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vcrypto, align 4
  tail call void @virtcrypto_dev_put(ptr noundef %3) #9
  %4 = ptrtoint ptr %vcrypto to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %vcrypto, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtcrypto_get_dev_node(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @virtio_crypto_alg_skcipher_close_session(ptr nocapture noundef readonly %ctx, i32 noundef %encrypt) unnamed_addr #0 align 64 {
entry:
  %outhdr = alloca %struct.scatterlist, align 4
  %status_sg = alloca %struct.scatterlist, align 4
  %sgs = alloca [2 x ptr], align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %outhdr) #9
  %0 = call ptr @memset(ptr %outhdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %status_sg) #9
  %1 = call ptr @memset(ptr %status_sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %sgs) #9
  %2 = getelementptr inbounds [2 x ptr], ptr %sgs, i32 0, i32 1
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp, align 4, !annotation !70
  %vcrypto1 = getelementptr inbounds %struct.virtio_crypto_skcipher_ctx, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %vcrypto1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcrypto1, align 4
  %ctrl_lock = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %ctrl_lock) #9
  %ctrl_status = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 18
  %6 = ptrtoint ptr %ctrl_status to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %ctrl_status, align 8
  %ctrl = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 16
  %7 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 50331648, ptr %ctrl, align 8
  %queue_id = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 16, i32 0, i32 3
  %8 = ptrtoint ptr %queue_id to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %queue_id, align 4
  %u = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 16, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %encrypt)
  %tobool.not = icmp eq i32 %encrypt, 0
  %dec_sess_info = getelementptr inbounds %struct.virtio_crypto_skcipher_ctx, ptr %ctx, i32 0, i32 4
  %enc_sess_info = getelementptr inbounds %struct.virtio_crypto_skcipher_ctx, ptr %ctx, i32 0, i32 3
  %dec_sess_info.sink = select i1 %tobool.not, ptr %dec_sess_info, ptr %enc_sess_info
  %9 = ptrtoint ptr %dec_sess_info.sink to i32
  call void @__asan_load8_noabort(i32 %9)
  %10 = load i64, ptr %dec_sess_info.sink, align 8
  %11 = tail call i64 @llvm.bswap.i64(i64 %10)
  %12 = ptrtoint ptr %u to i32
  call void @__asan_store8_noabort(i32 %12)
  store i64 %11, ptr %u, align 8
  call void @sg_init_one(ptr noundef nonnull %outhdr, ptr noundef %ctrl, i32 noundef 72) #9
  %13 = ptrtoint ptr %sgs to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %outhdr, ptr %sgs, align 4
  call void @sg_init_one(ptr noundef nonnull %status_sg, ptr noundef %ctrl_status, i32 noundef 1) #9
  %14 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %status_sg, ptr %2, align 4
  %ctrl_vq = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 1
  %15 = ptrtoint ptr %ctrl_vq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ctrl_vq, align 4
  %call = call i32 @virtqueue_add_sgs(ptr noundef %16, ptr noundef nonnull %sgs, i32 noundef 1, i32 noundef 1, ptr noundef %5, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then13, label %if.end15

if.then13:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %ctrl_lock) #9
  br label %cleanup

if.end15:                                         ; preds = %entry
  %17 = ptrtoint ptr %ctrl_vq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ctrl_vq, align 4
  %call17 = call zeroext i1 @virtqueue_kick(ptr noundef %18) #9
  %19 = ptrtoint ptr %ctrl_vq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %ctrl_vq, align 4
  %call191 = call ptr @virtqueue_get_buf(ptr noundef %20, ptr noundef nonnull %tmp) #9
  %tobool20.not2 = icmp eq ptr %call191, null
  br i1 %tobool20.not2, label %if.end15.land.rhs_crit_edge, label %if.end15.while.end_crit_edge

if.end15.while.end_crit_edge:                     ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end15.land.rhs_crit_edge:                      ; preds = %if.end15
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %if.end15.land.rhs_crit_edge
  %21 = ptrtoint ptr %ctrl_vq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl_vq, align 4
  %call22 = call zeroext i1 @virtqueue_is_broken(ptr noundef %22) #9
  br i1 %call22, label %land.rhs.while.end_crit_edge, label %do.end

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %land.rhs
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !71
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !72
  %23 = ptrtoint ptr %ctrl_vq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrl_vq, align 4
  %call19 = call ptr @virtqueue_get_buf(ptr noundef %24, ptr noundef nonnull %tmp) #9
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %do.end.land.rhs_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end:                                        ; preds = %do.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end15.while.end_crit_edge
  %25 = ptrtoint ptr %ctrl_status to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %ctrl_status, align 8
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %cmp31.not = icmp eq i8 %26, 0
  call void @_raw_spin_unlock(ptr noundef %ctrl_lock) #9
  br i1 %cmp31.not, label %while.end.cleanup_crit_edge, label %if.then33

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then33:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %27 = ptrtoint ptr %ctrl_status to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %ctrl_status, align 8
  %conv41 = zext i8 %28 to i32
  %29 = ptrtoint ptr %u to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %u, align 8
  %call43 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.20, i32 noundef %conv41, i64 noundef %30) #12
  br label %cleanup

cleanup:                                          ; preds = %if.then33, %while.end.cleanup_crit_edge, %if.then13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %sgs) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %status_sg) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %outhdr) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtcrypto_dev_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @virtqueue_get_buf(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @virtqueue_is_broken(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @virtio_crypto_alg_skcipher_init_session(ptr nocapture noundef %ctx, i32 noundef %alg, ptr noundef %key, i32 noundef %keylen, i32 noundef %encrypt) unnamed_addr #0 align 64 {
entry:
  %outhdr = alloca %struct.scatterlist, align 4
  %key_sg = alloca %struct.scatterlist, align 4
  %inhdr = alloca %struct.scatterlist, align 4
  %sgs = alloca [3 x ptr], align 4
  %tmp = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %outhdr) #9
  %0 = call ptr @memset(ptr %outhdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %key_sg) #9
  %1 = call ptr @memset(ptr %key_sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %inhdr) #9
  %2 = call ptr @memset(ptr %inhdr, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 12, ptr nonnull %sgs) #9
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %tmp) #9
  %3 = ptrtoint ptr %tmp to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %tmp, align 4, !annotation !70
  %vcrypto1 = getelementptr inbounds %struct.virtio_crypto_skcipher_ctx, ptr %ctx, i32 0, i32 1
  %4 = ptrtoint ptr %vcrypto1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vcrypto1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %encrypt)
  %tobool.not = icmp eq i32 %encrypt, 0
  %call = tail call ptr @kmemdup(ptr noundef %key, i32 noundef %keylen, i32 noundef 2592) #9
  %tobool2.not = icmp eq ptr %call, null
  br i1 %tobool2.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = getelementptr inbounds [3 x ptr], ptr %sgs, i32 0, i32 2
  %7 = getelementptr inbounds [3 x ptr], ptr %sgs, i32 0, i32 1
  %cond = select i1 %tobool.not, i32 33554432, i32 16777216
  %ctrl_lock = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %ctrl_lock) #9
  %ctrl = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 16
  %8 = ptrtoint ptr %ctrl to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 33554432, ptr %ctrl, align 8
  %9 = tail call i32 @llvm.bswap.i32(i32 %alg)
  %algo = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 16, i32 0, i32 1
  %10 = ptrtoint ptr %algo to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %algo, align 4
  %queue_id = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 16, i32 0, i32 3
  %11 = ptrtoint ptr %queue_id to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %queue_id, align 4
  %input = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 17
  %status = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 17, i32 1
  %12 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 16777216, ptr %status, align 8
  %u = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 16, i32 1
  %op_type = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 16, i32 1, i32 0, i32 1, i32 40
  %13 = ptrtoint ptr %op_type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 16777216, ptr %op_type, align 8
  %14 = ptrtoint ptr %u to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %9, ptr %u, align 8
  %15 = tail call i32 @llvm.bswap.i32(i32 %keylen)
  %keylen19 = getelementptr inbounds %struct.virtio_crypto_cipher_session_para, ptr %u, i32 0, i32 1
  %16 = ptrtoint ptr %keylen19 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %keylen19, align 4
  %op24 = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 16, i32 1, i32 0, i32 1
  %17 = ptrtoint ptr %op24 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %cond, ptr %op24, align 8
  call void @sg_init_one(ptr noundef nonnull %outhdr, ptr noundef %ctrl, i32 noundef 72) #9
  %18 = ptrtoint ptr %sgs to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %outhdr, ptr %sgs, align 4
  call void @sg_init_one(ptr noundef nonnull %key_sg, ptr noundef nonnull %call, i32 noundef %keylen) #9
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %key_sg, ptr %7, align 4
  call void @sg_init_one(ptr noundef nonnull %inhdr, ptr noundef %input, i32 noundef 16) #9
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %inhdr, ptr %6, align 4
  %ctrl_vq = getelementptr inbounds %struct.virtio_crypto, ptr %5, i32 0, i32 1
  %21 = ptrtoint ptr %ctrl_vq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ctrl_vq, align 4
  %call31 = call i32 @virtqueue_add_sgs(ptr noundef %22, ptr noundef nonnull %sgs, i32 noundef 2, i32 noundef 1, ptr noundef %5, i32 noundef 2592) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %if.then32, label %if.end34

if.then32:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %ctrl_lock) #9
  br label %cleanup.sink.split

if.end34:                                         ; preds = %if.end
  %23 = ptrtoint ptr %ctrl_vq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ctrl_vq, align 4
  %call36 = call zeroext i1 @virtqueue_kick(ptr noundef %24) #9
  %25 = ptrtoint ptr %ctrl_vq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ctrl_vq, align 4
  %call38117 = call ptr @virtqueue_get_buf(ptr noundef %26, ptr noundef nonnull %tmp) #9
  %tobool39.not118 = icmp eq ptr %call38117, null
  br i1 %tobool39.not118, label %if.end34.land.rhs_crit_edge, label %if.end34.while.end_crit_edge

if.end34.while.end_crit_edge:                     ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.end34.land.rhs_crit_edge:                      ; preds = %if.end34
  br label %land.rhs

land.rhs:                                         ; preds = %do.end.land.rhs_crit_edge, %if.end34.land.rhs_crit_edge
  %27 = ptrtoint ptr %ctrl_vq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %ctrl_vq, align 4
  %call41 = call zeroext i1 @virtqueue_is_broken(ptr noundef %28) #9
  br i1 %call41, label %land.rhs.while.end_crit_edge, label %do.end

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end:                                           ; preds = %land.rhs
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !73
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !74
  %29 = ptrtoint ptr %ctrl_vq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ctrl_vq, align 4
  %call38 = call ptr @virtqueue_get_buf(ptr noundef %30, ptr noundef nonnull %tmp) #9
  %tobool39.not = icmp eq ptr %call38, null
  br i1 %tobool39.not, label %do.end.land.rhs_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end.land.rhs_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

while.end:                                        ; preds = %do.end.while.end_crit_edge, %land.rhs.while.end_crit_edge, %if.end34.while.end_crit_edge
  %31 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %status, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp50.not = icmp eq i32 %32, 0
  br i1 %cmp50.not, label %if.end60, label %if.then51

if.then51:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock(ptr noundef %ctrl_lock) #9
  %33 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %status, align 8
  %35 = call i32 @llvm.bswap.i32(i32 %34)
  %call59 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.24, i32 noundef %35) #12
  br label %cleanup.sink.split

if.end60:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  %36 = ptrtoint ptr %input to i32
  call void @__asan_load8_noabort(i32 %36)
  %37 = load i64, ptr %input, align 8
  %38 = call i64 @llvm.bswap.i64(i64 %37)
  %dec_sess_info = getelementptr inbounds %struct.virtio_crypto_skcipher_ctx, ptr %ctx, i32 0, i32 4
  %enc_sess_info = getelementptr inbounds %struct.virtio_crypto_skcipher_ctx, ptr %ctx, i32 0, i32 3
  %dec_sess_info.sink = select i1 %tobool.not, ptr %dec_sess_info, ptr %enc_sess_info
  %39 = ptrtoint ptr %dec_sess_info.sink to i32
  call void @__asan_store8_noabort(i32 %39)
  store i64 %38, ptr %dec_sess_info.sink, align 8
  call void @_raw_spin_unlock(ptr noundef %ctrl_lock) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %if.end60, %if.then51, %if.then32
  %retval.0.ph = phi i32 [ 0, %if.end60 ], [ -22, %if.then51 ], [ %call31, %if.then32 ]
  call void @kfree_sensitive(ptr noundef nonnull %call) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %tmp) #9
  call void @llvm.lifetime.end.p0(i64 12, ptr nonnull %sgs) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %inhdr) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %key_sg) #9
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %outhdr) #9
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @virtio_crypto_dataq_sym_callback(ptr noundef %vc_req, i32 noundef %len) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %type = getelementptr inbounds %struct.virtio_crypto_sym_request, ptr %vc_req, i32 0, i32 1
  %0 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp = icmp eq i32 %1, 1
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %2 = ptrtoint ptr %vc_req to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %vc_req, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 5, i8 %3)
  %4 = icmp ult i8 %3, 5
  br i1 %4, label %switch.lookup, label %if.then.sw.epilog_crit_edge

if.then.sw.epilog_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

switch.lookup:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %5 = sext i8 %3 to i32
  %switch.gep = getelementptr inbounds [5 x i32], ptr @switch.table.virtio_crypto_dataq_sym_callback, i32 0, i32 %5
  %6 = ptrtoint ptr %switch.gep to i32
  call void @__asan_load4_noabort(i32 %6)
  %switch.load = load i32, ptr %switch.gep, align 4
  br label %sw.epilog

sw.epilog:                                        ; preds = %switch.lookup, %if.then.sw.epilog_crit_edge
  %error.0 = phi i32 [ %switch.load, %switch.lookup ], [ -5, %if.then.sw.epilog_crit_edge ]
  %skcipher_req = getelementptr inbounds %struct.virtio_crypto_sym_request, ptr %vc_req, i32 0, i32 3
  %7 = ptrtoint ptr %skcipher_req to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %skcipher_req, align 4
  %encrypt.i = getelementptr inbounds %struct.virtio_crypto_sym_request, ptr %vc_req, i32 0, i32 5
  %9 = ptrtoint ptr %encrypt.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %encrypt.i, align 4, !range !66
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i = icmp eq i8 %10, 0
  br i1 %tobool.not.i, label %sw.epilog.virtio_crypto_skcipher_finalize_req.exit_crit_edge, label %if.then.i

sw.epilog.virtio_crypto_skcipher_finalize_req.exit_crit_edge: ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %virtio_crypto_skcipher_finalize_req.exit

if.then.i:                                        ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %8, i32 0, i32 1
  %11 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iv.i, align 4
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %8, i32 0, i32 3
  %13 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dst.i, align 4
  %15 = ptrtoint ptr %8 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %8, align 128
  %sub.i = add i32 %16, -16
  tail call void @scatterwalk_map_and_copy(ptr noundef %12, ptr noundef %14, i32 noundef %sub.i, i32 noundef 16, i32 noundef 0) #9
  br label %virtio_crypto_skcipher_finalize_req.exit

virtio_crypto_skcipher_finalize_req.exit:         ; preds = %if.then.i, %sw.epilog.virtio_crypto_skcipher_finalize_req.exit_crit_edge
  %iv1.i = getelementptr inbounds %struct.virtio_crypto_sym_request, ptr %vc_req, i32 0, i32 4
  %17 = ptrtoint ptr %iv1.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %iv1.i, align 4
  tail call void @kfree_sensitive(ptr noundef %18) #9
  tail call void @virtcrypto_clear_request(ptr noundef %vc_req) #9
  %dataq.i = getelementptr inbounds %struct.virtio_crypto_request, ptr %vc_req, i32 0, i32 3
  %19 = ptrtoint ptr %dataq.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dataq.i, align 4
  %engine.i = getelementptr inbounds %struct.data_queue, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %engine.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %engine.i, align 4
  tail call void @crypto_finalize_skcipher_request(ptr noundef %22, ptr noundef %8, i32 noundef %error.0) #9
  br label %if.end

if.end:                                           ; preds = %virtio_crypto_skcipher_finalize_req.exit, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @virtcrypto_clear_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_skcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn writeonly uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #8 = { nounwind readonly }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !26, !27, !28, !30, !31, !32, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !53}
!llvm.named.register.sp = !{!54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/virtio/virtio_crypto_algs.c", i32 638, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @virtio_crypto_algs_register._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @virtio_crypto_algs_register._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/virtio/virtio_crypto_algs.c", i32 361, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @__virtio_crypto_skcipher_do_req._entry, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @__virtio_crypto_skcipher_do_req._entry_ptr, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/crypto/virtio/virtio_crypto_algs.c", i32 367, i32 2}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @__virtio_crypto_skcipher_do_req.__UNIQUE_ID_ddebug244, !14, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/crypto/virtio/virtio_crypto_algs.c", i32 405, i32 3}
!19 = !{ptr @__virtio_crypto_skcipher_do_req._entry.9, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @__virtio_crypto_skcipher_do_req._entry_ptr.11, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/crypto/virtio/virtio_crypto_algs.c", i32 411, i32 2}
!23 = !{ptr @__virtio_crypto_skcipher_do_req.__UNIQUE_ID_ddebug247, !22, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!24 = !{ptr @.str.14, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/crypto/virtio/virtio_crypto_algs.c", i32 416, i32 3}
!26 = !{ptr @__virtio_crypto_skcipher_do_req._entry.13, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @__virtio_crypto_skcipher_do_req._entry_ptr.15, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.16, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/crypto/virtio/virtio_crypto_algs.c", i32 52, i32 8}
!30 = !{ptr @.str.17, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @algs_lock, !29, !"algs_lock", i1 false, i1 false}
!32 = !{ptr @virtio_crypto_algs, !33, !"virtio_crypto_algs", i1 false, i1 false}
!33 = !{!"../drivers/crypto/virtio/virtio_crypto_algs.c", i32 593, i32 34}
!34 = !{ptr @.str.18, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/virtio/virtio_crypto_algs.c", i32 316, i32 4}
!36 = !{ptr @.str.19, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @virtio_crypto_skcipher_setkey._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @virtio_crypto_skcipher_setkey._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.20, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/crypto/virtio/virtio_crypto_algs.c", i32 254, i32 3}
!41 = !{ptr @.str.21, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @virtio_crypto_alg_skcipher_close_session._entry, !40, !"_entry", i1 false, i1 false}
!43 = !{ptr @virtio_crypto_alg_skcipher_close_session._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.22, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/crypto/virtio/virtio_crypto_algs.c", i32 274, i32 3}
!46 = !{ptr @.str.23, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @virtio_crypto_alg_skcipher_init_sessions._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @virtio_crypto_alg_skcipher_init_sessions._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/crypto/virtio/virtio_crypto_algs.c", i32 185, i32 3}
!51 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @virtio_crypto_alg_skcipher_init_session._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @virtio_crypto_alg_skcipher_init_session._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{!"sp"}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2148203795, i64 2148203800, i64 2148203813, i64 2148203857, i64 2148203891, i64 2148203912}
!65 = !{!"branch_weights", i32 1, i32 2000}
!66 = !{i8 0, i8 2}
!67 = !{!"branch_weights", i32 2000, i32 1}
!68 = !{i64 2154381112}
!69 = !{i64 2154381314}
!70 = !{!"auto-init"}
!71 = !{i64 2154388471}
!72 = !{i64 2154388313}
!73 = !{i64 2154385012}
!74 = !{i64 2154384854}
