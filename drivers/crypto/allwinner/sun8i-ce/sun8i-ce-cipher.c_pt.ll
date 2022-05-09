; ModuleID = '/llk/IR_all_yes/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.skcipher_request = type { i32, ptr, ptr, ptr, %struct.crypto_async_request, [88 x i8], [0 x ptr] }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.list_head = type { ptr, ptr }
%struct.crypto_skcipher = type { i32, [124 x i8], %struct.crypto_tfm }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.sun8i_ce_dev = type { ptr, [3 x ptr], ptr, ptr, %struct.mutex, %struct.mutex, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.hwrng, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.sun8i_ce_flow = type { ptr, %struct.completion, i32, i32, i32, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%union.anon.71 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ce_task = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.sginfo], [8 x %struct.sginfo], i32, [3 x i32] }
%struct.sginfo = type { i32, i32 }
%struct.ce_variant = type { [3 x i8], [6 x i8], [2 x i32], i8, i8, i8, i8, [3 x %struct.ce_clock], i32, i8, i8 }
%struct.ce_clock = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.56, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.56 = type { %struct.atomic_t }

@sun8i_ce_cipher_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 391, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ERROR: Cannot allocate fallback for %s %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun8i_ce_cipher_init\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_ce_cipher_init._entry_ptr = internal global ptr @sun8i_ce_cipher_init._entry, section ".printk_index", align 4
@sun8i_ce_cipher_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 401, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fallback for %s is %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sun8i_ce_cipher_init._entry_ptr.8 = internal global ptr @sun8i_ce_cipher_init._entry.5, section ".printk_index", align 4
@sun8i_ce_aes_setkey.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 110, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sun8i_ce\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun8i_ce_aes_setkey\00", [44 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ERROR: Invalid keylen %u\0A\00", [38 x i8] zeroinitializer }, align 32
@sun8i_ce_cipher_prepare.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.2, ptr @.str.13, i8 0, i8 25, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sun8i_ce_cipher_prepare\00", [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s %s %u %x IV(%p %u) key=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@sun8i_ce_cipher_prepare._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 145, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot DMA MAP KEY\0A\00", [44 x i8] zeroinitializer }, align 32
@sun8i_ce_cipher_prepare._entry_ptr = internal global ptr @sun8i_ce_cipher_prepare._entry, section ".printk_index", align 4
@sun8i_ce_cipher_prepare._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.12, ptr @.str.2, i32 173, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cannot DMA MAP IV\0A\00", [45 x i8] zeroinitializer }, align 32
@sun8i_ce_cipher_prepare._entry_ptr.17 = internal global ptr @sun8i_ce_cipher_prepare._entry.15, section ".printk_index", align 4
@sun8i_ce_cipher_prepare._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.12, ptr @.str.2, i32 184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid sg number %d\0A\00", [42 x i8] zeroinitializer }, align 32
@sun8i_ce_cipher_prepare._entry_ptr.20 = internal global ptr @sun8i_ce_cipher_prepare._entry.18, section ".printk_index", align 4
@sun8i_ce_cipher_prepare._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.12, ptr @.str.2, i32 193, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_cipher_prepare._entry_ptr.22 = internal global ptr @sun8i_ce_cipher_prepare._entry.21, section ".printk_index", align 4
@sun8i_ce_cipher_prepare._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.12, ptr @.str.2, i32 200, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_cipher_prepare._entry_ptr.24 = internal global ptr @sun8i_ce_cipher_prepare._entry.23, section ".printk_index", align 4
@sun8i_ce_cipher_prepare.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.2, ptr @.str.25, i8 0, i8 53, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s total=%u SG(%d %u off=%d) todo=%u\0A\00", [58 x i8] zeroinitializer }, align 32
@sun8i_ce_cipher_prepare._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.12, ptr @.str.2, i32 216, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"remaining len %d\0A\00", [46 x i8] zeroinitializer }, align 32
@sun8i_ce_cipher_prepare._entry_ptr.28 = internal global ptr @sun8i_ce_cipher_prepare._entry.26, section ".printk_index", align 4
@sun8i_ce_cipher_prepare.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.12, ptr @.str.2, ptr @.str.25, i8 0, i8 56, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@sun8i_ce_cipher_prepare._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.12, ptr @.str.2, i32 231, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ce_cipher_prepare._entry_ptr.30 = internal global ptr @sun8i_ce_cipher_prepare._entry.29, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 24, i64 32]
@__sancov_gen_cov_switch_values.33 = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 390, i32 3 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 399, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 441, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 99, i32 2 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 145, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 173, i32 4 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 184, i32 4 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 193, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 200, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 211, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 216, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private constant [55 x i8] c"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c\00", align 1
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.110, i32 231, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.116 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.116, i32 326, i32 6 }
@llvm.compiler.used = appending global [37 x ptr] [ptr @sun8i_ce_cipher_init._entry, ptr @sun8i_ce_cipher_init._entry.5, ptr @sun8i_ce_cipher_init._entry_ptr, ptr @sun8i_ce_cipher_init._entry_ptr.8, ptr @sun8i_ce_cipher_prepare._entry, ptr @sun8i_ce_cipher_prepare._entry.15, ptr @sun8i_ce_cipher_prepare._entry.18, ptr @sun8i_ce_cipher_prepare._entry.21, ptr @sun8i_ce_cipher_prepare._entry.23, ptr @sun8i_ce_cipher_prepare._entry.26, ptr @sun8i_ce_cipher_prepare._entry.29, ptr @sun8i_ce_cipher_prepare._entry_ptr, ptr @sun8i_ce_cipher_prepare._entry_ptr.17, ptr @sun8i_ce_cipher_prepare._entry_ptr.20, ptr @sun8i_ce_cipher_prepare._entry_ptr.22, ptr @sun8i_ce_cipher_prepare._entry_ptr.24, ptr @sun8i_ce_cipher_prepare._entry_ptr.28, ptr @sun8i_ce_cipher_prepare._entry_ptr.30, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.19, ptr @.str.25, ptr @.str.27, ptr @.str.31, ptr @.str.32], section "llvm.metadata"
@0 = internal global [28 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_cipher_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_cipher_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_cipher_prepare._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_cipher_prepare._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_cipher_prepare._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_cipher_prepare._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_cipher_prepare._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_cipher_prepare._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_cipher_prepare._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_skdecrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %2 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 256, ptr %__ctx.i, align 128
  %call3 = tail call fastcc i32 @sun8i_ce_cipher_need_fallback(ptr noundef %areq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %4, i32 12
  %5 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i, align 4
  %stat_fb.i = getelementptr i8, ptr %6, i32 644
  %7 = ptrtoint ptr %stat_fb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat_fb.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %stat_fb.i, align 4
  %fallback_req.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2
  %fallback_tfm.i = getelementptr i8, ptr %4, i32 152
  %9 = ptrtoint ptr %fallback_tfm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fallback_tfm.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %10, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 3
  %11 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %complete.i, align 8
  %data.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 1
  %18 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 2
  %19 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 4
  %20 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %13, ptr %flags4.i.i, align 4
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %21 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %23 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dst.i, align 4
  %25 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %areq, align 128
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 1
  %27 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iv.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 2
  %29 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %22, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 3
  %30 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %dst2.i.i, align 4
  %31 = ptrtoint ptr %fallback_req.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %26, ptr %fallback_req.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 1
  %32 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %28, ptr %iv4.i.i, align 4
  %33 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %__ctx.i, align 128
  %and.i = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req.i) #7
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ce = getelementptr i8, ptr %1, i32 148
  %35 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ce, align 4
  %call5 = tail call i32 @sun8i_ce_get_engine_number(ptr noundef %36) #7
  %flow = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 1
  %37 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call5, ptr %flow, align 4
  %38 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ce, align 4
  %chanlist = getelementptr inbounds %struct.sun8i_ce_dev, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr %struct.sun8i_ce_flow, ptr %41, i32 %call5
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %call8 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %43, ptr noundef %areq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.i, %if.then.i
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call9.i, %if.then.i ], [ %call11.i, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_ce_cipher_need_fallback(ptr nocapture noundef readonly %areq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %src = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 8
  %call1 = tail call i32 @sg_nents(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call1)
  %cmp = icmp sgt i32 %call1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst, align 4
  %call2 = tail call i32 @sg_nents(ptr noundef %5) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call2)
  %cmp3 = icmp sgt i32 %call2, 8
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %6 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %areq, align 128
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %8 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %9, i32 -100
  %10 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ivsize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %11)
  %cmp5 = icmp ult i32 %7, %11
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9 = icmp ne i32 %7, 0
  %rem = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp9, %tobool.not
  br i1 %or.cond, label %if.end13, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end13:                                         ; preds = %if.end7
  %12 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %src, align 8
  %tobool15.not54 = icmp eq ptr %13, null
  br i1 %tobool15.not54, label %if.end13.while.end_crit_edge, label %if.end13.while.body_crit_edge

