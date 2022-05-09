; ModuleID = '/llk/IR_all_yes/drivers/mfd/stm32-timers.c_pt.bc'
source_filename = "../drivers/mfd/stm32-timers.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+stm32_timers_dma_burst_read\22, \22a\22\09"
module asm "\09.weak\09__crc_stm32_timers_dma_burst_read\09\09\09\09"
module asm "\09.long\09__crc_stm32_timers_dma_burst_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_stm32_timers_dma_burst_read:\09\09\09\09\09"
module asm "\09.asciz \09\22stm32_timers_dma_burst_read\22\09\09\09\09\09"
module asm "__kstrtabns_stm32_timers_dma_burst_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.atomic_t = type { i32 }
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
%struct.stm32_timers = type { ptr, ptr, i32, %struct.stm32_timers_dma }
%struct.stm32_timers_dma = type { %struct.completion, i32, %struct.mutex, ptr, [7 x ptr] }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }

@stm32_timers_dier_dmaen = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 512, i32 1024, i32 2048, i32 4096, i32 1, i32 16384, i32 8192], [36 x i8] zeroinitializer }, align 32
@__kstrtab_stm32_timers_dma_burst_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_stm32_timers_dma_burst_read = external dso_local constant [0 x i8], align 1
@__ksymtab_stm32_timers_dma_burst_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @stm32_timers_dma_burst_read to i32), ptr @__kstrtab_stm32_timers_dma_burst_read, ptr @__kstrtabns_stm32_timers_dma_burst_read }, section "___ksymtab_gpl+stm32_timers_dma_burst_read", align 4
@__initcall__kmod_stm32_timers__241_291_stm32_timers_driver_init6 = internal global ptr @stm32_timers_driver_init, section ".initcall6.init", align 4
@stm32_timers_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @stm32_timers_probe, ptr @stm32_timers_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.2, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @stm32_timers_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_stm32_timers_driver_exit = internal global ptr @stm32_timers_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [57 x i8] c"stm32_timers.description=STMicroelectronics STM32 Timers\00", section ".modinfo", align 1
@__UNIQUE_ID_file243 = internal constant [43 x i8] c"stm32_timers.file=drivers/mfd/stm32-timers\00", section ".modinfo", align 1
@__UNIQUE_ID_license244 = internal constant [28 x i8] c"stm32_timers.license=GPL v2\00", section ".modinfo", align 1
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@.str.2 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"stm32-timers\00", [19 x i8] zeroinitializer }, align 32
@stm32_timers_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"st,stm32-timers\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@stm32_timers_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"int\00", [28 x i8] zeroinitializer }, align 32
@stm32_timers_regmap_cfg = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 1020, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"stm32_timers:238:(&stm32_timers_regmap_cfg)->lock\00", [46 x i8] zeroinitializer }, align 32
@stm32_timers_dma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&ddata->dma.lock\00", [47 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"ch%1d\00", [26 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"up\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"trig\00", [27 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"com\00", [28 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@___asan_gen_.11 = private unnamed_addr constant [24 x i8] c"stm32_timers_dier_dmaen\00", align 1
@___asan_gen_.13 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 16, i32 18 }
@___asan_gen_.14 = private unnamed_addr constant [20 x i8] c"stm32_timers_driver\00", align 1
@___asan_gen_.16 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 283, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.21, i32 326, i32 6 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 287, i32 11 }
@___asan_gen_.26 = private unnamed_addr constant [22 x i8] c"stm32_timers_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 277, i32 34 }
@___asan_gen_.29 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.35 = private unnamed_addr constant [24 x i8] c"stm32_timers_regmap_cfg\00", align 1
@___asan_gen_.37 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 152, i32 35 }
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 237, i32 18 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 183, i32 2 }
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 187, i32 36 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 190, i32 64 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 191, i32 66 }
@___asan_gen_.57 = private constant [30 x i8] c"../drivers/mfd/stm32-timers.c\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.57, i32 192, i32 65 }
@___asan_gen_.59 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.62 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.63 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.63, i32 87, i32 2 }
@llvm.compiler.used = appending global [25 x ptr] [ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file243, ptr @__UNIQUE_ID_license244, ptr @__exitcall_stm32_timers_driver_exit, ptr @__initcall__kmod_stm32_timers__241_291_stm32_timers_driver_init6, ptr @__ksymtab_stm32_timers_dma_burst_read, ptr @stm32_timers_driver_exit, ptr @stm32_timers_dier_dmaen, ptr @stm32_timers_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @stm32_timers_of_match, ptr @stm32_timers_probe._key, ptr @.str.3, ptr @stm32_timers_regmap_cfg, ptr @.str.4, ptr @stm32_timers_dma_probe.__key, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @init_completion.__key, ptr @.str.10], section "llvm.metadata"
@0 = internal global [18 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timers_dier_dmaen to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.11 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.13 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timers_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.14 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timers_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timers_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timers_regmap_cfg to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @stm32_timers_dma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @stm32_timers_dma_burst_read(ptr noundef %dev, ptr noundef %buf, i32 noundef %id, i32 noundef %reg, i32 noundef %num_reg, i32 noundef %bursts, i32 noundef %tmo_ms) #0 align 64 {
entry:
  %sg.i = alloca %struct.scatterlist, align 4
  %config = alloca %struct.dma_slave_config, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call2.i = tail call i32 @__msecs_to_jiffies(i32 noundef %tmo_ms) #6
  %regmap2 = getelementptr inbounds %struct.stm32_timers, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regmap2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regmap2, align 4
  %dma3 = getelementptr inbounds %struct.stm32_timers, ptr %1, i32 0, i32 3
  %mul = shl i32 %num_reg, 2
  %mul4 = mul i32 %mul, %bursts
  call void @llvm.lifetime.start.p0(i64 48, ptr nonnull %config) #6
  %4 = call ptr @memset(ptr %config, i32 255, i32 48)
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %id)
  %cmp5 = icmp ugt i32 %id, 6
  br i1 %cmp5, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %num_reg)
  %tobool.not = icmp eq i32 %num_reg, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %bursts)
  %tobool7.not = icmp eq i32 %bursts, 0
  %or.cond = or i1 %tobool.not, %tobool7.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 1020, i32 %reg)
  %cmp9 = icmp ugt i32 %reg, 1020
  %or.cond180 = or i1 %cmp9, %or.cond
  %add = add i32 %mul, %reg
  call void @__sanitizer_cov_trace_const_cmp4(i32 1020, i32 %add)
  %cmp12 = icmp ugt i32 %add, 1020
  %or.cond181 = or i1 %cmp12, %or.cond180
  br i1 %or.cond181, label %if.end.cleanup_crit_edge, label %if.end14

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %arrayidx = getelementptr %struct.stm32_timers, ptr %1, i32 0, i32 3, i32 4, i32 %id
  %5 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %arrayidx, align 4
  %tobool15.not = icmp eq ptr %6, null
  br i1 %tobool15.not, label %if.end14.cleanup_crit_edge, label %if.end17

