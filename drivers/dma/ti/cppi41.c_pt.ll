; ModuleID = '/llk/IR_all_yes/drivers/dma/ti/cppi41.c_pt.bc'
source_filename = "../drivers/dma/ti/cppi41.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_dma_filter_info = type { %struct.dma_cap_mask_t, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.cppi_glue_infos = type { ptr, ptr, %struct.chan_queues, i16, i16 }
%struct.chan_queues = type { i16, i16 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.cppi41_dd = type { %struct.dma_device, ptr, i32, ptr, i32, i32, [128 x ptr], ptr, ptr, ptr, i32, ptr, ptr, %struct.chan_queues, i16, i16, i32, i8, %struct.list_head, %struct.spinlock, i32, i8 }
%struct.cppi41_channel = type { %struct.dma_chan, %struct.dma_async_tx_descriptor, ptr, ptr, i32, ptr, i32, i32, i32, i32, i32, i32, i8, %struct.list_head }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.cppi41_desc = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_cppi41__243_1255_cpp41_dma_driver_init6 = internal global ptr @cpp41_dma_driver_init, section ".initcall6.init", align 4
@cpp41_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @cppi41_dma_probe, ptr @cppi41_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @cppi41_dma_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cppi41_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_cpp41_dma_driver_exit = internal global ptr @cpp41_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file244 = internal constant [34 x i8] c"cppi41.file=drivers/dma/ti/cppi41\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [19 x i8] c"cppi41.license=GPL\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [64 x i8] c"cppi41.author=Sebastian Andrzej Siewior <bigeasy@linutronix.de>\00", section ".modinfo", align 1
@.str = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cppi41-dma-engine\00", [46 x i8] zeroinitializer }, align 32
@cppi41_dma_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am3359-cppi41\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @am335x_usb_infos }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,da830-cppi41\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @da8xx_usb_infos }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@cppi41_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cppi41_suspend, ptr @cppi41_resume, ptr @cppi41_suspend, ptr @cppi41_resume, ptr @cppi41_suspend, ptr @cppi41_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @cppi41_runtime_suspend, ptr @cppi41_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@cpp41_dma_info = internal global { %struct.of_dma_filter_info, [24 x i8] } { %struct.of_dma_filter_info { %struct.dma_cap_mask_t zeroinitializer, ptr @cpp41_dma_filter_fn }, [24 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"reg-names\00", [22 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"controller\00", [21 x i8] zeroinitializer }, align 32
@cppi41_dma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&cdd->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"#dma-channels\00", [18 x i8] zeroinitializer }, align 32
@cppi41_dma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.5, ptr @.str.6, ptr @.str.7, i32 380, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s pm runtime get: %i\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cppi41_dma_alloc_chan_resources\00", [32 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/dma/ti/cppi41.c\00", [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@cppi41_dma_alloc_chan_resources._entry_ptr = internal global ptr @cppi41_dma_alloc_chan_resources._entry, section ".printk_index", align 4
@cppi41_dma_issue_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.7, i32 501, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to pm_runtime_get: %i\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"cppi41_dma_issue_pending\00", [39 x i8] zeroinitializer }, align 32
@cppi41_dma_issue_pending._entry_ptr = internal global ptr @cppi41_dma_issue_pending._entry, section ".printk_index", align 4
@cppi41_tear_down_chan.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@cppi41_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.13, ptr @.str.7, i32 345, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"\013%s() q %d desc %08x\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"cppi41_irq\00", [21 x i8] zeroinitializer }, align 32
@cppi41_irq._entry_ptr = internal global ptr @cppi41_irq._entry, section ".printk_index", align 4
@cppi41_dma_remove._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.15, ptr @.str.7, i32 1167, ptr @.str.8, ptr @.str.9 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s could not pm_runtime_get: %i\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"cppi41_dma_remove\00", [46 x i8] zeroinitializer }, align 32
@cppi41_dma_remove._entry_ptr = internal global ptr @cppi41_dma_remove._entry, section ".printk_index", align 4
@am335x_usb_infos = internal constant { %struct.cppi_glue_infos, [16 x i8] } { %struct.cppi_glue_infos { ptr @am335x_usb_queues_rx, ptr @am335x_usb_queues_tx, %struct.chan_queues { i16 31, i16 0 }, i16 93, i16 5 }, [16 x i8] zeroinitializer }, align 32
@da8xx_usb_infos = internal constant { %struct.cppi_glue_infos, [16 x i8] } { %struct.cppi_glue_infos { ptr @da8xx_usb_queues_rx, ptr @da8xx_usb_queues_tx, %struct.chan_queues { i16 31, i16 0 }, i16 24, i16 2 }, [16 x i8] zeroinitializer }, align 32
@am335x_usb_queues_rx = internal constant { [30 x %struct.chan_queues], [40 x i8] } { [30 x %struct.chan_queues] [%struct.chan_queues { i16 1, i16 109 }, %struct.chan_queues { i16 2, i16 110 }, %struct.chan_queues { i16 3, i16 111 }, %struct.chan_queues { i16 4, i16 112 }, %struct.chan_queues { i16 5, i16 113 }, %struct.chan_queues { i16 6, i16 114 }, %struct.chan_queues { i16 7, i16 115 }, %struct.chan_queues { i16 8, i16 116 }, %struct.chan_queues { i16 9, i16 117 }, %struct.chan_queues { i16 10, i16 118 }, %struct.chan_queues { i16 11, i16 119 }, %struct.chan_queues { i16 12, i16 120 }, %struct.chan_queues { i16 13, i16 121 }, %struct.chan_queues { i16 14, i16 122 }, %struct.chan_queues { i16 15, i16 123 }, %struct.chan_queues { i16 16, i16 141 }, %struct.chan_queues { i16 17, i16 142 }, %struct.chan_queues { i16 18, i16 143 }, %struct.chan_queues { i16 19, i16 144 }, %struct.chan_queues { i16 20, i16 145 }, %struct.chan_queues { i16 21, i16 146 }, %struct.chan_queues { i16 22, i16 147 }, %struct.chan_queues { i16 23, i16 148 }, %struct.chan_queues { i16 24, i16 149 }, %struct.chan_queues { i16 25, i16 150 }, %struct.chan_queues { i16 26, i16 151 }, %struct.chan_queues { i16 27, i16 152 }, %struct.chan_queues { i16 28, i16 153 }, %struct.chan_queues { i16 29, i16 154 }, %struct.chan_queues { i16 30, i16 155 }], [40 x i8] zeroinitializer }, align 32
@am335x_usb_queues_tx = internal global { [30 x %struct.chan_queues], [40 x i8] } { [30 x %struct.chan_queues] [%struct.chan_queues { i16 32, i16 93 }, %struct.chan_queues { i16 34, i16 94 }, %struct.chan_queues { i16 36, i16 95 }, %struct.chan_queues { i16 38, i16 96 }, %struct.chan_queues { i16 40, i16 97 }, %struct.chan_queues { i16 42, i16 98 }, %struct.chan_queues { i16 44, i16 99 }, %struct.chan_queues { i16 46, i16 100 }, %struct.chan_queues { i16 48, i16 101 }, %struct.chan_queues { i16 50, i16 102 }, %struct.chan_queues { i16 52, i16 103 }, %struct.chan_queues { i16 54, i16 104 }, %struct.chan_queues { i16 56, i16 105 }, %struct.chan_queues { i16 58, i16 106 }, %struct.chan_queues { i16 60, i16 107 }, %struct.chan_queues { i16 62, i16 125 }, %struct.chan_queues { i16 64, i16 126 }, %struct.chan_queues { i16 66, i16 127 }, %struct.chan_queues { i16 68, i16 128 }, %struct.chan_queues { i16 70, i16 129 }, %struct.chan_queues { i16 72, i16 130 }, %struct.chan_queues { i16 74, i16 131 }, %struct.chan_queues { i16 76, i16 132 }, %struct.chan_queues { i16 78, i16 133 }, %struct.chan_queues { i16 80, i16 134 }, %struct.chan_queues { i16 82, i16 135 }, %struct.chan_queues { i16 84, i16 136 }, %struct.chan_queues { i16 86, i16 137 }, %struct.chan_queues { i16 88, i16 138 }, %struct.chan_queues { i16 90, i16 139 }], [40 x i8] zeroinitializer }, align 32
@da8xx_usb_queues_rx = internal constant { [4 x %struct.chan_queues], [16 x i8] } { [4 x %struct.chan_queues] [%struct.chan_queues { i16 1, i16 26 }, %struct.chan_queues { i16 3, i16 26 }, %struct.chan_queues { i16 5, i16 26 }, %struct.chan_queues { i16 7, i16 26 }], [16 x i8] zeroinitializer }, align 32
@da8xx_usb_queues_tx = internal constant { [4 x %struct.chan_queues], [16 x i8] } { [4 x %struct.chan_queues] [%struct.chan_queues { i16 16, i16 24 }, %struct.chan_queues { i16 18, i16 24 }, %struct.chan_queues { i16 20, i16 24 }, %struct.chan_queues { i16 22, i16 24 }], [16 x i8] zeroinitializer }, align 32
@___asan_gen_.16 = private unnamed_addr constant [17 x i8] c"cpp41_dma_driver\00", align 1
@___asan_gen_.18 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1245, i32 31 }
@___asan_gen_.21 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1249, i32 11 }
@___asan_gen_.22 = private unnamed_addr constant [15 x i8] c"cppi41_dma_ids\00", align 1
@___asan_gen_.24 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1015, i32 34 }
@___asan_gen_.25 = private unnamed_addr constant [14 x i8] c"cppi41_pm_ops\00", align 1
@___asan_gen_.27 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1238, i32 32 }
@___asan_gen_.28 = private unnamed_addr constant [15 x i8] c"cpp41_dma_info\00", align 1
@___asan_gen_.30 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 979, i32 34 }
@___asan_gen_.33 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1071, i32 7 }
@___asan_gen_.36 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1071, i32 20 }
@___asan_gen_.37 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1090, i32 2 }
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1109, i32 8 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 379, i32 3 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 500, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 344, i32 5 }
@___asan_gen_.82 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.88 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1166, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [17 x i8] c"am335x_usb_infos\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 999, i32 37 }
@___asan_gen_.94 = private unnamed_addr constant [16 x i8] c"da8xx_usb_infos\00", align 1
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 1007, i32 37 }
@___asan_gen_.97 = private unnamed_addr constant [21 x i8] c"am335x_usb_queues_rx\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 191, i32 33 }
@___asan_gen_.100 = private unnamed_addr constant [21 x i8] c"am335x_usb_queues_tx\00", align 1
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 155, i32 27 }
@___asan_gen_.103 = private unnamed_addr constant [20 x i8] c"da8xx_usb_queues_rx\00", align 1
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 234, i32 33 }
@___asan_gen_.106 = private unnamed_addr constant [20 x i8] c"da8xx_usb_queues_tx\00", align 1
@___asan_gen_.107 = private constant [27 x i8] c"../drivers/dma/ti/cppi41.c\00", align 1
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.107, i32 227, i32 33 }
@llvm.compiler.used = appending global [41 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_cpp41_dma_driver_exit, ptr @__initcall__kmod_cppi41__243_1255_cpp41_dma_driver_init6, ptr @cpp41_dma_driver_exit, ptr @cppi41_dma_alloc_chan_resources._entry, ptr @cppi41_dma_alloc_chan_resources._entry_ptr, ptr @cppi41_dma_issue_pending._entry, ptr @cppi41_dma_issue_pending._entry_ptr, ptr @cppi41_dma_remove._entry, ptr @cppi41_dma_remove._entry_ptr, ptr @cppi41_irq._entry, ptr @cppi41_irq._entry_ptr, ptr @cpp41_dma_driver, ptr @.str, ptr @cppi41_dma_ids, ptr @cppi41_pm_ops, ptr @cpp41_dma_info, ptr @.str.1, ptr @.str.2, ptr @cppi41_dma_probe.__key, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @am335x_usb_infos, ptr @da8xx_usb_infos, ptr @am335x_usb_queues_rx, ptr @am335x_usb_queues_tx, ptr @da8xx_usb_queues_rx, ptr @da8xx_usb_queues_tx], section "llvm.metadata"
@0 = internal global [31 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpp41_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.16 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.18 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.21 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cppi41_dma_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.24 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cppi41_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cpp41_dma_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.30 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cppi41_dma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cppi41_dma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cppi41_dma_issue_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cppi41_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @cppi41_dma_remove._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am335x_usb_infos to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da8xx_usb_infos to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am335x_usb_queues_rx to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @am335x_usb_queues_tx to i32), i32 120, i32 160, i32 ptrtoint (ptr @___asan_gen_.100 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da8xx_usb_queues_rx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @da8xx_usb_queues_tx to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @cpp41_dma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @cpp41_dma_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @cpp41_dma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @cpp41_dma_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cppi41_dma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node.i, align 8
  %call.i = tail call ptr @of_match_node(ptr noundef nonnull @cppi41_dma_ids, ptr noundef %1) #8
  %tobool.not.i = icmp eq ptr %call.i, null
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %get_glue_info.exit

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

get_glue_info.exit:                               ; preds = %entry
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call.i, i32 0, i32 3
  %2 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data.i, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %get_glue_info.exit.cleanup_crit_edge, label %if.end

get_glue_info.exit.cleanup_crit_edge:             ; preds = %get_glue_info.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %get_glue_info.exit
  %call.i190 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 996, i32 noundef 3520) #8
  %tobool4.not = icmp eq ptr %call.i190, null
  br i1 %tobool4.not, label %if.end.cleanup_crit_edge, label %if.end6

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i190, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #8
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i190, i32 0, i32 27
  %4 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @cppi41_dma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i190, i32 0, i32 29
  %5 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @cppi41_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i190, i32 0, i32 49
  %6 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @cppi41_dma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i190, i32 0, i32 50
  %7 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @cppi41_dma_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i190, i32 0, i32 39
  %8 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr @cppi41_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i190, i32 0, i32 47
  %9 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @cppi41_stop_chan, ptr %device_terminate_all, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i190, i32 0, i32 21
  %10 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 6, ptr %directions, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i190, i32 0, i32 19
  %11 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 30, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i190, i32 0, i32 20
  %12 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 30, ptr %dst_addr_widths, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i190, i32 0, i32 26
  %13 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 2, ptr %residue_granularity, align 4
  %dev18 = getelementptr inbounds %struct.dma_device, ptr %call.i190, i32 0, i32 15
  %14 = ptrtoint ptr %dev18 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %dev1, ptr %dev18, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i190, i32 0, i32 3
  %15 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i190, i32 0, i32 3, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %channels, ptr %prev.i, align 4
  %17 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cap_mask, align 4
  store i32 %18, ptr @cpp41_dma_info, align 4
  %19 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node.i, align 8
  %call22 = tail call i32 @of_property_match_string(ptr noundef %20, ptr noundef nonnull @.str.1, ptr noundef nonnull @.str.2) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call22)
  %cmp = icmp slt i32 %call22, 0
  br i1 %cmp, label %if.end6.cleanup_crit_edge, label %if.end24

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end24:                                         ; preds = %if.end6
  %call25 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %call22) #8
  %call26 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call25) #8
  %ctrl_mem = getelementptr inbounds %struct.cppi41_dd, ptr %call.i190, i32 0, i32 7
  %21 = ptrtoint ptr %ctrl_mem to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call26, ptr %ctrl_mem, align 4
  %cmp.i = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %call26 to i32
  br label %cleanup

