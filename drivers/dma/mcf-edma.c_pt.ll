; ModuleID = '/llk/IR_all_yes/drivers/dma/mcf-edma.c_pt.bc'
source_filename = "../drivers/dma/mcf-edma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mcf_edma_filter_fn\22, \22a\22\09"
module asm "\09.weak\09__crc_mcf_edma_filter_fn\09\09\09\09"
module asm "\09.long\09__crc_mcf_edma_filter_fn\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mcf_edma_filter_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22mcf_edma_filter_fn\22\09\09\09\09\09"
module asm "__kstrtabns_mcf_edma_filter_fn:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.fsl_edma_drvdata = type { i32, i32, i8, i8, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
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
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
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
%struct.fsl_edma_chan = type { %struct.virt_dma_chan, i32, i32, i8, i32, ptr, ptr, %struct.dma_slave_config, i32, i8, ptr, i32, i32, i32, [16 x i8] }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fsl_edma_engine = type { %struct.dma_device, ptr, [2 x ptr], [2 x ptr], ptr, %struct.mutex, ptr, i32, i32, i32, i8, %struct.edma_regs, [0 x %struct.fsl_edma_chan] }
%struct.edma_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_edma_hw_tcd = type { i32, i16, i16, i32, i32, i32, i16, i16, i32, i16, i16 }
%struct.mcf_edma_platform_data = type { i32, ptr, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.fsl_edma_desc = type { %struct.virt_dma_desc, ptr, i8, i32, i32, [0 x %struct.fsl_edma_sw_tcd] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.fsl_edma_sw_tcd = type { i32, ptr }

@mcf_edma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mcf_edma_probe, ptr @mcf_edma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__kstrtab_mcf_edma_filter_fn = external dso_local constant [0 x i8], align 1
@__kstrtabns_mcf_edma_filter_fn = external dso_local constant [0 x i8], align 1
@__ksymtab_mcf_edma_filter_fn = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mcf_edma_filter_fn to i32), ptr @__kstrtab_mcf_edma_filter_fn, ptr @__kstrtabns_mcf_edma_filter_fn }, section "___ksymtab+mcf_edma_filter_fn", align 4
@__initcall__kmod_mcf_edma__236_320_mcf_edma_init4 = internal global ptr @mcf_edma_init, section ".initcall4.init", align 4
@__exitcall_mcf_edma_exit = internal global ptr @mcf_edma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias237 = internal constant [33 x i8] c"mcf_edma.alias=platform:mcf-edma\00", section ".modinfo", align 1
@__UNIQUE_ID_description238 = internal constant [67 x i8] c"mcf_edma.description=Freescale eDMA engine driver, ColdFire family\00", section ".modinfo", align 1
@__UNIQUE_ID_file239 = internal constant [35 x i8] c"mcf_edma.file=drivers/dma/mcf-edma\00", section ".modinfo", align 1
@__UNIQUE_ID_license240 = internal constant [24 x i8] c"mcf_edma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcf-edma\00", [23 x i8] zeroinitializer }, align 32
@mcf_edma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 190, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"no platform data supplied\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mcf_edma_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/mcf-edma.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mcf_edma_probe._entry_ptr = internal global ptr @mcf_edma_probe._entry, section ".printk_index", align 4
@mcf_data = internal global { %struct.fsl_edma_drvdata, [16 x i8] } { %struct.fsl_edma_drvdata { i32 1, i32 0, i8 0, i8 0, ptr @mcf_edma_irq_init }, [16 x i8] zeroinitializer }, align 32
@mcf_edma_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 207, ptr @.str.8, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"setting default channel number to 64\00", [59 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mcf_edma_probe._entry_ptr.9 = internal global ptr @mcf_edma_probe._entry.6, section ".printk_index", align 4
@mcf_edma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&mcf_edma->fsl_edma_mutex\00", [38 x i8] zeroinitializer }, align 32
@mcf_edma_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 275, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Can't register Freescale eDMA engine. (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@mcf_edma_probe._entry_ptr.13 = internal global ptr @mcf_edma_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edma-tx-00-15\00", [18 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eDMA\00", [27 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edma-tx-16-55\00", [18 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edma-tx-56-63\00", [18 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"edma-err\00", [23 x i8] zeroinitializer }, align 32
@vchan_cookie_complete.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mcf_edma\00", [23 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@___asan_gen_.23 = private unnamed_addr constant [16 x i8] c"mcf_edma_driver\00", align 1
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 296, i32 31 }
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 298, i32 11 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 190, i32 3 }
@___asan_gen_.47 = private unnamed_addr constant [9 x i8] c"mcf_data\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 174, i32 32 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 207, i32 3 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 211, i32 2 }
@___asan_gen_.65 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 274, i32 3 }
@___asan_gen_.73 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 107, i32 21 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 112, i32 49 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 117, i32 20 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 126, i32 38 }
@___asan_gen_.84 = private constant [26 x i8] c"../drivers/dma/mcf-edma.c\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.84, i32 134, i32 38 }
@___asan_gen_.95 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.96, i32 101, i32 2 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @__UNIQUE_ID_alias237, ptr @__UNIQUE_ID_description238, ptr @__UNIQUE_ID_file239, ptr @__UNIQUE_ID_license240, ptr @__exitcall_mcf_edma_exit, ptr @__initcall__kmod_mcf_edma__236_320_mcf_edma_init4, ptr @__ksymtab_mcf_edma_filter_fn, ptr @mcf_edma_exit, ptr @mcf_edma_probe._entry, ptr @mcf_edma_probe._entry.11, ptr @mcf_edma_probe._entry.6, ptr @mcf_edma_probe._entry_ptr, ptr @mcf_edma_probe._entry_ptr.13, ptr @mcf_edma_probe._entry_ptr.9, ptr @mcf_edma_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @mcf_data, ptr @.str.7, ptr @.str.8, ptr @mcf_edma_probe.__key, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22], section "llvm.metadata"
@0 = internal global [25 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcf_edma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcf_edma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcf_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcf_edma_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcf_edma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mcf_edma_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.73 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.95 to i32), i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @mcf_edma_filter_fn(ptr nocapture noundef readonly %chan, ptr noundef %param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %driver = getelementptr inbounds %struct.device, ptr %3, i32 0, i32 6
  %4 = ptrtoint ptr %driver to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver, align 4
  %cmp = icmp eq ptr %5, getelementptr inbounds (%struct.platform_driver, ptr @mcf_edma_driver, i32 0, i32 5)
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %return

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %slave_id = getelementptr inbounds %struct.fsl_edma_chan, ptr %chan, i32 0, i32 4
  %6 = ptrtoint ptr %slave_id to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %slave_id, align 4
  %8 = ptrtoint ptr %param to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %8)
  %cmp1 = icmp eq i32 %7, %8
  br label %return

