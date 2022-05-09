; ModuleID = '/llk/IR_all_yes/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c"
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
%struct.sun8i_ss_dev = type { ptr, [2 x ptr], ptr, ptr, %struct.mutex, ptr, %struct.atomic_t, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.sun8i_ss_flow = type { ptr, %struct.completion, i32, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.71 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
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
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.ss_variant = type { [3 x i8], [4 x i8], [2 x i32], [2 x %struct.ss_clock] }
%struct.ss_clock = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.56, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.56 = type { %struct.atomic_t }
%struct.sginfo = type { i32, i32 }
%struct.sun8i_cipher_req_ctx = type { [8 x %struct.sginfo], [8 x %struct.sginfo], i32, i32, i32, i32, i32, i32, i32, i32, ptr, [92 x i8], %struct.skcipher_request }

@sun8i_ss_cipher_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 341, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ERROR: Cannot allocate fallback for %s %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun8i_ss_cipher_init\00", [43 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_ss_cipher_init._entry_ptr = internal global ptr @sun8i_ss_cipher_init._entry, section ".printk_index", align 4
@sun8i_ss_cipher_init._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 351, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fallback for %s is %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sun8i_ss_cipher_init._entry_ptr.8 = internal global ptr @sun8i_ss_cipher_init._entry.5, section ".printk_index", align 4
@sun8i_ss_cipher_init._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.1, ptr @.str.2, i32 359, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pm error %d\0A\00", [19 x i8] zeroinitializer }, align 32
@sun8i_ss_cipher_init._entry_ptr.11 = internal global ptr @sun8i_ss_cipher_init._entry.9, section ".printk_index", align 4
@sun8i_ss_aes_setkey.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.13, ptr @.str.2, ptr @.str.14, i8 0, i8 98, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.12 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sun8i_ss\00", [23 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun8i_ss_aes_setkey\00", [44 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ERROR: Invalid keylen %u\0A\00", [38 x i8] zeroinitializer }, align 32
@sun8i_ss_des3_setkey.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.15, ptr @.str.2, ptr @.str.16, i8 0, i8 103, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sun8i_ss_des3_setkey\00", [43 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Invalid keylen %u\0A\00", [45 x i8] zeroinitializer }, align 32
@sun8i_ss_cipher.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.17, ptr @.str.2, ptr @.str.18, i8 0, i8 29, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun8i_ss_cipher\00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s %s %u %x IV(%p %u) key=%u\0A\00", [34 x i8] zeroinitializer }, align 32
@sun8i_ss_cipher._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.2, i32 129, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot DMA MAP KEY\0A\00", [44 x i8] zeroinitializer }, align 32
@sun8i_ss_cipher._entry_ptr = internal global ptr @sun8i_ss_cipher._entry, section ".printk_index", align 4
@sun8i_ss_cipher._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.17, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Cannot DMA MAP IV\0A\00", [45 x i8] zeroinitializer }, align 32
@sun8i_ss_cipher._entry_ptr.22 = internal global ptr @sun8i_ss_cipher._entry.20, section ".printk_index", align 4
@sun8i_ss_cipher._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.2, i32 165, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid sg number %d\0A\00", [42 x i8] zeroinitializer }, align 32
@sun8i_ss_cipher._entry_ptr.25 = internal global ptr @sun8i_ss_cipher._entry.23, section ".printk_index", align 4
@sun8i_ss_cipher._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.2, i32 174, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ss_cipher._entry_ptr.27 = internal global ptr @sun8i_ss_cipher._entry.26, section ".printk_index", align 4
@sun8i_ss_cipher._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.17, ptr @.str.2, i32 181, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ss_cipher._entry_ptr.29 = internal global ptr @sun8i_ss_cipher._entry.28, section ".printk_index", align 4
@sun8i_ss_cipher.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.17, ptr @.str.2, ptr @.str.30, i8 0, i8 49, i8 64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s total=%u SGS(%d %u off=%d) todo=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@sun8i_ss_cipher._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.17, ptr @.str.2, i32 204, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"remaining len %d\0A\00", [46 x i8] zeroinitializer }, align 32
@sun8i_ss_cipher._entry_ptr.33 = internal global ptr @sun8i_ss_cipher._entry.31, section ".printk_index", align 4
@sun8i_ss_cipher.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.12, ptr @.str.17, ptr @.str.2, ptr @.str.34, i8 0, i8 54, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"%s total=%u SGD(%d %u off=%d) todo=%u\0A\00", [57 x i8] zeroinitializer }, align 32
@sun8i_ss_cipher._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.17, ptr @.str.2, i32 226, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@sun8i_ss_cipher._entry_ptr.36 = internal global ptr @sun8i_ss_cipher._entry.35, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.37 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 340, i32 3 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 349, i32 2 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 359, i32 3 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 392, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 414, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 113, i32 2 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 129, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 156, i32 4 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 165, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 174, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 181, i32 4 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 196, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 204, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 218, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.130 = private constant [55 x i8] c"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.130, i32 226, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.136 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.136, i32 326, i32 6 }
@llvm.compiler.used = appending global [43 x ptr] [ptr @sun8i_ss_cipher._entry, ptr @sun8i_ss_cipher._entry.20, ptr @sun8i_ss_cipher._entry.23, ptr @sun8i_ss_cipher._entry.26, ptr @sun8i_ss_cipher._entry.28, ptr @sun8i_ss_cipher._entry.31, ptr @sun8i_ss_cipher._entry.35, ptr @sun8i_ss_cipher._entry_ptr, ptr @sun8i_ss_cipher._entry_ptr.22, ptr @sun8i_ss_cipher._entry_ptr.25, ptr @sun8i_ss_cipher._entry_ptr.27, ptr @sun8i_ss_cipher._entry_ptr.29, ptr @sun8i_ss_cipher._entry_ptr.33, ptr @sun8i_ss_cipher._entry_ptr.36, ptr @sun8i_ss_cipher_init._entry, ptr @sun8i_ss_cipher_init._entry.5, ptr @sun8i_ss_cipher_init._entry.9, ptr @sun8i_ss_cipher_init._entry_ptr, ptr @sun8i_ss_cipher_init._entry_ptr.11, ptr @sun8i_ss_cipher_init._entry_ptr.8, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.30, ptr @.str.32, ptr @.str.34, ptr @.str.37, ptr @.str.38], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_cipher_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_cipher_init._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_cipher_init._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_cipher._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_cipher._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_cipher._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_cipher._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_cipher._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_cipher._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_cipher._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_skdecrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 384)
  %op_dir = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4
  %3 = ptrtoint ptr %op_dir to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 64, ptr %op_dir, align 16
  %call3 = tail call fastcc zeroext i1 @sun8i_ss_need_fallback(ptr noundef %areq)
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %5, i32 12
  %6 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %__crt_alg.i.i, align 4
  %stat_fb.i = getelementptr i8, ptr %7, i32 644
  %8 = ptrtoint ptr %stat_fb.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %stat_fb.i, align 4
  %inc.i = add i32 %9, 1
  store i32 %inc.i, ptr %stat_fb.i, align 4
  %fallback_req.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3
  %fallback_tfm.i = getelementptr i8, ptr %5, i32 152
  %10 = ptrtoint ptr %fallback_tfm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fallback_tfm.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %11, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3, i32 4, i32 3
  %12 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 4
  %13 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %flags.i, align 4
  %complete.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 1
  %15 = ptrtoint ptr %complete.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %complete.i, align 8
  %data.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 2
  %17 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %data.i, align 4
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3, i32 4, i32 1
  %19 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3, i32 4, i32 2
  %20 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %18, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3, i32 4, i32 4
  %21 = ptrtoint ptr %flags4.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %14, ptr %flags4.i.i, align 4
  %src.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %22 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src.i, align 8
  %dst.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %24 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst.i, align 4
  %26 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %areq, align 128
  %iv.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 1
  %28 = ptrtoint ptr %iv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iv.i, align 4
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3, i32 2
  %30 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %23, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3, i32 3
  %31 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %25, ptr %dst2.i.i, align 4
  %32 = ptrtoint ptr %fallback_req.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %27, ptr %fallback_req.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3, i32 1
  %33 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %29, ptr %iv4.i.i, align 4
  %34 = ptrtoint ptr %op_dir to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %op_dir, align 16
  %and.i = and i32 %35, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req.i) #6
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ss = getelementptr i8, ptr %1, i32 148
  %36 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ss, align 4
  %call5 = tail call i32 @sun8i_ss_get_engine_number(ptr noundef %37) #6
  %38 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ss, align 4
  %flows = getelementptr inbounds %struct.sun8i_ss_dev, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %flows, align 4
  %arrayidx = getelementptr %struct.sun8i_ss_flow, ptr %41, i32 %call5
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %flow = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 0, i32 1
  %44 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call5, ptr %flow, align 4
  %call8 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %43, ptr noundef %areq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.i, %if.then.i
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call9.i, %if.then.i ], [ %call11.i, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @sun8i_ss_need_fallback(ptr nocapture noundef readonly %areq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %areq, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp ne i32 %1, 0
  %rem = and i32 %1, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  %or.cond = and i1 %cmp, %tobool.not
  br i1 %or.cond, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %src, align 8
  %call = tail call i32 @sg_nents(ptr noundef %3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call)
  %cmp3 = icmp sgt i32 %call, 8
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %lor.lhs.false4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

lor.lhs.false4:                                   ; preds = %if.end
  %4 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dst, align 4
  %call6 = tail call i32 @sg_nents(ptr noundef %5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %call6)
  %cmp7 = icmp sgt i32 %call6, 8
  br i1 %cmp7, label %lor.lhs.false4.cleanup_crit_edge, label %if.end9

lor.lhs.false4.cleanup_crit_edge:                 ; preds = %lor.lhs.false4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end9:                                          ; preds = %lor.lhs.false4
  %6 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src, align 8
  %tobool11.not96 = icmp eq ptr %7, null
  br i1 %tobool11.not96, label %if.end9.while.end_crit_edge, label %if.end9.while.body_crit_edge

if.end9.while.body_crit_edge:                     ; preds = %if.end9
  br label %while.body

if.end9.while.end_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %if.end22.while.body_crit_edge, %if.end9.while.body_crit_edge
  %sg.097 = phi ptr [ %call23, %if.end22.while.body_crit_edge ], [ %7, %if.end9.while.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %sg.097, i32 0, i32 2
  %8 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length, align 4
  %rem12 = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem12)
  %cmp13.not = icmp eq i32 %rem12, 0
  br i1 %cmp13.not, label %if.end15, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end15:                                         ; preds = %while.body
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.097, i32 0, i32 4
  %10 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_length, align 4
  %rem16 = and i32 %11, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem16)
  %cmp17.not = icmp eq i32 %rem16, 0
  br i1 %cmp17.not, label %if.end19, label %if.end15.cleanup_crit_edge

if.end15.cleanup_crit_edge:                       ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end19:                                         ; preds = %if.end15
  %offset = getelementptr inbounds %struct.scatterlist, ptr %sg.097, i32 0, i32 1
  %12 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset, align 4
  %and = and i32 %13, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp20 = icmp eq i32 %and, 0
  br i1 %cmp20, label %if.end22, label %if.end19.cleanup_crit_edge

if.end19.cleanup_crit_edge:                       ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end22:                                         ; preds = %if.end19
  %call23 = tail call ptr @sg_next(ptr noundef nonnull %sg.097) #6
  %tobool11.not = icmp eq ptr %call23, null
  br i1 %tobool11.not, label %if.end22.while.end_crit_edge, label %if.end22.while.body_crit_edge

if.end22.while.body_crit_edge:                    ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %if.end22.while.end_crit_edge, %if.end9.while.end_crit_edge
  %14 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dst, align 4
  %tobool26.not98 = icmp eq ptr %15, null
  br i1 %tobool26.not98, label %while.end.while.end44_crit_edge, label %while.end.while.body27_crit_edge

while.end.while.body27_crit_edge:                 ; preds = %while.end
  br label %while.body27

while.end.while.end44_crit_edge:                  ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end44

while.body27:                                     ; preds = %if.end42.while.body27_crit_edge, %while.end.while.body27_crit_edge
  %sg.199 = phi ptr [ %call43, %if.end42.while.body27_crit_edge ], [ %15, %while.end.while.body27_crit_edge ]
  %length28 = getelementptr inbounds %struct.scatterlist, ptr %sg.199, i32 0, i32 2
  %16 = ptrtoint ptr %length28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %length28, align 4
  %rem29 = and i32 %17, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem29)
  %cmp30.not = icmp eq i32 %rem29, 0
  br i1 %cmp30.not, label %if.end32, label %while.body27.cleanup_crit_edge