if.end14.cleanup_crit_edge:                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end17:                                         ; preds = %if.end14
  %lock = getelementptr inbounds %struct.stm32_timers, ptr %1, i32 0, i32 3, i32 2
  tail call void @mutex_lock_nested(ptr noundef %lock, i32 noundef 0) #6
  %7 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %arrayidx, align 4
  %chan = getelementptr inbounds %struct.stm32_timers, ptr %1, i32 0, i32 3, i32 3
  %9 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %8, ptr %chan, align 4
  %call.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %buf) #6
  br i1 %call.i, label %land.rhs.i, label %dma_map_single_attrs.exit

land.rhs.i:                                       ; preds = %if.end17
  %.b1.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i, label %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge, label %if.then.i185, !prof !51

land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_map_single_attrs.exit.thread

if.then.i185:                                     ; preds = %land.rhs.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i = tail call ptr @dev_driver_string(ptr noundef %dev) #6
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 3
  %10 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %11, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i185.dev_name.exit.i_crit_edge

if.then.i185.dev_name.exit.i_crit_edge:           ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #8
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %if.then.i185
  call void @__sanitizer_cov_trace_pc() #8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %if.then.i185.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %13, %if.end.i.i ], [ %11, %if.then.i185.dev_name.exit.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.1, ptr noundef %call16.i, ptr noundef %retval.0.i.i) #6
  br label %dma_map_single_attrs.exit.thread

dma_map_single_attrs.exit.thread:                 ; preds = %dev_name.exit.i, %land.rhs.i.dma_map_single_attrs.exit.thread_crit_edge
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef -1) #6
  br label %unlock

dma_map_single_attrs.exit:                        ; preds = %if.end17
  tail call void @debug_dma_map_single(ptr noundef %dev, ptr noundef %buf, i32 noundef %mul4) #6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %14 = load ptr, ptr @mem_map, align 4
  %15 = ptrtoint ptr %buf to i32
  %sub.i = add i32 %15, 1073741824
  %shr.i = lshr i32 %sub.i, 12
  %add.ptr.i = getelementptr %struct.page, ptr %14, i32 %shr.i
  %and.i = and i32 %15, 4095
  %call41.i = tail call i32 @dma_map_page_attrs(ptr noundef %dev, ptr noundef %add.ptr.i, i32 noundef %and.i, i32 noundef %mul4, i32 noundef 2, i32 noundef 0) #6
  tail call void @debug_dma_mapping_error(ptr noundef %dev, i32 noundef %call41.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call41.i)
  %cmp.i187 = icmp eq i32 %call41.i, -1
  br i1 %cmp.i187, label %dma_map_single_attrs.exit.unlock_crit_edge, label %if.end24

dma_map_single_attrs.exit.unlock_crit_edge:       ; preds = %dma_map_single_attrs.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %unlock

if.end24:                                         ; preds = %dma_map_single_attrs.exit
  %16 = call ptr @memset(ptr %config, i32 0, i32 48)
  %phys_base = getelementptr inbounds %struct.stm32_timers, ptr %1, i32 0, i32 3, i32 1
  %17 = ptrtoint ptr %phys_base to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phys_base, align 4
  %add25 = add i32 %18, 76
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 1
  %19 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %add25, ptr %src_addr, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %20 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 4, ptr %src_addr_width, align 4
  %21 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chan, align 4
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %device_config.i = getelementptr inbounds %struct.dma_device, ptr %24, i32 0, i32 44
  %25 = ptrtoint ptr %device_config.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_config.i, align 4
  %tobool.not.i = icmp eq ptr %26, null
  br i1 %tobool.not.i, label %if.end24.unmap_crit_edge, label %dmaengine_slave_config.exit

if.end24.unmap_crit_edge:                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #8
  br label %unmap