return:                                           ; preds = %if.then, %entry.return_crit_edge
  %retval.0 = phi i1 [ %cmp1, %if.then ], [ false, %entry.return_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mcf_edma_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mcf_edma_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mcf_edma_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @mcf_edma_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcf_edma_probe(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %mul = mul i32 %3, 292
  %add = add i32 %mul, 576
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add, i32 noundef 3520) #6
  %tobool4.not = icmp eq ptr %call.i, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %n_chans = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 7
  %4 = ptrtoint ptr %n_chans to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %n_chans, align 4
  %drvdata = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 6
  %5 = ptrtoint ptr %drvdata to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @mcf_data, ptr %drvdata, align 4
  %big_endian = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 10
  %6 = ptrtoint ptr %big_endian to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 1, ptr %big_endian, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool8.not = icmp eq i32 %3, 0
  br i1 %tobool8.not, label %do.end12, label %if.end6.do.body16_crit_edge

if.end6.do.body16_crit_edge:                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  br label %do.body16

do.end12:                                         ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.7) #9
  %7 = ptrtoint ptr %n_chans to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 64, ptr %n_chans, align 4
  br label %do.body16

do.body16:                                        ; preds = %do.end12, %if.end6.do.body16_crit_edge
  %fsl_edma_mutex = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 5
  tail call void @__mutex_init(ptr noundef %fsl_edma_mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @mcf_edma_probe.__key) #6
  %call19 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call21 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call19) #6
  %membase = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 1
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call21, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then24, label %if.end27

if.then24:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #8
  %9 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end27:                                         ; preds = %do.body16
  tail call void @fsl_edma_setup_regs(ptr noundef nonnull %call.i) #6
  %regs28 = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 11
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %channels, ptr %prev.i, align 4
  %12 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %n_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp152.not = icmp eq i32 %13, 0
  br i1 %cmp152.not, label %if.end27.for.end_crit_edge, label %for.body.lr.ph

