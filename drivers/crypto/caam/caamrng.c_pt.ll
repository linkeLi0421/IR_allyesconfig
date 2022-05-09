; ModuleID = '/llk/IR_all_yes/drivers/crypto/caam/caamrng.c_pt.bc'
source_filename = "../drivers/crypto/caam/caamrng.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.list_head = type { ptr, ptr }
%struct.caam_drv_private = type { ptr, ptr, ptr, ptr, [4 x ptr], ptr, i8, i8, i8, i32, i32, i32, i32, ptr, i32, ptr, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper, %struct.debugfs_blob_wrapper }
%struct.debugfs_blob_wrapper = type { ptr, i32 }
%struct.caam_ctrl = type { i32, i32, i32, i32, [4 x %struct.masterid], [11 x i32], i32, [4 x %struct.masterid], [5 x i32], i32, i32, i32, [5 x %struct.partid], [22 x i32], i32, i32, [182 x i32], [8 x i32], [8 x i32], [8 x i32], [32 x i32], i64, [70 x i32], %union.anon.155, [416 x i32], %struct.version_regs, %struct.caam_perfmon }
%struct.masterid = type { i32, i32 }
%struct.partid = type { i32, i32 }
%union.anon.155 = type { [2 x %struct.rngtst] }
%struct.rngtst = type { i32, [3 x i32], i32, [3 x i32], i32, i32, i32, i32, i32, i32, i32, [15 x i32], i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32], [4 x i32], [15 x i32] }
%struct.version_regs = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [10 x i32], i32, i32, i32, i32, i32, i32 }
%struct.caam_perfmon = type { i64, i64, i64, i64, i64, i64, i64, [13 x i64], i32, i32, i32, i32, [2 x i64], i64, i32, i32, i32, i32, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.caam_rng_ctx = type { %struct.hwrng, ptr, ptr, ptr, ptr, %struct.work_struct, %struct.kfifo }
%struct.hwrng = type { ptr, ptr, ptr, ptr, ptr, ptr, i32, i16, %struct.list_head, %struct.kref, %struct.completion }
%struct.kfifo = type { %union.anon.154, [0 x i8] }
%union.anon.154 = type { %struct.__kfifo }
%struct.__kfifo = type { i32, i32, i32, i32, ptr }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.caam_rng_job_ctx = type { ptr, ptr }
%struct.page = type { i32, %union.anon.2, %union.anon.129, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.129 = type { %struct.atomic_t }

@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"rng-caam\00", [23 x i8] zeroinitializer }, align 32
@caam_rng_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"registering rng-caam\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"caam_rng_init\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/crypto/caam/caamrng.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@caam_rng_init._entry_ptr = internal global ptr @caam_rng_init._entry, section ".printk_index", align 4
@caam_little_end = external dso_local local_unnamed_addr global i8, align 1
@caam_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"(work_completion)(&ctx->worker)\00", [32 x i8] zeroinitializer }, align 32
@caam_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 198, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"\013Job Ring Device allocation for transform failed\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"caam_init\00", [22 x i8] zeroinitializer }, align 32
@caam_init._entry_ptr = internal global ptr @caam_init._entry, section ".printk_index", align 4
@caam_rng_read_one._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.10, ptr @.str.3, i32 98, ptr @.str.11, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"unable to map destination memory\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"caam_rng_read_one\00", [46 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@caam_rng_read_one._entry_ptr = internal global ptr @caam_rng_read_one._entry, section ".printk_index", align 4
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.12 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.14 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@caam_init_desc.__UNIQUE_ID_ddebug511 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.15, ptr @.str.16, ptr @.str.3, ptr @.str.17, i8 0, i8 19, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"caam_jr\00", [24 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"caam_init_desc\00", [17 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rng job desc@: \00", [16 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\017\00", [29 x i8] zeroinitializer }, align 32
@append_operation._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.21, i32 265, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"\017%02d: %s\0A\00", [20 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"append_operation\00", [47 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/crypto/caam/desc_constr.h\00", [62 x i8] zeroinitializer }, align 32
@append_operation._entry_ptr = internal global ptr @append_operation._entry, section ".printk_index", align 4
@append_fifo_store._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.22, ptr @.str.21, i32 290, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"append_fifo_store\00", [46 x i8] zeroinitializer }, align 32
@append_fifo_store._entry_ptr = internal global ptr @append_fifo_store._entry, section ".printk_index", align 4
@caam_ptr_sz = external dso_local local_unnamed_addr global i32, align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 244, i32 21 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 251, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 192, i32 2 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 198, i32 3 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 98, i32 3 }
@___asan_gen_.75 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.75, i32 326, i32 6 }
@___asan_gen_.77 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.81, i32 87, i32 2 }
@___asan_gen_.93 = private constant [33 x i8] c"../drivers/crypto/caam/caamrng.c\00", align 1
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.93, i32 76, i32 2 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 265, i32 1 }
@___asan_gen_.107 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.110 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.111 = private unnamed_addr constant [37 x i8] c"../drivers/crypto/caam/desc_constr.h\00", align 1
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.111, i32 290, i32 1 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @append_fifo_store._entry, ptr @append_fifo_store._entry_ptr, ptr @append_operation._entry, ptr @append_operation._entry_ptr, ptr @caam_init._entry, ptr @caam_init._entry_ptr, ptr @caam_rng_init._entry, ptr @caam_rng_init._entry_ptr, ptr @caam_rng_read_one._entry, ptr @caam_rng_read_one._entry_ptr, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @caam_init.__key, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @init_completion.__key, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [30 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_rng_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @caam_rng_read_one._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_operation._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @append_fifo_store._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @caam_rng_exit(ptr noundef %ctrldev) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @devres_release_group(ptr noundef %ctrldev, ptr noundef nonnull @caam_rng_init) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devres_release_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @caam_rng_init(ptr noundef %ctrldev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %ctrldev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %era = getelementptr inbounds %struct.caam_drv_private, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %era to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %era, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %3)
  %cmp = icmp slt i32 %3, 10
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %cha_num_ls = getelementptr inbounds %struct.caam_ctrl, ptr %5, i32 0, i32 26, i32 24
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %6 = load i8, ptr @caam_little_end, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %cha_num_ls) #5
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  br label %rd_reg32.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  br label %rd_reg32.exit