dmaengine_slave_config.exit:                      ; preds = %if.end24
  %call.i188 = call i32 %26(ptr noundef %22, ptr noundef nonnull %config) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool28.not = icmp eq i32 %call.i188, 0
  br i1 %tobool28.not, label %if.end30, label %dmaengine_slave_config.exit.unmap_crit_edge

dmaengine_slave_config.exit.unmap_crit_edge:      ; preds = %dmaengine_slave_config.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %unmap

if.end30:                                         ; preds = %dmaengine_slave_config.exit
  %27 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sg.i) #6
  %29 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 3
  %30 = getelementptr inbounds %struct.scatterlist, ptr %sg.i, i32 0, i32 4
  %31 = call ptr @memset(ptr %sg.i, i32 255, i32 20)
  call void @sg_init_table(ptr noundef nonnull %sg.i, i32 noundef 1) #6
  %32 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call41.i, ptr %29, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %mul4, ptr %30, align 4
  %tobool.not.i191 = icmp eq ptr %28, null
  br i1 %tobool.not.i191, label %if.end30.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false.i

if.end30.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false.i:                                  ; preds = %if.end30
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %28, align 4
  %tobool1.not.i = icmp eq ptr %35, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_prep_slave_single.exit.thread

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_slave_sg.i = getelementptr inbounds %struct.dma_device, ptr %35, i32 0, i32 39
  %36 = ptrtoint ptr %device_prep_slave_sg.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %device_prep_slave_sg.i, align 4
  %tobool4.not.i = icmp eq ptr %37, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, label %dmaengine_prep_slave_single.exit

lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge: ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %dmaengine_prep_slave_single.exit.thread

dmaengine_prep_slave_single.exit.thread:          ; preds = %lor.lhs.false2.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %lor.lhs.false.i.dmaengine_prep_slave_single.exit.thread_crit_edge, %if.end30.dmaengine_prep_slave_single.exit.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #6
  br label %unmap

dmaengine_prep_slave_single.exit:                 ; preds = %lor.lhs.false2.i
  %call.i192 = call ptr %37(ptr noundef nonnull %28, ptr noundef nonnull %sg.i, i32 noundef 1, i32 noundef 2, i32 noundef 1, ptr noundef null) #6
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sg.i) #6
  %tobool33.not = icmp eq ptr %call.i192, null
  br i1 %tobool33.not, label %dmaengine_prep_slave_single.exit.unmap_crit_edge, label %if.end35

dmaengine_prep_slave_single.exit.unmap_crit_edge: ; preds = %dmaengine_prep_slave_single.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %unmap

if.end35:                                         ; preds = %dmaengine_prep_slave_single.exit
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i192, i32 0, i32 6
  %38 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @stm32_timers_dma_done, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i192, i32 0, i32 8
  %39 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %dma3, ptr %callback_param, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i192, i32 0, i32 4
  %40 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %tx_submit.i, align 4
  %call.i195 = call i32 %41(ptr noundef nonnull %call.i192) #6
  %42 = call i32 @llvm.smin.i32(i32 %call.i195, i32 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i195)
  %tobool38.not = icmp sgt i32 %call.i195, -1
  br i1 %tobool38.not, label %if.end40, label %if.end35.dma_term_crit_edge

if.end35.dma_term_crit_edge:                      ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_term

if.end40:                                         ; preds = %if.end35
  %43 = ptrtoint ptr %dma3 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %dma3, align 4
  %44 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chan, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %45, align 4
  %device_issue_pending.i = getelementptr inbounds %struct.dma_device, ptr %47, i32 0, i32 50
  %48 = ptrtoint ptr %device_issue_pending.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %device_issue_pending.i, align 4
  call void %49(ptr noundef %45) #6
  %shr = lshr i32 %reg, 2
  %sub = shl i32 %bursts, 8
  %shl = add i32 %sub, 7936
  %and59 = and i32 %shl, 7936
  %and85 = and i32 %shr, 31
  %or = or i32 %and59, %and85
  %call86 = call i32 @regmap_write(ptr noundef %3, i32 noundef 72, i32 noundef %or) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end40.dma_term_crit_edge

if.end40.dma_term_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #8
  br label %dma_term

if.end89:                                         ; preds = %if.end40
  %call90 = call i32 @regmap_write(ptr noundef %3, i32 noundef 16, i32 noundef 0) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %tobool91.not = icmp eq i32 %call90, 0
  br i1 %tobool91.not, label %if.end93, label %if.end89.dcr_clr_crit_edge

if.end89.dcr_clr_crit_edge:                       ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #8
  br label %dcr_clr

if.end93:                                         ; preds = %if.end89
  %arrayidx94 = getelementptr [7 x i32], ptr @stm32_timers_dier_dmaen, i32 0, i32 %id
  %50 = ptrtoint ptr %arrayidx94 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %arrayidx94, align 4
  %call.i196 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef %51, i32 noundef %51, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i196)
  %tobool97.not = icmp eq i32 %call.i196, 0
  br i1 %tobool97.not, label %if.end99, label %if.end93.dcr_clr_crit_edge

if.end93.dcr_clr_crit_edge:                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  br label %dcr_clr

