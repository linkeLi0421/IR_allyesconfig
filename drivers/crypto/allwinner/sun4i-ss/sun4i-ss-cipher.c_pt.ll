; ModuleID = '/llk/IR_all_yes/drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.2 }
%union.anon.2 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.sg_mapping_iter = type { ptr, ptr, i32, i32, %struct.sg_page_iter, i32, i32, i32 }
%struct.sg_page_iter = type { ptr, i32, i32, i32 }
%struct.sun4i_ss_ctx = type { ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr, [128 x i8], [132 x i8], %struct.spinlock, [6 x i32], ptr, ptr }
%struct.spinlock = type { %union.anon.1 }
%union.anon.1 = type { %struct.raw_spinlock }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon, ptr, ptr, ptr, ptr, %union.anon.68, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.68 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
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
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.des_ctx = type { [32 x i32] }

@sun4i_ss_cipher_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 556, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ERROR: Cannot allocate fallback for %s %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun4i_ss_cipher_init\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun4i_ss_cipher_init._entry_ptr = internal global ptr @sun4i_ss_cipher_init._entry, section ".printk_index", align 4
@sun4i_ss_aes_setkey.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 -106, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sun4i_ss\00", [23 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun4i_ss_aes_setkey\00", [44 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ERROR: Invalid keylen %u\0A\00", [38 x i8] zeroinitializer }, align 32
@sun4i_ss_cipher_poll._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@__func__.sun4i_ss_cipher_poll = private unnamed_addr constant [21 x i8] c"sun4i_ss_cipher_poll\00", align 1
@sun4i_ss_cipher_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.sun4i_ss_cipher_poll, ptr @.str.2, i32 217, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ERROR: Some SGs are NULL\0A\00", [38 x i8] zeroinitializer }, align 32
@sun4i_ss_cipher_poll._entry_ptr = internal global ptr @sun4i_ss_cipher_poll._entry, section ".printk_index", align 4
@sun4i_ss_cipher_poll._rs.10 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sun4i_ss_cipher_poll._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.sun4i_ss_cipher_poll, ptr @.str.2, i32 284, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ERROR: sg_miter return null\0A\00", [35 x i8] zeroinitializer }, align 32
@sun4i_ss_cipher_poll._entry_ptr.13 = internal global ptr @sun4i_ss_cipher_poll._entry.11, section ".printk_index", align 4
@sun4i_ss_cipher_poll._rs.14 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sun4i_ss_cipher_poll._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.sun4i_ss_cipher_poll, ptr @.str.2, i32 338, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun4i_ss_cipher_poll._entry_ptr.16 = internal global ptr @sun4i_ss_cipher_poll._entry.15, section ".printk_index", align 4
@sun4i_ss_opti_poll._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@__func__.sun4i_ss_opti_poll = private unnamed_addr constant [19 x i8] c"sun4i_ss_opti_poll\00", align 1
@sun4i_ss_opti_poll._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @__func__.sun4i_ss_opti_poll, ptr @.str.2, i32 46, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun4i_ss_opti_poll._entry_ptr = internal global ptr @sun4i_ss_opti_poll._entry, section ".printk_index", align 4
@sun4i_ss_opti_poll._rs.17 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sun4i_ss_opti_poll._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.sun4i_ss_opti_poll, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun4i_ss_opti_poll._entry_ptr.19 = internal global ptr @sun4i_ss_opti_poll._entry.18, section ".printk_index", align 4
@sun4i_ss_opti_poll._rs.20 = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.8, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@sun4i_ss_opti_poll._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @__func__.sun4i_ss_opti_poll, ptr @.str.2, i32 117, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun4i_ss_opti_poll._entry_ptr.22 = internal global ptr @sun4i_ss_opti_poll._entry.21, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 555, i32 3 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 600, i32 3 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 217, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 284, i32 5 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 338, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 46, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 89, i32 5 }
@___asan_gen_.89 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.93 = private constant [55 x i8] c"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 117, i32 4 }
@llvm.compiler.used = appending global [31 x ptr] [ptr @sun4i_ss_cipher_init._entry, ptr @sun4i_ss_cipher_init._entry_ptr, ptr @sun4i_ss_cipher_poll._entry, ptr @sun4i_ss_cipher_poll._entry.11, ptr @sun4i_ss_cipher_poll._entry.15, ptr @sun4i_ss_cipher_poll._entry_ptr, ptr @sun4i_ss_cipher_poll._entry_ptr.13, ptr @sun4i_ss_cipher_poll._entry_ptr.16, ptr @sun4i_ss_opti_poll._entry, ptr @sun4i_ss_opti_poll._entry.18, ptr @sun4i_ss_opti_poll._entry.21, ptr @sun4i_ss_opti_poll._entry_ptr, ptr @sun4i_ss_opti_poll._entry_ptr.19, ptr @sun4i_ss_opti_poll._entry_ptr.22, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @sun4i_ss_cipher_poll._rs, ptr @.str.8, ptr @.str.9, ptr @sun4i_ss_cipher_poll._rs.10, ptr @.str.12, ptr @sun4i_ss_cipher_poll._rs.14, ptr @sun4i_ss_opti_poll._rs, ptr @sun4i_ss_opti_poll._rs.17, ptr @sun4i_ss_opti_poll._rs.20], section "llvm.metadata"
@0 = internal global [24 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_cipher_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_cipher_poll._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_cipher_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_cipher_poll._rs.10 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_cipher_poll._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_cipher_poll._rs.14 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_cipher_poll._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_opti_poll._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_opti_poll._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_opti_poll._rs.17 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_opti_poll._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_opti_poll._rs.20 to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun4i_ss_opti_poll._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_cbc_aes_encrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %keymode = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %keymode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymode, align 4
  %or = or i32 %3, 4097
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %__ctx.i, align 128
  %call3 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %areq)
  ret i32 %call3
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %areq) unnamed_addr #0 align 64 {
entry:
  %v = alloca i32, align 4
  %mi = alloca %struct.sg_mapping_iter, align 4
  %mo = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %ss2 = getelementptr i8, ptr %1, i32 168
  %2 = ptrtoint ptr %ss2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ss2, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %4 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %6 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dst, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %8 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %9, i32 -100
  %10 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ivsize.i, align 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %12 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %__ctx.i, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #8
  %14 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %v, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mi) #8
  %15 = call ptr @memset(ptr %mi, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mo) #8
  %16 = call ptr @memset(ptr %mo, i32 255, i32 44)
  %17 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %areq, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not = icmp eq i32 %18, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool10.not = icmp eq ptr %5, null
  %tobool12.not = icmp eq ptr %7, null
  %or.cond550 = select i1 %tobool10.not, i1 true, i1 %tobool12.not
  br i1 %or.cond550, label %do.body, label %if.end21

do.body:                                          ; preds = %if.end
  %call14 = tail call i32 @___ratelimit(ptr noundef nonnull @sun4i_ss_cipher_poll._rs, ptr noundef nonnull @__func__.sun4i_ss_cipher_poll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %tobool15.not = icmp eq i32 %call14, 0
  br i1 %tobool15.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 6
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %20, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end21:                                         ; preds = %if.end
  %cra_blocksize = getelementptr i8, ptr %9, i32 20
  %21 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %cra_blocksize, align 4
  %rem = urem i32 %18, %22
  br label %while.body

while.cond32.preheader:                           ; preds = %while.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool24.not = icmp eq i32 %rem, 0
  br i1 %tobool28.not, label %while.cond32.preheader.while.body37_crit_edge, label %while.cond32.preheader.if.end51_crit_edge

while.cond32.preheader.if.end51_crit_edge:        ; preds = %while.cond32.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

while.cond32.preheader.while.body37_crit_edge:    ; preds = %while.cond32.preheader
  br label %while.body37

while.body:                                       ; preds = %while.body.while.body_crit_edge, %if.end21
  %in_sg.0552 = phi ptr [ %5, %if.end21 ], [ %call31, %while.body.while.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %in_sg.0552, i32 0, i32 2
  %23 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %length, align 4
  %offset = getelementptr inbounds %struct.scatterlist, ptr %in_sg.0552, i32 0, i32 1
  %25 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %offset, align 4
  %or = or i32 %26, %24
  %and = and i32 %or, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool28.not = icmp eq i32 %and, 0
  %call31 = tail call ptr @sg_next(ptr noundef nonnull %in_sg.0552) #8
  %tobool27.not = icmp ne ptr %call31, null
  %or.cond = and i1 %tobool27.not, %tobool28.not
  br i1 %or.cond, label %while.body.while.body_crit_edge, label %while.cond32.preheader

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

while.body37:                                     ; preds = %while.body37.while.body37_crit_edge, %while.cond32.preheader.while.body37_crit_edge
  %out_sg.0556 = phi ptr [ %call45, %while.body37.while.body37_crit_edge ], [ %7, %while.cond32.preheader.while.body37_crit_edge ]
  %length38 = getelementptr inbounds %struct.scatterlist, ptr %out_sg.0556, i32 0, i32 2
  %27 = ptrtoint ptr %length38 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %length38, align 4
  %offset39 = getelementptr inbounds %struct.scatterlist, ptr %out_sg.0556, i32 0, i32 1
  %29 = ptrtoint ptr %offset39 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %offset39, align 4
  %or40 = or i32 %30, %28
  %and41 = and i32 %or40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and41)
  %tobool42.not = icmp eq i32 %and41, 0
  %call45 = tail call ptr @sg_next(ptr noundef nonnull %out_sg.0556) #8
  %tobool33.not = icmp ne ptr %call45, null
  %or.cond540 = select i1 %tobool33.not, i1 %tobool42.not, i1 false
  br i1 %or.cond540, label %while.body37.while.body37_crit_edge, label %while.end46

while.body37.while.body37_crit_edge:              ; preds = %while.body37
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body37

while.end46:                                      ; preds = %while.body37
  %31 = select i1 %tobool42.not, i1 %tobool24.not, i1 false
  br i1 %31, label %if.then49, label %while.end46.if.end51_crit_edge

while.end46.if.end51_crit_edge:                   ; preds = %while.end46
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end51

if.then49:                                        ; preds = %while.end46
  call void @__sanitizer_cov_trace_pc() #10
  %call50 = tail call fastcc i32 @sun4i_ss_opti_poll(ptr noundef %areq)
  br label %cleanup

if.end51:                                         ; preds = %while.end46.if.end51_crit_edge, %while.cond32.preheader.if.end51_crit_edge
  br i1 %tobool24.not, label %if.end55, label %if.then53

if.then53:                                        ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #10
  %call54 = tail call fastcc i32 @sun4i_ss_cipher_poll_fallback(ptr noundef %areq)
  br label %cleanup

if.end55:                                         ; preds = %if.end51
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 1
  %32 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %iv, align 4
  %tobool56.not = icmp eq ptr %33, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp58.not = icmp eq i32 %11, 0
  %or.cond542 = select i1 %tobool56.not, i1 true, i1 %cmp58.not
  %and60 = and i32 %13, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool61.not = icmp eq i32 %and60, 0
  %or.cond543 = select i1 %or.cond542, i1 true, i1 %tobool61.not
  br i1 %or.cond543, label %if.end55.if.end69_crit_edge, label %if.end8.i.i

if.end55.if.end69_crit_edge:                      ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end69

if.end8.i.i:                                      ; preds = %if.end55
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3520) #12
  %tobool64.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool64.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end66

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end66:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %34 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %src, align 8
  %36 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %areq, align 128
  %sub = sub i32 %37, %11
  tail call void @scatterwalk_map_and_copy(ptr noundef nonnull %call9.i.i, ptr noundef %35, i32 noundef %sub, i32 noundef %11, i32 noundef 0) #8
  br label %if.end69

