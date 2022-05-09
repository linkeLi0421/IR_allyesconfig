; ModuleID = '/llk/IR_all_yes/drivers/mfd/pcf50633-adc.c_pt.bc'
source_filename = "../drivers/mfd/pcf50633-adc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab_gpl+pcf50633_adc_sync_read\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_adc_sync_read\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_adc_sync_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_adc_sync_read:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_adc_sync_read\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_adc_sync_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"
module asm "\09.section \22___kcrctab_gpl+pcf50633_adc_async_read\22, \22a\22\09"
module asm "\09.weak\09__crc_pcf50633_adc_async_read\09\09\09\09"
module asm "\09.long\09__crc_pcf50633_adc_async_read\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_pcf50633_adc_async_read:\09\09\09\09\09"
module asm "\09.asciz \09\22pcf50633_adc_async_read\22\09\09\09\09\09"
module asm "__kstrtabns_pcf50633_adc_async_read:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.pcf50633_adc_sync_request = type { i32, %struct.completion }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.pcf50633_adc_request = type { i32, i32, ptr, ptr }
%struct.pcf50633 = type { ptr, ptr, ptr, i32, [40 x %struct.pcf50633_irq], %struct.work_struct, ptr, %struct.mutex, [5 x i8], [5 x i8], [5 x i8], i32, i32, ptr, ptr, ptr, ptr, ptr, [11 x ptr] }
%struct.pcf50633_irq = type { ptr, ptr }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.pcf50633_adc = type { ptr, [8 x ptr], i32, i32, %struct.mutex }

