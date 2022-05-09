; ModuleID = '/llk/IR_all_yes/drivers/crypto/amlogic/amlogic-gxl-cipher.c_pt.bc'
source_filename = "../drivers/crypto/amlogic/amlogic-gxl-cipher.c"
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
%struct.meson_dev = type { ptr, ptr, ptr, ptr, %struct.atomic_t, ptr, ptr }
%struct.meson_flow = type { ptr, %struct.completion, i32, i32, i32, ptr, i32 }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.page = type { i32, %union.anon.5, %union.anon.56, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.56 = type { %struct.atomic_t }
%struct.meson_desc = type { i32, i32, i32 }

@meson_cipher_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 325, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"ERROR: Cannot allocate fallback for %s %ld\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"meson_cipher_init\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"drivers/crypto/amlogic/amlogic-gxl-cipher.c\00", [52 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@meson_cipher_init._entry_ptr = internal global ptr @meson_cipher_init._entry, section ".printk_index", align 4
@meson_aes_setkey.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.6, ptr @.str.2, ptr @.str.7, i8 0, i8 91, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.5 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"amlogic_gxl_crypto\00", [45 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"meson_aes_setkey\00", [47 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"ERROR: Invalid keylen %u\0A\00", [38 x i8] zeroinitializer }, align 32
@meson_cipher.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.5, ptr @.str.8, ptr @.str.2, ptr @.str.9, i8 0, i8 27, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"meson_cipher\00", [19 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s %s %u %x IV(%u) key=%u flow=%d\0A\00", [61 x i8] zeroinitializer }, align 32
@meson_cipher._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.2, i32 132, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid ivsize=%d vs len=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@meson_cipher._entry_ptr = internal global ptr @meson_cipher._entry, section ".printk_index", align 4
@meson_cipher._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.8, ptr @.str.2, i32 156, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Cannot DMA MAP KEY IV\0A\00", [41 x i8] zeroinitializer }, align 32
@meson_cipher._entry_ptr.13 = internal global ptr @meson_cipher._entry.11, section ".printk_index", align 4
@meson_cipher._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.2, i32 181, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"Invalid SG count %d\0A\00", [43 x i8] zeroinitializer }, align 32
@meson_cipher._entry_ptr.16 = internal global ptr @meson_cipher._entry.14, section ".printk_index", align 4
@meson_cipher._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.2, i32 190, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@meson_cipher._entry_ptr.18 = internal global ptr @meson_cipher._entry.17, section ".printk_index", align 4
@meson_cipher._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.8, ptr @.str.2, i32 197, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@meson_cipher._entry_ptr.20 = internal global ptr @meson_cipher._entry.19, section ".printk_index", align 4
@meson_cipher._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.8, ptr @.str.2, i32 232, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DMA timeout for flow %d\0A\00", [39 x i8] zeroinitializer }, align 32
@meson_cipher._entry_ptr.23 = internal global ptr @meson_cipher._entry.21, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.24 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 16, i64 24, i64 32]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 324, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 364, i32 3 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 106, i32 2 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 132, i32 4 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 156, i32 3 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 181, i32 4 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 190, i32 4 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 197, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.87 = private constant [47 x i8] c"../drivers/crypto/amlogic/amlogic-gxl-cipher.c\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.87, i32 232, i32 3 }
@___asan_gen_.92 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.93 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 326, i32 6 }
@llvm.compiler.used = appending global [30 x ptr] [ptr @meson_cipher._entry, ptr @meson_cipher._entry.11, ptr @meson_cipher._entry.14, ptr @meson_cipher._entry.17, ptr @meson_cipher._entry.19, ptr @meson_cipher._entry.21, ptr @meson_cipher._entry_ptr, ptr @meson_cipher._entry_ptr.13, ptr @meson_cipher._entry_ptr.16, ptr @meson_cipher._entry_ptr.18, ptr @meson_cipher._entry_ptr.20, ptr @meson_cipher._entry_ptr.23, ptr @meson_cipher_init._entry, ptr @meson_cipher_init._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.22, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [23 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_cipher_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_cipher._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_cipher._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_cipher._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_cipher._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_cipher._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @meson_cipher._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_skdecrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
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
  %call3 = tail call fastcc zeroext i1 @meson_cipher_need_fallback(ptr noundef %areq)
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %4, i32 12
  %5 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i, align 4
  %stat_fb.i = getelementptr i8, ptr %6, i32 520
  %7 = ptrtoint ptr %stat_fb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat_fb.i, align 8
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %stat_fb.i, align 8
  %fallback_req.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2
  %fallback_tfm.i = getelementptr i8, ptr %4, i32 156
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i = icmp eq i32 %34, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

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
  %mc = getelementptr i8, ptr %1, i32 152
  %35 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mc, align 4
  %flow.i = getelementptr inbounds %struct.meson_dev, ptr %36, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flow.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %flow.i, i32 1, i32 3, i32 1) #7
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flow.i, ptr %flow.i, i32 1, ptr elementtype(i32) %flow.i) #7, !srcloc !53
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !54
  %rem.i = srem i32 %asmresult.i.i.i.i.i, 2
  %38 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mc, align 4
  %chanlist = getelementptr inbounds %struct.meson_dev, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr %struct.meson_flow, ptr %41, i32 %rem.i
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %flow = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 1
  %44 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %rem.i, ptr %flow, align 4
  %call8 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %43, ptr noundef %areq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.i, %if.then.i
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call9.i, %if.then.i ], [ %call11.i, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @meson_cipher_need_fallback(ptr nocapture noundef readonly %areq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %src = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %src, align 8
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  %2 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dst, align 4
  %4 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %areq, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call i32 @sg_nents(ptr noundef %1) #7
  %call1 = tail call i32 @sg_nents(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %call1)
  %cmp2.not = icmp eq i32 %call, %call1
  br i1 %cmp2.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call i32 @sg_nents(ptr noundef %1) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %call5)
  %cmp6 = icmp sgt i32 %call5, 61
  br i1 %cmp6, label %if.end4.cleanup_crit_edge, label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %call7 = tail call i32 @sg_nents(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %call7)
  %cmp8 = icmp sgt i32 %call7, 61
  br i1 %cmp8, label %lor.lhs.false.cleanup_crit_edge, label %while.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.cond.preheader:                             ; preds = %lor.lhs.false
  %tobool.not51 = icmp eq ptr %1, null
  %tobool11.not52 = icmp eq ptr %3, null
  %or.cond53 = select i1 %tobool.not51, i1 true, i1 %tobool11.not52
  br i1 %or.cond53, label %while.cond.preheader.cleanup_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.cleanup_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

while.body:                                       ; preds = %if.end32.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %dst_sg.055 = phi ptr [ %call34, %if.end32.while.body_crit_edge ], [ %3, %while.cond.preheader.while.body_crit_edge ]
  %src_sg.054 = phi ptr [ %call33, %if.end32.while.body_crit_edge ], [ %1, %while.cond.preheader.while.body_crit_edge ]
  %length = getelementptr inbounds %struct.scatterlist, ptr %src_sg.054, i32 0, i32 2
  %6 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %length, align 4
  %rem = and i32 %7, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp12.not = icmp eq i32 %rem, 0
  br i1 %cmp12.not, label %if.end14, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end14:                                         ; preds = %while.body
  %length15 = getelementptr inbounds %struct.scatterlist, ptr %dst_sg.055, i32 0, i32 2
  %8 = ptrtoint ptr %length15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %length15, align 4
  %rem16 = and i32 %9, 15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem16)
  %cmp17.not = icmp eq i32 %rem16, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp22.not = icmp eq i32 %7, %9
  %or.cond50 = select i1 %cmp17.not, i1 %cmp22.not, i1 false
  br i1 %or.cond50, label %if.end24, label %if.end14.cleanup_crit_edge

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end24:                                         ; preds = %if.end14
  %offset = getelementptr inbounds %struct.scatterlist, ptr %src_sg.054, i32 0, i32 1
  %10 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %offset, align 4
  %and = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp25 = icmp eq i32 %and, 0
  br i1 %cmp25, label %if.end27, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end27:                                         ; preds = %if.end24
  %offset28 = getelementptr inbounds %struct.scatterlist, ptr %dst_sg.055, i32 0, i32 1
  %12 = ptrtoint ptr %offset28 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset28, align 4
  %and29 = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %cmp30 = icmp eq i32 %and29, 0
  br i1 %cmp30, label %if.end32, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end32:                                         ; preds = %if.end27
  %call33 = tail call ptr @sg_next(ptr noundef nonnull %src_sg.054) #7
  %call34 = tail call ptr @sg_next(ptr noundef nonnull %dst_sg.055) #7
  %tobool.not = icmp eq ptr %call33, null
  %tobool11.not = icmp eq ptr %call34, null
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool11.not
  br i1 %or.cond, label %if.end32.cleanup_crit_edge, label %if.end32.while.body_crit_edge

