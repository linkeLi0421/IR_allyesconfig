; ModuleID = '/llk/IR_all_yes/drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c_pt.bc'
source_filename = "../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c"
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
%struct.sun8i_ss_dev = type { ptr, [2 x ptr], ptr, ptr, %struct.mutex, ptr, %struct.atomic_t, ptr, ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon }
%union.anon = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.crypto_ahash = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, [92 x i8], %struct.crypto_tfm }
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
%struct.spinlock = type { %union.anon.2 }
%union.anon.2 = type { %struct.raw_spinlock }
%struct.crypto_async_request = type { %struct.list_head, ptr, ptr, ptr, i32 }
%struct.ahash_request = type { %struct.crypto_async_request, i32, ptr, ptr, ptr, [88 x i8], [0 x ptr] }
%struct.ss_variant = type { [3 x i8], [4 x i8], [2 x i32], [2 x %struct.ss_clock] }
%struct.ss_clock = type { ptr, i32, i32 }
%struct.page = type { i32, %union.anon.5, %union.anon.56, %struct.atomic_t, i32 }
%union.anon.5 = type { %struct.anon.6 }
%struct.anon.6 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.56 = type { %struct.atomic_t }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.sginfo = type { i32, i32 }
%struct.sun8i_ss_hash_reqctx = type { [8 x %struct.sginfo], [8 x %struct.sginfo], %struct.ahash_request, i32, i32, [120 x i8] }
%struct.sun8i_ss_flow = type { ptr, %struct.completion, i32, i32 }

@sun8i_ss_hash_crainit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 41, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Fallback driver could no be loaded\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"sun8i_ss_hash_crainit\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun8i_ss_hash_crainit._entry_ptr = internal global ptr @sun8i_ss_hash_crainit._entry, section ".printk_index", align 4
@sun8i_ss_hash_crainit._entry.5 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.6, ptr @.str.1, ptr @.str.2, i32 54, ptr @.str.7, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Fallback for %s is %s\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sun8i_ss_hash_crainit._entry_ptr.8 = internal global ptr @sun8i_ss_hash_crainit._entry.5, section ".printk_index", align 4
@sun8i_ss_hash_run._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.2, i32 369, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Invalid sg number %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun8i_ss_hash_run\00", [46 x i8] zeroinitializer }, align 32
@sun8i_ss_hash_run._entry_ptr = internal global ptr @sun8i_ss_hash_run._entry, section ".printk_index", align 4
@sun8i_ss_hash_run._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.10, ptr @.str.2, i32 376, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMA map dest\0A\00", [18 x i8] zeroinitializer }, align 32
@sun8i_ss_hash_run._entry_ptr.13 = internal global ptr @sun8i_ss_hash_run._entry.11, section ".printk_index", align 4
@sun8i_ss_hash_run._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.10, ptr @.str.2, i32 391, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"remaining len %d\0A\00", [46 x i8] zeroinitializer }, align 32
@sun8i_ss_hash_run._entry_ptr.16 = internal global ptr @sun8i_ss_hash_run._entry.14, section ".printk_index", align 4
@sun8i_ss_hash_run._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.10, ptr @.str.2, i32 429, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DMA error on padding SG\0A\00", [39 x i8] zeroinitializer }, align 32
@sun8i_ss_hash_run._entry_ptr.19 = internal global ptr @sun8i_ss_hash_run._entry.17, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.20 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@sun8i_ss_run_hash_task.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.2, ptr @.str.24, i8 0, i8 58, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"sun8i_ss\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"sun8i_ss_run_hash_task\00", [41 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [72 x i8], [56 x i8] } { [72 x i8] c"Processing SG %d on flow %d %s ctl=%x %d to %d method=%x src=%x dst=%x\0A\00", [56 x i8] zeroinitializer }, align 32
@sun8i_ss_run_hash_task._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.23, ptr @.str.2, i32 250, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA timeout for %s\0A\00", [44 x i8] zeroinitializer }, align 32
@sun8i_ss_run_hash_task._entry_ptr = internal global ptr @sun8i_ss_run_hash_task._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 41, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 52, i32 2 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 369, i32 3 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 376, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 391, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 429, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 326, i32 6 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 230, i32 3 }
@___asan_gen_.95 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.98 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.99 = private constant [53 x i8] c"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c\00", align 1
@___asan_gen_.100 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.99, i32 250, i32 4 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @sun8i_ss_hash_crainit._entry, ptr @sun8i_ss_hash_crainit._entry.5, ptr @sun8i_ss_hash_crainit._entry_ptr, ptr @sun8i_ss_hash_crainit._entry_ptr.8, ptr @sun8i_ss_hash_run._entry, ptr @sun8i_ss_hash_run._entry.11, ptr @sun8i_ss_hash_run._entry.14, ptr @sun8i_ss_hash_run._entry.17, ptr @sun8i_ss_hash_run._entry_ptr, ptr @sun8i_ss_hash_run._entry_ptr.13, ptr @sun8i_ss_hash_run._entry_ptr.16, ptr @sun8i_ss_hash_run._entry_ptr.19, ptr @sun8i_ss_run_hash_task._entry, ptr @sun8i_ss_run_hash_task._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_hash_crainit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_hash_crainit._entry.5 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_hash_run._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_hash_run._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_hash_run._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_hash_run._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_ss_run_hash_task._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_hash_crainit(ptr nocapture noundef %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__crt_ctx.i = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 5
  %__crt_alg = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 0, i32 3
  %0 = ptrtoint ptr %__crt_alg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %__crt_alg, align 4
  %2 = call ptr @memset(ptr %__crt_ctx.i, i32 0, i32 20)
  %ss = getelementptr i8, ptr %1, i32 -372
  %3 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ss, align 4
  %ss2 = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %5 = ptrtoint ptr %ss2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %4, ptr %ss2, align 4
  %do_one_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 2
  %6 = ptrtoint ptr %do_one_request to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @sun8i_ss_hash_run, ptr %do_one_request, align 4
  %7 = ptrtoint ptr %__crt_ctx.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %__crt_ctx.i, align 4
  %unprepare_request = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 1
  %8 = ptrtoint ptr %unprepare_request to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %unprepare_request, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %1, i32 0, i32 8
  %call9 = tail call ptr @crypto_alloc_ahash(ptr noundef %cra_name.i, i32 noundef 0, i32 noundef 256) #6
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %9 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call9, ptr %fallback_tfm, align 4
  %cmp.i = icmp ugt ptr %call9, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %10 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ss, align 4
  %dev = getelementptr inbounds %struct.sun8i_ss_dev, ptr %11, i32 0, i32 3
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
  %add = add i32 %27, 384
  %reqsize1.i = getelementptr i8, ptr %tfm, i32 -96
  %28 = ptrtoint ptr %reqsize1.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %add, ptr %reqsize1.i, align 32
  %29 = ptrtoint ptr %ss2 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ss2, align 4
  %dev32 = getelementptr inbounds %struct.sun8i_ss_dev, ptr %30, i32 0, i32 3
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
  %37 = ptrtoint ptr %ss2 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ss2, align 4
  %dev37 = getelementptr inbounds %struct.sun8i_ss_dev, ptr %38, i32 0, i32 3
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
  %41 = ptrtoint ptr %ss2 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ss2, align 4
  %dev43 = getelementptr inbounds %struct.sun8i_ss_dev, ptr %42, i32 0, i32 3
  %43 = ptrtoint ptr %dev43 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev43, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %44, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !52
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #6
  %45 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #6, !srcloc !53
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %error_pm.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

error_pm.pm_runtime_put_noidle.exit_crit_edge:    ; preds = %error_pm
  call void @__sanitizer_cov_trace_pc() #8
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %error_pm
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #6, !srcloc !54
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
define dso_local i32 @sun8i_ss_hash_run(ptr noundef %engine, ptr noundef %breq) #0 align 64 {
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
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %breq, i32 0, i32 6
  %ss6 = getelementptr i8, ptr %3, i32 -372
  %4 = ptrtoint ptr %ss6 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ss6, align 4
  %halg = getelementptr i8, ptr %3, i32 -128
  %6 = ptrtoint ptr %halg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %halg, align 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 28, i32 %7)
  %cmp = icmp eq i32 %7, 28
  %spec.store.select = select i1 %cmp, i32 32, i32 %7
  %cra_blocksize = getelementptr i8, ptr %3, i32 20
  %8 = ptrtoint ptr %cra_blocksize to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %cra_blocksize, align 4
  %mul = shl i32 %9, 1
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul, i32 noundef 3521) #10
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end8.i.i286

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8.i.i286:                                   ; preds = %entry
  %call9.i.i285 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.store.select, i32 noundef 3521) #10
  %tobool16.not = icmp eq ptr %call9.i.i285, null
  br i1 %tobool16.not, label %if.then17, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end8.i.i286
  %uglygep = getelementptr i8, ptr %breq, i32 192
  %10 = call ptr @memset(ptr %uglygep, i32 0, i32 64)
  %stat_req = getelementptr i8, ptr %3, i32 512
  %11 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %stat_req, align 128
  %inc23 = add i32 %12, 1
  store i32 %inc23, ptr %stat_req, align 128
  %variant = getelementptr inbounds %struct.sun8i_ss_dev, ptr %5, i32 0, i32 7
  %13 = ptrtoint ptr %variant to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %variant, align 4
  %ss_algo_id = getelementptr i8, ptr %3, i32 -380
  %15 = ptrtoint ptr %ss_algo_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ss_algo_id, align 4
  %arrayidx24 = getelementptr %struct.ss_variant, ptr %14, i32 0, i32 1, i32 %16
  %17 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %arrayidx24, align 1
  %conv = zext i8 %18 to i32
  %method = getelementptr inbounds %struct.ahash_request, ptr %breq, i32 3
  %19 = ptrtoint ptr %method to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %method, align 128
  %dev = getelementptr inbounds %struct.sun8i_ss_dev, ptr %5, i32 0, i32 3
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %src = getelementptr inbounds %struct.ahash_request, ptr %breq, i32 0, i32 2
  %22 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %src, align 4
  %call26 = tail call i32 @sg_nents(ptr noundef %23) #6
  %call27 = tail call i32 @dma_map_sg_attrs(ptr noundef %21, ptr noundef %23, i32 noundef %call26, i32 noundef 1, i32 noundef 0) #6
  %24 = add i32 %call27, -9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -8, i32 %24)
  %25 = icmp ult i32 %24, -8
  %26 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev, align 4
  br i1 %25, label %do.end, label %if.end34