while.body27.cleanup_crit_edge:                   ; preds = %while.body27
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end32:                                         ; preds = %while.body27
  %dma_length33 = getelementptr inbounds %struct.scatterlist, ptr %sg.199, i32 0, i32 4
  %18 = ptrtoint ptr %dma_length33 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %dma_length33, align 4
  %rem34 = and i32 %19, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem34)
  %cmp35.not = icmp eq i32 %rem34, 0
  br i1 %cmp35.not, label %if.end37, label %if.end32.cleanup_crit_edge

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end37:                                         ; preds = %if.end32
  %offset38 = getelementptr inbounds %struct.scatterlist, ptr %sg.199, i32 0, i32 1
  %20 = ptrtoint ptr %offset38 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %offset38, align 4
  %and39 = and i32 %21, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and39)
  %cmp40 = icmp eq i32 %and39, 0
  br i1 %cmp40, label %if.end42, label %if.end37.cleanup_crit_edge

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end42:                                         ; preds = %if.end37
  %call43 = tail call ptr @sg_next(ptr noundef nonnull %sg.199) #6
  %tobool26.not = icmp eq ptr %call43, null
  br i1 %tobool26.not, label %if.end42.while.end44_crit_edge, label %if.end42.while.body27_crit_edge

if.end42.while.body27_crit_edge:                  ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body27

if.end42.while.end44_crit_edge:                   ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end44

while.end44:                                      ; preds = %if.end42.while.end44_crit_edge, %while.end.while.end44_crit_edge
  %22 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src, align 8
  %24 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dst, align 4
  %tobool48.not100 = icmp eq ptr %23, null
  %tobool49.not101 = icmp eq ptr %25, null
  %or.cond90102 = select i1 %tobool48.not100, i1 true, i1 %tobool49.not101
  br i1 %or.cond90102, label %while.end44.while.end58_crit_edge, label %while.end44.while.body50_crit_edge

while.end44.while.body50_crit_edge:               ; preds = %while.end44
  br label %while.body50

while.end44.while.end58_crit_edge:                ; preds = %while.end44
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end58

while.body50:                                     ; preds = %if.end55.while.body50_crit_edge, %while.end44.while.body50_crit_edge
  %out_sg.0104 = phi ptr [ %call57, %if.end55.while.body50_crit_edge ], [ %25, %while.end44.while.body50_crit_edge ]
  %in_sg.0103 = phi ptr [ %call56, %if.end55.while.body50_crit_edge ], [ %23, %while.end44.while.body50_crit_edge ]
  %length51 = getelementptr inbounds %struct.scatterlist, ptr %in_sg.0103, i32 0, i32 2
  %26 = ptrtoint ptr %length51 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %length51, align 4
  %length52 = getelementptr inbounds %struct.scatterlist, ptr %out_sg.0104, i32 0, i32 2
  %28 = ptrtoint ptr %length52 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %length52, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %27, i32 %29)
  %cmp53.not = icmp eq i32 %27, %29
  br i1 %cmp53.not, label %if.end55, label %while.body50.cleanup_crit_edge