if.end32.while.body_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end32.cleanup_crit_edge, %if.end27.cleanup_crit_edge, %if.end24.cleanup_crit_edge, %if.end14.cleanup_crit_edge, %while.body.cleanup_crit_edge, %while.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ true, %entry.cleanup_crit_edge ], [ true, %if.end.cleanup_crit_edge ], [ true, %lor.lhs.false.cleanup_crit_edge ], [ true, %if.end4.cleanup_crit_edge ], [ false, %while.cond.preheader.cleanup_crit_edge ], [ true, %while.body.cleanup_crit_edge ], [ true, %if.end14.cleanup_crit_edge ], [ true, %if.end24.cleanup_crit_edge ], [ true, %if.end27.cleanup_crit_edge ], [ false, %if.end32.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_skencrypt(ptr noundef %areq) local_unnamed_addr #0 align 64 {
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
  store i32 1, ptr %__ctx.i, align 128
  %call3 = tail call fastcc zeroext i1 @meson_cipher_need_fallback(ptr noundef %areq)
  br i1 %call3, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i.i = getelementptr i8, ptr %4, i32 12
  %5 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %__crt_alg.i.i, align 4
  %stat_fb.i = getelementptr i8, ptr %6, i32 520
  %7 = ptrtoint ptr %stat_fb.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %stat_fb.i, align 8
  %inc.i = add i32 %8, 1
  store i32 %inc.i, ptr %stat_fb.i, align 8
  %fallback_req.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 2
  %fallback_tfm.i = getelementptr i8, ptr %4, i32 156
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
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i = icmp eq i32 %34, 0
  br i1 %cmp.i, label %if.then.i, label %if.else.i

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
  %mc = getelementptr i8, ptr %1, i32 152
  %35 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %mc, align 4
  %flow.i = getelementptr inbounds %struct.meson_dev, ptr %36, i32 0, i32 4
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %flow.i, i32 noundef 4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %flow.i, i32 1, i32 3, i32 1) #7
  %37 = tail call { i32, i32 } asm sideeffect "@ atomic_add_return\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %flow.i, ptr %flow.i, i32 1, ptr elementtype(i32) %flow.i) #7, !srcloc !53
  %asmresult.i.i.i.i.i = extractvalue { i32, i32 } %37, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !54
  %rem.i = srem i32 %asmresult.i.i.i.i.i, 2
  %38 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %mc, align 4
  %chanlist = getelementptr inbounds %struct.meson_dev, ptr %39, i32 0, i32 3
  %40 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr %struct.meson_flow, ptr %41, i32 %rem.i
  %42 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx, align 4
  %flow = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 1
  %44 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %rem.i, ptr %flow, align 4
  %call8 = tail call i32 @crypto_transfer_skcipher_request_to_engine(ptr noundef %43, ptr noundef %areq) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.else.i, %if.then.i
  %retval.0 = phi i32 [ %call8, %if.end ], [ %call9.i, %if.then.i ], [ %call11.i, %if.else.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_cipher_init(ptr nocapture noundef %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg.i = getelementptr %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %2 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 32)
  %mc = getelementptr i8, ptr %1, i32 512
  %3 = ptrtoint ptr %mc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %mc, align 128
  %mc4 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 8
  %5 = ptrtoint ptr %mc4 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %mc4, align 4
  %call5 = tail call ptr @crypto_alloc_skcipher(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #7
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %6 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call5, ptr %fallback_tfm, align 4
  %cmp.i = icmp ugt ptr %call5, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %mc4 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %mc4, align 4
  %dev = getelementptr inbounds %struct.meson_dev, ptr %8, i32 0, i32 2
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
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr.i = getelementptr i8, ptr %tfm, i32 -128
  %15 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call5, align 128
  %add = add i32 %16, 256
  %17 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add, ptr %add.ptr.i, align 128
  %do_one_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %18 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @meson_handle_cipher_request, ptr %do_one_request, align 4
  %19 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %__crt_ctx.i, align 4
  %unprepare_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %20 = ptrtoint ptr %unprepare_request to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %unprepare_request, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %do.end
  %retval.0 = phi i32 [ %14, %do.end ], [ 0, %if.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_skcipher(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @meson_handle_cipher_request(ptr noundef %engine, ptr noundef %areq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %areq, i32 -16
  %call = tail call fastcc i32 @meson_cipher(ptr noundef %add.ptr)
  tail call void @crypto_finalize_skcipher_request(ptr noundef %engine, ptr noundef %add.ptr, i32 noundef %call) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @meson_cipher_exit(ptr nocapture noundef readonly %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %key = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %0 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %key, align 4
  tail call void @kfree_sensitive(ptr noundef %1) #7
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4, i32 12
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_skcipher, ptr %3, i32 0, i32 2
  tail call void @crypto_destroy_tfm(ptr noundef %3, ptr noundef %base.i.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree_sensitive(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @meson_aes_setkey(ptr nocapture noundef %tfm, ptr noundef %key, i32 noundef %keylen) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %mc1 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 20
  %0 = ptrtoint ptr %mc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %mc1, align 4
  %2 = zext i32 %keylen to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %keylen, label %do.body [
    i32 16, label %entry.sw.epilog_crit_edge
    i32 24, label %sw.bb2
    i32 32, label %sw.bb4
  ]

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb2:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

sw.bb4:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_aes_setkey.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_aes_setkey, %if.then)) #7
          to label %cleanup [label %if.then], !srcloc !55

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.meson_dev, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_aes_setkey.__UNIQUE_ID_ddebug248, ptr noundef %4, ptr noundef nonnull @.str.7, i32 noundef %keylen) #7
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb4, %sw.bb2, %entry.sw.epilog_crit_edge
  %.sink = phi i32 [ 10, %sw.bb4 ], [ 9, %sw.bb2 ], [ 8, %entry.sw.epilog_crit_edge ]
  %keymode5 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 16
  %5 = ptrtoint ptr %keymode5 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %.sink, ptr %keymode5, align 4
  %key9 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 8
  %6 = ptrtoint ptr %key9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %key9, align 4
  tail call void @kfree_sensitive(ptr noundef %7) #7
  %keylen10 = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 12
  %8 = ptrtoint ptr %keylen10 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %keylen, ptr %keylen10, align 4
  %call11 = tail call ptr @kmemdup(ptr noundef %key, i32 noundef %keylen, i32 noundef 3265) #7
  %9 = ptrtoint ptr %key9 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call11, ptr %key9, align 4
  %tobool14.not = icmp eq ptr %call11, null
  br i1 %tobool14.not, label %sw.epilog.cleanup_crit_edge, label %if.end16

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #9
  %fallback_tfm = getelementptr inbounds %struct.crypto_skcipher, ptr %tfm, i32 1, i32 1, i32 24
  %10 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %fallback_tfm, align 4
  %call17 = tail call i32 @crypto_skcipher_setkey(ptr noundef %11, ptr noundef %key, i32 noundef %keylen) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end16, %sw.epilog.cleanup_crit_edge, %if.then, %do.body
  %retval.0 = phi i32 [ %call17, %if.end16 ], [ -22, %if.then ], [ -12, %sw.epilog.cleanup_crit_edge ], [ -22, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @kmemdup(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_setkey(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_decrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_skcipher_encrypt(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @meson_cipher(ptr nocapture noundef readonly %areq) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 4, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__ctx.i = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 6
  %mc3 = getelementptr i8, ptr %1, i32 152
  %2 = ptrtoint ptr %mc3 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %mc3, align 4
  %__crt_alg.i = getelementptr i8, ptr %1, i32 12
  %4 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %__crt_alg.i, align 4
  %flow5 = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 1, i32 1
  %6 = ptrtoint ptr %flow5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flow5, align 4
  %src = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 2
  %dst = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @meson_cipher.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@meson_cipher, %if.then)) #7
          to label %do.end [label %if.then], !srcloc !55

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.meson_dev, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  %10 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i391 = getelementptr inbounds %struct.crypto_tfm, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %__crt_alg.i391 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %__crt_alg.i391, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %13, i32 0, i32 8
  %14 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %areq, align 128
  %16 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %__ctx.i, align 128
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
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @meson_cipher.__UNIQUE_ID_ddebug243, ptr noundef %9, ptr noundef nonnull @.str.9, ptr noundef nonnull @.str.8, ptr noundef %cra_name.i, i32 noundef %15, i32 noundef %17, i32 noundef %21, i32 noundef %23, i32 noundef %7) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %stat_req = getelementptr i8, ptr %5, i32 516
  %24 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %stat_req, align 4
  %inc = add i32 %25, 1
  store i32 %inc, ptr %stat_req, align 4
  %chanlist = getelementptr inbounds %struct.meson_dev, ptr %3, i32 0, i32 3
  %26 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chanlist, align 4
  %stat_req13 = getelementptr %struct.meson_flow, ptr %27, i32 %7, i32 6
  %28 = ptrtoint ptr %stat_req13 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %stat_req13, align 4
  %inc14 = add i32 %29, 1
  store i32 %inc14, ptr %stat_req13, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 3, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 3521, i32 noundef 48) #11
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %do.end.cleanup_crit_edge, label %if.end18

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end18:                                         ; preds = %do.end
  %key = getelementptr i8, ptr %1, i32 140
  %31 = ptrtoint ptr %key to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %key, align 4
  %keylen19 = getelementptr i8, ptr %1, i32 144
  %33 = ptrtoint ptr %keylen19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %keylen19, align 4
  %35 = call ptr @memcpy(ptr %call7.i.i, ptr %32, i32 %34)
  %36 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %__crt_alg.i, align 4
  %ivsize.i393 = getelementptr i8, ptr %37, i32 -100
  %38 = ptrtoint ptr %ivsize.i393 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %ivsize.i393, align 4
  %iv = getelementptr inbounds %struct.skcipher_request, ptr %areq, i32 0, i32 1
  %40 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iv, align 4
  %tobool22.not = icmp eq ptr %41, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %cmp.not = icmp eq i32 %39, 0
  %or.cond = select i1 %tobool22.not, i1 true, i1 %cmp.not
  br i1 %or.cond, label %if.end45, label %if.then23

if.then23:                                        ; preds = %if.end18
  %42 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %areq, align 128
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %43)
  %cmp25 = icmp ugt i32 %39, %43
  br i1 %cmp25, label %do.end29, label %if.end32

do.end29:                                         ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #9
  %dev30 = getelementptr inbounds %struct.meson_dev, ptr %3, i32 0, i32 2
  %44 = ptrtoint ptr %dev30 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev30, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %45, ptr noundef nonnull @.str.10, i32 noundef %39, i32 noundef %43) #10
  br label %theend

if.end32:                                         ; preds = %if.then23
  %add.ptr33 = getelementptr i8, ptr %call7.i.i, i32 32
  %46 = call ptr @memcpy(ptr %add.ptr33, ptr %41, i32 %39)
  %47 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp36 = icmp eq i32 %48, 0
  br i1 %cmp36, label %if.end8.i.i, label %if.end32.if.end45.thread_crit_edge

if.end32.if.end45.thread_crit_edge:               ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end45.thread

if.end8.i.i:                                      ; preds = %if.end32
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %39, i32 noundef 3520) #12
  %tobool39.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool39.not, label %if.end8.i.i.theend_crit_edge, label %if.end41

if.end8.i.i.theend_crit_edge:                     ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %theend

if.end41:                                         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %areq, align 128
  %sub = sub i32 %50, %39
  %51 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %src, align 8
  tail call void @scatterwalk_map_and_copy(ptr noundef nonnull %call9.i.i, ptr noundef %52, i32 noundef %sub, i32 noundef %39, i32 noundef 0) #7
  br label %if.end45.thread

if.end45:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %keylen19 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %keylen19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 24, i32 %54)
  %cmp46 = icmp eq i32 %54, 24
  %spec.select = select i1 %cmp46, i32 32, i32 %54
  br label %if.end45.thread

if.end45.thread:                                  ; preds = %if.end45, %if.end41, %if.end32.if.end45.thread_crit_edge
  %backup_iv.0402 = phi ptr [ null, %if.end32.if.end45.thread_crit_edge ], [ %call9.i.i, %if.end41 ], [ null, %if.end45 ]
  %55 = phi i32 [ 48, %if.end32.if.end45.thread_crit_edge ], [ 48, %if.end41 ], [ %spec.select, %if.end45 ]
  %dev49 = getelementptr inbounds %struct.meson_dev, ptr %3, i32 0, i32 2
  %56 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev49, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call7.i.i) #7
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end45.thread
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !56

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %57) #7
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %57, i32 0, i32 3
  %58 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i, label %if.end.i.i395, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit.i