rd_reg32.exit:                                    ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ %8, %if.then.i ], [ %7, %if.end.i ]
  %9 = lshr i32 %retval.0.i, 16
  %10 = and i32 %9, 15
  br label %if.end

if.else:                                          ; preds = %entry
  %rng = getelementptr inbounds %struct.caam_ctrl, ptr %5, i32 0, i32 25, i32 13
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %11 = load i8, ptr @caam_little_end, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i54 = icmp eq i8 %11, 0
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %rng) #5
  br i1 %tobool.not.i54, label %if.end.i56, label %if.then.i55

if.then.i55:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !57
  br label %rd_reg32.exit58

if.end.i56:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !58
  br label %rd_reg32.exit58

rd_reg32.exit58:                                  ; preds = %if.end.i56, %if.then.i55
  %retval.0.i57 = phi i32 [ %13, %if.then.i55 ], [ %12, %if.end.i56 ]
  %14 = and i32 %retval.0.i57, 255
  br label %if.end

if.end:                                           ; preds = %rd_reg32.exit58, %rd_reg32.exit
  %rng_inst.0 = phi i32 [ %10, %rd_reg32.exit ], [ %14, %rd_reg32.exit58 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rng_inst.0)
  %tobool.not = icmp eq i32 %rng_inst.0, 0
  br i1 %tobool.not, label %if.end.cleanup31_crit_edge, label %if.end9

if.end.cleanup31_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup31

if.end9:                                          ; preds = %if.end
  %call10 = tail call ptr @devres_open_group(ptr noundef %ctrldev, ptr noundef nonnull @caam_rng_init, i32 noundef 3264) #5
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end9.cleanup31_crit_edge, label %if.end13

if.end9.cleanup31_crit_edge:                      ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup31

if.end13:                                         ; preds = %if.end9
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %ctrldev, i32 noundef 180, i32 noundef 3520) #5
  %tobool15.not = icmp eq ptr %call.i, null
  br i1 %tobool15.not, label %if.end13.cleanup31_crit_edge, label %if.end17