while.body50.cleanup_crit_edge:                   ; preds = %while.body50
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end55:                                         ; preds = %while.body50
  %call56 = tail call ptr @sg_next(ptr noundef nonnull %in_sg.0103) #6
  %call57 = tail call ptr @sg_next(ptr noundef nonnull %out_sg.0104) #6
  %tobool48.not = icmp eq ptr %call56, null
  %tobool49.not = icmp eq ptr %call57, null
  %or.cond90 = select i1 %tobool48.not, i1 true, i1 %tobool49.not
  br i1 %or.cond90, label %if.end55.while.end58_crit_edge, label %if.end55.while.body50_crit_edge

if.end55.while.body50_crit_edge:                  ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body50

if.end55.while.end58_crit_edge:                   ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end58

while.end58:                                      ; preds = %if.end55.while.end58_crit_edge, %while.end44.while.end58_crit_edge
  %tobool48.not.lcssa = phi i1 [ %tobool48.not100, %while.end44.while.end58_crit_edge ], [ %tobool48.not, %if.end55.while.end58_crit_edge ]
  %tobool49.not.lcssa = phi i1 [ %tobool49.not101, %while.end44.while.end58_crit_edge ], [ %tobool49.not, %if.end55.while.end58_crit_edge ]
  %or.cond91 = select i1 %tobool48.not.lcssa, i1 %tobool49.not.lcssa, i1 false
  %not.or.cond91 = xor i1 %or.cond91, true
  br label %cleanup

cleanup:                                          ; preds = %while.end58, %while.body50.cleanup_crit_edge, %if.end37.cleanup_crit_edge, %if.end32.cleanup_crit_edge, %while.body27.cleanup_crit_edge, %if.end19.cleanup_crit_edge, %if.end15.cleanup_crit_edge, %while.body.cleanup_crit_edge, %lor.lhs.false4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %lor.lhs.false4.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ %not.or.cond91, %while.end58 ], [ true, %while.body50.cleanup_crit_edge ], [ true, %while.body27.cleanup_crit_edge ], [ true, %if.end32.cleanup_crit_edge ], [ true, %if.end37.cleanup_crit_edge ], [ true, %while.body.cleanup_crit_edge ], [ true, %if.end15.cleanup_crit_edge ], [ true, %if.end19.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_get_engine_number(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_skencrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 384)
  %call3 = tail call fastcc zeroext i1 @sun8i_ss_need_fallback(ptr noundef %areq)
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %op_dir = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4
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
  %fallback_req.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3
  %fallback_tfm.i = getelementptr i8, ptr %4, i32 152
  %9 = ptrtoint ptr %fallback_tfm.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %fallback_tfm.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %10, i32 0, i32 2
  %tfm1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3, i32 4, i32 3
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
  %complete.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3, i32 4, i32 1
  %18 = ptrtoint ptr %complete.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %complete.i.i, align 8
  %data2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3, i32 4, i32 2
  %19 = ptrtoint ptr %data2.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %17, ptr %data2.i.i, align 4
  %flags4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3, i32 4, i32 4
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
  %src1.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3, i32 2
  %29 = ptrtoint ptr %src1.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %22, ptr %src1.i.i, align 8
  %dst2.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3, i32 3
  %30 = ptrtoint ptr %dst2.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %dst2.i.i, align 4
  %31 = ptrtoint ptr %fallback_req.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %26, ptr %fallback_req.i, align 128
  %iv4.i.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 3, i32 1
  %32 = ptrtoint ptr %iv4.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %28, ptr %iv4.i.i, align 4
  %33 = ptrtoint ptr %op_dir to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %op_dir, align 16
  %and.i = and i32 %34, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call9.i = tail call i32 @crypto_skcipher_decrypt(ptr noundef %fallback_req.i) #6
  br label %cleanup

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #8
  %call11.i = tail call i32 @crypto_skcipher_encrypt(ptr noundef %fallback_req.i) #6
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %ss = getelementptr i8, ptr %1, i32 148
  %35 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ss, align 4
  %call5 = tail call i32 @sun8i_ss_get_engine_number(ptr noundef %36) #6
  %37 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ss, align 4
  %flows = getelementptr inbounds %struct.sun8i_ss_dev, ptr %38, i32 0, i32 5
  %39 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %flows, align 4
  %arrayidx = getelementptr %struct.sun8i_ss_flow, ptr %40, i32 %call5
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %arrayidx, align 4
  %flow = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 0, i32 1
  %43 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %call5, ptr %flow, align 4
  %call8 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %42, ptr noundef %areq) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.i, %if.then.i
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call9.i, %if.then.i ], [ %call11.i, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_cipher_init(ptr nocapture noundef %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %2 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 28)
  %ss = getelementptr i8, ptr %1, i32 -244
  %3 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ss, align 4
  %ss4 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %5 = ptrtoint ptr %ss4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ss4, align 4
  %call5 = tail call ptr @crypto_alloc_skcipher(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #6
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %6 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %fallback_tfm, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %ss4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ss4, align 4
  %dev = getelementptr inbounds %struct.sun8i_ss_dev, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %11 = ptrtoint ptr %call5 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str, ptr noundef %cra_name.i, i32 noundef %11) #9
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
  %add = add i32 %16, 384
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %add.ptr.i, align 128
  %18 = ptrtoint ptr %ss4 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ss4, align 4
  %dev19 = getelementptr inbounds %struct.sun8i_ss_dev, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %dev19 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev19, align 4
  %22 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %__crt_alg.i, align 4
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %23, i32 0, i32 9
  %__crt_alg.i70 = getelementptr inbounds %struct.crypto_skcipher, ptr %call5, i32 0, i32 2, i32 3
  %24 = ptrtoint ptr %__crt_alg.i70 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %__crt_alg.i70, align 4
  %cra_driver_name.i71 = getelementptr inbounds %struct.crypto_alg, ptr %25, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %21, ptr noundef nonnull @.str.6, ptr noundef %cra_driver_name.i, ptr noundef %cra_driver_name.i71) #9
  %do_one_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %26 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @sun8i_ss_handle_cipher_request, ptr %do_one_request, align 4
  %27 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %__crt_ctx.i, align 4
  %unprepare_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %28 = ptrtoint ptr %unprepare_request to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %unprepare_request, align 4
  %29 = ptrtoint ptr %ss4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ss4, align 4
  %dev30 = getelementptr inbounds %struct.sun8i_ss_dev, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev30, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %32, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i72 = icmp slt i32 %call.i, 0
  br i1 %cmp.i72, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %32, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #6
  %33 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #6, !srcloc !75
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %33, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.do.end35_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.do.end35_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end35

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !76
  br label %do.end35

do.end35:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.do.end35_crit_edge
  %34 = ptrtoint ptr %ss4 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ss4, align 4
  %dev37 = getelementptr inbounds %struct.sun8i_ss_dev, ptr %35, i32 0, i32 3
  %36 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev37, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %37, ptr noundef nonnull @.str.10, i32 noundef %call.i) #9
  %38 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %39, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %39, ptr noundef %base.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %do.end35, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %14, %do.end ], [ %call.i, %do.end35 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun8i_ss_handle_cipher_request(ptr noundef %engine, ptr noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %areq, i32 -16
  %call = tail call fastcc i32 @sun8i_ss_cipher(ptr noundef %add.ptr)
  tail call void @crypto_finalize_skcipher_request(ptr noundef %engine, ptr noundef %add.ptr, i32 noundef %call) #6
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun8i_ss_cipher_exit(ptr nocapture noundef readonly %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  tail call void @kfree_sensitive(ptr noundef %1) #6
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i) #6
  %ss = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 4
  %4 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ss, align 4
  %dev = getelementptr inbounds %struct.sun8i_ss_dev, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %7, i32 noundef 4) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_aes_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ss1 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 16
  %0 = ptrtoint ptr %ss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ss1, align 4
  %2 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %keylen, label %do.body [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 24, label %entry.sw.epilog_crit_edge32
    i32 32, label %entry.sw.epilog_crit_edge33
  ]

entry.sw.epilog_crit_edge33:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge32:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ss_aes_setkey.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ss_aes_setkey, %if.then)) #6
          to label %cleanup [label %if.then], !srcloc !77

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.sun8i_ss_dev, ptr %1, i32 0, i32 3
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ss_aes_setkey.__UNIQUE_ID_ddebug251, ptr noundef %4, ptr noundef nonnull @.str.14, i32 noundef %keylen) #6
  br label %cleanup