if.end32:                                         ; preds = %if.end24
  %add = add nuw i32 %call22, 1
  %call33 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %add) #8
  %call34 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call33) #8
  %sched_mem = getelementptr inbounds %struct.cppi41_dd, ptr %call.i190, i32 0, i32 8
  %23 = ptrtoint ptr %sched_mem to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call34, ptr %sched_mem, align 4
  %cmp.i191 = icmp ugt ptr %call34, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i191, label %if.then37, label %if.end40

if.then37:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %call34 to i32
  br label %cleanup

if.end40:                                         ; preds = %if.end32
  %add41 = add nuw i32 %call22, 2
  %call42 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %add41) #8
  %call43 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call42) #8
  %qmgr_mem = getelementptr inbounds %struct.cppi41_dd, ptr %call.i190, i32 0, i32 9
  %25 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call43, ptr %qmgr_mem, align 4
  %cmp.i192 = icmp ugt ptr %call43, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i192, label %if.then46, label %do.body

if.then46:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %call43 to i32
  br label %cleanup

do.body:                                          ; preds = %if.end40
  %lock = getelementptr inbounds %struct.cppi41_dd, ptr %call.i190, i32 0, i32 19
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.3, ptr noundef nonnull @cppi41_dma_probe.__key, i16 noundef signext 3) #8
  %pending = getelementptr inbounds %struct.cppi41_dd, ptr %call.i190, i32 0, i32 18
  %27 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %pending, ptr %pending, align 4
  %prev.i193 = getelementptr inbounds %struct.cppi41_dd, ptr %call.i190, i32 0, i32 18, i32 1
  %28 = ptrtoint ptr %prev.i193 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %pending, ptr %prev.i193, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %29 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call.i190, ptr %driver_data.i.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %dev1) #8
  tail call void @pm_runtime_set_autosuspend_delay(ptr noundef %dev1, i32 noundef 100) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext true) #8
  %call.i194 = tail call i32 @__pm_runtime_resume(ptr noundef %dev1, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i194)
  %cmp52 = icmp slt i32 %call.i194, 0
  br i1 %cmp52, label %do.body.err_get_sync_crit_edge, label %if.end54

do.body.err_get_sync_crit_edge:                   ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_get_sync

if.end54:                                         ; preds = %do.body
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %queues_rx55 = getelementptr inbounds %struct.cppi41_dd, ptr %call.i190, i32 0, i32 11
  %32 = ptrtoint ptr %queues_rx55 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %31, ptr %queues_rx55, align 4
  %queues_tx = getelementptr inbounds %struct.cppi_glue_infos, ptr %3, i32 0, i32 1
  %33 = ptrtoint ptr %queues_tx to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %queues_tx, align 4
  %queues_tx56 = getelementptr inbounds %struct.cppi41_dd, ptr %call.i190, i32 0, i32 12
  %35 = ptrtoint ptr %queues_tx56 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %34, ptr %queues_tx56, align 4
  %td_queue = getelementptr inbounds %struct.cppi41_dd, ptr %call.i190, i32 0, i32 13
  %td_queue57 = getelementptr inbounds %struct.cppi_glue_infos, ptr %3, i32 0, i32 2
  %36 = ptrtoint ptr %td_queue57 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %td_queue57, align 4
  %38 = ptrtoint ptr %td_queue to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %td_queue, align 4
  %qmgr_num_pend = getelementptr inbounds %struct.cppi_glue_infos, ptr %3, i32 0, i32 4
  %39 = ptrtoint ptr %qmgr_num_pend to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %qmgr_num_pend, align 2
  %qmgr_num_pend58 = getelementptr inbounds %struct.cppi41_dd, ptr %call.i190, i32 0, i32 15
  %41 = ptrtoint ptr %qmgr_num_pend58 to i32
  call void @__asan_store2_noabort(i32 %41)
  store i16 %40, ptr %qmgr_num_pend58, align 2
  %first_completion_queue = getelementptr inbounds %struct.cppi_glue_infos, ptr %3, i32 0, i32 3
  %42 = ptrtoint ptr %first_completion_queue to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %first_completion_queue, align 4
  %first_completion_queue59 = getelementptr inbounds %struct.cppi41_dd, ptr %call.i190, i32 0, i32 14
  %44 = ptrtoint ptr %first_completion_queue59 to i32
  call void @__asan_store2_noabort(i32 %44)
  store i16 %43, ptr %first_completion_queue59, align 4
  %45 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %of_node.i, align 8
  %n_chans = getelementptr inbounds %struct.cppi41_dd, ptr %call.i190, i32 0, i32 16
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %46, ptr noundef nonnull @.str.4, ptr noundef %n_chans, i32 noundef 1, i32 noundef 0) #8
  %47 = tail call i32 @llvm.smin.i32(i32 %call.i.i, i32 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool62.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool62.not, label %if.end64, label %if.end54.err_get_sync_crit_edge

if.end54.err_get_sync_crit_edge:                  ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_get_sync

if.end64:                                         ; preds = %if.end54
  %call65 = tail call fastcc i32 @init_cppi41(ptr noundef %dev1, ptr noundef nonnull %call.i190)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %tobool66.not = icmp eq i32 %call65, 0
  br i1 %tobool66.not, label %if.end68, label %if.end64.err_init_cppi_crit_edge

if.end64.err_init_cppi_crit_edge:                 ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_init_cppi

if.end68:                                         ; preds = %if.end64
  %call69 = tail call fastcc i32 @cppi41_add_chans(ptr noundef %dev1, ptr noundef nonnull %call.i190)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.err_chans_crit_edge

if.end68.err_chans_crit_edge:                     ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_chans

if.end72:                                         ; preds = %if.end68
  %48 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node.i, align 8
  %call74 = tail call i32 @irq_of_parse_and_map(ptr noundef %49, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end72.err_chans_crit_edge, label %if.end77

if.end72.err_chans_crit_edge:                     ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_chans

if.end77:                                         ; preds = %if.end72
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %50 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i195 = icmp eq ptr %51, null
  br i1 %tobool.not.i195, label %if.end.i196, label %if.end77.dev_name.exit_crit_edge

if.end77.dev_name.exit_crit_edge:                 ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i196:                                      ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #10
  %52 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i196, %if.end77.dev_name.exit_crit_edge
  %retval.0.i197 = phi ptr [ %53, %if.end.i196 ], [ %51, %if.end77.dev_name.exit_crit_edge ]
  %call.i198 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev1, i32 noundef %call74, ptr noundef nonnull @cppi41_irq, ptr noundef null, i32 noundef 128, ptr noundef %retval.0.i197, ptr noundef nonnull %call.i190) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i198)
  %tobool81.not = icmp eq i32 %call.i198, 0
  br i1 %tobool81.not, label %if.end83, label %dev_name.exit.err_chans_crit_edge

dev_name.exit.err_chans_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_chans

if.end83:                                         ; preds = %dev_name.exit
  %irq84 = getelementptr inbounds %struct.cppi41_dd, ptr %call.i190, i32 0, i32 10
  %54 = ptrtoint ptr %irq84 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %call74, ptr %irq84, align 4
  %call86 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i190) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call86)
  %tobool87.not = icmp eq i32 %call86, 0
  br i1 %tobool87.not, label %if.end89, label %if.end83.err_chans_crit_edge

if.end83.err_chans_crit_edge:                     ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_chans

if.end89:                                         ; preds = %if.end83
  %55 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node.i, align 8
  %call91 = tail call i32 @of_dma_controller_register(ptr noundef %56, ptr noundef nonnull @cppi41_dma_xlate, ptr noundef nonnull @cpp41_dma_info) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %tobool92.not = icmp eq i32 %call91, 0
  br i1 %tobool92.not, label %if.end94, label %err_of

if.end94:                                         ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  %call.i199 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 22
  %57 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %57)
  store volatile i64 %call.i199, ptr %last_busy.i, align 8
  %call.i200 = tail call i32 @__pm_runtime_suspend(ptr noundef %dev1, i32 noundef 13) #8
  br label %cleanup

err_of:                                           ; preds = %if.end89
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dma_async_device_unregister(ptr noundef nonnull %call.i190) #8
  br label %err_chans

err_chans:                                        ; preds = %err_of, %if.end83.err_chans_crit_edge, %dev_name.exit.err_chans_crit_edge, %if.end72.err_chans_crit_edge, %if.end68.err_chans_crit_edge
  %ret.0 = phi i32 [ %call69, %if.end68.err_chans_crit_edge ], [ %call.i198, %dev_name.exit.err_chans_crit_edge ], [ %call86, %if.end83.err_chans_crit_edge ], [ %call91, %err_of ], [ -22, %if.end72.err_chans_crit_edge ]
  tail call fastcc void @deinit_cppi41(ptr noundef %dev1, ptr noundef nonnull %call.i190)
  br label %err_init_cppi