@__kstrtab_pcf50633_adc_sync_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_adc_sync_read = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_adc_sync_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_adc_sync_read to i32), ptr @__kstrtab_pcf50633_adc_sync_read, ptr @__kstrtabns_pcf50633_adc_sync_read }, section "___ksymtab_gpl+pcf50633_adc_sync_read", align 4
@__kstrtab_pcf50633_adc_async_read = external dso_local constant [0 x i8], align 1
@__kstrtabns_pcf50633_adc_async_read = external dso_local constant [0 x i8], align 1
@__ksymtab_pcf50633_adc_async_read = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @pcf50633_adc_async_read to i32), ptr @__kstrtab_pcf50633_adc_async_read, ptr @__kstrtabns_pcf50633_adc_async_read }, section "___ksymtab_gpl+pcf50633_adc_async_read", align 4
@__initcall__kmod_pcf50633_adc__289_246_pcf50633_adc_driver_init6 = internal global ptr @pcf50633_adc_driver_init, section ".initcall6.init", align 4
@pcf50633_adc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @pcf50633_adc_probe, ptr @pcf50633_adc_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.6, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_pcf50633_adc_driver_exit = internal global ptr @pcf50633_adc_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [57 x i8] c"pcf50633_adc.author=Balaji Rao <balajirrao@openmoko.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description291 = internal constant [45 x i8] c"pcf50633_adc.description=PCF50633 adc driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file292 = internal constant [43 x i8] c"pcf50633_adc.file=drivers/mfd/pcf50633-adc\00", section ".modinfo", align 1
@__UNIQUE_ID_license293 = internal constant [25 x i8] c"pcf50633_adc.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_alias294 = internal constant [41 x i8] c"pcf50633_adc.alias=platform:pcf50633-adc\00", section ".modinfo", align 1
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@adc_enqueue_request._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 93, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"ADC queue is full, dropping request\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"adc_enqueue_request\00", [44 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/mfd/pcf50633-adc.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@adc_enqueue_request._entry_ptr = internal global ptr @adc_enqueue_request._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcf50633-adc\00", [19 x i8] zeroinitializer }, align 32
@pcf50633_adc_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"&adc->queue_mutex\00", [46 x i8] zeroinitializer }, align 32
@pcf50633_adc_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.3, i32 180, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"pcf50633-adc irq: ADC queue empty!\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"pcf50633_adc_irq\00", [47 x i8] zeroinitializer }, align 32
@pcf50633_adc_irq._entry_ptr = internal global ptr @pcf50633_adc_irq._entry, section ".printk_index", align 4
@adc_result.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.3, ptr @.str.12, i8 0, i8 40, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"pcf50633_adc\00", [19 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"adc_result\00", [21 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"adc result = %d\0A\00", [47 x i8] zeroinitializer }, align 32
@pcf50633_adc_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 228, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"adc driver removed with request pending\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"pcf50633_adc_remove\00", [44 x i8] zeroinitializer }, align 32
@pcf50633_adc_remove._entry_ptr = internal global ptr @pcf50633_adc_remove._entry, section ".printk_index", align 4
@___asan_gen_.15 = private unnamed_addr constant [20 x i8] c"pcf50633_adc_driver\00", align 1
@___asan_gen_.17 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 238, i32 31 }
@___asan_gen_.22 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.23 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.22, i32 87, i32 2 }
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 93, i32 3 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 240, i32 11 }
@___asan_gen_.45 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 211, i32 2 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 180, i32 3 }
@___asan_gen_.68 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 163, i32 2 }
@___asan_gen_.69 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.75 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.76 = private constant [30 x i8] c"../drivers/mfd/pcf50633-adc.c\00", align 1
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.76, i32 227, i32 3 }
@llvm.compiler.used = appending global [34 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_description291, ptr @__UNIQUE_ID_file292, ptr @__UNIQUE_ID_license293, ptr @__exitcall_pcf50633_adc_driver_exit, ptr @__initcall__kmod_pcf50633_adc__289_246_pcf50633_adc_driver_init6, ptr @__ksymtab_pcf50633_adc_async_read, ptr @__ksymtab_pcf50633_adc_sync_read, ptr @adc_enqueue_request._entry, ptr @adc_enqueue_request._entry_ptr, ptr @pcf50633_adc_driver_exit, ptr @pcf50633_adc_irq._entry, ptr @pcf50633_adc_irq._entry_ptr, ptr @pcf50633_adc_remove._entry, ptr @pcf50633_adc_remove._entry_ptr, ptr @pcf50633_adc_driver, ptr @init_completion.__key, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @pcf50633_adc_probe.__key, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14], section "llvm.metadata"
@0 = internal global [21 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_adc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.15 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.17 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.23 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @adc_enqueue_request._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_adc_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_adc_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.68 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @pcf50633_adc_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_adc_sync_read(ptr noundef %pcf, i32 noundef %mux, i32 noundef %avg) #0 align 64 {
entry:
  %req = alloca %struct.pcf50633_adc_sync_request, align 4
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 60, ptr nonnull %req) #6
  %0 = call ptr @memset(ptr %req, i32 255, i32 60)
  %completion = getelementptr inbounds %struct.pcf50633_adc_sync_request, ptr %req, i32 0, i32 1
  %1 = ptrtoint ptr %completion to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 0, ptr %completion, align 4
  %wait.i = getelementptr inbounds %struct.pcf50633_adc_sync_request, ptr %req, i32 0, i32 1, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str, ptr noundef nonnull @init_completion.__key) #6
  %call = call i32 @pcf50633_adc_async_read(ptr noundef %pcf, i32 noundef %mux, i32 noundef %avg, ptr noundef nonnull @pcf50633_adc_sync_read_callback, ptr noundef nonnull %req)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  call void @wait_for_completion(ptr noundef %completion) #6
  %2 = ptrtoint ptr %req to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %req, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 60, ptr nonnull %req) #6
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @pcf50633_adc_async_read(ptr noundef %pcf, i32 noundef %mux, i32 noundef %avg, ptr noundef %callback, ptr noundef %callback_param) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3264, i32 noundef 16) #9
  %tobool.not = icmp eq ptr %call7.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %call7.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %mux, ptr %call7.i, align 8
  %avg2 = getelementptr inbounds %struct.pcf50633_adc_request, ptr %call7.i, i32 0, i32 1
  %2 = ptrtoint ptr %avg2 to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %avg, ptr %avg2, align 4
  %callback3 = getelementptr inbounds %struct.pcf50633_adc_request, ptr %call7.i, i32 0, i32 2
  %3 = ptrtoint ptr %callback3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %callback, ptr %callback3, align 8
  %callback_param4 = getelementptr inbounds %struct.pcf50633_adc_request, ptr %call7.i, i32 0, i32 3
  %4 = ptrtoint ptr %callback_param4 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %callback_param, ptr %callback_param4, align 4
  %adc_pdev.i.i = getelementptr inbounds %struct.pcf50633, ptr %pcf, i32 0, i32 15
  %5 = ptrtoint ptr %adc_pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %adc_pdev.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3, i32 8
  %7 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %queue_mutex.i = getelementptr inbounds %struct.pcf50633_adc, ptr %8, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %queue_mutex.i, i32 noundef 0) #6
  %queue_tail.i = getelementptr inbounds %struct.pcf50633_adc, ptr %8, i32 0, i32 3
  %9 = ptrtoint ptr %queue_tail.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %queue_tail.i, align 4
  %arrayidx.i = getelementptr %struct.pcf50633_adc, ptr %8, i32 0, i32 1, i32 %10
  %11 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %12, null
  br i1 %tobool.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @mutex_unlock(ptr noundef %queue_mutex.i) #6
  %13 = ptrtoint ptr %pcf to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pcf, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.1) #10
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %queue_head.i = getelementptr inbounds %struct.pcf50633_adc, ptr %8, i32 0, i32 2
  %15 = ptrtoint ptr %queue_head.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %queue_head.i, align 4
  %17 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call7.i, ptr %arrayidx.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %10)
  %cmp.i = icmp eq i32 %16, %10
  br i1 %cmp.i, label %if.then4.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.then4.i:                                       ; preds = %if.end.i
  %18 = ptrtoint ptr %adc_pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %adc_pdev.i.i, align 4
  %driver_data.i.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %19, i32 0, i32 3, i32 8
  %20 = ptrtoint ptr %driver_data.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %driver_data.i.i.i.i.i, align 4
  %queue_head.i.i = getelementptr inbounds %struct.pcf50633_adc, ptr %21, i32 0, i32 2
  %22 = ptrtoint ptr %queue_head.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %queue_head.i.i, align 4
  %arrayidx.i.i = getelementptr %struct.pcf50633_adc, ptr %21, i32 0, i32 1, i32 %23
  %24 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %25, null
  br i1 %tobool.not.i.i, label %if.then4.i.if.end5.i_crit_edge, label %if.end.i.i