if.end13.while.body_crit_edge:                    ; preds = %if.end13
  br label %while.body

if.end13.while.end_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body:                                       ; preds = %if.end21.while.body_crit_edge, %if.end13.while.body_crit_edge
  %sg.055 = phi ptr [ %call22, %if.end21.while.body_crit_edge ], [ %13, %if.end13.while.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.055, i32 0, i32 2
  %14 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %length, align 4
  %rem16 = and i32 %15, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem16)
  %tobool17.not = icmp eq i32 %rem16, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false18:                                  ; preds = %while.body
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.055, i32 0, i32 1
  %16 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %offset, align 4
  %and = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp19 = icmp eq i32 %and, 0
  br i1 %cmp19, label %if.end21, label %lor.lhs.false18.cleanup_crit_edge

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %lor.lhs.false18
  %call22 = tail call ptr @sg_next(ptr noundef nonnull %sg.055) #7
  %tobool15.not = icmp eq ptr %call22, null
  br i1 %tobool15.not, label %if.end21.while.end_crit_edge, label %if.end21.while.body_crit_edge

if.end21.while.body_crit_edge:                    ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end21.while.end_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end21.while.end_crit_edge, %if.end13.while.end_crit_edge
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dst, align 4
  %tobool25.not56 = icmp eq ptr %19, null
  br i1 %tobool25.not56, label %while.end.cleanup_crit_edge, label %while.end.while.body26_crit_edge

while.end.while.body26_crit_edge:                 ; preds = %while.end
  br label %while.body26

while.end.cleanup_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body26:                                     ; preds = %if.end35.while.body26_crit_edge, %while.end.while.body26_crit_edge
  %sg.157 = phi ptr [ %call36, %if.end35.while.body26_crit_edge ], [ %19, %while.end.while.body26_crit_edge ]
  %length27 = getelementptr inbounds %struct.scatterlist, ptr %sg.157, i32 0, i32 2
  %20 = ptrtoint ptr %length27 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %length27, align 4
  %rem28 = and i32 %21, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem28)
  %tobool29.not = icmp eq i32 %rem28, 0
  br i1 %tobool29.not, label %lor.lhs.false30, label %while.body26.cleanup_crit_edge

while.body26.cleanup_crit_edge:                   ; preds = %while.body26
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false30:                                  ; preds = %while.body26
  %offset31 = getelementptr inbounds %struct.scatterlist, ptr %sg.157, i32 0, i32 1
  %22 = ptrtoint ptr %offset31 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %offset31, align 4
  %and32 = and i32 %23, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and32)
  %cmp33 = icmp eq i32 %and32, 0
  br i1 %cmp33, label %if.end35, label %lor.lhs.false30.cleanup_crit_edge

lor.lhs.false30.cleanup_crit_edge:                ; preds = %lor.lhs.false30
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end35:                                         ; preds = %lor.lhs.false30
  %call36 = tail call ptr @sg_next(ptr noundef nonnull %sg.157) #7
  %tobool25.not = icmp eq ptr %call36, null
  br i1 %tobool25.not, label %if.end35.cleanup_crit_edge, label %if.end35.while.body26_crit_edge

if.end35.while.body26_crit_edge:                  ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body26

if.end35.cleanup_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end35.cleanup_crit_edge, %lor.lhs.false30.cleanup_crit_edge, %while.body26.cleanup_crit_edge, %while.end.cleanup_crit_edge, %lor.lhs.false18.cleanup_crit_edge, %while.body.cleanup_crit_edge, %if.end7.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %lor.lhs.false.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.end7.cleanup_crit_edge ], [ 0, %while.end.cleanup_crit_edge ], [ 1, %lor.lhs.false30.cleanup_crit_edge ], [ 1, %while.body26.cleanup_crit_edge ], [ 0, %if.end35.cleanup_crit_edge ], [ 1, %lor.lhs.false18.cleanup_crit_edge ], [ 1, %while.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_get_engine_number(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_skencrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %2 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %__ctx.i, align 128
  %call3 = tail call fastcc i32 @sun8i_ce_cipher_need_fallback(ptr noundef %areq)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %tobool.not = icmp eq i32 %call3, 0
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %4, i32 12
  %5 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i, align 4
  %stat_fb.i = getelementptr i8, ptr %6, i32 644
  %7 = ptrtoint ptr %stat_fb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat_fb.i, align 4
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %stat_fb.i, align 4
  %fallback_req.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2
  %fallback_tfm.i = getelementptr i8, ptr %4, i32 152
  %9 = ptrtoint ptr %fallback_tfm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fallback_tfm.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %10, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 3
  %11 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 4
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 1
  %14 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %complete.i, align 8
  %data.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 2
  %16 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 1
  %18 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 2
  %19 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 4
  %20 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %13, ptr %flags4.i.i, align 4
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %21 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %23 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dst.i, align 4
  %25 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %areq, align 128
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 1
  %27 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iv.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 2
  %29 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %22, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 3
  %30 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %dst2.i.i, align 4
  %31 = ptrtoint ptr %fallback_req.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %26, ptr %fallback_req.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 1
  %32 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %28, ptr %iv4.i.i, align 4
  %33 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %__ctx.i, align 128
  %and.i = and i32 %34, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call9.i = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req.i) #7
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call11.i = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %ce = getelementptr i8, ptr %1, i32 148
  %35 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ce, align 4
  %call5 = tail call i32 @sun8i_ce_get_engine_number(ptr noundef %36) #7
  %flow = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 1
  %37 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %call5, ptr %flow, align 4
  %38 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ce, align 4
  %chanlist = getelementptr inbounds %struct.sun8i_ce_dev, ptr %39, i32 0, i32 6
  %40 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr %struct.sun8i_ce_flow, ptr %41, i32 %call5
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %call8 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %43, ptr noundef %areq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.i, %if.then.i
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call9.i, %if.then.i ], [ %call11.i, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_cipher_init(ptr nocapture noundef %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %2 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 28)
  %ce = getelementptr i8, ptr %1, i32 -244
  %3 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ce, align 4
  %ce4 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %5 = ptrtoint ptr %ce4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ce4, align 4
  %call5 = tail call ptr @crypto_alloc_skcipher(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #7
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %6 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %fallback_tfm, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %ce4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ce4, align 4
  %dev = getelementptr inbounds %struct.sun8i_ce_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %call5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %cra_name.i, i32 noundef %11) #10
  %12 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %fallback_tfm, align 4
  %14 = ptrtoint ptr %13 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %add.ptr.i = getelementptr i8, ptr %tfm, i32 -128
  %15 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call5, align 128
  %add = add i32 %16, 256
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %add.ptr.i, align 128
  %18 = ptrtoint ptr %ce4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ce4, align 4
  %dev19 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev19, align 4
  %22 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i, align 4
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %23, i32 0, i32 9
  %__crt_alg.i66 = getelementptr inbounds %struct.crypto_skcipher, ptr %call5, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %__crt_alg.i66 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__crt_alg.i66, align 4
  %cra_driver_name.i67 = getelementptr inbounds %struct.crypto_alg, ptr %25, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.6, ptr noundef %cra_driver_name.i, ptr noundef %cra_driver_name.i67) #10
  %do_one_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %26 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sun8i_ce_cipher_run, ptr %do_one_request, align 4
  %27 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @sun8i_ce_cipher_prepare, ptr %__crt_ctx.i, align 4
  %unprepare_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %28 = ptrtoint ptr %unprepare_request to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @sun8i_ce_cipher_unprepare, ptr %unprepare_request, align 4
  %29 = ptrtoint ptr %ce4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ce4, align 4
  %dev30 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev30, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %32, i32 noundef 4) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %error_pm, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