if.end69:                                         ; preds = %if.end66, %if.end55.if.end69_crit_edge
  %backup_iv.0 = phi ptr [ %call9.i.i, %if.end66 ], [ null, %if.end55.if.end69_crit_edge ]
  %stat_req = getelementptr i8, ptr %9, i32 644
  %38 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %stat_req, align 4
  %inc = add i32 %39, 1
  store i32 %inc, ptr %stat_req, align 4
  %40 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %areq, align 128
  %stat_bytes = getelementptr i8, ptr %9, i32 652
  %42 = ptrtoint ptr %stat_bytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %stat_bytes, align 4
  %add = add i32 %43, %41
  store i32 %add, ptr %stat_bytes, align 4
  %slock = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 10
  %call76 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %keylen = getelementptr i8, ptr %1, i32 160
  %44 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %45)
  %cmp81559.not = icmp ult i32 %45, 4
  br i1 %cmp81559.not, label %if.end69.for.end_crit_edge, label %for.body.lr.ph

if.end69.for.end_crit_edge:                       ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end69
  %base83 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0560 = phi i32 [ 0, %for.body.lr.ph ], [ %inc86, %for.body.for.body_crit_edge ]
  %46 = ptrtoint ptr %base83 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base83, align 4
  %add.ptr84 = getelementptr i8, ptr %47, i32 4
  %mul = shl i32 %i.0560, 2
  %add.ptr85 = getelementptr i8, ptr %add.ptr84, i32 %mul
  %arrayidx = getelementptr [8 x i32], ptr %__crt_ctx.i.i, i32 0, i32 %i.0560
  tail call void @__raw_writesl(ptr noundef %add.ptr85, ptr noundef %arrayidx, i32 noundef 1) #8
  %inc86 = add nuw nsw i32 %i.0560, 1
  %48 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %keylen, align 4
  %div532 = lshr i32 %49, 2
  %cmp81 = icmp ult i32 %inc86, %div532
  br i1 %cmp81, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end69.for.end_crit_edge
  %50 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iv, align 4
  %tobool88.not = icmp eq ptr %51, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %11)
  %cmp95561.not = icmp ult i32 %11, 4
  %or.cond573 = select i1 %tobool88.not, i1 true, i1 %cmp95561.not
  br i1 %or.cond573, label %for.end.do.body110_crit_edge, label %for.body98.lr.ph

for.end.do.body110_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body110

for.body98.lr.ph:                                 ; preds = %for.end
  %base102 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 1
  %52 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %iv, align 4
  %54 = ptrtoint ptr %53 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %53, align 4
  %56 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %v, align 4
  %57 = ptrtoint ptr %base102 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base102, align 4
  %add.ptr103 = getelementptr i8, ptr %58, i32 36
  call void @__raw_writesl(ptr noundef %add.ptr103, ptr noundef nonnull %v, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %11)
  %cmp95 = icmp ugt i32 %11, 7
  br i1 %cmp95, label %for.body98.1, label %for.body98.lr.ph.do.body110_crit_edge

for.body98.lr.ph.do.body110_crit_edge:            ; preds = %for.body98.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body110

for.body98.1:                                     ; preds = %for.body98.lr.ph
  %59 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iv, align 4
  %add.ptr101.1 = getelementptr i8, ptr %60, i32 4
  %61 = ptrtoint ptr %add.ptr101.1 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %add.ptr101.1, align 4
  %63 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %v, align 4
  %64 = ptrtoint ptr %base102 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base102, align 4
  %add.ptr105.1 = getelementptr i8, ptr %65, i32 40
  call void @__raw_writesl(ptr noundef %add.ptr105.1, ptr noundef nonnull %v, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %11)
  %cmp95.1 = icmp ugt i32 %11, 11
  br i1 %cmp95.1, label %for.body98.2, label %for.body98.1.do.body110_crit_edge

for.body98.1.do.body110_crit_edge:                ; preds = %for.body98.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body110

for.body98.2:                                     ; preds = %for.body98.1
  %66 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %iv, align 4
  %add.ptr101.2 = getelementptr i8, ptr %67, i32 8
  %68 = ptrtoint ptr %add.ptr101.2 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %add.ptr101.2, align 4
  %70 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %69, ptr %v, align 4
  %71 = ptrtoint ptr %base102 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %base102, align 4
  %add.ptr105.2 = getelementptr i8, ptr %72, i32 44
  call void @__raw_writesl(ptr noundef %add.ptr105.2, ptr noundef nonnull %v, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %11)
  %cmp95.2 = icmp ugt i32 %11, 15
  br i1 %cmp95.2, label %for.body98.3, label %for.body98.2.do.body110_crit_edge

for.body98.2.do.body110_crit_edge:                ; preds = %for.body98.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body110

for.body98.3:                                     ; preds = %for.body98.2
  call void @__sanitizer_cov_trace_pc() #10
  %73 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %iv, align 4
  %add.ptr101.3 = getelementptr i8, ptr %74, i32 12
  %75 = ptrtoint ptr %add.ptr101.3 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %add.ptr101.3, align 4
  %77 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %v, align 4
  %78 = ptrtoint ptr %base102 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base102, align 4
  %add.ptr105.3 = getelementptr i8, ptr %79, i32 48
  call void @__raw_writesl(ptr noundef %add.ptr105.3, ptr noundef nonnull %v, i32 noundef 1) #8
  br label %do.body110

do.body110:                                       ; preds = %for.body98.3, %for.body98.2.do.body110_crit_edge, %for.body98.1.do.body110_crit_edge, %for.body98.lr.ph.do.body110_crit_edge, %for.end.do.body110_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !52
  call void @arm_heavy_mb() #8
  %80 = call i32 @llvm.bswap.i32(i32 %13)
  %base113 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 1
  %81 = ptrtoint ptr %base113 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base113, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %82, i32 %80) #8, !srcloc !53
  %83 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %areq, align 128
  %addr = getelementptr inbounds %struct.sg_mapping_iter, ptr %mi, i32 0, i32 1
  %length150 = getelementptr inbounds %struct.sg_mapping_iter, ptr %mi, i32 0, i32 2
  %buf = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %84)
  %tobool118.not563 = icmp eq i32 %84, 0
  br i1 %tobool118.not563, label %do.body110.while.end323_crit_edge, label %while.cond117.outer.split.lr.ph

do.body110.while.end323_crit_edge:                ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end323

while.cond117.outer.split.lr.ph:                  ; preds = %do.body110
  %addr236 = getelementptr inbounds %struct.sg_mapping_iter, ptr %mo, i32 0, i32 1
  %length259 = getelementptr inbounds %struct.sg_mapping_iter, ptr %mo, i32 0, i32 2
  %bufo = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 9
  br label %while.cond117.outer.split

