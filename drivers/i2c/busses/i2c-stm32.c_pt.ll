; ModuleID = '/llk/IR_all_yes/drivers/i2c/busses/i2c-stm32.c_pt.bc'
source_filename = "../drivers/i2c/busses/i2c-stm32.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.stm32_i2c_dma = type { ptr, ptr, ptr, i32, i32, i32, i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@.str = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"tx\00", [29 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't request DMA tx channel\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32_i2c_dma_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 42, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't configure tx channel\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"stm32_i2c_dma_request\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"drivers/i2c/busses/i2c-stm32.c\00", [33 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@stm32_i2c_dma_request._entry_ptr = internal global ptr @stm32_i2c_dma_request._entry, section ".printk_index", align 4
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"rx\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"can't request DMA rx channel\0A\00", [34 x i8] zeroinitializer }, align 32
@stm32_i2c_dma_request._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.3, ptr @.str.4, i32 64, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"can't configure rx channel\0A\00", [36 x i8] zeroinitializer }, align 32
@stm32_i2c_dma_request._entry_ptr.11 = internal global ptr @stm32_i2c_dma_request._entry.9, section ".printk_index", align 4
@stm32_i2c_dma_request._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 71, ptr @.str.14, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"using %s (tx) and %s (rx) for DMA transfers\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@stm32_i2c_dma_request._entry_ptr.15 = internal global ptr @stm32_i2c_dma_request._entry.12, section ".printk_index", align 4
@stm32_i2c_prep_dma_xfer._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.4, i32 124, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"DMA mapping failed\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"stm32_i2c_prep_dma_xfer\00", [40 x i8] zeroinitializer }, align 32
@stm32_i2c_prep_dma_xfer._entry_ptr = internal global ptr @stm32_i2c_prep_dma_xfer._entry, section ".printk_index", align 4
@stm32_i2c_prep_dma_xfer._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.4, i32 133, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Not able to get desc for DMA xfer\0A\00", [61 x i8] zeroinitializer }, align 32
@stm32_i2c_prep_dma_xfer._entry_ptr.20 = internal global ptr @stm32_i2c_prep_dma_xfer._entry.18, section ".printk_index", align 4
@stm32_i2c_prep_dma_xfer._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.17, ptr @.str.4, i32 144, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"DMA submit failed\0A\00", [45 x i8] zeroinitializer }, align 32
@stm32_i2c_prep_dma_xfer._entry_ptr.23 = internal global ptr @stm32_i2c_prep_dma_xfer._entry.21, section ".printk_index", align 4
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.24 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.25 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 26, i32 39 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 31, i32 10 }
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 42, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 47, i32 39 }
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 52, i32 10 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 64, i32 3 }
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 70, i32 2 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 124, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 133, i32 3 }
@___asan_gen_.87 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.91 = private constant [34 x i8] c"../drivers/i2c/busses/i2c-stm32.c\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.91, i32 144, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.97 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.97, i32 87, i32 2 }
@___asan_gen_.102 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.103 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.103, i32 326, i32 6 }
@llvm.compiler.used = appending global [32 x ptr] [ptr @stm32_i2c_dma_request._entry, ptr @stm32_i2c_dma_request._entry.12, ptr @stm32_i2c_dma_request._entry.9, ptr @stm32_i2c_dma_request._entry_ptr, ptr @stm32_i2c_dma_request._entry_ptr.11, ptr @stm32_i2c_dma_request._entry_ptr.15, ptr @stm32_i2c_prep_dma_xfer._entry, ptr @stm32_i2c_prep_dma_xfer._entry.18, ptr @stm32_i2c_prep_dma_xfer._entry.21, ptr @stm32_i2c_prep_dma_xfer._entry_ptr, ptr @stm32_i2c_prep_dma_xfer._entry_ptr.20, ptr @stm32_i2c_prep_dma_xfer._entry_ptr.23, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.22, ptr @init_completion.__key, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [26 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2c_dma_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2c_dma_request._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2c_dma_request._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2c_prep_dma_xfer._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2c_prep_dma_xfer._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_i2c_prep_dma_xfer._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @stm32_i2c_dma_request(ptr noundef %dev, i32 noundef %phy_addr, i32 noundef %txdr_offset, i32 noundef %rxdr_offset) local_unnamed_addr #0 align 64 {
entry:
  %dma_sconfig = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %dma_sconfig) #4
  %0 = call ptr @memset(ptr %dma_sconfig, i32 255, i32 48)
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 84, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str) #4
  %1 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end11