sw.epilog:                                        ; preds = %entry.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge32, %entry.sw.epilog_crit_edge33
  %key5 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %5 = ptrtoint ptr %key5 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %key5, align 4
  tail call void @kfree_sensitive(ptr noundef %6) #6
  %keylen6 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %7 = ptrtoint ptr %keylen6 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %keylen, ptr %keylen6, align 4
  %call7 = tail call ptr @kmemdup(ptr noundef %key, i32 noundef %keylen, i32 noundef 3265) #6
  %8 = ptrtoint ptr %key5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7, ptr %key5, align 4
  %tobool10.not = icmp eq ptr %call7, null
  br i1 %tobool10.not, label %sw.epilog.cleanup_crit_edge, label %if.end12

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end12:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
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
  %call15 = tail call i32 @crypto_skcipher_setkey(ptr noundef %18, ptr noundef %key, i32 noundef %keylen) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %sw.epilog.cleanup_crit_edge, %if.then, %do.body
  %retval.0 = phi i32 [ %call15, %if.end12 ], [ -22, %if.then ], [ -12, %sw.epilog.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_des3_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %ss1 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 16
  %0 = ptrtoint ptr %ss1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ss1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %keylen)
  %cmp.not = icmp eq i32 %keylen, 24
  br i1 %cmp.not, label %if.end12, label %do.body, !prof !78

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ss_des3_setkey.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ss_des3_setkey, %if.then11)) #6
          to label %cleanup [label %if.then11], !srcloc !77

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.sun8i_ss_dev, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ss_des3_setkey.__UNIQUE_ID_ddebug252, ptr noundef %3, ptr noundef nonnull @.str.16, i32 noundef %keylen) #6
  br label %cleanup

if.end12:                                         ; preds = %entry
  %key13 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %4 = ptrtoint ptr %key13 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %key13, align 4
  tail call void @kfree_sensitive(ptr noundef %5) #6
  %keylen14 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %6 = ptrtoint ptr %keylen14 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 24, ptr %keylen14, align 4
  %call15 = tail call ptr @kmemdup(ptr noundef %key, i32 noundef 24, i32 noundef 3265) #6
  %7 = ptrtoint ptr %key13 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call15, ptr %key13, align 4
  %tobool18.not = icmp eq ptr %call15, null
  br i1 %tobool18.not, label %if.end12.cleanup_crit_edge, label %if.end20

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end20:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #8
  %fallback_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 20
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
  %base.i.i38 = getelementptr inbounds %struct.crypto_skcipher, ptr %12, i32 0, i32 2
  %15 = ptrtoint ptr %base.i.i38 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %base.i.i38, align 128
  %or.i.i = or i32 %16, %and
  store i32 %or.i.i, ptr %base.i.i38, align 128
  %17 = load ptr, ptr %fallback_tfm, align 4
  %call23 = tail call i32 @crypto_skcipher_setkey(ptr noundef %17, ptr noundef %key, i32 noundef 24) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end20, %if.end12.cleanup_crit_edge, %if.then11, %do.body
  %retval.0 = phi i32 [ %call23, %if.end20 ], [ -22, %if.then11 ], [ -12, %if.end12.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_ss_cipher(ptr noundef %areq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %ss2 = getelementptr i8, ptr %1, i32 148
  %2 = ptrtoint ptr %ss2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ss2, align 4
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %__crt_alg.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ss_cipher.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ss_cipher, %if.then)) #6
          to label %do.end [label %if.then], !srcloc !77

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.sun8i_ss_dev, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %8 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i477 = getelementptr inbounds %struct.crypto_tfm, ptr %9, i32 0, i32 3
  %10 = ptrtoint ptr %__crt_alg.i477 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %__crt_alg.i477, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %11, i32 0, i32 8
  %12 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %areq, align 128
  %op_dir = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4
  %14 = ptrtoint ptr %op_dir to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %op_dir, align 16
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 1
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ss_cipher.__UNIQUE_ID_ddebug244, ptr noundef %7, ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, ptr noundef %cra_name.i, i32 noundef %13, i32 noundef %15, ptr noundef %17, i32 noundef %21, i32 noundef %23) #6
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stat_req = getelementptr i8, ptr %5, i32 640
  %24 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stat_req, align 128
  %inc = add i32 %25, 1
  store i32 %inc, ptr %stat_req, align 128
  %variant = getelementptr inbounds %struct.sun8i_ss_dev, ptr %3, i32 0, i32 7
  %26 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %variant, align 4
  %ss_blockmode = getelementptr i8, ptr %5, i32 -248
  %28 = ptrtoint ptr %ss_blockmode to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %ss_blockmode, align 8
  %arrayidx = getelementptr %struct.ss_variant, ptr %27, i32 0, i32 2, i32 %29
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx, align 4
  %op_mode12 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 3
  %32 = ptrtoint ptr %op_mode12 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %op_mode12, align 4
  %33 = load ptr, ptr %variant, align 4
  %ss_algo_id = getelementptr i8, ptr %5, i32 -252
  %34 = ptrtoint ptr %ss_algo_id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ss_algo_id, align 4
  %arrayidx14 = getelementptr [3 x i8], ptr %33, i32 0, i32 %35
  %36 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %arrayidx14, align 1
  %conv = zext i8 %37 to i32
  %method = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 2
  %38 = ptrtoint ptr %method to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %conv, ptr %method, align 8
  %keylen15 = getelementptr i8, ptr %1, i32 144
  %39 = ptrtoint ptr %keylen15 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %keylen15, align 4
  %keylen16 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 2
  %41 = ptrtoint ptr %keylen16 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %keylen16, align 4
  %dev17 = getelementptr inbounds %struct.sun8i_ss_dev, ptr %3, i32 0, i32 3
  %42 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev17, align 4
  %key = getelementptr i8, ptr %1, i32 140
  %44 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %key, align 4
  %46 = load i32, ptr %keylen15, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %45) #6
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %do.end
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !78

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %43) #6
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %43, i32 0, i32 3
  %47 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %48, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %43, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %50, %if.end.i.i ], [ %48, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %43, ptr noundef %45, i32 noundef %46) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %51 = load ptr, ptr @mem_map, align 4
  %52 = ptrtoint ptr %45 to i32
  %sub.i = add i32 %52, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i478 = getelementptr %struct.page, ptr %51, i32 %shr.i
  %and.i = and i32 %52, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %43, ptr noundef %add.ptr.i478, i32 noundef %and.i, i32 noundef %46, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i479 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %p_key = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2
  %53 = ptrtoint ptr %p_key to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %retval.0.i479, ptr %p_key, align 128
  %54 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev17, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %55, i32 noundef %retval.0.i479) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i479)
  %cmp.i = icmp eq i32 %retval.0.i479, -1
  br i1 %cmp.i, label %do.end27, label %if.end29

do.end27:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %56 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.19) #9
  br label %theend