if.end27.for.end_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end27
  %tcd = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 11, i32 18
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0153 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 12, i32 %i.0153
  %edma = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 12, i32 %i.0153, i32 5
  %14 = ptrtoint ptr %edma to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call.i, ptr %edma, align 4
  %slave_id = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 12, i32 %i.0153, i32 4
  %15 = ptrtoint ptr %slave_id to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %i.0153, ptr %slave_id, align 4
  %idle = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 12, i32 %i.0153, i32 3
  %16 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %idle, align 4
  %dma_dir = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 12, i32 %i.0153, i32 13
  %17 = ptrtoint ptr %dma_dir to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 3, ptr %dma_dir, align 4
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 2
  %18 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @fsl_edma_free_desc, ptr %desc_free, align 4
  tail call void @vchan_init(ptr noundef %arrayidx, ptr noundef nonnull %call.i) #6
  %19 = ptrtoint ptr %tcd to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %tcd, align 4
  %csr = getelementptr %struct.fsl_edma_hw_tcd, ptr %20, i32 %i.0153, i32 9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %csr, i32 0) #6, !srcloc !65
  %inc = add nuw i32 %i.0153, 1
  %21 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %n_chans, align 4
  %cmp = icmp ult i32 %inc, %22
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end27.for.end_crit_edge
  %inth = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 11, i32 14
  %23 = ptrtoint ptr %inth to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %inth, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 -1) #6, !srcloc !65
  %intl = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 11, i32 15
  %25 = ptrtoint ptr %intl to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %intl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %26, i32 -1) #6, !srcloc !65
  %27 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %drvdata, align 4
  %setup_irq = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %28, i32 0, i32 4
  %29 = ptrtoint ptr %setup_irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %setup_irq, align 4
  %call36 = tail call i32 %30(ptr noundef %pdev, ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call36)
  %tobool37.not = icmp eq i32 %call36, 0
  br i1 %tobool37.not, label %if.end39, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end39:                                         ; preds = %for.end
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #6
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #6
  %dev47 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %31 = ptrtoint ptr %dev47 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %dev, ptr %dev47, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %32 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @fsl_edma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %33 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @fsl_edma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %34 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @fsl_edma_slave_config, ptr %device_config, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 40
  %35 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @fsl_edma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %36 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @fsl_edma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %37 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @fsl_edma_tx_status, ptr %device_tx_status, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 45
  %38 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @fsl_edma_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 46
  %39 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @fsl_edma_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %40 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @fsl_edma_terminate_all, ptr %device_terminate_all, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %41 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @fsl_edma_issue_pending, ptr %device_issue_pending, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %42 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 278, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %43 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 278, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %44 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 6, ptr %directions, align 4
  %filter = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 5
  %45 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @mcf_edma_filter_fn, ptr %filter, align 4
  %slave_map = getelementptr inbounds %struct.mcf_edma_platform_data, ptr %1, i32 0, i32 1
  %46 = ptrtoint ptr %slave_map to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %slave_map, align 4
  %map = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 5, i32 2
  %48 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %47, ptr %map, align 4
  %slavecnt = getelementptr inbounds %struct.mcf_edma_platform_data, ptr %1, i32 0, i32 2
  %49 = ptrtoint ptr %slavecnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %slavecnt, align 4
  %mapcnt = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 5, i32 1
  %51 = ptrtoint ptr %mapcnt to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %mapcnt, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call67 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call67)
  %tobool68.not = icmp eq i32 %call67, 0
  br i1 %tobool68.not, label %if.end74, label %do.end72

do.end72:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12, i32 noundef %call67) #9
  br label %cleanup

if.end74:                                         ; preds = %if.end39
  call void @__sanitizer_cov_trace_pc() #8
  %53 = ptrtoint ptr %regs28 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %regs28, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !64
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %54, i32 201326592) #6, !srcloc !65
  br label %cleanup

cleanup:                                          ; preds = %if.end74, %do.end72, %for.end.cleanup_crit_edge, %if.then24, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %9, %if.then24 ], [ %call67, %do.end72 ], [ 0, %if.end74 ], [ -22, %do.end ], [ -12, %if.end.cleanup_crit_edge ], [ %call36, %for.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcf_edma_remove(ptr noundef %pdev) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 1024, ptr noundef nonnull @.str.14) #6
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call.i, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %5)
  %cmp.not45.i = icmp ugt i32 %3, %5
  br i1 %cmp.not45.i, label %if.then.i.if.end.i_crit_edge, label %if.then.i.for.body.i_crit_edge

if.then.i.for.body.i_crit_edge:                   ; preds = %if.then.i
  br label %for.body.i

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then.i.for.body.i_crit_edge
  %irq.046.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ %3, %if.then.i.for.body.i_crit_edge ]
  %call1.i = tail call ptr @free_irq(i32 noundef %irq.046.i, ptr noundef %1) #6
  %inc.i = add i32 %irq.046.i, 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %cmp.not.i = icmp ugt i32 %inc.i, %7
  br i1 %cmp.not.i, label %for.body.i.if.end.i_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body.i

for.body.i.if.end.i_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end.i