while.cond117.outer.split:                        ; preds = %if.end322.while.cond117.outer.split_crit_edge, %while.cond117.outer.split.lr.ph
  %rx_cnt.0.ph571 = phi i32 [ 32, %while.cond117.outer.split.lr.ph ], [ %and219, %if.end322.while.cond117.outer.split_crit_edge ]
  %ob.0.ph570 = phi i32 [ 0, %while.cond117.outer.split.lr.ph ], [ %ob.2, %if.end322.while.cond117.outer.split_crit_edge ]
  %oo.0.ph569 = phi i32 [ 0, %while.cond117.outer.split.lr.ph ], [ %oo.3, %if.end322.while.cond117.outer.split_crit_edge ]
  %oi.0.ph568 = phi i32 [ 0, %while.cond117.outer.split.lr.ph ], [ %oi.3, %if.end322.while.cond117.outer.split_crit_edge ]
  %po.0.ph567 = phi i32 [ 0, %while.cond117.outer.split.lr.ph ], [ %po.3, %if.end322.while.cond117.outer.split_crit_edge ]
  %pi.0.ph566 = phi i32 [ 0, %while.cond117.outer.split.lr.ph ], [ %pi.2, %if.end322.while.cond117.outer.split_crit_edge ]
  %oleft.0.ph565 = phi i32 [ %84, %while.cond117.outer.split.lr.ph ], [ %oleft.2, %if.end322.while.cond117.outer.split_crit_edge ]
  %ileft.0.ph564 = phi i32 [ %84, %while.cond117.outer.split.lr.ph ], [ %ileft.2, %if.end322.while.cond117.outer.split_crit_edge ]
  br label %while.cond117

while.cond117:                                    ; preds = %if.end213.while.cond117_crit_edge, %while.cond117.outer.split
  %ileft.0 = phi i32 [ %ileft.2, %if.end213.while.cond117_crit_edge ], [ %ileft.0.ph564, %while.cond117.outer.split ]
  %pi.0 = phi i32 [ %pi.2, %if.end213.while.cond117_crit_edge ], [ %pi.0.ph566, %while.cond117.outer.split ]
  %oi.0 = phi i32 [ %oi.3, %if.end213.while.cond117_crit_edge ], [ %oi.0.ph568, %while.cond117.outer.split ]
  %ob.0 = phi i32 [ %ob.2, %if.end213.while.cond117_crit_edge ], [ %ob.0.ph570, %while.cond117.outer.split ]
  %rx_cnt.0 = phi i32 [ %and219, %if.end213.while.cond117_crit_edge ], [ %rx_cnt.0.ph571, %while.cond117.outer.split ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ileft.0)
  %tobool120.not = icmp eq i32 %ileft.0, 0
  br i1 %tobool120.not, label %while.cond117.if.end213_crit_edge, label %if.then121

while.cond117.if.end213_crit_edge:                ; preds = %while.cond117
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end213

if.then121:                                       ; preds = %while.cond117
  %85 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %src, align 8
  %call124 = call i32 @sg_nents(ptr noundef %86) #8
  call void @sg_miter_start(ptr noundef nonnull %mi, ptr noundef %86, i32 noundef %call124, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pi.0)
  %tobool125.not = icmp eq i32 %pi.0, 0
  br i1 %tobool125.not, label %if.then121.if.end128_crit_edge, label %if.then126

if.then121.if.end128_crit_edge:                   ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end128

if.then126:                                       ; preds = %if.then121
  call void @__sanitizer_cov_trace_pc() #10
  %call127 = call zeroext i1 @sg_miter_skip(ptr noundef nonnull %mi, i32 noundef %pi.0) #8
  br label %if.end128

if.end128:                                        ; preds = %if.then126, %if.then121.if.end128_crit_edge
  %call129 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %mi) #8
  br i1 %call129, label %lor.lhs.false131, label %if.end128.do.body134_crit_edge

if.end128.do.body134_crit_edge:                   ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body134

lor.lhs.false131:                                 ; preds = %if.end128
  %87 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %addr, align 4
  %tobool132.not = icmp eq ptr %88, null
  br i1 %tobool132.not, label %lor.lhs.false131.do.body134_crit_edge, label %if.end145

lor.lhs.false131.do.body134_crit_edge:            ; preds = %lor.lhs.false131
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body134

do.body134:                                       ; preds = %lor.lhs.false131.do.body134_crit_edge, %if.end128.do.body134_crit_edge
  %call135 = call i32 @___ratelimit(ptr noundef nonnull @sun4i_ss_cipher_poll._rs.10, ptr noundef nonnull @__func__.sun4i_ss_cipher_poll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call135)
  %tobool136.not = icmp eq i32 %call135, 0
  br i1 %tobool136.not, label %do.body134.do.body338_crit_edge, label %do.end140

do.body134.do.body338_crit_edge:                  ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body338

do.end140:                                        ; preds = %do.body134
  call void @__sanitizer_cov_trace_pc() #10
  %dev141 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 6
  %89 = ptrtoint ptr %dev141 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev141, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %90, ptr noundef nonnull @.str.12) #11
  br label %do.body338

if.end145:                                        ; preds = %lor.lhs.false131
  %div146535 = lshr i32 %ileft.0, 2
  %91 = call i32 @llvm.umin.i32(i32 %rx_cnt.0, i32 %div146535)
  %92 = ptrtoint ptr %length150 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %length150, align 4
  %sub151 = sub i32 %93, %oi.0
  %div152536 = lshr i32 %sub151, 2
  %94 = call i32 @llvm.umin.i32(i32 %91, i32 %div152536)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %tobool160.not = icmp ne i32 %94, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ob.0)
  %tobool162.not = icmp eq i32 %ob.0, 0
  %or.cond545 = select i1 %tobool160.not, i1 %tobool162.not, i1 false
  br i1 %or.cond545, label %if.then163, label %if.else

if.then163:                                       ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #10
  %95 = ptrtoint ptr %base113 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base113, align 4
  %add.ptr165 = getelementptr i8, ptr %96, i32 512
  %add.ptr167 = getelementptr i8, ptr %88, i32 %oi.0
  call void @__raw_writesl(ptr noundef %add.ptr165, ptr noundef %add.ptr167, i32 noundef %94) #8
  %mul168 = shl nuw nsw i32 %94, 2
  br label %if.end205

if.else:                                          ; preds = %if.end145
  %mul172 = shl nuw nsw i32 %rx_cnt.0, 2
  %sub173 = sub i32 %mul172, %ob.0
  %97 = call i32 @llvm.umin.i32(i32 %sub173, i32 %ileft.0)
  %98 = call i32 @llvm.umin.i32(i32 %97, i32 %sub151)
  %add.ptr190 = getelementptr i8, ptr %buf, i32 %ob.0
  %add.ptr192 = getelementptr i8, ptr %88, i32 %oi.0
  %99 = call ptr @memcpy(ptr %add.ptr190, ptr %add.ptr192, i32 %98)
  %add195 = add i32 %98, %ob.0
  %rem196 = and i32 %add195, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem196)
  %tobool197.not = icmp eq i32 %rem196, 0
  br i1 %tobool197.not, label %if.then198, label %if.else.if.end205_crit_edge

if.else.if.end205_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end205

if.then198:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  %100 = ptrtoint ptr %base113 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base113, align 4
  %add.ptr200 = getelementptr i8, ptr %101, i32 512
  %div203537 = lshr i32 %add195, 2
  call void @__raw_writesl(ptr noundef %add.ptr200, ptr noundef %buf, i32 noundef %div203537) #8
  br label %if.end205

if.end205:                                        ; preds = %if.then198, %if.else.if.end205_crit_edge, %if.then163
  %cond189.pn = phi i32 [ %98, %if.else.if.end205_crit_edge ], [ %98, %if.then198 ], [ %mul168, %if.then163 ]
  %ob.1 = phi i32 [ %add195, %if.else.if.end205_crit_edge ], [ 0, %if.then198 ], [ 0, %if.then163 ]
  %oi.1 = add i32 %cond189.pn, %oi.0
  %ileft.1 = sub i32 %ileft.0, %cond189.pn
  %102 = ptrtoint ptr %length150 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %length150, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %oi.1, i32 %103)
  %cmp207 = icmp eq i32 %oi.1, %103
  %add211 = select i1 %cmp207, i32 %103, i32 0
  %spec.select546 = add i32 %add211, %pi.0
  %spec.select547 = select i1 %cmp207, i32 0, i32 %oi.1
  call void @sg_miter_stop(ptr noundef nonnull %mi) #8
  br label %if.end213

if.end213:                                        ; preds = %if.end205, %while.cond117.if.end213_crit_edge
  %ileft.2 = phi i32 [ %ileft.1, %if.end205 ], [ 0, %while.cond117.if.end213_crit_edge ]
  %pi.2 = phi i32 [ %spec.select546, %if.end205 ], [ %pi.0, %while.cond117.if.end213_crit_edge ]
  %oi.3 = phi i32 [ %spec.select547, %if.end205 ], [ %oi.0, %while.cond117.if.end213_crit_edge ]
  %ob.2 = phi i32 [ %ob.1, %if.end205 ], [ %ob.0, %while.cond117.if.end213_crit_edge ]
  %104 = ptrtoint ptr %base113 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base113, align 4
  %add.ptr215 = getelementptr i8, ptr %105, i32 68
  %106 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr215) #8, !srcloc !54
  %107 = call i32 @llvm.bswap.i32(i32 %106)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !55
  %shr = lshr i32 %107, 24
  %and219 = and i32 %shr, 63
  %shr220 = lshr i32 %107, 16
  %and221 = and i32 %shr220, 63
  %tobool222.not = icmp eq i32 %and221, 0
  br i1 %tobool222.not, label %if.end213.while.cond117_crit_edge, label %if.end224