if.then5:                                         ; preds = %if.end
  %cmp.not = icmp eq ptr %call2, inttoptr (i32 -19 to ptr)
  br i1 %cmp.not, label %if.then5.fail_al_crit_edge, label %if.then8

if.then5.fail_al_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_al

if.then8:                                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #6
  %2 = ptrtoint ptr %call2 to i32
  %call9 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %2, ptr noundef nonnull @.str.1) #4
  br label %fail_al

if.end11:                                         ; preds = %if.end
  %3 = getelementptr inbounds i8, ptr %dma_sconfig, i32 4
  %4 = call ptr @memset(ptr %3, i32 0, i32 44)
  %add = add i32 %txdr_offset, %phy_addr
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 2
  %5 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %add, ptr %dst_addr, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 4
  %6 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %dst_addr_width, align 4
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 6
  %7 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 1, ptr %dst_maxburst, align 4
  %8 = ptrtoint ptr %dma_sconfig to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %dma_sconfig, align 4
  %9 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %call2, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 44
  %11 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end11.do.end_crit_edge, label %dmaengine_slave_config.exit

if.end11.do.end_crit_edge:                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

dmaengine_slave_config.exit:                      ; preds = %if.end11
  %call.i80 = call i32 %12(ptr noundef %call2, ptr noundef nonnull %dma_sconfig) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %cmp14 = icmp slt i32 %call.i80, 0
  br i1 %cmp14, label %dmaengine_slave_config.exit.do.end_crit_edge, label %if.end16

dmaengine_slave_config.exit.do.end_crit_edge:     ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %dmaengine_slave_config.exit.do.end_crit_edge, %if.end11.do.end_crit_edge
  %retval.0.i97 = phi i32 [ %call.i80, %dmaengine_slave_config.exit.do.end_crit_edge ], [ -38, %if.end11.do.end_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #7
  br label %fail_tx

if.end16:                                         ; preds = %dmaengine_slave_config.exit
  %call17 = call ptr @dma_request_chan(ptr noundef %dev, ptr noundef nonnull @.str.7) #4
  %chan_rx = getelementptr inbounds %struct.stm32_i2c_dma, ptr %call.i, i32 0, i32 1
  %13 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call17, ptr %chan_rx, align 4
  %cmp.i81 = icmp ugt ptr %call17, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i81, label %if.then20, label %if.end27

if.then20:                                        ; preds = %if.end16
  %cmp23.not = icmp eq ptr %call17, inttoptr (i32 -19 to ptr)
  br i1 %cmp23.not, label %if.then20.fail_tx_crit_edge, label %if.then24

if.then20.fail_tx_crit_edge:                      ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  br label %fail_tx

if.then24:                                        ; preds = %if.then20
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %call17 to i32
  %call25 = call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev, i32 noundef %14, ptr noundef nonnull @.str.8) #4
  br label %fail_tx

if.end27:                                         ; preds = %if.end16
  %15 = getelementptr inbounds i8, ptr %dma_sconfig, i32 8
  %16 = call ptr @memset(ptr %15, i32 0, i32 40)
  %add28 = add i32 %rxdr_offset, %phy_addr
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 1
  %17 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %add28, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 3
  %18 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %src_addr_width, align 4
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %dma_sconfig, i32 0, i32 5
  %19 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 1, ptr %src_maxburst, align 4
  %20 = ptrtoint ptr %dma_sconfig to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 2, ptr %dma_sconfig, align 4
  %21 = ptrtoint ptr %call17 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %call17, align 4
  %device_config.i82 = getelementptr inbounds %struct.dma_device, ptr %22, i32 0, i32 44
  %23 = ptrtoint ptr %device_config.i82 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %device_config.i82, align 4
  %tobool.not.i83 = icmp eq ptr %24, null
  br i1 %tobool.not.i83, label %if.end27.do.end36_crit_edge, label %dmaengine_slave_config.exit87

