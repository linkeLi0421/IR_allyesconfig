; ModuleID = '/llk/IR_all_yes/drivers/crypto/allwinner/sun8i-ce/sun8i-ce-hash.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-hash.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.crypto_tfm = type { i32, i32, ptr, ptr, [112 x i8], [0 x ptr] }
%struct.crypto_alg = type { %struct.list_head, %struct.list_head, i32, i32, i32, i32, i32, %struct.refcount_struct, [128 x i8], [128 x i8], ptr, %union.anon.71, ptr, ptr, ptr, ptr, %union.anon.72, [120 x i8] }
%struct.list_head = type { ptr, ptr }
%struct.refcount_struct = type { %struct.atomic_t }
%union.anon.71 = type { %struct.cipher_alg }
%struct.cipher_alg = type { i32, i32, ptr, ptr, ptr }
%union.anon.72 = type { %struct.crypto_istat_akcipher }
%struct.crypto_istat_akcipher = type { %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t, %struct.atomic64_t }
%struct.atomic64_t = type { i64 }
%struct.sun8i_ce_dev = type { ptr, [3 x ptr], ptr, ptr, %struct.mutex, %struct.mutex, ptr, %struct.atomic_t, ptr, ptr, ptr, %struct.hwrng, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kref = type { %struct.refcount_struct }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
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
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.sun8i_ce_flow = type { ptr, %struct.completion, i32, i32, i32, ptr, i32 }
%struct.ce_variant = type { [3 x i8], [6 x i8], [2 x i32], i8, i8, i8, i8, [3 x %struct.ce_clock], i32, i8, i8 }
%struct.ce_clock = type { ptr, i32, i32 }
%struct.ce_task = type { i32, i32, i32, i32, i32, i32, i32, i32, [8 x %struct.sginfo], [8 x %struct.sginfo], i32, [3 x i32] }
%struct.sginfo = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.56, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.56 = type { %struct.atomic_t }

@sun8i_ce_hash_crainit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 41, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Fallback driver could no be loaded\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sun8i_ce_hash_crainit\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/crypto/allwinner/sun8i-ce/sun8i-ce-hash.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_ce_hash_crainit._entry_ptr = internal global ptr @sun8i_ce_hash_crainit._entry, section ".printk_index", align 4
@sun8i_ce_hash_crainit._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 54, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fallback for %s is %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sun8i_ce_hash_crainit._entry_ptr.8 = internal global ptr @sun8i_ce_hash_crainit._entry.5, section ".printk_index", align 4
@sun8i_ce_hash_run.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.9, ptr @.str.10, ptr @.str.2, ptr @.str.11, i8 0, i8 76, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sun8i_ce\00", [23 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun8i_ce_hash_run\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"%s %s len=%d\0A\00", [18 x i8] zeroinitializer }, align 32
@sun8i_ce_hash_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 322, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid sg number %d\0A\00", [42 x i8] zeroinitializer }, align 32
@sun8i_ce_hash_run._entry_ptr = internal global ptr @sun8i_ce_hash_run._entry, section ".printk_index", align 4
@sun8i_ce_hash_run._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.10, ptr @.str.2, i32 335, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"remaining len %d\0A\00", [46 x i8] zeroinitializer }, align 32
@sun8i_ce_hash_run._entry_ptr.15 = internal global ptr @sun8i_ce_hash_run._entry.13, section ".printk_index", align 4
@sun8i_ce_hash_run._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.10, ptr @.str.2, i32 343, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMA map dest\0A\00", [18 x i8] zeroinitializer }, align 32
@sun8i_ce_hash_run._entry_ptr.18 = internal global ptr @sun8i_ce_hash_run._entry.16, section ".printk_index", align 4
@sun8i_ce_hash_run._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.10, ptr @.str.2, i32 393, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DMA error on padding SG\0A\00", [39 x i8] zeroinitializer }, align 32
@sun8i_ce_hash_run._entry_ptr.21 = internal global ptr @sun8i_ce_hash_run._entry.19, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.22 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [8 x i64] [i64 6, i64 32, i64 0, i64 1, i64 2, i64 3, i64 4, i64 5]
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 41, i32 3 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 52, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 307, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 322, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 335, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 343, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.82 = private constant [53 x i8] c"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-hash.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 393, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.88, i32 326, i32 6 }
@llvm.compiler.used = appending global [28 x ptr] [ptr @sun8i_ce_hash_crainit._entry, ptr @sun8i_ce_hash_crainit._entry.5, ptr @sun8i_ce_hash_crainit._entry_ptr, ptr @sun8i_ce_hash_crainit._entry_ptr.8, ptr @sun8i_ce_hash_run._entry, ptr @sun8i_ce_hash_run._entry.13, ptr @sun8i_ce_hash_run._entry.16, ptr @sun8i_ce_hash_run._entry.19, ptr @sun8i_ce_hash_run._entry_ptr, ptr @sun8i_ce_hash_run._entry_ptr.15, ptr @sun8i_ce_hash_run._entry_ptr.18, ptr @sun8i_ce_hash_run._entry_ptr.21, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.22, ptr @.str.23], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_hash_crainit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_hash_crainit._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_hash_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_hash_run._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_hash_run._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ce_hash_run._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_hash_crainit(ptr nocapture noundef %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %2 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 20)
  %ce = getelementptr i8, ptr %1, i32 -372
  %3 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ce, align 4
  %ce2 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %5 = ptrtoint ptr %ce2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ce2, align 4
  %do_one_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %6 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sun8i_ce_hash_run, ptr %do_one_request, align 4
  %7 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %__crt_ctx.i, align 4
  %unprepare_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %8 = ptrtoint ptr %unprepare_request to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %unprepare_request, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call9 = tail call ptr @crypto_alloc_ahash(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #6
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %9 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %fallback_tfm, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ce, align 4
  %dev = getelementptr inbounds %struct.sun8i_ce_dev, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str) #9
  %14 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %fallback_tfm, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %statesize = getelementptr i8, ptr %1, i32 -124
  %17 = ptrtoint ptr %statesize to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %statesize, align 4
  %__crt_alg.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %call9, i32 0, i32 10, i32 3
  %19 = ptrtoint ptr %__crt_alg.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %__crt_alg.i.i, align 4
  %statesize.i = getelementptr i8, ptr %20, i32 -124
  %21 = ptrtoint ptr %statesize.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %statesize.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %18, i32 %22)
  %cmp = icmp ult i32 %18, %22
  br i1 %cmp, label %if.then18, label %if.end.if.end24_crit_edge

if.end.if.end24_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end24

if.then18:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %23 = ptrtoint ptr %statesize to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %statesize, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.then18, %if.end.if.end24_crit_edge
  %24 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %fallback_tfm, align 4
  %reqsize.i = getelementptr inbounds %struct.crypto_ahash, ptr %25, i32 0, i32 8
  %26 = ptrtoint ptr %reqsize.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %reqsize.i, align 32
  %add = add i32 %27, 256
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %28 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %reqsize1.i, align 32
  %29 = ptrtoint ptr %ce2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ce2, align 4
  %dev32 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %30, i32 0, i32 3
  %31 = ptrtoint ptr %dev32 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev32, align 4
  %33 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %__crt_alg, align 4
  %cra_driver_name.i = getelementptr inbounds %struct.crypto_alg, ptr %34, i32 0, i32 9
  %__crt_alg.i75 = getelementptr inbounds %struct.crypto_ahash, ptr %25, i32 0, i32 10, i32 3
  %35 = ptrtoint ptr %__crt_alg.i75 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %__crt_alg.i75, align 4
  %cra_driver_name.i76 = getelementptr inbounds %struct.crypto_alg, ptr %36, i32 0, i32 9
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.6, ptr noundef %cra_driver_name.i, ptr noundef %cra_driver_name.i76) #9
  %37 = ptrtoint ptr %ce2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ce2, align 4
  %dev37 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %38, i32 0, i32 3
  %39 = ptrtoint ptr %dev37 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev37, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %40, i32 noundef 4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp39 = icmp slt i32 %call.i, 0
  br i1 %cmp39, label %error_pm, label %if.end24.cleanup_crit_edge

if.end24.cleanup_crit_edge:                       ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

error_pm:                                         ; preds = %if.end24
  %41 = ptrtoint ptr %ce2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ce2, align 4
  %dev43 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev43, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !47
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !48
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %error_pm.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