if.end99:                                         ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #8
  %call101 = call i32 @wait_for_completion_interruptible_timeout(ptr noundef %dma3, i32 noundef %call2.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp102 = icmp eq i32 %call101, 0
  %52 = call i32 @llvm.smin.i32(i32 %call101, i32 0)
  %ret.0 = select i1 %cmp102, i32 -110, i32 %52
  %call.i197 = call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 12, i32 noundef %51, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #6
  %call110 = call i32 @regmap_write(ptr noundef %3, i32 noundef 16, i32 noundef 0) #6
  br label %dcr_clr

dcr_clr:                                          ; preds = %if.end99, %if.end93.dcr_clr_crit_edge, %if.end89.dcr_clr_crit_edge
  %ret.1 = phi i32 [ %call90, %if.end89.dcr_clr_crit_edge ], [ %call.i196, %if.end93.dcr_clr_crit_edge ], [ %ret.0, %if.end99 ]
  %call111 = call i32 @regmap_write(ptr noundef %3, i32 noundef 72, i32 noundef 0) #6
  br label %dma_term

dma_term:                                         ; preds = %dcr_clr, %if.end40.dma_term_crit_edge, %if.end35.dma_term_crit_edge
  %ret.2 = phi i32 [ %42, %if.end35.dma_term_crit_edge ], [ %call86, %if.end40.dma_term_crit_edge ], [ %ret.1, %dcr_clr ]
  %53 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %chan, align 4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %54, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %56, i32 0, i32 47
  %57 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i198 = icmp eq ptr %58, null
  br i1 %tobool.not.i198, label %dma_term.unmap_crit_edge, label %if.then.i200

dma_term.unmap_crit_edge:                         ; preds = %dma_term
  call void @__sanitizer_cov_trace_pc() #8
  br label %unmap

if.then.i200:                                     ; preds = %dma_term
  call void @__sanitizer_cov_trace_pc() #8
  %call.i199 = call i32 %58(ptr noundef %54) #6
  br label %unmap

unmap:                                            ; preds = %if.then.i200, %dma_term.unmap_crit_edge, %dmaengine_prep_slave_single.exit.unmap_crit_edge, %dmaengine_prep_slave_single.exit.thread, %dmaengine_slave_config.exit.unmap_crit_edge, %if.end24.unmap_crit_edge
  %ret.3 = phi i32 [ %call.i188, %dmaengine_slave_config.exit.unmap_crit_edge ], [ -16, %dmaengine_prep_slave_single.exit.unmap_crit_edge ], [ -16, %dmaengine_prep_slave_single.exit.thread ], [ %ret.2, %dma_term.unmap_crit_edge ], [ %ret.2, %if.then.i200 ], [ -38, %if.end24.unmap_crit_edge ]
  call void @dma_unmap_page_attrs(ptr noundef %dev, i32 noundef %call41.i, i32 noundef %mul4, i32 noundef 2, i32 noundef 0) #6
  br label %unlock

unlock:                                           ; preds = %unmap, %dma_map_single_attrs.exit.unlock_crit_edge, %dma_map_single_attrs.exit.thread
  %ret.4 = phi i32 [ %ret.3, %unmap ], [ -12, %dma_map_single_attrs.exit.unlock_crit_edge ], [ -12, %dma_map_single_attrs.exit.thread ]
  %59 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr null, ptr %chan, align 4
  call void @mutex_unlock(ptr noundef %lock) #6
  br label %cleanup

cleanup:                                          ; preds = %unlock, %if.end14.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.4, %unlock ], [ -22, %entry.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ], [ -19, %if.end14.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 48, ptr nonnull %config) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @stm32_timers_dma_done(ptr noundef %p) #0 align 64 {
entry:
  %state = alloca %struct.dma_tx_state, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %state) #6
  %chan = getelementptr inbounds %struct.stm32_timers_dma, ptr %p, i32 0, i32 3
  %0 = call ptr @memset(ptr %state, i32 255, i32 16)
  %1 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %chan, align 4
  %cookie = getelementptr inbounds %struct.dma_chan, ptr %2, i32 0, i32 2
  %3 = ptrtoint ptr %cookie to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %cookie, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %device_tx_status.i = getelementptr inbounds %struct.dma_device, ptr %6, i32 0, i32 49
  %7 = ptrtoint ptr %device_tx_status.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %device_tx_status.i, align 4
  %call.i = call i32 %8(ptr noundef %2, i32 noundef %4, ptr noundef nonnull %state) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp eq i32 %call.i, 0
  br i1 %cmp, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @complete(ptr noundef %p) #6
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %state) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_write(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_interruptible_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_timers_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @stm32_timers_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @stm32_timers_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @stm32_timers_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__msecs_to_jiffies(i32 noundef) local_unnamed_addr #2

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
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_timers_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %name.i = alloca [4 x i8], align 4
  %arr.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 196, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #6
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call2) #6
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  %0 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %1 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %call2, align 4
  %phys_base = getelementptr inbounds %struct.stm32_timers, ptr %call.i, i32 0, i32 3, i32 1
  %3 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %2, ptr %phys_base, align 4
  %call8 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef %call3, ptr noundef nonnull @stm32_timers_regmap_cfg, ptr noundef nonnull @stm32_timers_probe._key, ptr noundef nonnull @.str.4) #6
  %regmap = getelementptr inbounds %struct.stm32_timers, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regmap to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call8, ptr %regmap, align 4
  %cmp.i64 = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i64, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #8
  %5 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end7
  %call15 = tail call ptr @devm_clk_get(ptr noundef %dev1, ptr noundef null) #6
  %6 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call15, ptr %call.i, align 4
  %cmp.i65 = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i65, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #8
  %7 = ptrtoint ptr %call15 to i32
  br label %cleanup