if.end.i.i395:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %57, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i395, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %61, %if.end.i.i395 ], [ %59, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.24, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.25, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #7
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %62 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev49, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %63, i32 noundef -1) #7
  br label %do.end57

dma_map_single_attrs.exit:                        ; preds = %if.end45.thread
  tail call void @debug_dma_map_single(ptr noundef %57, ptr noundef nonnull %call7.i.i, i32 noundef %55) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %64 = load ptr, ptr @mem_map, align 4
  %65 = ptrtoint ptr %call7.i.i to i32
  %sub.i = add i32 %65, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i396 = getelementptr %struct.page, ptr %64, i32 %shr.i
  %and.i = and i32 %65, 4088
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %57, ptr noundef %add.ptr.i396, i32 noundef %and.i, i32 noundef %55, i32 noundef 1, i32 noundef 0) #7
  %66 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev49, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %67, i32 noundef %call41.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end57_crit_edge, label %while.cond.preheader

dma_map_single_attrs.exit.do.end57_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end57

while.cond.preheader:                             ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %cmp60410.not = icmp eq i32 %55, 0
  br i1 %cmp60410.not, label %while.cond.preheader.while.end_crit_edge, label %while.cond.preheader.while.body_crit_edge

while.cond.preheader.while.body_crit_edge:        ; preds = %while.cond.preheader
  br label %while.body

