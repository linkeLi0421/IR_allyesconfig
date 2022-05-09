; ModuleID = '/llk/IR_all_yes/drivers/dma/dw-edma/dw-edma-core.c_pt.bc'
source_filename = "../drivers/dma/dw-edma/dw-edma-core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+dw_edma_probe\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_edma_probe\09\09\09\09"
module asm "\09.long\09__crc_dw_edma_probe\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_edma_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_edma_probe\22\09\09\09\09\09"
module asm "__kstrtabns_dw_edma_probe:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+dw_edma_remove\22, \22a\22\09"
module asm "\09.weak\09__crc_dw_edma_remove\09\09\09\09"
module asm "\09.long\09__crc_dw_edma_remove\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_dw_edma_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22dw_edma_remove\22\09\09\09\09\09"
module asm "__kstrtabns_dw_edma_remove:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.dw_edma_chip = type { ptr, i32, i32, ptr }
%struct.dw_edma = type { [20 x i8], %struct.dma_device, i16, %struct.dma_device, i16, %struct.dw_edma_region, [8 x %struct.dw_edma_region], [8 x %struct.dw_edma_region], [8 x %struct.dw_edma_region], [8 x %struct.dw_edma_region], ptr, i32, i32, ptr, ptr, %struct.raw_spinlock, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.dw_edma_region = type { i32, ptr, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.dw_edma_irq = type { %struct.msi_msg, i32, i32, ptr }
%struct.msi_msg = type { %union.anon.70, %union.anon.71, %union.anon.72 }
%union.anon.70 = type { i32 }
%union.anon.71 = type { i32 }
%union.anon.72 = type { i32 }
%struct.irq_data = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr }
%struct.irq_common_data = type { i32, ptr, ptr, ptr, ptr, i32 }
%struct.dw_edma_chan = type { %struct.virt_dma_chan, ptr, i32, i32, i32, %struct.msi_msg, i32, i32, i8, %struct.dma_slave_config }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.73, i32 }
%union.anon.73 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.dw_edma_chunk = type { %struct.list_head, ptr, ptr, i32, i8, %struct.dw_edma_region }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dw_edma_desc = type { %struct.virt_dma_desc, ptr, ptr, i32, i32, i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.dw_edma_transfer = type { ptr, %union.dw_edma_xfer, i32, i32, i32 }
%union.dw_edma_xfer = type { %struct.dw_edma_cyclic }
%struct.dw_edma_cyclic = type { i32, i32, i32 }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dw_edma_burst = type { %struct.list_head, i64, i64, i32 }

@dw_edma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&dw->lock\00", [22 x i8] zeroinitializer }, align 32
@dw_edma_probe.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, i8 0, i8 -25, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.1 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dw_edma\00", [24 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"dw_edma_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/dma/dw-edma/dw-edma-core.c\00", [61 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Channels:\09write=%d, read=%d\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dw-edma-core:%d\00", [16 x i8] zeroinitializer }, align 32
@__kstrtab_dw_edma_probe = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_edma_probe = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_edma_probe = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_edma_probe to i32), ptr @__kstrtab_dw_edma_probe, ptr @__kstrtabns_dw_edma_probe }, section "___ksymtab_gpl+dw_edma_probe", align 4
@__kstrtab_dw_edma_remove = external dso_local constant [0 x i8], align 1
@__kstrtabns_dw_edma_remove = external dso_local constant [0 x i8], align 1
@__ksymtab_dw_edma_remove = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @dw_edma_remove to i32), ptr @__kstrtab_dw_edma_remove, ptr @__kstrtabns_dw_edma_remove }, section "___ksymtab_gpl+dw_edma_remove", align 4
@__UNIQUE_ID_file251 = internal constant [41 x i8] c"dw_edma.file=drivers/dma/dw-edma/dw-edma\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [23 x i8] c"dw_edma.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description253 = internal constant [68 x i8] c"dw_edma.description=Synopsys DesignWare eDMA controller core driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author254 = internal constant [64 x i8] c"dw_edma.author=Gustavo Pimentel <gustavo.pimentel@synopsys.com>\00", section ".modinfo", align 1
@vchan_cookie_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.6, ptr @.str.7, ptr @.str.8, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"drivers/dma/dw-edma/../virt-dma.h\00", [62 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@dw_edma_channel_setup.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.10, i8 0, i8 -71, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.9 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"dw_edma_channel_setup\00", [42 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"L. List:\09Channel %s[%u] max_cnt=%u\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"write\00", [26 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"read\00", [27 x i8] zeroinitializer }, align 32
@dw_edma_channel_setup.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.1, ptr @.str.9, ptr @.str.3, ptr @.str.13, i8 0, i8 -66, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.13 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"MSI:\09\09Channel %s[%u] addr=0x%.8x%.8x, data=0x%.8x\0A\00", [45 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.14 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.15 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.16 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.17 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.18 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.20 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.21 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.22 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.23 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@___asan_gen_.24 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 911, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 924, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 933, i32 39 }
@___asan_gen_.52 = private unnamed_addr constant [37 x i8] c"../drivers/dma/dw-edma/../virt-dma.h\00", align 1
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.52, i32 101, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 742, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.67 = private constant [38 x i8] c"../drivers/dma/dw-edma/dw-edma-core.c\00", align 1
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.67, i32 760, i32 3 }
@llvm.compiler.used = appending global [21 x ptr] [ptr @__UNIQUE_ID_author254, ptr @__UNIQUE_ID_description253, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__ksymtab_dw_edma_probe, ptr @__ksymtab_dw_edma_remove, ptr @dw_edma_probe.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13], section "llvm.metadata"
@0 = internal global [15 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dw_edma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_edma_probe(ptr noundef %chip) #0 align 64 {
entry:
  %wr_alloc = alloca i32, align 4
  %rd_alloc = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %wr_alloc) #9
  %0 = ptrtoint ptr %wr_alloc to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 0, ptr %wr_alloc, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %rd_alloc) #9
  %1 = ptrtoint ptr %rd_alloc to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %rd_alloc, align 4
  %tobool.not = icmp eq ptr %chip, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %tobool2.not = icmp eq ptr %3, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %dw5 = getelementptr inbounds %struct.dw_edma_chip, ptr %chip, i32 0, i32 3
  %4 = ptrtoint ptr %dw5 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dw5, align 4
  %tobool6.not = icmp eq ptr %5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %lor.lhs.false

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end4
  %irq = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 10
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %irq, align 4
  %tobool7.not = icmp eq ptr %7, null
  br i1 %tobool7.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false8

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false8:                                   ; preds = %lor.lhs.false
  %ops = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 14
  %8 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ops, align 4
  %tobool9.not = icmp eq ptr %9, null
  br i1 %tobool9.not, label %lor.lhs.false8.cleanup_crit_edge, label %lor.lhs.false10

lor.lhs.false8.cleanup_crit_edge:                 ; preds = %lor.lhs.false8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false10:                                  ; preds = %lor.lhs.false8
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool12.not = icmp eq ptr %11, null
  br i1 %tobool12.not, label %lor.lhs.false10.cleanup_crit_edge, label %do.body

lor.lhs.false10.cleanup_crit_edge:                ; preds = %lor.lhs.false10
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body:                                          ; preds = %lor.lhs.false10
  %lock = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str, ptr noundef nonnull @dw_edma_probe.__key, i16 noundef signext 2) #9
  %wr_ch_cnt = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %wr_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %12)
  %13 = load i16, ptr %wr_ch_cnt, align 4
  %call = tail call zeroext i16 @dw_edma_v0_core_ch_count(ptr noundef nonnull %5, i32 noundef 0) #9
  %14 = tail call i16 @llvm.umin.i16(i16 %13, i16 %call)
  %15 = tail call i16 @llvm.umin.i16(i16 %14, i16 8)
  %16 = ptrtoint ptr %wr_ch_cnt to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 %15, ptr %wr_ch_cnt, align 4
  %rd_ch_cnt = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %rd_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %rd_ch_cnt, align 4
  %call35 = tail call zeroext i16 @dw_edma_v0_core_ch_count(ptr noundef nonnull %5, i32 noundef 1) #9
  %19 = tail call i16 @llvm.umin.i16(i16 %18, i16 %call35)
  %20 = tail call i16 @llvm.umin.i16(i16 %19, i16 8)
  %21 = ptrtoint ptr %rd_ch_cnt to i32
  call void @__asan_store2_noabort(i32 %21)
  store i16 %20, ptr %rd_ch_cnt, align 4
  %22 = ptrtoint ptr %wr_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %22)
  %23 = load i16, ptr %wr_ch_cnt, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %23)
  %tobool64.not = icmp eq i16 %23, 0
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %20)
  %tobool66.not = icmp eq i16 %20, 0
  %or.cond = select i1 %tobool64.not, i1 %tobool66.not, i1 false
  br i1 %or.cond, label %do.body.cleanup_crit_edge, label %do.body69

do.body.cleanup_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body69:                                        ; preds = %do.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_edma_probe.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_probe, %devm_kcalloc.exit)) #9
          to label %if.then76 [label %devm_kcalloc.exit], !srcloc !45

if.then76:                                        ; preds = %do.body69
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %wr_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %24)
  %25 = load i16, ptr %wr_ch_cnt, align 4
  %conv78 = zext i16 %25 to i32
  %26 = ptrtoint ptr %rd_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %rd_ch_cnt, align 4
  %conv80 = zext i16 %27 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_edma_probe.__UNIQUE_ID_ddebug250, ptr noundef nonnull %3, ptr noundef nonnull @.str.4, i32 noundef %conv78, i32 noundef %conv80) #9
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %if.then76, %do.body69
  %28 = ptrtoint ptr %wr_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %wr_ch_cnt, align 4
  %conv85 = zext i16 %29 to i32
  %30 = ptrtoint ptr %rd_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rd_ch_cnt, align 4
  %conv87 = zext i16 %31 to i32
  %add = add nuw nsw i32 %conv87, %conv85
  %32 = mul nuw nsw i32 %add, 268
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef nonnull %3, i32 noundef %32, i32 noundef 3520) #9
  %chan = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 13
  %33 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call5.i.i, ptr %chan, align 4
  %tobool90.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool90.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end92

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end92:                                         ; preds = %devm_kcalloc.exit
  %id = getelementptr inbounds %struct.dw_edma_chip, ptr %chip, i32 0, i32 1
  %34 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %id, align 4
  %call93 = tail call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %5, i32 noundef 20, ptr noundef nonnull @.str.5, i32 noundef %35)
  tail call void @dw_edma_v0_core_off(ptr noundef nonnull %5) #9
  %call94 = call fastcc i32 @dw_edma_irq_request(ptr noundef nonnull %chip, ptr noundef nonnull %wr_alloc, ptr noundef nonnull %rd_alloc)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end97, label %if.end92.cleanup_crit_edge

if.end92.cleanup_crit_edge:                       ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end97:                                         ; preds = %if.end92
  %36 = ptrtoint ptr %wr_alloc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %wr_alloc, align 4
  %38 = ptrtoint ptr %rd_alloc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %rd_alloc, align 4
  %call98 = tail call fastcc i32 @dw_edma_channel_setup(ptr noundef nonnull %chip, i1 noundef zeroext true, i32 noundef %37, i32 noundef %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end101, label %if.end97.err_irq_free_crit_edge

if.end97.err_irq_free_crit_edge:                  ; preds = %if.end97
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_irq_free

if.end101:                                        ; preds = %if.end97
  %call102 = tail call fastcc i32 @dw_edma_channel_setup(ptr noundef nonnull %chip, i1 noundef zeroext false, i32 noundef %37, i32 noundef %39)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call102)
  %tobool103.not = icmp eq i32 %call102, 0
  br i1 %tobool103.not, label %if.end105, label %if.end101.err_irq_free_crit_edge

if.end101.err_irq_free_crit_edge:                 ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  br label %err_irq_free

if.end105:                                        ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @pm_runtime_enable(ptr noundef nonnull %3) #9
  tail call void @dw_edma_v0_core_debugfs_on(ptr noundef nonnull %chip) #9
  br label %cleanup

err_irq_free:                                     ; preds = %if.end101.err_irq_free_crit_edge, %if.end97.err_irq_free_crit_edge
  %err.0 = phi i32 [ %call98, %if.end97.err_irq_free_crit_edge ], [ %call102, %if.end101.err_irq_free_crit_edge ]
  %nr_irqs = getelementptr inbounds %struct.dw_edma, ptr %5, i32 0, i32 11
  %40 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %nr_irqs, align 4
  %i.0179 = add i32 %41, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0179)
  %cmp106180 = icmp sgt i32 %i.0179, -1
  br i1 %cmp106180, label %err_irq_free.for.body_crit_edge, label %err_irq_free.for.end_crit_edge

err_irq_free.for.end_crit_edge:                   ; preds = %err_irq_free
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

err_irq_free.for.body_crit_edge:                  ; preds = %err_irq_free
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %err_irq_free.for.body_crit_edge
  %i.0181 = phi i32 [ %i.0, %for.body.for.body_crit_edge ], [ %i.0179, %err_irq_free.for.body_crit_edge ]
  %42 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ops, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %43, align 4
  %call110 = tail call i32 %45(ptr noundef nonnull %3, i32 noundef %i.0181) #9
  %46 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %irq, align 4
  %arrayidx = getelementptr %struct.dw_edma_irq, ptr %47, i32 %i.0181
  %call112 = tail call ptr @free_irq(i32 noundef %call110, ptr noundef %arrayidx) #9
  %i.0 = add nsw i32 %i.0181, -1
  %cmp106 = icmp sgt i32 %i.0181, 0
  br i1 %cmp106, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %err_irq_free.for.end_crit_edge
  %48 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %nr_irqs, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end105, %if.end92.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %do.body.cleanup_crit_edge, %lor.lhs.false10.cleanup_crit_edge, %lor.lhs.false8.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %err.0, %for.end ], [ 0, %if.end105 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -22, %lor.lhs.false10.cleanup_crit_edge ], [ -22, %lor.lhs.false8.cleanup_crit_edge ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %if.end4.cleanup_crit_edge ], [ -22, %do.body.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call94, %if.end92.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %rd_alloc) #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %wr_alloc) #9
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i16 @dw_edma_v0_core_ch_count(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_edma_v0_core_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw_edma_irq_request(ptr nocapture noundef readonly %chip, ptr nocapture noundef %wr_alloc, ptr nocapture noundef %rd_alloc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %dw2 = getelementptr inbounds %struct.dw_edma_chip, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %dw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dw2, align 4
  %wr_ch_cnt = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %wr_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wr_ch_cnt, align 4
  %conv = zext i16 %5 to i32
  %rd_ch_cnt = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 4
  %6 = ptrtoint ptr %rd_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %rd_ch_cnt, align 4
  %conv3 = zext i16 %7 to i32
  %add = add nuw nsw i32 %conv3, %conv
  %nr_irqs = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 11
  %8 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp = icmp slt i32 %9, 1
  br i1 %cmp, label %entry.cleanup55_crit_edge, label %if.end

entry.cleanup55_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup55

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cond163 = icmp eq i32 %9, 1
  br i1 %cond163, label %if.then8, label %if.end.land.rhs_crit_edge

if.end.land.rhs_crit_edge:                        ; preds = %if.end
  br label %land.rhs

if.then8:                                         ; preds = %if.end
  %ops = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 14
  %10 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ops, align 4
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %11, align 4
  %call = tail call i32 %13(ptr noundef %1, i32 noundef 0) #9
  %irq9 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 10
  %14 = ptrtoint ptr %irq9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %irq9, align 4
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call, ptr noundef nonnull @dw_edma_interrupt_common, ptr noundef null, i32 noundef 128, ptr noundef %3, ptr noundef %15) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end13, label %if.then11

if.then11:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %nr_irqs, align 4
  br label %cleanup55

if.end13:                                         ; preds = %if.then8
  %call.i108 = tail call ptr @irq_get_irq_data(i32 noundef %call) #9
  %tobool.not.i = icmp eq ptr %call.i108, null
  br i1 %tobool.not.i, label %if.end13.cleanup55_crit_edge, label %irq_get_msi_desc.exit

if.end13.cleanup55_crit_edge:                     ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup55

irq_get_msi_desc.exit:                            ; preds = %if.end13
  %common.i = getelementptr inbounds %struct.irq_data, ptr %call.i108, i32 0, i32 3
  %17 = ptrtoint ptr %common.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %common.i, align 4
  %msi_desc.i = getelementptr inbounds %struct.irq_common_data, ptr %18, i32 0, i32 2
  %19 = ptrtoint ptr %msi_desc.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %msi_desc.i, align 4
  %tobool15.not = icmp eq ptr %20, null
  br i1 %tobool15.not, label %irq_get_msi_desc.exit.cleanup55_crit_edge, label %if.then16

irq_get_msi_desc.exit.cleanup55_crit_edge:        ; preds = %irq_get_msi_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup55

if.then16:                                        ; preds = %irq_get_msi_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %21 = ptrtoint ptr %irq9 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %irq9, align 4
  tail call void @get_cached_msi_msg(i32 noundef %call, ptr noundef %22) #9
  br label %cleanup55

land.rhs:                                         ; preds = %dw_edma_dec_irq_alloc.exit117.land.rhs_crit_edge, %if.end.land.rhs_crit_edge
  %tmp.0154 = phi i32 [ %tmp.2, %dw_edma_dec_irq_alloc.exit117.land.rhs_crit_edge ], [ %9, %if.end.land.rhs_crit_edge ]
  %23 = ptrtoint ptr %wr_alloc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %wr_alloc, align 4
  %25 = ptrtoint ptr %rd_alloc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %rd_alloc, align 4
  %add22 = add i32 %26, %24
  call void @__sanitizer_cov_trace_cmp4(i32 %add22, i32 %add)
  %cmp23 = icmp ult i32 %add22, %add
  br i1 %cmp23, label %land.lhs.true.i, label %land.rhs.while.end_crit_edge

land.rhs.while.end_crit_edge:                     ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.lhs.true.i:                                  ; preds = %land.rhs
  %27 = ptrtoint ptr %wr_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %wr_ch_cnt, align 4
  %conv.i = zext i16 %28 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %24, i32 %conv.i)
  %cmp.i = icmp ult i32 %24, %conv.i
  br i1 %cmp.i, label %dw_edma_dec_irq_alloc.exit, label %land.lhs.true.i.land.lhs.true.i113_crit_edge