if.end29:                                         ; preds = %dma_map_single_attrs.exit
  %58 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %__crt_alg.i, align 4
  %ivsize.i481 = getelementptr i8, ptr %59, i32 -100
  %60 = ptrtoint ptr %ivsize.i481 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %ivsize.i481, align 4
  %iv31 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 1
  %62 = ptrtoint ptr %iv31 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %iv31, align 4
  %tobool32.not = icmp eq ptr %63, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp.not = icmp eq i32 %61, 0
  %or.cond542 = select i1 %tobool32.not, i1 true, i1 %cmp.not
  br i1 %or.cond542, label %if.end29.if.end66_crit_edge, label %if.then35

if.end29.if.end66_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

if.then35:                                        ; preds = %if.end29
  %ivlen = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 1
  %64 = ptrtoint ptr %ivlen to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %61, ptr %ivlen, align 8
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %61, i32 noundef 3521) #10
  %biv = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 3
  %65 = ptrtoint ptr %biv to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call9.i.i, ptr %biv, align 32
  %tobool38.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool38.not, label %if.then35.theend_key_crit_edge, label %if.end40

if.then35.theend_key_crit_edge:                   ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #8
  br label %theend_key

if.end40:                                         ; preds = %if.then35
  %op_dir41 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4
  %66 = ptrtoint ptr %op_dir41 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %op_dir41, align 16
  %and = and i32 %67, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool42.not = icmp eq i32 %and, 0
  br i1 %tobool42.not, label %if.end40.if.end49_crit_edge, label %if.end8.i.i511

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end49

if.end8.i.i511:                                   ; preds = %if.end40
  %call9.i.i510 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %61, i32 noundef 3520) #10
  %tobool45.not = icmp eq ptr %call9.i.i510, null
  br i1 %tobool45.not, label %if.end8.i.i511.theend_key_crit_edge, label %if.end47

if.end8.i.i511.theend_key_crit_edge:              ; preds = %if.end8.i.i511
  call void @__sanitizer_cov_trace_pc() #8
  br label %theend_key

if.end47:                                         ; preds = %if.end8.i.i511
  call void @__sanitizer_cov_trace_pc() #8
  %68 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %areq, align 128
  %sub = sub i32 %69, %61
  %src = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %70 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %src, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef nonnull %call9.i.i510, ptr noundef %71, i32 noundef %sub, i32 noundef %61, i32 noundef 0) #6
  br label %if.end49

if.end49:                                         ; preds = %if.end47, %if.end40.if.end49_crit_edge
  %backup_iv.0 = phi ptr [ %call9.i.i510, %if.end47 ], [ null, %if.end40.if.end49_crit_edge ]
  %72 = ptrtoint ptr %biv to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %biv, align 32
  %74 = ptrtoint ptr %iv31 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iv31, align 4
  %76 = call ptr @memcpy(ptr %73, ptr %75, i32 %61)
  %77 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev17, align 4
  %79 = load ptr, ptr %biv, align 32
  %80 = ptrtoint ptr %ivlen to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %ivlen, align 8
  %call.i514 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %79) #6
  br i1 %call.i514, label %land.rhs.i516, label %if.end39.i529

land.rhs.i516:                                    ; preds = %if.end49
  %.b1.i515 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i515, label %land.rhs.i516.dma_map_single_attrs.exit531_crit_edge, label %if.then.i520, !prof !78

land.rhs.i516.dma_map_single_attrs.exit531_crit_edge: ; preds = %land.rhs.i516
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit531

if.then.i520:                                     ; preds = %land.rhs.i516
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i517 = tail call ptr @dev_driver_string(ptr noundef %78) #6
  %init_name.i.i518 = getelementptr inbounds %struct.device, ptr %78, i32 0, i32 3
  %82 = ptrtoint ptr %init_name.i.i518 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %init_name.i.i518, align 8
  %tobool.not.i.i519 = icmp eq ptr %83, null
  br i1 %tobool.not.i.i519, label %if.end.i.i521, label %if.then.i520.dev_name.exit.i523_crit_edge

if.then.i520.dev_name.exit.i523_crit_edge:        ; preds = %if.then.i520
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i523

if.end.i.i521:                                    ; preds = %if.then.i520
  call void @__sanitizer_cov_trace_pc() #8
  %84 = ptrtoint ptr %78 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %78, align 4
  br label %dev_name.exit.i523

dev_name.exit.i523:                               ; preds = %if.end.i.i521, %if.then.i520.dev_name.exit.i523_crit_edge
  %retval.0.i.i522 = phi ptr [ %85, %if.end.i.i521 ], [ %83, %if.then.i520.dev_name.exit.i523_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.37, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.38, ptr noundef %call16.i517, ptr noundef %retval.0.i.i522) #6
  br label %dma_map_single_attrs.exit531

if.end39.i529:                                    ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %78, ptr noundef %79, i32 noundef %81) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %86 = load ptr, ptr @mem_map, align 4
  %87 = ptrtoint ptr %79 to i32
  %sub.i524 = add i32 %87, 1073741824
  %shr.i525 = lshr i32 %sub.i524, 12
  %add.ptr.i526 = getelementptr %struct.page, ptr %86, i32 %shr.i525
  %and.i527 = and i32 %87, 4095
  %call41.i528 = tail call i32 @dma_map_page_attrs(ptr noundef %78, ptr noundef %add.ptr.i526, i32 noundef %and.i527, i32 noundef %81, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit531

dma_map_single_attrs.exit531:                     ; preds = %if.end39.i529, %dev_name.exit.i523, %land.rhs.i516.dma_map_single_attrs.exit531_crit_edge
  %retval.0.i530 = phi i32 [ %call41.i528, %if.end39.i529 ], [ -1, %dev_name.exit.i523 ], [ -1, %land.rhs.i516.dma_map_single_attrs.exit531_crit_edge ]
  %p_iv = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 1
  %88 = ptrtoint ptr %p_iv to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %retval.0.i530, ptr %p_iv, align 4
  %89 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev17, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %90, i32 noundef %retval.0.i530) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i530)
  %cmp.i532 = icmp eq i32 %retval.0.i530, -1
  br i1 %cmp.i532, label %do.end63, label %dma_map_single_attrs.exit531.if.end66_crit_edge

dma_map_single_attrs.exit531.if.end66_crit_edge:  ; preds = %dma_map_single_attrs.exit531
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end66

do.end63:                                         ; preds = %dma_map_single_attrs.exit531
  call void @__sanitizer_cov_trace_pc() #8
  %91 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.21) #9
  br label %theend_iv

if.end66:                                         ; preds = %dma_map_single_attrs.exit531.if.end66_crit_edge, %if.end29.if.end66_crit_edge
  %backup_iv.1 = phi ptr [ null, %if.end29.if.end66_crit_edge ], [ %backup_iv.0, %dma_map_single_attrs.exit531.if.end66_crit_edge ]
  %src67 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %93 = ptrtoint ptr %src67 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %src67, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %95 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dst, align 4
  %cmp68 = icmp eq ptr %94, %96
  %97 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %dev17, align 4
  %call74 = tail call i32 @sg_nents(ptr noundef %94) #6
  br i1 %cmp68, label %if.then70, label %if.else

if.then70:                                        ; preds = %if.end66
  %call75 = tail call i32 @dma_map_sg_attrs(ptr noundef %98, ptr noundef %94, i32 noundef %call74, i32 noundef 0, i32 noundef 0) #6
  %99 = add i32 %call75, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %99)
  %100 = icmp ult i32 %99, -8
  br i1 %100, label %do.end83, label %if.then70.if.end118_crit_edge

if.then70.if.end118_crit_edge:                    ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

do.end83:                                         ; preds = %if.then70
  call void @__sanitizer_cov_trace_pc() #8
  %101 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %102, ptr noundef nonnull @.str.24, i32 noundef %call75) #9
  br label %theend_iv