error_pm:                                         ; preds = %if.end
  %33 = ptrtoint ptr %ce4 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ce4, align 4
  %dev35 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev35, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %36, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !65
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #7
  %37 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #7, !srcloc !66
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %error_pm.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

error_pm.pm_runtime_put_noidle.exit_crit_edge:    ; preds = %error_pm
  call void @__sanitizer_cov_trace_pc() #9
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %error_pm
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !67
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %error_pm.pm_runtime_put_noidle.exit_crit_edge
  %38 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %39, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %39, ptr noundef %base.i.i) #7
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %14, %do.end ], [ %call.i, %pm_runtime_put_noidle.exit ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ce_cipher_run(ptr noundef %engine, ptr noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %areq, i32 -16
  %tfm.i = getelementptr i8, ptr %areq, i32 16
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %ce2 = getelementptr i8, ptr %1, i32 148
  %2 = ptrtoint ptr %ce2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ce2, align 4
  %flow4 = getelementptr i8, ptr %areq, i32 116
  %4 = ptrtoint ptr %flow4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %flow4, align 4
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %7, i32 0, i32 8
  %call7 = tail call i32 @sun8i_ce_run_task(ptr noundef %3, i32 noundef %5, ptr noundef %cra_name.i) #7
  tail call void @crypto_finalize_skcipher_request(ptr noundef %engine, ptr noundef %add.ptr, i32 noundef %call7) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ce_cipher_prepare(ptr nocapture noundef readnone %engine, ptr nocapture noundef %async_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %async_req, i32 -16
  %tfm.i = getelementptr i8, ptr %async_req, i32 16
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %ce2 = getelementptr i8, ptr %1, i32 148
  %2 = ptrtoint ptr %ce2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ce2, align 4
  %__ctx.i = getelementptr i8, ptr %async_req, i32 112
  %__crt_alg.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ce_cipher_prepare.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ce_cipher_prepare, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !68

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i516 = getelementptr inbounds %struct.crypto_tfm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %__crt_alg.i516 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i516, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr, align 128
  %14 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %__ctx.i, align 128
  %iv = getelementptr i8, ptr %async_req, i32 -12
  %16 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iv, align 4
  %18 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %__crt_alg.i, align 4
  %ivsize.i = getelementptr i8, ptr %19, i32 -100
  %20 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ivsize.i, align 4
  %keylen = getelementptr i8, ptr %1, i32 144
  %22 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %keylen, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ce_cipher_prepare.__UNIQUE_ID_ddebug244, ptr noundef %7, ptr noundef nonnull @.str.13, ptr noundef nonnull @.str.12, ptr noundef %cra_name.i, i32 noundef %13, i32 noundef %15, ptr noundef %17, i32 noundef %21, i32 noundef %23) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stat_req = getelementptr i8, ptr %5, i32 640
  %24 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stat_req, align 128
  %inc = add i32 %25, 1
  store i32 %inc, ptr %stat_req, align 128
  %flow15 = getelementptr i8, ptr %async_req, i32 116
  %26 = ptrtoint ptr %flow15 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flow15, align 4
  %chanlist = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 6
  %28 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chanlist, align 4
  %tl = getelementptr %struct.sun8i_ce_flow, ptr %29, i32 %27, i32 5
  %30 = ptrtoint ptr %tl to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tl, align 4
  %32 = call ptr @memset(ptr %31, i32 0, i32 176)
  %33 = tail call i32 @llvm.bswap.i32(i32 %27)
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %31, align 8
  %variant = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 8
  %35 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %variant, align 4
  %ce_algo_id = getelementptr i8, ptr %5, i32 -252
  %37 = ptrtoint ptr %ce_algo_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ce_algo_id, align 4
  %arrayidx16 = getelementptr [3 x i8], ptr %36, i32 0, i32 %38
  %39 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %arrayidx16, align 1
  %conv = zext i8 %40 to i32
  %41 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %__ctx.i, align 128
  %or = or i32 %42, %conv
  %or18 = or i32 %or, -2147483648
  %43 = tail call i32 @llvm.bswap.i32(i32 %or18)
  %t_common_ctl = getelementptr inbounds %struct.ce_task, ptr %31, i32 0, i32 1
  %44 = ptrtoint ptr %t_common_ctl to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %t_common_ctl, align 4
  %45 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %variant, align 4
  %cipher_t_dlen_in_bytes = getelementptr inbounds %struct.ce_variant, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %cipher_t_dlen_in_bytes to i32
  call void @__asan_load1_noabort(i32 %47)
  %48 = load i8, ptr %cipher_t_dlen_in_bytes, align 4, !range !69
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %48)
  %tobool20.not = icmp eq i8 %48, 0
  %49 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %add.ptr, align 128
  %div504 = lshr i32 %50, 2
  %div504.sink = select i1 %tobool20.not, i32 %div504, i32 %50
  %51 = tail call i32 @llvm.bswap.i32(i32 %div504.sink)
  %52 = getelementptr inbounds %struct.ce_task, ptr %31, i32 0, i32 7
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %51, ptr %52, align 4
  %54 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %variant, align 4
  %ce_blockmode = getelementptr i8, ptr %5, i32 -248
  %56 = ptrtoint ptr %ce_blockmode to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %ce_blockmode, align 8
  %arrayidx27 = getelementptr %struct.ce_variant, ptr %55, i32 0, i32 2, i32 %57
  %58 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx27, align 4
  %keylen28 = getelementptr i8, ptr %1, i32 144
  %60 = ptrtoint ptr %keylen28 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %keylen28, align 4
  %62 = zext i32 %61 to i64
  call void @__sanitizer_cov_trace_switch(i64 %62, ptr @__sancov_gen_cov_switch_values)
  switch i32 %61, label %do.end.sw.epilog_crit_edge [
    i32 32, label %sw.bb32
    i32 24, label %sw.bb30
  ]

do.end.sw.epilog_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb30:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %or31 = or i32 %59, 1
  br label %sw.epilog

sw.bb32:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %or33 = or i32 %59, 2
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb32, %sw.bb30, %do.end.sw.epilog_crit_edge
  %sym.0 = phi i32 [ %or33, %sw.bb32 ], [ %or31, %sw.bb30 ], [ %59, %do.end.sw.epilog_crit_edge ]
  %63 = tail call i32 @llvm.bswap.i32(i32 %sym.0)
  %t_sym_ctl = getelementptr inbounds %struct.ce_task, ptr %31, i32 0, i32 2
  %64 = ptrtoint ptr %t_sym_ctl to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %t_sym_ctl, align 8
  %t_asym_ctl = getelementptr inbounds %struct.ce_task, ptr %31, i32 0, i32 3
  %65 = ptrtoint ptr %t_asym_ctl to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %t_asym_ctl, align 4
  %dev34 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 3
  %66 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev34, align 4
  %key = getelementptr i8, ptr %1, i32 140
  %68 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %key, align 4
  %70 = ptrtoint ptr %keylen28 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %keylen28, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %69) #7
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %sw.epilog
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !70

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %67) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %67, i32 0, i32 3
  %72 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %73, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %74 = ptrtoint ptr %67 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %67, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %75, %if.end.i.i ], [ %73, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %67, ptr noundef %69, i32 noundef %71) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %76 = load ptr, ptr @mem_map, align 4
  %77 = ptrtoint ptr %69 to i32
  %sub.i = add i32 %77, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i517 = getelementptr %struct.page, ptr %76, i32 %shr.i
  %and.i = and i32 %77, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %67, ptr noundef %add.ptr.i517, i32 noundef %and.i, i32 noundef %71, i32 noundef 1, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i518 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %addr_key = getelementptr i8, ptr %async_req, i32 144
  %78 = ptrtoint ptr %addr_key to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %retval.0.i518, ptr %addr_key, align 32
  %79 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev34, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %80, i32 noundef %retval.0.i518) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i518)
  %cmp.i = icmp eq i32 %retval.0.i518, -1
  br i1 %cmp.i, label %do.end44, label %if.end46