if.end21:                                         ; preds = %if.end14
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %arr.i) #6
  %8 = ptrtoint ptr %arr.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %arr.i, align 4, !annotation !52
  %9 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regmap, align 4
  %call.i66 = call i32 @regmap_read(ptr noundef %10, i32 noundef 44, ptr noundef nonnull %arr.i) #6
  %call2.i = call i32 @regmap_write(ptr noundef %10, i32 noundef 44, i32 noundef -1) #6
  %max_arr.i = getelementptr inbounds %struct.stm32_timers, ptr %call.i, i32 0, i32 2
  %call4.i = call i32 @regmap_read(ptr noundef %10, i32 noundef 44, ptr noundef %max_arr.i) #6
  %11 = ptrtoint ptr %regmap to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap, align 4
  %13 = ptrtoint ptr %arr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arr.i, align 4
  %call6.i = call i32 @regmap_write(ptr noundef %12, i32 noundef 44, i32 noundef %14) #6
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %arr.i) #6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %name.i) #6
  %dma.i = getelementptr inbounds %struct.stm32_timers, ptr %call.i, i32 0, i32 3
  %15 = ptrtoint ptr %name.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %name.i, align 4
  %16 = ptrtoint ptr %dma.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %dma.i, align 4
  %wait.i.i = getelementptr inbounds %struct.stm32_timers, ptr %call.i, i32 0, i32 3, i32 0, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i.i, ptr noundef nonnull @.str.10, ptr noundef nonnull @init_completion.__key) #6
  %lock.i = getelementptr inbounds %struct.stm32_timers, ptr %call.i, i32 0, i32 3, i32 2
  call void @__mutex_init(ptr noundef %lock.i, ptr noundef nonnull @.str.5, ptr noundef nonnull @stm32_timers_dma_probe.__key) #6
  %call.i67 = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 1) #6
  %call3.i = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull %name.i) #6
  %arrayidx.i = getelementptr %struct.stm32_timers, ptr %call.i, i32 0, i32 3, i32 4, i32 0
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call3.i, ptr %arrayidx.i, align 4
  %call.1.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 2) #6
  %call3.1.i = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull %name.i) #6
  %arrayidx.1.i = getelementptr %struct.stm32_timers, ptr %call.i, i32 0, i32 3, i32 4, i32 1
  %18 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call3.1.i, ptr %arrayidx.1.i, align 4
  %call.2.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 3) #6
  %call3.2.i = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull %name.i) #6
  %arrayidx.2.i = getelementptr %struct.stm32_timers, ptr %call.i, i32 0, i32 3, i32 4, i32 2
  %19 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call3.2.i, ptr %arrayidx.2.i, align 4
  %call.3.i = call i32 (ptr, i32, ptr, ...) @snprintf(ptr noundef nonnull %name.i, i32 noundef 4, ptr noundef nonnull @.str.6, i32 noundef 4) #6
  %call3.3.i = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull %name.i) #6
  %arrayidx.3.i = getelementptr %struct.stm32_timers, ptr %call.i, i32 0, i32 3, i32 4, i32 3
  %20 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call3.3.i, ptr %arrayidx.3.i, align 4
  %call5.i = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.7) #6
  %arrayidx8.i = getelementptr %struct.stm32_timers, ptr %call.i, i32 0, i32 3, i32 4, i32 4
  %21 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call5.i, ptr %arrayidx8.i, align 4
  %call9.i = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.8) #6
  %arrayidx12.i = getelementptr %struct.stm32_timers, ptr %call.i, i32 0, i32 3, i32 4, i32 5
  %22 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %call9.i, ptr %arrayidx12.i, align 4
  %call13.i = call ptr @dma_request_chan(ptr noundef %dev1, ptr noundef nonnull @.str.9) #6
  %arrayidx16.i = getelementptr %struct.stm32_timers, ptr %call.i, i32 0, i32 3, i32 4, i32 6
  %23 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call13.i, ptr %arrayidx16.i, align 4
  %24 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i, align 4
  %cmp.i.i = icmp ugt ptr %25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i, label %if.then.i, label %if.end21.for.inc38.i_crit_edge

if.end21.for.inc38.i_crit_edge:                   ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc38.i

if.then.i:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %25 to i32
  %cmp28.not.not.i = icmp eq ptr %25, inttoptr (i32 -19 to ptr)
  %spec.select.i = select i1 %cmp28.not.not.i, i32 0, i32 %26
  %27 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr null, ptr %arrayidx.i, align 4
  br label %for.inc38.i

for.inc38.i:                                      ; preds = %if.then.i, %if.end21.for.inc38.i_crit_edge
  %ret.2.i = phi i32 [ %spec.select.i, %if.then.i ], [ 0, %if.end21.for.inc38.i_crit_edge ]
  %28 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.1.i, align 4
  %cmp.i.1.i = icmp ugt ptr %29, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.1.i, label %if.then.1.i, label %for.inc38.i.for.inc38.1.i_crit_edge

for.inc38.i.for.inc38.1.i_crit_edge:              ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc38.1.i