land.lhs.true.i.land.lhs.true.i113_crit_edge:     ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i113

dw_edma_dec_irq_alloc.exit:                       ; preds = %land.lhs.true.i
  %inc.i = add nuw i32 %24, 1
  %29 = ptrtoint ptr %wr_alloc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %inc.i, ptr %wr_alloc, align 4
  %dec.i = add i32 %tmp.0154, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool.not.i110 = icmp eq i32 %dec.i, 0
  br i1 %tobool.not.i110, label %dw_edma_dec_irq_alloc.exit.while.end_crit_edge, label %dw_edma_dec_irq_alloc.exit.land.lhs.true.i113_crit_edge

dw_edma_dec_irq_alloc.exit.land.lhs.true.i113_crit_edge: ; preds = %dw_edma_dec_irq_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true.i113

dw_edma_dec_irq_alloc.exit.while.end_crit_edge:   ; preds = %dw_edma_dec_irq_alloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

land.lhs.true.i113:                               ; preds = %dw_edma_dec_irq_alloc.exit.land.lhs.true.i113_crit_edge, %land.lhs.true.i.land.lhs.true.i113_crit_edge
  %tmp.1147 = phi i32 [ %dec.i, %dw_edma_dec_irq_alloc.exit.land.lhs.true.i113_crit_edge ], [ %tmp.0154, %land.lhs.true.i.land.lhs.true.i113_crit_edge ]
  %30 = ptrtoint ptr %rd_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %30)
  %31 = load i16, ptr %rd_ch_cnt, align 4
  %32 = ptrtoint ptr %rd_alloc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %rd_alloc, align 4
  %conv.i111 = zext i16 %31 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %33, i32 %conv.i111)
  %cmp.i112 = icmp ult i32 %33, %conv.i111
  br i1 %cmp.i112, label %if.then.i116, label %land.lhs.true.i113.dw_edma_dec_irq_alloc.exit117_crit_edge

land.lhs.true.i113.dw_edma_dec_irq_alloc.exit117_crit_edge: ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_edma_dec_irq_alloc.exit117

if.then.i116:                                     ; preds = %land.lhs.true.i113
  call void @__sanitizer_cov_trace_pc() #11
  %inc.i114 = add nuw i32 %33, 1
  %34 = ptrtoint ptr %rd_alloc to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %inc.i114, ptr %rd_alloc, align 4
  %dec.i115 = add i32 %tmp.1147, -1
  br label %dw_edma_dec_irq_alloc.exit117

dw_edma_dec_irq_alloc.exit117:                    ; preds = %if.then.i116, %land.lhs.true.i113.dw_edma_dec_irq_alloc.exit117_crit_edge
  %tmp.2 = phi i32 [ %dec.i115, %if.then.i116 ], [ %tmp.1147, %land.lhs.true.i113.dw_edma_dec_irq_alloc.exit117_crit_edge ]
  %tobool21.not = icmp eq i32 %tmp.2, 0
  br i1 %tobool21.not, label %dw_edma_dec_irq_alloc.exit117.while.end_crit_edge, label %dw_edma_dec_irq_alloc.exit117.land.rhs_crit_edge

dw_edma_dec_irq_alloc.exit117.land.rhs_crit_edge: ; preds = %dw_edma_dec_irq_alloc.exit117
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.rhs

dw_edma_dec_irq_alloc.exit117.while.end_crit_edge: ; preds = %dw_edma_dec_irq_alloc.exit117
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.end:                                        ; preds = %dw_edma_dec_irq_alloc.exit117.while.end_crit_edge, %dw_edma_dec_irq_alloc.exit.while.end_crit_edge, %land.rhs.while.end_crit_edge
  %35 = ptrtoint ptr %wr_alloc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %wr_alloc, align 4
  %37 = ptrtoint ptr %wr_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %wr_ch_cnt, align 4
  %conv.i118 = zext i16 %38 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %36, i32 %conv.i118)
  %cmp4.i = icmp ult i32 %36, %conv.i118
  br i1 %cmp4.i, label %while.end.while.body.i_crit_edge, label %while.end.dw_edma_add_irq_mask.exit_crit_edge

while.end.dw_edma_add_irq_mask.exit_crit_edge:    ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_edma_add_irq_mask.exit

while.end.while.body.i_crit_edge:                 ; preds = %while.end
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %while.end.while.body.i_crit_edge
  %39 = phi i32 [ %inc.i119, %while.body.i.while.body.i_crit_edge ], [ 1, %while.end.while.body.i_crit_edge ]
  %inc.i119 = add i32 %39, 1
  %mul.i = mul i32 %inc.i119, %36
  %cmp.i120 = icmp ult i32 %mul.i, %conv.i118
  br i1 %cmp.i120, label %while.body.i.while.body.i_crit_edge, label %while.body.i.dw_edma_add_irq_mask.exit_crit_edge

while.body.i.dw_edma_add_irq_mask.exit_crit_edge: ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_edma_add_irq_mask.exit

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i

dw_edma_add_irq_mask.exit:                        ; preds = %while.body.i.dw_edma_add_irq_mask.exit_crit_edge, %while.end.dw_edma_add_irq_mask.exit_crit_edge
  %40 = ptrtoint ptr %rd_alloc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %rd_alloc, align 4
  %42 = ptrtoint ptr %rd_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %rd_ch_cnt, align 4
  %conv.i121 = zext i16 %43 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %41, i32 %conv.i121)
  %cmp4.i124 = icmp ult i32 %41, %conv.i121
  br i1 %cmp4.i124, label %dw_edma_add_irq_mask.exit.while.body.i128_crit_edge, label %dw_edma_add_irq_mask.exit.dw_edma_add_irq_mask.exit130_crit_edge

dw_edma_add_irq_mask.exit.dw_edma_add_irq_mask.exit130_crit_edge: ; preds = %dw_edma_add_irq_mask.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_edma_add_irq_mask.exit130

dw_edma_add_irq_mask.exit.while.body.i128_crit_edge: ; preds = %dw_edma_add_irq_mask.exit
  br label %while.body.i128

while.body.i128:                                  ; preds = %while.body.i128.while.body.i128_crit_edge, %dw_edma_add_irq_mask.exit.while.body.i128_crit_edge
  %44 = phi i32 [ %inc.i125, %while.body.i128.while.body.i128_crit_edge ], [ 1, %dw_edma_add_irq_mask.exit.while.body.i128_crit_edge ]
  %inc.i125 = add i32 %44, 1
  %mul.i126 = mul i32 %inc.i125, %41
  %cmp.i127 = icmp ult i32 %mul.i126, %conv.i121
  br i1 %cmp.i127, label %while.body.i128.while.body.i128_crit_edge, label %while.body.i128.dw_edma_add_irq_mask.exit130_crit_edge

while.body.i128.dw_edma_add_irq_mask.exit130_crit_edge: ; preds = %while.body.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_edma_add_irq_mask.exit130

while.body.i128.while.body.i128_crit_edge:        ; preds = %while.body.i128
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body.i128

dw_edma_add_irq_mask.exit130:                     ; preds = %while.body.i128.dw_edma_add_irq_mask.exit130_crit_edge, %dw_edma_add_irq_mask.exit.dw_edma_add_irq_mask.exit130_crit_edge
  %45 = ptrtoint ptr %wr_alloc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %wr_alloc, align 4
  %47 = ptrtoint ptr %rd_alloc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %rd_alloc, align 4
  %add29155 = sub i32 0, %46
  call void @__sanitizer_cov_trace_cmp4(i32 %48, i32 %add29155)
  %cmp30156.not = icmp eq i32 %48, %add29155
  br i1 %cmp30156.not, label %dw_edma_add_irq_mask.exit130.cleanup_crit_edge, label %for.body.lr.ph

dw_edma_add_irq_mask.exit130.cleanup_crit_edge:   ; preds = %dw_edma_add_irq_mask.exit130
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %dw_edma_add_irq_mask.exit130
  %ops32 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 14
  %irq39 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0157 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %49 = ptrtoint ptr %ops32 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %ops32, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %50, align 4
  %call34 = tail call i32 %52(ptr noundef %1, i32 noundef %i.0157) #9
  %53 = ptrtoint ptr %wr_alloc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %wr_alloc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0157, i32 %54)
  %cmp35 = icmp ult i32 %i.0157, %54
  %cond = select i1 %cmp35, ptr @dw_edma_interrupt_write, ptr @dw_edma_interrupt_read
  %55 = ptrtoint ptr %irq39 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %irq39, align 4
  %arrayidx40 = getelementptr %struct.dw_edma_irq, ptr %56, i32 %i.0157
  %call.i131 = tail call i32 @request_threaded_irq(i32 noundef %call34, ptr noundef nonnull %cond, ptr noundef null, i32 noundef 128, ptr noundef %3, ptr noundef %arrayidx40) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i131)
  %tobool42.not = icmp eq i32 %call.i131, 0
  br i1 %tobool42.not, label %if.end45, label %cleanup.thread

cleanup.thread:                                   ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %57 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %i.0157, ptr %nr_irqs, align 4
  br label %cleanup55

if.end45:                                         ; preds = %for.body
  %call.i132 = tail call ptr @irq_get_irq_data(i32 noundef %call34) #9
  %tobool.not.i133 = icmp eq ptr %call.i132, null
  br i1 %tobool.not.i133, label %if.end45.for.inc_crit_edge, label %irq_get_msi_desc.exit138

if.end45.for.inc_crit_edge:                       ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

irq_get_msi_desc.exit138:                         ; preds = %if.end45
  %common.i134 = getelementptr inbounds %struct.irq_data, ptr %call.i132, i32 0, i32 3
  %58 = ptrtoint ptr %common.i134 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %common.i134, align 4
  %msi_desc.i135 = getelementptr inbounds %struct.irq_common_data, ptr %59, i32 0, i32 2
  %60 = ptrtoint ptr %msi_desc.i135 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %msi_desc.i135, align 4
  %tobool47.not = icmp eq ptr %61, null
  br i1 %tobool47.not, label %irq_get_msi_desc.exit138.for.inc_crit_edge, label %if.then48

irq_get_msi_desc.exit138.for.inc_crit_edge:       ; preds = %irq_get_msi_desc.exit138
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then48:                                        ; preds = %irq_get_msi_desc.exit138
  call void @__sanitizer_cov_trace_pc() #11
  %62 = ptrtoint ptr %irq39 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %irq39, align 4
  %arrayidx50 = getelementptr %struct.dw_edma_irq, ptr %63, i32 %i.0157
  tail call void @get_cached_msi_msg(i32 noundef %call34, ptr noundef %arrayidx50) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then48, %irq_get_msi_desc.exit138.for.inc_crit_edge, %if.end45.for.inc_crit_edge
  %inc = add nuw i32 %i.0157, 1
  %64 = ptrtoint ptr %wr_alloc to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %wr_alloc, align 4
  %66 = ptrtoint ptr %rd_alloc to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %rd_alloc, align 4
  %add29 = add i32 %67, %65
  %cmp30 = icmp ult i32 %inc, %add29
  br i1 %cmp30, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %dw_edma_add_irq_mask.exit130.cleanup_crit_edge
  %i.0.lcssa = phi i32 [ 0, %dw_edma_add_irq_mask.exit130.cleanup_crit_edge ], [ %inc, %for.inc.cleanup_crit_edge ]
  %68 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %i.0.lcssa, ptr %nr_irqs, align 4
  br label %cleanup55

cleanup55:                                        ; preds = %cleanup, %cleanup.thread, %if.then16, %irq_get_msi_desc.exit.cleanup55_crit_edge, %if.end13.cleanup55_crit_edge, %if.then11, %entry.cleanup55_crit_edge
  %retval.1 = phi i32 [ %call.i, %if.then11 ], [ -22, %entry.cleanup55_crit_edge ], [ %call.i131, %cleanup.thread ], [ 0, %if.then16 ], [ 0, %irq_get_msi_desc.exit.cleanup55_crit_edge ], [ 0, %cleanup ], [ 0, %if.end13.cleanup55_crit_edge ]
  ret i32 %retval.1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dw_edma_channel_setup(ptr noundef %chip, i1 noundef zeroext %write, i32 noundef %wr_alloc, i32 noundef %rd_alloc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %dw2 = getelementptr inbounds %struct.dw_edma_chip, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %dw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dw2, align 4
  %wr_ch_cnt = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 2
  br i1 %write, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wr_edma = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %wr_ch_cnt to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %wr_ch_cnt, align 4
  %conv4 = zext i16 %5 to i32
  %rd_ch_cnt = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 4
  %rd_edma = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 3
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %cond37 = phi ptr [ @.str.12, %if.else ], [ @.str.11, %if.then ]
  %dma.0 = phi ptr [ %rd_edma, %if.else ], [ %wr_edma, %if.then ]
  %alloc.0 = phi i32 [ %rd_alloc, %if.else ], [ %wr_alloc, %if.then ]
  %off_alloc.0 = phi i32 [ %wr_alloc, %if.else ], [ 0, %if.then ]
  %i.0 = phi i32 [ %conv4, %if.else ], [ 0, %if.then ]
  %cnt.0.in.in = phi ptr [ %rd_ch_cnt, %if.else ], [ %wr_ch_cnt, %if.then ]
  %6 = ptrtoint ptr %cnt.0.in.in to i32
  call void @__asan_load2_noabort(i32 %6)
  %cnt.0.in = load i16, ptr %cnt.0.in.in, align 4
  %cnt.0 = zext i16 %cnt.0.in to i32
  %channels = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 3
  %7 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 3, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %channels, ptr %prev.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %alloc.0)
  %tobool6.not = icmp eq i32 %alloc.0, 0
  %nr_irqs = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 11
  %chan10 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 13
  %not.write = xor i1 %write, true
  %cond = zext i1 %not.write to i32
  %irq46 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 10
  br label %for.cond

for.cond:                                         ; preds = %if.end105, %if.end
  %i.1 = phi i32 [ %i.0, %if.end ], [ %inc107, %if.end105 ]
  %j.0 = phi i32 [ 0, %if.end ], [ %inc, %if.end105 ]
  br i1 %tobool6.not, label %lor.lhs.false, label %land.rhs

lor.lhs.false:                                    ; preds = %for.cond
  %9 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp = icmp eq i32 %10, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0, i32 %cnt.0)
  %cmp8 = icmp ult i32 %j.0, %cnt.0
  %or.cond = select i1 %cmp, i1 %cmp8, i1 false
  br i1 %or.cond, label %lor.lhs.false.for.body_crit_edge, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