if.end213.while.cond117_crit_edge:                ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond117

if.end224:                                        ; preds = %if.end213
  %108 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %dst, align 4
  %call227 = call i32 @sg_nents(ptr noundef %109) #8
  call void @sg_miter_start(ptr noundef nonnull %mo, ptr noundef %109, i32 noundef %call227, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %po.0.ph567)
  %tobool228.not = icmp eq i32 %po.0.ph567, 0
  br i1 %tobool228.not, label %if.end224.if.end231_crit_edge, label %if.then229

if.end224.if.end231_crit_edge:                    ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end231

if.then229:                                       ; preds = %if.end224
  call void @__sanitizer_cov_trace_pc() #10
  %call230 = call zeroext i1 @sg_miter_skip(ptr noundef nonnull %mo, i32 noundef %po.0.ph567) #8
  br label %if.end231

if.end231:                                        ; preds = %if.then229, %if.end224.if.end231_crit_edge
  %call232 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %mo) #8
  br i1 %call232, label %lor.lhs.false235, label %if.end231.do.body239_crit_edge

if.end231.do.body239_crit_edge:                   ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body239

lor.lhs.false235:                                 ; preds = %if.end231
  %110 = ptrtoint ptr %addr236 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %addr236, align 4
  %tobool237.not = icmp eq ptr %111, null
  br i1 %tobool237.not, label %lor.lhs.false235.do.body239_crit_edge, label %if.end250

lor.lhs.false235.do.body239_crit_edge:            ; preds = %lor.lhs.false235
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body239

do.body239:                                       ; preds = %lor.lhs.false235.do.body239_crit_edge, %if.end231.do.body239_crit_edge
  %call240 = call i32 @___ratelimit(ptr noundef nonnull @sun4i_ss_cipher_poll._rs.14, ptr noundef nonnull @__func__.sun4i_ss_cipher_poll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call240)
  %tobool241.not = icmp eq i32 %call240, 0
  br i1 %tobool241.not, label %do.body239.do.body338_crit_edge, label %do.end245

do.body239.do.body338_crit_edge:                  ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body338

do.end245:                                        ; preds = %do.body239
  call void @__sanitizer_cov_trace_pc() #10
  %dev246 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 6
  %112 = ptrtoint ptr %dev246 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev246, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %113, ptr noundef nonnull @.str.12) #11
  br label %do.body338

if.end250:                                        ; preds = %lor.lhs.false235
  %div251533 = lshr i32 %oleft.0.ph565, 2
  %114 = call i32 @llvm.umin.i32(i32 %and221, i32 %div251533)
  %115 = ptrtoint ptr %length259 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %length259, align 4
  %sub260 = sub i32 %116, %oo.0.ph569
  %div261534 = lshr i32 %sub260, 2
  %117 = call i32 @llvm.umin.i32(i32 %114, i32 %div261534)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %tobool269.not = icmp eq i32 %117, 0
  %118 = ptrtoint ptr %base113 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base113, align 4
  %add.ptr288 = getelementptr i8, ptr %119, i32 516
  br i1 %tobool269.not, label %if.else286, label %if.then270

if.then270:                                       ; preds = %if.end250
  call void @__sanitizer_cov_trace_pc() #10
  %add.ptr274 = getelementptr i8, ptr %111, i32 %oo.0.ph569
  call void @__raw_readsl(ptr noundef %add.ptr288, ptr noundef %add.ptr274, i32 noundef %117) #8
  %mul275 = shl nuw nsw i32 %117, 2
  %sub276 = sub i32 %oleft.0.ph565, %mul275
  %add278 = add i32 %mul275, %oo.0.ph569
  %120 = ptrtoint ptr %length259 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %length259, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add278, i32 %121)
  %cmp280 = icmp eq i32 %add278, %121
  %add284 = select i1 %cmp280, i32 %121, i32 0
  %spec.select548 = add i32 %add284, %po.0.ph567
  %spec.select549 = select i1 %cmp280, i32 0, i32 %add278
  br label %if.end322

if.else286:                                       ; preds = %if.end250
  call void @__raw_readsl(ptr noundef %add.ptr288, ptr noundef %bufo, i32 noundef %and221) #8
  %mul290 = shl nuw nsw i32 %and221, 2
  br label %do.body291

do.body291:                                       ; preds = %do.cond318.do.body291_crit_edge, %if.else286
  %oleft.1 = phi i32 [ %oleft.0.ph565, %if.else286 ], [ %sub307, %do.cond318.do.body291_crit_edge ]
  %po.1 = phi i32 [ %po.0.ph567, %if.else286 ], [ %po.2, %do.cond318.do.body291_crit_edge ]
  %oo.1 = phi i32 [ %oo.0.ph569, %if.else286 ], [ %oo.2, %do.cond318.do.body291_crit_edge ]
  %obo.0 = phi i32 [ 0, %if.else286 ], [ %add308, %do.cond318.do.body291_crit_edge ]
  %122 = ptrtoint ptr %length259 to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %length259, align 4
  %sub293 = sub i32 %123, %oo.1
  %sub294 = sub i32 %mul290, %obo.0
  %124 = call i32 @llvm.umin.i32(i32 %sub293, i32 %sub294)
  %125 = ptrtoint ptr %addr236 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %addr236, align 4
  %add.ptr303 = getelementptr i8, ptr %126, i32 %oo.1
  %add.ptr306 = getelementptr i8, ptr %bufo, i32 %obo.0
  %127 = call ptr @memcpy(ptr %add.ptr303, ptr %add.ptr306, i32 %124)
  %sub307 = sub i32 %oleft.1, %124
  %add308 = add i32 %124, %obo.0
  %add309 = add i32 %124, %oo.1
  %128 = ptrtoint ptr %length259 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %length259, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add309, i32 %129)
  %cmp311 = icmp eq i32 %add309, %129
  br i1 %cmp311, label %if.then313, label %do.body291.do.cond318_crit_edge

do.body291.do.cond318_crit_edge:                  ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.cond318

if.then313:                                       ; preds = %do.body291
  call void @__sanitizer_cov_trace_pc() #10
  %add315 = add i32 %add309, %po.1
  %call316 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %mo) #8
  br label %do.cond318

do.cond318:                                       ; preds = %if.then313, %do.body291.do.cond318_crit_edge
  %po.2 = phi i32 [ %add315, %if.then313 ], [ %po.1, %do.body291.do.cond318_crit_edge ]
  %oo.2 = phi i32 [ 0, %if.then313 ], [ %add309, %do.body291.do.cond318_crit_edge ]
  %cmp319 = icmp ult i32 %add308, %mul290
  br i1 %cmp319, label %do.cond318.do.body291_crit_edge, label %do.cond318.if.end322_crit_edge

do.cond318.if.end322_crit_edge:                   ; preds = %do.cond318
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end322

do.cond318.do.body291_crit_edge:                  ; preds = %do.cond318
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body291

if.end322:                                        ; preds = %do.cond318.if.end322_crit_edge, %if.then270
  %oleft.2 = phi i32 [ %sub276, %if.then270 ], [ %sub307, %do.cond318.if.end322_crit_edge ]
  %po.3 = phi i32 [ %spec.select548, %if.then270 ], [ %po.2, %do.cond318.if.end322_crit_edge ]
  %oo.3 = phi i32 [ %spec.select549, %if.then270 ], [ %oo.2, %do.cond318.if.end322_crit_edge ]
  call void @sg_miter_stop(ptr noundef nonnull %mo) #8
  %tobool118.not = icmp eq i32 %oleft.2, 0
  br i1 %tobool118.not, label %if.end322.while.end323_crit_edge, label %if.end322.while.cond117.outer.split_crit_edge

if.end322.while.cond117.outer.split_crit_edge:    ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.cond117.outer.split

if.end322.while.end323_crit_edge:                 ; preds = %if.end322
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end323

while.end323:                                     ; preds = %if.end322.while.end323_crit_edge, %do.body110.while.end323_crit_edge
  %130 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %iv, align 4
  %tobool325.not = icmp eq ptr %131, null
  br i1 %tobool325.not, label %while.end323.do.body338_crit_edge, label %if.then326

while.end323.do.body338_crit_edge:                ; preds = %while.end323
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body338

if.then326:                                       ; preds = %while.end323
  br i1 %tobool61.not, label %if.else331, label %if.then329

if.then329:                                       ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #10
  %132 = call ptr @memcpy(ptr %131, ptr %backup_iv.0, i32 %11)
  call void @kfree_sensitive(ptr noundef %backup_iv.0) #8
  br label %do.body338

if.else331:                                       ; preds = %if.then326
  call void @__sanitizer_cov_trace_pc() #10
  %133 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %dst, align 4
  %135 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %areq, align 128
  %sub335 = sub i32 %136, %11
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %131, ptr noundef %134, i32 noundef %sub335, i32 noundef %11, i32 noundef 0) #8
  br label %do.body338