if.end13.cleanup31_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup31

if.end17:                                         ; preds = %if.end13
  %ctrldev18 = getelementptr inbounds %struct.caam_rng_ctx, ptr %call.i, i32 0, i32 2
  %15 = ptrtoint ptr %ctrldev18 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ctrldev, ptr %ctrldev18, align 4
  %16 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @.str, ptr %call.i, align 4
  %init = getelementptr inbounds %struct.hwrng, ptr %call.i, i32 0, i32 1
  %17 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @caam_init, ptr %init, align 4
  %cleanup = getelementptr inbounds %struct.hwrng, ptr %call.i, i32 0, i32 2
  %18 = ptrtoint ptr %cleanup to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @caam_cleanup, ptr %cleanup, align 4
  %read = getelementptr inbounds %struct.hwrng, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %read to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @caam_read, ptr %read, align 4
  %20 = ptrtoint ptr %call.i to i32
  %priv24 = getelementptr inbounds %struct.hwrng, ptr %call.i, i32 0, i32 6
  %21 = ptrtoint ptr %priv24 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %priv24, align 4
  %quality = getelementptr inbounds %struct.hwrng, ptr %call.i, i32 0, i32 7
  %22 = ptrtoint ptr %quality to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 1024, ptr %quality, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %ctrldev, ptr noundef nonnull @.str.1) #8
  %call27 = tail call i32 @devm_hwrng_register(ptr noundef %ctrldev, ptr noundef nonnull %call.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call27)
  %tobool28.not = icmp eq i32 %call27, 0
  br i1 %tobool28.not, label %if.end30, label %if.then29

if.then29:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  %call.i59 = tail call i32 @devres_release_group(ptr noundef %ctrldev, ptr noundef nonnull @caam_rng_init) #5
  br label %cleanup31

if.end30:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @devres_close_group(ptr noundef %ctrldev, ptr noundef nonnull @caam_rng_init) #5
  br label %cleanup31

cleanup31:                                        ; preds = %if.end30, %if.then29, %if.end13.cleanup31_crit_edge, %if.end9.cleanup31_crit_edge, %if.end.cleanup31_crit_edge
  %retval.0 = phi i32 [ %call27, %if.then29 ], [ 0, %if.end30 ], [ 0, %if.end.cleanup31_crit_edge ], [ -12, %if.end9.cleanup31_crit_edge ], [ -12, %if.end13.cleanup31_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devres_open_group(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_init(ptr nocapture noundef readonly %rng) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %ctrldev = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %ctrldev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %ctrldev, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %4, i32 noundef 16, i32 noundef 3521) #5
  %desc_sync = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 4
  %5 = ptrtoint ptr %desc_sync to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %desc_sync, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %ctrldev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrldev, align 4
  %call.i50 = tail call noalias ptr @devm_kmalloc(ptr noundef %7, i32 noundef 16, i32 noundef 3521) #5
  %desc_async = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 3
  %8 = ptrtoint ptr %desc_async to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call.i50, ptr %desc_async, align 4
  %tobool6.not = icmp eq ptr %call.i50, null
  br i1 %tobool6.not, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %fifo = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 6
  %call9 = tail call i32 @__kfifo_alloc(ptr noundef %fifo, i32 noundef 16, i32 noundef 1, i32 noundef 3265) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call9)
  %tobool11.not = icmp eq i32 %call9, 0
  br i1 %tobool11.not, label %do.body, label %if.end8.cleanup_crit_edge

if.end8.cleanup_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.body:                                          ; preds = %if.end8
  %worker = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 5
  tail call void @__init_work(ptr noundef %worker, i32 noundef 0) #5
  %9 = ptrtoint ptr %worker to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -64, ptr %worker, align 4
  %lockdep_map = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 5, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.6, ptr noundef nonnull @caam_init.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #5
  %entry17 = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %entry17 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %entry17, ptr %entry17, align 4
  %prev.i = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 5, i32 1, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %entry17, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 5, i32 2
  %12 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @caam_rng_worker, ptr %func, align 4
  %call19 = tail call ptr @caam_jr_alloc() #5
  %jrdev = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 1
  %13 = ptrtoint ptr %jrdev to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call19, ptr %jrdev, align 4
  %cmp.i.i.not = icmp ugt ptr %call19, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i.not, label %if.then23, label %if.end32

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %call19 to i32
  tail call void @__kfifo_free(ptr noundef %fifo) #5
  %call31 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7) #8
  br label %cleanup