if.then17:                                        ; preds = %if.end8.i.i286
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  br label %cleanup

do.end:                                           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %27, ptr noundef nonnull @.str.9, i32 noundef %call27) #9
  br label %theend

if.end34:                                         ; preds = %for.body.preheader
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i285) #6
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end34
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !55

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %27) #6
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %27, i32 0, i32 3
  %28 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %29, null
  br i1 %tobool.not.i.i, label %if.end.i.i289, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i289:                                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i289, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %31, %if.end.i.i289 ], [ %29, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %33, i32 noundef -1) #6
  br label %do.end43

dma_map_single_attrs.exit:                        ; preds = %if.end34
  tail call void @debug_dma_map_single(ptr noundef %27, ptr noundef nonnull %call9.i.i285, i32 noundef %spec.store.select) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %34 = load ptr, ptr @mem_map, align 4
  %35 = ptrtoint ptr %call9.i.i285 to i32
  %sub.i = add i32 %35, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i290 = getelementptr %struct.page, ptr %34, i32 %shr.i
  %and.i = and i32 %35, 3968
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %27, ptr noundef %add.ptr.i290, i32 noundef %and.i, i32 noundef %spec.store.select, i32 noundef 2, i32 noundef 0) #6
  %36 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %37, i32 noundef %call41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end43_crit_edge, label %for.body50.lr.ph

dma_map_single_attrs.exit.do.end43_crit_edge:     ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.end43

do.end43:                                         ; preds = %dma_map_single_attrs.exit.do.end43_crit_edge, %dma_map_single_attrs.exit.thread
  %38 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.12) #9
  br label %theend

for.body50.lr.ph:                                 ; preds = %dma_map_single_attrs.exit
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %breq, i32 0, i32 1
  %div62 = sdiv i32 %spec.store.select, 4
  %40 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %src, align 4
  %42 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %nbytes, align 8
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %41, i32 0, i32 3
  %44 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_address, align 4
  %46 = ptrtoint ptr %__ctx.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %__ctx.i, align 8
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %41, i32 0, i32 4
  %47 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_length, align 4
  %49 = tail call i32 @llvm.umin.i32(i32 %43, i32 %48)
  %div = sdiv i32 %49, 4
  %len58 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 0, i32 0, i32 1
  %50 = ptrtoint ptr %len58 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %div, ptr %len58, align 4
  %sub = sub i32 %43, %49
  %arrayidx60 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 24
  %51 = ptrtoint ptr %arrayidx60 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %call41.i, ptr %arrayidx60, align 8
  %len65 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 28
  %52 = ptrtoint ptr %len65 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %div62, ptr %len65, align 4
  %call68 = tail call ptr @sg_next(ptr noundef %41) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call27)
  %exitcond.not = icmp eq i32 %call27, 1
  br i1 %exitcond.not, label %for.body50.lr.ph.for.end69_crit_edge, label %for.body50.1

for.body50.lr.ph.for.end69_crit_edge:             ; preds = %for.body50.lr.ph
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end69

for.body50.1:                                     ; preds = %for.body50.lr.ph
  %dma_address.1 = getelementptr inbounds %struct.scatterlist, ptr %call68, i32 0, i32 3
  %53 = ptrtoint ptr %dma_address.1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %dma_address.1, align 4
  %arrayidx51.1 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 0, i32 1
  %55 = ptrtoint ptr %arrayidx51.1 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %arrayidx51.1, align 8
  %dma_length.1 = getelementptr inbounds %struct.scatterlist, ptr %call68, i32 0, i32 4
  %56 = ptrtoint ptr %dma_length.1 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %dma_length.1, align 4
  %58 = tail call i32 @llvm.umin.i32(i32 %sub, i32 %57)
  %div.1 = sdiv i32 %58, 4
  %len58.1 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 0, i32 2
  %59 = ptrtoint ptr %len58.1 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %div.1, ptr %len58.1, align 4
  %sub.1 = sub i32 %sub, %58
  %arrayidx60.1 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 32
  %60 = ptrtoint ptr %arrayidx60.1 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %call41.i, ptr %arrayidx60.1, align 8
  %len65.1 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 36
  %61 = ptrtoint ptr %len65.1 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %div62, ptr %len65.1, align 4
  %call68.1 = tail call ptr @sg_next(ptr noundef %call68) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %call27)
  %exitcond.not.1 = icmp eq i32 %call27, 2
  br i1 %exitcond.not.1, label %for.body50.1.for.end69_crit_edge, label %for.body50.2