while.cond.preheader.while.end_crit_edge:         ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end57:                                         ; preds = %dma_map_single_attrs.exit.do.end57_crit_edge, %dma_map_single_attrs.exit.thread
  %68 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %69, ptr noundef nonnull @.str.12) #10
  br label %theend

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.cond.preheader.while.body_crit_edge
  %tloffset.0413 = phi i32 [ %inc70, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %eat.0411 = phi i32 [ %add68, %while.body.while.body_crit_edge ], [ 0, %while.cond.preheader.while.body_crit_edge ]
  %70 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %chanlist, align 4
  %tl = getelementptr %struct.meson_flow, ptr %71, i32 %7, i32 5
  %72 = ptrtoint ptr %tl to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %tl, align 4
  %arrayidx63 = getelementptr %struct.meson_desc, ptr %73, i32 %tloffset.0413
  %74 = getelementptr inbounds i8, ptr %arrayidx63, i32 4
  %75 = ptrtoint ptr %74 to i32
  call void @__asan_storeN_noabort(i32 %75, i32 8)
  store i64 0, ptr %74, align 4
  %sub64 = sub i32 %55, %eat.0411
  %76 = tail call i32 @llvm.umin.i32(i32 %sub64, i32 16)
  %mul = shl i32 %tloffset.0413, 4
  %add = add i32 %mul, %call41.i
  %77 = tail call i32 @llvm.bswap.i32(i32 %add)
  %t_src = getelementptr %struct.meson_desc, ptr %73, i32 %tloffset.0413, i32 1
  %78 = ptrtoint ptr %t_src to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %77, ptr %t_src, align 4
  %79 = tail call i32 @llvm.bswap.i32(i32 %mul)
  %t_dst = getelementptr %struct.meson_desc, ptr %73, i32 %tloffset.0413, i32 2
  %80 = ptrtoint ptr %t_dst to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 %79, ptr %t_dst, align 4
  %81 = ptrtoint ptr %arrayidx63 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 268439680, ptr %arrayidx63, align 4
  %add68 = add i32 %76, %eat.0411
  %inc70 = add i32 %tloffset.0413, 1
  %cmp60 = icmp ugt i32 %55, %add68
  br i1 %cmp60, label %while.body.while.body_crit_edge, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %while.body.while.end_crit_edge, %while.cond.preheader.while.end_crit_edge
  %tloffset.0.lcssa = phi i32 [ 0, %while.cond.preheader.while.end_crit_edge ], [ %inc70, %while.body.while.end_crit_edge ]
  %82 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %src, align 8
  %84 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dst, align 4
  %cmp73 = icmp eq ptr %83, %85
  %86 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev49, align 4
  %call78 = tail call i32 @sg_nents(ptr noundef %83) #7
  br i1 %cmp73, label %if.then74, label %if.else

if.then74:                                        ; preds = %while.end
  %call79 = tail call i32 @dma_map_sg_attrs(ptr noundef %87, ptr noundef %83, i32 noundef %call78, i32 noundef 0, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call79)
  %cmp80 = icmp slt i32 %call79, 0
  br i1 %cmp80, label %do.end84, label %if.then74.if.end114_crit_edge

if.then74.if.end114_crit_edge:                    ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

do.end84:                                         ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  %88 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %89, ptr noundef nonnull @.str.15, i32 noundef %call79) #10
  br label %theend