if.then4.i.if.end5.i_crit_edge:                   ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end5.i

if.end.i.i:                                       ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #8
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %25, align 4
  %avg.i.i = getelementptr inbounds %struct.pcf50633_adc_request, ptr %25, i32 0, i32 1
  %28 = ptrtoint ptr %avg.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %avg.i.i, align 4
  %and.i.i.i = and i32 %27, 240
  %call.i.i.i = tail call i32 @pcf50633_reg_write(ptr noundef %pcf, i8 noundef zeroext 83, i8 noundef zeroext 0) #6
  %call1.i.i.i = tail call i32 @pcf50633_reg_write(ptr noundef %pcf, i8 noundef zeroext 82, i8 noundef zeroext 1) #6
  %or.i.i.i = or i32 %and.i.i.i, %29
  %30 = trunc i32 %or.i.i.i to i8
  %conv.i.i.i = or i8 %30, 1
  %call4.i.i.i = tail call i32 @pcf50633_reg_write(ptr noundef %pcf, i8 noundef zeroext 84, i8 noundef zeroext %conv.i.i.i) #6
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i.i, %if.then4.i.if.end5.i_crit_edge, %if.end.i.if.end5.i_crit_edge
  %add.i = add i32 %10, 1
  %and.i = and i32 %add.i, 7
  %31 = ptrtoint ptr %queue_tail.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %and.i, ptr %queue_tail.i, align 4
  tail call void @mutex_unlock(ptr noundef %queue_mutex.i) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %if.then.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup_crit_edge ], [ -16, %if.then.i ], [ 0, %if.end5.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcf50633_adc_sync_read_callback(ptr nocapture noundef readnone %pcf, ptr noundef %param, i32 noundef %result) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %param to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %result, ptr %param, align 4
  %completion = getelementptr inbounds %struct.pcf50633_adc_sync_request, ptr %param, i32 0, i32 1
  tail call void @complete(ptr noundef %completion) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_adc_driver_init() #3 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @pcf50633_adc_driver, ptr noundef null) #6
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @pcf50633_adc_driver_exit() #3 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  tail call void @platform_driver_unregister(ptr noundef nonnull @pcf50633_adc_driver) #6
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_reg_write(ptr noundef, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_adc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 136, i32 noundef 3520) #6
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  %parent = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 1
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 8
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %4 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %call.i, align 4
  %driver_data.i.i12 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %5 = ptrtoint ptr %driver_data.i.i12 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call.i, ptr %driver_data.i.i12, align 4
  %call4 = tail call i32 @pcf50633_register_irq(ptr noundef %3, i32 noundef 22, ptr noundef nonnull @pcf50633_adc_irq, ptr noundef nonnull %call.i) #6
  %queue_mutex = getelementptr inbounds %struct.pcf50633_adc, ptr %call.i, i32 0, i32 4
  tail call void @__mutex_init(ptr noundef %queue_mutex, ptr noundef nonnull @.str.7, ptr noundef nonnull @pcf50633_adc_probe.__key) #6
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @pcf50633_adc_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call1 = tail call i32 @pcf50633_free_irq(ptr noundef %3, i32 noundef 22) #6
  %queue_mutex = getelementptr inbounds %struct.pcf50633_adc, ptr %1, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %queue_mutex, i32 noundef 0) #6
  %queue_head = getelementptr inbounds %struct.pcf50633_adc, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %queue_head to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %queue_head, align 4
  %arrayidx = getelementptr %struct.pcf50633_adc, ptr %1, i32 0, i32 1, i32 %5
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %entry.if.end27_crit_edge, label %do.end, !prof !58