lor.lhs.false.for.body_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

land.rhs:                                         ; preds = %for.cond
  call void @__sanitizer_cov_trace_cmp4(i32 %j.0, i32 %cnt.0)
  %cmp8.old = icmp ult i32 %j.0, %cnt.0
  br i1 %cmp8.old, label %land.rhs.for.body_crit_edge, label %land.rhs.for.end_crit_edge

land.rhs.for.end_crit_edge:                       ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

land.rhs.for.body_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %land.rhs.for.body_crit_edge, %lor.lhs.false.for.body_crit_edge
  %11 = ptrtoint ptr %chan10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan10, align 4
  %arrayidx = getelementptr %struct.dw_edma_chan, ptr %12, i32 %i.1
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %1, i32 noundef 12, i32 noundef 3520) #9
  %tobool11.not = icmp eq ptr %call.i, null
  br i1 %tobool11.not, label %for.body.cleanup_crit_edge, label %if.end13

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end13:                                         ; preds = %for.body
  %private = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 14
  %13 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i, ptr %private, align 4
  %chip15 = getelementptr %struct.dw_edma_chan, ptr %12, i32 %i.1, i32 1
  %14 = ptrtoint ptr %chip15 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %chip, ptr %chip15, align 4
  %id = getelementptr %struct.dw_edma_chan, ptr %12, i32 %i.1, i32 2
  %15 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %j.0, ptr %id, align 4
  %dir = getelementptr %struct.dw_edma_chan, ptr %12, i32 %i.1, i32 3
  %16 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %cond, ptr %dir, align 4
  %configured = getelementptr %struct.dw_edma_chan, ptr %12, i32 %i.1, i32 8
  %17 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %configured, align 4
  %request = getelementptr %struct.dw_edma_chan, ptr %12, i32 %i.1, i32 6
  %18 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %request, align 4
  %status = getelementptr %struct.dw_edma_chan, ptr %12, i32 %i.1, i32 7
  %19 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %status, align 4
  %sz = getelementptr %struct.dw_edma, ptr %3, i32 0, i32 6, i32 %j.0, i32 2
  %sz23 = getelementptr %struct.dw_edma, ptr %3, i32 0, i32 7, i32 %j.0, i32 2
  %div24.sink.in.in = select i1 %write, ptr %sz, ptr %sz23
  %20 = ptrtoint ptr %div24.sink.in.in to i32
  call void @__asan_load4_noabort(i32 %20)
  %div24.sink.in = load i32, ptr %div24.sink.in.in, align 4
  %div24.sink = udiv i32 %div24.sink.in, 24
  %21 = getelementptr %struct.dw_edma_chan, ptr %12, i32 %i.1, i32 4
  %sub = add nsw i32 %div24.sink, -1
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %sub, ptr %21, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_edma_channel_setup.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_channel_setup, %do.end)) #9
          to label %if.then34 [label %do.end], !srcloc !45

if.then34:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #11
  %23 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %21, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_edma_channel_setup.__UNIQUE_ID_ddebug240, ptr noundef %1, ptr noundef nonnull @.str.10, ptr noundef nonnull %cond37, i32 noundef %j.0, i32 noundef %24) #9
  br label %do.end

do.end:                                           ; preds = %if.then34, %if.end13
  %25 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %nr_irqs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %26)
  %cmp41 = icmp eq i32 %26, 1
  br i1 %cmp41, label %do.end.if.end45_crit_edge, label %if.else44

do.end.if.end45_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end45

if.else44:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %rem = urem i32 %j.0, %alloc.0
  %add = add i32 %rem, %off_alloc.0
  br label %if.end45

if.end45:                                         ; preds = %if.else44, %do.end.if.end45_crit_edge
  %pos.0 = phi i32 [ %add, %if.else44 ], [ 0, %do.end.if.end45_crit_edge ]
  %27 = ptrtoint ptr %irq46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %irq46, align 4
  %arrayidx47 = getelementptr %struct.dw_edma_irq, ptr %28, i32 %pos.0
  %shl = shl nuw i32 1, %j.0
  %rd_mask = getelementptr %struct.dw_edma_irq, ptr %28, i32 %pos.0, i32 2
  %wr_mask = getelementptr %struct.dw_edma_irq, ptr %28, i32 %pos.0, i32 1
  %rd_mask.sink239 = select i1 %write, ptr %wr_mask, ptr %rd_mask
  %29 = ptrtoint ptr %rd_mask.sink239 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %rd_mask.sink239, align 4
  %or52 = or i32 %30, %shl
  store i32 %or52, ptr %rd_mask.sink239, align 4
  %dw54 = getelementptr %struct.dw_edma_irq, ptr %28, i32 %pos.0, i32 3
  %31 = ptrtoint ptr %dw54 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %3, ptr %dw54, align 4
  %msi = getelementptr %struct.dw_edma_chan, ptr %12, i32 %i.1, i32 5
  %32 = call ptr @memcpy(ptr %msi, ptr %arrayidx47, i32 12)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dw_edma_channel_setup.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_channel_setup, %do.end79)) #9
          to label %if.then70 [label %do.end79], !srcloc !45

if.then70:                                        ; preds = %if.end45
  call void @__sanitizer_cov_trace_pc() #11
  %33 = getelementptr %struct.dw_edma_chan, ptr %12, i32 %i.1, i32 5, i32 1
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  %36 = ptrtoint ptr %msi to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %msi, align 4
  %38 = getelementptr %struct.dw_edma_chan, ptr %12, i32 %i.1, i32 5, i32 2
  %39 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %38, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dw_edma_channel_setup.__UNIQUE_ID_ddebug241, ptr noundef %1, ptr noundef nonnull @.str.13, ptr noundef nonnull %cond37, i32 noundef %j.0, i32 noundef %35, i32 noundef %37, i32 noundef %40) #9
  br label %do.end79

do.end79:                                         ; preds = %if.then70, %if.end45
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 2
  %41 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @vchan_free_desc, ptr %desc_free, align 4
  tail call void @vchan_init(ptr noundef %arrayidx, ptr noundef %dma.0) #9
  br i1 %write, label %if.then83, label %if.else93

if.then83:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx84 = getelementptr %struct.dw_edma, ptr %3, i32 0, i32 8, i32 %j.0
  %42 = ptrtoint ptr %arrayidx84 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx84, align 4
  %44 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %43, ptr %call.i, align 4
  %vaddr = getelementptr %struct.dw_edma, ptr %3, i32 0, i32 8, i32 %j.0, i32 1
  %45 = ptrtoint ptr %vaddr to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %vaddr, align 4
  %vaddr88 = getelementptr inbounds %struct.dw_edma_region, ptr %call.i, i32 0, i32 1
  %47 = ptrtoint ptr %vaddr88 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %vaddr88, align 4
  %sz91 = getelementptr %struct.dw_edma, ptr %3, i32 0, i32 8, i32 %j.0, i32 2
  br label %if.end105

if.else93:                                        ; preds = %do.end79
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx94 = getelementptr %struct.dw_edma, ptr %3, i32 0, i32 9, i32 %j.0
  %48 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %arrayidx94, align 4
  %50 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %call.i, align 4
  %vaddr99 = getelementptr %struct.dw_edma, ptr %3, i32 0, i32 9, i32 %j.0, i32 1
  %51 = ptrtoint ptr %vaddr99 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %vaddr99, align 4
  %vaddr100 = getelementptr inbounds %struct.dw_edma_region, ptr %call.i, i32 0, i32 1
  %53 = ptrtoint ptr %vaddr100 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %52, ptr %vaddr100, align 4
  %sz103 = getelementptr %struct.dw_edma, ptr %3, i32 0, i32 9, i32 %j.0, i32 2
  br label %if.end105

if.end105:                                        ; preds = %if.else93, %if.then83
  %.sink.in = phi ptr [ %sz91, %if.then83 ], [ %sz103, %if.else93 ]
  %54 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %54)
  %.sink = load i32, ptr %.sink.in, align 4
  %55 = getelementptr inbounds %struct.dw_edma_region, ptr %call.i, i32 0, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %.sink, ptr %55, align 4
  %call106 = tail call i32 @dw_edma_v0_core_device_config(ptr noundef %arrayidx) #9
  %inc = add nuw i32 %j.0, 1
  %inc107 = add i32 %i.1, 1
  br label %for.cond

for.end:                                          ; preds = %land.rhs.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 6
  %57 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %cap_mask, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #9
  tail call void @_set_bit(i32 noundef 13, ptr noundef %cap_mask) #9
  %shl115 = select i1 %write, i32 4, i32 2
  %directions = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 21
  %58 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %shl115, ptr %directions, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 19
  %59 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 16, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 20
  %60 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 16, ptr %dst_addr_widths, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 26
  %61 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %residue_granularity, align 4
  %chancnt = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 1
  %62 = ptrtoint ptr %chancnt to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %cnt.0, ptr %chancnt, align 4
  %63 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %chip, align 4
  %dev117 = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 15
  %65 = ptrtoint ptr %dev117 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %64, ptr %dev117, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 27
  %66 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @dw_edma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 29
  %67 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @dw_edma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 44
  %68 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @dw_edma_device_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 45
  %69 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @dw_edma_device_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 46
  %70 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @dw_edma_device_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 47
  %71 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @dw_edma_device_terminate_all, ptr %device_terminate_all, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 50
  %72 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @dw_edma_device_issue_pending, ptr %device_issue_pending, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 49
  %73 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @dw_edma_device_tx_status, ptr %device_tx_status, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 39
  %74 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @dw_edma_device_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 40
  %75 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @dw_edma_device_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_prep_interleaved_dma = getelementptr inbounds %struct.dma_device, ptr %dma.0, i32 0, i32 41
  %76 = ptrtoint ptr %device_prep_interleaved_dma to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @dw_edma_device_prep_interleaved_dma, ptr %device_prep_interleaved_dma, align 4
  %dma_parms.i = getelementptr inbounds %struct.device, ptr %64, i32 0, i32 22
  %77 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %78, null
  br i1 %tobool.not.i, label %for.end.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

for.end.dma_set_max_seg_size.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %79 = ptrtoint ptr %78 to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -1, ptr %78, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %for.end.dma_set_max_seg_size.exit_crit_edge
  %call120 = tail call i32 @dma_async_device_register(ptr noundef %dma.0) #9
  br label %cleanup

cleanup:                                          ; preds = %dma_set_max_seg_size.exit, %for.body.cleanup_crit_edge
  %retval.0 = phi i32 [ %call120, %dma_set_max_seg_size.exit ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_edma_v0_core_debugfs_on(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @dw_edma_remove(ptr noundef %chip) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chip, align 4
  %dw2 = getelementptr inbounds %struct.dw_edma_chip, ptr %chip, i32 0, i32 3
  %2 = ptrtoint ptr %dw2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dw2, align 4
  tail call void @dw_edma_v0_core_off(ptr noundef %3) #9
  %nr_irqs = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 11
  %4 = ptrtoint ptr %nr_irqs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_irqs, align 4
  %i.0101 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %i.0101)
  %cmp102 = icmp sgt i32 %i.0101, -1
  br i1 %cmp102, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %ops = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 14
  %irq = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0103 = phi i32 [ %i.0101, %for.body.lr.ph ], [ %i.0, %for.body.for.body_crit_edge ]
  %6 = ptrtoint ptr %ops to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ops, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  %call = tail call i32 %9(ptr noundef %1, i32 noundef %i.0103) #9
  %10 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %irq, align 4
  %arrayidx = getelementptr %struct.dw_edma_irq, ptr %11, i32 %i.0103
  %call3 = tail call ptr @free_irq(i32 noundef %call, ptr noundef %arrayidx) #9
  %i.0 = add nsw i32 %i.0103, -1
  %cmp = icmp sgt i32 %i.0103, 0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void @__pm_runtime_disable(ptr noundef %1, i1 noundef zeroext true) #9
  %wr_edma = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 1
  tail call void @dma_async_device_unregister(ptr noundef %wr_edma) #9
  %channels = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %channels, align 4
  %cmp16.not104 = icmp eq ptr %13, %channels
  br i1 %cmp16.not104, label %for.end.for.end30_crit_edge, label %for.end.for.body17_crit_edge

for.end.for.body17_crit_edge:                     ; preds = %for.end
  br label %for.body17

for.end.for.end30_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30

for.body17:                                       ; preds = %list_del.exit.for.body17_crit_edge, %for.end.for.body17_crit_edge
  %.pn.in105 = phi ptr [ %.pn, %list_del.exit.for.body17_crit_edge ], [ %13, %for.end.for.body17_crit_edge ]
  %14 = ptrtoint ptr %.pn.in105 to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pn = load ptr, ptr %.pn.in105, align 4
  %task = getelementptr i8, ptr %.pn.in105, i32 32
  tail call void @tasklet_kill(ptr noundef %task) #9
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in105) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body17.list_del.exit_crit_edge

for.body17.list_del.exit_crit_edge:               ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in105, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i.i, align 4
  %17 = ptrtoint ptr %.pn.in105 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %.pn.in105, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %19 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev1.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %18, ptr %16, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body17.list_del.exit_crit_edge
  %21 = ptrtoint ptr %.pn.in105 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in105, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in105, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp16.not = icmp eq ptr %.pn, %channels
  br i1 %cmp16.not, label %list_del.exit.for.end30_crit_edge, label %list_del.exit.for.body17_crit_edge

list_del.exit.for.body17_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body17

list_del.exit.for.end30_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end30

for.end30:                                        ; preds = %list_del.exit.for.end30_crit_edge, %for.end.for.end30_crit_edge
  %rd_edma = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 3
  tail call void @dma_async_device_unregister(ptr noundef %rd_edma) #9
  %channels33 = getelementptr inbounds %struct.dw_edma, ptr %3, i32 0, i32 3, i32 3
  %23 = ptrtoint ptr %channels33 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %channels33, align 4
  %cmp50.not107 = icmp eq ptr %24, %channels33
  br i1 %cmp50.not107, label %for.end30.for.end66_crit_edge, label %for.end30.for.body52_crit_edge

for.end30.for.body52_crit_edge:                   ; preds = %for.end30
  br label %for.body52

for.end30.for.end66_crit_edge:                    ; preds = %for.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end66

for.body52:                                       ; preds = %list_del.exit100.for.body52_crit_edge, %for.end30.for.body52_crit_edge
  %.pn92.in108 = phi ptr [ %.pn92, %list_del.exit100.for.body52_crit_edge ], [ %24, %for.end30.for.body52_crit_edge ]
  %25 = ptrtoint ptr %.pn92.in108 to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pn92 = load ptr, ptr %.pn92.in108, align 4
  %task54 = getelementptr i8, ptr %.pn92.in108, i32 32
  tail call void @tasklet_kill(ptr noundef %task54) #9
  %call.i.i95 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn92.in108) #9
  br i1 %call.i.i95, label %if.end.i.i98, label %for.body52.list_del.exit100_crit_edge

for.body52.list_del.exit100_crit_edge:            ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit100

if.end.i.i98:                                     ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i96 = getelementptr inbounds %struct.list_head, ptr %.pn92.in108, i32 0, i32 1
  %26 = ptrtoint ptr %prev.i.i96 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i96, align 4
  %28 = ptrtoint ptr %.pn92.in108 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %.pn92.in108, align 4
  %prev1.i.i.i97 = getelementptr inbounds %struct.list_head, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %prev1.i.i.i97 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev1.i.i.i97, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %29, ptr %27, align 4
  br label %list_del.exit100

list_del.exit100:                                 ; preds = %if.end.i.i98, %for.body52.list_del.exit100_crit_edge
  %32 = ptrtoint ptr %.pn92.in108 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn92.in108, align 4
  %prev.i99 = getelementptr inbounds %struct.list_head, ptr %.pn92.in108, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i99 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i99, align 4
  %cmp50.not = icmp eq ptr %.pn92, %channels33
  br i1 %cmp50.not, label %list_del.exit100.for.end66_crit_edge, label %list_del.exit100.for.body52_crit_edge

list_del.exit100.for.body52_crit_edge:            ; preds = %list_del.exit100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body52

list_del.exit100.for.end66_crit_edge:             ; preds = %list_del.exit100
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end66