for.body50.1.for.end69_crit_edge:                 ; preds = %for.body50.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end69

for.body50.2:                                     ; preds = %for.body50.1
  %dma_address.2 = getelementptr inbounds %struct.scatterlist, ptr %call68.1, i32 0, i32 3
  %62 = ptrtoint ptr %dma_address.2 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_address.2, align 4
  %arrayidx51.2 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 0, i32 3
  %64 = ptrtoint ptr %arrayidx51.2 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %arrayidx51.2, align 8
  %dma_length.2 = getelementptr inbounds %struct.scatterlist, ptr %call68.1, i32 0, i32 4
  %65 = ptrtoint ptr %dma_length.2 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma_length.2, align 4
  %67 = tail call i32 @llvm.umin.i32(i32 %sub.1, i32 %66)
  %div.2 = sdiv i32 %67, 4
  %len58.2 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 0, i32 4
  %68 = ptrtoint ptr %len58.2 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %div.2, ptr %len58.2, align 4
  %sub.2 = sub i32 %sub.1, %67
  %arrayidx60.2 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 40
  %69 = ptrtoint ptr %arrayidx60.2 to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %call41.i, ptr %arrayidx60.2, align 8
  %len65.2 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 44
  %70 = ptrtoint ptr %len65.2 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %div62, ptr %len65.2, align 4
  %call68.2 = tail call ptr @sg_next(ptr noundef %call68.1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call27)
  %exitcond.not.2 = icmp eq i32 %call27, 3
  br i1 %exitcond.not.2, label %for.body50.2.for.end69_crit_edge, label %for.body50.3

for.body50.2.for.end69_crit_edge:                 ; preds = %for.body50.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end69

for.body50.3:                                     ; preds = %for.body50.2
  %dma_address.3 = getelementptr inbounds %struct.scatterlist, ptr %call68.2, i32 0, i32 3
  %71 = ptrtoint ptr %dma_address.3 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %dma_address.3, align 4
  %arrayidx51.3 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 1
  %73 = ptrtoint ptr %arrayidx51.3 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %arrayidx51.3, align 8
  %dma_length.3 = getelementptr inbounds %struct.scatterlist, ptr %call68.2, i32 0, i32 4
  %74 = ptrtoint ptr %dma_length.3 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %dma_length.3, align 4
  %76 = tail call i32 @llvm.umin.i32(i32 %sub.2, i32 %75)
  %div.3 = sdiv i32 %76, 4
  %len58.3 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 2
  %77 = ptrtoint ptr %len58.3 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %div.3, ptr %len58.3, align 4
  %sub.3 = sub i32 %sub.2, %76
  %arrayidx60.3 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 48
  %78 = ptrtoint ptr %arrayidx60.3 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %call41.i, ptr %arrayidx60.3, align 8
  %len65.3 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 52
  %79 = ptrtoint ptr %len65.3 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 %div62, ptr %len65.3, align 4
  %call68.3 = tail call ptr @sg_next(ptr noundef %call68.2) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %call27)
  %exitcond.not.3 = icmp eq i32 %call27, 4
  br i1 %exitcond.not.3, label %for.body50.3.for.end69_crit_edge, label %for.body50.4

for.body50.3.for.end69_crit_edge:                 ; preds = %for.body50.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end69

for.body50.4:                                     ; preds = %for.body50.3
  %dma_address.4 = getelementptr inbounds %struct.scatterlist, ptr %call68.3, i32 0, i32 3
  %80 = ptrtoint ptr %dma_address.4 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_address.4, align 4
  %arrayidx51.4 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 3
  %82 = ptrtoint ptr %arrayidx51.4 to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 %81, ptr %arrayidx51.4, align 8
  %dma_length.4 = getelementptr inbounds %struct.scatterlist, ptr %call68.3, i32 0, i32 4
  %83 = ptrtoint ptr %dma_length.4 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %dma_length.4, align 4
  %85 = tail call i32 @llvm.umin.i32(i32 %sub.3, i32 %84)
  %div.4 = sdiv i32 %85, 4
  %len58.4 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 4
  %86 = ptrtoint ptr %len58.4 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %div.4, ptr %len58.4, align 4
  %sub.4 = sub i32 %sub.3, %85
  %arrayidx60.4 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 56
  %87 = ptrtoint ptr %arrayidx60.4 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %call41.i, ptr %arrayidx60.4, align 8
  %len65.4 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 60
  %88 = ptrtoint ptr %len65.4 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %div62, ptr %len65.4, align 4
  %call68.4 = tail call ptr @sg_next(ptr noundef %call68.3) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %call27)
  %exitcond.not.4 = icmp eq i32 %call27, 5
  br i1 %exitcond.not.4, label %for.body50.4.for.end69_crit_edge, label %for.body50.5

for.body50.4.for.end69_crit_edge:                 ; preds = %for.body50.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end69

for.body50.5:                                     ; preds = %for.body50.4
  %dma_address.5 = getelementptr inbounds %struct.scatterlist, ptr %call68.4, i32 0, i32 3
  %89 = ptrtoint ptr %dma_address.5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dma_address.5, align 4
  %arrayidx51.5 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5
  %91 = ptrtoint ptr %arrayidx51.5 to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 %90, ptr %arrayidx51.5, align 8
  %dma_length.5 = getelementptr inbounds %struct.scatterlist, ptr %call68.4, i32 0, i32 4
  %92 = ptrtoint ptr %dma_length.5 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %dma_length.5, align 4
  %94 = tail call i32 @llvm.umin.i32(i32 %sub.4, i32 %93)
  %div.5 = sdiv i32 %94, 4
  %len58.5 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 4
  %95 = ptrtoint ptr %len58.5 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %div.5, ptr %len58.5, align 4
  %sub.5 = sub i32 %sub.4, %94
  %arrayidx60.5 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 64
  %96 = ptrtoint ptr %arrayidx60.5 to i32
  call void @__asan_store4_noabort(i32 %96)
  store i32 %call41.i, ptr %arrayidx60.5, align 8
  %len65.5 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 68
  %97 = ptrtoint ptr %len65.5 to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %div62, ptr %len65.5, align 4
  %call68.5 = tail call ptr @sg_next(ptr noundef %call68.4) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %call27)
  %exitcond.not.5 = icmp eq i32 %call27, 6
  br i1 %exitcond.not.5, label %for.body50.5.for.end69_crit_edge, label %for.body50.6

for.body50.5.for.end69_crit_edge:                 ; preds = %for.body50.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end69