if.end32:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #7
  tail call fastcc void @caam_rng_fill_async(ptr noundef %2)
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %if.then23, %if.end8.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %14, %if.then23 ], [ 0, %if.end32 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %if.end8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caam_cleanup(ptr nocapture noundef readonly %rng) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i, align 4
  %2 = inttoptr i32 %1 to ptr
  %worker = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 5
  %call1 = tail call zeroext i1 @flush_work(ptr noundef %worker) #5
  %jrdev = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %jrdev, align 4
  tail call void @caam_jr_free(ptr noundef %4) #5
  %fifo = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 6
  tail call void @__kfifo_free(ptr noundef %fifo) #5
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @caam_read(ptr nocapture noundef readonly %rng, ptr noundef %dst, i32 noundef %max, i1 noundef zeroext %wait) #0 align 64 {
entry:
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %priv.i = getelementptr inbounds %struct.hwrng, ptr %rng, i32 0, i32 6
  %0 = ptrtoint ptr %priv.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %priv.i, align 4
  %2 = inttoptr i32 %1 to ptr
  br i1 %wait, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #5
  %3 = call ptr @memset(ptr %done, i32 255, i32 56)
  %jrdev = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 1
  %4 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %jrdev, align 4
  %desc_sync = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 4
  %6 = ptrtoint ptr %desc_sync to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_sync, align 4
  %call1 = call fastcc i32 @caam_rng_read_one(ptr noundef %5, ptr noundef %dst, ptr noundef %7, ptr noundef nonnull %done)
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #5
  br label %cleanup

if.end:                                           ; preds = %entry
  %fifo = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 6
  %call2 = tail call i32 @__kfifo_out(ptr noundef %fifo, ptr noundef %dst, i32 noundef %max) #5
  %8 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %fifo, align 4
  %out6 = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 6, i32 0, i32 0, i32 1
  %10 = ptrtoint ptr %out6 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %out6, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp = icmp eq i32 %9, %11
  br i1 %cmp, label %if.then8, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %worker = getelementptr inbounds %struct.caam_rng_ctx, ptr %2, i32 0, i32 5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %12 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %12, ptr noundef %worker) #5
  br label %cleanup