err_init_cppi:                                    ; preds = %err_chans, %if.end64.err_init_cppi_crit_edge
  %ret.1 = phi i32 [ %call65, %if.end64.err_init_cppi_crit_edge ], [ %ret.0, %err_chans ]
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev1, i1 noundef zeroext false) #8
  br label %err_get_sync

err_get_sync:                                     ; preds = %err_init_cppi, %if.end54.err_get_sync_crit_edge, %do.body.err_get_sync_crit_edge
  %ret.2 = phi i32 [ %call.i194, %do.body.err_get_sync_crit_edge ], [ %47, %if.end54.err_get_sync_crit_edge ], [ %ret.1, %err_init_cppi ]
  %call.i201 = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #8
  br label %cleanup

cleanup:                                          ; preds = %err_get_sync, %if.end94, %if.then46, %if.then37, %if.then29, %if.end6.cleanup_crit_edge, %if.end.cleanup_crit_edge, %get_glue_info.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %22, %if.then29 ], [ %24, %if.then37 ], [ %26, %if.then46 ], [ %ret.2, %err_get_sync ], [ 0, %if.end94 ], [ -22, %get_glue_info.exit.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ %call22, %if.end6.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cppi41_dma_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, ptr noundef nonnull @.str.15, i32 noundef %call.i) #11
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %3) #8
  tail call void @dma_async_device_unregister(ptr noundef %1) #8
  %irq = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 10
  %4 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %5, ptr noundef %1) #8
  %sched_mem.i.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %sched_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sched_mem.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #8, !srcloc !73
  %qmgr_mem.i.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 9
  %8 = ptrtoint ptr %qmgr_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %qmgr_mem.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %9, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !73
  %10 = ptrtoint ptr %qmgr_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qmgr_mem.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %11, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #8, !srcloc !73
  %cd.i.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 3
  %12 = ptrtoint ptr %cd.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %cd.i.i, align 4
  %descs_phys.i.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %descs_phys.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %descs_phys.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %13, i32 noundef %15, i32 noundef 0) #8
  %16 = ptrtoint ptr %qmgr_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %qmgr_mem.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !73
  %18 = ptrtoint ptr %qmgr_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qmgr_mem.i.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %19, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #8, !srcloc !73
  %qmgr_scratch.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %qmgr_scratch.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %qmgr_scratch.i, align 4
  %scratch_phys.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %scratch_phys.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %scratch_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 512, ptr noundef %21, i32 noundef %23, i32 noundef 0) #8
  tail call void @__pm_runtime_use_autosuspend(ptr noundef %dev, i1 noundef zeroext false) #8
  %call.i22 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #8
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cppi41_dma_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cdd1 = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cdd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdd1, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %5, ptr noundef nonnull @.str.5, ptr noundef nonnull @.str.6, i32 noundef %call.i) #11
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %8 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !75
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %do.end.cleanup_crit_edge, label %do.end11.i.i.i.i

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  br label %cleanup

if.end:                                           ; preds = %entry
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %9 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %10 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 1, ptr %completed_cookie.i, align 4
  %txd = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 1
  tail call void @dma_async_tx_descriptor_init(ptr noundef %txd, ptr noundef %chan) #8
  %tx_submit = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @cppi41_tx_submit, ptr %tx_submit, align 4
  %is_tx = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 6
  %12 = ptrtoint ptr %is_tx to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %is_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %if.then8, label %if.end.if.end9_crit_edge

if.end.if.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end9

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %q_num = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 8
  %14 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %q_num, align 4
  %gcr_reg = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 5
  %16 = ptrtoint ptr %gcr_reg to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %gcr_reg, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %15) #8, !srcloc !73
  br label %if.end9

if.end9:                                          ; preds = %if.then8, %if.end.if.end9_crit_edge
  %18 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev, align 4
  %call.i30 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %19, i32 0, i32 12, i32 22
  %20 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %20)
  store volatile i64 %call.i30, ptr %last_busy.i, align 8
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  %call.i31 = tail call i32 @__pm_runtime_suspend(ptr noundef %22, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end9, %do.end11.i.i.i.i, %do.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end9 ], [ %call.i, %do.end.cleanup_crit_edge ], [ %call.i, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cppi41_dma_free_chan_resources(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cdd1 = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cdd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdd1, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !75
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  br label %cleanup

if.end:                                           ; preds = %entry
  %pending = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 18
  %7 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not = icmp eq ptr %8, %pending
  br i1 %cmp.i.not, label %if.end.if.end21_crit_edge, label %do.end, !prof !77

if.end.if.end21_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 412, i32 noundef 9, ptr noundef null) #8
  br label %if.end21

if.end21:                                         ; preds = %do.end, %if.end.if.end21_crit_edge
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  %call.i40 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %10, i32 0, i32 12, i32 22
  %11 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store volatile i64 %call.i40, ptr %last_busy.i, align 8
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  %call.i41 = tail call i32 @__pm_runtime_suspend(ptr noundef %13, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cppi41_dma_tx_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !78
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  br i1 %or.cond.i.i, label %if.then.i.i.dma_cookie_status.exit_crit_edge, label %if.then.i.i.if.end8.i.i_crit_edge

if.then.i.i.if.end8.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.then.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_cookie_status.exit

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.dma_cookie_status.exit_crit_edge, label %if.else.i.i.if.end8.i.i_crit_edge

if.else.i.i.if.end8.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end8.i.i

if.else.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_cookie_status.exit

if.end8.i.i:                                      ; preds = %if.else.i.i.if.end8.i.i_crit_edge, %if.then.i.i.if.end8.i.i_crit_edge
  br label %dma_cookie_status.exit

dma_cookie_status.exit:                           ; preds = %if.end8.i.i, %if.else.i.i.dma_cookie_status.exit_crit_edge, %if.then.i.i.dma_cookie_status.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end8.i.i ], [ 0, %if.then.i.i.dma_cookie_status.exit_crit_edge ], [ 0, %if.else.i.i.dma_cookie_status.exit_crit_edge ]
  br i1 %tobool.not.i, label %dma_cookie_status.exit.dma_set_residue.exit_crit_edge, label %if.then.i5

dma_cookie_status.exit.dma_set_residue.exit_crit_edge: ; preds = %dma_cookie_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_set_residue.exit

if.then.i5:                                       ; preds = %dma_cookie_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  %residue = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 7
  %8 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %residue, align 4
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %10 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %residue1.i, align 4
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.then.i5, %dma_cookie_status.exit.dma_set_residue.exit_crit_edge
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @cppi41_dma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cdd1 = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cdd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdd1, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -115, i32 %call.i)
  %cmp.not = icmp ne i32 %call.i, -115
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp3 = icmp slt i32 %call.i, 0
  %or.cond = and i1 %cmp.not, %cmp3
  br i1 %or.cond, label %if.then, label %do.body9

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !75
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.pm_runtime_put_noidle.exit_crit_edge, label %do.end11.i.i.i.i

if.then.pm_runtime_put_noidle.exit_crit_edge:     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %pm_runtime_put_noidle.exit

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  br label %pm_runtime_put_noidle.exit

pm_runtime_put_noidle.exit:                       ; preds = %do.end11.i.i.i.i, %if.then.pm_runtime_put_noidle.exit_crit_edge
  %7 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %8, ptr noundef nonnull @.str.10, i32 noundef %call.i) #11
  br label %cleanup

do.body9:                                         ; preds = %entry
  %lock = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 19
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %node = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 13
  %pending = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 18
  %prev.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 18, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %10, ptr noundef %pending) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.body9.list_add_tail.exit_crit_edge

do.body9.list_add_tail.exit_crit_edge:            ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %node, ptr %prev.i, align 4
  %12 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %pending, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 13, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %node, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.body9.list_add_tail.exit_crit_edge
  %is_suspended = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 21
  %15 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %is_suspended, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %if.then17, label %list_add_tail.exit.if.end18_crit_edge

list_add_tail.exit.if.end18_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end18

if.then17:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @cppi41_run_queue(ptr noundef %1)
  br label %if.end18