for.body50.6:                                     ; preds = %for.body50.5
  %dma_address.6 = getelementptr inbounds %struct.scatterlist, ptr %call68.5, i32 0, i32 3
  %98 = ptrtoint ptr %dma_address.6 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %dma_address.6, align 4
  %arrayidx51.6 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 8
  %100 = ptrtoint ptr %arrayidx51.6 to i32
  call void @__asan_store4_noabort(i32 %100)
  store i32 %99, ptr %arrayidx51.6, align 8
  %dma_length.6 = getelementptr inbounds %struct.scatterlist, ptr %call68.5, i32 0, i32 4
  %101 = ptrtoint ptr %dma_length.6 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %dma_length.6, align 4
  %103 = tail call i32 @llvm.umin.i32(i32 %sub.5, i32 %102)
  %div.6 = sdiv i32 %103, 4
  %len58.6 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 12
  %104 = ptrtoint ptr %len58.6 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %div.6, ptr %len58.6, align 4
  %sub.6 = sub i32 %sub.5, %103
  %arrayidx60.6 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 72
  %105 = ptrtoint ptr %arrayidx60.6 to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 %call41.i, ptr %arrayidx60.6, align 8
  %len65.6 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 76
  %106 = ptrtoint ptr %len65.6 to i32
  call void @__asan_store4_noabort(i32 %106)
  store i32 %div62, ptr %len65.6, align 4
  %call68.6 = tail call ptr @sg_next(ptr noundef %call68.5) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 7, i32 %call27)
  %exitcond.not.6 = icmp eq i32 %call27, 7
  br i1 %exitcond.not.6, label %for.body50.6.for.end69_crit_edge, label %for.body50.7

for.body50.6.for.end69_crit_edge:                 ; preds = %for.body50.6
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end69

for.body50.7:                                     ; preds = %for.body50.6
  call void @__sanitizer_cov_trace_pc() #8
  %dma_address.7 = getelementptr inbounds %struct.scatterlist, ptr %call68.6, i32 0, i32 3
  %107 = ptrtoint ptr %dma_address.7 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %dma_address.7, align 4
  %arrayidx51.7 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 16
  %109 = ptrtoint ptr %arrayidx51.7 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 %108, ptr %arrayidx51.7, align 8
  %dma_length.7 = getelementptr inbounds %struct.scatterlist, ptr %call68.6, i32 0, i32 4
  %110 = ptrtoint ptr %dma_length.7 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dma_length.7, align 4
  %112 = tail call i32 @llvm.umin.i32(i32 %sub.6, i32 %111)
  %div.7 = sdiv i32 %112, 4
  %len58.7 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 20
  %113 = ptrtoint ptr %len58.7 to i32
  call void @__asan_store4_noabort(i32 %113)
  store i32 %div.7, ptr %len58.7, align 4
  %sub.7 = sub i32 %sub.6, %112
  %arrayidx60.7 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 80
  %114 = ptrtoint ptr %arrayidx60.7 to i32
  call void @__asan_store4_noabort(i32 %114)
  store i32 %call41.i, ptr %arrayidx60.7, align 8
  %len65.7 = getelementptr %struct.ahash_request, ptr %breq, i32 1, i32 5, i32 84
  %115 = ptrtoint ptr %len65.7 to i32
  call void @__asan_store4_noabort(i32 %115)
  store i32 %div62, ptr %len65.7, align 4
  %call68.7 = tail call ptr @sg_next(ptr noundef %call68.6) #6
  br label %for.end69

for.end69:                                        ; preds = %for.body50.7, %for.body50.6.for.end69_crit_edge, %for.body50.5.for.end69_crit_edge, %for.body50.4.for.end69_crit_edge, %for.body50.3.for.end69_crit_edge, %for.body50.2.for.end69_crit_edge, %for.body50.1.for.end69_crit_edge, %for.body50.lr.ph.for.end69_crit_edge
  %sub.lcssa = phi i32 [ %sub, %for.body50.lr.ph.for.end69_crit_edge ], [ %sub.1, %for.body50.1.for.end69_crit_edge ], [ %sub.2, %for.body50.2.for.end69_crit_edge ], [ %sub.3, %for.body50.3.for.end69_crit_edge ], [ %sub.4, %for.body50.4.for.end69_crit_edge ], [ %sub.5, %for.body50.5.for.end69_crit_edge ], [ %sub.6, %for.body50.6.for.end69_crit_edge ], [ %sub.7, %for.body50.7 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.lcssa)
  %cmp70.not = icmp eq i32 %sub.lcssa, 0
  br i1 %cmp70.not, label %if.end77, label %do.end75

do.end75:                                         ; preds = %for.end69
  call void @__sanitizer_cov_trace_pc() #8
  %116 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %117, ptr noundef nonnull @.str.15, i32 noundef %sub.lcssa) #9
  br label %theend

if.end77:                                         ; preds = %for.end69
  %118 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %nbytes, align 8
  %conv79 = zext i32 %119 to i64
  %120 = ptrtoint ptr %call9.i.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store i32 -2147483648, ptr %call9.i.i, align 128
  %rem = and i64 %conv79, 63
  call void @__sanitizer_cov_trace_const_cmp8(i64 52, i64 %rem)
  %cmp83 = icmp ugt i64 %rem, 52
  %spec.select = select i1 %cmp83, i64 128, i64 64
  %fill.0 = sub nuw nsw i64 17179869172, %rem
  %sub87 = add nuw nsw i64 %fill.0, %spec.select
  %div88259 = lshr i64 %sub87, 2
  %121 = trunc i64 %div88259 to i32
  %conv91 = add nsw i32 %121, 1
  %122 = ptrtoint ptr %ss_algo_id to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load i32, ptr %ss_algo_id, align 4
  %124 = zext i32 %123 to i64
  call void @__sanitizer_cov_trace_switch(i64 %124, ptr @__sancov_gen_cov_switch_values)
  switch i32 %123, label %if.end77.sw.epilog_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %if.end77.sw.bb95_crit_edge
    i32 2, label %if.end77.sw.bb95_crit_edge336
    i32 3, label %if.end77.sw.bb95_crit_edge337
  ]

if.end77.sw.bb95_crit_edge337:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb95

if.end77.sw.bb95_crit_edge336:                    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb95

if.end77.sw.bb95_crit_edge:                       ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.bb95

if.end77.sw.epilog_crit_edge:                     ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  br label %sw.epilog

sw.bb:                                            ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx93 = getelementptr i32, ptr %call9.i.i, i32 %conv91
  %shl = shl nuw nsw i64 %conv79, 3
  %125 = tail call i64 @llvm.bswap.i64(i64 %shl)
  %126 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_store8_noabort(i32 %126)
  store i64 %125, ptr %arrayidx93, align 8
  %add94 = add nsw i32 %121, 3
  br label %sw.epilog

sw.bb95:                                          ; preds = %if.end77.sw.bb95_crit_edge, %if.end77.sw.bb95_crit_edge336, %if.end77.sw.bb95_crit_edge337
  %arrayidx96 = getelementptr i32, ptr %call9.i.i, i32 %conv91
  %shl97 = shl nuw nsw i64 %conv79, 3
  %127 = ptrtoint ptr %arrayidx96 to i32
  call void @__asan_store8_noabort(i32 %127)
  store i64 %shl97, ptr %arrayidx96, align 8
  %add98 = add nsw i32 %121, 3
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb95, %sw.bb, %if.end77.sw.epilog_crit_edge
  %j.0 = phi i32 [ %conv91, %if.end77.sw.epilog_crit_edge ], [ %add98, %sw.bb95 ], [ %add94, %sw.bb ]
  %128 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %dev, align 4
  %mul100 = shl nsw i32 %j.0, 2
  %call.i291 = tail call zeroext i1 @is_vmalloc_addr(ptr noundef nonnull %call9.i.i) #6
  br i1 %call.i291, label %land.rhs.i293, label %if.end39.i306