if.else:                                          ; preds = %if.end66
  %call90 = tail call i32 @dma_map_sg_attrs(ptr noundef %98, ptr noundef %94, i32 noundef %call74, i32 noundef 1, i32 noundef 0) #6
  %103 = add i32 %call90, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %103)
  %104 = icmp ult i32 %103, -8
  %105 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %dev17, align 4
  br i1 %104, label %do.end99, label %if.end101

do.end99:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %106, ptr noundef nonnull @.str.24, i32 noundef %call90) #9
  br label %theend_iv

if.end101:                                        ; preds = %if.else
  %107 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %dst, align 4
  %call105 = tail call i32 @sg_nents(ptr noundef %108) #6
  %call106 = tail call i32 @dma_map_sg_attrs(ptr noundef %106, ptr noundef %108, i32 noundef %call105, i32 noundef 2, i32 noundef 0) #6
  %109 = add i32 %call106, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %109)
  %110 = icmp ult i32 %109, -8
  br i1 %110, label %do.end115, label %if.end101.if.end118_crit_edge

if.end101.if.end118_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end118

do.end115:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #8
  %111 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %112, ptr noundef nonnull @.str.24, i32 noundef %call106) #9
  br label %theend_sgs

if.end118:                                        ; preds = %if.end101.if.end118_crit_edge, %if.then70.if.end118_crit_edge
  %nr_sgs.0 = phi i32 [ %call75, %if.then70.if.end118_crit_edge ], [ %call90, %if.end101.if.end118_crit_edge ]
  %nr_sgd.0 = phi i32 [ %call75, %if.then70.if.end118_crit_edge ], [ %call106, %if.end101.if.end118_crit_edge ]
  %113 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %areq, align 128
  %115 = ptrtoint ptr %src67 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %src67, align 8
  %tobool124.not544 = icmp eq ptr %116, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %114)
  %tobool125.not546 = icmp eq i32 %114, 0
  %or.cond467547 = select i1 %tobool124.not544, i1 true, i1 %tobool125.not546
  br i1 %or.cond467547, label %if.end118.while.end_crit_edge, label %if.end118.while.body_crit_edge

if.end118.while.body_crit_edge:                   ; preds = %if.end118
  br label %while.body

if.end118.while.end_crit_edge:                    ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.body:                                       ; preds = %sgs_next.while.body_crit_edge, %if.end118.while.body_crit_edge
  %sg.0551 = phi ptr [ %call162, %sgs_next.while.body_crit_edge ], [ %116, %if.end118.while.body_crit_edge ]
  %len.0550 = phi i32 [ %len.1, %sgs_next.while.body_crit_edge ], [ %114, %if.end118.while.body_crit_edge ]
  %i.0548 = phi i32 [ %i.1, %sgs_next.while.body_crit_edge ], [ 0, %if.end118.while.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0551, i32 0, i32 4
  %117 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %118)
  %cmp126 = icmp eq i32 %118, 0
  br i1 %cmp126, label %while.body.sgs_next_crit_edge, label %if.end129

while.body.sgs_next_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %sgs_next

if.end129:                                        ; preds = %while.body
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0551, i32 0, i32 3
  %119 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %dma_address, align 4
  %arrayidx130 = getelementptr [8 x %struct.sginfo], ptr %__ctx.i, i32 0, i32 %i.0548
  %121 = ptrtoint ptr %arrayidx130 to i32
  call void @__asan_store4_noabort(i32 %121)
  store i32 %120, ptr %arrayidx130, align 8
  %122 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %dma_length, align 4
  %124 = tail call i32 @llvm.umin.i32(i32 %len.0550, i32 %123)
  %div463 = lshr i32 %124, 2
  %len137 = getelementptr [8 x %struct.sginfo], ptr %__ctx.i, i32 0, i32 %i.0548, i32 1
  %125 = ptrtoint ptr %len137 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 %div463, ptr %len137, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ss_cipher.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ss_cipher, %if.then150)) #6
          to label %do.end159 [label %if.then150], !srcloc !77

if.then150:                                       ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #8
  %126 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %dev17, align 4
  %128 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %areq, align 128
  %130 = ptrtoint ptr %len137 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %len137, align 4
  %offset156 = getelementptr inbounds %struct.scatterlist, ptr %sg.0551, i32 0, i32 1
  %132 = ptrtoint ptr %offset156 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %offset156, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ss_cipher.__UNIQUE_ID_ddebug247, ptr noundef %127, ptr noundef nonnull @.str.30, ptr noundef nonnull @.str.17, i32 noundef %129, i32 noundef %i.0548, i32 noundef %131, i32 noundef %133, i32 noundef %124) #6
  br label %do.end159

do.end159:                                        ; preds = %if.then150, %if.end129
  %sub160 = sub i32 %len.0550, %124
  %inc161 = add nsw i32 %i.0548, 1
  br label %sgs_next

sgs_next:                                         ; preds = %do.end159, %while.body.sgs_next_crit_edge
  %i.1 = phi i32 [ %i.0548, %while.body.sgs_next_crit_edge ], [ %inc161, %do.end159 ]
  %len.1 = phi i32 [ %len.0550, %while.body.sgs_next_crit_edge ], [ %sub160, %do.end159 ]
  %call162 = tail call ptr @sg_next(ptr noundef nonnull %sg.0551) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1, i32 %nr_sgs.0)
  %cmp121 = icmp sge i32 %i.1, %nr_sgs.0
  %tobool124.not = icmp eq ptr %call162, null
  %or.cond466 = select i1 %cmp121, i1 true, i1 %tobool124.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.1)
  %tobool125.not = icmp eq i32 %len.1, 0
  %or.cond467 = select i1 %or.cond466, i1 true, i1 %tobool125.not
  br i1 %or.cond467, label %sgs_next.while.end_crit_edge, label %sgs_next.while.body_crit_edge

sgs_next.while.body_crit_edge:                    ; preds = %sgs_next
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body

sgs_next.while.end_crit_edge:                     ; preds = %sgs_next
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end

while.end:                                        ; preds = %sgs_next.while.end_crit_edge, %if.end118.while.end_crit_edge
  %len.0.lcssa = phi i32 [ %114, %if.end118.while.end_crit_edge ], [ %len.1, %sgs_next.while.end_crit_edge ]
  %tobool125.not.lcssa = phi i1 [ %tobool125.not546, %if.end118.while.end_crit_edge ], [ %tobool125.not, %sgs_next.while.end_crit_edge ]
  br i1 %tobool125.not.lcssa, label %if.end170, label %do.end168

do.end168:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #8
  %134 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %135, ptr noundef nonnull @.str.32, i32 noundef %len.0.lcssa) #9
  br label %theend_sgs

if.end170:                                        ; preds = %while.end
  %136 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %areq, align 128
  %138 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %dst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nr_sgd.0)
  %cmp174553 = icmp slt i32 %nr_sgd.0, 1
  %tobool177.not554 = icmp eq ptr %139, null
  %or.cond468555 = select i1 %cmp174553, i1 true, i1 %tobool177.not554
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %137)
  %tobool179.not556 = icmp eq i32 %137, 0
  %or.cond469557 = select i1 %or.cond468555, i1 true, i1 %tobool179.not556
  br i1 %or.cond469557, label %if.end170.while.end227_crit_edge, label %if.end170.while.body181_crit_edge

if.end170.while.body181_crit_edge:                ; preds = %if.end170
  br label %while.body181

if.end170.while.end227_crit_edge:                 ; preds = %if.end170
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end227