if.else:                                          ; preds = %while.end
  %call91 = tail call i32 @dma_map_sg_attrs(ptr noundef %87, ptr noundef %83, i32 noundef %call78, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %call91)
  %90 = icmp ugt i32 %call91, 61
  %91 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %dev49, align 4
  br i1 %90, label %do.end97, label %if.end99

do.end97:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %92, ptr noundef nonnull @.str.15, i32 noundef %call91) #10
  br label %theend

if.end99:                                         ; preds = %if.else
  %93 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dst, align 4
  %call103 = tail call i32 @sg_nents(ptr noundef %94) #7
  %call104 = tail call i32 @dma_map_sg_attrs(ptr noundef %92, ptr noundef %94, i32 noundef %call103, i32 noundef 2, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 61, i32 %call104)
  %95 = icmp ugt i32 %call104, 61
  br i1 %95, label %do.end111, label %if.end99.if.end114_crit_edge

if.end99.if.end114_crit_edge:                     ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end114

do.end111:                                        ; preds = %if.end99
  call void @__sanitizer_cov_trace_pc() #9
  %96 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %97, ptr noundef nonnull @.str.15, i32 noundef %call104) #10
  br label %theend

if.end114:                                        ; preds = %if.end99.if.end114_crit_edge, %if.then74.if.end114_crit_edge
  %98 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %src, align 8
  %tobool119.not414 = icmp eq ptr %99, null
  br i1 %tobool119.not414, label %if.end114.while.end152_crit_edge, label %while.body120.lr.ph