for.end66:                                        ; preds = %list_del.exit100.for.end66_crit_edge, %for.end30.for.end66_crit_edge
  tail call void @dw_edma_v0_core_debugfs_off(ptr noundef %chip) #9
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_edma_v0_core_debugfs_off(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_edma_interrupt_common(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @dw_edma_interrupt(ptr noundef %data, i1 noundef zeroext true)
  tail call fastcc void @dw_edma_interrupt(ptr noundef %data, i1 noundef zeroext false)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @get_cached_msi_msg(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_edma_interrupt_write(i32 noundef %irq, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dw_edma_interrupt(ptr noundef %data, i1 noundef zeroext true)
  ret i32 1
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_edma_interrupt_read(i32 noundef %irq, ptr nocapture noundef readonly %data) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @dw_edma_interrupt(ptr noundef %data, i1 noundef zeroext false)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_edma_interrupt(ptr nocapture noundef readonly %data, i1 noundef zeroext %write) unnamed_addr #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dw1 = getelementptr inbounds %struct.dw_edma_irq, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %dw1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dw1, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #9
  br i1 %write, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %wr_ch_cnt = getelementptr inbounds %struct.dw_edma, ptr %1, i32 0, i32 2
  %wr_mask = getelementptr inbounds %struct.dw_edma_irq, ptr %data, i32 0, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %rd_ch_cnt = getelementptr inbounds %struct.dw_edma, ptr %1, i32 0, i32 4
  %wr_ch_cnt3 = getelementptr inbounds %struct.dw_edma, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %wr_ch_cnt3 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %wr_ch_cnt3, align 4
  %conv4 = zext i16 %3 to i32
  %rd_mask = getelementptr inbounds %struct.dw_edma_irq, ptr %data, i32 0, i32 2
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %total.0.in.in = phi ptr [ %wr_ch_cnt, %if.then ], [ %rd_ch_cnt, %if.else ]
  %off.0 = phi i32 [ 0, %if.then ], [ %conv4, %if.else ]
  %mask.0.in = phi ptr [ %wr_mask, %if.then ], [ %rd_mask, %if.else ]
  %4 = ptrtoint ptr %mask.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %mask.0 = load i32, ptr %mask.0.in, align 4
  %5 = ptrtoint ptr %total.0.in.in to i32
  call void @__asan_load2_noabort(i32 %5)
  %total.0.in = load i16, ptr %total.0.in.in, align 4
  %total.0 = zext i16 %total.0.in to i32
  %not.write = xor i1 %write, true
  %cond = zext i1 %not.write to i32
  %call = tail call i32 @dw_edma_v0_core_status_done_int(ptr noundef %1, i32 noundef %cond) #9
  %and = and i32 %call, %mask.0
  %6 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %and, ptr %val, align 4
  %call7 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef %total.0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call7, i32 %total.0)
  %cmp1 = icmp ult i32 %call7, %total.0
  br i1 %cmp1, label %for.body.lr.ph, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %chan9 = getelementptr inbounds %struct.dw_edma, ptr %1, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %pos.02 = phi i32 [ %call7, %for.body.lr.ph ], [ %call11, %for.body.for.body_crit_edge ]
  %7 = ptrtoint ptr %chan9 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan9, align 4
  %add = add i32 %pos.02, %off.0
  %arrayidx = getelementptr %struct.dw_edma_chan, ptr %8, i32 %add
  call fastcc void @dw_edma_done_interrupt(ptr noundef %arrayidx)
  %add10 = add nuw i32 %pos.02, 1
  %call11 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef %total.0, i32 noundef %add10) #9
  %cmp = icmp ult i32 %call11, %total.0
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %call15 = call i32 @dw_edma_v0_core_status_abort_int(ptr noundef %1, i32 noundef %cond) #9
  %and16 = and i32 %call15, %mask.0
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and16, ptr %val, align 4
  %call17 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef %total.0, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_cmp4(i32 %call17, i32 %total.0)
  %cmp193 = icmp ult i32 %call17, %total.0
  br i1 %cmp193, label %for.body21.lr.ph, label %for.end.for.end29_crit_edge

for.end.for.end29_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.body21.lr.ph:                                 ; preds = %for.end
  %chan23 = getelementptr inbounds %struct.dw_edma, ptr %1, i32 0, i32 13
  br label %for.body21

for.body21:                                       ; preds = %for.body21.for.body21_crit_edge, %for.body21.lr.ph
  %pos.14 = phi i32 [ %call17, %for.body21.lr.ph ], [ %call28, %for.body21.for.body21_crit_edge ]
  %10 = ptrtoint ptr %chan23 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan23, align 4
  %add24 = add i32 %pos.14, %off.0
  %arrayidx25 = getelementptr %struct.dw_edma_chan, ptr %11, i32 %add24
  call fastcc void @dw_edma_abort_interrupt(ptr noundef %arrayidx25)
  %add27 = add nuw i32 %pos.14, 1
  %call28 = call i32 @_find_next_bit_be(ptr noundef nonnull %val, i32 noundef %total.0, i32 noundef %add27) #9
  %cmp19 = icmp ult i32 %call28, %total.0
  br i1 %cmp19, label %for.body21.for.body21_crit_edge, label %for.body21.for.end29_crit_edge

for.body21.for.end29_crit_edge:                   ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end29

for.body21.for.body21_crit_edge:                  ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body21

for.end29:                                        ; preds = %for.body21.for.end29_crit_edge, %for.end.for.end29_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_edma_v0_core_status_done_int(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_edma_done_interrupt(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dw_edma_v0_core_clear_done_int(ptr noundef %chan) #9
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %1, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -108
  %tobool.not66 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not66
  br i1 %tobool.not, label %entry.if.end18_crit_edge, label %if.then

entry.if.end18_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then:                                          ; preds = %entry
  %request = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 6
  %2 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %request, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values)
  switch i32 %3, label %if.then.if.end18_crit_edge [
    i32 0, label %sw.bb
    i32 1, label %sw.bb11
    i32 2, label %sw.bb15
  ]

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

sw.bb:                                            ; preds = %if.then
  %chunks_alloc = getelementptr i8, ptr %1, i32 16
  %5 = ptrtoint ptr %chunks_alloc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chunks_alloc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool8.not = icmp eq i32 %6, 0
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  %status = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 7
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2, ptr %status, align 4
  tail call fastcc void @dw_edma_start_transfer(ptr noundef %chan)
  br label %if.end18

if.else:                                          ; preds = %sw.bb
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del.exit_crit_edge

if.else.list_del.exit_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.else.list_del.exit_crit_edge
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr %struct.list_head, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %chan.i = getelementptr i8, ptr %1, i32 -96
  %16 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan.i, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %19)
  %cmp.i.i = icmp slt i32 %19, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !46

do.body2.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dw-edma/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !47
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %list_del.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %17, i32 0, i32 3
  %20 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %completed_cookie.i.i, align 4
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 0, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_done_interrupt, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !45

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %17, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %23, i32 0, i32 15
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %25, ptr noundef nonnull @.str.8, ptr noundef nonnull %add.ptr.i, i32 noundef %19) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %17, i32 0, i32 7
  %prev.i.i37 = getelementptr inbounds %struct.virt_dma_chan, ptr %17, i32 0, i32 7, i32 1
  %26 = ptrtoint ptr %prev.i.i37 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i.i37, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %27, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %prev.i.i37 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %1, ptr %prev.i.i37, align 4
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %desc_completed.i, ptr %1, align 4
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %1, ptr %27, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %17, i32 0, i32 1, i32 1
  %call.i.i38 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i38)
  %tobool.not.i.i = icmp eq i32 %call.i.i38, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %17, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %status10 = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 7
  %32 = ptrtoint ptr %status10 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %status10, align 4
  br label %if.end18

sw.bb11:                                          ; preds = %if.then
  %call.i.i39 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i39, label %if.end.i.i42, label %sw.bb11.list_del.exit44_crit_edge

sw.bb11.list_del.exit44_crit_edge:                ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit44

if.end.i.i42:                                     ; preds = %sw.bb11
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i40 = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %prev.i.i40 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %prev.i.i40, align 4
  %35 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %1, align 4
  %prev1.i.i.i41 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev1.i.i.i41 to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev1.i.i.i41, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %36, ptr %34, align 4
  br label %list_del.exit44

list_del.exit44:                                  ; preds = %if.end.i.i42, %sw.bb11.list_del.exit44_crit_edge
  %39 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i43 = getelementptr %struct.list_head, ptr %1, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i43, align 4
  %chan.i45 = getelementptr i8, ptr %1, i32 -96
  %41 = ptrtoint ptr %chan.i45 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %chan.i45, align 4
  %43 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %44)
  %cmp.i.i46 = icmp slt i32 %44, 1
  br i1 %cmp.i.i46, label %do.body2.i.i47, label %dma_cookie_complete.exit.i49, !prof !46

do.body2.i.i47:                                   ; preds = %list_del.exit44
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dw-edma/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !47
  unreachable

dma_cookie_complete.exit.i49:                     ; preds = %list_del.exit44
  %completed_cookie.i.i48 = getelementptr inbounds %struct.dma_chan, ptr %42, i32 0, i32 3
  %45 = ptrtoint ptr %completed_cookie.i.i48 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %completed_cookie.i.i48, align 4
  %46 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_done_interrupt, %do.end.i56)) #9
          to label %if.then.i51 [label %do.end.i56], !srcloc !45

if.then.i51:                                      ; preds = %dma_cookie_complete.exit.i49
  call void @__sanitizer_cov_trace_pc() #11
  %47 = ptrtoint ptr %42 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %42, align 4
  %dev.i50 = getelementptr inbounds %struct.dma_device, ptr %48, i32 0, i32 15
  %49 = ptrtoint ptr %dev.i50 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %dev.i50, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %50, ptr noundef nonnull @.str.8, ptr noundef nonnull %add.ptr.i, i32 noundef %44) #9
  br label %do.end.i56

do.end.i56:                                       ; preds = %if.then.i51, %dma_cookie_complete.exit.i49
  %desc_completed.i53 = getelementptr inbounds %struct.virt_dma_chan, ptr %42, i32 0, i32 7
  %prev.i.i54 = getelementptr inbounds %struct.virt_dma_chan, ptr %42, i32 0, i32 7, i32 1
  %51 = ptrtoint ptr %prev.i.i54 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev.i.i54, align 4
  %call.i.i.i55 = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %52, ptr noundef %desc_completed.i53) #9
  br i1 %call.i.i.i55, label %if.end.i.i.i58, label %do.end.i56.list_add_tail.exit.i62_crit_edge

do.end.i56.list_add_tail.exit.i62_crit_edge:      ; preds = %do.end.i56
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i62

if.end.i.i.i58:                                   ; preds = %do.end.i56
  call void @__sanitizer_cov_trace_pc() #11
  %53 = ptrtoint ptr %prev.i.i54 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %1, ptr %prev.i.i54, align 4
  %54 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %desc_completed.i53, ptr %1, align 4
  %55 = ptrtoint ptr %prev.i43 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %52, ptr %prev.i43, align 4
  %56 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %1, ptr %52, align 4
  br label %list_add_tail.exit.i62

list_add_tail.exit.i62:                           ; preds = %if.end.i.i.i58, %do.end.i56.list_add_tail.exit.i62_crit_edge
  %state.i.i59 = getelementptr inbounds %struct.virt_dma_chan, ptr %42, i32 0, i32 1, i32 1
  %call.i.i60 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i59) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i60)
  %tobool.not.i.i61 = icmp eq i32 %call.i.i60, 0
  br i1 %tobool.not.i.i61, label %if.then.i.i64, label %list_add_tail.exit.i62.vchan_cookie_complete.exit65_crit_edge

list_add_tail.exit.i62.vchan_cookie_complete.exit65_crit_edge: ; preds = %list_add_tail.exit.i62
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit65

if.then.i.i64:                                    ; preds = %list_add_tail.exit.i62
  call void @__sanitizer_cov_trace_pc() #11
  %task.i63 = getelementptr inbounds %struct.virt_dma_chan, ptr %42, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i63) #9
  br label %vchan_cookie_complete.exit65

vchan_cookie_complete.exit65:                     ; preds = %if.then.i.i64, %list_add_tail.exit.i62.vchan_cookie_complete.exit65_crit_edge
  %57 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %request, align 4
  %status14 = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 7
  %58 = ptrtoint ptr %status14 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 0, ptr %status14, align 4
  br label %if.end18

sw.bb15:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %59 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %request, align 4
  %status17 = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 7
  %60 = ptrtoint ptr %status17 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 1, ptr %status17, align 4
  br label %if.end18

if.end18:                                         ; preds = %sw.bb15, %vchan_cookie_complete.exit65, %vchan_cookie_complete.exit, %if.then9, %if.then.if.end18_crit_edge, %entry.if.end18_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_edma_v0_core_status_abort_int(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_edma_abort_interrupt(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @dw_edma_v0_core_clear_abort_int(ptr noundef %chan) #9
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %1, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -108
  %tobool.not18 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not18
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr %struct.list_head, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %chan.i = getelementptr i8, ptr %1, i32 -96
  %10 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan.i, align 4
  %12 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %13)
  %cmp.i.i = icmp slt i32 %13, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !46

do.body2.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dw-edma/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !47
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %list_del.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %11, i32 0, i32 3
  %14 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %13, ptr %completed_cookie.i.i, align 4
  %15 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %add.ptr.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dw_edma_abort_interrupt, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !45

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %11, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %19, ptr noundef nonnull @.str.8, ptr noundef nonnull %add.ptr.i, i32 noundef %13) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 7
  %prev.i.i16 = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %prev.i.i16 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i16, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %21, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %22 = ptrtoint ptr %prev.i.i16 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %1, ptr %prev.i.i16, align 4
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %desc_completed.i, ptr %1, align 4
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %1, ptr %21, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 1, i32 1
  %call.i.i17 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i17)
  %tobool.not.i.i = icmp eq i32 %call.i.i17, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.if.end_crit_edge

list_add_tail.exit.i.if.end_crit_edge:            ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %11, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %if.end

if.end:                                           ; preds = %if.then.i.i, %list_add_tail.exit.i.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #9
  %request = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 6
  %26 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %request, align 4
  %status = getelementptr inbounds %struct.dw_edma_chan, ptr %chan, i32 0, i32 7
  %27 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %status, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_edma_v0_core_clear_done_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_edma_start_transfer(ptr noundef %chan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %1, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -108
  %tobool.not29 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not29
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end4:                                          ; preds = %entry
  %chunk = getelementptr i8, ptr %1, i32 12
  %2 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chunk, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %3, align 4
  %cmp.not = icmp eq ptr %5, %3
  %tobool7.not30 = icmp eq ptr %5, null
  %tobool7.not = or i1 %cmp.not, %tobool7.not30
  br i1 %tobool7.not, label %if.end4.cleanup_crit_edge, label %if.end9

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end9:                                          ; preds = %if.end4
  %xfer_sz = getelementptr i8, ptr %1, i32 24
  %6 = ptrtoint ptr %xfer_sz to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xfer_sz, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool10.not = icmp eq i32 %7, 0
  tail call void @dw_edma_v0_core_start(ptr noundef nonnull %5, i1 noundef zeroext %tobool10.not) #9
  %sz = getelementptr inbounds %struct.dw_edma_chunk, ptr %5, i32 0, i32 5, i32 2
  %8 = ptrtoint ptr %sz to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %sz, align 4
  %10 = ptrtoint ptr %xfer_sz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %xfer_sz, align 4
  %add = add i32 %11, %9
  store i32 %add, ptr %xfer_sz, align 4
  %burst.i = getelementptr inbounds %struct.dw_edma_chunk, ptr %5, i32 0, i32 2
  %12 = ptrtoint ptr %burst.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %burst.i, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 8
  %cmp.not24.i = icmp eq ptr %15, %13
  br i1 %cmp.not24.i, label %if.end9.dw_edma_free_burst.exit_crit_edge, label %for.body.lr.ph.i

if.end9.dw_edma_free_burst.exit_crit_edge:        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_edma_free_burst.exit

for.body.lr.ph.i:                                 ; preds = %if.end9
  %bursts_alloc.i = getelementptr inbounds %struct.dw_edma_chunk, ptr %5, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.025.i = phi ptr [ %15, %for.body.lr.ph.i ], [ %_next.0.i, %list_del.exit.i.for.body.i_crit_edge ]
  %16 = ptrtoint ptr %child.025.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %_next.0.i = load ptr, ptr %child.025.i, align 8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %child.025.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %child.025.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %child.025.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %child.025.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %23 = ptrtoint ptr %child.025.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %child.025.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %child.025.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %child.025.i) #9
  %25 = ptrtoint ptr %bursts_alloc.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %bursts_alloc.i, align 4
  %dec.i = add i32 %26, -1
  store i32 %dec.i, ptr %bursts_alloc.i, align 4
  %27 = ptrtoint ptr %burst.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %burst.i, align 4
  %cmp.not.i27 = icmp eq ptr %_next.0.i, %28
  br i1 %cmp.not.i27, label %list_del.exit.i.dw_edma_free_burst.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.dw_edma_free_burst.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_edma_free_burst.exit