if.then.1.i:                                      ; preds = %for.inc38.i
  call void @__sanitizer_cov_trace_pc() #8
  %30 = ptrtoint ptr %29 to i32
  %cmp28.not.1.i = icmp ne ptr %29, inttoptr (i32 -19 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.i)
  %tobool.not.1.i = icmp eq i32 %ret.2.i, 0
  %or.cond.1.i = select i1 %cmp28.not.1.i, i1 %tobool.not.1.i, i1 false
  %spec.select.1.i = select i1 %or.cond.1.i, i32 %30, i32 %ret.2.i
  %31 = ptrtoint ptr %arrayidx.1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %arrayidx.1.i, align 4
  br label %for.inc38.1.i

for.inc38.1.i:                                    ; preds = %if.then.1.i, %for.inc38.i.for.inc38.1.i_crit_edge
  %ret.2.1.i = phi i32 [ %spec.select.1.i, %if.then.1.i ], [ %ret.2.i, %for.inc38.i.for.inc38.1.i_crit_edge ]
  %32 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx.2.i, align 4
  %cmp.i.2.i = icmp ugt ptr %33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.2.i, label %if.then.2.i, label %for.inc38.1.i.for.inc38.2.i_crit_edge

for.inc38.1.i.for.inc38.2.i_crit_edge:            ; preds = %for.inc38.1.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc38.2.i

if.then.2.i:                                      ; preds = %for.inc38.1.i
  call void @__sanitizer_cov_trace_pc() #8
  %34 = ptrtoint ptr %33 to i32
  %cmp28.not.2.i = icmp ne ptr %33, inttoptr (i32 -19 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.1.i)
  %tobool.not.2.i = icmp eq i32 %ret.2.1.i, 0
  %or.cond.2.i = select i1 %cmp28.not.2.i, i1 %tobool.not.2.i, i1 false
  %spec.select.2.i = select i1 %or.cond.2.i, i32 %34, i32 %ret.2.1.i
  %35 = ptrtoint ptr %arrayidx.2.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr null, ptr %arrayidx.2.i, align 4
  br label %for.inc38.2.i

for.inc38.2.i:                                    ; preds = %if.then.2.i, %for.inc38.1.i.for.inc38.2.i_crit_edge
  %ret.2.2.i = phi i32 [ %spec.select.2.i, %if.then.2.i ], [ %ret.2.1.i, %for.inc38.1.i.for.inc38.2.i_crit_edge ]
  %36 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.3.i, align 4
  %cmp.i.3.i = icmp ugt ptr %37, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.3.i, label %if.then.3.i, label %for.inc38.2.i.for.inc38.3.i_crit_edge

for.inc38.2.i.for.inc38.3.i_crit_edge:            ; preds = %for.inc38.2.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc38.3.i

if.then.3.i:                                      ; preds = %for.inc38.2.i
  call void @__sanitizer_cov_trace_pc() #8
  %38 = ptrtoint ptr %37 to i32
  %cmp28.not.3.i = icmp ne ptr %37, inttoptr (i32 -19 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.2.i)
  %tobool.not.3.i = icmp eq i32 %ret.2.2.i, 0
  %or.cond.3.i = select i1 %cmp28.not.3.i, i1 %tobool.not.3.i, i1 false
  %spec.select.3.i = select i1 %or.cond.3.i, i32 %38, i32 %ret.2.2.i
  %39 = ptrtoint ptr %arrayidx.3.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr null, ptr %arrayidx.3.i, align 4
  br label %for.inc38.3.i

for.inc38.3.i:                                    ; preds = %if.then.3.i, %for.inc38.2.i.for.inc38.3.i_crit_edge
  %ret.2.3.i = phi i32 [ %spec.select.3.i, %if.then.3.i ], [ %ret.2.2.i, %for.inc38.2.i.for.inc38.3.i_crit_edge ]
  %40 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %arrayidx8.i, align 4
  %cmp.i.4.i = icmp ugt ptr %41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.4.i, label %if.then.4.i, label %for.inc38.3.i.for.inc38.4.i_crit_edge

for.inc38.3.i.for.inc38.4.i_crit_edge:            ; preds = %for.inc38.3.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc38.4.i

if.then.4.i:                                      ; preds = %for.inc38.3.i
  call void @__sanitizer_cov_trace_pc() #8
  %42 = ptrtoint ptr %41 to i32
  %cmp28.not.4.i = icmp ne ptr %41, inttoptr (i32 -19 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.3.i)
  %tobool.not.4.i = icmp eq i32 %ret.2.3.i, 0
  %or.cond.4.i = select i1 %cmp28.not.4.i, i1 %tobool.not.4.i, i1 false
  %spec.select.4.i = select i1 %or.cond.4.i, i32 %42, i32 %ret.2.3.i
  %43 = ptrtoint ptr %arrayidx8.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %arrayidx8.i, align 4
  br label %for.inc38.4.i

for.inc38.4.i:                                    ; preds = %if.then.4.i, %for.inc38.3.i.for.inc38.4.i_crit_edge
  %ret.2.4.i = phi i32 [ %spec.select.4.i, %if.then.4.i ], [ %ret.2.3.i, %for.inc38.3.i.for.inc38.4.i_crit_edge ]
  %44 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx12.i, align 4
  %cmp.i.5.i = icmp ugt ptr %45, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.5.i, label %if.then.5.i, label %for.inc38.4.i.for.inc38.5.i_crit_edge

for.inc38.4.i.for.inc38.5.i_crit_edge:            ; preds = %for.inc38.4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc38.5.i