if.end114.while.end152_crit_edge:                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end152

while.body120.lr.ph:                              ; preds = %if.end114
  %100 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %areq, align 128
  %102 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %dst, align 4
  %keymode = getelementptr i8, ptr %1, i32 148
  %blockmode = getelementptr i8, ptr %5, i32 -252
  br label %while.body120

while.body120:                                    ; preds = %while.body120.while.body120_crit_edge, %while.body120.lr.ph
  %tloffset.1418 = phi i32 [ %tloffset.0.lcssa, %while.body120.lr.ph ], [ %inc149, %while.body120.while.body120_crit_edge ]
  %dst_sg.0417 = phi ptr [ %103, %while.body120.lr.ph ], [ %call151, %while.body120.while.body120_crit_edge ]
  %src_sg.0416 = phi ptr [ %99, %while.body120.lr.ph ], [ %call150, %while.body120.while.body120_crit_edge ]
  %len.0415 = phi i32 [ %101, %while.body120.lr.ph ], [ %sub142, %while.body120.while.body120_crit_edge ]
  %104 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chanlist, align 4
  %tl123 = getelementptr %struct.meson_flow, ptr %105, i32 %7, i32 5
  %106 = ptrtoint ptr %tl123 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %tl123, align 4
  %arrayidx124 = getelementptr %struct.meson_desc, ptr %107, i32 %tloffset.1418
  %108 = call ptr @memset(ptr %arrayidx124, i32 0, i32 12)
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %src_sg.0416, i32 0, i32 3
  %109 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dma_address, align 4
  %111 = tail call i32 @llvm.bswap.i32(i32 %110)
  %t_src125 = getelementptr %struct.meson_desc, ptr %107, i32 %tloffset.1418, i32 1
  %112 = ptrtoint ptr %t_src125 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 %111, ptr %t_src125, align 4
  %dma_address126 = getelementptr inbounds %struct.scatterlist, ptr %dst_sg.0417, i32 0, i32 3
  %113 = ptrtoint ptr %dma_address126 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dma_address126, align 4
  %115 = tail call i32 @llvm.bswap.i32(i32 %114)
  %t_dst127 = getelementptr %struct.meson_desc, ptr %107, i32 %tloffset.1418, i32 2
  %116 = ptrtoint ptr %t_dst127 to i32
  call void @__asan_store4_noabort(i32 %116)
  store i32 %115, ptr %t_dst127, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %src_sg.0416, i32 0, i32 4
  %117 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %dma_length, align 4
  %119 = tail call i32 @llvm.umin.i32(i32 %len.0415, i32 %118)
  %120 = ptrtoint ptr %keymode to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %keymode, align 4
  %shl = shl i32 %121, 20
  %or = or i32 %shl, %119
  %122 = ptrtoint ptr %blockmode to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %blockmode, align 4
  %shl135 = shl i32 %123, 26
  %or134 = or i32 %or, %shl135
  %124 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool138.not = icmp eq i32 %125, 0
  %v.0.v = select i1 %tobool138.not, i32 -2147483648, i32 -1879048192
  %v.0 = or i32 %or134, %v.0.v
  %sub142 = sub i32 %len.0415, %119
  %call143 = tail call ptr @sg_next(ptr noundef nonnull %src_sg.0416) #7
  %tobool144.not = icmp eq ptr %call143, null
  %or146 = or i32 %v.0, 262144
  %v.1 = select i1 %tobool144.not, i32 %or146, i32 %v.0
  %126 = tail call i32 @llvm.bswap.i32(i32 %v.1)
  %127 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %126, ptr %arrayidx124, align 4
  %inc149 = add i32 %tloffset.1418, 1
  %call150 = tail call ptr @sg_next(ptr noundef nonnull %src_sg.0416) #7
  %call151 = tail call ptr @sg_next(ptr noundef %dst_sg.0417) #7
  %tobool119.not = icmp eq ptr %call150, null
  br i1 %tobool119.not, label %while.body120.while.end152_crit_edge, label %while.body120.while.body120_crit_edge