error_pm.pm_runtime_put_noidle.exit_crit_edge:    ; preds = %error_pm
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %error_pm
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !49
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %error_pm.pm_runtime_put_noidle.exit_crit_edge
  %46 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %47, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %47, ptr noundef %base.i.i) #6
  br label %cleanup

cleanup:                                          ; preds = %pm_runtime_put_noidle.exit, %if.end24.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %16, %do.end ], [ %call.i, %pm_runtime_put_noidle.exit ], [ 0, %if.end24.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_hash_run(ptr noundef %engine, ptr noundef %breq) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %breq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg, align 4
  %ce6 = getelementptr i8, ptr %3, i32 -372
  %4 = ptrtoint ptr %ce6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ce6, align 4
  %halg = getelementptr i8, ptr %3, i32 -128
  %cra_blocksize = getelementptr i8, ptr %3, i32 20
  %6 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cra_blocksize, align 4
  %conv = zext i32 %7 to i64
  %8 = ptrtoint ptr %halg to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %halg, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %9)
  %cmp = icmp eq i32 %9, 28
  %spec.store.select = select i1 %cmp, i32 32, i32 %9
  call void @__sanitizer_cov_trace_const_cmp4(i32 48, i32 %spec.store.select)
  %cmp13 = icmp eq i32 %spec.store.select, 48
  %spec.store.select178 = select i1 %cmp13, i32 64, i32 %spec.store.select
  %mul = shl i32 %7, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3521) #10
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.theend_crit_edge, label %if.end8.i.i323

entry.theend_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %theend

if.end8.i.i323:                                   ; preds = %entry
  %call9.i.i322 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.store.select178, i32 noundef 3521) #10
  %tobool22.not = icmp eq ptr %call9.i.i322, null
  br i1 %tobool22.not, label %if.end8.i.i323.theend_crit_edge, label %if.end24

if.end8.i.i323.theend_crit_edge:                  ; preds = %if.end8.i.i323
  call void @__sanitizer_cov_trace_pc() #8
  br label %theend

if.end24:                                         ; preds = %if.end8.i.i323
  %flow25 = getelementptr inbounds %struct.ahash_request, ptr %breq, i32 2
  %10 = ptrtoint ptr %flow25 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %flow25, align 128
  %chanlist = getelementptr inbounds %struct.sun8i_ce_dev, ptr %5, i32 0, i32 6
  %12 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chanlist, align 4
  %stat_req = getelementptr i8, ptr %3, i32 512
  %14 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %stat_req, align 128
  %inc = add i32 %15, 1
  store i32 %inc, ptr %stat_req, align 128
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ce_hash_run.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ce_hash_run, %if.then31)) #6
          to label %do.end [label %if.then31], !srcloc !50

if.then31:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  %dev = getelementptr inbounds %struct.sun8i_ce_dev, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev, align 4
  %18 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %21, i32 0, i32 8
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %breq, i32 0, i32 1
  %22 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %nbytes, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ce_hash_run.__UNIQUE_ID_ddebug231, ptr noundef %17, ptr noundef nonnull @.str.11, ptr noundef nonnull @.str.10, ptr noundef %cra_name.i, i32 noundef %23) #6
  br label %do.end

do.end:                                           ; preds = %if.then31, %if.end24
  %tl = getelementptr %struct.sun8i_ce_flow, ptr %13, i32 %11, i32 5
  %24 = ptrtoint ptr %tl to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %tl, align 4
  %26 = call ptr @memset(ptr %25, i32 0, i32 176)
  %27 = tail call i32 @llvm.bswap.i32(i32 %11)
  %28 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %27, ptr %25, align 8
  %variant = getelementptr inbounds %struct.sun8i_ce_dev, ptr %5, i32 0, i32 8
  %29 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %variant, align 4
  %ce_algo_id = getelementptr i8, ptr %3, i32 -380
  %31 = ptrtoint ptr %ce_algo_id to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ce_algo_id, align 4
  %arrayidx36 = getelementptr %struct.ce_variant, ptr %30, i32 0, i32 1, i32 %32
  %33 = ptrtoint ptr %arrayidx36 to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %arrayidx36, align 1
  %conv37 = zext i8 %34 to i32
  %or = or i32 %conv37, -2147483648
  %35 = tail call i32 @llvm.bswap.i32(i32 %or)
  %t_common_ctl = getelementptr inbounds %struct.ce_task, ptr %25, i32 0, i32 1
  %36 = ptrtoint ptr %t_common_ctl to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %t_common_ctl, align 4
  %t_sym_ctl = getelementptr inbounds %struct.ce_task, ptr %25, i32 0, i32 2
  %37 = ptrtoint ptr %t_sym_ctl to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %t_sym_ctl, align 8
  %t_asym_ctl = getelementptr inbounds %struct.ce_task, ptr %25, i32 0, i32 3
  %38 = ptrtoint ptr %t_asym_ctl to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %t_asym_ctl, align 4
  %dev38 = getelementptr inbounds %struct.sun8i_ce_dev, ptr %5, i32 0, i32 3
  %39 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev38, align 4
  %src = getelementptr inbounds %struct.ahash_request, ptr %breq, i32 0, i32 2
  %41 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %src, align 4
  %call40 = tail call i32 @sg_nents(ptr noundef %42) #6
  %call41 = tail call i32 @dma_map_sg_attrs(ptr noundef %40, ptr noundef %42, i32 noundef %call40, i32 noundef 1, i32 noundef 0) #6
  %43 = add i32 %call41, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %43)
  %44 = icmp ult i32 %43, -8
  br i1 %44, label %do.end49, label %for.body.preheader

do.end49:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #8
  %45 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.12, i32 noundef %call41) #9
  br label %theend

for.body.preheader:                               ; preds = %do.end
  %nbytes52 = getelementptr inbounds %struct.ahash_request, ptr %breq, i32 0, i32 1
  %47 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %src, align 4
  %49 = ptrtoint ptr %nbytes52 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %nbytes52, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 3
  %51 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dma_address, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %arrayidx56 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 0
  %54 = ptrtoint ptr %arrayidx56 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %arrayidx56, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %48, i32 0, i32 4
  %55 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dma_length, align 4
  %57 = tail call i32 @llvm.umin.i32(i32 %50, i32 %56)
  %div = sdiv i32 %57, 4
  %58 = tail call i32 @llvm.bswap.i32(i32 %div)
  %len62 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 0, i32 1
  %59 = ptrtoint ptr %len62 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %len62, align 4
  %sub = sub i32 %50, %57
  %call64 = tail call ptr @sg_next(ptr noundef %48) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call41)
  %exitcond.not = icmp eq i32 %call41, 1
  br i1 %exitcond.not, label %for.body.preheader.for.end_crit_edge, label %for.body.1

for.body.preheader.for.end_crit_edge:             ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %for.body.preheader
  %dma_address.1 = getelementptr inbounds %struct.scatterlist, ptr %call64, i32 0, i32 3
  %60 = ptrtoint ptr %dma_address.1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %dma_address.1, align 4
  %62 = tail call i32 @llvm.bswap.i32(i32 %61)
  %arrayidx56.1 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 1
  %63 = ptrtoint ptr %arrayidx56.1 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %62, ptr %arrayidx56.1, align 8
  %dma_length.1 = getelementptr inbounds %struct.scatterlist, ptr %call64, i32 0, i32 4
  %64 = ptrtoint ptr %dma_length.1 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %dma_length.1, align 4
  %66 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %65)
  %div.1 = sdiv i32 %66, 4
  %67 = tail call i32 @llvm.bswap.i32(i32 %div.1)
  %len62.1 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 1, i32 1
  %68 = ptrtoint ptr %len62.1 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %67, ptr %len62.1, align 4
  %sub.1 = sub i32 %sub, %66
  %call64.1 = tail call ptr @sg_next(ptr noundef %call64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call41)
  %exitcond.not.1 = icmp eq i32 %call41, 2
  br i1 %exitcond.not.1, label %for.body.1.for.end_crit_edge, label %for.body.2