if.end18:                                         ; preds = %if.then17, %list_add_tail.exit.if.end18_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #8
  %17 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev, align 4
  %call.i40 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 12, i32 22
  %19 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %19)
  store volatile i64 %call.i40, ptr %last_busy.i, align 8
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %call.i41 = tail call i32 @__pm_runtime_suspend(ptr noundef %21, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end18, %pm_runtime_put_noidle.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cppi41_dma_prep_slave_sg(ptr noundef readonly %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %dir, i32 noundef %tx_flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cdd1 = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cdd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdd1, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp = icmp slt i32 %call.i, 0
  br i1 %cmp, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %usage_count.i = getelementptr inbounds %struct.device, ptr %5, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !74
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #8
  %6 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #8, !srcloc !75
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %6, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !76
  br label %cleanup

if.end:                                           ; preds = %entry
  %is_suspended = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 21
  %7 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_suspended, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not = icmp eq i8 %8, 0
  br i1 %tobool.not, label %if.end6, label %if.end.err_out_not_ready_crit_edge

if.end.err_out_not_ready_crit_edge:               ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_out_not_ready

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp755.not = icmp eq i32 %sg_len, 0
  br i1 %cmp755.not, label %if.end6.for.end_crit_edge, label %for.body.lr.ph

if.end6.for.end_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end6
  %desc = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 3
  %9 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %desc, align 4
  %q_comp_num.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 9
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %sg.057 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call16, %for.body.for.body_crit_edge ]
  %d.056 = phi ptr [ %10, %for.body.lr.ph ], [ %incdec.ptr, %for.body.for.body_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.057, i32 0, i32 3
  %11 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dma_address, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.057, i32 0, i32 4
  %13 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_length, align 4
  %or.i = or i32 %14, -2147483648
  %15 = ptrtoint ptr %d.056 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %or.i, ptr %d.056, align 32
  %pd1 = getelementptr inbounds %struct.cppi41_desc, ptr %d.056, i32 0, i32 1
  %16 = ptrtoint ptr %pd1 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %pd1, align 4
  %17 = ptrtoint ptr %q_comp_num.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %q_comp_num.i, align 4
  %or.i51 = or i32 %18, 335544320
  %pd2 = getelementptr inbounds %struct.cppi41_desc, ptr %d.056, i32 0, i32 2
  %19 = ptrtoint ptr %pd2 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or.i51, ptr %pd2, align 8
  %pd3 = getelementptr inbounds %struct.cppi41_desc, ptr %d.056, i32 0, i32 3
  %20 = ptrtoint ptr %pd3 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %14, ptr %pd3, align 4
  %pd4 = getelementptr inbounds %struct.cppi41_desc, ptr %d.056, i32 0, i32 4
  %21 = ptrtoint ptr %pd4 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %12, ptr %pd4, align 16
  %pd5 = getelementptr inbounds %struct.cppi41_desc, ptr %d.056, i32 0, i32 5
  %22 = ptrtoint ptr %pd5 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %pd5, align 4
  %pd6 = getelementptr inbounds %struct.cppi41_desc, ptr %d.056, i32 0, i32 6
  %23 = ptrtoint ptr %pd6 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i, ptr %pd6, align 8
  %pd7 = getelementptr inbounds %struct.cppi41_desc, ptr %d.056, i32 0, i32 7
  %24 = ptrtoint ptr %pd7 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %12, ptr %pd7, align 4
  %incdec.ptr = getelementptr %struct.cppi41_desc, ptr %d.056, i32 1
  %inc = add nuw i32 %i.058, 1
  %call16 = tail call ptr @sg_next(ptr noundef %sg.057) #8
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end6.for.end_crit_edge
  %txd17 = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 1
  br label %err_out_not_ready

err_out_not_ready:                                ; preds = %for.end, %if.end.err_out_not_ready_crit_edge
  %txd.0 = phi ptr [ null, %if.end.err_out_not_ready_crit_edge ], [ %txd17, %for.end ]
  %25 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev, align 4
  %call.i53 = tail call i64 @ktime_get_mono_fast_ns() #8
  %last_busy.i = getelementptr inbounds %struct.device, ptr %26, i32 0, i32 12, i32 22
  %27 = ptrtoint ptr %last_busy.i to i32
  call void @__asan_store8_noabort(i32 %27)
  store volatile i64 %call.i53, ptr %last_busy.i, align 8
  %28 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev, align 4
  %call.i54 = tail call i32 @__pm_runtime_suspend(ptr noundef %29, i32 noundef 13) #8
  br label %cleanup

cleanup:                                          ; preds = %err_out_not_ready, %do.end11.i.i.i.i, %if.then.cleanup_crit_edge
  %retval.0 = phi ptr [ %txd.0, %err_out_not_ready ], [ null, %if.then.cleanup_crit_edge ], [ null, %do.end11.i.i.i.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cppi41_stop_chan(ptr noundef %chan) #2 align 64 {
entry:
  %abort_result.i = alloca %struct.dmaengine_result, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cdd1 = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cdd1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cdd1, align 4
  %desc_phys2 = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %desc_phys2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %desc_phys2, align 4
  %descs_phys = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %descs_phys to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %descs_phys, align 4
  %sub = sub i32 %3, %5
  %div73 = lshr i32 %sub, 5
  %arrayidx = getelementptr %struct.cppi41_dd, ptr %1, i32 0, i32 6, i32 %div73
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %if.end17

if.then:                                          ; preds = %entry
  %pending = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 18
  br label %for.cond

for.cond:                                         ; preds = %for.body.for.cond_crit_edge, %if.then
  %.pn.in.in = phi ptr [ %pending, %if.then ], [ %.pn.in, %for.body.for.cond_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.in = load ptr, ptr %.pn.in.in, align 4
  %cmp.not = icmp eq ptr %.pn.in, %pending
  br i1 %cmp.not, label %for.cond.cleanup_crit_edge, label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.body:                                         ; preds = %for.cond
  %cc.0 = getelementptr i8, ptr %.pn.in, i32 -208
  %cmp9.not = icmp eq ptr %cc.0, %chan
  br i1 %cmp9.not, label %if.end, label %for.body.for.cond_crit_edge

for.body.for.cond_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond

if.end:                                           ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %15 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %cleanup

if.end17:                                         ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %abort_result.i) #8
  %17 = ptrtoint ptr %abort_result.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 -1, ptr %abort_result.i, align 4, !annotation !80
  %18 = getelementptr inbounds %struct.dmaengine_result, ptr %abort_result.i, i32 0, i32 1
  %19 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 -1, ptr %18, align 4, !annotation !80
  %cd.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 3
  %20 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %cd.i, align 4
  %first_td_desc.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 5
  %22 = ptrtoint ptr %first_td_desc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %first_td_desc.i, align 4
  %add.ptr.i = getelementptr %struct.cppi41_desc, ptr %21, i32 %23
  %mul.i = shl i32 %23, 5
  %add.i = add i32 %mul.i, %5
  %td_queued.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 12
  %24 = ptrtoint ptr %td_queued.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %bf.load.i = load i8, ptr %td_queued.i, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load.i)
  %tobool.not.i = icmp sgt i8 %bf.load.i, -1
  br i1 %tobool.not.i, label %if.then.i, label %if.end17.if.end16.i_crit_edge

if.end17.if.end16.i_crit_edge:                    ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end16.i

if.then.i:                                        ; preds = %if.end17
  %25 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 -1744830464, ptr %add.ptr.i, align 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !81
  tail call void @arm_heavy_mb() #8
  %or.i = or i32 %add.i, 2
  %qmgr_mem.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 9
  %26 = ptrtoint ptr %qmgr_mem.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %qmgr_mem.i, align 4
  %td_queue.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 13
  %28 = ptrtoint ptr %td_queue.i to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %td_queue.i, align 4
  %conv.i = zext i16 %29 to i32
  %mul3.i = shl nuw nsw i32 %conv.i, 4
  %add4.i = add nuw nsw i32 %mul3.i, 8204
  %add.ptr5.i = getelementptr i8, ptr %27, i32 %add4.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr5.i, i32 %or.i) #8, !srcloc !73
  %is_tx.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 6
  %30 = ptrtoint ptr %is_tx.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %is_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool6.not.i = icmp eq i32 %31, 0
  br i1 %tobool6.not.i, label %if.then7.i, label %if.then.i.if.end.i_crit_edge

if.then.i.if.end.i_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then7.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #10
  %complete.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 13, i32 1
  %32 = ptrtoint ptr %complete.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %complete.i, align 2
  %conv11.i = zext i16 %33 to i32
  %or12.i = or i32 %conv11.i, -2130690048
  br label %if.end.i

if.end.i:                                         ; preds = %if.then7.i, %if.then.i.if.end.i_crit_edge
  %reg.0.i = phi i32 [ -2147483648, %if.then.i.if.end.i_crit_edge ], [ %or12.i, %if.then7.i ]
  %or13.i = or i32 %reg.0.i, 1073741824
  %gcr_reg.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 5
  %34 = ptrtoint ptr %gcr_reg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %gcr_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %35, i32 %or13.i) #8, !srcloc !73
  %36 = ptrtoint ptr %td_queued.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %bf.load15.i = load i8, ptr %td_queued.i, align 4
  %bf.set.i = or i8 %bf.load15.i, -128
  store i8 %bf.set.i, ptr %td_queued.i, align 4
  %td_retry.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 11
  %37 = ptrtoint ptr %td_retry.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 500, ptr %td_retry.i, align 4
  br label %if.end16.i

if.end16.i:                                       ; preds = %if.end.i, %if.end17.if.end16.i_crit_edge
  %38 = ptrtoint ptr %td_queued.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %bf.load17.i = load i8, ptr %td_queued.i, align 4
  %39 = and i8 %bf.load17.i, 96
  call void @__sanitizer_cov_trace_const_cmp1(i8 96, i8 %39)
  %.not.i = icmp eq i8 %39, 96
  br i1 %.not.i, label %if.end16.i.if.end200.i_crit_edge, label %if.then27.i

if.end16.i.if.end200.i_crit_edge:                 ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200.i

if.then27.i:                                      ; preds = %if.end16.i
  %complete29.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 13, i32 1
  %40 = ptrtoint ptr %complete29.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %complete29.i, align 2
  %conv30.i = zext i16 %41 to i32
  %qmgr_mem.i.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 9
  %42 = ptrtoint ptr %qmgr_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %qmgr_mem.i.i, align 4
  %mul.i.i = shl nuw nsw i32 %conv30.i, 4
  %add.i.i = add nuw nsw i32 %mul.i.i, 8204
  %add.ptr.i.i = getelementptr i8, ptr %43, i32 %add.i.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #8, !srcloc !82
  %and.i.i = and i32 %44, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool31.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool31.not.i, label %land.lhs.true.i, label %if.then27.i.if.end36.i_crit_edge

if.then27.i.if.end36.i_crit_edge:                 ; preds = %if.then27.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

land.lhs.true.i:                                  ; preds = %if.then27.i
  %is_tx32.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 6
  %45 = ptrtoint ptr %is_tx32.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %is_tx32.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %46)
  %tobool33.not.i = icmp eq i32 %46, 0
  br i1 %tobool33.not.i, label %land.lhs.true.i.if.end36.i_crit_edge, label %if.then34.i

land.lhs.true.i.if.end36.i_crit_edge:             ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end36.i

if.then34.i:                                      ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #10
  %q_comp_num.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 9
  %47 = ptrtoint ptr %q_comp_num.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %q_comp_num.i, align 4
  %49 = ptrtoint ptr %qmgr_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %qmgr_mem.i.i, align 4
  %mul.i378.i = shl i32 %48, 4
  %add.i379.i = add i32 %mul.i378.i, 8204
  %add.ptr.i380.i = getelementptr i8, ptr %50, i32 %add.i379.i
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i380.i) #8, !srcloc !82
  %and.i381.i = and i32 %51, -32
  br label %if.end36.i

if.end36.i:                                       ; preds = %if.then34.i, %land.lhs.true.i.if.end36.i_crit_edge, %if.then27.i.if.end36.i_crit_edge
  %desc_phys.0.i = phi i32 [ %and.i.i, %if.then27.i.if.end36.i_crit_edge ], [ %and.i381.i, %if.then34.i ], [ 0, %land.lhs.true.i.if.end36.i_crit_edge ]
  %52 = ptrtoint ptr %desc_phys2 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %desc_phys2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %desc_phys.0.i, i32 %53)
  %cmp.i = icmp eq i32 %desc_phys.0.i, %53
  br i1 %cmp.i, label %if.then39.i, label %if.else.i

if.then39.i:                                      ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_pc() #10
  %54 = ptrtoint ptr %td_queued.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %bf.load41.i = load i8, ptr %td_queued.i, align 4
  %bf.set43.i = or i8 %bf.load41.i, 32
  store i8 %bf.set43.i, ptr %td_queued.i, align 4
  br label %if.end200.i

if.else.i:                                        ; preds = %if.end36.i
  call void @__sanitizer_cov_trace_cmp4(i32 %desc_phys.0.i, i32 %add.i)
  %cmp44.i = icmp eq i32 %desc_phys.0.i, %add.i
  br i1 %cmp44.i, label %if.then46.i, label %if.else146.i

if.then46.i:                                      ; preds = %if.else.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !83
  %55 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %add.ptr.i, align 32
  %shr.mask.i = and i32 %56, -134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1744830464, i32 %shr.mask.i)
  %cmp48.not.i = icmp eq i32 %shr.mask.i, -1744830464
  br i1 %cmp48.not.i, label %if.then46.i.if.end67.i_crit_edge, label %do.end61.i, !prof !77

if.then46.i.if.end67.i_crit_edge:                 ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end67.i

do.end61.i:                                       ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 691, i32 noundef 9, ptr noundef null) #8
  br label %if.end67.i

if.end67.i:                                       ; preds = %do.end61.i, %if.then46.i.if.end67.i_crit_edge
  %is_tx75.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 6
  %57 = ptrtoint ptr %is_tx75.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %is_tx75.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool76.not.i = icmp eq i32 %58, 0
  %and.i = and i32 %56, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool77.not.i = icmp eq i32 %and.i, 0
  %59 = select i1 %tobool76.not.i, i1 %tobool77.not.i, i1 false
  br i1 %59, label %do.end95.i, label %if.end67.i.if.end101.i_crit_edge, !prof !84

if.end67.i.if.end101.i_crit_edge:                 ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end101.i

do.end95.i:                                       ; preds = %if.end67.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 692, i32 noundef 9, ptr noundef null) #8
  br label %if.end101.i

if.end101.i:                                      ; preds = %do.end95.i, %if.end67.i.if.end101.i_crit_edge
  %and110.i = and i32 %56, 31
  %port_num.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 10
  %60 = ptrtoint ptr %port_num.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %port_num.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and110.i, i32 %61)
  %cmp111.not.i = icmp eq i32 %and110.i, %61
  br i1 %cmp111.not.i, label %if.end101.i.if.end134.i_crit_edge, label %do.end128.i, !prof !77

if.end101.i.if.end134.i_crit_edge:                ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end134.i

do.end128.i:                                      ; preds = %if.end101.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 693, i32 noundef 9, ptr noundef null) #8
  br label %if.end134.i

if.end134.i:                                      ; preds = %do.end128.i, %if.end101.i.if.end134.i_crit_edge
  %62 = ptrtoint ptr %td_queued.i to i32
  call void @__asan_load1_noabort(i32 %62)
  %bf.load143.i = load i8, ptr %td_queued.i, align 4
  %bf.set145.i = or i8 %bf.load143.i, 64
  store i8 %bf.set145.i, ptr %td_queued.i, align 4
  br label %if.end200.i

if.else146.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %desc_phys.0.i)
  %tobool147.not.i = icmp eq i32 %desc_phys.0.i, 0
  br i1 %tobool147.not.i, label %if.else146.i.if.end200.i_crit_edge, label %land.end155.i

if.else146.i.if.end200.i_crit_edge:               ; preds = %if.else146.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200.i