entry.if.end27_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  br label %if.end27

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 226, i32 noundef 9, ptr noundef null) #6
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.13) #10
  br label %if.end27

if.end27:                                         ; preds = %do.end, %entry.if.end27_crit_edge
  %arrayidx29 = getelementptr %struct.pcf50633_adc, ptr %1, i32 0, i32 1, i32 0
  %12 = ptrtoint ptr %arrayidx29 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx29, align 4
  tail call void @kfree(ptr noundef %13) #6
  %arrayidx29.1 = getelementptr %struct.pcf50633_adc, ptr %1, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %arrayidx29.1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx29.1, align 4
  tail call void @kfree(ptr noundef %15) #6
  %arrayidx29.2 = getelementptr %struct.pcf50633_adc, ptr %1, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %arrayidx29.2 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx29.2, align 4
  tail call void @kfree(ptr noundef %17) #6
  %arrayidx29.3 = getelementptr %struct.pcf50633_adc, ptr %1, i32 0, i32 1, i32 3
  %18 = ptrtoint ptr %arrayidx29.3 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx29.3, align 4
  tail call void @kfree(ptr noundef %19) #6
  %arrayidx29.4 = getelementptr %struct.pcf50633_adc, ptr %1, i32 0, i32 1, i32 4
  %20 = ptrtoint ptr %arrayidx29.4 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx29.4, align 4
  tail call void @kfree(ptr noundef %21) #6
  %arrayidx29.5 = getelementptr %struct.pcf50633_adc, ptr %1, i32 0, i32 1, i32 5
  %22 = ptrtoint ptr %arrayidx29.5 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx29.5, align 4
  tail call void @kfree(ptr noundef %23) #6
  %arrayidx29.6 = getelementptr %struct.pcf50633_adc, ptr %1, i32 0, i32 1, i32 6
  %24 = ptrtoint ptr %arrayidx29.6 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx29.6, align 4
  tail call void @kfree(ptr noundef %25) #6
  %arrayidx29.7 = getelementptr %struct.pcf50633_adc, ptr %1, i32 0, i32 1, i32 7
  %26 = ptrtoint ptr %arrayidx29.7 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx29.7, align 4
  tail call void @kfree(ptr noundef %27) #6
  tail call void @mutex_unlock(ptr noundef %queue_mutex) #6
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_register_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @pcf50633_adc_irq(i32 noundef %irq, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #8
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %data, align 4
  %queue_mutex = getelementptr inbounds %struct.pcf50633_adc, ptr %data, i32 0, i32 4
  tail call void @mutex_lock_nested(ptr noundef %queue_mutex, i32 noundef 0) #6
  %queue_head = getelementptr inbounds %struct.pcf50633_adc, ptr %data, i32 0, i32 2
  %2 = ptrtoint ptr %queue_head to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %queue_head, align 4
  %arrayidx = getelementptr %struct.pcf50633_adc, ptr %data, i32 0, i32 1, i32 %3
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %do.end, label %if.end28, !prof !59

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #8
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 179, i32 noundef 9, ptr noundef null) #6
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.8) #10
  tail call void @mutex_unlock(ptr noundef %queue_mutex) #6
  br label %cleanup