land.rhs.i293:                                    ; preds = %sw.epilog
  %.b1.i292 = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i292, label %land.rhs.i293.dma_map_single_attrs.exit308_crit_edge, label %if.then.i297, !prof !55

land.rhs.i293.dma_map_single_attrs.exit308_crit_edge: ; preds = %land.rhs.i293
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit308

if.then.i297:                                     ; preds = %land.rhs.i293
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i294 = tail call ptr @dev_driver_string(ptr noundef %129) #6
  %init_name.i.i295 = getelementptr inbounds %struct.device, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %init_name.i.i295 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %init_name.i.i295, align 8
  %tobool.not.i.i296 = icmp eq ptr %131, null
  br i1 %tobool.not.i.i296, label %if.end.i.i298, label %if.then.i297.dev_name.exit.i300_crit_edge

if.then.i297.dev_name.exit.i300_crit_edge:        ; preds = %if.then.i297
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i300

if.end.i.i298:                                    ; preds = %if.then.i297
  call void @__sanitizer_cov_trace_pc() #8
  %132 = ptrtoint ptr %129 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %129, align 4
  br label %dev_name.exit.i300

dev_name.exit.i300:                               ; preds = %if.end.i.i298, %if.then.i297.dev_name.exit.i300_crit_edge
  %retval.0.i.i299 = phi ptr [ %133, %if.end.i.i298 ], [ %131, %if.then.i297.dev_name.exit.i300_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.20, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.21, ptr noundef %call16.i294, ptr noundef %retval.0.i.i299) #6
  br label %dma_map_single_attrs.exit308

if.end39.i306:                                    ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @debug_dma_map_single(ptr noundef %129, ptr noundef nonnull %call9.i.i, i32 noundef %mul100) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %134 = load ptr, ptr @mem_map, align 4
  %135 = ptrtoint ptr %call9.i.i to i32
  %sub.i301 = add i32 %135, 1073741824
  %shr.i302 = lshr i32 %sub.i301, 12
  %add.ptr.i303 = getelementptr %struct.page, ptr %134, i32 %shr.i302
  %and.i304 = and i32 %135, 3968
  %call41.i305 = tail call i32 @dma_map_page_attrs(ptr noundef %129, ptr noundef %add.ptr.i303, i32 noundef %and.i304, i32 noundef %mul100, i32 noundef 1, i32 noundef 0) #6
  br label %dma_map_single_attrs.exit308

dma_map_single_attrs.exit308:                     ; preds = %if.end39.i306, %dev_name.exit.i300, %land.rhs.i293.dma_map_single_attrs.exit308_crit_edge
  %retval.0.i307 = phi i32 [ %call41.i305, %if.end39.i306 ], [ -1, %dev_name.exit.i300 ], [ -1, %land.rhs.i293.dma_map_single_attrs.exit308_crit_edge ]
  %arrayidx103 = getelementptr [8 x %struct.sginfo], ptr %__ctx.i, i32 0, i32 %call27
  %136 = ptrtoint ptr %arrayidx103 to i32
  call void @__asan_store4_noabort(i32 %136)
  store i32 %retval.0.i307, ptr %arrayidx103, align 8
  %len107 = getelementptr [8 x %struct.sginfo], ptr %__ctx.i, i32 0, i32 %call27, i32 1
  %137 = ptrtoint ptr %len107 to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 %j.0, ptr %len107, align 4
  %arrayidx109 = getelementptr %struct.sun8i_ss_hash_reqctx, ptr %__ctx.i, i32 0, i32 1, i32 %call27
  %138 = ptrtoint ptr %arrayidx109 to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 %call41.i, ptr %arrayidx109, align 8
  %div111 = sdiv i32 %spec.store.select, 4
  %len114 = getelementptr %struct.sun8i_ss_hash_reqctx, ptr %__ctx.i, i32 0, i32 1, i32 %call27, i32 1
  %139 = ptrtoint ptr %len114 to i32
  call void @__asan_store4_noabort(i32 %139)
  store i32 %div111, ptr %len114, align 4
  %140 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %dev, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %141, i32 noundef %retval.0.i307) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i307)
  %cmp.i309 = icmp eq i32 %retval.0.i307, -1
  br i1 %cmp.i309, label %do.end121, label %if.end123

do.end121:                                        ; preds = %dma_map_single_attrs.exit308
  call void @__sanitizer_cov_trace_pc() #8
  %142 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %143, ptr noundef nonnull @.str.18) #9
  br label %theend

if.end123:                                        ; preds = %dma_map_single_attrs.exit308
  call void @__sanitizer_cov_trace_pc() #8
  %144 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %tfm.i, align 16
  %__crt_alg.i = getelementptr inbounds %struct.crypto_tfm, ptr %145, i32 0, i32 3
  %146 = ptrtoint ptr %__crt_alg.i to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %__crt_alg.i, align 4
  %cra_name.i = getelementptr inbounds %struct.crypto_alg, ptr %147, i32 0, i32 8
  %call127 = tail call fastcc i32 @sun8i_ss_run_hash_task(ptr noundef %5, ptr noundef %__ctx.i, ptr noundef %cra_name.i)
  %148 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %149, i32 noundef %retval.0.i307, i32 noundef %mul100, i32 noundef 1, i32 noundef 0) #6
  %150 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %dev, align 4
  %152 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %src, align 4
  %call133 = tail call i32 @sg_nents(ptr noundef %153) #6
  tail call void @dma_unmap_sg_attrs(ptr noundef %151, ptr noundef %153, i32 noundef %call133, i32 noundef 1, i32 noundef 0) #6
  %154 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %dev, align 4
  tail call void @dma_unmap_page_attrs(ptr noundef %155, i32 noundef %call41.i, i32 noundef %spec.store.select, i32 noundef 2, i32 noundef 0) #6
  %result135 = getelementptr inbounds %struct.ahash_request, ptr %breq, i32 0, i32 3
  %156 = ptrtoint ptr %result135 to i32
  call void @__asan_load4_noabort(i32 %156)
  %157 = load ptr, ptr %result135, align 32
  %158 = ptrtoint ptr %halg to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load i32, ptr %halg, align 128
  %160 = call ptr @memcpy(ptr %157, ptr %call9.i.i285, i32 %159)
  br label %theend