do.end44:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end46:                                         ; preds = %dma_map_single_attrs.exit
  %83 = ptrtoint ptr %addr_key to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %addr_key, align 32
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %t_key = getelementptr inbounds %struct.ce_task, ptr %31, i32 0, i32 4
  %86 = ptrtoint ptr %t_key to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %t_key, align 8
  %87 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %__crt_alg.i, align 4
  %ivsize.i520 = getelementptr i8, ptr %88, i32 -100
  %89 = ptrtoint ptr %ivsize.i520 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %ivsize.i520, align 4
  %iv49 = getelementptr i8, ptr %async_req, i32 -12
  %91 = ptrtoint ptr %iv49 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %iv49, align 4
  %tobool50.not = icmp eq ptr %92, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %90)
  %cmp.not = icmp eq i32 %90, 0
  %or.cond579 = select i1 %tobool50.not, i1 true, i1 %cmp.not
  br i1 %or.cond579, label %if.end46.if.end87_crit_edge, label %if.then53

if.end46.if.end87_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end87

if.then53:                                        ; preds = %if.end46
  %ivlen = getelementptr i8, ptr %async_req, i32 128
  %93 = ptrtoint ptr %ivlen to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %90, ptr %ivlen, align 16
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %90, i32 noundef 3521) #11
  %bounce_iv = getelementptr i8, ptr %async_req, i32 124
  %94 = ptrtoint ptr %bounce_iv to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %call9.i.i, ptr %bounce_iv, align 4
  %tobool56.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool56.not, label %if.then53.theend_key_crit_edge, label %if.end58

if.then53.theend_key_crit_edge:                   ; preds = %if.then53
  call void @__sanitizer_cov_trace_pc() #9
  br label %theend_key

if.end58:                                         ; preds = %if.then53
  %95 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %__ctx.i, align 128
  %and = and i32 %96, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool60.not = icmp eq i32 %and, 0
  br i1 %tobool60.not, label %if.end58.if.end69_crit_edge, label %if.end8.i.i550

if.end58.if.end69_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end69

if.end8.i.i550:                                   ; preds = %if.end58
  %call9.i.i549 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %90, i32 noundef 3520) #11
  %backup_iv = getelementptr i8, ptr %async_req, i32 120
  %97 = ptrtoint ptr %backup_iv to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call9.i.i549, ptr %backup_iv, align 8
  %tobool64.not = icmp eq ptr %call9.i.i549, null
  br i1 %tobool64.not, label %if.end8.i.i550.theend_key_crit_edge, label %if.end66

if.end8.i.i550.theend_key_crit_edge:              ; preds = %if.end8.i.i550
  call void @__sanitizer_cov_trace_pc() #9
  br label %theend_key

if.end66:                                         ; preds = %if.end8.i.i550
  call void @__sanitizer_cov_trace_pc() #9
  %98 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %add.ptr, align 128
  %sub = sub i32 %99, %90
  %src = getelementptr i8, ptr %async_req, i32 -8
  %100 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %src, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef nonnull %call9.i.i549, ptr noundef %101, i32 noundef %sub, i32 noundef %90, i32 noundef 0) #7
  br label %if.end69

if.end69:                                         ; preds = %if.end66, %if.end58.if.end69_crit_edge
  %102 = ptrtoint ptr %bounce_iv to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %bounce_iv, align 4
  %104 = ptrtoint ptr %iv49 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %iv49, align 4
  %106 = call ptr @memcpy(ptr %103, ptr %105, i32 %90)
  %107 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dev34, align 4
  %109 = load ptr, ptr %bounce_iv, align 4
  %110 = ptrtoint ptr %ivlen to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ivlen, align 16
  %call.i553 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %109) #7
  br i1 %call.i553, label %land.rhs.i555, label %if.end39.i568

land.rhs.i555:                                    ; preds = %if.end69
  %.b1.i554 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i554, label %land.rhs.i555.dma_map_single_attrs.exit570_crit_edge, label %if.then.i559, !prof !70

land.rhs.i555.dma_map_single_attrs.exit570_crit_edge: ; preds = %land.rhs.i555
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit570

if.then.i559:                                     ; preds = %land.rhs.i555
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i556 = tail call ptr @dev_driver_string(ptr noundef %108) #7
  %init_name.i.i557 = getelementptr inbounds %struct.device, ptr %108, i32 0, i32 3
  %112 = ptrtoint ptr %init_name.i.i557 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %init_name.i.i557, align 8
  %tobool.not.i.i558 = icmp eq ptr %113, null
  br i1 %tobool.not.i.i558, label %if.end.i.i560, label %if.then.i559.dev_name.exit.i562_crit_edge

if.then.i559.dev_name.exit.i562_crit_edge:        ; preds = %if.then.i559
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i562

if.end.i.i560:                                    ; preds = %if.then.i559
  call void @__sanitizer_cov_trace_pc() #9
  %114 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %108, align 4
  br label %dev_name.exit.i562

dev_name.exit.i562:                               ; preds = %if.end.i.i560, %if.then.i559.dev_name.exit.i562_crit_edge
  %retval.0.i.i561 = phi ptr [ %115, %if.end.i.i560 ], [ %113, %if.then.i559.dev_name.exit.i562_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.31, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.32, ptr noundef %call16.i556, ptr noundef %retval.0.i.i561) #7
  br label %dma_map_single_attrs.exit570

if.end39.i568:                                    ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @debug_dma_map_single(ptr noundef %108, ptr noundef %109, i32 noundef %111) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %116 = load ptr, ptr @mem_map, align 4
  %117 = ptrtoint ptr %109 to i32
  %sub.i563 = add i32 %117, 1073741824
  %shr.i564 = lshr i32 %sub.i563, 12
  %add.ptr.i565 = getelementptr %struct.page, ptr %116, i32 %shr.i564
  %and.i566 = and i32 %117, 4095
  %call41.i567 = tail call i32 @dma_map_page_attrs(ptr noundef %108, ptr noundef %add.ptr.i565, i32 noundef %and.i566, i32 noundef %111, i32 noundef 1, i32 noundef 0) #7
  br label %dma_map_single_attrs.exit570

dma_map_single_attrs.exit570:                     ; preds = %if.end39.i568, %dev_name.exit.i562, %land.rhs.i555.dma_map_single_attrs.exit570_crit_edge
  %retval.0.i569 = phi i32 [ %call41.i567, %if.end39.i568 ], [ -1, %dev_name.exit.i562 ], [ -1, %land.rhs.i555.dma_map_single_attrs.exit570_crit_edge ]
  %addr_iv = getelementptr i8, ptr %async_req, i32 140
  %118 = ptrtoint ptr %addr_iv to i32
  call void @__asan_store4_noabort(i32 %118)
  store i32 %retval.0.i569, ptr %addr_iv, align 4
  %119 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %dev34, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %120, i32 noundef %retval.0.i569) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i569)
  %cmp.i571 = icmp eq i32 %retval.0.i569, -1
  br i1 %cmp.i571, label %do.end83, label %if.end85

do.end83:                                         ; preds = %dma_map_single_attrs.exit570
  call void @__sanitizer_cov_trace_pc() #9
  %121 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %122, ptr noundef nonnull @.str.16) #10
  br label %theend_iv

if.end85:                                         ; preds = %dma_map_single_attrs.exit570
  call void @__sanitizer_cov_trace_pc() #9
  %123 = ptrtoint ptr %addr_iv to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %addr_iv, align 4
  %125 = tail call i32 @llvm.bswap.i32(i32 %124)
  %t_iv = getelementptr inbounds %struct.ce_task, ptr %31, i32 0, i32 5
  %126 = ptrtoint ptr %t_iv to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %t_iv, align 4
  br label %if.end87