while.body181:                                    ; preds = %sgd_next.while.body181_crit_edge, %if.end170.while.body181_crit_edge
  %sg.1561 = phi ptr [ %call226, %sgd_next.while.body181_crit_edge ], [ %139, %if.end170.while.body181_crit_edge ]
  %len.2560 = phi i32 [ %len.3, %sgd_next.while.body181_crit_edge ], [ %137, %if.end170.while.body181_crit_edge ]
  %i.2558 = phi i32 [ %i.3, %sgd_next.while.body181_crit_edge ], [ 0, %if.end170.while.body181_crit_edge ]
  %dma_length182 = getelementptr inbounds %struct.scatterlist, ptr %sg.1561, i32 0, i32 4
  %140 = ptrtoint ptr %dma_length182 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load i32, ptr %dma_length182, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %141)
  %cmp183 = icmp eq i32 %141, 0
  br i1 %cmp183, label %while.body181.sgd_next_crit_edge, label %if.end186

while.body181.sgd_next_crit_edge:                 ; preds = %while.body181
  call void @__sanitizer_cov_trace_pc() #8
  br label %sgd_next

if.end186:                                        ; preds = %while.body181
  %dma_address187 = getelementptr inbounds %struct.scatterlist, ptr %sg.1561, i32 0, i32 3
  %142 = ptrtoint ptr %dma_address187 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %dma_address187, align 4
  %arrayidx188 = getelementptr %struct.sun8i_cipher_req_ctx, ptr %__ctx.i, i32 0, i32 1, i32 %i.2558
  %144 = ptrtoint ptr %arrayidx188 to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 %143, ptr %arrayidx188, align 8
  %145 = ptrtoint ptr %dma_length182 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %dma_length182, align 4
  %147 = tail call i32 @llvm.umin.i32(i32 %len.2560, i32 %146)
  %div198462 = lshr i32 %147, 2
  %len201 = getelementptr %struct.sun8i_cipher_req_ctx, ptr %__ctx.i, i32 0, i32 1, i32 %i.2558, i32 1
  %148 = ptrtoint ptr %len201 to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %div198462, ptr %len201, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ss_cipher.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ss_cipher, %if.then214)) #6
          to label %do.end223 [label %if.then214], !srcloc !77

if.then214:                                       ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #8
  %149 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %dev17, align 4
  %151 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %areq, align 128
  %153 = ptrtoint ptr %len201 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load i32, ptr %len201, align 4
  %offset220 = getelementptr inbounds %struct.scatterlist, ptr %sg.1561, i32 0, i32 1
  %155 = ptrtoint ptr %offset220 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %offset220, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ss_cipher.__UNIQUE_ID_ddebug250, ptr noundef %150, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.17, i32 noundef %152, i32 noundef %i.2558, i32 noundef %154, i32 noundef %156, i32 noundef %147) #6
  br label %do.end223

do.end223:                                        ; preds = %if.then214, %if.end186
  %sub224 = sub i32 %len.2560, %147
  %inc225 = add nsw i32 %i.2558, 1
  br label %sgd_next

sgd_next:                                         ; preds = %do.end223, %while.body181.sgd_next_crit_edge
  %i.3 = phi i32 [ %i.2558, %while.body181.sgd_next_crit_edge ], [ %inc225, %do.end223 ]
  %len.3 = phi i32 [ %len.2560, %while.body181.sgd_next_crit_edge ], [ %sub224, %do.end223 ]
  %call226 = tail call ptr @sg_next(ptr noundef nonnull %sg.1561) #6
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3, i32 %nr_sgd.0)
  %cmp174 = icmp sge i32 %i.3, %nr_sgd.0
  %tobool177.not = icmp eq ptr %call226, null
  %or.cond468 = select i1 %cmp174, i1 true, i1 %tobool177.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len.3)
  %tobool179.not = icmp eq i32 %len.3, 0
  %or.cond469 = select i1 %or.cond468, i1 true, i1 %tobool179.not
  br i1 %or.cond469, label %sgd_next.while.end227_crit_edge, label %sgd_next.while.body181_crit_edge

sgd_next.while.body181_crit_edge:                 ; preds = %sgd_next
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body181

sgd_next.while.end227_crit_edge:                  ; preds = %sgd_next
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.end227

while.end227:                                     ; preds = %sgd_next.while.end227_crit_edge, %if.end170.while.end227_crit_edge
  %len.2.lcssa = phi i32 [ %137, %if.end170.while.end227_crit_edge ], [ %len.3, %sgd_next.while.end227_crit_edge ]
  %tobool179.not.lcssa = phi i1 [ %tobool179.not556, %if.end170.while.end227_crit_edge ], [ %tobool179.not, %sgd_next.while.end227_crit_edge ]
  br i1 %tobool179.not.lcssa, label %if.end235, label %do.end233

do.end233:                                        ; preds = %while.end227
  call void @__sanitizer_cov_trace_pc() #8
  %157 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %dev17, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %158, ptr noundef nonnull @.str.32, i32 noundef %len.2.lcssa) #9
  br label %theend_sgs

if.end235:                                        ; preds = %while.end227
  call void @__sanitizer_cov_trace_pc() #8
  %159 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i534 = getelementptr inbounds %struct.crypto_tfm, ptr %160, i32 0, i32 3
  %161 = ptrtoint ptr %__crt_alg.i534 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %__crt_alg.i534, align 4
  %cra_name.i535 = getelementptr inbounds %struct.crypto_alg, ptr %162, i32 0, i32 8
  %call239 = tail call i32 @sun8i_ss_run_task(ptr noundef %3, ptr noundef %__ctx.i, ptr noundef %cra_name.i535) #6
  br label %theend_sgs

theend_sgs:                                       ; preds = %if.end235, %do.end233, %do.end168, %do.end115
  %err.0 = phi i32 [ -22, %do.end168 ], [ -22, %do.end233 ], [ %call239, %if.end235 ], [ -22, %do.end115 ]
  %163 = ptrtoint ptr %src67 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %src67, align 8
  %165 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dst, align 4
  %cmp242 = icmp eq ptr %164, %166
  %167 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %dev17, align 4
  %call248 = tail call i32 @sg_nents(ptr noundef %164) #6
  br i1 %cmp242, label %if.then244, label %if.else249

if.then244:                                       ; preds = %theend_sgs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_unmap_sg_attrs(ptr noundef %168, ptr noundef %164, i32 noundef %call248, i32 noundef 0, i32 noundef 0) #6
  br label %theend_iv

if.else249:                                       ; preds = %theend_sgs
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_unmap_sg_attrs(ptr noundef %168, ptr noundef %164, i32 noundef %call248, i32 noundef 1, i32 noundef 0) #6
  %169 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %dev17, align 4
  %171 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %dst, align 4
  %call257 = tail call i32 @sg_nents(ptr noundef %172) #6
  tail call void @dma_unmap_sg_attrs(ptr noundef %170, ptr noundef %172, i32 noundef %call257, i32 noundef 2, i32 noundef 0) #6
  br label %theend_iv

theend_iv:                                        ; preds = %if.else249, %if.then244, %do.end99, %do.end83, %do.end63
  %backup_iv.2 = phi ptr [ %backup_iv.0, %do.end63 ], [ %backup_iv.1, %do.end83 ], [ %backup_iv.1, %if.then244 ], [ %backup_iv.1, %if.else249 ], [ %backup_iv.1, %do.end99 ]
  %err.1 = phi i32 [ -12, %do.end63 ], [ -22, %do.end83 ], [ %err.0, %if.then244 ], [ %err.0, %if.else249 ], [ -22, %do.end99 ]
  %p_iv259 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 1
  %173 = ptrtoint ptr %p_iv259 to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load i32, ptr %p_iv259, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %174)
  %tobool260.not = icmp eq i32 %174, 0
  br i1 %tobool260.not, label %theend_iv.if.end265_crit_edge, label %if.then261

theend_iv.if.end265_crit_edge:                    ; preds = %theend_iv
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end265

if.then261:                                       ; preds = %theend_iv
  call void @__sanitizer_cov_trace_pc() #8
  %175 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %dev17, align 4
  %ivlen264 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 1
  %177 = ptrtoint ptr %ivlen264 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %ivlen264, align 8
  tail call void @dma_unmap_page_attrs(ptr noundef %176, i32 noundef %174, i32 noundef %178, i32 noundef 1, i32 noundef 0) #6
  br label %if.end265