do.body338:                                       ; preds = %if.else331, %if.then329, %while.end323.do.body338_crit_edge, %do.end245, %do.body239.do.body338_crit_edge, %do.end140, %do.body134.do.body338_crit_edge
  %err.0 = phi i32 [ 0, %if.then329 ], [ 0, %if.else331 ], [ 0, %while.end323.do.body338_crit_edge ], [ -22, %do.end140 ], [ -22, %do.body134.do.body338_crit_edge ], [ -22, %do.end245 ], [ -22, %do.body239.do.body338_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !56
  call void @arm_heavy_mb() #8
  %137 = ptrtoint ptr %base113 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base113, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %138, i32 0) #8, !srcloc !53
  call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call76) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body338, %if.end8.i.i.cleanup_crit_edge, %if.then53, %if.then49, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call54, %if.then53 ], [ %err.0, %do.body338 ], [ %call50, %if.then49 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mo) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mi) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #8
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_cbc_aes_decrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %keymode = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %keymode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymode, align 4
  %or = or i32 %3, 4225
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %__ctx.i, align 128
  %call3 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %areq)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_ecb_aes_encrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %keymode = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %keymode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymode, align 4
  %or = or i32 %3, 1
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %__ctx.i, align 128
  %call3 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %areq)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_ecb_aes_decrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %keymode = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %keymode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymode, align 4
  %or = or i32 %3, 129
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %__ctx.i, align 128
  %call3 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %areq)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_cbc_des_encrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %keymode = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %keymode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymode, align 4
  %or = or i32 %3, 4113
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %__ctx.i, align 128
  %call3 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %areq)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_cbc_des_decrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %keymode = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %keymode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymode, align 4
  %or = or i32 %3, 4241
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %__ctx.i, align 128
  %call3 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %areq)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_ecb_des_encrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %keymode = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %keymode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymode, align 4
  %or = or i32 %3, 17
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %__ctx.i, align 128
  %call3 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %areq)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_ecb_des_decrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %keymode = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %keymode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymode, align 4
  %or = or i32 %3, 145
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %__ctx.i, align 128
  %call3 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %areq)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_cbc_des3_encrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %keymode = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %keymode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymode, align 4
  %or = or i32 %3, 4129
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %__ctx.i, align 128
  %call3 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %areq)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_cbc_des3_decrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %keymode = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %keymode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymode, align 4
  %or = or i32 %3, 4257
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %__ctx.i, align 128
  %call3 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %areq)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_ecb_des3_encrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %keymode = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %keymode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymode, align 4
  %or = or i32 %3, 33
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %__ctx.i, align 128
  %call3 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %areq)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_ecb_des3_decrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %keymode = getelementptr i8, ptr %1, i32 164
  %2 = ptrtoint ptr %keymode to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %keymode, align 4
  %or = or i32 %3, 161
  %4 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %or, ptr %__ctx.i, align 128
  %call3 = tail call fastcc i32 @sun4i_ss_cipher_poll(ptr noundef %areq)
  ret i32 %call3
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_cipher_init(ptr nocapture noundef %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %2 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 48)
  %ss = getelementptr i8, ptr %1, i32 640
  %3 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ss, align 128
  %ss2 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %5 = ptrtoint ptr %ss2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ss2, align 4
  %call3 = tail call ptr @crypto_alloc_skcipher(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #8
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %6 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call3, ptr %fallback_tfm, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %7 = ptrtoint ptr %ss2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ss2, align 4
  %dev = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %8, i32 0, i32 6
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %call3 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %cra_name.i, i32 noundef %11) #11
  %12 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fallback_tfm, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %tfm, i32 -128
  %15 = ptrtoint ptr %call3 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call3, align 128
  %add = add i32 %16, 256
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %add.ptr.i, align 128
  %18 = ptrtoint ptr %ss2 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ss2, align 4
  %dev15 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %19, i32 0, i32 6
  %20 = ptrtoint ptr %dev15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev15, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %21, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i37 = icmp slt i32 %call.i, 0
  br i1 %cmp.i37, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %21, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !57
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #8
  %22 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #8, !srcloc !58
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %22, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.error_pm_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.error_pm_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %error_pm

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !59
  br label %error_pm

error_pm:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.error_pm_crit_edge
  %23 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %24, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %24, ptr noundef %base.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %error_pm, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %14, %do.end ], [ %call.i, %error_pm ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun4i_ss_cipher_exit(ptr nocapture noundef readonly %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 28
  %0 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %1, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #8
  %ss = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 24
  %2 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ss, align 4
  %dev = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 5) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_aes_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %ss1 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 36
  %0 = ptrtoint ptr %ss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ss1, align 4
  %2 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %keylen, label %do.body [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 24, label %sw.bb2
    i32 32, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun4i_ss_aes_setkey.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun4i_ss_aes_setkey, %if.then)) #8
          to label %cleanup [label %if.then], !srcloc !60

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun4i_ss_aes_setkey.__UNIQUE_ID_ddebug268, ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %keylen) #8
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 512, %sw.bb4 ], [ 256, %sw.bb2 ], [ 0, %entry.sw.epilog_crit_edge ]
  %keymode5 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 32
  %5 = ptrtoint ptr %keymode5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %keymode5, align 4
  %keylen9 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 28
  %6 = ptrtoint ptr %keylen9 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %keylen, ptr %keylen9, align 4
  %7 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 %keylen)
  %fallback_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 40
  %8 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %9, i32 0, i32 2
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %11, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %12 = load ptr, ptr %fallback_tfm, align 4
  %base = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base, align 128
  %and = and i32 %14, 1048320
  %base.i.i29 = getelementptr inbounds %struct.crypto_skcipher, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.i.i29, align 128
  %or.i.i = or i32 %16, %and
  store i32 %or.i.i, ptr %base.i.i29, align 128
  %17 = load ptr, ptr %fallback_tfm, align 4
  %call13 = tail call i32 @crypto_skcipher_setkey(ptr noundef %17, ptr noundef %key, i32 noundef %keylen) #8
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %if.then, %do.body
  %retval.0 = phi i32 [ %call13, %sw.epilog ], [ -22, %if.then ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_des_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) local_unnamed_addr #0 align 64 {
entry:
  %tmp.i.i = alloca %struct.des_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %tmp.i.i) #8
  %0 = call ptr @memset(ptr %tmp.i.i, i32 255, i32 128)
  %call.i.i = call i32 @des_expand_key(ptr noundef nonnull %tmp.i.i, ptr noundef %key, i32 noundef 8) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -126, i32 %call.i.i)
  %cmp.i.i = icmp eq i32 %call.i.i, -126
  br i1 %cmp.i.i, label %if.then.i.i, label %entry.verify_skcipher_des_key.exit_crit_edge

entry.verify_skcipher_des_key.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %verify_skcipher_des_key.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %tmp.i.i) #8, !srcloc !61
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %tmp.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err.0.i.i)
  %tobool.not = icmp eq i32 %err.0.i.i, 0
  br i1 %tobool.not, label %if.end, label %verify_skcipher_des_key.exit.cleanup_crit_edge

verify_skcipher_des_key.exit.cleanup_crit_edge:   ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %verify_skcipher_des_key.exit
  call void @__sanitizer_cov_trace_pc() #10
  %keylen2 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 28
  %4 = ptrtoint ptr %keylen2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %keylen, ptr %keylen2, align 4
  %5 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 %keylen)
  %fallback_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 40
  %6 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i19 = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
  %8 = ptrtoint ptr %base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i19, align 128
  %and.i.i20 = and i32 %9, -1048321
  store i32 %and.i.i20, ptr %base.i.i19, align 128
  %10 = load ptr, ptr %fallback_tfm, align 4
  %base = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %11 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base, align 128
  %and = and i32 %12, 1048320
  %base.i.i21 = getelementptr inbounds %struct.crypto_skcipher, ptr %10, i32 0, i32 2
  %13 = ptrtoint ptr %base.i.i21 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %base.i.i21, align 128
  %or.i.i = or i32 %14, %and
  store i32 %or.i.i, ptr %base.i.i21, align 128
  %15 = load ptr, ptr %fallback_tfm, align 4
  %call6 = call i32 @crypto_skcipher_setkey(ptr noundef %15, ptr noundef %key, i32 noundef %keylen) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %verify_skcipher_des_key.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %call6, %if.end ], [ %err.0.i.i, %verify_skcipher_des_key.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun4i_ss_des3_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) local_unnamed_addr #0 align 64 {
entry:
  %K.i.i.i = alloca [6 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %0 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %1, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %K.i.i.i) #8
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %verify_skcipher_des3_key.exit.thread

lor.lhs.false.i.i.i.if.end_crit_edge:             ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true.i.i.i:                              ; preds = %entry
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.i.if.end_crit_edge, label %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %verify_skcipher_des3_key.exit.thread

land.lhs.true.i.i.i.if.end_crit_edge:             ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