theend:                                           ; preds = %if.end123, %do.end121, %do.end75, %do.end43, %do.end
  %err.0 = phi i32 [ -22, %do.end ], [ -22, %do.end43 ], [ -22, %do.end75 ], [ -22, %do.end121 ], [ %call127, %if.end123 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #6
  tail call void @kfree(ptr noundef nonnull %call9.i.i285) #6
  tail call void @crypto_finalize_hash_request(ptr noundef %engine, ptr noundef %breq, i32 noundef %err.0) #6
  br label %cleanup

cleanup:                                          ; preds = %theend, %if.then17, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %theend ], [ -12, %if.then17 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @crypto_alloc_ahash(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sun8i_ss_hash_craexit(ptr nocapture noundef readonly %tfm) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %fallback_tfm = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 3
  %0 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %1, i32 0, i32 10
  tail call void @crypto_destroy_tfm(ptr noundef %1, ptr noundef %base.i.i) #6
  %ss = getelementptr inbounds %struct.crypto_tfm, ptr %tfm, i32 1, i32 4
  %2 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ss, align 4
  %dev = getelementptr inbounds %struct.sun8i_ss_dev, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_suspend(ptr noundef %5, i32 noundef 4) #6
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_hash_init(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %__ctx.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 6
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %2 = call ptr @memset(ptr %__ctx.i, i32 0, i32 384)
  %fallback_tfm = getelementptr i8, ptr %1, i32 140
  %3 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %4, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 3
  %5 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %6 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %flags, align 4
  %and = and i32 %7, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 4
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
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %4, align 128
  %call2.i = tail call i32 %12(ptr noundef %fallback_req) #6
  br label %crypto_ahash_init.exit

crypto_ahash_init.exit:                           ; preds = %if.end.i, %entry.crypto_ahash_init.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -126, %entry.crypto_ahash_init.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_hash_export(ptr noundef %areq, ptr noundef %out) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2
  %fallback_tfm = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %export.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 5
  %8 = ptrtoint ptr %export.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %export.i, align 4
  %call1.i = tail call i32 %9(ptr noundef %fallback_req, ptr noundef %out) #6
  ret i32 %call1.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_hash_import(ptr noundef %areq, ptr noundef %in) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_tfm = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 4
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
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2
  %import.i = getelementptr %struct.crypto_ahash, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %import.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %import.i, align 8
  %call2.i = tail call i32 %11(ptr noundef %fallback_req, ptr noundef %in) #6
  br label %crypto_ahash_import.exit

crypto_ahash_import.exit:                         ; preds = %if.end.i, %entry.crypto_ahash_import.exit_crit_edge
  %retval.0.i = phi i32 [ %call2.i, %if.end.i ], [ -126, %entry.crypto_ahash_import.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_hash_final(ptr noundef %areq) local_unnamed_addr #0 align 64 {
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
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2
  %fallback_tfm = getelementptr i8, ptr %1, i32 140
  %4 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %5, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 3
  %6 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 512
  %flags7 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 4
  %9 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %flags7, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %10 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %result, align 32
  %result9 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 3
  %12 = ptrtoint ptr %result9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %11, ptr %result9, align 32
  %stat_fb = getelementptr i8, ptr %3, i32 516
  %13 = ptrtoint ptr %stat_fb to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %stat_fb, align 4
  %inc = add i32 %14, 1
  store i32 %inc, ptr %stat_fb, align 4
  %call11 = tail call i32 @crypto_ahash_final(ptr noundef %fallback_req) #6
  ret i32 %call11
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_final(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_hash_update(ptr noundef %areq) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %tfm.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 3
  %0 = ptrtoint ptr %tfm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tfm.i, align 16
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2
  %fallback_tfm = getelementptr i8, ptr %1, i32 140
  %2 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %3, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 3
  %4 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %5 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %flags, align 4
  %and = and i32 %6, 512
  %flags5 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 4
  %7 = ptrtoint ptr %flags5 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %and, ptr %flags5, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %8 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nbytes, align 8
  %nbytes7 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 1
  %10 = ptrtoint ptr %nbytes7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %nbytes7, align 8
  %src = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %11 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %src, align 4
  %src9 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 2
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
  %call3.i = tail call i32 %19(ptr noundef %fallback_req) #6
  tail call void @crypto_stats_ahash_update(i32 noundef %9, i32 noundef %call3.i, ptr noundef %15) #6
  ret i32 %call3.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_hash_finup(ptr noundef %areq) local_unnamed_addr #0 align 64 {
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
  %fallback_req = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2
  %fallback_tfm = getelementptr i8, ptr %1, i32 140
  %4 = ptrtoint ptr %fallback_tfm to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %fallback_tfm, align 4
  %base.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %5, i32 0, i32 10
  %tfm1.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 3
  %6 = ptrtoint ptr %tfm1.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %base.i.i, ptr %tfm1.i, align 16
  %flags = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %flags, align 4
  %and = and i32 %8, 512
  %flags7 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 4
  %9 = ptrtoint ptr %flags7 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %flags7, align 4
  %nbytes = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 1
  %10 = ptrtoint ptr %nbytes to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %nbytes, align 8
  %nbytes9 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 1
  %12 = ptrtoint ptr %nbytes9 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %11, ptr %nbytes9, align 8
  %src = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %13 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %src, align 4
  %src11 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 2
  %15 = ptrtoint ptr %src11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %14, ptr %src11, align 4
  %result = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %16 = ptrtoint ptr %result to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %result, align 32
  %result13 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 3
  %18 = ptrtoint ptr %result13 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %17, ptr %result13, align 32
  %stat_fb = getelementptr i8, ptr %3, i32 516
  %19 = ptrtoint ptr %stat_fb to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %stat_fb, align 4
  %inc = add i32 %20, 1
  store i32 %inc, ptr %stat_fb, align 4
  %call15 = tail call i32 @crypto_ahash_finup(ptr noundef %fallback_req) #6
  ret i32 %call15
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_ahash_finup(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sun8i_ss_hash_digest(ptr noundef %areq) local_unnamed_addr #0 align 64 {
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
  %rem.i = and i32 %11, 63
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
  %fallback_req.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2
  %fallback_tfm.i = getelementptr i8, ptr %15, i32 140
  %18 = ptrtoint ptr %fallback_tfm.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %fallback_tfm.i, align 4
  %base.i.i.i = getelementptr inbounds %struct.crypto_ahash, ptr %19, i32 0, i32 10
  %tfm1.i.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 3
  %20 = ptrtoint ptr %tfm1.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %base.i.i.i, ptr %tfm1.i.i, align 16
  %flags.i = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %21 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %flags.i, align 4
  %and.i43 = and i32 %22, 512
  %flags7.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 4
  %23 = ptrtoint ptr %flags7.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i43, ptr %flags7.i, align 4
  %24 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %nbytes.i, align 8
  %nbytes9.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 1
  %26 = ptrtoint ptr %nbytes9.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %nbytes9.i, align 8
  %src.i45 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 2
  %27 = ptrtoint ptr %src.i45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %src.i45, align 4
  %src11.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 2
  %29 = ptrtoint ptr %src11.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %28, ptr %src11.i, align 4
  %result.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %30 = ptrtoint ptr %result.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %result.i, align 32
  %result13.i = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 3
  %32 = ptrtoint ptr %result13.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %result13.i, align 32
  %stat_fb.i = getelementptr i8, ptr %17, i32 516
  %33 = ptrtoint ptr %stat_fb.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %stat_fb.i, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %stat_fb.i, align 4
  %call15.i = tail call i32 @crypto_ahash_digest(ptr noundef %fallback_req.i) #6
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
  %__crt_alg.i47 = getelementptr i8, ptr %38, i32 12
  %39 = ptrtoint ptr %__crt_alg.i47 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %__crt_alg.i47, align 4
  %fallback_req.i48 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2
  %fallback_tfm.i49 = getelementptr i8, ptr %38, i32 140
  %41 = ptrtoint ptr %fallback_tfm.i49 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %fallback_tfm.i49, align 4
  %base.i.i.i50 = getelementptr inbounds %struct.crypto_ahash, ptr %42, i32 0, i32 10
  %tfm1.i.i51 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 3
  %43 = ptrtoint ptr %tfm1.i.i51 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %base.i.i.i50, ptr %tfm1.i.i51, align 16
  %flags.i52 = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %44 = ptrtoint ptr %flags.i52 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %flags.i52, align 4
  %and.i53 = and i32 %45, 512
  %flags7.i54 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 4
  %46 = ptrtoint ptr %flags7.i54 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %and.i53, ptr %flags7.i54, align 4
  %47 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %nbytes.i, align 8
  %nbytes9.i56 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 1
  %49 = ptrtoint ptr %nbytes9.i56 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %nbytes9.i56, align 8
  %50 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %src.i, align 4
  %src11.i58 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 2
  %52 = ptrtoint ptr %src11.i58 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %51, ptr %src11.i58, align 4
  %result.i59 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %53 = ptrtoint ptr %result.i59 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %result.i59, align 32
  %result13.i60 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 3
  %55 = ptrtoint ptr %result13.i60 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %result13.i60, align 32
  %stat_fb.i61 = getelementptr i8, ptr %40, i32 516
  %56 = ptrtoint ptr %stat_fb.i61 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %stat_fb.i61, align 4
  %inc.i62 = add i32 %57, 1
  store i32 %inc.i62, ptr %stat_fb.i61, align 4
  %call15.i63 = tail call i32 @crypto_ahash_digest(ptr noundef %fallback_req.i48) #6
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
  %__crt_alg.i65 = getelementptr i8, ptr %65, i32 12
  %66 = ptrtoint ptr %__crt_alg.i65 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %__crt_alg.i65, align 4
  %fallback_req.i66 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2
  %fallback_tfm.i67 = getelementptr i8, ptr %65, i32 140
  %68 = ptrtoint ptr %fallback_tfm.i67 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %fallback_tfm.i67, align 4
  %base.i.i.i68 = getelementptr inbounds %struct.crypto_ahash, ptr %69, i32 0, i32 10
  %tfm1.i.i69 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 3
  %70 = ptrtoint ptr %tfm1.i.i69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %base.i.i.i68, ptr %tfm1.i.i69, align 16
  %flags.i70 = getelementptr inbounds %struct.crypto_async_request, ptr %areq, i32 0, i32 4
  %71 = ptrtoint ptr %flags.i70 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %flags.i70, align 4
  %and.i71 = and i32 %72, 512
  %flags7.i72 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 0, i32 4
  %73 = ptrtoint ptr %flags7.i72 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %and.i71, ptr %flags7.i72, align 4
  %74 = ptrtoint ptr %nbytes.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %nbytes.i, align 8
  %nbytes9.i74 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 1
  %76 = ptrtoint ptr %nbytes9.i74 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %nbytes9.i74, align 8
  %77 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %src.i, align 4
  %src11.i76 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 2
  %79 = ptrtoint ptr %src11.i76 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %78, ptr %src11.i76, align 4
  %result.i77 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 0, i32 3
  %80 = ptrtoint ptr %result.i77 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %result.i77, align 32
  %result13.i78 = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 2, i32 3
  %82 = ptrtoint ptr %result13.i78 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %81, ptr %result13.i78, align 32
  %stat_fb.i79 = getelementptr i8, ptr %67, i32 516
  %83 = ptrtoint ptr %stat_fb.i79 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %stat_fb.i79, align 4
  %inc.i80 = add i32 %84, 1
  store i32 %inc.i80, ptr %stat_fb.i79, align 4
  %call15.i81 = tail call i32 @crypto_ahash_digest(ptr noundef %fallback_req.i66) #6
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
  %ss16 = getelementptr i8, ptr %3, i32 -372
  %109 = ptrtoint ptr %ss16 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %ss16, align 4
  %call17 = tail call i32 @sun8i_ss_get_engine_number(ptr noundef %110) #6
  %flow = getelementptr inbounds %struct.ahash_request, ptr %areq, i32 3, i32 0, i32 0, i32 1
  %111 = ptrtoint ptr %flow to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %call17, ptr %flow, align 4
  %flows = getelementptr inbounds %struct.sun8i_ss_dev, ptr %110, i32 0, i32 5
  %112 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %flows, align 4
  %arrayidx = getelementptr %struct.sun8i_ss_flow, ptr %113, i32 %call17
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
declare dso_local i32 @sun8i_ss_get_engine_number(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @crypto_transfer_hash_request_to_engine(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun8i_ss_run_hash_task(ptr noundef %ss, ptr nocapture noundef readonly %rctx, ptr noundef %name) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %flow1 = getelementptr inbounds %struct.sun8i_ss_hash_reqctx, ptr %rctx, i32 0, i32 4
  %0 = ptrtoint ptr %flow1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %flow1, align 4
  %flows = getelementptr inbounds %struct.sun8i_ss_dev, ptr %ss, i32 0, i32 5
  %2 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %flows, align 4
  %stat_req = getelementptr %struct.sun8i_ss_flow, ptr %3, i32 %1, i32 3
  %4 = ptrtoint ptr %stat_req to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %stat_req, align 4
  %inc = add i32 %5, 1
  store i32 %inc, ptr %stat_req, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool.not = icmp eq i32 %1, 0
  %. = select i1 %tobool.not, i32 1073741825, i32 -2147483647
  %method = getelementptr inbounds %struct.sun8i_ss_hash_reqctx, ptr %rctx, i32 0, i32 3
  %6 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %method, align 128
  %or3 = or i32 %7, %.
  %mlock = getelementptr inbounds %struct.sun8i_ss_dev, ptr %ss, i32 0, i32 4
  %dev = getelementptr inbounds %struct.sun8i_ss_dev, ptr %ss, i32 0, i32 3
  br label %for.body

for.cond:                                         ; preds = %do.body43
  %inc100 = add nuw nsw i32 %i.0157, 1
  %exitcond.not = icmp eq i32 %inc100, 8
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %entry
  %i.0157 = phi i32 [ 0, %entry ], [ %inc100, %for.cond.for.body_crit_edge ]
  %v.1156 = phi i32 [ %or3, %entry ], [ %v.2, %for.cond.for.body_crit_edge ]
  %arrayidx4 = getelementptr %struct.sun8i_ss_hash_reqctx, ptr %rctx, i32 0, i32 1, i32 %i.0157
  %8 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx4, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool5.not = icmp eq i32 %9, 0
  br i1 %tobool5.not, label %for.body.cleanup_crit_edge, label %if.end7

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end7:                                          ; preds = %for.body
  tail call void @mutex_lock_nested(ptr noundef %mlock, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0157)
  %cmp8.not = icmp eq i32 %i.0157, 0
  br i1 %cmp8.not, label %if.end7.do.body24_crit_edge, label %if.then9

if.end7.do.body24_crit_edge:                      ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body24

if.then9:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %or10 = or i32 %v.1156, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !56
  tail call void @arm_heavy_mb() #6
  %sub = add nsw i32 %i.0157, -1
  %arrayidx12 = getelementptr %struct.sun8i_ss_hash_reqctx, ptr %rctx, i32 0, i32 1, i32 %sub
  %10 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx12, align 8
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ss, align 4
  %add.ptr = getelementptr i8, ptr %14, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %12) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !58
  tail call void @arm_heavy_mb() #6
  %15 = ptrtoint ptr %arrayidx12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx12, align 8
  %17 = tail call i32 @llvm.bswap.i32(i32 %16)
  %18 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ss, align 4
  %add.ptr22 = getelementptr i8, ptr %19, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %17) #6, !srcloc !57
  br label %do.body24

do.body24:                                        ; preds = %if.then9, %if.end7.do.body24_crit_edge
  %v.2 = phi i32 [ %or10, %if.then9 ], [ %v.1156, %if.end7.do.body24_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun8i_ss_run_hash_task.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sun8i_ss_run_hash_task, %if.then28)) #6
          to label %do.body43 [label %if.then28], !srcloc !59

if.then28:                                        ; preds = %do.body24
  call void @__sanitizer_cov_trace_pc() #8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %arrayidx29 = getelementptr [8 x %struct.sginfo], ptr %rctx, i32 0, i32 %i.0157
  %len = getelementptr [8 x %struct.sginfo], ptr %rctx, i32 0, i32 %i.0157, i32 1
  %22 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %len, align 4
  %len32 = getelementptr %struct.sun8i_ss_hash_reqctx, ptr %rctx, i32 0, i32 1, i32 %i.0157, i32 1
  %24 = ptrtoint ptr %len32 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %len32, align 4
  %26 = ptrtoint ptr %method to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %method, align 128
  %28 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx29, align 8
  %30 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx4, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun8i_ss_run_hash_task.__UNIQUE_ID_ddebug231, ptr noundef %21, ptr noundef nonnull @.str.24, i32 noundef %i.0157, i32 noundef %1, ptr noundef %name, i32 noundef %v.2, i32 noundef %23, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31) #6
  br label %do.body43

do.body43:                                        ; preds = %if.then28, %do.body24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !60
  tail call void @arm_heavy_mb() #6
  %arrayidx47 = getelementptr [8 x %struct.sginfo], ptr %rctx, i32 0, i32 %i.0157
  %32 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx47, align 8
  %34 = tail call i32 @llvm.bswap.i32(i32 %33)
  %35 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %ss, align 4
  %add.ptr50 = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr50, i32 %34) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !61
  tail call void @arm_heavy_mb() #6
  %37 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %arrayidx4, align 8
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  %40 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ss, align 4
  %add.ptr58 = getelementptr i8, ptr %41, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr58, i32 %39) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !62
  tail call void @arm_heavy_mb() #6
  %len64 = getelementptr [8 x %struct.sginfo], ptr %rctx, i32 0, i32 %i.0157, i32 1
  %42 = ptrtoint ptr %len64 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %len64, align 4
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ss, align 4
  %add.ptr66 = getelementptr i8, ptr %46, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr66, i32 %44) #6, !srcloc !57
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !63
  tail call void @arm_heavy_mb() #6
  %47 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ss, align 4
  %add.ptr71 = getelementptr i8, ptr %48, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr71, i32 50331648) #6, !srcloc !57
  %49 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %flows, align 4
  %complete = getelementptr %struct.sun8i_ss_flow, ptr %50, i32 %1, i32 1
  %51 = ptrtoint ptr %complete to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %complete, align 4
  %52 = load ptr, ptr %flows, align 4
  %status = getelementptr %struct.sun8i_ss_flow, ptr %52, i32 %1, i32 2
  %53 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 0, ptr %status, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !65
  tail call void @arm_heavy_mb() #6
  %54 = tail call i32 @llvm.bswap.i32(i32 %v.2)
  %55 = ptrtoint ptr %ss to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ss, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %56, i32 %54) #6, !srcloc !57
  tail call void @mutex_unlock(ptr noundef %mlock) #6
  %57 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %flows, align 4
  %complete87 = getelementptr %struct.sun8i_ss_flow, ptr %58, i32 %1, i32 1
  %call89 = tail call i32 @wait_for_completion_interruptible_timeout(ptr noundef %complete87, i32 noundef 200) #6
  %59 = ptrtoint ptr %flows to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %flows, align 4
  %status92 = getelementptr %struct.sun8i_ss_flow, ptr %60, i32 %1, i32 2
  %61 = ptrtoint ptr %status92 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %status92, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %cmp93 = icmp eq i32 %62, 0
  br i1 %cmp93, label %do.end97, label %for.cond