land.end155.i:                                    ; preds = %if.else146.i
  %.b375.i = load i1, ptr @cppi41_tear_down_chan.__already_done, align 1
  br i1 %.b375.i, label %land.end155.i.if.end200.i_crit_edge, label %if.then162.i, !prof !77

land.end155.i.if.end200.i_crit_edge:              ; preds = %land.end155.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end200.i

if.then162.i:                                     ; preds = %land.end155.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @cppi41_tear_down_chan.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 696, i32 noundef 9, ptr noundef null) #8
  br label %if.end200.i

if.end200.i:                                      ; preds = %if.then162.i, %land.end155.i.if.end200.i_crit_edge, %if.else146.i.if.end200.i_crit_edge, %if.end134.i, %if.then39.i, %if.end16.i.if.end200.i_crit_edge
  %td_retry201.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 11
  %63 = ptrtoint ptr %td_retry201.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %td_retry201.i, align 4
  %dec.i = add i32 %64, -1
  store i32 %dec.i, ptr %td_retry201.i, align 4
  %65 = ptrtoint ptr %td_queued.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %bf.load203.i = load i8, ptr %td_queued.i, align 4
  %66 = and i8 %bf.load203.i, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool207.not.i = icmp ne i8 %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec.i)
  %tobool210.not.i = icmp eq i32 %dec.i, 0
  %or.cond376.i = select i1 %tobool207.not.i, i1 true, i1 %tobool210.not.i
  br i1 %or.cond376.i, label %if.end212.i, label %cppi41_tear_down_chan.exit

if.end212.i:                                      ; preds = %if.end200.i
  br i1 %tobool210.not.i, label %do.end233.i, label %if.end212.i.if.end239.i_crit_edge, !prof !84

if.end212.i.if.end239.i_crit_edge:                ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end239.i

do.end233.i:                                      ; preds = %if.end212.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 714, i32 noundef 9, ptr noundef null) #8
  br label %if.end239.i

if.end239.i:                                      ; preds = %do.end233.i, %if.end212.i.if.end239.i_crit_edge
  %67 = ptrtoint ptr %td_queued.i to i32
  call void @__asan_load1_noabort(i32 %67)
  %bf.load248.i = load i8, ptr %td_queued.i, align 4
  %68 = and i8 %bf.load248.i, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %68)
  %tobool252.not.i = icmp eq i8 %68, 0
  br i1 %tobool252.not.i, label %if.then253.i, label %if.end239.i.if.end293.i_crit_edge

if.end239.i.if.end293.i_crit_edge:                ; preds = %if.end239.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end293.i

if.then253.i:                                     ; preds = %if.end239.i
  %q_num.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 8
  %69 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %q_num.i, align 4
  %qmgr_mem.i382.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 9
  %71 = ptrtoint ptr %qmgr_mem.i382.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %qmgr_mem.i382.i, align 4
  %mul.i383.i = shl i32 %70, 4
  %add.i384.i = add i32 %mul.i383.i, 8204
  %add.ptr.i385.i = getelementptr i8, ptr %72, i32 %add.i384.i
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i385.i) #8, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %73)
  %tobool255.not.i = icmp ult i32 %73, 32
  br i1 %tobool255.not.i, label %if.end259.i, label %if.then253.i.if.end293.i_crit_edge

if.then253.i.if.end293.i_crit_edge:               ; preds = %if.then253.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end293.i

if.end259.i:                                      ; preds = %if.then253.i
  %q_comp_num257.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 9
  %74 = ptrtoint ptr %q_comp_num257.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %q_comp_num257.i, align 4
  %76 = ptrtoint ptr %qmgr_mem.i382.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %qmgr_mem.i382.i, align 4
  %mul.i388.i = shl i32 %75, 4
  %add.i389.i = add i32 %mul.i388.i, 8204
  %add.ptr.i390.i = getelementptr i8, ptr %77, i32 %add.i389.i
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i390.i) #8, !srcloc !82
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %78)
  %tobool261.not.i = icmp ult i32 %78, 32
  br i1 %tobool261.not.i, label %do.end279.i, label %if.end259.i.if.end293.i_crit_edge, !prof !84

if.end259.i.if.end293.i_crit_edge:                ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end293.i

do.end279.i:                                      ; preds = %if.end259.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 720, i32 noundef 9, ptr noundef null) #8
  br label %if.end293.i

if.end293.i:                                      ; preds = %do.end279.i, %if.end259.i.if.end293.i_crit_edge, %if.then253.i.if.end293.i_crit_edge, %if.end239.i.if.end293.i_crit_edge
  %79 = ptrtoint ptr %td_queued.i to i32
  call void @__asan_load1_noabort(i32 %79)
  %bf.load295.i = load i8, ptr %td_queued.i, align 4
  %bf.clear304.i = and i8 %bf.load295.i, 31
  store i8 %bf.clear304.i, ptr %td_queued.i, align 4
  %gcr_reg306.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 5
  %80 = ptrtoint ptr %gcr_reg306.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %gcr_reg306.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %81, i32 0) #8, !srcloc !73
  %82 = ptrtoint ptr %abort_result.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 3, ptr %abort_result.i, align 4
  %txd.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 1
  %83 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %txd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %84)
  %cmp.i.i = icmp slt i32 %84, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !84

do.body2.i.i:                                     ; preds = %if.end293.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ti/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #8, !srcloc !85
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.end293.i
  %chan.i.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 1, i32 3
  %85 = ptrtoint ptr %chan.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %chan.i.i, align 4
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %86, i32 0, i32 3
  %87 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %84, ptr %completed_cookie.i.i, align 4
  %88 = ptrtoint ptr %txd.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %txd.i, align 4
  %callback.i.i.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 1, i32 6
  %89 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %callback.i.i.i, align 4
  %callback_result.i.i.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 1, i32 7
  %91 = ptrtoint ptr %callback_result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %callback_result.i.i.i, align 4
  %callback_param.i.i.i = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 1, i32 8
  %93 = ptrtoint ptr %callback_param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %callback_param.i.i.i, align 4
  %tobool.not.i.i.i = icmp eq ptr %92, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %92(ptr noundef %94, ptr noundef nonnull %abort_result.i) #8
  br label %if.end21

if.else.i.i.i:                                    ; preds = %dma_cookie_complete.exit.i
  %tobool4.not.i.i.i = icmp eq ptr %90, null
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i.if.end21_crit_edge, label %if.then5.i.i.i

if.else.i.i.i.if.end21_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end21

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %90(ptr noundef %94) #8
  br label %if.end21

cppi41_tear_down_chan.exit:                       ; preds = %if.end200.i
  call void @__sanitizer_cov_trace_pc() #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %95 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %95(i32 noundef 214748) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %abort_result.i) #8
  br label %cleanup

if.end21:                                         ; preds = %if.then5.i.i.i, %if.else.i.i.i.if.end21_crit_edge, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %abort_result.i) #8
  %96 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx, align 4
  %tobool24.not = icmp eq ptr %97, null
  br i1 %tobool24.not, label %do.end, label %if.end21.if.end41_crit_edge, !prof !84

if.end21.if.end41_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end41

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 767, i32 noundef 9, ptr noundef null) #8
  br label %if.end41

if.end41:                                         ; preds = %do.end, %if.end21.if.end41_crit_edge
  %98 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr null, ptr %arrayidx, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %99 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %dev, align 4
  %call.i = call i32 @__pm_runtime_idle(ptr noundef %100, i32 noundef 5) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %cppi41_tear_down_chan.exit, %list_del.exit, %for.cond.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end41 ], [ 0, %list_del.exit ], [ -11, %cppi41_tear_down_chan.exit ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_match_string(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_set_autosuspend_delay(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @init_cppi41(ptr noundef %dev, ptr noundef %cdd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %scratch_phys = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 2
  %call.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 512, ptr noundef %scratch_phys, i32 noundef 3264, i32 noundef 0) #8
  %qmgr_scratch = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 1
  %0 = ptrtoint ptr %qmgr_scratch to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %qmgr_scratch, align 4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %1 = ptrtoint ptr %scratch_phys to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %scratch_phys, align 4
  %qmgr_mem = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 9
  %3 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %qmgr_mem, align 4
  %add.ptr = getelementptr i8, ptr %4, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %2) #8, !srcloc !73
  %5 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %qmgr_mem, align 4
  %add.ptr4 = getelementptr i8, ptr %6, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 128) #8, !srcloc !73
  %7 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %qmgr_mem, align 4
  %add.ptr6 = getelementptr i8, ptr %8, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr6, i32 0) #8, !srcloc !73
  %descs_phys.i = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 4
  %cd.i = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 3
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %descs_phys.i, i32 noundef 3264, i32 noundef 0) #8
  %9 = ptrtoint ptr %cd.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i.i, ptr %cd.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %err_td, label %if.end10

if.end10:                                         ; preds = %if.end
  %10 = ptrtoint ptr %descs_phys.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %descs_phys.i, align 4
  %12 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qmgr_mem, align 4
  %add.ptr.i = getelementptr i8, ptr %13, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %11) #8, !srcloc !73
  %14 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qmgr_mem, align 4
  %add.ptr25.i = getelementptr i8, ptr %15, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 2) #8, !srcloc !73
  %td_queue = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 13
  %16 = ptrtoint ptr %td_queue to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %td_queue, align 4
  %conv = zext i16 %17 to i32
  %ctrl_mem = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 7
  %18 = ptrtoint ptr %ctrl_mem to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ctrl_mem, align 4
  %add.ptr11 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 %conv) #8, !srcloc !73
  %sched_mem.i = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 8
  %20 = ptrtoint ptr %sched_mem.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %sched_mem.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %21, i32 0) #8, !srcloc !73
  %n_chans.i = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 16
  %22 = ptrtoint ptr %n_chans.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_chans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp33.not.i = icmp eq i32 %23, 0
  br i1 %cmp33.not.i, label %if.end10.init_sched.exit_crit_edge, label %if.end10.for.body.i_crit_edge

if.end10.for.body.i_crit_edge:                    ; preds = %if.end10
  br label %for.body.i

if.end10.init_sched.exit_crit_edge:               ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_sched.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end10.for.body.i_crit_edge
  %word.035.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end10.for.body.i_crit_edge ]
  %ch.034.i = phi i32 [ %add12.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.end10.for.body.i_crit_edge ]
  %shl1.i = shl i32 %ch.034.i, 8
  %add.i = or i32 %ch.034.i, 1
  %shl3.i = shl i32 %add.i, 16
  %shl6.i = shl i32 %add.i, 24
  %or2.i = or i32 %ch.034.i, %shl1.i
  %or4.i = or i32 %or2.i, %shl6.i
  %or7.i = or i32 %or4.i, %shl3.i
  %or8.i = or i32 %or7.i, -2147450880
  %24 = ptrtoint ptr %sched_mem.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sched_mem.i, align 4
  %mul.i = shl i32 %word.035.i, 2
  %add10.i = add i32 %mul.i, 2048
  %add.ptr11.i = getelementptr i8, ptr %25, i32 %add10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %or8.i) #8, !srcloc !73
  %inc.i = add i32 %word.035.i, 1
  %add12.i = add i32 %ch.034.i, 2
  %26 = ptrtoint ptr %n_chans.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %n_chans.i, align 4
  %cmp.i = icmp ult i32 %add12.i, %27
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.loopexit.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo.i = shl i32 %27, 1
  %phi.bo37.i = add i32 %phi.bo.i, 2147483647
  %phi.bo38.i = or i32 %phi.bo37.i, -2147483648
  br label %init_sched.exit

init_sched.exit:                                  ; preds = %for.end.loopexit.i, %if.end10.init_sched.exit_crit_edge
  %.lcssa.i = phi i32 [ -1, %if.end10.init_sched.exit_crit_edge ], [ %phi.bo38.i, %for.end.loopexit.i ]
  %28 = ptrtoint ptr %sched_mem.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %sched_mem.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %29, i32 %.lcssa.i) #8, !srcloc !73
  br label %cleanup