if.then.5.i:                                      ; preds = %for.inc38.4.i
  call void @__sanitizer_cov_trace_pc() #8
  %46 = ptrtoint ptr %45 to i32
  %cmp28.not.5.i = icmp ne ptr %45, inttoptr (i32 -19 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.4.i)
  %tobool.not.5.i = icmp eq i32 %ret.2.4.i, 0
  %or.cond.5.i = select i1 %cmp28.not.5.i, i1 %tobool.not.5.i, i1 false
  %spec.select.5.i = select i1 %or.cond.5.i, i32 %46, i32 %ret.2.4.i
  %47 = ptrtoint ptr %arrayidx12.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %arrayidx12.i, align 4
  br label %for.inc38.5.i

for.inc38.5.i:                                    ; preds = %if.then.5.i, %for.inc38.4.i.for.inc38.5.i_crit_edge
  %ret.2.5.i = phi i32 [ %spec.select.5.i, %if.then.5.i ], [ %ret.2.4.i, %for.inc38.4.i.for.inc38.5.i_crit_edge ]
  %48 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx16.i, align 4
  %cmp.i.6.i = icmp ugt ptr %49, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.6.i, label %if.then.6.i, label %for.inc38.5.i.stm32_timers_dma_probe.exit_crit_edge

for.inc38.5.i.stm32_timers_dma_probe.exit_crit_edge: ; preds = %for.inc38.5.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %stm32_timers_dma_probe.exit

if.then.6.i:                                      ; preds = %for.inc38.5.i
  call void @__sanitizer_cov_trace_pc() #8
  %50 = ptrtoint ptr %49 to i32
  %cmp28.not.6.i = icmp ne ptr %49, inttoptr (i32 -19 to ptr)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.5.i)
  %tobool.not.6.i = icmp eq i32 %ret.2.5.i, 0
  %or.cond.6.i = select i1 %cmp28.not.6.i, i1 %tobool.not.6.i, i1 false
  %spec.select.6.i = select i1 %or.cond.6.i, i32 %50, i32 %ret.2.5.i
  %51 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr null, ptr %arrayidx16.i, align 4
  br label %stm32_timers_dma_probe.exit

stm32_timers_dma_probe.exit:                      ; preds = %if.then.6.i, %for.inc38.5.i.stm32_timers_dma_probe.exit_crit_edge
  %ret.2.6.i = phi i32 [ %spec.select.6.i, %if.then.6.i ], [ %ret.2.5.i, %for.inc38.5.i.stm32_timers_dma_probe.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %name.i) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.2.6.i)
  %tobool23.not = icmp eq i32 %ret.2.6.i, 0
  br i1 %tobool23.not, label %if.end25, label %if.then24

if.then24:                                        ; preds = %stm32_timers_dma_probe.exit
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @stm32_timers_dma_remove(ptr noundef nonnull %call.i)
  br label %cleanup

if.end25:                                         ; preds = %stm32_timers_dma_probe.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %52 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %53 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %of_node, align 8
  %call28 = call i32 @of_platform_populate(ptr noundef %54, ptr noundef null, ptr noundef null, ptr noundef %dev1) #6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %if.end25.cleanup_crit_edge, label %if.then30

if.end25.cleanup_crit_edge:                       ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.then30:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #8
  call fastcc void @stm32_timers_dma_remove(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.then30, %if.end25.cleanup_crit_edge, %if.then24, %if.then18, %if.then11, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then5 ], [ %5, %if.then11 ], [ %7, %if.then18 ], [ %ret.2.6.i, %if.then24 ], [ -12, %entry.cleanup_crit_edge ], [ %call28, %if.then30 ], [ 0, %if.end25.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @stm32_timers_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @of_platform_depopulate(ptr noundef %dev) #6
  tail call fastcc void @stm32_timers_dma_remove(ptr noundef %1)
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @stm32_timers_dma_remove(ptr nocapture noundef readonly %ddata) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %arrayidx = getelementptr %struct.stm32_timers, ptr %ddata, i32 0, i32 3, i32 4, i32 0
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.for.inc_crit_edge, label %if.then

entry.for.inc_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %1) #6
  br label %for.inc

for.inc:                                          ; preds = %if.then, %entry.for.inc_crit_edge
  %arrayidx.1 = getelementptr %struct.stm32_timers, ptr %ddata, i32 0, i32 3, i32 4, i32 1
  %2 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arrayidx.1, align 4
  %tobool.not.1 = icmp eq ptr %3, null
  br i1 %tobool.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.1

if.then.1:                                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %3) #6
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then.1, %for.inc.for.inc.1_crit_edge
  %arrayidx.2 = getelementptr %struct.stm32_timers, ptr %ddata, i32 0, i32 3, i32 4, i32 2
  %4 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx.2, align 4
  %tobool.not.2 = icmp eq ptr %5, null
  br i1 %tobool.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.2

if.then.2:                                        ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %5) #6
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then.2, %for.inc.1.for.inc.2_crit_edge
  %arrayidx.3 = getelementptr %struct.stm32_timers, ptr %ddata, i32 0, i32 3, i32 4, i32 3
  %6 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.3, align 4
  %tobool.not.3 = icmp eq ptr %7, null
  br i1 %tobool.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.3

if.then.3:                                        ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %7) #6
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then.3, %for.inc.2.for.inc.3_crit_edge
  %arrayidx.4 = getelementptr %struct.stm32_timers, ptr %ddata, i32 0, i32 3, i32 4, i32 4
  %8 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx.4, align 4
  %tobool.not.4 = icmp eq ptr %9, null
  br i1 %tobool.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.4