dw_edma_free_burst.exit:                          ; preds = %list_del.exit.i.dw_edma_free_burst.exit_crit_edge, %if.end9.dw_edma_free_burst.exit_crit_edge
  %child.0.lcssa.i = phi ptr [ %13, %if.end9.dw_edma_free_burst.exit_crit_edge ], [ %_next.0.i, %list_del.exit.i.dw_edma_free_burst.exit_crit_edge ]
  tail call void @kfree(ptr noundef %child.0.lcssa.i) #9
  %29 = ptrtoint ptr %burst.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr null, ptr %burst.i, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #9
  br i1 %call.i.i, label %if.end.i.i, label %dw_edma_free_burst.exit.list_del.exit_crit_edge

dw_edma_free_burst.exit.list_del.exit_crit_edge:  ; preds = %dw_edma_free_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %dw_edma_free_burst.exit
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i28 = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i28 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i.i28, align 4
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev1.i.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %33, ptr %31, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %dw_edma_free_burst.exit.list_del.exit_crit_edge
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr inttoptr (i32 256 to ptr), ptr %5, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef nonnull %5) #9
  %chunks_alloc = getelementptr i8, ptr %1, i32 16
  %38 = ptrtoint ptr %chunks_alloc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %chunks_alloc, align 4
  %dec = add i32 %39, -1
  store i32 %dec, ptr %chunks_alloc, align 4
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit, %if.end4.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_edma_v0_core_start(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dw_edma_v0_core_clear_abort_int(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @irq_get_irq_data(i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @vchan_free_desc(ptr noundef %vdesc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @dw_edma_free_desc(ptr noundef %vdesc)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_edma_v0_core_device_config(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_edma_alloc_chan_resources(ptr nocapture noundef readonly %dchan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %status = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 7
  %0 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.not = icmp eq i32 %1, 0
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %chip = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %3, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %5, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -16, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_edma_free_chan_resources(ptr noundef %dchan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %0 = load volatile i32, ptr @jiffies, align 128
  %add = add i32 %0, 500
  %1 = load volatile i32, ptr @jiffies, align 128
  %sub32 = sub i32 %1, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub32)
  %cmp33 = icmp slt i32 %sub32, 0
  br i1 %cmp33, label %while.body.lr.ph, label %entry.while.end_crit_edge

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %configured.i = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 8
  %status.i = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 7
  %request.i = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 6
  br label %while.body

while.body:                                       ; preds = %do.end.while.body_crit_edge, %while.body.lr.ph
  %2 = ptrtoint ptr %configured.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %configured.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %while.body.while.end_crit_edge, label %if.else.i

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

if.else.i:                                        ; preds = %while.body
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status.i, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.14)
  switch i32 %5, label %if.else9.i [
    i32 1, label %if.then1.i
    i32 0, label %if.then7.i
  ]

if.then1.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %status.i, align 4
  %8 = ptrtoint ptr %configured.i to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %configured.i, align 4
  br label %while.end

if.then7.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #11
  %9 = ptrtoint ptr %configured.i to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %configured.i, align 4
  br label %while.end

if.else9.i:                                       ; preds = %if.else.i
  %call10.i = tail call i32 @dw_edma_v0_core_ch_status(ptr noundef %dchan) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %cmp11.i = icmp eq i32 %call10.i, 0
  br i1 %cmp11.i, label %if.then12.i, label %if.else15.i

if.then12.i:                                      ; preds = %if.else9.i
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 0, ptr %status.i, align 4
  %11 = ptrtoint ptr %configured.i to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 0, ptr %configured.i, align 4
  br label %while.end

if.else15.i:                                      ; preds = %if.else9.i
  %12 = ptrtoint ptr %request.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %request.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp16.i = icmp ugt i32 %13, 2
  br i1 %cmp16.i, label %if.end, label %if.else18.i

if.else18.i:                                      ; preds = %if.else15.i
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %request.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %request.i, align 4
  br label %while.end

if.end:                                           ; preds = %if.else15.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %15 = load volatile i32, ptr @jiffies, align 128
  %sub3 = sub i32 %15, %add
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %sub3)
  %cmp4 = icmp sgt i32 %sub3, -1
  br i1 %cmp4, label %if.end.cleanup_crit_edge, label %do.end

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.end:                                           ; preds = %if.end
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !48
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #9, !srcloc !49
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %16 = load volatile i32, ptr @jiffies, align 128
  %sub = sub i32 %16, %add
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %do.end.while.body_crit_edge, label %do.end.while.end_crit_edge

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.end

do.end.while.body_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %while.body

while.end:                                        ; preds = %do.end.while.end_crit_edge, %if.else18.i, %if.then12.i, %if.then7.i, %if.then1.i, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %chip = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 1
  %17 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chip, align 4
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %18, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %20, i32 noundef 5) #9
  br label %cleanup

cleanup:                                          ; preds = %while.end, %if.end.cleanup_crit_edge
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw_edma_device_config(ptr nocapture noundef writeonly %dchan, ptr nocapture noundef readonly %config) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %config1 = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 9
  %0 = call ptr @memcpy(ptr %config1, ptr %config, i32 48)
  %configured = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 8
  %1 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %1)
  store i8 1, ptr %configured, align 4
  ret i32 0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @dw_edma_device_pause(ptr nocapture noundef %dchan) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %configured = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 8
  %0 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  br i1 %cmp.not, label %if.else2, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else2:                                         ; preds = %if.else
  %request = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 6
  %4 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.not = icmp eq i32 %5, 0
  br i1 %cmp3.not, label %if.else5, label %if.else2.if.end8_crit_edge

if.else2.if.end8_crit_edge:                       ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else5:                                         ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %request, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.else2.if.end8_crit_edge, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %err.0 = phi i32 [ 0, %if.else5 ], [ -1, %entry.if.end8_crit_edge ], [ -1, %if.else.if.end8_crit_edge ], [ -1, %if.else2.if.end8_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_edma_device_resume(ptr noundef %dchan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %configured = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 8
  %0 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.else

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.else2, label %if.else.if.end8_crit_edge

if.else.if.end8_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else2:                                         ; preds = %if.else
  %request = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 6
  %4 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp3.not = icmp eq i32 %5, 0
  br i1 %cmp3.not, label %if.else5, label %if.else2.if.end8_crit_edge

if.else2.if.end8_crit_edge:                       ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end8

if.else5:                                         ; preds = %if.else2
  call void @__sanitizer_cov_trace_pc() #11
  %6 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 2, ptr %status, align 4
  tail call fastcc void @dw_edma_start_transfer(ptr noundef %dchan)
  br label %if.end8

if.end8:                                          ; preds = %if.else5, %if.else2.if.end8_crit_edge, %if.else.if.end8_crit_edge, %entry.if.end8_crit_edge
  %err.0 = phi i32 [ 0, %if.else5 ], [ -1, %entry.if.end8_crit_edge ], [ -1, %if.else.if.end8_crit_edge ], [ -1, %if.else2.if.end8_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_edma_device_terminate_all(ptr noundef %dchan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %configured = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 8
  %0 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end23_crit_edge, label %if.else

entry.if.end23_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.else:                                          ; preds = %entry
  %status = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 7
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %status, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.15)
  switch i32 %3, label %if.else9 [
    i32 1, label %if.then1
    i32 0, label %if.then7
  ]

if.then1:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %status, align 4
  %6 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 0, ptr %configured, align 4
  br label %if.end23

if.then7:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  %7 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %configured, align 4
  br label %if.end23

if.else9:                                         ; preds = %if.else
  %call10 = tail call i32 @dw_edma_v0_core_ch_status(ptr noundef %dchan) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10)
  %cmp11 = icmp eq i32 %call10, 0
  br i1 %cmp11, label %if.then12, label %if.else15

if.then12:                                        ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #11
  %8 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %status, align 4
  %9 = ptrtoint ptr %configured to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 0, ptr %configured, align 4
  br label %if.end23

if.else15:                                        ; preds = %if.else9
  %request = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 6
  %10 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %11)
  %cmp16 = icmp ugt i32 %11, 2
  br i1 %cmp16, label %if.else15.if.end23_crit_edge, label %if.else18

if.else15.if.end23_crit_edge:                     ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.else18:                                        ; preds = %if.else15
  call void @__sanitizer_cov_trace_pc() #11
  %12 = ptrtoint ptr %request to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %request, align 4
  br label %if.end23

if.end23:                                         ; preds = %if.else18, %if.else15.if.end23_crit_edge, %if.then12, %if.then7, %if.then1, %entry.if.end23_crit_edge
  %err.0 = phi i32 [ 0, %if.then1 ], [ 0, %if.then7 ], [ 0, %if.then12 ], [ 0, %if.else18 ], [ 0, %entry.if.end23_crit_edge ], [ -1, %if.else15.if.end23_crit_edge ]
  ret i32 %err.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dw_edma_device_issue_pending(ptr noundef %dchan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %configured = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 8
  %0 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %request = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 6
  %2 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp7 = icmp eq i32 %3, 0
  br i1 %cmp7, label %land.lhs.true9, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true9:                                   ; preds = %land.lhs.true
  %status = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 7
  %4 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp10 = icmp eq i32 %5, 0
  br i1 %cmp10, label %land.lhs.true12, label %land.lhs.true9.if.end_crit_edge

land.lhs.true9.if.end_crit_edge:                  ; preds = %land.lhs.true9
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true12:                                  ; preds = %land.lhs.true9
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6
  %6 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %7, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %land.lhs.true12.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

land.lhs.true12.vchan_issue_pending.exit_crit_edge: ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %land.lhs.true12
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 6, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 5, i32 1
  %10 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %12 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %7, ptr %9, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %desc_issued.i, ptr %11, align 4
  store ptr %11, ptr %prev.i.i, align 4
  %15 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i.i, align 4
  br label %vchan_issue_pending.exit

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %land.lhs.true12.vchan_issue_pending.exit_crit_edge
  %16 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.i.not = icmp eq ptr %17, %desc_issued.i
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end_crit_edge, label %if.then

vchan_issue_pending.exit.if.end_crit_edge:        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 2, ptr %status, align 4
  tail call fastcc void @dw_edma_start_transfer(ptr noundef %dchan)
  br label %if.end

if.end:                                           ; preds = %if.then, %vchan_issue_pending.exit.if.end_crit_edge, %land.lhs.true9.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dw_edma_device_tx_status(ptr noundef %dchan, i32 noundef %cookie, ptr noundef writeonly %txstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !50
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %4 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.land.lhs.true_crit_edge

if.then.i.i.land.lhs.true_crit_edge:              ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.land.lhs.true_crit_edge

if.else.i.i.land.lhs.true_crit_edge:              ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %if.else.i.i.land.lhs.true_crit_edge, %if.then.i.i.land.lhs.true_crit_edge
  %status = getelementptr inbounds %struct.dw_edma_chan, ptr %dchan, i32 0, i32 7
  %8 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %status, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp3 = icmp eq i32 %9, 1
  %spec.select = select i1 %cmp3, i32 2, i32 1
  br i1 %tobool.not.i, label %land.lhs.true.cleanup_crit_edge, label %do.body8

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body8:                                         ; preds = %land.lhs.true
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dchan, i32 0, i32 3
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call15 = tail call ptr @vchan_find_desc(ptr noundef %dchan, i32 noundef %cookie) #9
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.body8.if.then.i44_crit_edge, label %if.then20

do.body8.if.then.i44_crit_edge:                   ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then.i44

if.then20:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #11
  %alloc_sz = getelementptr inbounds %struct.dw_edma_desc, ptr %call15, i32 0, i32 4
  %10 = ptrtoint ptr %alloc_sz to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %alloc_sz, align 4
  %xfer_sz = getelementptr inbounds %struct.dw_edma_desc, ptr %call15, i32 0, i32 5
  %12 = ptrtoint ptr %xfer_sz to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xfer_sz, align 4
  %sub = sub i32 %11, %13
  br label %if.then.i44

if.then.i44:                                      ; preds = %if.then20, %do.body8.if.then.i44_crit_edge
  %residue.0 = phi i32 [ %sub, %if.then20 ], [ 0, %do.body8.if.then.i44_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #9
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %14 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %residue.0, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.then.i44, %land.lhs.true.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %spec.select, %if.then.i44 ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i.cleanup_crit_edge ], [ %spec.select, %land.lhs.true.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dw_edma_device_prep_slave_sg(ptr noundef %dchan, ptr noundef %sgl, i32 noundef %len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #0 align 64 {
entry:
  %xfer = alloca %struct.dw_edma_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xfer) #9
  %0 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1, i32 0, i32 1
  %2 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 2
  %3 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 3
  %4 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 4
  %5 = getelementptr inbounds i8, ptr %xfer, i32 12
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %5, align 4
  %7 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %dchan, ptr %xfer, align 4
  %8 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %direction, ptr %2, align 4
  %9 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %sgl, ptr %0, align 4
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %len, ptr %1, align 4
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %3, align 4
  %12 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %4, align 4
  %call = call fastcc ptr @dw_edma_device_transfer(ptr noundef nonnull %xfer)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xfer) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dw_edma_device_prep_dma_cyclic(ptr noundef %dchan, i32 noundef %paddr, i32 noundef %len, i32 noundef %count, i32 noundef %direction, i32 noundef %flags) #0 align 64 {
entry:
  %xfer = alloca %struct.dw_edma_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xfer) #9
  %0 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1, i32 0, i32 1
  %2 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1, i32 0, i32 2
  %3 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 2
  %4 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 3
  %5 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 4
  %6 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dchan, ptr %xfer, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %direction, ptr %3, align 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %paddr, ptr %0, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %len, ptr %1, align 4
  %10 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %count, ptr %2, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %4, align 4
  %12 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 1, ptr %5, align 4
  %call = call fastcc ptr @dw_edma_device_transfer(ptr noundef nonnull %xfer)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xfer) #9
  ret ptr %call
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @dw_edma_device_prep_interleaved_dma(ptr noundef %dchan, ptr noundef %ilt, i32 noundef %flags) #0 align 64 {
entry:
  %xfer = alloca %struct.dw_edma_transfer, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 28, ptr nonnull %xfer) #9
  %0 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1
  %1 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 2
  %2 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 3
  %3 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 4
  %4 = getelementptr inbounds i8, ptr %xfer, i32 8
  %5 = ptrtoint ptr %4 to i32
  call void @__asan_storeN_noabort(i32 %5, i32 8)
  store i64 -1, ptr %4, align 4
  %6 = ptrtoint ptr %xfer to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %dchan, ptr %xfer, align 4
  %dir = getelementptr inbounds %struct.dma_interleaved_template, ptr %ilt, i32 0, i32 2
  %7 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dir, align 4
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %1, align 4
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ilt, ptr %0, align 4
  %11 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %2, align 4
  %12 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %3, align 4
  %call = call fastcc ptr @dw_edma_device_transfer(ptr noundef nonnull %xfer)
  call void @llvm.lifetime.end.p0(i64 28, ptr nonnull %xfer) #9
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dw_edma_free_desc(ptr noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chunk.i = getelementptr inbounds %struct.dw_edma_desc, ptr %desc, i32 0, i32 2
  %0 = ptrtoint ptr %chunk.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chunk.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.dw_edma_free_chunk.exit_crit_edge, label %if.end.i

entry.dw_edma_free_chunk.exit_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_edma_free_chunk.exit

if.end.i:                                         ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %cmp.not29.i = icmp eq ptr %3, %1
  br i1 %cmp.not29.i, label %if.end.i.for.end.i_crit_edge, label %for.body.lr.ph.i

if.end.i.for.end.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %chunks_alloc.i = getelementptr inbounds %struct.dw_edma_desc, ptr %desc, i32 0, i32 3
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %child.030.i = phi ptr [ %3, %for.body.lr.ph.i ], [ %_next.0.i, %list_del.exit.i.for.body.i_crit_edge ]
  %4 = ptrtoint ptr %child.030.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %_next.0.i = load ptr, ptr %child.030.i, align 4
  %burst.i.i = getelementptr inbounds %struct.dw_edma_chunk, ptr %child.030.i, i32 0, i32 2
  %5 = ptrtoint ptr %burst.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %burst.i.i, align 4
  %7 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %6, align 8
  %cmp.not24.i.i = icmp eq ptr %8, %6
  br i1 %cmp.not24.i.i, label %for.body.i.dw_edma_free_burst.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.body.i.dw_edma_free_burst.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_edma_free_burst.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.body.i
  %bursts_alloc.i.i = getelementptr inbounds %struct.dw_edma_chunk, ptr %child.030.i, i32 0, i32 3
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %list_del.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %child.025.i.i = phi ptr [ %8, %for.body.lr.ph.i.i ], [ %_next.0.i.i, %list_del.exit.i.i.for.body.i.i_crit_edge ]
  %9 = ptrtoint ptr %child.025.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %_next.0.i.i = load ptr, ptr %child.025.i.i, align 8
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %child.025.i.i) #9
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %for.body.i.i.list_del.exit.i.i_crit_edge

for.body.i.i.list_del.exit.i.i_crit_edge:         ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i.i

if.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %child.025.i.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i.i.i, align 4
  %12 = ptrtoint ptr %child.025.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %child.025.i.i, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit.i.i

list_del.exit.i.i:                                ; preds = %if.end.i.i.i.i, %for.body.i.i.list_del.exit.i.i_crit_edge
  %16 = ptrtoint ptr %child.025.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %child.025.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %child.025.i.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i.i, align 4
  tail call void @kfree(ptr noundef %child.025.i.i) #9
  %18 = ptrtoint ptr %bursts_alloc.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %bursts_alloc.i.i, align 4
  %dec.i.i = add i32 %19, -1
  store i32 %dec.i.i, ptr %bursts_alloc.i.i, align 4
  %20 = ptrtoint ptr %burst.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %burst.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %_next.0.i.i, %21
  br i1 %cmp.not.i.i, label %list_del.exit.i.i.dw_edma_free_burst.exit.i_crit_edge, label %list_del.exit.i.i.for.body.i.i_crit_edge

list_del.exit.i.i.for.body.i.i_crit_edge:         ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i.i

list_del.exit.i.i.dw_edma_free_burst.exit.i_crit_edge: ; preds = %list_del.exit.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %dw_edma_free_burst.exit.i

dw_edma_free_burst.exit.i:                        ; preds = %list_del.exit.i.i.dw_edma_free_burst.exit.i_crit_edge, %for.body.i.dw_edma_free_burst.exit.i_crit_edge
  %child.0.lcssa.i.i = phi ptr [ %6, %for.body.i.dw_edma_free_burst.exit.i_crit_edge ], [ %_next.0.i.i, %list_del.exit.i.i.dw_edma_free_burst.exit.i_crit_edge ]
  tail call void @kfree(ptr noundef %child.0.lcssa.i.i) #9
  %22 = ptrtoint ptr %burst.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %burst.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %child.030.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %dw_edma_free_burst.exit.i.list_del.exit.i_crit_edge

dw_edma_free_burst.exit.i.list_del.exit.i_crit_edge: ; preds = %dw_edma_free_burst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %dw_edma_free_burst.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i28.i = getelementptr inbounds %struct.list_head, ptr %child.030.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i28.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i28.i, align 4
  %25 = ptrtoint ptr %child.030.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %child.030.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %dw_edma_free_burst.exit.i.list_del.exit.i_crit_edge
  %29 = ptrtoint ptr %child.030.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %child.030.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %child.030.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @kfree(ptr noundef %child.030.i) #9
  %31 = ptrtoint ptr %chunks_alloc.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chunks_alloc.i, align 4
  %dec.i = add i32 %32, -1
  store i32 %dec.i, ptr %chunks_alloc.i, align 4
  %33 = ptrtoint ptr %chunk.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chunk.i, align 4
  %cmp.not.i = icmp eq ptr %_next.0.i, %34
  br i1 %cmp.not.i, label %list_del.exit.i.for.end.i_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.for.end.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end.i

for.end.i:                                        ; preds = %list_del.exit.i.for.end.i_crit_edge, %if.end.i.for.end.i_crit_edge
  %child.0.lcssa.i = phi ptr [ %1, %if.end.i.for.end.i_crit_edge ], [ %_next.0.i, %list_del.exit.i.for.end.i_crit_edge ]
  tail call void @kfree(ptr noundef %child.0.lcssa.i) #9
  %35 = ptrtoint ptr %chunk.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %chunk.i, align 4
  br label %dw_edma_free_chunk.exit

dw_edma_free_chunk.exit:                          ; preds = %for.end.i, %entry.dw_edma_free_chunk.exit_crit_edge
  tail call void @kfree(ptr noundef %desc) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dw_edma_v0_core_ch_status(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dw_edma_device_transfer(ptr nocapture noundef readonly %xfer) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %xfer to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %xfer, align 4
  %direction = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 2
  %2 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %direction, align 4
  %configured = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %configured to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %configured, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %config = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 9
  %6 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %config, align 4
  %8 = zext i32 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.16)
  switch i32 %7, label %sw.default [
    i32 2, label %sw.bb
    i32 1, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp = icmp eq i32 %3, 2
  br i1 %cmp, label %land.lhs.true, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true:                                    ; preds = %sw.bb
  %dir2 = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 3
  %9 = ptrtoint ptr %dir2 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dir2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp3 = icmp eq i32 %10, 1
  br i1 %cmp3, label %land.lhs.true.sw.epilog_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true.sw.epilog_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.bb6:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp7 = icmp eq i32 %3, 1
  br i1 %cmp7, label %land.lhs.true8, label %sw.bb6.cleanup_crit_edge

sw.bb6.cleanup_crit_edge:                         ; preds = %sw.bb6
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true8:                                   ; preds = %sw.bb6
  %dir9 = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 3
  %11 = ptrtoint ptr %dir9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dir9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10 = icmp eq i32 %12, 0
  br i1 %cmp10, label %land.lhs.true8.sw.epilog_crit_edge, label %land.lhs.true8.cleanup_crit_edge

land.lhs.true8.cleanup_crit_edge:                 ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true8.sw.epilog_crit_edge:               ; preds = %land.lhs.true8
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.default:                                       ; preds = %if.end
  %13 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.17)
  switch i32 %3, label %sw.default.cleanup_crit_edge [
    i32 1, label %land.lhs.true14
    i32 2, label %land.lhs.true20
  ]

sw.default.cleanup_crit_edge:                     ; preds = %sw.default
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true14:                                  ; preds = %sw.default
  %dir15 = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %dir15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dir15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %15)
  %cmp16 = icmp eq i32 %15, 1
  br i1 %cmp16, label %land.lhs.true14.sw.epilog_crit_edge, label %land.lhs.true14.cleanup_crit_edge

land.lhs.true14.cleanup_crit_edge:                ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true14.sw.epilog_crit_edge:              ; preds = %land.lhs.true14
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

land.lhs.true20:                                  ; preds = %sw.default
  %dir21 = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dir21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dir21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp22 = icmp eq i32 %17, 0
  br i1 %cmp22, label %land.lhs.true20.sw.epilog_crit_edge, label %land.lhs.true20.cleanup_crit_edge

land.lhs.true20.cleanup_crit_edge:                ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true20.sw.epilog_crit_edge:              ; preds = %land.lhs.true20
  call void @__sanitizer_cov_trace_pc() #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %land.lhs.true20.sw.epilog_crit_edge, %land.lhs.true14.sw.epilog_crit_edge, %land.lhs.true8.sw.epilog_crit_edge, %land.lhs.true.sw.epilog_crit_edge
  %type = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 4
  %18 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %type, align 4
  %20 = zext i32 %19 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.18)
  switch i32 %19, label %sw.epilog.cleanup_crit_edge [
    i32 1, label %if.then26
    i32 0, label %if.then36
    i32 2, label %if.then45
  ]

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then26:                                        ; preds = %sw.epilog
  %len = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1, i32 0, i32 1
  %21 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %tobool28.not = icmp eq i32 %22, 0
  br i1 %tobool28.not, label %if.then26.cleanup_crit_edge, label %lor.lhs.false

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.then26
  %cnt30 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1, i32 0, i32 2
  %23 = ptrtoint ptr %cnt30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cnt30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool31.not = icmp eq i32 %24, 0
  br i1 %tobool31.not, label %lor.lhs.false.cleanup_crit_edge, label %lor.lhs.false.if.end61_crit_edge