verify_skcipher_des3_key.exit.thread:             ; preds = %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge
  %24 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #8, !srcloc !61
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i.i.if.end_crit_edge, %lor.lhs.false.i.i.i.if.end_crit_edge
  %25 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #8, !srcloc !61
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #8
  %keylen2 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 28
  %26 = ptrtoint ptr %keylen2 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %keylen, ptr %keylen2, align 4
  %27 = call ptr @memcpy(ptr %__crt_ctx.i.i, ptr %key, i32 %keylen)
  %fallback_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 40
  %28 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i19 = getelementptr inbounds %struct.crypto_skcipher, ptr %29, i32 0, i32 2
  %30 = ptrtoint ptr %base.i.i19 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %base.i.i19, align 128
  %and.i.i20 = and i32 %31, -1048321
  store i32 %and.i.i20, ptr %base.i.i19, align 128
  %32 = load ptr, ptr %fallback_tfm, align 4
  %33 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %base.i.i, align 128
  %and = and i32 %34, 1048320
  %base.i.i21 = getelementptr inbounds %struct.crypto_skcipher, ptr %32, i32 0, i32 2
  %35 = ptrtoint ptr %base.i.i21 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base.i.i21, align 128
  %or.i.i = or i32 %36, %and
  store i32 %or.i.i, ptr %base.i.i21, align 128
  %37 = load ptr, ptr %fallback_tfm, align 4
  %call6 = call i32 @crypto_skcipher_setkey(ptr noundef %37, ptr noundef %key, i32 noundef %keylen) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %verify_skcipher_des3_key.exit.thread
  %retval.0 = phi i32 [ %call6, %if.end ], [ -126, %verify_skcipher_des3_key.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_ss_opti_poll(ptr nocapture noundef readonly %areq) unnamed_addr #4 align 64 {
entry:
  %v = alloca i32, align 4
  %mi = alloca %struct.sg_mapping_iter, align 4
  %mo = alloca %struct.sg_mapping_iter, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_ctx.i.i = getelementptr i8, ptr %1, i32 128
  %ss2 = getelementptr i8, ptr %1, i32 168
  %2 = ptrtoint ptr %ss2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ss2, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %5, i32 -100
  %6 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %ivsize.i, align 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %8 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %__ctx.i, align 128
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %v) #8
  %10 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %v, align 4, !annotation !51
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mi) #8
  %11 = call ptr @memset(ptr %mi, i32 255, i32 44)
  call void @llvm.lifetime.start.p0(i64 44, ptr nonnull %mo) #8
  %12 = call ptr @memset(ptr %mo, i32 255, i32 44)
  %13 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %__crt_alg.i.i, align 4
  %15 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %areq, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %src = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %17 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %src, align 8
  %tobool9.not = icmp eq ptr %18, null
  br i1 %tobool9.not, label %if.end.do.body_crit_edge, label %lor.lhs.false

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %19 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dst, align 4
  %tobool10.not = icmp eq ptr %20, null
  br i1 %tobool10.not, label %lor.lhs.false.do.body_crit_edge, label %if.end19

lor.lhs.false.do.body_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body

do.body:                                          ; preds = %lor.lhs.false.do.body_crit_edge, %if.end.do.body_crit_edge
  %call12 = tail call i32 @___ratelimit(ptr noundef nonnull @sun4i_ss_opti_poll._rs, ptr noundef nonnull @__func__.sun4i_ss_opti_poll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %do.body.cleanup_crit_edge, label %do.end

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end:                                           ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 6
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.9) #11
  br label %cleanup

if.end19:                                         ; preds = %lor.lhs.false
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 1
  %23 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %iv, align 4
  %tobool20.not = icmp eq ptr %24, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp.not = icmp eq i32 %7, 0
  %or.cond = select i1 %tobool20.not, i1 true, i1 %cmp.not
  %and = and i32 %9, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  %or.cond348 = select i1 %or.cond, i1 true, i1 %tobool22.not
  br i1 %or.cond348, label %if.end19.if.end30_crit_edge, label %if.end8.i.i

if.end19.if.end30_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.end8.i.i:                                      ; preds = %if.end19
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %7, i32 noundef 3520) #12
  %tobool25.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool25.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end27

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end27:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %src, align 8
  %27 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %areq, align 128
  %sub = sub i32 %28, %7
  tail call void @scatterwalk_map_and_copy(ptr noundef nonnull %call9.i.i, ptr noundef %26, i32 noundef %sub, i32 noundef %7, i32 noundef 0) #8
  br label %if.end30

if.end30:                                         ; preds = %if.end27, %if.end19.if.end30_crit_edge
  %backup_iv.0 = phi ptr [ %call9.i.i, %if.end27 ], [ null, %if.end19.if.end30_crit_edge ]
  %stat_opti = getelementptr i8, ptr %14, i32 656
  %29 = ptrtoint ptr %stat_opti to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %stat_opti, align 16
  %inc = add i32 %30, 1
  store i32 %inc, ptr %stat_opti, align 16
  %31 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %areq, align 128
  %stat_bytes = getelementptr i8, ptr %14, i32 652
  %33 = ptrtoint ptr %stat_bytes to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stat_bytes, align 4
  %add = add i32 %34, %32
  store i32 %add, ptr %stat_bytes, align 4
  %slock = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 10
  %call37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %slock) #8
  %keylen = getelementptr i8, ptr %1, i32 160
  %35 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %keylen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %36)
  %cmp42354.not = icmp ult i32 %36, 4
  br i1 %cmp42354.not, label %if.end30.for.end_crit_edge, label %for.body.lr.ph

if.end30.for.end_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end30
  %base = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0355 = phi i32 [ 0, %for.body.lr.ph ], [ %inc46, %for.body.for.body_crit_edge ]
  %37 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base, align 4
  %add.ptr44 = getelementptr i8, ptr %38, i32 4
  %mul = shl i32 %i.0355, 2
  %add.ptr45 = getelementptr i8, ptr %add.ptr44, i32 %mul
  %arrayidx = getelementptr [8 x i32], ptr %__crt_ctx.i.i, i32 0, i32 %i.0355
  tail call void @__raw_writesl(ptr noundef %add.ptr45, ptr noundef %arrayidx, i32 noundef 1) #8
  %inc46 = add nuw nsw i32 %i.0355, 1
  %39 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %keylen, align 4
  %div343 = lshr i32 %40, 2
  %cmp42 = icmp ult i32 %inc46, %div343
  br i1 %cmp42, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end30.for.end_crit_edge
  %41 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iv, align 4
  %tobool48.not = icmp eq ptr %42, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %7)
  %cmp54356.not = icmp ult i32 %7, 4
  %or.cond358 = select i1 %tobool48.not, i1 true, i1 %cmp54356.not
  br i1 %or.cond358, label %for.end.do.body68_crit_edge, label %for.body56.lr.ph

for.end.do.body68_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body68

for.body56.lr.ph:                                 ; preds = %for.end
  %base60 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 1
  %43 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %iv, align 4
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %44, align 4
  %47 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %v, align 4
  %48 = ptrtoint ptr %base60 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base60, align 4
  %add.ptr61 = getelementptr i8, ptr %49, i32 36
  call void @__raw_writesl(ptr noundef %add.ptr61, ptr noundef nonnull %v, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %7)
  %cmp54 = icmp ugt i32 %7, 7
  br i1 %cmp54, label %for.body56.1, label %for.body56.lr.ph.do.body68_crit_edge

for.body56.lr.ph.do.body68_crit_edge:             ; preds = %for.body56.lr.ph
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body68

for.body56.1:                                     ; preds = %for.body56.lr.ph
  %50 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iv, align 4
  %add.ptr59.1 = getelementptr i8, ptr %51, i32 4
  %52 = ptrtoint ptr %add.ptr59.1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr59.1, align 4
  %54 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %v, align 4
  %55 = ptrtoint ptr %base60 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base60, align 4
  %add.ptr63.1 = getelementptr i8, ptr %56, i32 40
  call void @__raw_writesl(ptr noundef %add.ptr63.1, ptr noundef nonnull %v, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 11, i32 %7)
  %cmp54.1 = icmp ugt i32 %7, 11
  br i1 %cmp54.1, label %for.body56.2, label %for.body56.1.do.body68_crit_edge

for.body56.1.do.body68_crit_edge:                 ; preds = %for.body56.1
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body68

for.body56.2:                                     ; preds = %for.body56.1
  %57 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iv, align 4
  %add.ptr59.2 = getelementptr i8, ptr %58, i32 8
  %59 = ptrtoint ptr %add.ptr59.2 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %add.ptr59.2, align 4
  %61 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %60, ptr %v, align 4
  %62 = ptrtoint ptr %base60 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base60, align 4
  %add.ptr63.2 = getelementptr i8, ptr %63, i32 44
  call void @__raw_writesl(ptr noundef %add.ptr63.2, ptr noundef nonnull %v, i32 noundef 1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %7)
  %cmp54.2 = icmp ugt i32 %7, 15
  br i1 %cmp54.2, label %for.body56.3, label %for.body56.2.do.body68_crit_edge

for.body56.2.do.body68_crit_edge:                 ; preds = %for.body56.2
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body68

for.body56.3:                                     ; preds = %for.body56.2
  call void @__sanitizer_cov_trace_pc() #10
  %64 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iv, align 4
  %add.ptr59.3 = getelementptr i8, ptr %65, i32 12
  %66 = ptrtoint ptr %add.ptr59.3 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %add.ptr59.3, align 4
  %68 = ptrtoint ptr %v to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %v, align 4
  %69 = ptrtoint ptr %base60 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base60, align 4
  %add.ptr63.3 = getelementptr i8, ptr %70, i32 48
  call void @__raw_writesl(ptr noundef %add.ptr63.3, ptr noundef nonnull %v, i32 noundef 1) #8
  br label %do.body68