if.then.4:                                        ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %9) #6
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then.4, %for.inc.3.for.inc.4_crit_edge
  %arrayidx.5 = getelementptr %struct.stm32_timers, ptr %ddata, i32 0, i32 3, i32 4, i32 5
  %10 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.5, align 4
  %tobool.not.5 = icmp eq ptr %11, null
  br i1 %tobool.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.5

if.then.5:                                        ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %11) #6
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then.5, %for.inc.4.for.inc.5_crit_edge
  %arrayidx.6 = getelementptr %struct.stm32_timers, ptr %ddata, i32 0, i32 3, i32 4, i32 6
  %12 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx.6, align 4
  %tobool.not.6 = icmp eq ptr %13, null
  br i1 %tobool.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  br label %for.inc.6

if.then.6:                                        ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @dma_release_channel(ptr noundef nonnull %13) #6
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then.6, %for.inc.5.for.inc.6_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_platform_populate(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @snprintf(ptr noalias nocapture noundef writeonly, i32 noundef, ptr nocapture noundef readonly, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_request_chan(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_platform_depopulate(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 18)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !9, !10, !12, !13, !14, !16, !18, !20, !22, !23, !24, !26, !28, !29, !31, !33, !35, !37, !39, !40}
!llvm.module.flags = !{!42, !43, !44, !45, !46, !47, !48, !49}
!llvm.ident = !{!50}

!0 = !{ptr @__ksymtab_stm32_timers_dma_burst_read, !1, !"__ksymtab_stm32_timers_dma_burst_read", i1 false, i1 false}
!1 = !{!"../drivers/mfd/stm32-timers.c", i32 150, i32 1}
!2 = !{ptr @__initcall__kmod_stm32_timers__241_291_stm32_timers_driver_init6, !3, !"__initcall__kmod_stm32_timers__241_291_stm32_timers_driver_init6", i1 false, i1 false}
!3 = !{!"../drivers/mfd/stm32-timers.c", i32 291, i32 1}
!4 = !{ptr @__exitcall_stm32_timers_driver_exit, !3, !"__exitcall_stm32_timers_driver_exit", i1 false, i1 false}
!5 = !{ptr @__UNIQUE_ID_description242, !6, !"__UNIQUE_ID_description242", i1 false, i1 false}
!6 = !{!"../drivers/mfd/stm32-timers.c", i32 293, i32 1}
!7 = !{ptr @__UNIQUE_ID_file243, !8, !"__UNIQUE_ID_file243", i1 false, i1 false}
!8 = !{!"../drivers/mfd/stm32-timers.c", i32 294, i32 1}
!9 = !{ptr @__UNIQUE_ID_license244, !8, !"__UNIQUE_ID_license244", i1 false, i1 false}
!10 = distinct !{null, !11, !"__already_done", i1 false, i1 false}
!11 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!12 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @.str.1, !11, !"<string literal>", i1 false, i1 false}
!14 = !{ptr @stm32_timers_dier_dmaen, !15, !"stm32_timers_dier_dmaen", i1 false, i1 false}
!15 = !{!"../drivers/mfd/stm32-timers.c", i32 16, i32 18}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/mfd/stm32-timers.c", i32 287, i32 11}
!18 = !{ptr @stm32_timers_driver, !19, !"stm32_timers_driver", i1 false, i1 false}
!19 = !{!"../drivers/mfd/stm32-timers.c", i32 283, i32 31}
!20 = !{ptr @stm32_timers_probe._key, !21, !"_key", i1 false, i1 false}
!21 = !{!"../drivers/mfd/stm32-timers.c", i32 237, i32 18}
!22 = !{ptr @.str.3, !21, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !21, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @stm32_timers_regmap_cfg, !25, !"stm32_timers_regmap_cfg", i1 false, i1 false}
!25 = !{!"../drivers/mfd/stm32-timers.c", i32 152, i32 35}
!26 = !{ptr @stm32_timers_dma_probe.__key, !27, !"__key", i1 false, i1 false}
!27 = !{!"../drivers/mfd/stm32-timers.c", i32 183, i32 2}
!28 = !{ptr @.str.5, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.6, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/mfd/stm32-timers.c", i32 187, i32 36}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/mfd/stm32-timers.c", i32 190, i32 64}
!33 = !{ptr @.str.8, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/mfd/stm32-timers.c", i32 191, i32 66}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/mfd/stm32-timers.c", i32 192, i32 65}
!37 = !{ptr @init_completion.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../include/linux/completion.h", i32 87, i32 2}
!39 = !{ptr @.str.10, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @stm32_timers_of_match, !41, !"stm32_timers_of_match", i1 false, i1 false}
!41 = !{!"../drivers/mfd/stm32-timers.c", i32 277, i32 34}
!42 = !{i32 1, !"wchar_size", i32 2}
!43 = !{i32 1, !"min_enum_size", i32 4}
!44 = !{i32 8, !"branch-target-enforcement", i32 0}
!45 = !{i32 8, !"sign-return-address", i32 0}
!46 = !{i32 8, !"sign-return-address-all", i32 0}
!47 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!48 = !{i32 7, !"uwtable", i32 1}
!49 = !{i32 7, !"frame-pointer", i32 2}
!50 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!51 = !{!"branch_weights", i32 2000, i32 1}
!52 = !{!"auto-init"}