lor.lhs.false.if.end61_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then36:                                        ; preds = %sw.epilog
  %len38 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1, i32 0, i32 1
  %25 = ptrtoint ptr %len38 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %len38, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp39 = icmp eq i32 %26, 0
  br i1 %cmp39, label %if.then36.cleanup_crit_edge, label %if.then36.if.end61_crit_edge

if.then36.if.end61_crit_edge:                     ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.then36.cleanup_crit_edge:                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then45:                                        ; preds = %sw.epilog
  %xfer46 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1
  %27 = ptrtoint ptr %xfer46 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %xfer46, align 4
  %numf = getelementptr inbounds %struct.dma_interleaved_template, ptr %28, i32 0, i32 7
  %29 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %numf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool47.not = icmp eq i32 %30, 0
  br i1 %tobool47.not, label %if.then45.cleanup_crit_edge, label %land.lhs.true53

if.then45.cleanup_crit_edge:                      ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true53:                                  ; preds = %if.then45
  %frame_size = getelementptr inbounds %struct.dma_interleaved_template, ptr %28, i32 0, i32 8
  %31 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %frame_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %cmp55.not = icmp eq i32 %32, 0
  br i1 %cmp55.not, label %land.lhs.true53.if.end61_crit_edge, label %land.lhs.true53.cleanup_crit_edge

land.lhs.true53.cleanup_crit_edge:                ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

land.lhs.true53.if.end61_crit_edge:               ; preds = %land.lhs.true53
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end61

if.end61:                                         ; preds = %land.lhs.true53.if.end61_crit_edge, %if.then36.if.end61_crit_edge, %lor.lhs.false.if.end61_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %33 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %33, i32 noundef 2304, i32 noundef 136) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.end61.cleanup_crit_edge, label %if.end.i, !prof !46

if.end61.cleanup_crit_edge:                       ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i:                                         ; preds = %if.end61
  %chan4.i = getelementptr inbounds %struct.dw_edma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %34 = ptrtoint ptr %chan4.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %1, ptr %chan4.i, align 4
  %call5.i = tail call fastcc ptr @dw_edma_alloc_chunk(ptr noundef nonnull %call7.i.i.i) #9
  %tobool6.not.i = icmp eq ptr %call5.i, null
  br i1 %tobool6.not.i, label %if.then7.i, label %if.end68

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #9
  br label %cleanup

if.end68:                                         ; preds = %if.end.i
  %call69 = tail call fastcc ptr @dw_edma_alloc_chunk(ptr noundef nonnull %call7.i.i.i)
  %tobool70.not = icmp eq ptr %call69, null
  br i1 %tobool70.not, label %if.end68.if.then259_crit_edge, label %if.end80, !prof !46

if.end68.if.then259_crit_edge:                    ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then259

if.end80:                                         ; preds = %if.end68
  %35 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %36)
  %cmp82 = icmp eq i32 %36, 2
  br i1 %cmp82, label %if.end91.thread, label %if.end91

if.end91.thread:                                  ; preds = %if.end80
  %xfer84 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1
  %37 = ptrtoint ptr %xfer84 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %xfer84, align 4
  %dst_start = getelementptr inbounds %struct.dma_interleaved_template, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %dst_start to i32
  call void @__asan_load4_noabort(i32 %39)
  %dst_addr.0394 = load i32, ptr %dst_start, align 4
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %40)
  %src_addr.0395 = load i32, ptr %38, align 4
  %numf109 = getelementptr inbounds %struct.dma_interleaved_template, ptr %38, i32 0, i32 7
  %41 = ptrtoint ptr %numf109 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %numf109, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp110.not = icmp eq i32 %42, 0
  br i1 %cmp110.not, label %if.else114, label %if.end91.thread.for.body.lr.ph_crit_edge

if.end91.thread.for.body.lr.ph_crit_edge:         ; preds = %if.end91.thread
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

if.end91:                                         ; preds = %if.end80
  %src_addr88 = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 9, i32 1
  %dst_addr90 = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 9, i32 2
  %43 = ptrtoint ptr %dst_addr90 to i32
  call void @__asan_load4_noabort(i32 %43)
  %dst_addr.0 = load i32, ptr %dst_addr90, align 4
  %44 = ptrtoint ptr %src_addr88 to i32
  call void @__asan_load4_noabort(i32 %44)
  %src_addr.0 = load i32, ptr %src_addr88, align 4
  %45 = zext i32 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %36, label %if.end91.for.end_crit_edge [
    i32 1, label %if.then94
    i32 0, label %if.then100
  ]

if.end91.for.end_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.then94:                                        ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %cnt96 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1, i32 0, i32 2
  br label %if.end120

if.then100:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #11
  %xfer101 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1
  %len102 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1, i32 0, i32 1
  %46 = ptrtoint ptr %xfer101 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %xfer101, align 4
  br label %if.end120

if.else114:                                       ; preds = %if.end91.thread
  call void @__sanitizer_cov_trace_pc() #11
  %frame_size116 = getelementptr inbounds %struct.dma_interleaved_template, ptr %38, i32 0, i32 8
  br label %if.end120

if.end120:                                        ; preds = %if.else114, %if.then100, %if.then94
  %src_addr.0399 = phi i32 [ %src_addr.0, %if.then94 ], [ %src_addr.0, %if.then100 ], [ %src_addr.0395, %if.else114 ]
  %dst_addr.0397 = phi i32 [ %dst_addr.0, %if.then94 ], [ %dst_addr.0, %if.then100 ], [ %dst_addr.0394, %if.else114 ]
  %sg.0 = phi ptr [ null, %if.then94 ], [ %47, %if.then100 ], [ null, %if.else114 ]
  %cnt.0.in = phi ptr [ %cnt96, %if.then94 ], [ %len102, %if.then100 ], [ %frame_size116, %if.else114 ]
  %48 = ptrtoint ptr %cnt.0.in to i32
  call void @__asan_load4_noabort(i32 %48)
  %cnt.0 = load i32, ptr %cnt.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cnt.0)
  %cmp121400.not = icmp eq i32 %cnt.0, 0
  br i1 %cmp121400.not, label %if.end120.for.end_crit_edge, label %if.end120.for.body.lr.ph_crit_edge

if.end120.for.body.lr.ph_crit_edge:               ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.lr.ph

if.end120.for.end_crit_edge:                      ; preds = %if.end120
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end120.for.body.lr.ph_crit_edge, %if.end91.thread.for.body.lr.ph_crit_edge
  %cnt.0422 = phi i32 [ %cnt.0, %if.end120.for.body.lr.ph_crit_edge ], [ %42, %if.end91.thread.for.body.lr.ph_crit_edge ]
  %sg.0421 = phi ptr [ %sg.0, %if.end120.for.body.lr.ph_crit_edge ], [ null, %if.end91.thread.for.body.lr.ph_crit_edge ]
  %dst_addr.0397420 = phi i32 [ %dst_addr.0397, %if.end120.for.body.lr.ph_crit_edge ], [ %dst_addr.0394, %if.end91.thread.for.body.lr.ph_crit_edge ]
  %src_addr.0399419 = phi i32 [ %src_addr.0399, %if.end120.for.body.lr.ph_crit_edge ], [ %src_addr.0395, %if.end91.thread.for.body.lr.ph_crit_edge ]
  %ll_max = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 4
  %xfer169 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1
  %len159 = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 1, i32 0, i32 1
  %alloc_sz = getelementptr inbounds %struct.dw_edma_desc, ptr %call7.i.i.i, i32 0, i32 4
  %dir179 = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0405 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %chunk.0404 = phi ptr [ %call69, %for.body.lr.ph ], [ %chunk.1, %for.inc.for.body_crit_edge ]
  %sg.1403 = phi ptr [ %sg.0421, %for.body.lr.ph ], [ %sg.2, %for.inc.for.body_crit_edge ]
  %dst_addr.1402 = phi i32 [ %dst_addr.0397420, %for.body.lr.ph ], [ %dst_addr.4, %for.inc.for.body_crit_edge ]
  %src_addr.1401 = phi i32 [ %src_addr.0399419, %for.body.lr.ph ], [ %src_addr.4, %for.inc.for.body_crit_edge ]
  %49 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %type, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %cmp123 = icmp eq i32 %50, 0
  %tobool125.not = icmp eq ptr %sg.1403, null
  %or.cond = select i1 %cmp123, i1 %tobool125.not, i1 false
  br i1 %or.cond, label %for.body.for.end_crit_edge, label %if.end127

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