do.body68:                                        ; preds = %for.body56.3, %for.body56.2.do.body68_crit_edge, %for.body56.1.do.body68_crit_edge, %for.body56.lr.ph.do.body68_crit_edge, %for.end.do.body68_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !62
  call void @arm_heavy_mb() #8
  %71 = call i32 @llvm.bswap.i32(i32 %9)
  %base71 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 1
  %72 = ptrtoint ptr %base71 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base71, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %73, i32 %71) #8, !srcloc !53
  %74 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %areq, align 128
  %div74344 = lshr i32 %75, 2
  %addr = getelementptr inbounds %struct.sg_mapping_iter, ptr %mi, i32 0, i32 1
  %length = getelementptr inbounds %struct.sg_mapping_iter, ptr %mi, i32 0, i32 2
  %addr153 = getelementptr inbounds %struct.sg_mapping_iter, ptr %mo, i32 0, i32 1
  %length175 = getelementptr inbounds %struct.sg_mapping_iter, ptr %mo, i32 0, i32 2
  br label %do.body77

do.body77:                                        ; preds = %if.end194.do.body77_crit_edge, %do.body68
  %ileft.0 = phi i32 [ %div74344, %do.body68 ], [ %ileft.2, %if.end194.do.body77_crit_edge ]
  %oleft.0 = phi i32 [ %div74344, %do.body68 ], [ %oleft.1, %if.end194.do.body77_crit_edge ]
  %pi.0 = phi i32 [ 0, %do.body68 ], [ %pi.2, %if.end194.do.body77_crit_edge ]
  %po.0 = phi i32 [ 0, %do.body68 ], [ %spec.select351, %if.end194.do.body77_crit_edge ]
  %oi.0 = phi i32 [ 0, %do.body68 ], [ %oi.3, %if.end194.do.body77_crit_edge ]
  %oo.0 = phi i32 [ 0, %do.body68 ], [ %spec.select352, %if.end194.do.body77_crit_edge ]
  %rx_cnt.0 = phi i32 [ 32, %do.body68 ], [ %and139, %if.end194.do.body77_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ileft.0)
  %tobool78.not = icmp eq i32 %ileft.0, 0
  br i1 %tobool78.not, label %do.body77.if.end133_crit_edge, label %if.then79

do.body77.if.end133_crit_edge:                    ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end133

if.then79:                                        ; preds = %do.body77
  %76 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %src, align 8
  %call82 = call i32 @sg_nents(ptr noundef %77) #8
  call void @sg_miter_start(ptr noundef nonnull %mi, ptr noundef %77, i32 noundef %call82, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pi.0)
  %tobool83.not = icmp eq i32 %pi.0, 0
  br i1 %tobool83.not, label %if.then79.if.end86_crit_edge, label %if.then84

if.then79.if.end86_crit_edge:                     ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end86

if.then84:                                        ; preds = %if.then79
  call void @__sanitizer_cov_trace_pc() #10
  %call85 = call zeroext i1 @sg_miter_skip(ptr noundef nonnull %mi, i32 noundef %pi.0) #8
  br label %if.end86

if.end86:                                         ; preds = %if.then84, %if.then79.if.end86_crit_edge
  %call87 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %mi) #8
  br i1 %call87, label %lor.lhs.false89, label %if.end86.do.body92_crit_edge

if.end86.do.body92_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body92

lor.lhs.false89:                                  ; preds = %if.end86
  %78 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %addr, align 4
  %tobool90.not = icmp eq ptr %79, null
  br i1 %tobool90.not, label %lor.lhs.false89.do.body92_crit_edge, label %if.end103

lor.lhs.false89.do.body92_crit_edge:              ; preds = %lor.lhs.false89
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body92

do.body92:                                        ; preds = %lor.lhs.false89.do.body92_crit_edge, %if.end86.do.body92_crit_edge
  %call93 = call i32 @___ratelimit(ptr noundef nonnull @sun4i_ss_opti_poll._rs.17, ptr noundef nonnull @__func__.sun4i_ss_opti_poll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call93)
  %tobool94.not = icmp eq i32 %call93, 0
  br i1 %tobool94.not, label %do.body92.do.body218_crit_edge, label %do.end98

do.body92.do.body218_crit_edge:                   ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body218

do.end98:                                         ; preds = %do.body92
  call void @__sanitizer_cov_trace_pc() #10
  %dev99 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 6
  %80 = ptrtoint ptr %dev99 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev99, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %81, ptr noundef nonnull @.str.12) #11
  br label %do.body218

if.end103:                                        ; preds = %lor.lhs.false89
  %82 = call i32 @llvm.umin.i32(i32 %rx_cnt.0, i32 %ileft.0)
  %83 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %length, align 4
  %sub107 = sub i32 %84, %oi.0
  %div108346 = lshr i32 %sub107, 2
  %85 = call i32 @llvm.umin.i32(i32 %82, i32 %div108346)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %tobool116.not = icmp eq i32 %85, 0
  br i1 %tobool116.not, label %if.end103.if.end125_crit_edge, label %if.then117

if.end103.if.end125_crit_edge:                    ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end125

if.then117:                                       ; preds = %if.end103
  call void @__sanitizer_cov_trace_pc() #10
  %sub118 = sub i32 %ileft.0, %85
  %86 = ptrtoint ptr %base71 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base71, align 4
  %add.ptr120 = getelementptr i8, ptr %87, i32 512
  %add.ptr122 = getelementptr i8, ptr %79, i32 %oi.0
  call void @__raw_writesl(ptr noundef %add.ptr120, ptr noundef %add.ptr122, i32 noundef %85) #8
  %mul123 = shl nuw nsw i32 %85, 2
  %add124 = add i32 %mul123, %oi.0
  br label %if.end125

if.end125:                                        ; preds = %if.then117, %if.end103.if.end125_crit_edge
  %ileft.1 = phi i32 [ %sub118, %if.then117 ], [ %ileft.0, %if.end103.if.end125_crit_edge ]
  %oi.1 = phi i32 [ %add124, %if.then117 ], [ %oi.0, %if.end103.if.end125_crit_edge ]
  %88 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %length, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %oi.1, i32 %89)
  %cmp127 = icmp eq i32 %oi.1, %89
  %add131 = select i1 %cmp127, i32 %89, i32 0
  %spec.select = add i32 %add131, %pi.0
  %spec.select350 = select i1 %cmp127, i32 0, i32 %oi.1
  call void @sg_miter_stop(ptr noundef nonnull %mi) #8
  br label %if.end133

if.end133:                                        ; preds = %if.end125, %do.body77.if.end133_crit_edge
  %ileft.2 = phi i32 [ %ileft.1, %if.end125 ], [ 0, %do.body77.if.end133_crit_edge ]
  %pi.2 = phi i32 [ %spec.select, %if.end125 ], [ %pi.0, %do.body77.if.end133_crit_edge ]
  %oi.3 = phi i32 [ %spec.select350, %if.end125 ], [ %oi.0, %do.body77.if.end133_crit_edge ]
  %90 = ptrtoint ptr %base71 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base71, align 4
  %add.ptr135 = getelementptr i8, ptr %91, i32 68
  %92 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr135) #8, !srcloc !54
  %93 = call i32 @llvm.bswap.i32(i32 %92)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !63
  %shr = lshr i32 %93, 24
  %and139 = and i32 %shr, 63
  %shr140 = lshr i32 %93, 16
  %and141 = and i32 %shr140, 63
  %94 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dst, align 4
  %call144 = call i32 @sg_nents(ptr noundef %95) #8
  call void @sg_miter_start(ptr noundef nonnull %mo, ptr noundef %95, i32 noundef %call144, i32 noundef 3) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %po.0)
  %tobool145.not = icmp eq i32 %po.0, 0
  br i1 %tobool145.not, label %if.end133.if.end148_crit_edge, label %if.then146

if.end133.if.end148_crit_edge:                    ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end148

if.then146:                                       ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #10
  %call147 = call zeroext i1 @sg_miter_skip(ptr noundef nonnull %mo, i32 noundef %po.0) #8
  br label %if.end148

if.end148:                                        ; preds = %if.then146, %if.end133.if.end148_crit_edge
  %call149 = call zeroext i1 @sg_miter_next(ptr noundef nonnull %mo) #8
  br i1 %call149, label %lor.lhs.false152, label %if.end148.do.body156_crit_edge

if.end148.do.body156_crit_edge:                   ; preds = %if.end148
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body156

lor.lhs.false152:                                 ; preds = %if.end148
  %96 = ptrtoint ptr %addr153 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %addr153, align 4
  %tobool154.not = icmp eq ptr %97, null
  br i1 %tobool154.not, label %lor.lhs.false152.do.body156_crit_edge, label %if.end167

lor.lhs.false152.do.body156_crit_edge:            ; preds = %lor.lhs.false152
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body156

do.body156:                                       ; preds = %lor.lhs.false152.do.body156_crit_edge, %if.end148.do.body156_crit_edge
  %call157 = call i32 @___ratelimit(ptr noundef nonnull @sun4i_ss_opti_poll._rs.20, ptr noundef nonnull @__func__.sun4i_ss_opti_poll) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call157)
  %tobool158.not = icmp eq i32 %call157, 0
  br i1 %tobool158.not, label %do.body156.do.body218_crit_edge, label %do.end162

do.body156.do.body218_crit_edge:                  ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body218

do.end162:                                        ; preds = %do.body156
  call void @__sanitizer_cov_trace_pc() #10
  %dev163 = getelementptr inbounds %struct.sun4i_ss_ctx, ptr %3, i32 0, i32 6
  %98 = ptrtoint ptr %dev163 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %dev163, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %99, ptr noundef nonnull @.str.12) #11
  br label %do.body218