err_td:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %sched_mem.i.i = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 8
  %30 = ptrtoint ptr %sched_mem.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %sched_mem.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 0) #8, !srcloc !73
  %32 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %qmgr_mem, align 4
  %add.ptr.i.i = getelementptr i8, ptr %33, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !73
  %34 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %qmgr_mem, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %35, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 0) #8, !srcloc !73
  %36 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cd.i, align 4
  %38 = ptrtoint ptr %descs_phys.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %descs_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %37, i32 noundef %39, i32 noundef 0) #8
  %40 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %qmgr_mem, align 4
  %add.ptr.i26 = getelementptr i8, ptr %41, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i26, i32 0) #8, !srcloc !73
  %42 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %qmgr_mem, align 4
  %add.ptr2.i = getelementptr i8, ptr %43, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #8, !srcloc !73
  %44 = ptrtoint ptr %qmgr_scratch to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %qmgr_scratch, align 4
  %46 = ptrtoint ptr %scratch_phys to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %scratch_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 512, ptr noundef %45, i32 noundef %47, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %err_td, %init_sched.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -12, %err_td ], [ 0, %init_sched.exit ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @cppi41_add_chans(ptr noundef %dev, ptr noundef %cdd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %n_chans1 = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 16
  %0 = ptrtoint ptr %n_chans1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %n_chans1, align 4
  %mul = shl i32 %1, 1
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %mul, i32 216) #8
  %3 = extractvalue { i32, i1 } %2, 1
  br i1 %3, label %entry.cleanup_crit_edge, label %devm_kcalloc.exit, !prof !84

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %entry
  %4 = extractvalue { i32, i1 } %2, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %4, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul)
  %cmp57.not = icmp eq i32 %mul, 0
  br i1 %cmp57.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %ctrl_mem = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 7
  %cd = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 3
  %descs_phys = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %cdd, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %cdd, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.058 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.cppi41_channel, ptr %call5.i.i, i32 %i.058
  %cdd2 = getelementptr %struct.cppi41_channel, ptr %call5.i.i, i32 %i.058, i32 2
  %5 = ptrtoint ptr %cdd2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %cdd, ptr %cdd2, align 4
  %and = and i32 %i.058, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool3.not = icmp eq i32 %and, 0
  %6 = ptrtoint ptr %ctrl_mem to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ctrl_mem, align 4
  %8 = shl i32 %i.058, 4
  %mul8 = and i32 %8, -32
  %add9 = add i32 %mul8, 2056
  %9 = add i32 %8, 2048
  %add = and i32 %9, -32
  %add9.sink = select i1 %tobool3.not, i32 %add9, i32 %add
  %not.tobool3.not = xor i1 %tobool3.not, true
  %.sink = zext i1 %not.tobool3.not to i32
  %add.ptr10 = getelementptr i8, ptr %7, i32 %add9.sink
  %10 = getelementptr %struct.cppi41_channel, ptr %call5.i.i, i32 %i.058, i32 5
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr10, ptr %10, align 4
  %12 = getelementptr %struct.cppi41_channel, ptr %call5.i.i, i32 %i.058, i32 6
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink, ptr %12, align 4
  %shr14 = ashr i32 %i.058, 1
  %port_num = getelementptr %struct.cppi41_channel, ptr %call5.i.i, i32 %i.058, i32 10
  %14 = ptrtoint ptr %port_num to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %shr14, ptr %port_num, align 4
  %15 = ptrtoint ptr %cd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %cd, align 4
  %arrayidx15 = getelementptr %struct.cppi41_desc, ptr %16, i32 %i.058
  %desc = getelementptr %struct.cppi41_channel, ptr %call5.i.i, i32 %i.058, i32 3
  %17 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %arrayidx15, ptr %desc, align 4
  %18 = ptrtoint ptr %descs_phys to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %descs_phys, align 4
  %desc_phys = getelementptr %struct.cppi41_channel, ptr %call5.i.i, i32 %i.058, i32 4
  %mul16 = shl i32 %i.058, 5
  %add18 = add i32 %19, %mul16
  %20 = ptrtoint ptr %desc_phys to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %add18, ptr %desc_phys, align 4
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %cdd, ptr %arrayidx, align 4
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 8
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %23, ptr noundef %channels) #8
  br i1 %call.i.i, label %if.end.i.i54, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i54:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %device_node, ptr %prev.i, align 4
  %25 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %device_node, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %device_node, ptr %23, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i54, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw i32 %i.058, 1
  %exitcond.not = icmp eq i32 %inc, %mul
  br i1 %exitcond.not, label %list_add_tail.exit.for.end_crit_edge, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %first_td_desc = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 5
  %28 = ptrtoint ptr %first_td_desc to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %mul, ptr %first_td_desc, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %devm_kcalloc.exit.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cppi41_irq(i32 noundef %irq, ptr nocapture noundef %data) #2 align 64 {
entry:
  %dummy_result.i.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %first_completion_queue1 = getelementptr inbounds %struct.cppi41_dd, ptr %data, i32 0, i32 14
  %0 = ptrtoint ptr %first_completion_queue1 to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %first_completion_queue1, align 4
  %qmgr_num_pend2 = getelementptr inbounds %struct.cppi41_dd, ptr %data, i32 0, i32 15
  %2 = ptrtoint ptr %qmgr_num_pend2 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %qmgr_num_pend2, align 2
  %conv = zext i16 %1 to i32
  %div130 = lshr i32 %conv, 5
  %conv3 = zext i16 %3 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %div130, i32 %conv3)
  %cmp142 = icmp ult i32 %div130, %conv3
  br i1 %cmp142, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %qmgr_mem = getelementptr inbounds %struct.cppi41_dd, ptr %data, i32 0, i32 9
  %rem = and i32 %conv, 31
  %notmask = shl nsw i32 -1, %rem
  %is_suspended = getelementptr inbounds %struct.cppi41_dd, ptr %data, i32 0, i32 21
  %descs_phys.i = getelementptr inbounds %struct.cppi41_dd, ptr %data, i32 0, i32 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %data, i32 0, i32 15
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %for.body.lr.ph
  %i.0143 = phi i32 [ %div130, %for.body.lr.ph ], [ %inc, %while.end.for.body_crit_edge ]
  %4 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qmgr_mem, align 4
  %mul = shl i32 %i.0143, 2
  %add = add nuw nsw i32 %mul, 144
  %add.ptr = getelementptr i8, ptr %5, i32 %add
  %6 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !82
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0143, i32 %div130)
  %cmp7 = icmp eq i32 %i.0143, %div130
  br i1 %cmp7, label %land.lhs.true, label %for.body.if.end_crit_edge

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.lhs.true:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not = icmp eq i32 %6, 0
  br i1 %tobool.not, label %land.lhs.true.while.end_crit_edge, label %if.then

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %and = and i32 %6, %notmask
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %val.0 = phi i32 [ %and, %if.then ], [ %6, %for.body.if.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0)
  %tobool10.not = icmp eq i32 %val.0, 0
  br i1 %tobool10.not, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !86
  %mul40 = shl i32 %i.0143, 5
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %val.1141 = phi i32 [ %val.0, %while.body.lr.ph ], [ %and39, %cleanup.while.body_crit_edge ]
  %7 = ptrtoint ptr %is_suspended to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %is_suspended, align 4, !range !79
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool14.not = icmp eq i8 %8, 0
  br i1 %tobool14.not, label %while.body.if.end29_crit_edge, label %do.end, !prof !77

while.body.if.end29_crit_edge:                    ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end29

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 336, i32 noundef 9, ptr noundef null) #8
  br label %if.end29

if.end29:                                         ; preds = %do.end, %while.body.if.end29_crit_edge
  %9 = call i32 @llvm.ctlz.i32(i32 %val.1141, i1 true) #8, !range !87
  %sub.i = xor i32 %9, 31
  %shl37 = shl nuw i32 1, %sub.i
  %neg38 = xor i32 %shl37, -1
  %and39 = and i32 %val.1141, %neg38
  %add41 = or i32 %sub.i, %mul40
  %10 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qmgr_mem, align 4
  %mul.i = shl i32 %add41, 4
  %add.i = add i32 %mul.i, 8204
  %add.ptr.i = getelementptr i8, ptr %11, i32 %add.i
  %12 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !82
  %and.i = and i32 %12, -32
  %13 = ptrtoint ptr %descs_phys.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %descs_phys.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %14)
  %cmp.not.i = icmp uge i32 %and.i, %14
  %add.i131 = add i32 %14, 4096
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i131, i32 %and.i)
  %cmp2.i = icmp ugt i32 %add.i131, %and.i
  %or.cond.i = and i1 %cmp.not.i, %cmp2.i
  br i1 %or.cond.i, label %if.end.i, label %if.end29.do.end63_crit_edge

if.end29.do.end63_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

if.end.i:                                         ; preds = %if.end29
  %sub.i132 = sub i32 %and.i, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 4095, i32 %sub.i132)
  %cmp4.i = icmp ugt i32 %sub.i132, 4095
  br i1 %cmp4.i, label %do.body7.i, label %desc_to_chan.exit, !prof !84

do.body7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ti/cppi41.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 268, 0\0A.popsection", ""() #8, !srcloc !88
  unreachable

desc_to_chan.exit:                                ; preds = %if.end.i
  %div27.i = lshr i32 %sub.i132, 5
  %arrayidx.i = getelementptr %struct.cppi41_dd, ptr %data, i32 0, i32 6, i32 %div27.i
  %15 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %arrayidx.i, align 4
  store ptr null, ptr %arrayidx.i, align 4
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %call.i.i = call i32 @__pm_runtime_idle(ptr noundef %18, i32 noundef 5) #8
  %tobool45.not = icmp eq ptr %16, null
  br i1 %tobool45.not, label %desc_to_chan.exit.do.end63_crit_edge, label %if.end84, !prof !84

desc_to_chan.exit.do.end63_crit_edge:             ; preds = %desc_to_chan.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.end63

do.end63:                                         ; preds = %desc_to_chan.exit.do.end63_crit_edge, %if.end29.do.end63_crit_edge
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 343, i32 noundef 9, ptr noundef null) #8
  %call83 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.12, ptr noundef nonnull @.str.13, i32 noundef %add41, i32 noundef %and.i) #11
  br label %cleanup

if.end84:                                         ; preds = %desc_to_chan.exit
  %desc85 = getelementptr inbounds %struct.cppi41_channel, ptr %16, i32 0, i32 3
  %19 = ptrtoint ptr %desc85 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc85, align 4
  %pd2 = getelementptr inbounds %struct.cppi41_desc, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %pd2 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pd2, align 8
  %and86 = and i32 %22, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and86)
  %tobool87.not = icmp eq i32 %and86, 0
  br i1 %tobool87.not, label %if.else, label %if.end84.if.end91_crit_edge

if.end84.if.end91_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end91

if.else:                                          ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %20, align 32
  %and.i133 = and i32 %24, 4194303
  br label %if.end91

if.end91:                                         ; preds = %if.else, %if.end84.if.end91_crit_edge
  %len.0 = phi i32 [ %and.i133, %if.else ], [ 0, %if.end84.if.end91_crit_edge ]
  %pd6 = getelementptr inbounds %struct.cppi41_desc, ptr %20, i32 0, i32 6
  %25 = ptrtoint ptr %pd6 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %pd6, align 8
  %and.i134 = and i32 %26, 4194303
  %sub = sub nsw i32 %and.i134, %len.0
  %residue = getelementptr inbounds %struct.cppi41_channel, ptr %16, i32 0, i32 7
  %27 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %sub, ptr %residue, align 4
  %txd = getelementptr inbounds %struct.cppi41_channel, ptr %16, i32 0, i32 1
  %28 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %txd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %29)
  %cmp.i = icmp slt i32 %29, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !84