if.end.i:                                         ; preds = %for.body.i.if.end.i_crit_edge, %if.then.i.if.end.i_crit_edge, %entry.if.end.i_crit_edge
  %call2.i = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 1024, ptr noundef nonnull @.str.16) #6
  %tobool3.not.i = icmp eq ptr %call2.i, null
  br i1 %tobool3.not.i, label %if.end.i.if.end14.i_crit_edge, label %if.then4.i

if.end.i.if.end14.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.then4.i:                                       ; preds = %if.end.i
  %8 = ptrtoint ptr %call2.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %call2.i, align 4
  %end7.i = getelementptr inbounds %struct.resource, ptr %call2.i, i32 0, i32 1
  %10 = ptrtoint ptr %end7.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end7.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %11)
  %cmp8.not47.i = icmp ugt i32 %9, %11
  br i1 %cmp8.not47.i, label %if.then4.i.if.end14.i_crit_edge, label %if.then4.i.for.body9.i_crit_edge

if.then4.i.for.body9.i_crit_edge:                 ; preds = %if.then4.i
  br label %for.body9.i

if.then4.i.if.end14.i_crit_edge:                  ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

for.body9.i:                                      ; preds = %for.body9.i.for.body9.i_crit_edge, %if.then4.i.for.body9.i_crit_edge
  %irq.148.i = phi i32 [ %inc12.i, %for.body9.i.for.body9.i_crit_edge ], [ %9, %if.then4.i.for.body9.i_crit_edge ]
  %call10.i = tail call ptr @free_irq(i32 noundef %irq.148.i, ptr noundef %1) #6
  %inc12.i = add i32 %irq.148.i, 1
  %12 = ptrtoint ptr %end7.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %end7.i, align 4
  %cmp8.not.i = icmp ugt i32 %inc12.i, %13
  br i1 %cmp8.not.i, label %for.body9.i.if.end14.i_crit_edge, label %for.body9.i.for.body9.i_crit_edge

for.body9.i.for.body9.i_crit_edge:                ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body9.i

for.body9.i.if.end14.i_crit_edge:                 ; preds = %for.body9.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end14.i

if.end14.i:                                       ; preds = %for.body9.i.if.end14.i_crit_edge, %if.then4.i.if.end14.i_crit_edge, %if.end.i.if.end14.i_crit_edge
  %call15.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call15.i)
  %cmp16.not.i = icmp eq i32 %call15.i, -6
  br i1 %cmp16.not.i, label %if.end14.i.if.end19.i_crit_edge, label %if.then17.i

if.end14.i.if.end19.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end19.i

if.then17.i:                                      ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #8
  %call18.i = tail call ptr @free_irq(i32 noundef %call15.i, ptr noundef %1) #6
  br label %if.end19.i

if.end19.i:                                       ; preds = %if.then17.i, %if.end14.i.if.end19.i_crit_edge
  %call20.i = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call20.i)
  %cmp21.not.i = icmp eq i32 %call20.i, -6
  br i1 %cmp21.not.i, label %if.end19.i.mcf_edma_irq_free.exit_crit_edge, label %if.then22.i

if.end19.i.mcf_edma_irq_free.exit_crit_edge:      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %mcf_edma_irq_free.exit

if.then22.i:                                      ; preds = %if.end19.i
  call void @__sanitizer_cov_trace_pc() #8
  %call23.i = tail call ptr @free_irq(i32 noundef %call20.i, ptr noundef %1) #6
  br label %mcf_edma_irq_free.exit