for.body.1.for.end_crit_edge:                     ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %for.body.1
  %dma_address.2 = getelementptr inbounds %struct.scatterlist, ptr %call64.1, i32 0, i32 3
  %69 = ptrtoint ptr %dma_address.2 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %dma_address.2, align 4
  %71 = tail call i32 @llvm.bswap.i32(i32 %70)
  %arrayidx56.2 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 2
  %72 = ptrtoint ptr %arrayidx56.2 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %arrayidx56.2, align 8
  %dma_length.2 = getelementptr inbounds %struct.scatterlist, ptr %call64.1, i32 0, i32 4
  %73 = ptrtoint ptr %dma_length.2 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %dma_length.2, align 4
  %75 = tail call i32 @llvm.umin.i32(i32 %sub.1, i32 %74)
  %div.2 = sdiv i32 %75, 4
  %76 = tail call i32 @llvm.bswap.i32(i32 %div.2)
  %len62.2 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 2, i32 1
  %77 = ptrtoint ptr %len62.2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %len62.2, align 4
  %sub.2 = sub i32 %sub.1, %75
  %call64.2 = tail call ptr @sg_next(ptr noundef %call64.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call41)
  %exitcond.not.2 = icmp eq i32 %call41, 3
  br i1 %exitcond.not.2, label %for.body.2.for.end_crit_edge, label %for.body.3

for.body.2.for.end_crit_edge:                     ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.3:                                       ; preds = %for.body.2
  %dma_address.3 = getelementptr inbounds %struct.scatterlist, ptr %call64.2, i32 0, i32 3
  %78 = ptrtoint ptr %dma_address.3 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %dma_address.3, align 4
  %80 = tail call i32 @llvm.bswap.i32(i32 %79)
  %arrayidx56.3 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 3
  %81 = ptrtoint ptr %arrayidx56.3 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 %80, ptr %arrayidx56.3, align 8
  %dma_length.3 = getelementptr inbounds %struct.scatterlist, ptr %call64.2, i32 0, i32 4
  %82 = ptrtoint ptr %dma_length.3 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %dma_length.3, align 4
  %84 = tail call i32 @llvm.umin.i32(i32 %sub.2, i32 %83)
  %div.3 = sdiv i32 %84, 4
  %85 = tail call i32 @llvm.bswap.i32(i32 %div.3)
  %len62.3 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 3, i32 1
  %86 = ptrtoint ptr %len62.3 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %85, ptr %len62.3, align 4
  %sub.3 = sub i32 %sub.2, %84
  %call64.3 = tail call ptr @sg_next(ptr noundef %call64.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call41)
  %exitcond.not.3 = icmp eq i32 %call41, 4
  br i1 %exitcond.not.3, label %for.body.3.for.end_crit_edge, label %for.body.4

for.body.3.for.end_crit_edge:                     ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.4:                                       ; preds = %for.body.3
  %dma_address.4 = getelementptr inbounds %struct.scatterlist, ptr %call64.3, i32 0, i32 3
  %87 = ptrtoint ptr %dma_address.4 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %dma_address.4, align 4
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %arrayidx56.4 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 4
  %90 = ptrtoint ptr %arrayidx56.4 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %89, ptr %arrayidx56.4, align 8
  %dma_length.4 = getelementptr inbounds %struct.scatterlist, ptr %call64.3, i32 0, i32 4
  %91 = ptrtoint ptr %dma_length.4 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %dma_length.4, align 4
  %93 = tail call i32 @llvm.umin.i32(i32 %sub.3, i32 %92)
  %div.4 = sdiv i32 %93, 4
  %94 = tail call i32 @llvm.bswap.i32(i32 %div.4)
  %len62.4 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 4, i32 1
  %95 = ptrtoint ptr %len62.4 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %94, ptr %len62.4, align 4
  %sub.4 = sub i32 %sub.3, %93
  %call64.4 = tail call ptr @sg_next(ptr noundef %call64.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call41)
  %exitcond.not.4 = icmp eq i32 %call41, 5
  br i1 %exitcond.not.4, label %for.body.4.for.end_crit_edge, label %for.body.5

for.body.4.for.end_crit_edge:                     ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.5:                                       ; preds = %for.body.4
  %dma_address.5 = getelementptr inbounds %struct.scatterlist, ptr %call64.4, i32 0, i32 3
  %96 = ptrtoint ptr %dma_address.5 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma_address.5, align 4
  %98 = tail call i32 @llvm.bswap.i32(i32 %97)
  %arrayidx56.5 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 5
  %99 = ptrtoint ptr %arrayidx56.5 to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %98, ptr %arrayidx56.5, align 8
  %dma_length.5 = getelementptr inbounds %struct.scatterlist, ptr %call64.4, i32 0, i32 4
  %100 = ptrtoint ptr %dma_length.5 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %dma_length.5, align 4
  %102 = tail call i32 @llvm.umin.i32(i32 %sub.4, i32 %101)
  %div.5 = sdiv i32 %102, 4
  %103 = tail call i32 @llvm.bswap.i32(i32 %div.5)
  %len62.5 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 5, i32 1
  %104 = ptrtoint ptr %len62.5 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %len62.5, align 4
  %sub.5 = sub i32 %sub.4, %102
  %call64.5 = tail call ptr @sg_next(ptr noundef %call64.4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call41)
  %exitcond.not.5 = icmp eq i32 %call41, 6
  br i1 %exitcond.not.5, label %for.body.5.for.end_crit_edge, label %for.body.6

for.body.5.for.end_crit_edge:                     ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.6:                                       ; preds = %for.body.5
  %dma_address.6 = getelementptr inbounds %struct.scatterlist, ptr %call64.5, i32 0, i32 3
  %105 = ptrtoint ptr %dma_address.6 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %dma_address.6, align 4
  %107 = tail call i32 @llvm.bswap.i32(i32 %106)
  %arrayidx56.6 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 6
  %108 = ptrtoint ptr %arrayidx56.6 to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %arrayidx56.6, align 8
  %dma_length.6 = getelementptr inbounds %struct.scatterlist, ptr %call64.5, i32 0, i32 4
  %109 = ptrtoint ptr %dma_length.6 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %dma_length.6, align 4
  %111 = tail call i32 @llvm.umin.i32(i32 %sub.5, i32 %110)
  %div.6 = sdiv i32 %111, 4
  %112 = tail call i32 @llvm.bswap.i32(i32 %div.6)
  %len62.6 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 6, i32 1
  %113 = ptrtoint ptr %len62.6 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %112, ptr %len62.6, align 4
  %sub.6 = sub i32 %sub.5, %111
  %call64.6 = tail call ptr @sg_next(ptr noundef %call64.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call41)
  %exitcond.not.6 = icmp eq i32 %call41, 7
  br i1 %exitcond.not.6, label %for.body.6.for.end_crit_edge, label %for.body.7

for.body.6.for.end_crit_edge:                     ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.7:                                       ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #8
  %dma_address.7 = getelementptr inbounds %struct.scatterlist, ptr %call64.6, i32 0, i32 3
  %114 = ptrtoint ptr %dma_address.7 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %dma_address.7, align 4
  %116 = tail call i32 @llvm.bswap.i32(i32 %115)
  %arrayidx56.7 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 7
  %117 = ptrtoint ptr %arrayidx56.7 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 %116, ptr %arrayidx56.7, align 8
  %dma_length.7 = getelementptr inbounds %struct.scatterlist, ptr %call64.6, i32 0, i32 4
  %118 = ptrtoint ptr %dma_length.7 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %dma_length.7, align 4
  %120 = tail call i32 @llvm.umin.i32(i32 %sub.6, i32 %119)
  %div.7 = sdiv i32 %120, 4
  %121 = tail call i32 @llvm.bswap.i32(i32 %div.7)
  %len62.7 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 7, i32 1
  %122 = ptrtoint ptr %len62.7 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %121, ptr %len62.7, align 4
  %sub.7 = sub i32 %sub.6, %120
  %call64.7 = tail call ptr @sg_next(ptr noundef %call64.6) #6
  br label %for.end

for.end:                                          ; preds = %for.body.7, %for.body.6.for.end_crit_edge, %for.body.5.for.end_crit_edge, %for.body.4.for.end_crit_edge, %for.body.3.for.end_crit_edge, %for.body.2.for.end_crit_edge, %for.body.1.for.end_crit_edge, %for.body.preheader.for.end_crit_edge
  %sub.lcssa = phi i32 [ %sub, %for.body.preheader.for.end_crit_edge ], [ %sub.1, %for.body.1.for.end_crit_edge ], [ %sub.2, %for.body.2.for.end_crit_edge ], [ %sub.3, %for.body.3.for.end_crit_edge ], [ %sub.4, %for.body.4.for.end_crit_edge ], [ %sub.5, %for.body.5.for.end_crit_edge ], [ %sub.6, %for.body.6.for.end_crit_edge ], [ %sub.7, %for.body.7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.lcssa)
  %cmp65.not = icmp eq i32 %sub.lcssa, 0
  %123 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %dev38, align 4
  br i1 %cmp65.not, label %if.end72, label %do.end70