if.end87:                                         ; preds = %if.end85, %if.end46.if.end87_crit_edge
  %src88 = getelementptr i8, ptr %async_req, i32 -8
  %127 = ptrtoint ptr %src88 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %src88, align 8
  %dst = getelementptr i8, ptr %async_req, i32 -4
  %129 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %dst, align 4
  %cmp89 = icmp eq ptr %128, %130
  %131 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %dev34, align 4
  %call95 = tail call i32 @sg_nents(ptr noundef %128) #7
  br i1 %cmp89, label %if.then91, label %if.else107

if.then91:                                        ; preds = %if.end87
  %call96 = tail call i32 @dma_map_sg_attrs(ptr noundef %132, ptr noundef %128, i32 noundef %call95, i32 noundef 0, i32 noundef 0) #7
  %133 = add i32 %call96, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %133)
  %134 = icmp ult i32 %133, -8
  br i1 %134, label %do.end104, label %if.then91.for.body.preheader_crit_edge

if.then91.for.body.preheader_crit_edge:           ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

do.end104:                                        ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  %135 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %136, ptr noundef nonnull @.str.19, i32 noundef %call96) #10
  br label %theend_iv

if.else107:                                       ; preds = %if.end87
  %call112 = tail call i32 @dma_map_sg_attrs(ptr noundef %132, ptr noundef %128, i32 noundef %call95, i32 noundef 1, i32 noundef 0) #7
  %137 = add i32 %call112, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %137)
  %138 = icmp ult i32 %137, -8
  %139 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %dev34, align 4
  br i1 %138, label %do.end121, label %if.end123

do.end121:                                        ; preds = %if.else107
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %140, ptr noundef nonnull @.str.19, i32 noundef %call112) #10
  br label %theend_iv

if.end123:                                        ; preds = %if.else107
  %141 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %dst, align 4
  %call127 = tail call i32 @sg_nents(ptr noundef %142) #7
  %call128 = tail call i32 @dma_map_sg_attrs(ptr noundef %140, ptr noundef %142, i32 noundef %call127, i32 noundef 2, i32 noundef 0) #7
  %143 = add i32 %call128, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %143)
  %144 = icmp ult i32 %143, -8
  br i1 %144, label %do.end137, label %if.end123.for.body.preheader_crit_edge

if.end123.for.body.preheader_crit_edge:           ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

do.end137:                                        ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %145 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %146, ptr noundef nonnull @.str.19, i32 noundef %call128) #10
  br label %theend_sgs

for.body.preheader:                               ; preds = %if.end123.for.body.preheader_crit_edge, %if.then91.for.body.preheader_crit_edge
  %nr_sgs.0 = phi i32 [ %call96, %if.then91.for.body.preheader_crit_edge ], [ %call112, %if.end123.for.body.preheader_crit_edge ]
  %nr_sgd.0 = phi i32 [ %call96, %if.then91.for.body.preheader_crit_edge ], [ %call128, %if.end123.for.body.preheader_crit_edge ]
  %147 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load i32, ptr %add.ptr, align 128
  %149 = ptrtoint ptr %src88 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %src88, align 8
  br label %for.body

for.body:                                         ; preds = %do.end174.for.body_crit_edge, %for.body.preheader
  %sg.0584 = phi ptr [ %call177, %do.end174.for.body_crit_edge ], [ %150, %for.body.preheader ]
  %i.0582 = phi i32 [ %inc176, %do.end174.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %len.0581 = phi i32 [ %sub175, %do.end174.for.body_crit_edge ], [ %148, %for.body.preheader ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0584, i32 0, i32 3
  %151 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %dma_address, align 4
  %153 = tail call i32 @llvm.bswap.i32(i32 %152)
  %arrayidx145 = getelementptr %struct.ce_task, ptr %31, i32 0, i32 8, i32 %i.0582
  %154 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %153, ptr %arrayidx145, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0584, i32 0, i32 4
  %155 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %dma_length, align 4
  %157 = tail call i32 @llvm.umin.i32(i32 %len.0581, i32 %156)
  %div149506 = lshr i32 %157, 2
  %158 = tail call i32 @llvm.bswap.i32(i32 %div149506)
  %len152 = getelementptr %struct.ce_task, ptr %31, i32 0, i32 8, i32 %i.0582, i32 1
  %159 = ptrtoint ptr %len152 to i32
  call void @__asan_store4_noabort(i32 %159)
  store i32 %158, ptr %len152, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ce_cipher_prepare.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ce_cipher_prepare, %if.then165)) #7
          to label %do.end174 [label %if.then165], !srcloc !68

if.then165:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %160 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %dev34, align 4
  %162 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %add.ptr, align 128
  %164 = ptrtoint ptr %len152 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %len152, align 4
  %offset171 = getelementptr inbounds %struct.scatterlist, ptr %sg.0584, i32 0, i32 1
  %166 = ptrtoint ptr %offset171 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load i32, ptr %offset171, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ce_cipher_prepare.__UNIQUE_ID_ddebug247, ptr noundef %161, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.12, i32 noundef %163, i32 noundef %i.0582, i32 noundef %165, i32 noundef %167, i32 noundef %157) #7
  br label %do.end174

do.end174:                                        ; preds = %if.then165, %for.body
  %sub175 = sub i32 %len.0581, %157
  %inc176 = add nuw nsw i32 %i.0582, 1
  %call177 = tail call ptr @sg_next(ptr noundef %sg.0584) #7
  %exitcond.not = icmp eq i32 %inc176, %nr_sgs.0
  br i1 %exitcond.not, label %for.end, label %do.end174.for.body_crit_edge

do.end174.for.body_crit_edge:                     ; preds = %do.end174
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %do.end174
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub175)
  %cmp178.not = icmp eq i32 %sub175, 0
  br i1 %cmp178.not, label %if.end185, label %do.end183

do.end183:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %168 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %169, ptr noundef nonnull @.str.27, i32 noundef %sub175) #10
  br label %theend_sgs

if.end185:                                        ; preds = %for.end
  %170 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load i32, ptr %add.ptr, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_sgd.0)
  %cmp189585 = icmp sgt i32 %nr_sgd.0, 0
  br i1 %cmp189585, label %for.body191.preheader, label %if.end185.for.end233_crit_edge

if.end185.for.end233_crit_edge:                   ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end233

for.body191.preheader:                            ; preds = %if.end185
  %172 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %dst, align 4
  br label %for.body191

for.body191:                                      ; preds = %do.end228.for.body191_crit_edge, %for.body191.preheader
  %sg.1589 = phi ptr [ %call232, %do.end228.for.body191_crit_edge ], [ %173, %for.body191.preheader ]
  %i.1587 = phi i32 [ %inc231, %do.end228.for.body191_crit_edge ], [ 0, %for.body191.preheader ]
  %len.1586 = phi i32 [ %sub229, %do.end228.for.body191_crit_edge ], [ %171, %for.body191.preheader ]
  %dma_address192 = getelementptr inbounds %struct.scatterlist, ptr %sg.1589, i32 0, i32 3
  %174 = ptrtoint ptr %dma_address192 to i32
  call void @__asan_load4_noabort(i32 %174)
  %175 = load i32, ptr %dma_address192, align 4
  %176 = tail call i32 @llvm.bswap.i32(i32 %175)
  %arrayidx193 = getelementptr %struct.ce_task, ptr %31, i32 0, i32 9, i32 %i.1587
  %177 = ptrtoint ptr %arrayidx193 to i32
  call void @__asan_store4_noabort(i32 %177)
  store i32 %176, ptr %arrayidx193, align 8
  %dma_length195 = getelementptr inbounds %struct.scatterlist, ptr %sg.1589, i32 0, i32 4
  %178 = ptrtoint ptr %dma_length195 to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %dma_length195, align 4
  %180 = tail call i32 @llvm.umin.i32(i32 %len.1586, i32 %179)
  %div203505 = lshr i32 %180, 2
  %181 = tail call i32 @llvm.bswap.i32(i32 %div203505)
  %len206 = getelementptr %struct.ce_task, ptr %31, i32 0, i32 9, i32 %i.1587, i32 1
  %182 = ptrtoint ptr %len206 to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %181, ptr %len206, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ce_cipher_prepare.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ce_cipher_prepare, %if.then219)) #7
          to label %do.end228 [label %if.then219], !srcloc !68