if.end27.do.end36_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end36

dmaengine_slave_config.exit87:                    ; preds = %if.end27
  %call.i84 = call i32 %24(ptr noundef %call17, ptr noundef nonnull %dma_sconfig) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %cmp32 = icmp slt i32 %call.i84, 0
  br i1 %cmp32, label %dmaengine_slave_config.exit87.do.end36_crit_edge, label %if.end37

dmaengine_slave_config.exit87.do.end36_crit_edge: ; preds = %dmaengine_slave_config.exit87
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end36

do.end36:                                         ; preds = %dmaengine_slave_config.exit87.do.end36_crit_edge, %if.end27.do.end36_crit_edge
  %retval.0.i86100 = phi i32 [ %call.i84, %dmaengine_slave_config.exit87.do.end36_crit_edge ], [ -38, %if.end27.do.end36_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #7
  %25 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan_rx, align 4
  call void @dma_release_channel(ptr noundef %26) #4
  br label %fail_tx

if.end37:                                         ; preds = %dmaengine_slave_config.exit87
  %dma_complete = getelementptr inbounds %struct.stm32_i2c_dma, ptr %call.i, i32 0, i32 7
  %27 = ptrtoint ptr %dma_complete to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %dma_complete, align 4
  %wait.i = getelementptr inbounds %struct.stm32_i2c_dma, ptr %call.i, i32 0, i32 7, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.24, ptr noundef nonnull @init_completion.__key) #4
  %28 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %call.i, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %31, i32 0, i32 1, i32 3
  %32 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %33, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.end37.dma_chan_name.exit_crit_edge

if.end37.dma_chan_name.exit_crit_edge:            ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #6
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %31, i32 0, i32 1
  %34 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %if.end37.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %35, %if.end.i.i ], [ %33, %if.end37.dma_chan_name.exit_crit_edge ]
  %36 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan_rx, align 4
  %dev.i88 = getelementptr inbounds %struct.dma_chan, ptr %37, i32 0, i32 5
  %38 = ptrtoint ptr %dev.i88 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i88, align 4
  %init_name.i.i89 = getelementptr inbounds %struct.dma_chan_dev, ptr %39, i32 0, i32 1, i32 3
  %40 = ptrtoint ptr %init_name.i.i89 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %init_name.i.i89, align 8
  %tobool.not.i.i90 = icmp eq ptr %41, null
  br i1 %tobool.not.i.i90, label %if.end.i.i92, label %dma_chan_name.exit.dma_chan_name.exit94_crit_edge

dma_chan_name.exit.dma_chan_name.exit94_crit_edge: ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_chan_name.exit94

if.end.i.i92:                                     ; preds = %dma_chan_name.exit
  call void @__sanitizer_cov_trace_pc() #6
  %device.i91 = getelementptr inbounds %struct.dma_chan_dev, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %device.i91 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %device.i91, align 4
  br label %dma_chan_name.exit94

dma_chan_name.exit94:                             ; preds = %if.end.i.i92, %dma_chan_name.exit.dma_chan_name.exit94_crit_edge
  %retval.0.i.i93 = phi ptr [ %43, %if.end.i.i92 ], [ %41, %dma_chan_name.exit.dma_chan_name.exit94_crit_edge ]
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i.i93) #7
  br label %cleanup