if.end28:                                         ; preds = %entry
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr null, ptr %arrayidx, align 4
  %add = add i32 %3, 1
  %and = and i32 %add, 7
  %9 = ptrtoint ptr %queue_head to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %and, ptr %queue_head, align 4
  %call.i = tail call zeroext i8 @pcf50633_reg_read(ptr noundef %1, i8 noundef zeroext 85) #6
  %call1.i = tail call zeroext i8 @pcf50633_reg_read(ptr noundef %1, i8 noundef zeroext 87) #6
  %conv.i = zext i8 %call.i to i16
  %shl.i = shl nuw nsw i16 %conv.i, 2
  %10 = and i8 %call1.i, 3
  %and.i = zext i8 %10 to i16
  %or.i = or i16 %shl.i, %and.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @adc_result.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@pcf50633_adc_irq, %if.then.i)) #6
          to label %adc_result.exit [label %if.then.i], !srcloc !60

if.then.i:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #8
  %11 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %1, align 4
  %conv7.i = zext i16 %or.i to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @adc_result.__UNIQUE_ID_ddebug288, ptr noundef %12, ptr noundef nonnull @.str.12, i32 noundef %conv7.i) #6
  br label %adc_result.exit

adc_result.exit:                                  ; preds = %if.then.i, %if.end28
  %conv8.i = zext i16 %or.i to i32
  %adc_pdev.i.i = getelementptr inbounds %struct.pcf50633, ptr %1, i32 0, i32 15
  %13 = ptrtoint ptr %adc_pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %adc_pdev.i.i, align 4
  %driver_data.i.i.i.i = getelementptr inbounds %struct.platform_device, ptr %14, i32 0, i32 3, i32 8
  %15 = ptrtoint ptr %driver_data.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %driver_data.i.i.i.i, align 4
  %queue_head.i = getelementptr inbounds %struct.pcf50633_adc, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %queue_head.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %queue_head.i, align 4
  %arrayidx.i = getelementptr %struct.pcf50633_adc, ptr %16, i32 0, i32 1, i32 %18
  %19 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %arrayidx.i, align 4
  %tobool.not.i = icmp eq ptr %20, null
  br i1 %tobool.not.i, label %adc_result.exit.trigger_next_adc_job_if_any.exit_crit_edge, label %if.end.i

adc_result.exit.trigger_next_adc_job_if_any.exit_crit_edge: ; preds = %adc_result.exit
  call void @__sanitizer_cov_trace_pc() #8
  br label %trigger_next_adc_job_if_any.exit

if.end.i:                                         ; preds = %adc_result.exit
  call void @__sanitizer_cov_trace_pc() #8
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %20, align 4
  %avg.i = getelementptr inbounds %struct.pcf50633_adc_request, ptr %20, i32 0, i32 1
  %23 = ptrtoint ptr %avg.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %avg.i, align 4
  %and.i.i = and i32 %22, 240
  %call.i.i = tail call i32 @pcf50633_reg_write(ptr noundef %1, i8 noundef zeroext 83, i8 noundef zeroext 0) #6
  %call1.i.i = tail call i32 @pcf50633_reg_write(ptr noundef %1, i8 noundef zeroext 82, i8 noundef zeroext 1) #6
  %or.i.i = or i32 %and.i.i, %24
  %25 = trunc i32 %or.i.i to i8
  %conv.i.i = or i8 %25, 1
  %call4.i.i = tail call i32 @pcf50633_reg_write(ptr noundef %1, i8 noundef zeroext 84, i8 noundef zeroext %conv.i.i) #6
  br label %trigger_next_adc_job_if_any.exit

trigger_next_adc_job_if_any.exit:                 ; preds = %if.end.i, %adc_result.exit.trigger_next_adc_job_if_any.exit_crit_edge
  tail call void @mutex_unlock(ptr noundef %queue_mutex) #6
  %callback = getelementptr inbounds %struct.pcf50633_adc_request, ptr %5, i32 0, i32 2
  %26 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.pcf50633_adc_request, ptr %5, i32 0, i32 3
  %28 = ptrtoint ptr %callback_param to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %callback_param, align 4
  tail call void %27(ptr noundef %1, ptr noundef %29, i32 noundef %conv8.i) #6
  tail call void @kfree(ptr noundef nonnull %5) #6
  br label %cleanup