cleanup:                                          ; preds = %if.then8, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %call1, %if.then ], [ %call2, %if.then8 ], [ %call2, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_hwrng_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devres_close_group(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_alloc(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caam_rng_worker(ptr noundef %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %work, i32 -116
  tail call fastcc void @caam_rng_fill_async(ptr noundef %add.ptr)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @caam_jr_alloc() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__kfifo_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @caam_rng_fill_async(ptr noundef %ctx) unnamed_addr #0 align 64 {
entry:
  %sg = alloca [1 x %struct.scatterlist], align 4
  %done = alloca %struct.completion, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg) #5
  %0 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 1
  %1 = call ptr @memset(ptr %sg, i32 255, i32 20)
  call void @llvm.lifetime.start.p0(i64 56, ptr nonnull %done) #5
  %2 = call ptr @memset(ptr %done, i32 255, i32 56)
  call void @sg_init_table(ptr noundef nonnull %sg, i32 noundef 1) #5
  %fifo = getelementptr inbounds %struct.caam_rng_ctx, ptr %ctx, i32 0, i32 6
  %call = call i32 @__kfifo_dma_in_prepare(ptr noundef %fifo, ptr noundef nonnull %sg, i32 noundef 1, i32 noundef 16) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %3 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %sg, align 4
  %and.i.i.i = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_virt.exit, label %do.body2.i.i, !prof !59

do.body2.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 144, 0\0A.popsection", ""() #5, !srcloc !60
  unreachable

sg_virt.exit:                                     ; preds = %if.end
  %jrdev = getelementptr inbounds %struct.caam_rng_ctx, ptr %ctx, i32 0, i32 1
  %5 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %jrdev, align 4
  %and.i.i = and i32 %4, -4
  %7 = inttoptr i32 %and.i.i to ptr
  %call1.i = call ptr @page_address(ptr noundef %7) #5
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %0, align 4
  %add.ptr.i = getelementptr i8, ptr %call1.i, i32 %9
  %desc_async = getelementptr inbounds %struct.caam_rng_ctx, ptr %ctx, i32 0, i32 3
  %10 = ptrtoint ptr %desc_async to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc_async, align 4
  %call4 = call fastcc i32 @caam_rng_read_one(ptr noundef %6, ptr noundef %add.ptr.i, ptr noundef %11, ptr noundef nonnull %done)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %cmp = icmp slt i32 %call4, 0
  br i1 %cmp, label %sg_virt.exit.cleanup_crit_edge, label %if.end6

sg_virt.exit.cleanup_crit_edge:                   ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end6:                                          ; preds = %sg_virt.exit
  call void @__sanitizer_cov_trace_pc() #7
  %12 = ptrtoint ptr %fifo to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %fifo, align 4
  %add = add i32 %13, %call4
  store i32 %add, ptr %fifo, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %sg_virt.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 56, ptr nonnull %done) #5
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_dma_in_prepare(ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @caam_rng_read_one(ptr noundef %jrdev, ptr noundef %dst, ptr noundef %desc, ptr noundef %done) unnamed_addr #0 align 64 {
entry:
  %ret = alloca i32, align 4
  %jctx = alloca %struct.caam_rng_job_ctx, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %ret) #5
  %0 = ptrtoint ptr %ret to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %ret, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %jctx) #5
  %1 = getelementptr inbounds %struct.caam_rng_job_ctx, ptr %jctx, i32 0, i32 1
  %2 = ptrtoint ptr %jctx to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %done, ptr %jctx, align 4
  %3 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %ret, ptr %1, align 4
  %call.i = call zeroext i1 @is_vmalloc_addr(ptr noundef %dst) #5
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !59

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = call ptr @dev_driver_string(ptr noundef %jrdev) #5
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %jrdev, i32 0, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %jrdev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %jrdev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %if.then.i.dev_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.12, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.13, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #5
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  call void @debug_dma_mapping_error(ptr noundef %jrdev, i32 noundef -1) #5
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %entry
  call void @debug_dma_map_single(ptr noundef %jrdev, ptr noundef %dst, i32 noundef 16) #5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %8 = load ptr, ptr @mem_map, align 4
  %9 = ptrtoint ptr %dst to i32
  %sub.i = add i32 %9, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %8, i32 %shr.i
  %and.i = and i32 %9, 4095
  %call41.i = call i32 @dma_map_page_attrs(ptr noundef %jrdev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef 16, i32 noundef 2, i32 noundef 0) #5
  call void @debug_dma_mapping_error(ptr noundef %jrdev, i32 noundef %call41.i) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %jrdev, ptr noundef nonnull @.str.9) #8
  br label %cleanup

if.end:                                           ; preds = %dma_map_single_attrs.exit
  %10 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %done, align 4
  %wait.i = getelementptr inbounds %struct.completion, ptr %done, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.14, ptr noundef nonnull @init_completion.__key) #5
  %call4 = call fastcc ptr @caam_init_desc(ptr noundef %desc, i32 noundef %call41.i)
  %call5 = call i32 @caam_jr_enqueue(ptr noundef %jrdev, ptr noundef %desc, ptr noundef nonnull @caam_rng_done, ptr noundef nonnull %jctx) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call5)
  %cmp = icmp eq i32 %call5, -115
  br i1 %cmp, label %if.end7.thread, label %if.end7

if.end7.thread:                                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  call void @wait_for_completion(ptr noundef %done) #5
  call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %call41.i, i32 noundef 16, i32 noundef 2, i32 noundef 0) #5
  br label %cond.false