mcf_edma_irq_free.exit:                           ; preds = %if.then22.i, %if.end19.i.mcf_edma_irq_free.exit_crit_edge
  tail call void @fsl_edma_cleanup_vchan(ptr noundef %1) #6
  tail call void @dma_async_device_unregister(ptr noundef %1) #6
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_setup_regs(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_free_desc(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_alloc_chan_resources(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_free_chan_resources(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_slave_config(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_edma_prep_dma_cyclic(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_edma_prep_slave_sg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_tx_status(ptr noundef, i32 noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_pause(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_resume(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_terminate_all(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_issue_pending(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcf_edma_irq_init(ptr noundef %pdev, ptr noundef %mcf_edma) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 1024, ptr noundef nonnull @.str.14) #6
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %call, align 4
  %end = getelementptr inbounds %struct.resource, ptr %call, i32 0, i32 1
  %2 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %end, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %3)
  %cmp.not72 = icmp ugt i32 %1, %3
  br i1 %cmp.not72, label %if.end.if.end4_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.if.end4_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.074 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ %1, %if.end.for.body_crit_edge ]
  %ret.073 = phi i32 [ %or, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %i.074, ptr noundef nonnull @mcf_edma_tx_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %mcf_edma) #6
  %or = or i32 %call.i, %ret.073
  %inc = add i32 %i.074, 1
  %4 = ptrtoint ptr %end to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end, align 4
  %cmp.not = icmp ugt i32 %inc, %5
  br i1 %cmp.not, label %for.end, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or)
  %tobool2.not = icmp eq i32 %or, 0
  br i1 %tobool2.not, label %for.end.if.end4_crit_edge, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end.if.end4_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end4

if.end4:                                          ; preds = %for.end.if.end4_crit_edge, %if.end.if.end4_crit_edge
  %call5 = tail call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 1024, ptr noundef nonnull @.str.16) #6
  %tobool6.not = icmp eq ptr %call5, null
  br i1 %tobool6.not, label %if.end4.cleanup_crit_edge, label %if.end8

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end8:                                          ; preds = %if.end4
  %6 = ptrtoint ptr %call5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %call5, align 4
  %end11 = getelementptr inbounds %struct.resource, ptr %call5, i32 0, i32 1
  %8 = ptrtoint ptr %end11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %end11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp12.not75 = icmp ugt i32 %7, %9
  br i1 %cmp12.not75, label %if.end8.if.end21_crit_edge, label %if.end8.for.body13_crit_edge

if.end8.for.body13_crit_edge:                     ; preds = %if.end8
  br label %for.body13

if.end8.if.end21_crit_edge:                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

for.body13:                                       ; preds = %for.body13.for.body13_crit_edge, %if.end8.for.body13_crit_edge
  %i.177 = phi i32 [ %inc17, %for.body13.for.body13_crit_edge ], [ %7, %if.end8.for.body13_crit_edge ]
  %ret.176 = phi i32 [ %or15, %for.body13.for.body13_crit_edge ], [ 0, %if.end8.for.body13_crit_edge ]
  %call.i69 = tail call i32 @request_threaded_irq(i32 noundef %i.177, ptr noundef nonnull @mcf_edma_tx_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %mcf_edma) #6
  %or15 = or i32 %call.i69, %ret.176
  %inc17 = add i32 %i.177, 1
  %10 = ptrtoint ptr %end11 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %end11, align 4
  %cmp12.not = icmp ugt i32 %inc17, %11
  br i1 %cmp12.not, label %for.end18, label %for.body13.for.body13_crit_edge

for.body13.for.body13_crit_edge:                  ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body13

for.end18:                                        ; preds = %for.body13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or15)
  %tobool19.not = icmp eq i32 %or15, 0
  br i1 %tobool19.not, label %for.end18.if.end21_crit_edge, label %for.end18.cleanup_crit_edge

for.end18.cleanup_crit_edge:                      ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.end18.if.end21_crit_edge:                     ; preds = %for.end18
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end21

if.end21:                                         ; preds = %for.end18.if.end21_crit_edge, %if.end8.if.end21_crit_edge
  %call22 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.17) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call22)
  %cmp23.not = icmp eq i32 %call22, -6
  br i1 %cmp23.not, label %if.end21.if.end29_crit_edge, label %if.then24

if.end21.if.end29_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.then24:                                        ; preds = %if.end21
  %call.i70 = tail call i32 @request_threaded_irq(i32 noundef %call22, ptr noundef nonnull @mcf_edma_tx_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %mcf_edma) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i70)
  %tobool26.not = icmp eq i32 %call.i70, 0
  br i1 %tobool26.not, label %if.then24.if.end29_crit_edge, label %if.then24.cleanup_crit_edge

if.then24.cleanup_crit_edge:                      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then24.if.end29_crit_edge:                     ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end29

if.end29:                                         ; preds = %if.then24.if.end29_crit_edge, %if.end21.if.end29_crit_edge
  %call30 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.18) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -6, i32 %call30)
  %cmp31.not = icmp eq i32 %call30, -6
  br i1 %cmp31.not, label %if.end29.if.end37_crit_edge, label %if.then32

if.end29.if.end37_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.then32:                                        ; preds = %if.end29
  %call.i71 = tail call i32 @request_threaded_irq(i32 noundef %call30, ptr noundef nonnull @mcf_edma_err_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.15, ptr noundef %mcf_edma) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i71)
  %tobool34.not = icmp eq i32 %call.i71, 0
  br i1 %tobool34.not, label %if.then32.if.end37_crit_edge, label %if.then32.cleanup_crit_edge

if.then32.cleanup_crit_edge:                      ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then32.if.end37_crit_edge:                     ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end37