cleanup:                                          ; preds = %trigger_next_adc_job_if_any.exit, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i8 @pcf50633_reg_read(ptr noundef, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pcf50633_free_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #6

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #7 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #7 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 21)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #4 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nounwind }
attributes #7 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #8 = { nomerge }
attributes #9 = { nounwind allocsize(2) }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !7, !9, !11, !13, !14, !16, !18, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !33, !34, !36, !37, !38, !39, !41, !42, !43, !44, !46, !47, !48}
!llvm.module.flags = !{!49, !50, !51, !52, !53, !54, !55, !56}
!llvm.ident = !{!57}

!0 = !{ptr @__ksymtab_pcf50633_adc_sync_read, !1, !"__ksymtab_pcf50633_adc_sync_read", i1 false, i1 false}
!1 = !{!"../drivers/mfd/pcf50633-adc.c", i32 132, i32 1}
!2 = !{ptr @__ksymtab_pcf50633_adc_async_read, !3, !"__ksymtab_pcf50633_adc_async_read", i1 false, i1 false}
!3 = !{!"../drivers/mfd/pcf50633-adc.c", i32 152, i32 1}
!4 = !{ptr @__initcall__kmod_pcf50633_adc__289_246_pcf50633_adc_driver_init6, !5, !"__initcall__kmod_pcf50633_adc__289_246_pcf50633_adc_driver_init6", i1 false, i1 false}
!5 = !{!"../drivers/mfd/pcf50633-adc.c", i32 246, i32 1}
!6 = !{ptr @__exitcall_pcf50633_adc_driver_exit, !5, !"__exitcall_pcf50633_adc_driver_exit", i1 false, i1 false}
!7 = !{ptr @__UNIQUE_ID_author290, !8, !"__UNIQUE_ID_author290", i1 false, i1 false}
!8 = !{!"../drivers/mfd/pcf50633-adc.c", i32 248, i32 1}
!9 = !{ptr @__UNIQUE_ID_description291, !10, !"__UNIQUE_ID_description291", i1 false, i1 false}
!10 = !{!"../drivers/mfd/pcf50633-adc.c", i32 249, i32 1}
!11 = !{ptr @__UNIQUE_ID_file292, !12, !"__UNIQUE_ID_file292", i1 false, i1 false}
!12 = !{!"../drivers/mfd/pcf50633-adc.c", i32 250, i32 1}
!13 = !{ptr @__UNIQUE_ID_license293, !12, !"__UNIQUE_ID_license293", i1 false, i1 false}
!14 = !{ptr @__UNIQUE_ID_alias294, !15, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!15 = !{!"../drivers/mfd/pcf50633-adc.c", i32 251, i32 1}
!16 = !{ptr @init_completion.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../include/linux/completion.h", i32 87, i32 2}
!18 = !{ptr @.str, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.1, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/mfd/pcf50633-adc.c", i32 93, i32 3}
!21 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @adc_enqueue_request._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @adc_enqueue_request._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.6, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/mfd/pcf50633-adc.c", i32 240, i32 11}
!29 = !{ptr @pcf50633_adc_driver, !30, !"pcf50633_adc_driver", i1 false, i1 false}
!30 = !{!"../drivers/mfd/pcf50633-adc.c", i32 238, i32 31}
!31 = !{ptr @pcf50633_adc_probe.__key, !32, !"__key", i1 false, i1 false}
!32 = !{!"../drivers/mfd/pcf50633-adc.c", i32 211, i32 2}
!33 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @.str.8, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/mfd/pcf50633-adc.c", i32 180, i32 3}
!36 = !{ptr @.str.9, !35, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @pcf50633_adc_irq._entry, !35, !"_entry", i1 false, i1 false}
!38 = !{ptr @pcf50633_adc_irq._entry_ptr, !35, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.10, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/mfd/pcf50633-adc.c", i32 163, i32 2}
!41 = !{ptr @.str.11, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.12, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @adc_result.__UNIQUE_ID_ddebug288, !40, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!44 = !{ptr @.str.13, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/mfd/pcf50633-adc.c", i32 227, i32 3}
!46 = !{ptr @.str.14, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @pcf50633_adc_remove._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @pcf50633_adc_remove._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{i32 1, !"wchar_size", i32 2}
!50 = !{i32 1, !"min_enum_size", i32 4}
!51 = !{i32 8, !"branch-target-enforcement", i32 0}
!52 = !{i32 8, !"sign-return-address", i32 0}
!53 = !{i32 8, !"sign-return-address-all", i32 0}
!54 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!55 = !{i32 7, !"uwtable", i32 1}
!56 = !{i32 7, !"frame-pointer", i32 2}
!57 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!58 = !{!"branch_weights", i32 2000, i32 1}
!59 = !{!"branch_weights", i32 1, i32 2000}
!60 = !{i64 2148695393, i64 2148695398, i64 2148695411, i64 2148695455, i64 2148695489, i64 2148695510}