if.end7:                                          ; preds = %if.end
  call void @dma_unmap_page_attrs(ptr noundef %jrdev, i32 noundef %call41.i, i32 noundef 16, i32 noundef 2, i32 noundef 0) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call5)
  %tobool8.not = icmp eq i32 %call5, 0
  br i1 %tobool8.not, label %if.end7.cond.false_crit_edge, label %if.end7.cleanup_crit_edge

if.end7.cleanup_crit_edge:                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end7.cond.false_crit_edge:                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #7
  br label %cond.false

cond.false:                                       ; preds = %if.end7.cond.false_crit_edge, %if.end7.thread
  %11 = ptrtoint ptr %ret to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %ret, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool9.not = icmp eq i32 %12, 0
  %spec.select = select i1 %tobool9.not, i32 16, i32 %12
  br label %cleanup

cleanup:                                          ; preds = %cond.false, %if.end7.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -12, %do.end ], [ %call5, %if.end7.cleanup_crit_edge ], [ %spec.select, %cond.false ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %jctx) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %ret) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_jr_enqueue(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @caam_init_desc(ptr noundef returned %desc, i32 noundef %dst_dma) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %0 = load i8, ptr @caam_little_end, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %0)
  %tobool.not.i.i.i = icmp eq i8 %0, 0
  %retval.0.i.i.i = select i1 %tobool.not.i.i.i, i32 -1333788671, i32 16810160
  %1 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %retval.0.i.i.i, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %2 = load i8, ptr @caam_little_end, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %2)
  %tobool.not.i.i.i10 = icmp eq i8 %2, 0
  %3 = lshr i32 %retval.0.i.i.i, 24
  %retval.0.i.i.i11 = select i1 %tobool.not.i.i.i10, i32 %retval.0.i.i.i, i32 %3
  %and.i.i = and i32 %retval.0.i.i.i11, 49
  %call2.i = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %and.i.i, ptr noundef getelementptr inbounds ([17 x i8], ptr @.str.20, i32 0, i32 7)) #8
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %6 = load i8, ptr @caam_little_end, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i.i.i.i.i = icmp eq i8 %6, 0
  %7 = lshr i32 %5, 24
  %retval.0.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i, i32 %5, i32 %7
  %and.i.i.i.i = and i32 %retval.0.i.i.i.i.i, 127
  %add.ptr.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i
  %retval.0.i.i1.i = select i1 %tobool.not.i.i.i.i.i, i32 -2108686334, i32 33575042
  %8 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %retval.0.i.i1.i, ptr %add.ptr.i.i.i, align 4
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %11 = load i8, ptr @caam_little_end, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i6.i.i = icmp eq i8 %11, 0
  %12 = tail call i32 @llvm.bswap.i32(i32 %10) #5
  %retval.0.i7.i.i = select i1 %tobool.not.i6.i.i, i32 %10, i32 %12
  %add.i.i = add i32 %retval.0.i7.i.i, 1
  %13 = tail call i32 @llvm.bswap.i32(i32 %add.i.i) #5
  %retval.0.i9.i.i = select i1 %tobool.not.i6.i.i, i32 %add.i.i, i32 %13
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %retval.0.i9.i.i, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %15 = load i8, ptr @caam_little_end, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i.i.i12 = icmp eq i8 %15, 0
  %16 = lshr i32 %retval.0.i9.i.i, 24
  %retval.0.i.i.i13 = select i1 %tobool.not.i.i.i12, i32 %retval.0.i9.i.i, i32 %16
  %and.i.i14 = and i32 %retval.0.i.i.i13, 127
  %call2.i15 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.19, i32 noundef %and.i.i14, ptr noundef getelementptr inbounds ([18 x i8], ptr @.str.22, i32 0, i32 7)) #8
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %19 = load i8, ptr @caam_little_end, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool.not.i.i.i.i.i.i = icmp eq i8 %19, 0
  %20 = lshr i32 %18, 24
  %retval.0.i.i.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 %18, i32 %20
  %and.i.i.i.i.i = and i32 %retval.0.i.i.i.i.i.i, 127
  %add.ptr.i.i.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i.i.i
  %retval.0.i.i.i.i = select i1 %tobool.not.i.i.i.i.i.i, i32 1614020624, i32 268448864
  %21 = ptrtoint ptr %add.ptr.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %retval.0.i.i.i.i, ptr %add.ptr.i.i.i.i, align 4
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %24 = load i8, ptr @caam_little_end, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i6.i.i.i = icmp eq i8 %24, 0
  %25 = tail call i32 @llvm.bswap.i32(i32 %23) #5
  %retval.0.i7.i.i.i = select i1 %tobool.not.i6.i.i.i, i32 %23, i32 %25
  %add.i.i.i = add i32 %retval.0.i7.i.i.i, 1
  %26 = tail call i32 @llvm.bswap.i32(i32 %add.i.i.i) #5
  %retval.0.i9.i.i.i = select i1 %tobool.not.i6.i.i.i, i32 %add.i.i.i, i32 %26
  %27 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %retval.0.i9.i.i.i, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %28 = load i8, ptr @caam_little_end, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %28)
  %tobool.not.i.i.i.i1.i.i = icmp eq i8 %28, 0
  %29 = lshr i32 %retval.0.i9.i.i.i, 24
  %retval.0.i.i.i.i2.i.i = select i1 %tobool.not.i.i.i.i1.i.i, i32 %retval.0.i9.i.i.i, i32 %29
  %and.i.i.i3.i.i = and i32 %retval.0.i.i.i.i2.i.i, 127
  %add.ptr.i.i4.i.i = getelementptr i32, ptr %desc, i32 %and.i.i.i3.i.i
  %30 = tail call i32 @llvm.bswap.i32(i32 %dst_dma) #5
  %retval.0.i.i.i.i.i16 = select i1 %tobool.not.i.i.i.i1.i.i, i32 %dst_dma, i32 %30
  %31 = ptrtoint ptr %add.ptr.i.i4.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.0.i.i.i.i.i16, ptr %add.ptr.i.i4.i.i, align 4
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %34 = load i8, ptr @caam_little_end, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %34)
  %tobool.not.i.i.i.i = icmp eq i8 %34, 0
  %35 = tail call i32 @llvm.bswap.i32(i32 %33) #5
  %retval.0.i.i5.i.i = select i1 %tobool.not.i.i.i.i, i32 %33, i32 %35
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @caam_ptr_sz to i32))
  %36 = load i32, ptr @caam_ptr_sz, align 4
  %div14.i.i.i = lshr i32 %36, 2
  %add.i6.i.i = add i32 %retval.0.i.i5.i.i, %div14.i.i.i
  %37 = tail call i32 @llvm.bswap.i32(i32 %add.i6.i.i) #5
  %retval.0.i23.i.i.i = select i1 %tobool.not.i.i.i.i, i32 %add.i6.i.i, i32 %37
  %38 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %retval.0.i23.i.i.i, ptr %desc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @caam_init_desc.__UNIQUE_ID_ddebug511, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@caam_init_desc, %do.end)) #5
          to label %if.then [label %do.end], !srcloc !61

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %39 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %desc, align 4
  call void @__asan_load1_noabort(i32 ptrtoint (ptr @caam_little_end to i32))
  %41 = load i8, ptr @caam_little_end, align 1, !range !56
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %41)
  %tobool.not.i.i.i17 = icmp eq i8 %41, 0
  %42 = lshr i32 %40, 24
  %retval.0.i.i.i18 = select i1 %tobool.not.i.i.i17, i32 %40, i32 %42
  %and.i.i19 = shl i32 %retval.0.i.i.i18, 2
  %mul.i = and i32 %and.i.i19, 508
  tail call void @print_hex_dump(ptr noundef nonnull @.str.18, ptr noundef nonnull @.str.17, i32 noundef 1, i32 noundef 16, i32 noundef 4, ptr noundef %desc, i32 noundef %mul.i, i1 noundef zeroext true) #5
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret ptr %desc
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @caam_rng_done(ptr noundef %jrdev, ptr nocapture noundef readnone %desc, i32 noundef %err, ptr nocapture noundef readonly %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %err)
  %tobool.not = icmp eq i32 %err, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %call = tail call i32 @caam_strstatus(ptr noundef %jrdev, i32 noundef %err, i1 noundef zeroext false) #5
  %err1 = getelementptr inbounds %struct.caam_rng_job_ctx, ptr %context, i32 0, i32 1
  %0 = ptrtoint ptr %err1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %err1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %call, ptr %1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %3 = ptrtoint ptr %context to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %context, align 4
  tail call void @complete(ptr noundef %4) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @print_hex_dump(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @caam_strstatus(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @page_address(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @caam_jr_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__kfifo_out(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 30)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !6, !7, !8, !9, !10, !12, !13, !15, !16, !17, !18, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !33, !34, !35, !36, !37, !39, !40, !41, !42, !43, !45, !46}
!llvm.module.flags = !{!47, !48, !49, !50, !51, !52, !53, !54}
!llvm.ident = !{!55}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/crypto/caam/caamrng.c", i32 244, i32 21}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/crypto/caam/caamrng.c", i32 251, i32 2}
!4 = !{ptr @.str.2, !3, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.3, !3, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.4, !3, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.5, !3, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @caam_rng_init._entry, !3, !"_entry", i1 false, i1 false}
!9 = !{ptr @caam_rng_init._entry_ptr, !3, !"_entry_ptr", i1 false, i1 false}
!10 = !{ptr @caam_init.__key, !11, !"__key", i1 false, i1 false}
!11 = !{!"../drivers/crypto/caam/caamrng.c", i32 192, i32 2}
!12 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.7, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/crypto/caam/caamrng.c", i32 198, i32 3}
!15 = !{ptr @.str.8, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @caam_init._entry, !14, !"_entry", i1 false, i1 false}
!17 = !{ptr @caam_init._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!18 = !{ptr @.str.9, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/crypto/caam/caamrng.c", i32 98, i32 3}
!20 = !{ptr @.str.10, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.11, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @caam_rng_read_one._entry, !19, !"_entry", i1 false, i1 false}
!23 = !{ptr @caam_rng_read_one._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!24 = distinct !{null, !25, !"__already_done", i1 false, i1 false}
!25 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!26 = !{ptr @.str.12, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.13, !25, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @init_completion.__key, !29, !"__key", i1 false, i1 false}
!29 = !{!"../include/linux/completion.h", i32 87, i32 2}
!30 = !{ptr @.str.14, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.15, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/crypto/caam/caamrng.c", i32 76, i32 2}
!33 = !{ptr @.str.16, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.17, !32, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @caam_init_desc.__UNIQUE_ID_ddebug511, !32, !"__UNIQUE_ID_ddebug511", i1 false, i1 false}
!36 = !{ptr @.str.18, !32, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.19, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/crypto/caam/desc_constr.h", i32 265, i32 1}
!39 = !{ptr @.str.20, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.21, !38, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @append_operation._entry, !38, !"_entry", i1 false, i1 false}
!42 = !{ptr @append_operation._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.22, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/crypto/caam/desc_constr.h", i32 290, i32 1}
!45 = !{ptr @append_fifo_store._entry, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @append_fifo_store._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{i32 1, !"wchar_size", i32 2}
!48 = !{i32 1, !"min_enum_size", i32 4}
!49 = !{i32 8, !"branch-target-enforcement", i32 0}
!50 = !{i32 8, !"sign-return-address", i32 0}
!51 = !{i32 8, !"sign-return-address-all", i32 0}
!52 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!53 = !{i32 7, !"uwtable", i32 1}
!54 = !{i32 7, !"frame-pointer", i32 2}
!55 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!56 = !{i8 0, i8 2}
!57 = !{i64 2153357932}
!58 = !{i64 2158396693}
!59 = !{!"branch_weights", i32 2000, i32 1}
!60 = !{i64 2153382910, i64 2153383402, i64 2153382947, i64 2153383003, i64 2153383037, i64 2153383061, i64 2153383102, i64 2153383123, i64 2153383151, i64 2153383185}
!61 = !{i64 2148321831, i64 2148321836, i64 2148321849, i64 2148321893, i64 2148321927, i64 2148321948}