if.end37:                                         ; preds = %if.then32.if.end37_crit_edge, %if.end29.if.end37_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %if.end37, %if.then32.cleanup_crit_edge, %if.then24.cleanup_crit_edge, %for.end18.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end37 ], [ -1, %entry.cleanup_crit_edge ], [ %or, %for.end.cleanup_crit_edge ], [ -1, %if.end4.cleanup_crit_edge ], [ %or15, %for.end18.cleanup_crit_edge ], [ %call.i70, %if.then24.cleanup_crit_edge ], [ %call.i71, %if.then32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcf_edma_tx_handler(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %inth = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 11, i32 14
  %0 = ptrtoint ptr %inth to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %inth, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !66
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %intl = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 11, i32 15
  %3 = ptrtoint ptr %intl to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %intl, align 4
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %4) #6, !srcloc !66
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  %7 = zext i32 %2 to i64
  %8 = zext i32 %5 to i64
  %9 = shl nuw i64 %8, 32
  %10 = or i64 %9, %7
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %10)
  %tobool.not = icmp eq i64 %10, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %n_chans = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 7
  %11 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %n_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp70.not = icmp eq i32 %12, 0
  br i1 %cmp70.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cint = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 11, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ch.071 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl5 = shl nuw i32 1, %ch.071
  %and60 = and i32 %shl5, %6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and60)
  %tobool7.not = icmp eq i32 %and60, 0
  br i1 %tobool7.not, label %for.body.for.inc_crit_edge, label %if.then8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then8:                                         ; preds = %for.body
  %13 = trunc i32 %ch.071 to i8
  %conv10 = and i8 %13, 63
  %14 = ptrtoint ptr %cint to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cint, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 %conv10) #6, !srcloc !69
  %arrayidx = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.071
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #6
  %edesc = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.071, i32 6
  %16 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edesc, align 4
  %tobool11.not = icmp eq ptr %17, null
  br i1 %tobool11.not, label %if.then8.for.inc.sink.split_crit_edge, label %if.end15

if.then8.for.inc.sink.split_crit_edge:            ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

if.end15:                                         ; preds = %if.then8
  %iscyclic = getelementptr inbounds %struct.fsl_edma_desc, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %iscyclic to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %iscyclic, align 4, !range !70
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool17.not = icmp eq i8 %19, 0
  br i1 %tobool17.not, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end15
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %17, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #6
  br i1 %call.i.i, label %if.end.i.i, label %if.then18.list_del.exit_crit_edge

if.then18.list_del.exit_crit_edge:                ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %17, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then18.list_del.exit_crit_edge
  %26 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_desc, ptr %17, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %28 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %edesc, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan.i, align 4
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %29, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %33)
  %cmp.i.i = icmp slt i32 %33, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !71

do.body2.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #8
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #6, !srcloc !72
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %list_del.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %31, i32 0, i32 3
  %34 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %completed_cookie.i.i, align 4
  %35 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %29, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mcf_edma_tx_handler, %do.end.i)) #6
          to label %if.then.i [label %do.end.i], !srcloc !73

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %36 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %31, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %37, i32 0, i32 15
  %38 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug234, ptr noundef %39, ptr noundef nonnull @.str.22, ptr noundef %29, i32 noundef %33) #6
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %29, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %31, i32 0, i32 7
  %prev.i.i61 = getelementptr inbounds %struct.virt_dma_chan, ptr %31, i32 0, i32 7, i32 1
  %40 = ptrtoint ptr %prev.i.i61 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i61, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %41, ptr noundef %desc_completed.i) #6
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %prev.i.i61 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %node.i, ptr %prev.i.i61, align 4
  %43 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %29, i32 0, i32 2, i32 1
  %44 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %node.i, ptr %41, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %31, i32 0, i32 1, i32 1
  %call.i.i62 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i62)
  %tobool.not.i.i = icmp eq i32 %call.i.i62, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.if.end25.thread_crit_edge

list_add_tail.exit.i.if.end25.thread_crit_edge:   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25.thread

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #8
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %31, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #6
  br label %if.end25.thread

if.end25.thread:                                  ; preds = %if.then.i.i, %list_add_tail.exit.i.if.end25.thread_crit_edge
  %46 = ptrtoint ptr %edesc to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %edesc, align 4
  %status = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.071, i32 1
  %47 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %status, align 4
  %idle = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.071, i32 3
  %48 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %48)
  store i8 1, ptr %idle, align 4
  br label %if.then28

if.else:                                          ; preds = %if.end15
  %chan.i63 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %17, i32 0, i32 3
  %49 = ptrtoint ptr %chan.i63 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chan.i63, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %50, i32 0, i32 9
  %51 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %17, ptr %cyclic.i, align 4
  %state.i.i64 = getelementptr inbounds %struct.virt_dma_chan, ptr %50, i32 0, i32 1, i32 1
  %call.i.i65 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i64) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i65)
  %tobool.not.i.i66 = icmp eq i32 %call.i.i65, 0
  br i1 %tobool.not.i.i66, label %if.then.i.i68, label %if.else.if.end25_crit_edge