do.end70:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %124, ptr noundef nonnull @.str.14, i32 noundef %sub.lcssa) #9
  br label %theend

if.end72:                                         ; preds = %for.end
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i322) #6
  br i1 %call.i, label %land.rhs.i, label %if.end39.i

land.rhs.i:                                       ; preds = %if.end72
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit_crit_edge, label %if.then.i, !prof !51

land.rhs.i.dma_map_single_attrs.exit_crit_edge:   ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %124) #6
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %124, i32 0, i32 3
  %125 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %126, null
  br i1 %tobool.not.i.i, label %if.end.i.i326, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i326:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %127 = ptrtoint ptr %124 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %124, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i326, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %128, %if.end.i.i326 ], [ %126, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit

if.end39.i:                                       ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %124, ptr noundef nonnull %call9.i.i322, i32 noundef %spec.store.select178) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %129 = load ptr, ptr @mem_map, align 4
  %130 = ptrtoint ptr %call9.i.i322 to i32
  %sub.i = add i32 %130, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i327 = getelementptr %struct.page, ptr %129, i32 %shr.i
  %and.i = and i32 %130, 3968
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %124, ptr noundef %add.ptr.i327, i32 noundef %and.i, i32 noundef %spec.store.select178, i32 noundef 2, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit

dma_map_single_attrs.exit:                        ; preds = %if.end39.i, %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit_crit_edge
  %retval.0.i328 = phi i32 [ %call41.i, %if.end39.i ], [ -1, %dev_name.exit.i ], [ -1, %land.rhs.i.dma_map_single_attrs.exit_crit_edge ]
  %131 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i328)
  %t_dst = getelementptr inbounds %struct.ce_task, ptr %25, i32 0, i32 9
  %132 = ptrtoint ptr %t_dst to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %131, ptr %t_dst, align 8
  %div77 = sdiv i32 %spec.store.select178, 4
  %133 = tail call i32 @llvm.bswap.i32(i32 %div77)
  %len80 = getelementptr inbounds %struct.ce_task, ptr %25, i32 0, i32 9, i32 0, i32 1
  %134 = ptrtoint ptr %len80 to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %133, ptr %len80, align 4
  %135 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %dev38, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %136, i32 noundef %retval.0.i328) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i328)
  %cmp.i = icmp eq i32 %retval.0.i328, -1
  br i1 %cmp.i, label %do.end87, label %if.end89

do.end87:                                         ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  %137 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %138, ptr noundef nonnull @.str.17) #9
  br label %theend

if.end89:                                         ; preds = %dma_map_single_attrs.exit
  %139 = ptrtoint ptr %nbytes52 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %nbytes52, align 8
  %conv91 = zext i32 %140 to i64
  %141 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 -2147483648, ptr %call9.i.i, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %7)
  %cmp94 = icmp eq i32 %7, 64
  %. = select i1 %cmp94, i64 63, i64 127
  %.369 = select i1 %cmp94, i64 64, i64 128
  %.370 = select i1 %cmp94, i64 12, i64 20
  %rem101 = and i64 %., %conv91
  %sub102 = sub nuw nsw i64 %.369, %rem101
  call void @__sanitizer_cov_trace_cmp8(i64 %sub102, i64 %.370)
  %cmp108 = icmp ult i64 %sub102, %.370
  %add111 = select i1 %cmp108, i64 %conv, i64 0
  %spec.select = sub nsw i64 %sub102, %.370
  %sub113 = add nsw i64 %spec.select, %add111
  %div114295 = lshr i64 %sub113, 2
  %142 = trunc i64 %div114295 to i32
  %conv117 = add i32 %142, 1
  %143 = ptrtoint ptr %ce_algo_id to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %ce_algo_id, align 4
  %145 = zext i32 %144 to i64
  call void @__sanitizer_cov_trace_switch(i64 %145, ptr @__sancov_gen_cov_switch_values)
  switch i32 %144, label %if.end89.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end89.sw.bb121_crit_edge
    i32 2, label %if.end89.sw.bb121_crit_edge371
    i32 3, label %if.end89.sw.bb121_crit_edge372
    i32 4, label %if.end89.sw.bb125_crit_edge
    i32 5, label %if.end89.sw.bb125_crit_edge373
  ]

if.end89.sw.bb125_crit_edge373:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb125

if.end89.sw.bb125_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb125

if.end89.sw.bb121_crit_edge372:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb121

if.end89.sw.bb121_crit_edge371:                   ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb121

if.end89.sw.bb121_crit_edge:                      ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb121

if.end89.sw.epilog_crit_edge:                     ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx119 = getelementptr i32, ptr %call9.i.i, i32 %conv117
  %shl = shl nuw nsw i64 %conv91, 3
  %146 = tail call i64 @llvm.bswap.i64(i64 %shl)
  %147 = ptrtoint ptr %arrayidx119 to i32
  call void @__asan_store8_noabort(i32 %147)
  store i64 %146, ptr %arrayidx119, align 8
  %add120 = add i32 %142, 3
  br label %sw.epilog

sw.bb121:                                         ; preds = %if.end89.sw.bb121_crit_edge, %if.end89.sw.bb121_crit_edge371, %if.end89.sw.bb121_crit_edge372
  %arrayidx122 = getelementptr i32, ptr %call9.i.i, i32 %conv117
  %shl123 = shl nuw nsw i64 %conv91, 3
  %148 = ptrtoint ptr %arrayidx122 to i32
  call void @__asan_store8_noabort(i32 %148)
  store i64 %shl123, ptr %arrayidx122, align 8
  %add124 = add i32 %142, 3
  br label %sw.epilog

sw.bb125:                                         ; preds = %if.end89.sw.bb125_crit_edge, %if.end89.sw.bb125_crit_edge373
  %arrayidx126 = getelementptr i32, ptr %call9.i.i, i32 %conv117
  %149 = ptrtoint ptr %arrayidx126 to i32
  call void @__asan_store8_noabort(i32 %149)
  store i64 0, ptr %arrayidx126, align 8
  %add127 = add i32 %142, 3
  %arrayidx128 = getelementptr i32, ptr %call9.i.i, i32 %add127
  %shl129 = shl nuw nsw i64 %conv91, 3
  %150 = ptrtoint ptr %arrayidx128 to i32
  call void @__asan_store8_noabort(i32 %150)
  store i64 %shl129, ptr %arrayidx128, align 8
  %add130 = add i32 %142, 5
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb125, %sw.bb121, %sw.bb, %if.end89.sw.epilog_crit_edge
  %j.0 = phi i32 [ %conv117, %if.end89.sw.epilog_crit_edge ], [ %add130, %sw.bb125 ], [ %add124, %sw.bb121 ], [ %add120, %sw.bb ]
  %151 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev38, align 4
  %mul132 = shl i32 %j.0, 2
  %call.i329 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i) #6
  br i1 %call.i329, label %land.rhs.i331, label %if.end39.i344

land.rhs.i331:                                    ; preds = %sw.epilog
  %.b1.i330 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i330, label %land.rhs.i331.dma_map_single_attrs.exit346_crit_edge, label %if.then.i335, !prof !51

land.rhs.i331.dma_map_single_attrs.exit346_crit_edge: ; preds = %land.rhs.i331
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit346

if.then.i335:                                     ; preds = %land.rhs.i331
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i332 = tail call ptr @dev_driver_string(ptr noundef %152) #6
  %init_name.i.i333 = getelementptr inbounds %struct.device, ptr %152, i32 0, i32 3
  %153 = ptrtoint ptr %init_name.i.i333 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %init_name.i.i333, align 8
  %tobool.not.i.i334 = icmp eq ptr %154, null
  br i1 %tobool.not.i.i334, label %if.end.i.i336, label %if.then.i335.dev_name.exit.i338_crit_edge

if.then.i335.dev_name.exit.i338_crit_edge:        ; preds = %if.then.i335
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i338