if.then219:                                       ; preds = %for.body191
  call void @__sanitizer_cov_trace_pc() #9
  %183 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev34, align 4
  %185 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %add.ptr, align 128
  %187 = ptrtoint ptr %len206 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %len206, align 4
  %offset225 = getelementptr inbounds %struct.scatterlist, ptr %sg.1589, i32 0, i32 1
  %189 = ptrtoint ptr %offset225 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load i32, ptr %offset225, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ce_cipher_prepare.__UNIQUE_ID_ddebug250, ptr noundef %184, ptr noundef nonnull @.str.25, ptr noundef nonnull @.str.12, i32 noundef %186, i32 noundef %i.1587, i32 noundef %188, i32 noundef %190, i32 noundef %180) #7
  br label %do.end228

do.end228:                                        ; preds = %if.then219, %for.body191
  %sub229 = sub i32 %len.1586, %180
  %inc231 = add nuw nsw i32 %i.1587, 1
  %call232 = tail call ptr @sg_next(ptr noundef %sg.1589) #7
  %exitcond591.not = icmp eq i32 %inc231, %nr_sgd.0
  br i1 %exitcond591.not, label %do.end228.for.end233_crit_edge, label %do.end228.for.body191_crit_edge

do.end228.for.body191_crit_edge:                  ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body191

do.end228.for.end233_crit_edge:                   ; preds = %do.end228
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end233

for.end233:                                       ; preds = %do.end228.for.end233_crit_edge, %if.end185.for.end233_crit_edge
  %len.1.lcssa = phi i32 [ %171, %if.end185.for.end233_crit_edge ], [ %sub229, %do.end228.for.end233_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1.lcssa)
  %cmp234.not = icmp eq i32 %len.1.lcssa, 0
  br i1 %cmp234.not, label %if.end241, label %do.end239

do.end239:                                        ; preds = %for.end233
  call void @__sanitizer_cov_trace_pc() #9
  %191 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %dev34, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %192, ptr noundef nonnull @.str.27, i32 noundef %len.1.lcssa) #10
  br label %theend_sgs

if.end241:                                        ; preds = %for.end233
  call void @__sanitizer_cov_trace_pc() #9
  %193 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %add.ptr, align 128
  %timeout = getelementptr %struct.sun8i_ce_flow, ptr %29, i32 %27, i32 4
  %195 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %195)
  store i32 %194, ptr %timeout, align 4
  %nr_sgs243 = getelementptr i8, ptr %async_req, i32 132
  %196 = ptrtoint ptr %nr_sgs243 to i32
  call void @__asan_store4_noabort(i32 %196)
  store i32 %nr_sgs.0, ptr %nr_sgs243, align 4
  %nr_sgd244 = getelementptr i8, ptr %async_req, i32 136
  %197 = ptrtoint ptr %nr_sgd244 to i32
  call void @__asan_store4_noabort(i32 %197)
  store i32 %nr_sgd.0, ptr %nr_sgd244, align 8
  br label %cleanup

theend_sgs:                                       ; preds = %do.end239, %do.end183, %do.end137
  %198 = ptrtoint ptr %src88 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %src88, align 8
  %200 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %dst, align 4
  %cmp247 = icmp eq ptr %199, %201
  %202 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %dev34, align 4
  %call253 = tail call i32 @sg_nents(ptr noundef %199) #7
  br i1 %cmp247, label %if.then249, label %if.then257

if.then249:                                       ; preds = %theend_sgs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %203, ptr noundef %199, i32 noundef %call253, i32 noundef 0, i32 noundef 0) #7
  br label %theend_iv

if.then257:                                       ; preds = %theend_sgs
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %203, ptr noundef %199, i32 noundef %call253, i32 noundef 1, i32 noundef 0) #7
  %204 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %dev34, align 4
  %206 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %dst, align 4
  %call266 = tail call i32 @sg_nents(ptr noundef %207) #7
  tail call void @dma_unmap_sg_attrs(ptr noundef %205, ptr noundef %207, i32 noundef %call266, i32 noundef 2, i32 noundef 0) #7
  br label %theend_iv

theend_iv:                                        ; preds = %if.then257, %if.then249, %do.end121, %do.end104, %do.end83
  %err.1 = phi i32 [ -12, %do.end83 ], [ -22, %do.end104 ], [ -22, %if.then249 ], [ -22, %if.then257 ], [ -22, %do.end121 ]
  %208 = ptrtoint ptr %iv49 to i32
  call void @__asan_load4_noabort(i32 %208)
  %209 = load ptr, ptr %iv49, align 4
  %tobool269.not = icmp eq ptr %209, null
  %or.cond509 = select i1 %tobool269.not, i1 true, i1 %cmp.not
  br i1 %or.cond509, label %theend_iv.theend_key_crit_edge, label %if.then273

theend_iv.theend_key_crit_edge:                   ; preds = %theend_iv
  call void @__sanitizer_cov_trace_pc() #9
  br label %theend_key

if.then273:                                       ; preds = %theend_iv
  %addr_iv274 = getelementptr i8, ptr %async_req, i32 140
  %210 = ptrtoint ptr %addr_iv274 to i32
  call void @__asan_load4_noabort(i32 %210)
  %211 = load i32, ptr %addr_iv274, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %211)
  %tobool275.not = icmp eq i32 %211, 0
  br i1 %tobool275.not, label %if.then273.if.end280_crit_edge, label %if.then276

if.then273.if.end280_crit_edge:                   ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end280

if.then276:                                       ; preds = %if.then273
  call void @__sanitizer_cov_trace_pc() #9
  %212 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %212)
  %213 = load ptr, ptr %dev34, align 4
  %ivlen279 = getelementptr i8, ptr %async_req, i32 128
  %214 = ptrtoint ptr %ivlen279 to i32
  call void @__asan_load4_noabort(i32 %214)
  %215 = load i32, ptr %ivlen279, align 16
  tail call void @dma_unmap_page_attrs(ptr noundef %213, i32 noundef %211, i32 noundef %215, i32 noundef 1, i32 noundef 0) #7
  br label %if.end280

if.end280:                                        ; preds = %if.then276, %if.then273.if.end280_crit_edge
  %216 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %216)
  %217 = load i32, ptr %__ctx.i, align 128
  %and284 = and i32 %217, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and284)
  %tobool285.not = icmp eq i32 %and284, 0
  br i1 %tobool285.not, label %if.else290, label %if.then286

if.then286:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #9
  %218 = ptrtoint ptr %iv49 to i32
  call void @__asan_load4_noabort(i32 %218)
  %219 = load ptr, ptr %iv49, align 4
  %backup_iv288 = getelementptr i8, ptr %async_req, i32 120
  %220 = ptrtoint ptr %backup_iv288 to i32
  call void @__asan_load4_noabort(i32 %220)
  %221 = load ptr, ptr %backup_iv288, align 8
  %222 = call ptr @memcpy(ptr %219, ptr %221, i32 %90)
  %223 = load ptr, ptr %backup_iv288, align 8
  tail call void @kfree_sensitive(ptr noundef %223) #7
  br label %if.end293

if.else290:                                       ; preds = %if.end280
  call void @__sanitizer_cov_trace_pc() #9
  %224 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %224)
  %225 = load i32, ptr %add.ptr, align 128
  %sub282 = sub i32 %225, %90
  %226 = ptrtoint ptr %iv49 to i32
  call void @__asan_load4_noabort(i32 %226)
  %227 = load ptr, ptr %iv49, align 4
  %dst292 = getelementptr i8, ptr %async_req, i32 -4
  %228 = ptrtoint ptr %dst292 to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %dst292, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %227, ptr noundef %229, i32 noundef %sub282, i32 noundef %90, i32 noundef 0) #7
  br label %if.end293

if.end293:                                        ; preds = %if.else290, %if.then286
  %bounce_iv294 = getelementptr i8, ptr %async_req, i32 124
  %230 = ptrtoint ptr %bounce_iv294 to i32
  call void @__asan_load4_noabort(i32 %230)
  %231 = load ptr, ptr %bounce_iv294, align 4
  tail call void @kfree(ptr noundef %231) #7
  br label %theend_key