if.else.if.end25_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end25

if.then.i.i68:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #8
  %task.i67 = getelementptr inbounds %struct.virt_dma_chan, ptr %50, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i67) #6
  br label %if.end25

if.end25:                                         ; preds = %if.then.i.i68, %if.else.if.end25_crit_edge
  %52 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %52)
  %.pr = load ptr, ptr %edesc, align 4
  %tobool27.not = icmp eq ptr %.pr, null
  br i1 %tobool27.not, label %if.end25.if.then28_crit_edge, label %if.end25.for.inc.sink.split_crit_edge

if.end25.for.inc.sink.split_crit_edge:            ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.sink.split

if.end25.if.then28_crit_edge:                     ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.then28

if.then28:                                        ; preds = %if.end25.if.then28_crit_edge, %if.end25.thread
  tail call void @fsl_edma_xfer_desc(ptr noundef %arrayidx) #6
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then28, %if.end25.for.inc.sink.split_crit_edge, %if.then8.for.inc.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #6
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %ch.071, 1
  %53 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %n_chans, align 4
  %cmp = icmp ult i32 %inc, %54
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mcf_edma_err_handler(i32 noundef %irq, ptr noundef %dev_id) #3 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %errl = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 11, i32 17
  %0 = ptrtoint ptr %errl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %errl, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #6, !srcloc !66
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %cerr = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 11, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %ch.065 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %ch.065
  %and = and i32 %shl, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then3:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.065
  tail call void @fsl_edma_disable_request(ptr noundef %arrayidx) #6
  %4 = trunc i32 %ch.065 to i8
  %5 = ptrtoint ptr %cerr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cerr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %6, i8 %4) #6, !srcloc !69
  %status = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.065, i32 1
  %7 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 3, ptr %status, align 4
  %idle = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.065, i32 3
  %8 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 1, ptr %idle, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then3, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %ch.065, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body

for.end:                                          ; preds = %for.inc
  %errh = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 11, i32 16
  %9 = ptrtoint ptr %errh to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %errh, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #6, !srcloc !66
  %12 = tail call i32 @llvm.bswap.i32(i32 %11) #6
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !67
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool11.not = icmp eq i32 %11, 0
  br i1 %tobool11.not, label %for.end.cleanup_crit_edge, label %for.end.for.body17_crit_edge

for.end.for.body17_crit_edge:                     ; preds = %for.end
  br label %for.body17

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

for.body17:                                       ; preds = %for.inc34.for.body17_crit_edge, %for.end.for.body17_crit_edge
  %ch.167 = phi i32 [ %inc35, %for.inc34.for.body17_crit_edge ], [ 32, %for.end.for.body17_crit_edge ]
  %sub = add nsw i32 %ch.167, -32
  %shl18 = shl nuw i32 1, %sub
  %and19 = and i32 %shl18, %12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %for.body17.for.inc34_crit_edge, label %if.then21

for.body17.for.inc34_crit_edge:                   ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc34

if.then21:                                        ; preds = %for.body17
  call void @__sanitizer_cov_trace_pc() #8
  %arrayidx23 = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.167
  tail call void @fsl_edma_disable_request(ptr noundef %arrayidx23) #6
  %13 = trunc i32 %ch.167 to i8
  %conv25 = and i8 %13, 31
  %14 = ptrtoint ptr %cerr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cerr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #6, !srcloc !68
  tail call void @arm_heavy_mb() #6
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %15, i8 %conv25) #6, !srcloc !69
  %status29 = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.167, i32 1
  %16 = ptrtoint ptr %status29 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 3, ptr %status29, align 4
  %idle32 = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.167, i32 3
  %17 = ptrtoint ptr %idle32 to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %idle32, align 4
  br label %for.inc34

for.inc34:                                        ; preds = %if.then21, %for.body17.for.inc34_crit_edge
  %inc35 = add nuw nsw i32 %ch.167, 1
  %exitcond69.not = icmp eq i32 %inc35, 64
  br i1 %exitcond69.not, label %for.inc34.cleanup_crit_edge, label %for.inc34.for.body17_crit_edge

for.inc34.for.body17_crit_edge:                   ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.body17

for.inc34.cleanup_crit_edge:                      ; preds = %for.inc34
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