do.end97:                                         ; preds = %do.body43
  call void @__sanitizer_cov_trace_pc() #8
  %63 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %64, ptr noundef nonnull @.str.25, ptr noundef %name) #9
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ -14, %do.end97 ], [ 0, %for.body.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_sg_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 25)
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

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !11, !12, !13, !15, !16, !17, !18, !20, !21, !22, !24, !25, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !39, !41, !42}
!llvm.module.flags = !{!43, !44, !45, !46, !47, !48, !49, !50}
!llvm.ident = !{!51}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c", i32 41, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @sun8i_ss_hash_crainit._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @sun8i_ss_hash_crainit._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.6, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c", i32 52, i32 2}
!10 = !{ptr @.str.7, !9, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @sun8i_ss_hash_crainit._entry.5, !9, !"_entry", i1 false, i1 false}
!12 = !{ptr @sun8i_ss_hash_crainit._entry_ptr.8, !9, !"_entry_ptr", i1 false, i1 false}
!13 = !{ptr @.str.9, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c", i32 369, i32 3}
!15 = !{ptr @.str.10, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @sun8i_ss_hash_run._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @sun8i_ss_hash_run._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.12, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c", i32 376, i32 3}
!20 = !{ptr @sun8i_ss_hash_run._entry.11, !19, !"_entry", i1 false, i1 false}
!21 = !{ptr @sun8i_ss_hash_run._entry_ptr.13, !19, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.15, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c", i32 391, i32 3}
!24 = !{ptr @sun8i_ss_hash_run._entry.14, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @sun8i_ss_hash_run._entry_ptr.16, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.18, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c", i32 429, i32 3}
!28 = !{ptr @sun8i_ss_hash_run._entry.17, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sun8i_ss_hash_run._entry_ptr.19, !27, !"_entry_ptr", i1 false, i1 false}
!30 = distinct !{null, !31, !"__already_done", i1 false, i1 false}
!31 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!32 = !{ptr @.str.20, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.21, !31, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c", i32 230, i32 3}
!36 = !{ptr @.str.23, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.24, !35, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @sun8i_ss_run_hash_task.__UNIQUE_ID_ddebug231, !35, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!39 = !{ptr @.str.25, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/crypto/allwinner/sun8i-ss/sun8i-ss-hash.c", i32 250, i32 4}
!41 = !{ptr @sun8i_ss_run_hash_task._entry, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @sun8i_ss_run_hash_task._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{i32 1, !"wchar_size", i32 2}
!44 = !{i32 1, !"min_enum_size", i32 4}
!45 = !{i32 8, !"branch-target-enforcement", i32 0}
!46 = !{i32 8, !"sign-return-address", i32 0}
!47 = !{i32 8, !"sign-return-address-all", i32 0}
!48 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!49 = !{i32 7, !"uwtable", i32 1}
!50 = !{i32 7, !"frame-pointer", i32 2}
!51 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!52 = !{i64 2148518807}
!53 = !{i64 1005407, i64 1005432, i64 1005454, i64 1005470, i64 1005482, i64 1005502, i64 1005526, i64 1005542, i64 1005554}
!54 = !{i64 2148518995}
!55 = !{!"branch_weights", i32 2000, i32 1}
!56 = !{i64 2154166914}
!57 = !{i64 6227846}
!58 = !{i64 2154167384}
!59 = !{i64 2148332781, i64 2148332786, i64 2148332799, i64 2148332843, i64 2148332877, i64 2148332898}
!60 = !{i64 2154171027}
!61 = !{i64 2154171481}
!62 = !{i64 2154171934}
!63 = !{i64 2154172573}
!64 = !{i64 2154173056}
!65 = !{i64 2154173271}