theend_key:                                       ; preds = %if.end293, %theend_iv.theend_key_crit_edge, %if.end8.i.i550.theend_key_crit_edge, %if.then53.theend_key_crit_edge
  %err.2 = phi i32 [ %err.1, %if.end293 ], [ %err.1, %theend_iv.theend_key_crit_edge ], [ -12, %if.then53.theend_key_crit_edge ], [ -12, %if.end8.i.i550.theend_key_crit_edge ]
  %232 = ptrtoint ptr %dev34 to i32
  call void @__asan_load4_noabort(i32 %232)
  %233 = load ptr, ptr %dev34, align 4
  %234 = ptrtoint ptr %addr_key to i32
  call void @__asan_load4_noabort(i32 %234)
  %235 = load i32, ptr %addr_key, align 32
  %236 = ptrtoint ptr %keylen28 to i32
  call void @__asan_load4_noabort(i32 %236)
  %237 = load i32, ptr %keylen28, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %233, i32 noundef %235, i32 noundef %237, i32 noundef 1, i32 noundef 0) #7
  br label %cleanup

cleanup:                                          ; preds = %theend_key, %if.end241, %do.end44
  %retval.0 = phi i32 [ 0, %if.end241 ], [ -14, %do.end44 ], [ %err.2, %theend_key ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ce_cipher_unprepare(ptr nocapture noundef readnone %engine, ptr nocapture noundef readonly %async_req) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %async_req, i32 -16
  %tfm.i = getelementptr i8, ptr %async_req, i32 16
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %ce2 = getelementptr i8, ptr %1, i32 148
  %2 = ptrtoint ptr %ce2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ce2, align 4
  %__ctx.i = getelementptr i8, ptr %async_req, i32 112
  %nr_sgs4 = getelementptr i8, ptr %async_req, i32 132
  %4 = ptrtoint ptr %nr_sgs4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_sgs4, align 4
  %nr_sgd5 = getelementptr i8, ptr %async_req, i32 136
  %6 = ptrtoint ptr %nr_sgd5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %nr_sgd5, align 8
  %flow6 = getelementptr i8, ptr %async_req, i32 116
  %8 = ptrtoint ptr %flow6 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flow6, align 4
  %chanlist = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chanlist, align 4
  %tl = getelementptr %struct.sun8i_ce_flow, ptr %11, i32 %9, i32 5
  %12 = ptrtoint ptr %tl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tl, align 4
  %__crt_alg.i.i = getelementptr i8, ptr %1, i32 12
  %14 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i.i, align 4
  %ivsize.i = getelementptr i8, ptr %15, i32 -100
  %16 = ptrtoint ptr %ivsize.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %ivsize.i, align 4
  %src = getelementptr i8, ptr %async_req, i32 -8
  %18 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %src, align 8
  %dst = getelementptr i8, ptr %async_req, i32 -4
  %20 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dst, align 4
  %cmp = icmp eq ptr %19, %21
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 3
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %23, ptr noundef %19, i32 noundef %5, i32 noundef 0, i32 noundef 0) #7
  br label %if.end15

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp9 = icmp sgt i32 %5, 0
  br i1 %cmp9, label %if.then10, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then10:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %dev11 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 3
  %24 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev11, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %25, ptr noundef %19, i32 noundef %5, i32 noundef 1, i32 noundef 0) #7
  br label %if.end

if.end:                                           ; preds = %if.then10, %if.else.if.end_crit_edge
  %dev13 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %dev13 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev13, align 4
  %28 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dst, align 4
  tail call void @dma_unmap_sg_attrs(ptr noundef %27, ptr noundef %29, i32 noundef %7, i32 noundef 2, i32 noundef 0) #7
  br label %if.end15

if.end15:                                         ; preds = %if.end, %if.then
  %iv = getelementptr i8, ptr %async_req, i32 -12
  %30 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %iv, align 4
  %tobool.not = icmp eq ptr %31, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp16.not = icmp eq i32 %17, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp16.not
  br i1 %or.cond, label %if.end15.if.end30_crit_edge, label %if.then17

if.end15.if.end30_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end30

if.then17:                                        ; preds = %if.end15
  %t_iv = getelementptr inbounds %struct.ce_task, ptr %13, i32 0, i32 5
  %32 = ptrtoint ptr %t_iv to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %t_iv, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool18.not = icmp eq i32 %33, 0
  br i1 %tobool18.not, label %if.then17.if.end21_crit_edge, label %if.then19

if.then17.if.end21_crit_edge:                     ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end21

if.then19:                                        ; preds = %if.then17
  call void @__sanitizer_cov_trace_pc() #9
  %dev20 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 3
  %34 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev20, align 4
  %addr_iv = getelementptr i8, ptr %async_req, i32 140
  %36 = ptrtoint ptr %addr_iv to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %addr_iv, align 4
  %ivlen = getelementptr i8, ptr %async_req, i32 128
  %38 = ptrtoint ptr %ivlen to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ivlen, align 16
  tail call void @dma_unmap_page_attrs(ptr noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef 1, i32 noundef 0) #7
  br label %if.end21

if.end21:                                         ; preds = %if.then19, %if.then17.if.end21_crit_edge
  %40 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %__ctx.i, align 128
  %and = and i32 %41, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %if.else26, label %if.then23

if.then23:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %42 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %iv, align 4
  %backup_iv = getelementptr i8, ptr %async_req, i32 120
  %44 = ptrtoint ptr %backup_iv to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %backup_iv, align 8
  %46 = call ptr @memcpy(ptr %43, ptr %45, i32 %17)
  %47 = load ptr, ptr %backup_iv, align 8
  tail call void @kfree_sensitive(ptr noundef %47) #7
  br label %if.end29

if.else26:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr, align 128
  %sub = sub i32 %49, %17
  %50 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %iv, align 4
  %52 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dst, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef %51, ptr noundef %53, i32 noundef %sub, i32 noundef %17, i32 noundef 0) #7
  br label %if.end29

if.end29:                                         ; preds = %if.else26, %if.then23
  %bounce_iv = getelementptr i8, ptr %async_req, i32 124
  %54 = ptrtoint ptr %bounce_iv to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %bounce_iv, align 4
  tail call void @kfree(ptr noundef %55) #7
  br label %if.end30

if.end30:                                         ; preds = %if.end29, %if.end15.if.end30_crit_edge
  %dev31 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 3
  %56 = ptrtoint ptr %dev31 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev31, align 4
  %addr_key = getelementptr i8, ptr %async_req, i32 144
  %58 = ptrtoint ptr %addr_key to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %addr_key, align 32
  %keylen = getelementptr i8, ptr %1, i32 144
  %60 = ptrtoint ptr %keylen to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %keylen, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %57, i32 noundef %59, i32 noundef %61, i32 noundef 1, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun8i_ce_cipher_exit(ptr nocapture noundef readonly %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  tail call void @kfree_sensitive(ptr noundef %1) #7
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i) #7
  %ce = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %4 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce, align 4
  %dev = getelementptr inbounds %struct.sun8i_ce_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %7, i32 noundef 4) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_aes_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ce1 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 16
  %0 = ptrtoint ptr %ce1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ce1, align 4
  %2 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values.33)
  switch i32 %keylen, label %do.body [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 24, label %entry.sw.epilog_crit_edge32
    i32 32, label %entry.sw.epilog_crit_edge33
  ]