cleanup:                                          ; preds = %for.inc34.cleanup_crit_edge, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 1, %for.inc34.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_xfer_desc(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_disable_request(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_cleanup_vchan(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

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

attributes #0 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !12, !13, !15, !17, !19, !20, !21, !22, !23, !24, !25, !27, !28, !29, !30, !32, !33, !35, !36, !37, !39, !41, !43, !45, !47, !49, !51, !52, !53, !54}
!llvm.module.flags = !{!55, !56, !57, !58, !59, !60, !61, !62}
!llvm.ident = !{!63}

!0 = !{ptr @__ksymtab_mcf_edma_filter_fn, !1, !"__ksymtab_mcf_edma_filter_fn", i1 false, i1 false}
!1 = !{!"../drivers/dma/mcf-edma.c", i32 314, i32 1}
!2 = !{ptr @__initcall__kmod_mcf_edma__236_320_mcf_edma_init4, !3, !"__initcall__kmod_mcf_edma__236_320_mcf_edma_init4", i1 false, i1 false}
!3 = !{!"../drivers/dma/mcf-edma.c", i32 320, i32 1}
!4 = !{ptr @__exitcall_mcf_edma_exit, !5, !"__exitcall_mcf_edma_exit", i1 false, i1 false}
!5 = !{!"../drivers/dma/mcf-edma.c", i32 326, i32 1}
!6 = !{ptr @__UNIQUE_ID_alias237, !7, !"__UNIQUE_ID_alias237", i1 false, i1 false}
!7 = !{!"../drivers/dma/mcf-edma.c", i32 328, i32 1}
!8 = !{ptr @__UNIQUE_ID_description238, !9, !"__UNIQUE_ID_description238", i1 false, i1 false}
!9 = !{!"../drivers/dma/mcf-edma.c", i32 329, i32 1}
!10 = !{ptr @__UNIQUE_ID_file239, !11, !"__UNIQUE_ID_file239", i1 false, i1 false}
!11 = !{!"../drivers/dma/mcf-edma.c", i32 330, i32 1}
!12 = !{ptr @__UNIQUE_ID_license240, !11, !"__UNIQUE_ID_license240", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/dma/mcf-edma.c", i32 298, i32 11}
!15 = !{ptr @mcf_edma_driver, !16, !"mcf_edma_driver", i1 false, i1 false}
!16 = !{!"../drivers/dma/mcf-edma.c", i32 296, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/dma/mcf-edma.c", i32 190, i32 3}
!19 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.3, !18, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !18, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !18, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @mcf_edma_probe._entry, !18, !"_entry", i1 false, i1 false}
!24 = !{ptr @mcf_edma_probe._entry_ptr, !18, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/mcf-edma.c", i32 207, i32 3}
!27 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @mcf_edma_probe._entry.6, !26, !"_entry", i1 false, i1 false}
!29 = !{ptr @mcf_edma_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @mcf_edma_probe.__key, !31, !"__key", i1 false, i1 false}
!31 = !{!"../drivers/dma/mcf-edma.c", i32 211, i32 2}
!32 = !{ptr @.str.10, !31, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/mcf-edma.c", i32 274, i32 3}
!35 = !{ptr @mcf_edma_probe._entry.11, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mcf_edma_probe._entry_ptr.13, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @mcf_data, !38, !"mcf_data", i1 false, i1 false}
!38 = !{!"../drivers/dma/mcf-edma.c", i32 174, i32 32}
!39 = !{ptr @.str.14, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/mcf-edma.c", i32 107, i32 21}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/mcf-edma.c", i32 112, i32 49}
!43 = !{ptr @.str.16, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/mcf-edma.c", i32 117, i32 20}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/mcf-edma.c", i32 126, i32 38}
!47 = !{ptr @.str.18, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/mcf-edma.c", i32 134, i32 38}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!51 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, !50, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!55 = !{i32 1, !"wchar_size", i32 2}
!56 = !{i32 1, !"min_enum_size", i32 4}
!57 = !{i32 8, !"branch-target-enforcement", i32 0}
!58 = !{i32 8, !"sign-return-address", i32 0}
!59 = !{i32 8, !"sign-return-address-all", i32 0}
!60 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!61 = !{i32 7, !"uwtable", i32 1}
!62 = !{i32 7, !"frame-pointer", i32 2}
!63 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!64 = !{i64 2152164492}
!65 = !{i64 4622370}
!66 = !{i64 4622788}
!67 = !{i64 2152163137}
!68 = !{i64 2152163518}
!69 = !{i64 4622173}
!70 = !{i8 0, i8 2}
!71 = !{!"branch_weights", i32 1, i32 2000}
!72 = !{i64 2154173859, i64 2154174346, i64 2154173896, i64 2154173952, i64 2154173986, i64 2154174010, i64 2154174051, i64 2154174072, i64 2154174100, i64 2154174134}
!73 = !{i64 2148959865, i64 2148959870, i64 2148959883, i64 2148959927, i64 2148959961, i64 2148959982}