fail_tx:                                          ; preds = %do.end36, %if.then24, %if.then20.fail_tx_crit_edge, %do.end
  %ret.0 = phi i32 [ %retval.0.i97, %do.end ], [ %call25, %if.then24 ], [ -19, %if.then20.fail_tx_crit_edge ], [ %retval.0.i86100, %do.end36 ]
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %call.i, align 4
  call void @dma_release_channel(ptr noundef %45) #4
  br label %fail_al

fail_al:                                          ; preds = %fail_tx, %if.then8, %if.then5.fail_al_crit_edge
  %ret.1 = phi i32 [ %call9, %if.then8 ], [ -19, %if.then5.fail_al_crit_edge ], [ %ret.0, %fail_tx ]
  call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i) #4
  %46 = inttoptr i32 %ret.1 to ptr
  br label %cleanup

cleanup:                                          ; preds = %fail_al, %dma_chan_name.exit94, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %46, %fail_al ], [ %call.i, %dma_chan_name.exit94 ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %dma_sconfig) #4
  ret ptr %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @stm32_i2c_dma_free(ptr nocapture noundef %dma) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_buf = getelementptr inbounds %struct.stm32_i2c_dma, ptr %dma, i32 0, i32 3
  %0 = ptrtoint ptr %dma_buf to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %dma_buf, align 4
  %dma_len = getelementptr inbounds %struct.stm32_i2c_dma, ptr %dma, i32 0, i32 4
  %1 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %dma_len, align 4
  %2 = ptrtoint ptr %dma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma, align 4
  tail call void @dma_release_channel(ptr noundef %3) #4
  %4 = ptrtoint ptr %dma to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %dma, align 4
  %chan_rx = getelementptr inbounds %struct.stm32_i2c_dma, ptr %dma, i32 0, i32 1
  %5 = ptrtoint ptr %chan_rx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan_rx, align 4
  tail call void @dma_release_channel(ptr noundef %6) #4
  %7 = ptrtoint ptr %chan_rx to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %chan_rx, align 4
  %chan_using = getelementptr inbounds %struct.stm32_i2c_dma, ptr %dma, i32 0, i32 2
  %8 = ptrtoint ptr %chan_using to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %chan_using, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stm32_i2c_prep_dma_xfer(ptr noundef %dev, ptr nocapture noundef %dma, i1 noundef zeroext %rd_wr, i32 noundef %len, ptr noundef %buf, ptr noundef %callback, ptr noundef %dma_async_param) local_unnamed_addr #0 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_rx = getelementptr inbounds %struct.stm32_i2c_dma, ptr %dma, i32 0, i32 1
  %spec.select = select i1 %rd_wr, ptr %chan_rx, ptr %dma
  %spec.select83 = select i1 %rd_wr, i32 2, i32 1
  %0 = ptrtoint ptr %spec.select to i32
  call void @__asan_load4_noabort(i32 %0)
  %.sink82 = load ptr, ptr %spec.select, align 4
  %1 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %dma, i32 0, i32 2
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %.sink82, ptr %1, align 4
  %3 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %dma, i32 0, i32 5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %spec.select83, ptr %3, align 4
  %5 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %dma, i32 0, i32 6
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %spec.select83, ptr %5, align 4
  %dma_len = getelementptr inbounds %struct.stm32_i2c_dma, ptr %dma, i32 0, i32 4
  %7 = ptrtoint ptr %dma_len to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %len, ptr %dma_len, align 4
  %8 = ptrtoint ptr %.sink82 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %.sink82, align 4
  %dev5 = getelementptr inbounds %struct.dma_device, ptr %9, i32 0, i32 15
  %10 = ptrtoint ptr %dev5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev5, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #4
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %entry
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i, !prof !54

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dma_map_single_attrs.exit.thread

if.then.i:                                        ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %11) #4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.dev_name.exit.i_crit_edge

if.then.i.dev_name.exit.i_crit_edge:              ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #6
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %15, %if.end.i.i ], [ %13, %if.then.i.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.25, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.26, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #4
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  %dma_buf72 = getelementptr inbounds %struct.stm32_i2c_dma, ptr %dma, i32 0, i32 3
  %16 = ptrtoint ptr %dma_buf72 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 -1, ptr %dma_buf72, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %11, i32 noundef -1) #4
  br label %do.end