if.end127:                                        ; preds = %for.body
  %bursts_alloc = getelementptr inbounds %struct.dw_edma_chunk, ptr %chunk.0404, i32 0, i32 3
  %51 = ptrtoint ptr %bursts_alloc to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %bursts_alloc, align 4
  %53 = ptrtoint ptr %ll_max to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ll_max, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %52, i32 %54)
  %cmp128 = icmp eq i32 %52, %54
  br i1 %cmp128, label %if.then129, label %if.end127.if.end142_crit_edge

if.end127.if.end142_crit_edge:                    ; preds = %if.end127
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then129:                                       ; preds = %if.end127
  %call130 = tail call fastcc ptr @dw_edma_alloc_chunk(ptr noundef nonnull %call7.i.i.i)
  %tobool131.not = icmp eq ptr %call130, null
  br i1 %tobool131.not, label %if.then129.if.then259_crit_edge, label %if.then129.if.end142_crit_edge, !prof !46

if.then129.if.end142_crit_edge:                   ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end142

if.then129.if.then259_crit_edge:                  ; preds = %if.then129
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then259

if.end142:                                        ; preds = %if.then129.if.end142_crit_edge, %if.end127.if.end142_crit_edge
  %chunk.1 = phi ptr [ %call130, %if.then129.if.end142_crit_edge ], [ %chunk.0404, %if.end127.if.end142_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %55 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i372 = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %55, i32 noundef 2304, i32 noundef 32) #12
  %tobool.not.i373 = icmp eq ptr %call7.i.i.i372, null
  br i1 %tobool.not.i373, label %if.end142.if.then259_crit_edge, label %if.end.i374, !prof !46

if.end142.if.then259_crit_edge:                   ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.then259

if.end.i374:                                      ; preds = %if.end142
  %56 = ptrtoint ptr %call7.i.i.i372 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %call7.i.i.i372, ptr %call7.i.i.i372, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i372, i32 0, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %call7.i.i.i372, ptr %prev.i.i, align 4
  %burst4.i = getelementptr inbounds %struct.dw_edma_chunk, ptr %chunk.1, i32 0, i32 2
  %58 = ptrtoint ptr %burst4.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %burst4.i, align 4
  %tobool5.not.i = icmp eq ptr %59, null
  %bursts_alloc10.i = getelementptr inbounds %struct.dw_edma_chunk, ptr %chunk.1, i32 0, i32 3
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i374
  %60 = ptrtoint ptr %bursts_alloc10.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %bursts_alloc10.i, align 4
  %inc.i = add i32 %61, 1
  store i32 %inc.i, ptr %bursts_alloc10.i, align 4
  %prev.i21.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %62 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i21.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i372, ptr noundef %63, ptr noundef nonnull %59) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then6.i.if.end154_crit_edge

if.then6.i.if.end154_crit_edge:                   ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end154

if.end.i.i.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %64 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call7.i.i.i372, ptr %prev.i21.i, align 4
  %65 = ptrtoint ptr %call7.i.i.i372 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %59, ptr %call7.i.i.i372, align 8
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %call7.i.i.i372, ptr %63, align 4
  br label %if.end154

if.else.i:                                        ; preds = %if.end.i374
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %bursts_alloc10.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %bursts_alloc10.i, align 4
  %69 = ptrtoint ptr %burst4.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call7.i.i.i372, ptr %burst4.i, align 4
  br label %if.end154

if.end154:                                        ; preds = %if.else.i, %if.end.i.i.i, %if.then6.i.if.end154_crit_edge
  %70 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %type, align 4
  %72 = zext i32 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %72, ptr @__sancov_gen_cov_switch_values.20)
  switch i32 %71, label %if.end154.if.end174_crit_edge [
    i32 1, label %if.end154.if.end174.sink.split_crit_edge
    i32 0, label %if.then163
    i32 2, label %if.then168
  ]

if.end154.if.end174.sink.split_crit_edge:         ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end174.sink.split

if.end154.if.end174_crit_edge:                    ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end174

if.then163:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.1403, i32 0, i32 4
  br label %if.end174.sink.split

if.then168:                                       ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #11
  %73 = ptrtoint ptr %xfer169 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %xfer169, align 4
  %arrayidx = getelementptr %struct.dma_interleaved_template, ptr %74, i32 0, i32 9, i32 %i.0405
  br label %if.end174.sink.split

if.end174.sink.split:                             ; preds = %if.then168, %if.then163, %if.end154.if.end174.sink.split_crit_edge
  %dma_length.sink = phi ptr [ %dma_length, %if.then163 ], [ %arrayidx, %if.then168 ], [ %len159, %if.end154.if.end174.sink.split_crit_edge ]
  %75 = ptrtoint ptr %dma_length.sink to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %dma_length.sink, align 4
  %sz164 = getelementptr inbounds %struct.dw_edma_burst, ptr %call7.i.i.i372, i32 0, i32 3
  %77 = ptrtoint ptr %sz164 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %76, ptr %sz164, align 8
  br label %if.end174

if.end174:                                        ; preds = %if.end174.sink.split, %if.end154.if.end174_crit_edge
  %sz175 = getelementptr inbounds %struct.dw_edma_burst, ptr %call7.i.i.i372, i32 0, i32 3
  %78 = ptrtoint ptr %sz175 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %sz175, align 8
  %sz176 = getelementptr inbounds %struct.dw_edma_chunk, ptr %chunk.1, i32 0, i32 5, i32 2
  %80 = ptrtoint ptr %sz176 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sz176, align 4
  %add = add i32 %81, %79
  store i32 %add, ptr %sz176, align 4
  %82 = load i32, ptr %sz175, align 8
  %83 = ptrtoint ptr %alloc_sz to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %alloc_sz, align 8
  %add178 = add i32 %84, %82
  store i32 %add178, ptr %alloc_sz, align 8
  %85 = ptrtoint ptr %dir179 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dir179, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %86)
  %cmp180 = icmp eq i32 %86, 0
  br i1 %cmp180, label %if.then181, label %if.else199

if.then181:                                       ; preds = %if.end174
  %conv = zext i32 %src_addr.1401 to i64
  %sar = getelementptr inbounds %struct.dw_edma_burst, ptr %call7.i.i.i372, i32 0, i32 1
  %87 = ptrtoint ptr %sar to i32
  call void @__asan_store8_noabort(i32 %87)
  store i64 %conv, ptr %sar, align 8
  %88 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %type, align 4
  %90 = zext i32 %89 to i64
  call void @__sanitizer_cov_trace_switch(i64 %90, ptr @__sancov_gen_cov_switch_values.21)
  switch i32 %89, label %if.then181.if.end222_crit_edge [
    i32 1, label %if.then185
    i32 0, label %if.then192
  ]

if.then181.if.end222_crit_edge:                   ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end222

if.then185:                                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #11
  %91 = ptrtoint ptr %xfer169 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %xfer169, align 4
  %conv187 = zext i32 %92 to i64
  %dar = getelementptr inbounds %struct.dw_edma_burst, ptr %call7.i.i.i372, i32 0, i32 2
  %93 = ptrtoint ptr %dar to i32
  call void @__asan_store8_noabort(i32 %93)
  store i64 %conv187, ptr %dar, align 8
  br label %if.end222thread-pre-split

if.then192:                                       ; preds = %if.then181
  call void @__sanitizer_cov_trace_pc() #11
  %dma_length193 = getelementptr inbounds %struct.scatterlist, ptr %sg.1403, i32 0, i32 4
  %94 = ptrtoint ptr %dma_length193 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma_length193, align 4
  %add194 = add i32 %95, %src_addr.1401
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.1403, i32 0, i32 3
  %96 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %dma_address, align 4
  %conv195 = zext i32 %97 to i64
  %dar196 = getelementptr inbounds %struct.dw_edma_burst, ptr %call7.i.i.i372, i32 0, i32 2
  %98 = ptrtoint ptr %dar196 to i32
  call void @__asan_store8_noabort(i32 %98)
  store i64 %conv195, ptr %dar196, align 8
  br label %if.end222thread-pre-split

if.else199:                                       ; preds = %if.end174
  %conv200 = zext i32 %dst_addr.1402 to i64
  %dar201 = getelementptr inbounds %struct.dw_edma_burst, ptr %call7.i.i.i372, i32 0, i32 2
  %99 = ptrtoint ptr %dar201 to i32
  call void @__asan_store8_noabort(i32 %99)
  store i64 %conv200, ptr %dar201, align 8
  %100 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %type, align 4
  %102 = zext i32 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %102, ptr @__sancov_gen_cov_switch_values.22)
  switch i32 %101, label %if.else199.if.end222_crit_edge [
    i32 1, label %if.then205
    i32 0, label %if.then214
  ]

if.else199.if.end222_crit_edge:                   ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end222

if.then205:                                       ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #11
  %103 = ptrtoint ptr %xfer169 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load i32, ptr %xfer169, align 4
  %conv208 = zext i32 %104 to i64
  %sar209 = getelementptr inbounds %struct.dw_edma_burst, ptr %call7.i.i.i372, i32 0, i32 1
  %105 = ptrtoint ptr %sar209 to i32
  call void @__asan_store8_noabort(i32 %105)
  store i64 %conv208, ptr %sar209, align 8
  br label %if.end222thread-pre-split

if.then214:                                       ; preds = %if.else199
  call void @__sanitizer_cov_trace_pc() #11
  %dma_length215 = getelementptr inbounds %struct.scatterlist, ptr %sg.1403, i32 0, i32 4
  %106 = ptrtoint ptr %dma_length215 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %dma_length215, align 4
  %add216 = add i32 %107, %dst_addr.1402
  %dma_address217 = getelementptr inbounds %struct.scatterlist, ptr %sg.1403, i32 0, i32 3
  %108 = ptrtoint ptr %dma_address217 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dma_address217, align 4
  %conv218 = zext i32 %109 to i64
  %sar219 = getelementptr inbounds %struct.dw_edma_burst, ptr %call7.i.i.i372, i32 0, i32 1
  %110 = ptrtoint ptr %sar219 to i32
  call void @__asan_store8_noabort(i32 %110)
  store i64 %conv218, ptr %sar219, align 8
  br label %if.end222thread-pre-split

if.end222thread-pre-split:                        ; preds = %if.then214, %if.then205, %if.then192, %if.then185
  %src_addr.2.ph = phi i32 [ %src_addr.1401, %if.then214 ], [ %src_addr.1401, %if.then205 ], [ %add194, %if.then192 ], [ %src_addr.1401, %if.then185 ]
  %dst_addr.2.ph = phi i32 [ %add216, %if.then214 ], [ %dst_addr.1402, %if.then205 ], [ %dst_addr.1402, %if.then192 ], [ %dst_addr.1402, %if.then185 ]
  %111 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %111)
  %.pr = load i32, ptr %type, align 4
  br label %if.end222

if.end222:                                        ; preds = %if.end222thread-pre-split, %if.else199.if.end222_crit_edge, %if.then181.if.end222_crit_edge
  %112 = phi i32 [ %.pr, %if.end222thread-pre-split ], [ %101, %if.else199.if.end222_crit_edge ], [ %89, %if.then181.if.end222_crit_edge ]
  %src_addr.2 = phi i32 [ %src_addr.2.ph, %if.end222thread-pre-split ], [ %src_addr.1401, %if.else199.if.end222_crit_edge ], [ %src_addr.1401, %if.then181.if.end222_crit_edge ]
  %dst_addr.2 = phi i32 [ %dst_addr.2.ph, %if.end222thread-pre-split ], [ %dst_addr.1402, %if.else199.if.end222_crit_edge ], [ %dst_addr.1402, %if.then181.if.end222_crit_edge ]
  %113 = zext i32 %112 to i64
  call void @__sanitizer_cov_trace_switch(i64 %113, ptr @__sancov_gen_cov_switch_values.23)
  switch i32 %112, label %if.end222.for.inc_crit_edge [
    i32 0, label %if.then226
    i32 2, label %land.lhs.true232
  ]

if.end222.for.inc_crit_edge:                      ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then226:                                       ; preds = %if.end222
  call void @__sanitizer_cov_trace_pc() #11
  %call227 = tail call ptr @sg_next(ptr noundef %sg.1403) #9
  br label %for.inc

land.lhs.true232:                                 ; preds = %if.end222
  %114 = ptrtoint ptr %xfer169 to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %xfer169, align 4
  %frame_size234 = getelementptr inbounds %struct.dma_interleaved_template, ptr %115, i32 0, i32 8
  %116 = ptrtoint ptr %frame_size234 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %frame_size234, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %117)
  %cmp235.not = icmp eq i32 %117, 0
  br i1 %cmp235.not, label %land.lhs.true232.for.inc_crit_edge, label %if.then237

land.lhs.true232.for.inc_crit_edge:               ; preds = %land.lhs.true232
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then237:                                       ; preds = %land.lhs.true232
  %src_sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %115, i32 0, i32 5
  %118 = ptrtoint ptr %src_sgl to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %src_sgl, align 2, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool241.not = icmp eq i8 %119, 0
  br i1 %tobool241.not, label %if.then237.if.end247_crit_edge, label %if.then242

if.then237.if.end247_crit_edge:                   ; preds = %if.then237
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end247

if.then242:                                       ; preds = %if.then237
  %120 = ptrtoint ptr %sz175 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %sz175, align 8
  %add244 = add i32 %121, %src_addr.2
  %src_inc.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %115, i32 0, i32 3
  %122 = ptrtoint ptr %src_inc.i to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %src_inc.i, align 4, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %123)
  %tobool.not.i375 = icmp eq i8 %123, 0
  br i1 %tobool.not.i375, label %if.then242.dmaengine_get_src_icg.exit_crit_edge, label %if.then.i.i

if.then242.dmaengine_get_src_icg.exit_crit_edge:  ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_get_src_icg.exit

if.then.i.i:                                      ; preds = %if.then242
  call void @__sanitizer_cov_trace_pc() #11
  %src_icg.i = getelementptr %struct.dma_interleaved_template, ptr %115, i32 0, i32 9, i32 %i.0405, i32 3
  %124 = ptrtoint ptr %src_icg.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %src_icg.i, align 4
  %icg.i = getelementptr %struct.dma_interleaved_template, ptr %115, i32 0, i32 9, i32 %i.0405, i32 1
  %126 = ptrtoint ptr %icg.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load i32, ptr %icg.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %125)
  %tobool2.not.i.i.not = icmp eq i32 %125, 0
  %dir_icg.mux.i.i = select i1 %tobool2.not.i.i.not, i32 %127, i32 %125
  br label %dmaengine_get_src_icg.exit

dmaengine_get_src_icg.exit:                       ; preds = %if.then.i.i, %if.then242.dmaengine_get_src_icg.exit_crit_edge
  %retval.0.i.i = phi i32 [ %dir_icg.mux.i.i, %if.then.i.i ], [ 0, %if.then242.dmaengine_get_src_icg.exit_crit_edge ]
  %add246 = add i32 %add244, %retval.0.i.i
  br label %if.end247

if.end247:                                        ; preds = %dmaengine_get_src_icg.exit, %if.then237.if.end247_crit_edge
  %src_addr.3 = phi i32 [ %add246, %dmaengine_get_src_icg.exit ], [ %src_addr.2, %if.then237.if.end247_crit_edge ]
  %dst_sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %115, i32 0, i32 6
  %128 = ptrtoint ptr %dst_sgl to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %dst_sgl, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool248.not = icmp eq i8 %129, 0
  br i1 %tobool248.not, label %if.end247.for.inc_crit_edge, label %if.then249