if.end265:                                        ; preds = %if.then261, %theend_iv.if.end265_crit_edge
  %179 = ptrtoint ptr %iv31 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %iv31, align 4
  %tobool267.not = icmp eq ptr %180, null
  %or.cond470 = select i1 %tobool267.not, i1 true, i1 %cmp.not
  br i1 %or.cond470, label %if.end265.theend_key_crit_edge, label %if.then271

if.end265.theend_key_crit_edge:                   ; preds = %if.end265
  call void @__sanitizer_cov_trace_pc() #8
  br label %theend_key

if.then271:                                       ; preds = %if.end265
  %biv272 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4, i32 3
  %181 = ptrtoint ptr %biv272 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %biv272, align 32
  %tobool273.not = icmp eq ptr %182, null
  br i1 %tobool273.not, label %if.then271.theend_key_crit_edge, label %if.then274

if.then271.theend_key_crit_edge:                  ; preds = %if.then271
  call void @__sanitizer_cov_trace_pc() #8
  br label %theend_key

if.then274:                                       ; preds = %if.then271
  %op_dir277 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2, i32 4
  %183 = ptrtoint ptr %op_dir277 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %op_dir277, align 16
  %and278 = and i32 %184, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and278)
  %tobool279.not = icmp eq i32 %and278, 0
  br i1 %tobool279.not, label %if.else282, label %if.then280

if.then280:                                       ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #8
  %185 = call ptr @memcpy(ptr %180, ptr %backup_iv.2, i32 %61)
  tail call void @kfree_sensitive(ptr noundef %backup_iv.2) #6
  br label %if.end285

if.else282:                                       ; preds = %if.then274
  call void @__sanitizer_cov_trace_pc() #8
  %186 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load i32, ptr %areq, align 128
  %sub276 = sub i32 %187, %61
  %dst284 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %188 = ptrtoint ptr %dst284 to i32
  call void @__asan_load4_noabort(i32 %188)
  %189 = load ptr, ptr %dst284, align 4
  tail call void @scatterwalk_map_and_copy(ptr noundef nonnull %180, ptr noundef %189, i32 noundef %sub276, i32 noundef %61, i32 noundef 0) #6
  br label %if.end285

if.end285:                                        ; preds = %if.else282, %if.then280
  %190 = ptrtoint ptr %biv272 to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %biv272, align 32
  tail call void @kfree(ptr noundef %191) #6
  br label %theend_key

theend_key:                                       ; preds = %if.end285, %if.then271.theend_key_crit_edge, %if.end265.theend_key_crit_edge, %if.end8.i.i511.theend_key_crit_edge, %if.then35.theend_key_crit_edge
  %err.2 = phi i32 [ %err.1, %if.end285 ], [ %err.1, %if.then271.theend_key_crit_edge ], [ %err.1, %if.end265.theend_key_crit_edge ], [ -12, %if.then35.theend_key_crit_edge ], [ -12, %if.end8.i.i511.theend_key_crit_edge ]
  %192 = ptrtoint ptr %dev17 to i32
  call void @__asan_load4_noabort(i32 %192)
  %193 = load ptr, ptr %dev17, align 4
  %194 = ptrtoint ptr %p_key to i32
  call void @__asan_load4_noabort(i32 %194)
  %195 = load i32, ptr %p_key, align 128
  %196 = ptrtoint ptr %keylen15 to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load i32, ptr %keylen15, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %193, i32 noundef %195, i32 noundef %197, i32 noundef 1, i32 noundef 0) #6
  br label %theend

theend:                                           ; preds = %theend_key, %do.end27
  %err.3 = phi i32 [ -14, %do.end27 ], [ %err.2, %theend_key ]
  ret i32 %err.3
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_skcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ss_run_task(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !42, !44, !45, !47, !48, !50, !51, !53, !54, !55, !57, !58, !60, !61, !63, !64}
!llvm.module.flags = !{!65, !66, !67, !68, !69, !70, !71, !72}
!llvm.ident = !{!73}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 340, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun8i_ss_cipher_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun8i_ss_cipher_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 349, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sun8i_ss_cipher_init._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @sun8i_ss_cipher_init._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 359, i32 3}
!15 = !{ptr @sun8i_ss_cipher_init._entry.9, !14, !"_entry", i1 false, i1 false}
!16 = !{ptr @sun8i_ss_cipher_init._entry_ptr.11, !14, !"_entry_ptr", i1 false, i1 false}
!17 = !{ptr @.str.12, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 392, i32 3}
!19 = !{ptr @.str.13, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.14, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @sun8i_ss_aes_setkey.__UNIQUE_ID_ddebug251, !18, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 414, i32 3}
!24 = !{ptr @.str.16, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @sun8i_ss_des3_setkey.__UNIQUE_ID_ddebug252, !23, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 113, i32 2}
!28 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @sun8i_ss_cipher.__UNIQUE_ID_ddebug244, !27, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 129, i32 3}
!32 = !{ptr @sun8i_ss_cipher._entry, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sun8i_ss_cipher._entry_ptr, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.21, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 156, i32 4}
!36 = !{ptr @sun8i_ss_cipher._entry.20, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sun8i_ss_cipher._entry_ptr.22, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 165, i32 4}
!40 = !{ptr @sun8i_ss_cipher._entry.23, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @sun8i_ss_cipher._entry_ptr.25, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @sun8i_ss_cipher._entry.26, !43, !"_entry", i1 false, i1 false}
!43 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 174, i32 4}
!44 = !{ptr @sun8i_ss_cipher._entry_ptr.27, !43, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @sun8i_ss_cipher._entry.28, !46, !"_entry", i1 false, i1 false}
!46 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 181, i32 4}
!47 = !{ptr @sun8i_ss_cipher._entry_ptr.29, !46, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.30, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 196, i32 3}
!50 = !{ptr @sun8i_ss_cipher.__UNIQUE_ID_ddebug247, !49, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!51 = !{ptr @.str.32, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 204, i32 3}
!53 = !{ptr @sun8i_ss_cipher._entry.31, !52, !"_entry", i1 false, i1 false}
!54 = !{ptr @sun8i_ss_cipher._entry_ptr.33, !52, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.34, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 218, i32 3}
!57 = !{ptr @sun8i_ss_cipher.__UNIQUE_ID_ddebug250, !56, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!58 = !{ptr @sun8i_ss_cipher._entry.35, !59, !"_entry", i1 false, i1 false}
!59 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-cipher.c", i32 226, i32 3}
!60 = !{ptr @sun8i_ss_cipher._entry_ptr.36, !59, !"_entry_ptr", i1 false, i1 false}
!61 = distinct !{null, !62, !"__already_done", i1 false, i1 false}
!62 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!63 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @.str.38, !62, !"<string literal>", i1 false, i1 false}
!65 = !{i32 1, !"wchar_size", i32 2}
!66 = !{i32 1, !"min_enum_size", i32 4}
!67 = !{i32 8, !"branch-target-enforcement", i32 0}
!68 = !{i32 8, !"sign-return-address", i32 0}
!69 = !{i32 8, !"sign-return-address-all", i32 0}
!70 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!71 = !{i32 7, !"uwtable", i32 1}
!72 = !{i32 7, !"frame-pointer", i32 2}
!73 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!74 = !{i64 2148155320}
!75 = !{i64 531241, i64 531266, i64 531288, i64 531304, i64 531316, i64 531336, i64 531360, i64 531376, i64 531388}
!76 = !{i64 2148155508}
!77 = !{i64 2148729040, i64 2148729045, i64 2148729058, i64 2148729102, i64 2148729136, i64 2148729157}
!78 = !{!"branch_weights", i32 2000, i32 1}