dma_map_single_attrs.exit:                        ; preds = %entry
  tail call void @debug_dma_map_single(ptr noundef %11, ptr noundef %buf, i32 noundef %len) #4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %17 = load ptr, ptr @mem_map, align 4
  %18 = ptrtoint ptr %buf to i32
  %sub.i = add i32 %18, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %17, i32 %shr.i
  %and.i = and i32 %18, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %11, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %len, i32 noundef %spec.select83, i32 noundef 0) #4
  %dma_buf = getelementptr inbounds %struct.stm32_i2c_dma, ptr %dma, i32 0, i32 3
  %19 = ptrtoint ptr %dma_buf to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call41.i, ptr %dma_buf, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %11, i32 noundef %call41.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i = icmp eq i32 %call41.i, -1
  br i1 %cmp.i, label %dma_map_single_attrs.exit.do.end_crit_edge, label %if.end12

dma_map_single_attrs.exit.do.end_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

do.end:                                           ; preds = %dma_map_single_attrs.exit.do.end_crit_edge, %dma_map_single_attrs.exit.thread
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #7
  br label %cleanup

if.end12:                                         ; preds = %dma_map_single_attrs.exit
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %22 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_buf, align 4
  %24 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_len, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %3, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #4
  %28 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %29 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %30 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %23, ptr %28, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %25, ptr %29, align 4
  %tobool.not.i = icmp eq ptr %21, null
  br i1 %tobool.not.i, label %if.end12.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

if.end12.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end12
  %33 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %21, align 4
  %tobool1.not.i = icmp eq ptr %34, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 39
  %35 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %36, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.end12.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #4
  br label %err

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i68 = call ptr %36(ptr noundef nonnull %21, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef %27, i32 noundef 1, ptr noundef null) #4
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #4
  %tobool18.not = icmp eq ptr %call.i68, null
  br i1 %tobool18.not, label %dmaengine_prep_slave_single.exit.err_crit_edge, label %if.end23

dmaengine_prep_slave_single.exit.err_crit_edge:   ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end23:                                         ; preds = %dmaengine_prep_slave_single.exit
  %dma_complete = getelementptr inbounds %struct.stm32_i2c_dma, ptr %dma, i32 0, i32 7
  %37 = ptrtoint ptr %dma_complete to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %dma_complete, align 4
  %callback24 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i68, i32 0, i32 6
  %38 = ptrtoint ptr %callback24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %callback, ptr %callback24, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i68, i32 0, i32 8
  %39 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dma_async_param, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i68, i32 0, i32 4
  %40 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_submit.i, align 4
  %call.i70 = call i32 %41(ptr noundef nonnull %call.i68) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %cmp = icmp slt i32 %call.i70, 0
  br i1 %cmp, label %if.end23.err_crit_edge, label %if.end31

if.end23.err_crit_edge:                           ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  br label %err

if.end31:                                         ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #6
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %45, i32 0, i32 50
  %46 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %device_issue_pending.i, align 4
  call void %47(ptr noundef %43) #4
  br label %cleanup

err:                                              ; preds = %if.end23.err_crit_edge, %dmaengine_prep_slave_single.exit.err_crit_edge, %dmaengine_prep_slave_single.exit.thread
  %.str.22.sink = phi ptr [ @.str.19, %dmaengine_prep_slave_single.exit.thread ], [ @.str.19, %dmaengine_prep_slave_single.exit.err_crit_edge ], [ @.str.22, %if.end23.err_crit_edge ]
  %ret.0 = phi i32 [ -22, %dmaengine_prep_slave_single.exit.thread ], [ -22, %dmaengine_prep_slave_single.exit.err_crit_edge ], [ %call.i70, %if.end23.err_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.22.sink) #7
  %48 = ptrtoint ptr %dma_buf to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dma_buf, align 4
  %50 = ptrtoint ptr %dma_len to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_len, align 4
  %52 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %5, align 4
  call void @dma_unmap_page_attrs(ptr noundef %11, i32 noundef %49, i32 noundef %51, i32 noundef %53, i32 noundef 0) #4
  br label %cleanup