do.body2.i:                                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ti/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #8, !srcloc !85
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.end91
  %chan.i = getelementptr inbounds %struct.cppi41_channel, ptr %16, i32 0, i32 1, i32 3
  %30 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %31, i32 0, i32 3
  %32 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %29, ptr %completed_cookie.i, align 4
  %33 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %txd, align 4
  %callback.i.i = getelementptr inbounds %struct.cppi41_channel, ptr %16, i32 0, i32 1, i32 6
  %34 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %callback.i.i, align 4
  %callback_result.i.i = getelementptr inbounds %struct.cppi41_channel, ptr %16, i32 0, i32 1, i32 7
  %36 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %callback_result.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.cppi41_channel, ptr %16, i32 0, i32 1, i32 8
  %38 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %callback_param.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i) #8
  %40 = ptrtoint ptr %dummy_result.i.i to i32
  call void @__asan_store8_noabort(i32 %40)
  store i64 0, ptr %dummy_result.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %37, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void %37(ptr noundef %39, ptr noundef nonnull %dummy_result.i.i) #8
  br label %dmaengine_desc_get_callback_invoke.exit

if.else.i.i:                                      ; preds = %dma_cookie_complete.exit
  %tobool4.not.i.i = icmp eq ptr %35, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, label %if.then5.i.i

if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_desc_get_callback_invoke.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  call void %35(ptr noundef %39) #8
  br label %dmaengine_desc_get_callback_invoke.exit

dmaengine_desc_get_callback_invoke.exit:          ; preds = %if.then5.i.i, %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_desc_get_callback_invoke.exit, %do.end63
  %tobool13.not = icmp eq i32 %and39, 0
  br i1 %tobool13.not, label %cleanup.while.end_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.end

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %if.end.while.end_crit_edge, %land.lhs.true.while.end_crit_edge
  %inc = add nuw nsw i32 %i.0143, 1
  %exitcond.not = icmp eq i32 %inc, %conv3
  br i1 %exitcond.not, label %while.end.for.end_crit_edge, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %while.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @cppi41_dma_xlate(ptr noundef %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  %filter_fn = getelementptr inbounds %struct.of_dma_filter_info, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %filter_fn to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %filter_fn, align 4
  %tobool1.not = icmp ne ptr %5, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp.not = icmp eq i32 %3, 2
  %or.cond = select i1 %tobool1.not, i1 %cmp.not, i1 false
  br i1 %or.cond, label %if.end3, label %lor.lhs.false.cleanup_crit_edge

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %call = tail call ptr @__dma_request_channel(ptr noundef nonnull %1, ptr noundef nonnull %5, ptr noundef %args, ptr noundef null) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end3, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end3 ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @deinit_cppi41(ptr noundef %dev, ptr nocapture noundef readonly %cdd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %sched_mem.i = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 8
  %0 = ptrtoint ptr %sched_mem.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %sched_mem.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #8, !srcloc !73
  %qmgr_mem.i = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 9
  %2 = ptrtoint ptr %qmgr_mem.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qmgr_mem.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !73
  %4 = ptrtoint ptr %qmgr_mem.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qmgr_mem.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %5, i32 4100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #8, !srcloc !73
  %cd.i = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 3
  %6 = ptrtoint ptr %cd.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %cd.i, align 4
  %descs_phys.i = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 4
  %8 = ptrtoint ptr %descs_phys.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %descs_phys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 4096, ptr noundef %7, i32 noundef %9, i32 noundef 0) #8
  %10 = ptrtoint ptr %qmgr_mem.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %qmgr_mem.i, align 4
  %add.ptr = getelementptr i8, ptr %11, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #8, !srcloc !73
  %12 = ptrtoint ptr %qmgr_mem.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %qmgr_mem.i, align 4
  %add.ptr2 = getelementptr i8, ptr %13, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #8, !srcloc !73
  %qmgr_scratch = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 1
  %14 = ptrtoint ptr %qmgr_scratch to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %qmgr_scratch, align 4
  %scratch_phys = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 2
  %16 = ptrtoint ptr %scratch_phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %scratch_phys, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef 512, ptr noundef %15, i32 noundef %17, i32 noundef 0) #8
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @cppi41_tx_submit(ptr nocapture noundef %tx) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1.i, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %3, 1
  %4 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #8
  %5 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %cookie2.i, align 4
  %6 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %4, ptr %tx, align 4
  ret i32 %4
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @cppi41_run_queue(ptr noundef readonly %cdd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %pending = getelementptr inbounds %struct.cppi41_dd, ptr %cdd, i32 0, i32 18
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pending, align 4
  %cmp.not20 = icmp eq ptr %1, %pending
  br i1 %cmp.not20, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in21 = phi ptr [ %.pn, %list_del.exit.for.body_crit_edge ], [ %1, %entry.for.body_crit_edge ]
  %c.0 = getelementptr i8, ptr %.pn.in21, i32 -208
  %2 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in21, align 4
  %cdd1.i = getelementptr i8, ptr %.pn.in21, i32 -44
  %3 = ptrtoint ptr %cdd1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cdd1.i, align 4
  %residue.i = getelementptr i8, ptr %.pn.in21, i32 -24
  %5 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 0, ptr %residue.i, align 4
  %is_tx.i = getelementptr i8, ptr %.pn.in21, i32 -28
  %6 = ptrtoint ptr %is_tx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %is_tx.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.not.i = icmp eq i32 %7, 0
  br i1 %tobool.not.i, label %if.then.i, label %for.body.if.end.i_crit_edge

for.body.if.end.i_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %q_comp_num.i = getelementptr i8, ptr %.pn.in21, i32 -16
  %8 = ptrtoint ptr %q_comp_num.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %q_comp_num.i, align 4
  %or3.i = or i32 %9, -2130690048
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %for.body.if.end.i_crit_edge
  %reg.0.i = phi i32 [ -2147483648, %for.body.if.end.i_crit_edge ], [ %or3.i, %if.then.i ]
  %gcr_reg.i = getelementptr i8, ptr %.pn.in21, i32 -32
  %10 = ptrtoint ptr %gcr_reg.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %gcr_reg.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %11, i32 %reg.0.i) #8, !srcloc !73
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %4, i32 0, i32 15
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %call.i.i = tail call i32 @__pm_runtime_resume(ptr noundef %13, i32 noundef 5) #8
  %desc_phys4.i = getelementptr i8, ptr %.pn.in21, i32 -36
  %14 = ptrtoint ptr %desc_phys4.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %desc_phys4.i, align 4
  %descs_phys.i = getelementptr inbounds %struct.cppi41_dd, ptr %4, i32 0, i32 4
  %16 = ptrtoint ptr %descs_phys.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %descs_phys.i, align 4
  %sub.i = sub i32 %15, %17
  %div52.i = lshr i32 %sub.i, 5
  %arrayidx.i = getelementptr %struct.cppi41_dd, ptr %4, i32 0, i32 6, i32 %div52.i
  %18 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx.i, align 4
  %tobool5.not.i = icmp eq ptr %19, null
  br i1 %tobool5.not.i, label %if.end.i.push_desc_queue.exit_crit_edge, label %do.end17.i, !prof !77

if.end.i.push_desc_queue.exit_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %push_desc_queue.exit

do.end17.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 467, i32 noundef 9, ptr noundef null) #8
  br label %push_desc_queue.exit

push_desc_queue.exit:                             ; preds = %do.end17.i, %if.end.i.push_desc_queue.exit_crit_edge
  %20 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %c.0, ptr %arrayidx.i, align 4
  %or32.i = or i32 %15, 2
  %qmgr_mem.i = getelementptr inbounds %struct.cppi41_dd, ptr %4, i32 0, i32 9
  %21 = ptrtoint ptr %qmgr_mem.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %qmgr_mem.i, align 4
  %q_num.i = getelementptr i8, ptr %.pn.in21, i32 -20
  %23 = ptrtoint ptr %q_num.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %q_num.i, align 4
  %mul.i = shl i32 %24, 4
  %add.i = add i32 %mul.i, 8204
  %add.ptr.i = getelementptr i8, ptr %22, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %or32.i) #8, !srcloc !73
  %call.i.i19 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in21) #8
  br i1 %call.i.i19, label %if.end.i.i, label %push_desc_queue.exit.list_del.exit_crit_edge

push_desc_queue.exit.list_del.exit_crit_edge:     ; preds = %push_desc_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %push_desc_queue.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i, align 4
  %27 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn.in21, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %push_desc_queue.exit.list_del.exit_crit_edge
  %31 = ptrtoint ptr %.pn.in21 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in21, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in21, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %cmp.not = icmp eq ptr %.pn, %pending
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @cpp41_dma_filter_fn(ptr nocapture noundef %chan, ptr nocapture noundef readonly %param) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
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
  %cmp.not = icmp eq ptr %5, getelementptr inbounds (%struct.platform_driver, ptr @cpp41_dma_driver, i32 0, i32 5)
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %port_num = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 10
  %6 = ptrtoint ptr %port_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %port_num, align 4
  %8 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %param, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp1.not = icmp eq i32 %7, %9
  br i1 %cmp1.not, label %if.end3, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %is_tx = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 6
  %10 = ptrtoint ptr %is_tx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %is_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool.not = icmp eq i32 %11, 0
  br i1 %tobool.not, label %if.end3.if.end7_crit_edge, label %land.lhs.true

if.end3.if.end7_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true:                                    ; preds = %if.end3
  %arrayidx4 = getelementptr i32, ptr %param, i32 1
  %12 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %arrayidx4, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool5.not = icmp eq i32 %13, 0
  br i1 %tobool5.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end7_crit_edge

land.lhs.true.if.end7_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end7

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end7:                                          ; preds = %land.lhs.true.if.end7_crit_edge, %if.end3.if.end7_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 29, i32 %7)
  %cmp14 = icmp ugt i32 %7, 29
  br i1 %cmp14, label %do.end26, label %if.end41, !prof !84

do.end26:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 971, i32 noundef 9, ptr noundef null) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #10
  %cdd8 = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 2
  %14 = ptrtoint ptr %cdd8 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %cdd8, align 4
  %queues_rx = getelementptr inbounds %struct.cppi41_dd, ptr %15, i32 0, i32 11
  %queues_tx = getelementptr inbounds %struct.cppi41_dd, ptr %15, i32 0, i32 12
  %queues.0.in = select i1 %tobool.not, ptr %queues_rx, ptr %queues_tx
  %16 = ptrtoint ptr %queues.0.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %queues.0 = load ptr, ptr %queues.0.in, align 4
  %arrayidx43 = getelementptr %struct.chan_queues, ptr %queues.0, i32 %7
  %17 = ptrtoint ptr %arrayidx43 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %arrayidx43, align 2
  %conv = zext i16 %18 to i32
  %q_num = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 8
  %19 = ptrtoint ptr %q_num to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %conv, ptr %q_num, align 4
  %complete = getelementptr %struct.chan_queues, ptr %queues.0, i32 %7, i32 1
  %20 = ptrtoint ptr %complete to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %complete, align 2
  %conv46 = zext i16 %21 to i32
  %q_comp_num = getelementptr inbounds %struct.cppi41_channel, ptr %chan, i32 0, i32 9
  %22 = ptrtoint ptr %q_comp_num to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %conv46, ptr %q_comp_num, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end41, %do.end26, %land.lhs.true.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ false, %do.end26 ], [ true, %if.end41 ], [ false, %entry.cleanup_crit_edge ], [ false, %if.end.cleanup_crit_edge ], [ false, %land.lhs.true.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_use_autosuspend(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get_mono_fast_ns() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_suspend(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cppi41_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ctrl_mem = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %ctrl_mem to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_mem, align 4
  %add.ptr = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !82
  %dma_tdfdq = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 20
  %5 = ptrtoint ptr %dma_tdfdq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dma_tdfdq, align 4
  %sched_mem.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %sched_mem.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sched_mem.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 0) #8, !srcloc !73
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cppi41_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %descs_phys = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %descs_phys to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %descs_phys, align 4
  %qmgr_mem = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %qmgr_mem, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 4096
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %3) #8, !srcloc !73
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %.pn39 = load ptr, ptr %channels, align 4
  %cmp5.not40 = icmp eq ptr %.pn39, %channels
  br i1 %cmp5.not40, label %entry.for.end15_crit_edge, label %entry.for.body6_crit_edge

entry.for.body6_crit_edge:                        ; preds = %entry
  br label %for.body6

entry.for.end15_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.body6:                                        ; preds = %for.inc8.for.body6_crit_edge, %entry.for.body6_crit_edge
  %.pn41 = phi ptr [ %.pn, %for.inc8.for.body6_crit_edge ], [ %.pn39, %entry.for.body6_crit_edge ]
  %is_tx = getelementptr i8, ptr %.pn41, i32 148
  %7 = ptrtoint ptr %is_tx to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %is_tx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %if.then, label %for.body6.for.inc8_crit_edge

for.body6.for.inc8_crit_edge:                     ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc8

if.then:                                          ; preds = %for.body6
  call void @__sanitizer_cov_trace_pc() #10
  %q_num = getelementptr i8, ptr %.pn41, i32 156
  %9 = ptrtoint ptr %q_num to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %q_num, align 4
  %gcr_reg = getelementptr i8, ptr %.pn41, i32 144
  %11 = ptrtoint ptr %gcr_reg to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %gcr_reg, align 4
  %add.ptr7 = getelementptr i8, ptr %12, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7, i32 %10) #8, !srcloc !73
  br label %for.inc8