if.end167:                                        ; preds = %lor.lhs.false152
  %100 = call i32 @llvm.umin.i32(i32 %and141, i32 %oleft.0)
  %101 = ptrtoint ptr %length175 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %length175, align 4
  %sub176 = sub i32 %102, %oo.0
  %div177345 = lshr i32 %sub176, 2
  %103 = call i32 @llvm.umin.i32(i32 %100, i32 %div177345)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool185.not = icmp eq i32 %103, 0
  br i1 %tobool185.not, label %if.end167.if.end194_crit_edge, label %if.then186

if.end167.if.end194_crit_edge:                    ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end194

if.then186:                                       ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #10
  %sub187 = sub i32 %oleft.0, %103
  %104 = ptrtoint ptr %base71 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base71, align 4
  %add.ptr189 = getelementptr i8, ptr %105, i32 516
  %add.ptr191 = getelementptr i8, ptr %97, i32 %oo.0
  call void @__raw_readsl(ptr noundef %add.ptr189, ptr noundef %add.ptr191, i32 noundef %103) #8
  %mul192 = shl nuw nsw i32 %103, 2
  %add193 = add i32 %mul192, %oo.0
  br label %if.end194

if.end194:                                        ; preds = %if.then186, %if.end167.if.end194_crit_edge
  %oleft.1 = phi i32 [ %sub187, %if.then186 ], [ %oleft.0, %if.end167.if.end194_crit_edge ]
  %oo.1 = phi i32 [ %add193, %if.then186 ], [ %oo.0, %if.end167.if.end194_crit_edge ]
  %106 = ptrtoint ptr %length175 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %length175, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %oo.1, i32 %107)
  %cmp196 = icmp eq i32 %oo.1, %107
  %add200 = select i1 %cmp196, i32 %107, i32 0
  %spec.select351 = add i32 %add200, %po.0
  %spec.select352 = select i1 %cmp196, i32 0, i32 %oo.1
  call void @sg_miter_stop(ptr noundef nonnull %mo) #8
  %tobool203.not = icmp eq i32 %oleft.1, 0
  br i1 %tobool203.not, label %do.end204, label %if.end194.do.body77_crit_edge

if.end194.do.body77_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body77

do.end204:                                        ; preds = %if.end194
  %108 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %iv, align 4
  %tobool206.not = icmp eq ptr %109, null
  br i1 %tobool206.not, label %do.end204.do.body218_crit_edge, label %if.then207

do.end204.do.body218_crit_edge:                   ; preds = %do.end204
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body218

if.then207:                                       ; preds = %do.end204
  br i1 %tobool22.not, label %if.else, label %if.then210

if.then210:                                       ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #10
  %110 = call ptr @memcpy(ptr %109, ptr %backup_iv.0, i32 %7)
  call void @kfree_sensitive(ptr noundef %backup_iv.0) #8
  br label %do.body218

if.else:                                          ; preds = %if.then207
  call void @__sanitizer_cov_trace_pc() #10
  %111 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dst, align 4
  %113 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %areq, align 128
  %sub215 = sub i32 %114, %7
  call void @scatterwalk_map_and_copy(ptr noundef nonnull %109, ptr noundef %112, i32 noundef %sub215, i32 noundef %7, i32 noundef 0) #8
  br label %do.body218

do.body218:                                       ; preds = %if.else, %if.then210, %do.end204.do.body218_crit_edge, %do.end162, %do.body156.do.body218_crit_edge, %do.end98, %do.body92.do.body218_crit_edge
  %err.0 = phi i32 [ 0, %if.then210 ], [ 0, %if.else ], [ 0, %do.end204.do.body218_crit_edge ], [ -22, %do.end98 ], [ -22, %do.body92.do.body218_crit_edge ], [ -22, %do.end162 ], [ -22, %do.body156.do.body218_crit_edge ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !64
  call void @arm_heavy_mb() #8
  %115 = ptrtoint ptr %base71 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base71, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %116, i32 0) #8, !srcloc !53
  call void @_raw_spin_unlock_irqrestore(ptr noundef %slock, i32 noundef %call37) #8
  br label %cleanup

cleanup:                                          ; preds = %do.body218, %if.end8.i.i.cleanup_crit_edge, %do.end, %do.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %do.body218 ], [ 0, %entry.cleanup_crit_edge ], [ -22, %do.end ], [ -22, %do.body.cleanup_crit_edge ], [ -12, %if.end8.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mo) #8
  call void @llvm.lifetime.end.p0(i64 44, ptr nonnull %mi) #8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %v) #8
  ret i32 %retval.0
}

; Function Attrs: noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun4i_ss_cipher_poll_fallback(ptr noundef %areq) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %__crt_alg.i = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg.i, align 4
  %stat_fb = getelementptr i8, ptr %3, i32 648
  %4 = ptrtoint ptr %stat_fb to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_fb, align 8
  %inc = add i32 %5, 1
  store i32 %inc, ptr %stat_fb, align 8
  %fallback_req = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2
  %fallback_tfm = getelementptr i8, ptr %1, i32 172
  %6 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %7, i32 0, i32 2
  %tfm1.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 3
  %8 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 4
  %9 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %flags, align 4
  %complete = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %complete to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %complete, align 8
  %data = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 2
  %13 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %data, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 1
  %15 = ptrtoint ptr %complete.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %complete.i, align 8
  %data2.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 2
  %16 = ptrtoint ptr %data2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %14, ptr %data2.i, align 4
  %flags4.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 4
  %17 = ptrtoint ptr %flags4.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %10, ptr %flags4.i, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %20 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst, align 4
  %22 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %areq, align 128
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 1
  %24 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iv, align 4
  %src1.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 2
  %26 = ptrtoint ptr %src1.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %19, ptr %src1.i, align 8
  %dst2.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 3
  %27 = ptrtoint ptr %dst2.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %21, ptr %dst2.i, align 4
  %28 = ptrtoint ptr %fallback_req to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %23, ptr %fallback_req, align 128
  %iv4.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 1
  %29 = ptrtoint ptr %iv4.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %25, ptr %iv4.i, align 4
  %30 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %__ctx.i, align 128
  %and = and i32 %31, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call9 = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req) #8
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %call11 = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req) #8
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %err.0 = phi i32 [ %call9, %if.then ], [ %call11, %if.else ]
  ret i32 %err.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_writesl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_start(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_skip(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @sg_miter_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_miter_stop(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_readsl(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @des_expand_key(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

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
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 24)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { noinline nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !34, !36, !37, !38, !40, !41}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c", i32 555, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun4i_ss_cipher_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun4i_ss_cipher_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c", i32 600, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @sun4i_ss_aes_setkey.__UNIQUE_ID_ddebug268, !9, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c", i32 217, i32 3}
!15 = !{ptr @sun4i_ss_cipher_poll._rs, !14, !"_rs", i1 false, i1 false}
!16 = !{ptr @__func__.sun4i_ss_cipher_poll, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @sun4i_ss_cipher_poll._entry, !14, !"_entry", i1 false, i1 false}
!19 = !{ptr @sun4i_ss_cipher_poll._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @sun4i_ss_cipher_poll._rs.10, !21, !"_rs", i1 false, i1 false}
!21 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c", i32 284, i32 5}
!22 = !{ptr @.str.12, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sun4i_ss_cipher_poll._entry.11, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @sun4i_ss_cipher_poll._entry_ptr.13, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @sun4i_ss_cipher_poll._rs.14, !26, !"_rs", i1 false, i1 false}
!26 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c", i32 338, i32 4}
!27 = !{ptr @sun4i_ss_cipher_poll._entry.15, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sun4i_ss_cipher_poll._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @sun4i_ss_opti_poll._rs, !30, !"_rs", i1 false, i1 false}
!30 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c", i32 46, i32 3}
!31 = !{ptr @__func__.sun4i_ss_opti_poll, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @sun4i_ss_opti_poll._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @sun4i_ss_opti_poll._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @sun4i_ss_opti_poll._rs.17, !35, !"_rs", i1 false, i1 false}
!35 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c", i32 89, i32 5}
!36 = !{ptr @sun4i_ss_opti_poll._entry.18, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sun4i_ss_opti_poll._entry_ptr.19, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @sun4i_ss_opti_poll._rs.20, !39, !"_rs", i1 false, i1 false}
!39 = !{!"../drivers/crypto/allwinner/sun4i-ss/sun4i-ss-cipher.c", i32 117, i32 4}
!40 = !{ptr @sun4i_ss_opti_poll._entry.21, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sun4i_ss_opti_poll._entry_ptr.22, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"auto-init"}
!52 = !{i64 2154642726}
!53 = !{i64 4645088}
!54 = !{i64 4645506}
!55 = !{i64 2154656776}
!56 = !{i64 2154665018}
!57 = !{i64 2148262678}
!58 = !{i64 747501, i64 747526, i64 747548, i64 747564, i64 747576, i64 747596, i64 747620, i64 747636, i64 747648}
!59 = !{i64 2148262866}
!60 = !{i64 2148745074, i64 2148745079, i64 2148745092, i64 2148745136, i64 2148745170, i64 2148745191}
!61 = !{i64 2149094863}
!62 = !{i64 2154622262}
!63 = !{i64 2154628927}
!64 = !{i64 2154635217}