cleanup:                                          ; preds = %err, %if.end31, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ %ret.0, %err ], [ 0, %if.end31 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

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
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 26)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !8, !9, !10, !11, !12, !14, !16, !18, !19, !20, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !44}
!llvm.module.flags = !{!45, !46, !47, !48, !49, !50, !51, !52}
!llvm.ident = !{!53}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/i2c/busses/i2c-stm32.c", i32 26, i32 39}
!2 = !{ptr @.str.1, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/i2c/busses/i2c-stm32.c", i32 31, i32 10}
!4 = !{ptr @.str.2, !5, !"<string literal>", i1 false, i1 false}
!5 = !{!"../drivers/i2c/busses/i2c-stm32.c", i32 42, i32 3}
!6 = !{ptr @.str.3, !5, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !5, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @.str.5, !5, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.6, !5, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @stm32_i2c_dma_request._entry, !5, !"_entry", i1 false, i1 false}
!11 = !{ptr @stm32_i2c_dma_request._entry_ptr, !5, !"_entry_ptr", i1 false, i1 false}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/i2c/busses/i2c-stm32.c", i32 47, i32 39}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/i2c/busses/i2c-stm32.c", i32 52, i32 10}
!16 = !{ptr @.str.10, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/i2c/busses/i2c-stm32.c", i32 64, i32 3}
!18 = !{ptr @stm32_i2c_dma_request._entry.9, !17, !"_entry", i1 false, i1 false}
!19 = !{ptr @stm32_i2c_dma_request._entry_ptr.11, !17, !"_entry_ptr", i1 false, i1 false}
!20 = !{ptr @.str.13, !21, !"<string literal>", i1 false, i1 false}
!21 = !{!"../drivers/i2c/busses/i2c-stm32.c", i32 70, i32 2}
!22 = !{ptr @.str.14, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @stm32_i2c_dma_request._entry.12, !21, !"_entry", i1 false, i1 false}
!24 = !{ptr @stm32_i2c_dma_request._entry_ptr.15, !21, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.16, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/i2c/busses/i2c-stm32.c", i32 124, i32 3}
!27 = !{ptr @.str.17, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @stm32_i2c_prep_dma_xfer._entry, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @stm32_i2c_prep_dma_xfer._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.19, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/i2c/busses/i2c-stm32.c", i32 133, i32 3}
!32 = !{ptr @stm32_i2c_prep_dma_xfer._entry.18, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @stm32_i2c_prep_dma_xfer._entry_ptr.20, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.22, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/i2c/busses/i2c-stm32.c", i32 144, i32 3}
!36 = !{ptr @stm32_i2c_prep_dma_xfer._entry.21, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @stm32_i2c_prep_dma_xfer._entry_ptr.23, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @init_completion.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../include/linux/completion.h", i32 87, i32 2}
!40 = !{ptr @.str.24, !39, !"<string literal>", i1 false, i1 false}
!41 = distinct !{null, !42, !"__already_done", i1 false, i1 false}
!42 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!43 = !{ptr @.str.25, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @.str.26, !42, !"<string literal>", i1 false, i1 false}
!45 = !{i32 1, !"wchar_size", i32 2}
!46 = !{i32 1, !"min_enum_size", i32 4}
!47 = !{i32 8, !"branch-target-enforcement", i32 0}
!48 = !{i32 8, !"sign-return-address", i32 0}
!49 = !{i32 8, !"sign-return-address-all", i32 0}
!50 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!51 = !{i32 7, !"uwtable", i32 1}
!52 = !{i32 7, !"frame-pointer", i32 2}
!53 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!54 = !{!"branch_weights", i32 2000, i32 1}