for.inc8:                                         ; preds = %if.then, %for.body6.for.inc8_crit_edge
  %13 = ptrtoint ptr %.pn41 to i32
  call void @__asan_load4_noabort(i32 %13)
  %.pn = load ptr, ptr %.pn41, align 4
  %cmp5.not = icmp eq ptr %.pn, %channels
  br i1 %cmp5.not, label %for.inc8.for.end15_crit_edge, label %for.inc8.for.body6_crit_edge

for.inc8.for.body6_crit_edge:                     ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body6

for.inc8.for.end15_crit_edge:                     ; preds = %for.inc8
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end15

for.end15:                                        ; preds = %for.inc8.for.end15_crit_edge, %entry.for.end15_crit_edge
  %sched_mem.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 8
  %14 = ptrtoint ptr %sched_mem.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %sched_mem.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #8, !srcloc !73
  %n_chans.i = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 16
  %16 = ptrtoint ptr %n_chans.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %n_chans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp33.not.i = icmp eq i32 %17, 0
  br i1 %cmp33.not.i, label %for.end15.init_sched.exit_crit_edge, label %for.end15.for.body.i_crit_edge

for.end15.for.body.i_crit_edge:                   ; preds = %for.end15
  br label %for.body.i

for.end15.init_sched.exit_crit_edge:              ; preds = %for.end15
  call void @__sanitizer_cov_trace_pc() #10
  br label %init_sched.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.end15.for.body.i_crit_edge
  %word.035.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end15.for.body.i_crit_edge ]
  %ch.034.i = phi i32 [ %add12.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.end15.for.body.i_crit_edge ]
  %shl1.i = shl i32 %ch.034.i, 8
  %add.i = or i32 %ch.034.i, 1
  %shl3.i = shl i32 %add.i, 16
  %shl6.i = shl i32 %add.i, 24
  %or2.i = or i32 %ch.034.i, %shl1.i
  %or4.i = or i32 %or2.i, %shl6.i
  %or7.i = or i32 %or4.i, %shl3.i
  %or8.i = or i32 %or7.i, -2147450880
  %18 = ptrtoint ptr %sched_mem.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %sched_mem.i, align 4
  %mul.i = shl i32 %word.035.i, 2
  %add10.i = add i32 %mul.i, 2048
  %add.ptr11.i = getelementptr i8, ptr %19, i32 %add10.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 %or8.i) #8, !srcloc !73
  %inc.i = add i32 %word.035.i, 1
  %add12.i = add i32 %ch.034.i, 2
  %20 = ptrtoint ptr %n_chans.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %n_chans.i, align 4
  %cmp.i = icmp ult i32 %add12.i, %21
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.end.loopexit.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

for.end.loopexit.i:                               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %phi.bo.i = shl i32 %21, 1
  %phi.bo37.i = add i32 %phi.bo.i, 2147483647
  %phi.bo38.i = or i32 %phi.bo37.i, -2147483648
  br label %init_sched.exit

init_sched.exit:                                  ; preds = %for.end.loopexit.i, %for.end15.init_sched.exit_crit_edge
  %.lcssa.i = phi i32 [ -1, %for.end15.init_sched.exit_crit_edge ], [ %phi.bo38.i, %for.end.loopexit.i ]
  %22 = ptrtoint ptr %sched_mem.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %sched_mem.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %.lcssa.i) #8, !srcloc !73
  %dma_tdfdq = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 20
  %24 = ptrtoint ptr %dma_tdfdq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_tdfdq, align 4
  %ctrl_mem = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 7
  %26 = ptrtoint ptr %ctrl_mem to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ctrl_mem, align 4
  %add.ptr16 = getelementptr i8, ptr %27, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 %25) #8, !srcloc !73
  %scratch_phys = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 2
  %28 = ptrtoint ptr %scratch_phys to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %scratch_phys, align 4
  %30 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %qmgr_mem, align 4
  %add.ptr18 = getelementptr i8, ptr %31, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %29) #8, !srcloc !73
  %32 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %qmgr_mem, align 4
  %add.ptr20 = getelementptr i8, ptr %33, i32 132
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr20, i32 512) #8, !srcloc !73
  %34 = ptrtoint ptr %qmgr_mem to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %qmgr_mem, align 4
  %add.ptr22 = getelementptr i8, ptr %35, i32 136
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 0) #8, !srcloc !73
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cppi41_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 19
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %is_suspended = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %is_suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 1, ptr %is_suspended, align 4
  %pending = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 18
  %3 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not = icmp eq ptr %4, %pending
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %do.end18, !prof !77

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end18:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.7, i32 noundef 1219, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end18, %entry.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @cppi41_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %lock = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 19
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %is_suspended = getelementptr inbounds %struct.cppi41_dd, ptr %1, i32 0, i32 21
  %2 = ptrtoint ptr %is_suspended to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %is_suspended, align 4
  tail call fastcc void @cppi41_run_queue(ptr noundef %1)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #8
  ret i32 0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 31)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !34, !36, !38, !40, !41, !42, !43, !45, !46, !47, !48, !50, !52, !54, !56, !58, !60, !62}
!llvm.module.flags = !{!64, !65, !66, !67, !68, !69, !70, !71}
!llvm.ident = !{!72}

!0 = !{ptr @__initcall__kmod_cppi41__243_1255_cpp41_dma_driver_init6, !1, !"__initcall__kmod_cppi41__243_1255_cpp41_dma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/ti/cppi41.c", i32 1255, i32 1}
!2 = !{ptr @__exitcall_cpp41_dma_driver_exit, !1, !"__exitcall_cpp41_dma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file244, !4, !"__UNIQUE_ID_file244", i1 false, i1 false}
!4 = !{!"../drivers/dma/ti/cppi41.c", i32 1256, i32 1}
!5 = !{ptr @__UNIQUE_ID_license245, !4, !"__UNIQUE_ID_license245", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_author246, !7, !"__UNIQUE_ID_author246", i1 false, i1 false}
!7 = !{!"../drivers/dma/ti/cppi41.c", i32 1257, i32 1}
!8 = !{ptr @.str, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/dma/ti/cppi41.c", i32 1249, i32 11}
!10 = !{ptr @cpp41_dma_driver, !11, !"cpp41_dma_driver", i1 false, i1 false}
!11 = !{!"../drivers/dma/ti/cppi41.c", i32 1245, i32 31}
!12 = !{ptr @.str.1, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/ti/cppi41.c", i32 1071, i32 7}
!14 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/ti/cppi41.c", i32 1071, i32 20}
!16 = !{ptr @cppi41_dma_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/dma/ti/cppi41.c", i32 1090, i32 2}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/dma/ti/cppi41.c", i32 1109, i32 8}
!21 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/dma/ti/cppi41.c", i32 379, i32 3}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.9, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @cppi41_dma_alloc_chan_resources._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @cppi41_dma_alloc_chan_resources._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/dma/ti/cppi41.c", i32 500, i32 3}
!31 = !{ptr @.str.11, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @cppi41_dma_issue_pending._entry, !30, !"_entry", i1 false, i1 false}
!33 = !{ptr @cppi41_dma_issue_pending._entry_ptr, !30, !"_entry_ptr", i1 false, i1 false}
!34 = distinct !{null, !35, !"__already_done", i1 false, i1 false}
!35 = !{!"../drivers/dma/ti/cppi41.c", i32 696, i32 4}
!36 = !{ptr @cpp41_dma_info, !37, !"cpp41_dma_info", i1 false, i1 false}
!37 = !{!"../drivers/dma/ti/cppi41.c", i32 979, i32 34}
!38 = !{ptr @.str.12, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/ti/cppi41.c", i32 344, i32 5}
!40 = !{ptr @.str.13, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @cppi41_irq._entry, !39, !"_entry", i1 false, i1 false}
!42 = !{ptr @cppi41_irq._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.14, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/ti/cppi41.c", i32 1166, i32 3}
!45 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @cppi41_dma_remove._entry, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @cppi41_dma_remove._entry_ptr, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @cppi41_dma_ids, !49, !"cppi41_dma_ids", i1 false, i1 false}
!49 = !{!"../drivers/dma/ti/cppi41.c", i32 1015, i32 34}
!50 = !{ptr @am335x_usb_infos, !51, !"am335x_usb_infos", i1 false, i1 false}
!51 = !{!"../drivers/dma/ti/cppi41.c", i32 999, i32 37}
!52 = !{ptr @am335x_usb_queues_rx, !53, !"am335x_usb_queues_rx", i1 false, i1 false}
!53 = !{!"../drivers/dma/ti/cppi41.c", i32 191, i32 33}
!54 = !{ptr @am335x_usb_queues_tx, !55, !"am335x_usb_queues_tx", i1 false, i1 false}
!55 = !{!"../drivers/dma/ti/cppi41.c", i32 155, i32 27}
!56 = !{ptr @da8xx_usb_infos, !57, !"da8xx_usb_infos", i1 false, i1 false}
!57 = !{!"../drivers/dma/ti/cppi41.c", i32 1007, i32 37}
!58 = !{ptr @da8xx_usb_queues_rx, !59, !"da8xx_usb_queues_rx", i1 false, i1 false}
!59 = !{!"../drivers/dma/ti/cppi41.c", i32 234, i32 33}
!60 = !{ptr @da8xx_usb_queues_tx, !61, !"da8xx_usb_queues_tx", i1 false, i1 false}
!61 = !{!"../drivers/dma/ti/cppi41.c", i32 227, i32 33}
!62 = !{ptr @cppi41_pm_ops, !63, !"cppi41_pm_ops", i1 false, i1 false}
!63 = !{!"../drivers/dma/ti/cppi41.c", i32 1238, i32 32}
!64 = !{i32 1, !"wchar_size", i32 2}
!65 = !{i32 1, !"min_enum_size", i32 4}
!66 = !{i32 8, !"branch-target-enforcement", i32 0}
!67 = !{i32 8, !"sign-return-address", i32 0}
!68 = !{i32 8, !"sign-return-address-all", i32 0}
!69 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!70 = !{i32 7, !"uwtable", i32 1}
!71 = !{i32 7, !"frame-pointer", i32 2}
!72 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!73 = !{i64 6303522}
!74 = !{i64 2148217038}
!75 = !{i64 701861, i64 701886, i64 701908, i64 701924, i64 701936, i64 701956, i64 701980, i64 701996, i64 702008}
!76 = !{i64 2148217226}
!77 = !{!"branch_weights", i32 2000, i32 1}
!78 = !{i64 2154391179}
!79 = !{i8 0, i8 2}
!80 = !{!"auto-init"}
!81 = !{i64 2154442369}
!82 = !{i64 6303940}
!83 = !{i64 2154442549}
!84 = !{!"branch_weights", i32 1, i32 2000}
!85 = !{i64 2154389673, i64 2154390166, i64 2154389710, i64 2154389766, i64 2154389800, i64 2154389824, i64 2154389865, i64 2154389886, i64 2154389914, i64 2154389948}
!86 = !{i64 2154429842}
!87 = !{i32 0, i32 33}
!88 = !{i64 2154428310, i64 2154428798, i64 2154428347, i64 2154428403, i64 2154428437, i64 2154428461, i64 2154428502, i64 2154428523, i64 2154428551, i64 2154428585}
!89 = !{i64 2154434746}