if.end.i.i336:                                    ; preds = %if.then.i335
  call void @__sanitizer_cov_trace_pc() #8
  %155 = ptrtoint ptr %152 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %152, align 4
  br label %dev_name.exit.i338

dev_name.exit.i338:                               ; preds = %if.end.i.i336, %if.then.i335.dev_name.exit.i338_crit_edge
  %retval.0.i.i337 = phi ptr [ %156, %if.end.i.i336 ], [ %154, %if.then.i335.dev_name.exit.i338_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.22, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.23, ptr noundef %call16.i332, ptr noundef %retval.0.i.i337) #6
  br label %dma_map_single_attrs.exit346

if.end39.i344:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %152, ptr noundef nonnull %call9.i.i, i32 noundef %mul132) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %157 = load ptr, ptr @mem_map, align 4
  %158 = ptrtoint ptr %call9.i.i to i32
  %sub.i339 = add i32 %158, 1073741824
  %shr.i340 = lshr i32 %sub.i339, 12
  %add.ptr.i341 = getelementptr %struct.page, ptr %157, i32 %shr.i340
  %and.i342 = and i32 %158, 3968
  %call41.i343 = tail call i32 @dma_map_page_attrs(ptr noundef %152, ptr noundef %add.ptr.i341, i32 noundef %and.i342, i32 noundef %mul132, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit346

dma_map_single_attrs.exit346:                     ; preds = %if.end39.i344, %dev_name.exit.i338, %land.rhs.i331.dma_map_single_attrs.exit346_crit_edge
  %retval.0.i345 = phi i32 [ %call41.i343, %if.end39.i344 ], [ -1, %dev_name.exit.i338 ], [ -1, %land.rhs.i331.dma_map_single_attrs.exit346_crit_edge ]
  %159 = tail call i32 @llvm.bswap.i32(i32 %retval.0.i345)
  %arrayidx135 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 %call41
  %160 = ptrtoint ptr %arrayidx135 to i32
  call void @__asan_store4_noabort(i32 %160)
  store i32 %159, ptr %arrayidx135, align 8
  %161 = tail call i32 @llvm.bswap.i32(i32 %j.0)
  %len139 = getelementptr %struct.ce_task, ptr %25, i32 0, i32 8, i32 %call41, i32 1
  %162 = ptrtoint ptr %len139 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 %161, ptr %len139, align 4
  %163 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load ptr, ptr %dev38, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %164, i32 noundef %retval.0.i345) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i345)
  %cmp.i347 = icmp eq i32 %retval.0.i345, -1
  br i1 %cmp.i347, label %do.end146, label %if.end148

do.end146:                                        ; preds = %dma_map_single_attrs.exit346
  call void @__sanitizer_cov_trace_pc() #8
  %165 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %dev38, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %166, ptr noundef nonnull @.str.20) #9
  br label %theend

if.end148:                                        ; preds = %dma_map_single_attrs.exit346
  call void @__sanitizer_cov_trace_pc() #8
  %167 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %variant, align 4
  %hash_t_dlen_in_bits = getelementptr inbounds %struct.ce_variant, ptr %168, i32 0, i32 4
  %169 = ptrtoint ptr %hash_t_dlen_in_bits to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %hash_t_dlen_in_bits, align 1, !range !52
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %170)
  %tobool150.not = icmp eq i8 %170, 0
  %171 = ptrtoint ptr %nbytes52 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load i32, ptr %nbytes52, align 8
  %div158296 = lshr i32 %172, 2
  %add159 = add i32 %div158296, %j.0
  %add154 = add i32 %172, %mul132
  %mul155 = shl i32 %add154, 3
  %add159.sink = select i1 %tobool150.not, i32 %add159, i32 %mul155
  %173 = tail call i32 @llvm.bswap.i32(i32 %add159.sink)
  %174 = getelementptr inbounds %struct.ce_task, ptr %25, i32 0, i32 7
  %175 = ptrtoint ptr %174 to i32
  call void @__asan_store4_noabort(i32 %175)
  store i32 %173, ptr %174, align 4
  %176 = ptrtoint ptr %nbytes52 to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %nbytes52, align 8
  %timeout = getelementptr %struct.sun8i_ce_flow, ptr %13, i32 %11, i32 4
  %178 = ptrtoint ptr %timeout to i32
  call void @__asan_store4_noabort(i32 %178)
  store i32 %177, ptr %timeout, align 4
  %179 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i349 = getelementptr inbounds %struct.crypto_tfm, ptr %180, i32 0, i32 3
  %181 = ptrtoint ptr %__crt_alg.i349 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %__crt_alg.i349, align 4
  %cra_name.i350 = getelementptr inbounds %struct.crypto_alg, ptr %182, i32 0, i32 8
  %call166 = tail call i32 @sun8i_ce_run_task(ptr noundef %5, i32 noundef %11, ptr noundef %cra_name.i350) #6
  %183 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load ptr, ptr %dev38, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %184, i32 noundef %retval.0.i345, i32 noundef %mul132, i32 noundef 1, i32 noundef 0) #6
  %185 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %dev38, align 4
  %187 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %src, align 4
  %call172 = tail call i32 @sg_nents(ptr noundef %188) #6
  tail call void @dma_unmap_sg_attrs(ptr noundef %186, ptr noundef %188, i32 noundef %call172, i32 noundef 1, i32 noundef 0) #6
  %189 = ptrtoint ptr %dev38 to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %dev38, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %190, i32 noundef %retval.0.i328, i32 noundef %spec.store.select178, i32 noundef 2, i32 noundef 0) #6
  %result174 = getelementptr inbounds %struct.ahash_request, ptr %breq, i32 0, i32 3
  %191 = ptrtoint ptr %result174 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %result174, align 32
  %193 = ptrtoint ptr %halg to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %halg, align 128
  %195 = call ptr @memcpy(ptr %192, ptr %call9.i.i322, i32 %194)
  br label %theend