if.end247.for.inc_crit_edge:                      ; preds = %if.end247
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then249:                                       ; preds = %if.end247
  %130 = ptrtoint ptr %sz175 to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %sz175, align 8
  %add251 = add i32 %131, %dst_addr.2
  %dst_inc.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %115, i32 0, i32 4
  %132 = ptrtoint ptr %dst_inc.i to i32
  call void @__asan_load1_noabort(i32 %132)
  %133 = load i8, ptr %dst_inc.i, align 1, !range !51
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %133)
  %tobool.not.i376 = icmp eq i8 %133, 0
  br i1 %tobool.not.i376, label %if.then249.dmaengine_get_dst_icg.exit_crit_edge, label %if.then.i.i382

if.then249.dmaengine_get_dst_icg.exit_crit_edge:  ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #11
  br label %dmaengine_get_dst_icg.exit

if.then.i.i382:                                   ; preds = %if.then249
  call void @__sanitizer_cov_trace_pc() #11
  %dst_icg.i = getelementptr %struct.dma_interleaved_template, ptr %115, i32 0, i32 9, i32 %i.0405, i32 2
  %134 = ptrtoint ptr %dst_icg.i to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %dst_icg.i, align 4
  %icg.i377 = getelementptr %struct.dma_interleaved_template, ptr %115, i32 0, i32 9, i32 %i.0405, i32 1
  %136 = ptrtoint ptr %icg.i377 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %icg.i377, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %135)
  %tobool2.not.i.i379.not = icmp eq i32 %135, 0
  %dir_icg.mux.i.i381 = select i1 %tobool2.not.i.i379.not, i32 %137, i32 %135
  br label %dmaengine_get_dst_icg.exit

dmaengine_get_dst_icg.exit:                       ; preds = %if.then.i.i382, %if.then249.dmaengine_get_dst_icg.exit_crit_edge
  %retval.0.i.i384 = phi i32 [ %dir_icg.mux.i.i381, %if.then.i.i382 ], [ 0, %if.then249.dmaengine_get_dst_icg.exit_crit_edge ]
  %add253 = add i32 %add251, %retval.0.i.i384
  br label %for.inc

for.inc:                                          ; preds = %dmaengine_get_dst_icg.exit, %if.end247.for.inc_crit_edge, %land.lhs.true232.for.inc_crit_edge, %if.then226, %if.end222.for.inc_crit_edge
  %src_addr.4 = phi i32 [ %src_addr.2, %if.then226 ], [ %src_addr.2, %land.lhs.true232.for.inc_crit_edge ], [ %src_addr.2, %if.end222.for.inc_crit_edge ], [ %src_addr.3, %dmaengine_get_dst_icg.exit ], [ %src_addr.3, %if.end247.for.inc_crit_edge ]
  %dst_addr.4 = phi i32 [ %dst_addr.2, %if.then226 ], [ %dst_addr.2, %land.lhs.true232.for.inc_crit_edge ], [ %dst_addr.2, %if.end222.for.inc_crit_edge ], [ %add253, %dmaengine_get_dst_icg.exit ], [ %dst_addr.2, %if.end247.for.inc_crit_edge ]
  %sg.2 = phi ptr [ %call227, %if.then226 ], [ %sg.1403, %land.lhs.true232.for.inc_crit_edge ], [ %sg.1403, %if.end222.for.inc_crit_edge ], [ %sg.1403, %dmaengine_get_dst_icg.exit ], [ %sg.1403, %if.end247.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0405, 1
  %exitcond.not = icmp eq i32 %inc, %cnt.0422
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.body.for.end_crit_edge, %if.end120.for.end_crit_edge, %if.end91.for.end_crit_edge
  %flags = getelementptr inbounds %struct.dw_edma_transfer, ptr %xfer, i32 0, i32 3
  %138 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load i32, ptr %flags, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %1) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 1
  %140 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %140)
  store i32 %139, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 4
  %141 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i.i, i32 0, i32 5
  %142 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  %143 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %144 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %144)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 4
  %prev.i.i385 = getelementptr inbounds %struct.virt_dma_chan, ptr %1, i32 0, i32 4, i32 1
  %145 = ptrtoint ptr %prev.i.i385 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %prev.i.i385, align 4
  %call.i.i.i386 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %146, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i386, label %if.end.i.i.i387, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i387:                                  ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %147 = ptrtoint ptr %prev.i.i385 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr %node.i, ptr %prev.i.i385, align 4
  %148 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %148)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i.i, i32 0, i32 2, i32 1
  %149 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %149)
  store ptr %146, ptr %prev3.i.i.i, align 8
  %150 = ptrtoint ptr %146 to i32
  call void @__asan_store4_noabort(i32 %150)
  store volatile ptr %node.i, ptr %146, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i387, %for.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  br label %cleanup

if.then259:                                       ; preds = %if.end142.if.then259_crit_edge, %if.then129.if.then259_crit_edge, %if.end68.if.then259_crit_edge
  tail call fastcc void @dw_edma_free_desc(ptr noundef nonnull %call7.i.i.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then259, %vchan_tx_prep.exit, %if.then7.i, %if.end61.cleanup_crit_edge, %land.lhs.true53.cleanup_crit_edge, %if.then45.cleanup_crit_edge, %if.then36.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %land.lhs.true20.cleanup_crit_edge, %land.lhs.true14.cleanup_crit_edge, %sw.default.cleanup_crit_edge, %land.lhs.true8.cleanup_crit_edge, %sw.bb6.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i.i, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %sw.bb.cleanup_crit_edge ], [ null, %land.lhs.true8.cleanup_crit_edge ], [ null, %sw.bb6.cleanup_crit_edge ], [ null, %sw.default.cleanup_crit_edge ], [ null, %land.lhs.true20.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.then26.cleanup_crit_edge ], [ null, %if.then36.cleanup_crit_edge ], [ null, %if.then45.cleanup_crit_edge ], [ null, %land.lhs.true53.cleanup_crit_edge ], [ null, %sw.epilog.cleanup_crit_edge ], [ null, %if.then259 ], [ null, %land.lhs.true14.cleanup_crit_edge ], [ null, %if.then7.i ], [ null, %if.end61.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @dw_edma_alloc_chunk(ptr nocapture noundef %desc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.dw_edma_desc, ptr %desc, i32 0, i32 1
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %chip = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %chip to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chip, align 4
  %dw2 = getelementptr inbounds %struct.dw_edma_chip, ptr %3, i32 0, i32 3
  %4 = ptrtoint ptr %dw2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dw2, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2304, i32 noundef 36) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !46

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %7 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %call7.i.i, ptr %call7.i.i, align 8
  %prev.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %chan6 = getelementptr inbounds %struct.dw_edma_chunk, ptr %call7.i.i, i32 0, i32 1
  %9 = ptrtoint ptr %chan6 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %1, ptr %chan6, align 8
  %chunks_alloc = getelementptr inbounds %struct.dw_edma_desc, ptr %desc, i32 0, i32 3
  %10 = ptrtoint ptr %chunks_alloc to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chunks_alloc, align 4
  %12 = trunc i32 %11 to i8
  %13 = and i8 %12, 1
  %14 = xor i8 %13, 1
  %cb = getelementptr inbounds %struct.dw_edma_chunk, ptr %call7.i.i, i32 0, i32 4
  %15 = ptrtoint ptr %cb to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %14, ptr %cb, align 4
  %dir = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp = icmp eq i32 %17, 0
  %id = getelementptr inbounds %struct.dw_edma_chan, ptr %1, i32 0, i32 2
  %18 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %id, align 4
  br i1 %cmp, label %if.then11, label %if.else

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx = getelementptr %struct.dw_edma, ptr %5, i32 0, i32 6, i32 %19
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %arrayidx, align 4
  %ll_region = getelementptr inbounds %struct.dw_edma_chunk, ptr %call7.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %ll_region to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %ll_region, align 8
  %23 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %id, align 4
  %vaddr = getelementptr %struct.dw_edma, ptr %5, i32 0, i32 6, i32 %24, i32 1
  br label %if.end29

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %arrayidx19 = getelementptr %struct.dw_edma, ptr %5, i32 0, i32 7, i32 %19
  %25 = ptrtoint ptr %arrayidx19 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %arrayidx19, align 4
  %ll_region21 = getelementptr inbounds %struct.dw_edma_chunk, ptr %call7.i.i, i32 0, i32 5
  %27 = ptrtoint ptr %ll_region21 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %ll_region21, align 8
  %28 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %id, align 4
  %vaddr26 = getelementptr %struct.dw_edma, ptr %5, i32 0, i32 7, i32 %29, i32 1
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.then11
  %.sink.in = phi ptr [ %vaddr, %if.then11 ], [ %vaddr26, %if.else ]
  %30 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %30)
  %.sink = load ptr, ptr %.sink.in, align 4
  %31 = getelementptr inbounds %struct.dw_edma_chunk, ptr %call7.i.i, i32 0, i32 5, i32 1
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %.sink, ptr %31, align 4
  %chunk30 = getelementptr inbounds %struct.dw_edma_desc, ptr %desc, i32 0, i32 2
  %33 = ptrtoint ptr %chunk30 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chunk30, align 4
  %tobool31.not = icmp eq ptr %34, null
  br i1 %tobool31.not, label %if.else41, label %if.then32

if.then32:                                        ; preds = %if.end29
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %35 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %35, i32 noundef 2304, i32 noundef 32) #12
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %if.then35, label %if.end.i, !prof !46

if.end.i:                                         ; preds = %if.then32
  %36 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %call7.i.i.i, ptr %call7.i.i.i, align 8
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %call7.i.i.i, ptr %prev.i.i, align 4
  %burst4.i = getelementptr inbounds %struct.dw_edma_chunk, ptr %call7.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %burst4.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %burst4.i, align 4
  %tobool5.not.i = icmp eq ptr %39, null
  %bursts_alloc10.i = getelementptr inbounds %struct.dw_edma_chunk, ptr %call7.i.i, i32 0, i32 3
  br i1 %tobool5.not.i, label %if.else.i, label %if.then6.i

if.then6.i:                                       ; preds = %if.end.i
  %40 = ptrtoint ptr %bursts_alloc10.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %bursts_alloc10.i, align 8
  %inc.i = add i32 %41, 1
  store i32 %inc.i, ptr %bursts_alloc10.i, align 8
  %prev.i21.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i21.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %43, ptr noundef nonnull %39) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then6.i.if.end36_crit_edge

if.then6.i.if.end36_crit_edge:                    ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end36

if.end.i.i.i:                                     ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #11
  %44 = ptrtoint ptr %prev.i21.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %call7.i.i.i, ptr %prev.i21.i, align 4
  %45 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %39, ptr %call7.i.i.i, align 8
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %call7.i.i.i, ptr %43, align 4
  br label %if.end36

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %48 = ptrtoint ptr %bursts_alloc10.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %bursts_alloc10.i, align 8
  %49 = ptrtoint ptr %burst4.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %call7.i.i.i, ptr %burst4.i, align 4
  br label %if.end36

if.then35:                                        ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #9
  br label %cleanup

if.end36:                                         ; preds = %if.else.i, %if.end.i.i.i, %if.then6.i.if.end36_crit_edge
  %50 = ptrtoint ptr %chunks_alloc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %chunks_alloc, align 4
  %inc = add i32 %51, 1
  store i32 %inc, ptr %chunks_alloc, align 4
  %52 = ptrtoint ptr %chunk30 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chunk30, align 4
  %prev.i75 = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i75, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %55, ptr noundef %53) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end36.cleanup_crit_edge

if.end36.cleanup_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %prev.i75 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %call7.i.i, ptr %prev.i75, align 4
  %57 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %53, ptr %call7.i.i, align 8
  %58 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %call7.i.i, ptr %55, align 4
  br label %cleanup

if.else41:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #11
  %burst = getelementptr inbounds %struct.dw_edma_chunk, ptr %call7.i.i, i32 0, i32 2
  %60 = ptrtoint ptr %burst to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %burst, align 4
  %61 = ptrtoint ptr %chunks_alloc to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %chunks_alloc, align 4
  %62 = ptrtoint ptr %chunk30 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %call7.i.i, ptr %chunk30, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.else41, %if.end.i.i, %if.end36.cleanup_crit_edge, %if.then35, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %if.then35 ], [ null, %entry.cleanup_crit_edge ], [ %call7.i.i, %if.else41 ], [ %call7.i.i, %if.end36.cleanup_crit_edge ], [ %call7.i.i, %if.end.i.i ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.umin.i16(i16, i16) #8

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 15)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !7, !8, !9, !11, !13, !15, !17, !18, !20, !22, !24, !25, !26, !27, !29, !30, !31, !32, !33, !35}
!llvm.module.flags = !{!36, !37, !38, !39, !40, !41, !42, !43}
!llvm.ident = !{!44}

!0 = !{ptr @dw_edma_probe.__key, !1, !"__key", i1 false, i1 false}
!1 = !{!"../drivers/dma/dw-edma/dw-edma-core.c", i32 911, i32 2}
!2 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.1, !4, !"<string literal>", i1 false, i1 false}
!4 = !{!"../drivers/dma/dw-edma/dw-edma-core.c", i32 924, i32 2}
!5 = !{ptr @.str.2, !4, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @.str.3, !4, !"<string literal>", i1 false, i1 false}
!7 = !{ptr @.str.4, !4, !"<string literal>", i1 false, i1 false}
!8 = !{ptr @dw_edma_probe.__UNIQUE_ID_ddebug250, !4, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!9 = !{ptr @.str.5, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/dma/dw-edma/dw-edma-core.c", i32 933, i32 39}
!11 = !{ptr @__ksymtab_dw_edma_probe, !12, !"__ksymtab_dw_edma_probe", i1 false, i1 false}
!12 = !{!"../drivers/dma/dw-edma/dw-edma-core.c", i32 969, i32 1}
!13 = !{ptr @__ksymtab_dw_edma_remove, !14, !"__ksymtab_dw_edma_remove", i1 false, i1 false}
!14 = !{!"../drivers/dma/dw-edma/dw-edma-core.c", i32 1008, i32 1}
!15 = !{ptr @__UNIQUE_ID_file251, !16, !"__UNIQUE_ID_file251", i1 false, i1 false}
!16 = !{!"../drivers/dma/dw-edma/dw-edma-core.c", i32 1010, i32 1}
!17 = !{ptr @__UNIQUE_ID_license252, !16, !"__UNIQUE_ID_license252", i1 false, i1 false}
!18 = !{ptr @__UNIQUE_ID_description253, !19, !"__UNIQUE_ID_description253", i1 false, i1 false}
!19 = !{!"../drivers/dma/dw-edma/dw-edma-core.c", i32 1011, i32 1}
!20 = !{ptr @__UNIQUE_ID_author254, !21, !"__UNIQUE_ID_author254", i1 false, i1 false}
!21 = !{!"../drivers/dma/dw-edma/dw-edma-core.c", i32 1012, i32 1}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/dw-edma/../virt-dma.h", i32 101, i32 2}
!24 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !23, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, !23, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!27 = !{ptr @.str.9, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/dma/dw-edma/dw-edma-core.c", i32 742, i32 3}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @dw_edma_channel_setup.__UNIQUE_ID_ddebug240, !28, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!31 = !{ptr @.str.11, !28, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !28, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/dw-edma/dw-edma-core.c", i32 760, i32 3}
!35 = !{ptr @dw_edma_channel_setup.__UNIQUE_ID_ddebug241, !34, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!36 = !{i32 1, !"wchar_size", i32 2}
!37 = !{i32 1, !"min_enum_size", i32 4}
!38 = !{i32 8, !"branch-target-enforcement", i32 0}
!39 = !{i32 8, !"sign-return-address", i32 0}
!40 = !{i32 8, !"sign-return-address-all", i32 0}
!41 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!42 = !{i32 7, !"uwtable", i32 1}
!43 = !{i32 7, !"frame-pointer", i32 2}
!44 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!45 = !{i64 2148975827, i64 2148975832, i64 2148975845, i64 2148975889, i64 2148975923, i64 2148975944}
!46 = !{!"branch_weights", i32 1, i32 2000}
!47 = !{i64 2154249738, i64 2154250236, i64 2154249775, i64 2154249831, i64 2154249865, i64 2154249889, i64 2154249930, i64 2154249951, i64 2154249979, i64 2154250013}
!48 = !{i64 2154323806}
!49 = !{i64 2154323648}
!50 = !{i64 2154251249}
!51 = !{i8 0, i8 2}