while.body120.while.body120_crit_edge:            ; preds = %while.body120
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body120

while.body120.while.end152_crit_edge:             ; preds = %while.body120
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end152

while.end152:                                     ; preds = %while.body120.while.end152_crit_edge, %if.end114.while.end152_crit_edge
  %128 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %chanlist, align 4
  %complete = getelementptr %struct.meson_flow, ptr %129, i32 %7, i32 1
  %130 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %130)
  store i32 0, ptr %complete, align 4
  %131 = load ptr, ptr %chanlist, align 4
  %status = getelementptr %struct.meson_flow, ptr %131, i32 %7, i32 2
  %132 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 0, ptr %status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !57
  tail call void @arm_heavy_mb() #7
  %133 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %chanlist, align 4
  %t_phy = getelementptr %struct.meson_flow, ptr %134, i32 %7, i32 4
  %135 = ptrtoint ptr %t_phy to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load i32, ptr %t_phy, align 4
  %or162 = or i32 %136, 2
  %137 = tail call i32 @llvm.bswap.i32(i32 %or162)
  %138 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %3, align 4
  %shl164 = shl i32 %7, 2
  %add.ptr165 = getelementptr i8, ptr %139, i32 %shl164
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr165, i32 %137) #7, !srcloc !58
  %140 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %chanlist, align 4
  %complete168 = getelementptr %struct.meson_flow, ptr %141, i32 %7, i32 1
  %call170 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %complete168, i32 noundef 50) #7
  %142 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %chanlist, align 4
  %status173 = getelementptr %struct.meson_flow, ptr %143, i32 %7, i32 2
  %144 = ptrtoint ptr %status173 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %status173, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %145)
  %cmp174 = icmp eq i32 %145, 0
  br i1 %cmp174, label %do.end178, label %while.end152.if.end180_crit_edge

while.end152.if.end180_crit_edge:                 ; preds = %while.end152
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end180

do.end178:                                        ; preds = %while.end152
  call void @__sanitizer_cov_trace_pc() #9
  %146 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev49, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %147, ptr noundef nonnull @.str.22, i32 noundef %7) #10
  br label %if.end180

if.end180:                                        ; preds = %do.end178, %while.end152.if.end180_crit_edge
  %err.0 = phi i32 [ -22, %do.end178 ], [ 0, %while.end152.if.end180_crit_edge ]
  %148 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev49, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %149, i32 noundef %call41.i, i32 noundef %55, i32 noundef 1, i32 noundef 0) #7
  %150 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %src, align 8
  %152 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %dst, align 4
  %cmp184 = icmp eq ptr %151, %153
  %154 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev49, align 4
  %call189 = tail call i32 @sg_nents(ptr noundef %151) #7
  br i1 %cmp184, label %if.then185, label %if.else190

if.then185:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %155, ptr noundef %151, i32 noundef %call189, i32 noundef 0, i32 noundef 0) #7
  br label %if.end199

if.else190:                                       ; preds = %if.end180
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @dma_unmap_sg_attrs(ptr noundef %155, ptr noundef %151, i32 noundef %call189, i32 noundef 1, i32 noundef 0) #7
  %156 = ptrtoint ptr %dev49 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %dev49, align 4
  %158 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %dst, align 4
  %call198 = tail call i32 @sg_nents(ptr noundef %159) #7
  tail call void @dma_unmap_sg_attrs(ptr noundef %157, ptr noundef %159, i32 noundef %call198, i32 noundef 2, i32 noundef 0) #7
  br label %if.end199

if.end199:                                        ; preds = %if.else190, %if.then185
  %160 = ptrtoint ptr %iv to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %iv, align 4
  %tobool201.not = icmp eq ptr %161, null
  %or.cond390 = select i1 %tobool201.not, i1 true, i1 %cmp.not
  br i1 %or.cond390, label %if.end199.theend_crit_edge, label %if.then204