theend:                                           ; preds = %if.end148, %do.end146, %do.end87, %do.end70, %do.end49, %if.end8.i.i323.theend_crit_edge, %entry.theend_crit_edge
  %retval.1.i.i354 = phi ptr [ %call9.i.i, %do.end49 ], [ %call9.i.i, %do.end70 ], [ %call9.i.i, %do.end87 ], [ %call9.i.i, %do.end146 ], [ %call9.i.i, %if.end148 ], [ null, %entry.theend_crit_edge ], [ %call9.i.i, %if.end8.i.i323.theend_crit_edge ]
  %err.0 = phi i32 [ -22, %do.end49 ], [ -22, %do.end70 ], [ -22, %do.end87 ], [ -22, %do.end146 ], [ %call166, %if.end148 ], [ -12, %entry.theend_crit_edge ], [ -12, %if.end8.i.i323.theend_crit_edge ]
  %result.0 = phi ptr [ %call9.i.i322, %do.end49 ], [ %call9.i.i322, %do.end70 ], [ %call9.i.i322, %do.end87 ], [ %call9.i.i322, %do.end146 ], [ %call9.i.i322, %if.end148 ], [ null, %entry.theend_crit_edge ], [ null, %if.end8.i.i323.theend_crit_edge ]
  tail call void @kfree(ptr noundef %retval.1.i.i354) #6
  tail call void @kfree(ptr noundef %result.0) #6
  tail call void @crypto_finalize_hash_request(ptr noundef %engine, ptr noundef %breq, i32 noundef %err.0) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun8i_ce_hash_craexit(ptr nocapture noundef readonly %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %0 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #6
  %ce = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %2 = ptrtoint ptr %ce to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ce, align 4
  %dev = getelementptr inbounds %struct.sun8i_ce_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_hash_init(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 256)
  %fallback_tfm = getelementptr i8, ptr %1, i32 144
  %3 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %4, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %5 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %8 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %and, ptr %flags5, align 4
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %base.i.i, align 128
  %and.i = and i32 %10, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_ahash_init.exit_crit_edge

entry.crypto_ahash_init.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_ahash_init.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 128
  %call2.i = tail call i32 %12(ptr noundef %__ctx.i) #6
  br label %crypto_ahash_init.exit

crypto_ahash_init.exit:                           ; preds = %if.end.i, %entry.crypto_ahash_init.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -126, %entry.crypto_ahash_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_hash_export(ptr noundef %areq, ptr noundef %out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_tfm = getelementptr i8, ptr %1, i32 144
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %export.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %export.i, align 4
  %call1.i = tail call i32 %9(ptr noundef %__ctx.i, ptr noundef %out) #6
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_hash_import(ptr noundef %areq, ptr noundef %in) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_tfm = getelementptr i8, ptr %1, i32 144
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %8 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %base.i.i, align 128
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.crypto_ahash_import.exit_crit_edge

entry.crypto_ahash_import.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %crypto_ahash_import.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %import.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %import.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %import.i, align 8
  %call2.i = tail call i32 %11(ptr noundef %__ctx.i, ptr noundef %in) #6
  br label %crypto_ahash_import.exit

crypto_ahash_import.exit:                         ; preds = %if.end.i, %entry.crypto_ahash_import.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -126, %entry.crypto_ahash_import.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_hash_final(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg, align 4
  %fallback_tfm = getelementptr i8, ptr %1, i32 144
  %4 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %5, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 512
  %flags7 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %flags7, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %10 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %result, align 32
  %result9 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 3
  %12 = ptrtoint ptr %result9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %result9, align 32
  %stat_fb = getelementptr i8, ptr %3, i32 516
  %13 = ptrtoint ptr %stat_fb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stat_fb, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %stat_fb, align 4
  %call11 = tail call i32 @crypto_ahash_final(ptr noundef %__ctx.i) #6
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_hash_update(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_tfm = getelementptr i8, ptr %1, i32 144
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 8
  %nbytes7 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %10 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nbytes7, align 8
  %src = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src, align 4
  %src9 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 2
  %13 = ptrtoint ptr %src9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %src9, align 4
  %__crt_alg.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 10, i32 3
  %14 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %__crt_alg.i, align 4
  tail call void @crypto_stats_get(ptr noundef %15) #6
  %16 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tfm1.i, align 16
  %update.i = getelementptr i8, ptr %17, i32 -124
  %18 = ptrtoint ptr %update.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %update.i, align 4
  %call3.i = tail call i32 %19(ptr noundef %__ctx.i) #6
  tail call void @crypto_stats_ahash_update(i32 noundef %9, i32 noundef %call3.i, ptr noundef %15) #6
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_hash_finup(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg, align 4
  %fallback_tfm = getelementptr i8, ptr %1, i32 144
  %4 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %5, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %6 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 512
  %flags7 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %9 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %flags7, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %10 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbytes, align 8
  %nbytes9 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %12 = ptrtoint ptr %nbytes9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %nbytes9, align 8
  %src = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src, align 4
  %src11 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 2
  %15 = ptrtoint ptr %src11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %src11, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %16 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %result, align 32
  %result13 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 3
  %18 = ptrtoint ptr %result13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %result13, align 32
  %stat_fb = getelementptr i8, ptr %3, i32 516
  %19 = ptrtoint ptr %stat_fb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stat_fb, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %stat_fb, align 4
  %call15 = tail call i32 @crypto_ahash_finup(ptr noundef %__ctx.i) #6
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ce_hash_digest(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %__crt_alg = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %__crt_alg, align 4
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %nbytes.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %4 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nbytes.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp.i = icmp eq i32 %5, 0
  br i1 %cmp.i, label %entry.if.then_crit_edge, label %if.end.i

entry.if.then_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end.i:                                         ; preds = %entry
  %src.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %6 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %src.i, align 4
  %call.i = tail call i32 @sg_nents(ptr noundef %7) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call.i)
  %cmp1.i = icmp sgt i32 %call.i, 7
  br i1 %cmp1.i, label %if.end.i.if.then_crit_edge, label %if.end3.i

if.end.i.if.then_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end3.i:                                        ; preds = %if.end.i
  %8 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %src.i, align 4
  %tobool.not15.i = icmp eq ptr %9, null
  br i1 %tobool.not15.i, label %if.end3.i.if.end_crit_edge, label %if.end3.i.while.body.i_crit_edge

if.end3.i.while.body.i_crit_edge:                 ; preds = %if.end3.i
  br label %while.body.i

if.end3.i.if.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

while.body.i:                                     ; preds = %if.end8.i.while.body.i_crit_edge, %if.end3.i.while.body.i_crit_edge
  %sg.016.i = phi ptr [ %call9.i, %if.end8.i.while.body.i_crit_edge ], [ %9, %if.end3.i.while.body.i_crit_edge ]
  %length.i = getelementptr inbounds %struct.scatterlist, ptr %sg.016.i, i32 0, i32 2
  %10 = ptrtoint ptr %length.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %length.i, align 4
  %rem.i = and i32 %11, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool5.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool5.not.i, label %lor.lhs.false.i, label %while.body.i.if.then_crit_edge

while.body.i.if.then_crit_edge:                   ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

lor.lhs.false.i:                                  ; preds = %while.body.i
  %offset.i = getelementptr inbounds %struct.scatterlist, ptr %sg.016.i, i32 0, i32 1
  %12 = ptrtoint ptr %offset.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %offset.i, align 4
  %and.i = and i32 %13, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp6.i = icmp eq i32 %and.i, 0
  br i1 %cmp6.i, label %if.end8.i, label %lor.lhs.false.i.if.then_crit_edge

lor.lhs.false.i.if.then_crit_edge:                ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then

if.end8.i:                                        ; preds = %lor.lhs.false.i
  %call9.i = tail call ptr @sg_next(ptr noundef nonnull %sg.016.i) #6
  %tobool.not.i = icmp eq ptr %call9.i, null
  br i1 %tobool.not.i, label %if.end8.i.if.end_crit_edge, label %if.end8.i.while.body.i_crit_edge

if.end8.i.while.body.i_crit_edge:                 ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %while.body.i

if.end8.i.if.end_crit_edge:                       ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %lor.lhs.false.i.if.then_crit_edge, %while.body.i.if.then_crit_edge, %if.end.i.if.then_crit_edge, %entry.if.then_crit_edge
  %14 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i = getelementptr i8, ptr %15, i32 12
  %16 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %__crt_alg.i, align 4
  %fallback_tfm.i = getelementptr i8, ptr %15, i32 144
  %18 = ptrtoint ptr %fallback_tfm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fallback_tfm.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %19, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %20 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i43 = and i32 %22, 512
  %flags7.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %23 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i43, ptr %flags7.i, align 4
  %24 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nbytes.i, align 8
  %nbytes9.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %26 = ptrtoint ptr %nbytes9.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %nbytes9.i, align 8
  %src.i45 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %27 = ptrtoint ptr %src.i45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src.i45, align 4
  %src11.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 2
  %29 = ptrtoint ptr %src11.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %src11.i, align 4
  %result.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %30 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %result.i, align 32
  %result13.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 3
  %32 = ptrtoint ptr %result13.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %result13.i, align 32
  %stat_fb.i = getelementptr i8, ptr %17, i32 516
  %33 = ptrtoint ptr %stat_fb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stat_fb.i, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %stat_fb.i, align 4
  %call15.i = tail call i32 @crypto_ahash_digest(ptr noundef %__ctx.i) #6
  br label %cleanup

if.end:                                           ; preds = %if.end8.i.if.end_crit_edge, %if.end3.i.if.end_crit_edge
  %35 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %src.i, align 4
  %call5 = tail call i32 @sg_nents(ptr noundef %36) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call5)
  %cmp = icmp sgt i32 %call5, 7
  br i1 %cmp, label %if.then6, label %if.end8

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %37 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i48 = getelementptr i8, ptr %38, i32 12
  %39 = ptrtoint ptr %__crt_alg.i48 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__crt_alg.i48, align 4
  %fallback_tfm.i49 = getelementptr i8, ptr %38, i32 144
  %41 = ptrtoint ptr %fallback_tfm.i49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fallback_tfm.i49, align 4
  %base.i.i.i50 = getelementptr inbounds %struct.crypto_ahash, ptr %42, i32 0, i32 10
  %tfm1.i.i51 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %43 = ptrtoint ptr %tfm1.i.i51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %base.i.i.i50, ptr %tfm1.i.i51, align 16
  %flags.i52 = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %44 = ptrtoint ptr %flags.i52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i52, align 4
  %and.i53 = and i32 %45, 512
  %flags7.i54 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %46 = ptrtoint ptr %flags7.i54 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and.i53, ptr %flags7.i54, align 4
  %47 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nbytes.i, align 8
  %nbytes9.i56 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %49 = ptrtoint ptr %nbytes9.i56 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %nbytes9.i56, align 8
  %50 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %src.i, align 4
  %src11.i58 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 2
  %52 = ptrtoint ptr %src11.i58 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %src11.i58, align 4
  %result.i59 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %53 = ptrtoint ptr %result.i59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %result.i59, align 32
  %result13.i60 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 3
  %55 = ptrtoint ptr %result13.i60 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %result13.i60, align 32
  %stat_fb.i61 = getelementptr i8, ptr %40, i32 516
  %56 = ptrtoint ptr %stat_fb.i61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stat_fb.i61, align 4
  %inc.i62 = add i32 %57, 1
  store i32 %inc.i62, ptr %stat_fb.i61, align 4
  %call15.i63 = tail call i32 @crypto_ahash_digest(ptr noundef %__ctx.i) #6
  br label %cleanup

if.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %cmp1083 = icmp sgt i32 %call5, 0
  br i1 %cmp1083, label %for.body.preheader, label %if.end8.for.end_crit_edge

if.end8.for.end_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.preheader:                               ; preds = %if.end8
  %58 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %src.i, align 4
  %length = getelementptr inbounds %struct.scatterlist, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %length to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %length, align 4
  %rem = and i32 %61, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %lor.lhs.false, label %for.body.preheader.if.then12_crit_edge

for.body.preheader.if.then12_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false:                                    ; preds = %for.body.preheader
  %offset = getelementptr inbounds %struct.scatterlist, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %offset to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %offset, align 4
  %and = and i32 %63, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %for.inc, label %lor.lhs.false.if.then12_crit_edge

lor.lhs.false.if.then12_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

if.then12:                                        ; preds = %lor.lhs.false.6.if.then12_crit_edge, %for.body.6.if.then12_crit_edge, %lor.lhs.false.5.if.then12_crit_edge, %for.body.5.if.then12_crit_edge, %lor.lhs.false.4.if.then12_crit_edge, %for.body.4.if.then12_crit_edge, %lor.lhs.false.3.if.then12_crit_edge, %for.body.3.if.then12_crit_edge, %lor.lhs.false.2.if.then12_crit_edge, %for.body.2.if.then12_crit_edge, %lor.lhs.false.1.if.then12_crit_edge, %for.body.1.if.then12_crit_edge, %lor.lhs.false.if.then12_crit_edge, %for.body.preheader.if.then12_crit_edge
  %64 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i66 = getelementptr i8, ptr %65, i32 12
  %66 = ptrtoint ptr %__crt_alg.i66 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %__crt_alg.i66, align 4
  %fallback_tfm.i67 = getelementptr i8, ptr %65, i32 144
  %68 = ptrtoint ptr %fallback_tfm.i67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fallback_tfm.i67, align 4
  %base.i.i.i68 = getelementptr inbounds %struct.crypto_ahash, ptr %69, i32 0, i32 10
  %tfm1.i.i69 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 3
  %70 = ptrtoint ptr %tfm1.i.i69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %base.i.i.i68, ptr %tfm1.i.i69, align 16
  %flags.i70 = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %71 = ptrtoint ptr %flags.i70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i70, align 4
  %and.i71 = and i32 %72, 512
  %flags7.i72 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 0, i32 4
  %73 = ptrtoint ptr %flags7.i72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and.i71, ptr %flags7.i72, align 4
  %74 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nbytes.i, align 8
  %nbytes9.i74 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 1
  %76 = ptrtoint ptr %nbytes9.i74 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %nbytes9.i74, align 8
  %77 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %src.i, align 4
  %src11.i76 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 2
  %79 = ptrtoint ptr %src11.i76 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %src11.i76, align 4
  %result.i77 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %80 = ptrtoint ptr %result.i77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %result.i77, align 32
  %result13.i78 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 1, i32 3
  %82 = ptrtoint ptr %result13.i78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %result13.i78, align 32
  %stat_fb.i79 = getelementptr i8, ptr %67, i32 516
  %83 = ptrtoint ptr %stat_fb.i79 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %stat_fb.i79, align 4
  %inc.i80 = add i32 %84, 1
  store i32 %inc.i80, ptr %stat_fb.i79, align 4
  %call15.i81 = tail call i32 @crypto_ahash_digest(ptr noundef %__ctx.i) #6
  br label %cleanup

for.inc:                                          ; preds = %lor.lhs.false
  %call15 = tail call ptr @sg_next(ptr noundef %59) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call5)
  %exitcond.not = icmp eq i32 %call5, 1
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.body.1

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.1:                                       ; preds = %for.inc
  %length.1 = getelementptr inbounds %struct.scatterlist, ptr %call15, i32 0, i32 2
  %85 = ptrtoint ptr %length.1 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %length.1, align 4
  %rem.1 = and i32 %86, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.1)
  %tobool.not.1 = icmp eq i32 %rem.1, 0
  br i1 %tobool.not.1, label %lor.lhs.false.1, label %for.body.1.if.then12_crit_edge

for.body.1.if.then12_crit_edge:                   ; preds = %for.body.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false.1:                                  ; preds = %for.body.1
  %offset.1 = getelementptr inbounds %struct.scatterlist, ptr %call15, i32 0, i32 1
  %87 = ptrtoint ptr %offset.1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %offset.1, align 4
  %and.1 = and i32 %88, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %cmp11.1 = icmp eq i32 %and.1, 0
  br i1 %cmp11.1, label %for.inc.1, label %lor.lhs.false.1.if.then12_crit_edge

lor.lhs.false.1.if.then12_crit_edge:              ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.inc.1:                                        ; preds = %lor.lhs.false.1
  %call15.1 = tail call ptr @sg_next(ptr noundef %call15) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call5)
  %exitcond.not.1 = icmp eq i32 %call5, 2
  br i1 %exitcond.not.1, label %for.inc.1.for.end_crit_edge, label %for.body.2

for.inc.1.for.end_crit_edge:                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.2:                                       ; preds = %for.inc.1
  %length.2 = getelementptr inbounds %struct.scatterlist, ptr %call15.1, i32 0, i32 2
  %89 = ptrtoint ptr %length.2 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %length.2, align 4
  %rem.2 = and i32 %90, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.2)
  %tobool.not.2 = icmp eq i32 %rem.2, 0
  br i1 %tobool.not.2, label %lor.lhs.false.2, label %for.body.2.if.then12_crit_edge