entry.sw.epilog_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge32:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ce_aes_setkey.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ce_aes_setkey, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !68

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.sun8i_ce_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ce_aes_setkey.__UNIQUE_ID_ddebug251, ptr noundef %4, ptr noundef nonnull @.str.11, i32 noundef %keylen) #7
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge32, %entry.sw.epilog_crit_edge33
  %key5 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %5 = ptrtoint ptr %key5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %key5, align 4
  tail call void @kfree_sensitive(ptr noundef %6) #7
  %keylen6 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %7 = ptrtoint ptr %keylen6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %keylen, ptr %keylen6, align 4
  %call7 = tail call ptr @kmemdup(ptr noundef %key, i32 noundef %keylen, i32 noundef 3265) #7
  %8 = ptrtoint ptr %key5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %key5, align 4
  %tobool10.not = icmp eq ptr %call7, null
  br i1 %tobool10.not, label %sw.epilog.cleanup_crit_edge, label %if.end12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %fallback_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 20
  %9 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %base.i.i, align 128
  %and.i.i = and i32 %12, -1048321
  store i32 %and.i.i, ptr %base.i.i, align 128
  %13 = load ptr, ptr %fallback_tfm, align 4
  %base = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 0, i32 2
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %base, align 128
  %and = and i32 %15, 1048320
  %base.i.i30 = getelementptr inbounds %struct.crypto_skcipher, ptr %13, i32 0, i32 2
  %16 = ptrtoint ptr %base.i.i30 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %base.i.i30, align 128
  %or.i.i = or i32 %17, %and
  store i32 %or.i.i, ptr %base.i.i30, align 128
  %18 = load ptr, ptr %fallback_tfm, align 4
  %call15 = tail call i32 @crypto_skcipher_setkey(ptr noundef %18, ptr noundef %key, i32 noundef %keylen) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %sw.epilog.cleanup_crit_edge, %if.then, %do.body
  %retval.0 = phi i32 [ %call15, %if.end12 ], [ -22, %if.then ], [ -12, %sw.epilog.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_des3_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) local_unnamed_addr #0 align 64 {
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
  br i1 %brmerge.i.i.i, label %lor.lhs.false.i.i.i.if.end_crit_edge, label %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %verify_skcipher_des3_key.exit.thread

lor.lhs.false.i.i.i.if.end_crit_edge:             ; preds = %lor.lhs.false.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i.i.i:                              ; preds = %entry
  br i1 %tobool.not.i.i, label %land.lhs.true.i.i.i.if.end_crit_edge, label %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge

land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge: ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %verify_skcipher_des3_key.exit.thread

land.lhs.true.i.i.i.if.end_crit_edge:             ; preds = %land.lhs.true.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

verify_skcipher_des3_key.exit.thread:             ; preds = %land.lhs.true.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge, %lor.lhs.false.i.i.i.verify_skcipher_des3_key.exit.thread_crit_edge
  %24 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !71
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.i.i.i.if.end_crit_edge, %lor.lhs.false.i.i.i.if.end_crit_edge
  %25 = call ptr @memset(ptr %K.i.i.i, i32 0, i32 24)
  call void asm sideeffect "", "r,~{memory}"(ptr nonnull %K.i.i.i) #7, !srcloc !71
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %K.i.i.i) #7
  %key2 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %26 = ptrtoint ptr %key2 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %key2, align 4
  call void @kfree_sensitive(ptr noundef %27) #7
  %keylen3 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %28 = ptrtoint ptr %keylen3 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %keylen, ptr %keylen3, align 4
  %call4 = call ptr @kmemdup(ptr noundef %key, i32 noundef %keylen, i32 noundef 3265) #7
  %29 = ptrtoint ptr %key2 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call4, ptr %key2, align 4
  %tobool7.not = icmp eq ptr %call4, null
  br i1 %tobool7.not, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %fallback_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 20
  %30 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i27 = getelementptr inbounds %struct.crypto_skcipher, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %base.i.i27 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %base.i.i27, align 128
  %and.i.i28 = and i32 %33, -1048321
  store i32 %and.i.i28, ptr %base.i.i27, align 128
  %34 = load ptr, ptr %fallback_tfm, align 4
  %35 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %base.i.i, align 128
  %and = and i32 %36, 1048320
  %base.i.i29 = getelementptr inbounds %struct.crypto_skcipher, ptr %34, i32 0, i32 2
  %37 = ptrtoint ptr %base.i.i29 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %base.i.i29, align 128
  %or.i.i = or i32 %38, %and
  store i32 %or.i.i, ptr %base.i.i29, align 128
  %39 = load ptr, ptr %fallback_tfm, align 4
  %call12 = call i32 @crypto_skcipher_setkey(ptr noundef %39, ptr noundef %key, i32 noundef %keylen) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %if.end.cleanup_crit_edge, %verify_skcipher_des3_key.exit.thread
  %retval.0 = phi i32 [ %call12, %if.end9 ], [ -12, %if.end.cleanup_crit_edge ], [ -126, %verify_skcipher_des3_key.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_run_task(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_skcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

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

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 28)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !39, !40, !42, !43, !45, !46, !47, !49, !51, !52, !54, !55}
!llvm.module.flags = !{!56, !57, !58, !59, !60, !61, !62, !63}
!llvm.ident = !{!64}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c", i32 390, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun8i_ce_cipher_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun8i_ce_cipher_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c", i32 399, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sun8i_ce_cipher_init._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @sun8i_ce_cipher_init._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c", i32 441, i32 3}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @sun8i_ce_aes_setkey.__UNIQUE_ID_ddebug251, !14, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c", i32 99, i32 2}
!20 = !{ptr @.str.13, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sun8i_ce_cipher_prepare.__UNIQUE_ID_ddebug244, !19, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c", i32 145, i32 3}
!24 = !{ptr @sun8i_ce_cipher_prepare._entry, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sun8i_ce_cipher_prepare._entry_ptr, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.16, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c", i32 173, i32 4}
!28 = !{ptr @sun8i_ce_cipher_prepare._entry.15, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sun8i_ce_cipher_prepare._entry_ptr.17, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c", i32 184, i32 4}
!32 = !{ptr @sun8i_ce_cipher_prepare._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sun8i_ce_cipher_prepare._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @sun8i_ce_cipher_prepare._entry.21, !35, !"_entry", i1 false, i1 false}
!35 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c", i32 193, i32 4}
!36 = !{ptr @sun8i_ce_cipher_prepare._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @sun8i_ce_cipher_prepare._entry.23, !38, !"_entry", i1 false, i1 false}
!38 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c", i32 200, i32 4}
!39 = !{ptr @sun8i_ce_cipher_prepare._entry_ptr.24, !38, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.25, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c", i32 211, i32 3}
!42 = !{ptr @sun8i_ce_cipher_prepare.__UNIQUE_ID_ddebug247, !41, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!43 = !{ptr @.str.27, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c", i32 216, i32 3}
!45 = !{ptr @sun8i_ce_cipher_prepare._entry.26, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sun8i_ce_cipher_prepare._entry_ptr.28, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @sun8i_ce_cipher_prepare.__UNIQUE_ID_ddebug250, !48, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!48 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c", i32 226, i32 3}
!49 = !{ptr @sun8i_ce_cipher_prepare._entry.29, !50, !"_entry", i1 false, i1 false}
!50 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-cipher.c", i32 231, i32 3}
!51 = !{ptr @sun8i_ce_cipher_prepare._entry_ptr.30, !50, !"_entry_ptr", i1 false, i1 false}
!52 = distinct !{null, !53, !"__already_done", i1 false, i1 false}
!53 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!54 = !{ptr @.str.31, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.32, !53, !"<string literal>", i1 false, i1 false}
!56 = !{i32 1, !"wchar_size", i32 2}
!57 = !{i32 1, !"min_enum_size", i32 4}
!58 = !{i32 8, !"branch-target-enforcement", i32 0}
!59 = !{i32 8, !"sign-return-address", i32 0}
!60 = !{i32 8, !"sign-return-address-all", i32 0}
!61 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!62 = !{i32 7, !"uwtable", i32 1}
!63 = !{i32 7, !"frame-pointer", i32 2}
!64 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!65 = !{i64 2148157333}
!66 = !{i64 533254, i64 533279, i64 533301, i64 533317, i64 533329, i64 533349, i64 533373, i64 533389, i64 533401}
!67 = !{i64 2148157521}
!68 = !{i64 2148731053, i64 2148731058, i64 2148731071, i64 2148731115, i64 2148731149, i64 2148731170}
!69 = !{i8 0, i8 2}
!70 = !{!"branch_weights", i32 2000, i32 1}
!71 = !{i64 2149220116}