if.end199.theend_crit_edge:                       ; preds = %if.end199
  call void @__sanitizer_cov_trace_pc() #9
  br label %theend

if.then204:                                       ; preds = %if.end199
  %162 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %__ctx.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %163)
  %cmp206 = icmp eq i32 %163, 0
  br i1 %cmp206, label %if.then207, label %if.else209

if.then207:                                       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #9
  %164 = call ptr @memcpy(ptr %161, ptr %backup_iv.0402, i32 %39)
  br label %theend

if.else209:                                       ; preds = %if.then204
  call void @__sanitizer_cov_trace_pc() #9
  %165 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dst, align 4
  %167 = ptrtoint ptr %areq to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %areq, align 128
  %sub213 = sub i32 %168, %39
  tail call void @scatterwalk_map_and_copy(ptr noundef nonnull %161, ptr noundef %166, i32 noundef %sub213, i32 noundef %39, i32 noundef 0) #7
  br label %theend

theend:                                           ; preds = %if.else209, %if.then207, %if.end199.theend_crit_edge, %do.end111, %do.end97, %do.end84, %do.end57, %if.end8.i.i.theend_crit_edge, %do.end29
  %err.1 = phi i32 [ -22, %do.end29 ], [ -12, %do.end57 ], [ -22, %do.end84 ], [ %err.0, %if.then207 ], [ %err.0, %if.else209 ], [ %err.0, %if.end199.theend_crit_edge ], [ -22, %do.end97 ], [ -22, %do.end111 ], [ -12, %if.end8.i.i.theend_crit_edge ]
  %backup_iv.1 = phi ptr [ null, %do.end29 ], [ %backup_iv.0402, %do.end57 ], [ %backup_iv.0402, %do.end84 ], [ %backup_iv.0402, %if.then207 ], [ %backup_iv.0402, %if.else209 ], [ %backup_iv.0402, %if.end199.theend_crit_edge ], [ %backup_iv.0402, %do.end97 ], [ %backup_iv.0402, %do.end111 ], [ null, %if.end8.i.i.theend_crit_edge ]
  tail call void @kfree_sensitive(ptr noundef nonnull %call7.i.i) #7
  tail call void @kfree_sensitive(ptr noundef %backup_iv.1) #7
  br label %cleanup

cleanup:                                          ; preds = %theend, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.1, %theend ], [ -12, %do.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_skcipher_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @scatterwalk_map_and_copy(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

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

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 23)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(2) }
attributes #12 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !19, !20, !21, !23, !24, !25, !27, !28, !29, !31, !32, !34, !35, !37, !38, !39, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/amlogic/amlogic-gxl-cipher.c", i32 324, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @meson_cipher_init._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @meson_cipher_init._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/amlogic/amlogic-gxl-cipher.c", i32 364, i32 3}
!10 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @meson_aes_setkey.__UNIQUE_ID_ddebug248, !9, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!13 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/crypto/amlogic/amlogic-gxl-cipher.c", i32 106, i32 2}
!15 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @meson_cipher.__UNIQUE_ID_ddebug243, !14, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!17 = !{ptr @.str.10, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/crypto/amlogic/amlogic-gxl-cipher.c", i32 132, i32 4}
!19 = !{ptr @meson_cipher._entry, !18, !"_entry", i1 false, i1 false}
!20 = !{ptr @meson_cipher._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.12, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/crypto/amlogic/amlogic-gxl-cipher.c", i32 156, i32 3}
!23 = !{ptr @meson_cipher._entry.11, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @meson_cipher._entry_ptr.13, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/crypto/amlogic/amlogic-gxl-cipher.c", i32 181, i32 4}
!27 = !{ptr @meson_cipher._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @meson_cipher._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @meson_cipher._entry.17, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/crypto/amlogic/amlogic-gxl-cipher.c", i32 190, i32 4}
!31 = !{ptr @meson_cipher._entry_ptr.18, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @meson_cipher._entry.19, !33, !"_entry", i1 false, i1 false}
!33 = !{!"../drivers/crypto/amlogic/amlogic-gxl-cipher.c", i32 197, i32 4}
!34 = !{ptr @meson_cipher._entry_ptr.20, !33, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.22, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/crypto/amlogic/amlogic-gxl-cipher.c", i32 232, i32 3}
!37 = !{ptr @meson_cipher._entry.21, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @meson_cipher._entry_ptr.23, !36, !"_entry_ptr", i1 false, i1 false}
!39 = distinct !{null, !40, !"__already_done", i1 false, i1 false}
!40 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!41 = !{ptr @.str.24, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148239963}
!53 = !{i64 2148155272, i64 2148155304, i64 2148155333, i64 2148155367, i64 2148155398, i64 2148155421}
!54 = !{i64 2148240192}
!55 = !{i64 2148727691, i64 2148727696, i64 2148727709, i64 2148727753, i64 2148727787, i64 2148727808}
!56 = !{!"branch_weights", i32 2000, i32 1}
!57 = !{i64 2154371829}
!58 = !{i64 4606507}