for.body.2.if.then12_crit_edge:                   ; preds = %for.body.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false.2:                                  ; preds = %for.body.2
  %offset.2 = getelementptr inbounds %struct.scatterlist, ptr %call15.1, i32 0, i32 1
  %91 = ptrtoint ptr %offset.2 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %offset.2, align 4
  %and.2 = and i32 %92, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %cmp11.2 = icmp eq i32 %and.2, 0
  br i1 %cmp11.2, label %for.inc.2, label %lor.lhs.false.2.if.then12_crit_edge

lor.lhs.false.2.if.then12_crit_edge:              ; preds = %lor.lhs.false.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.inc.2:                                        ; preds = %lor.lhs.false.2
  %call15.2 = tail call ptr @sg_next(ptr noundef %call15.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call5)
  %exitcond.not.2 = icmp eq i32 %call5, 3
  br i1 %exitcond.not.2, label %for.inc.2.for.end_crit_edge, label %for.body.3

for.inc.2.for.end_crit_edge:                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.3:                                       ; preds = %for.inc.2
  %length.3 = getelementptr inbounds %struct.scatterlist, ptr %call15.2, i32 0, i32 2
  %93 = ptrtoint ptr %length.3 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %length.3, align 4
  %rem.3 = and i32 %94, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.3)
  %tobool.not.3 = icmp eq i32 %rem.3, 0
  br i1 %tobool.not.3, label %lor.lhs.false.3, label %for.body.3.if.then12_crit_edge

for.body.3.if.then12_crit_edge:                   ; preds = %for.body.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false.3:                                  ; preds = %for.body.3
  %offset.3 = getelementptr inbounds %struct.scatterlist, ptr %call15.2, i32 0, i32 1
  %95 = ptrtoint ptr %offset.3 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %offset.3, align 4
  %and.3 = and i32 %96, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %cmp11.3 = icmp eq i32 %and.3, 0
  br i1 %cmp11.3, label %for.inc.3, label %lor.lhs.false.3.if.then12_crit_edge

lor.lhs.false.3.if.then12_crit_edge:              ; preds = %lor.lhs.false.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.inc.3:                                        ; preds = %lor.lhs.false.3
  %call15.3 = tail call ptr @sg_next(ptr noundef %call15.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call5)
  %exitcond.not.3 = icmp eq i32 %call5, 4
  br i1 %exitcond.not.3, label %for.inc.3.for.end_crit_edge, label %for.body.4

for.inc.3.for.end_crit_edge:                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.4:                                       ; preds = %for.inc.3
  %length.4 = getelementptr inbounds %struct.scatterlist, ptr %call15.3, i32 0, i32 2
  %97 = ptrtoint ptr %length.4 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %length.4, align 4
  %rem.4 = and i32 %98, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.4)
  %tobool.not.4 = icmp eq i32 %rem.4, 0
  br i1 %tobool.not.4, label %lor.lhs.false.4, label %for.body.4.if.then12_crit_edge

for.body.4.if.then12_crit_edge:                   ; preds = %for.body.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false.4:                                  ; preds = %for.body.4
  %offset.4 = getelementptr inbounds %struct.scatterlist, ptr %call15.3, i32 0, i32 1
  %99 = ptrtoint ptr %offset.4 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %offset.4, align 4
  %and.4 = and i32 %100, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %cmp11.4 = icmp eq i32 %and.4, 0
  br i1 %cmp11.4, label %for.inc.4, label %lor.lhs.false.4.if.then12_crit_edge

lor.lhs.false.4.if.then12_crit_edge:              ; preds = %lor.lhs.false.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.inc.4:                                        ; preds = %lor.lhs.false.4
  %call15.4 = tail call ptr @sg_next(ptr noundef %call15.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call5)
  %exitcond.not.4 = icmp eq i32 %call5, 5
  br i1 %exitcond.not.4, label %for.inc.4.for.end_crit_edge, label %for.body.5

for.inc.4.for.end_crit_edge:                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.5:                                       ; preds = %for.inc.4
  %length.5 = getelementptr inbounds %struct.scatterlist, ptr %call15.4, i32 0, i32 2
  %101 = ptrtoint ptr %length.5 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %length.5, align 4
  %rem.5 = and i32 %102, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.5)
  %tobool.not.5 = icmp eq i32 %rem.5, 0
  br i1 %tobool.not.5, label %lor.lhs.false.5, label %for.body.5.if.then12_crit_edge

for.body.5.if.then12_crit_edge:                   ; preds = %for.body.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false.5:                                  ; preds = %for.body.5
  %offset.5 = getelementptr inbounds %struct.scatterlist, ptr %call15.4, i32 0, i32 1
  %103 = ptrtoint ptr %offset.5 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %offset.5, align 4
  %and.5 = and i32 %104, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %cmp11.5 = icmp eq i32 %and.5, 0
  br i1 %cmp11.5, label %for.inc.5, label %lor.lhs.false.5.if.then12_crit_edge

lor.lhs.false.5.if.then12_crit_edge:              ; preds = %lor.lhs.false.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.inc.5:                                        ; preds = %lor.lhs.false.5
  %call15.5 = tail call ptr @sg_next(ptr noundef %call15.4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call5)
  %exitcond.not.5 = icmp eq i32 %call5, 6
  br i1 %exitcond.not.5, label %for.inc.5.for.end_crit_edge, label %for.body.6

for.inc.5.for.end_crit_edge:                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.6:                                       ; preds = %for.inc.5
  %length.6 = getelementptr inbounds %struct.scatterlist, ptr %call15.5, i32 0, i32 2
  %105 = ptrtoint ptr %length.6 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %length.6, align 4
  %rem.6 = and i32 %106, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.6)
  %tobool.not.6 = icmp eq i32 %rem.6, 0
  br i1 %tobool.not.6, label %lor.lhs.false.6, label %for.body.6.if.then12_crit_edge

for.body.6.if.then12_crit_edge:                   ; preds = %for.body.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

lor.lhs.false.6:                                  ; preds = %for.body.6
  %offset.6 = getelementptr inbounds %struct.scatterlist, ptr %call15.5, i32 0, i32 1
  %107 = ptrtoint ptr %offset.6 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %offset.6, align 4
  %and.6 = and i32 %108, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %cmp11.6 = icmp eq i32 %and.6, 0
  br i1 %cmp11.6, label %for.inc.6, label %lor.lhs.false.6.if.then12_crit_edge

lor.lhs.false.6.if.then12_crit_edge:              ; preds = %lor.lhs.false.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then12

for.inc.6:                                        ; preds = %lor.lhs.false.6
  call void @__sanitizer_cov_trace_pc() #8
  %call15.6 = tail call ptr @sg_next(ptr noundef %call15.5) #6
  br label %for.end

for.end:                                          ; preds = %for.inc.6, %for.inc.5.for.end_crit_edge, %for.inc.4.for.end_crit_edge, %for.inc.3.for.end_crit_edge, %for.inc.2.for.end_crit_edge, %for.inc.1.for.end_crit_edge, %for.inc.for.end_crit_edge, %if.end8.for.end_crit_edge
  %ce16 = getelementptr i8, ptr %3, i32 -372
  %109 = ptrtoint ptr %ce16 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ce16, align 4
  %call17 = tail call i32 @sun8i_ce_get_engine_number(ptr noundef %110) #6
  %flow = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2
  %111 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call17, ptr %flow, align 128
  %chanlist = getelementptr inbounds %struct.sun8i_ce_dev, ptr %110, i32 0, i32 6
  %112 = ptrtoint ptr %chanlist to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %chanlist, align 4
  %arrayidx = getelementptr %struct.sun8i_ce_flow, ptr %113, i32 %call17
  %114 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %arrayidx, align 4
  %call19 = tail call i32 @crypto_transfer_hash_request_to_engine(ptr noundef %115, ptr noundef %areq) #6
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then12, %if.then6, %if.then
  %retval.0 = phi i32 [ %call15.i, %if.then ], [ %call15.i63, %if.then6 ], [ %call15.i81, %if.then12 ], [ %call19, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sg_nents(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_get_engine_number(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_hash_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sun8i_ce_run_task(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_finalize_hash_request(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_destroy_tfm(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_get(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @crypto_stats_ahash_update(i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_digest(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #5

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

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #5 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }
attributes #10 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37}
!llvm.module.flags = !{!38, !39, !40, !41, !42, !43, !44, !45}
!llvm.ident = !{!46}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-hash.c", i32 41, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun8i_ce_hash_crainit._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun8i_ce_hash_crainit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-hash.c", i32 52, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sun8i_ce_hash_crainit._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @sun8i_ce_hash_crainit._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-hash.c", i32 307, i32 2}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.11, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @sun8i_ce_hash_run.__UNIQUE_ID_ddebug231, !14, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-hash.c", i32 322, i32 3}
!20 = !{ptr @sun8i_ce_hash_run._entry, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @sun8i_ce_hash_run._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.14, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-hash.c", i32 335, i32 3}
!24 = !{ptr @sun8i_ce_hash_run._entry.13, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sun8i_ce_hash_run._entry_ptr.15, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.17, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-hash.c", i32 343, i32 3}
!28 = !{ptr @sun8i_ce_hash_run._entry.16, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sun8i_ce_hash_run._entry_ptr.18, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/crypto/allwinner/sun8i-ce/sun8i-ce-hash.c", i32 393, i32 3}
!32 = !{ptr @sun8i_ce_hash_run._entry.19, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sun8i_ce_hash_run._entry_ptr.21, !31, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!36 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!38 = !{i32 1, !"wchar_size", i32 2}
!39 = !{i32 1, !"min_enum_size", i32 4}
!40 = !{i32 8, !"branch-target-enforcement", i32 0}
!41 = !{i32 8, !"sign-return-address", i32 0}
!42 = !{i32 8, !"sign-return-address-all", i32 0}
!43 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!44 = !{i32 7, !"uwtable", i32 1}
!45 = !{i32 7, !"frame-pointer", i32 2}
!46 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!47 = !{i64 2148518025}
!48 = !{i64 1004625, i64 1004650, i64 1004672, i64 1004688, i64 1004700, i64 1004720, i64 1004744, i64 1004760, i64 1004772}
!49 = !{i64 2148518213}
!50 = !{i64 2148331999, i64 2148332004, i64 2148332017, i64 2148332061, i64 2148332095, i64 2148332116}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{i8 0, i8 2}
