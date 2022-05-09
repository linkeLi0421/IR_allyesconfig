; ModuleID = '/llk/IR_all_yes/drivers/dma/fsl-qdma.c_pt.bc'
source_filename = "../drivers/dma/fsl-qdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_pre_status = type { i64, i8 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.fsl_qdma_engine = type { %struct.dma_device, ptr, ptr, ptr, i32, i32, %struct.mutex, i32, ptr, i32, ptr, ptr, ptr, i32, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.fsl_qdma_queue = type { ptr, ptr, %struct.list_head, %struct.list_head, ptr, ptr, %struct.spinlock, i32, i32, i32, ptr, ptr }
%struct.fsl_qdma_chan = type { %struct.virt_dma_chan, %struct.virt_dma_desc, i32, ptr, ptr }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.fsl_qdma_comp = type { i32, i32, ptr, ptr, ptr, %struct.virt_dma_desc, %struct.list_head }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.fsl_qdma_format = type { i32, i32, %union.anon.75 }
%union.anon.75 = type { i64 }
%struct.anon.76 = type { i32, i8, [2 x i8], i8 }
%struct.thread_info = type { i32, i32, ptr, i32, i32, %struct.cpu_context_save, i32, [16 x i8], [2 x i32], %union.fp_state, %union.vfp_state, i32 }
%struct.cpu_context_save = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, [2 x i32] }
%union.fp_state = type { %struct.iwmmxt_struct }
%struct.iwmmxt_struct = type { [38 x i32] }
%union.vfp_state = type { %struct.vfp_hard_struct }
%struct.vfp_hard_struct = type { [32 x i64], i32, i32, i32, i32, i32 }

@__initcall__kmod_fsl_qdma__240_1308_fsl_qdma_driver_init6 = internal global ptr @fsl_qdma_driver_init, section ".initcall6.init", align 4
@fsl_qdma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_qdma_probe, ptr @fsl_qdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_qdma_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_qdma_driver_exit = internal global ptr @fsl_qdma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias241 = internal constant [33 x i8] c"fsl_qdma.alias=platform:fsl-qdma\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [35 x i8] c"fsl_qdma.file=drivers/dma/fsl-qdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [24 x i8] c"fsl_qdma.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description244 = internal constant [55 x i8] c"fsl_qdma.description=NXP Layerscape qDMA engine driver\00", section ".modinfo", align 1
@__pcpu_unique_pre = dso_local local_unnamed_addr global i8 0, section ".discard", align 1
@pre = weak dso_local global %struct.fsl_pre_status zeroinitializer, section ".data..percpu", align 8
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsl-qdma\00", [23 x i8] zeroinitializer }, align 32
@fsl_qdma_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1021a-qdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@fsl_qdma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 1129, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't get dma-channels.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl_qdma_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/fsl-qdma.c\00", [41 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_qdma_probe._entry_ptr = internal global ptr @fsl_qdma_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"block-offset\00", [19 x i8] zeroinitializer }, align 32
@fsl_qdma_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 1135, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't get block-offset.\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_qdma_probe._entry_ptr.10 = internal global ptr @fsl_qdma_probe._entry.8, section ".printk_index", align 4
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"block-number\00", [19 x i8] zeroinitializer }, align 32
@fsl_qdma_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.3, ptr @.str.4, i32 1141, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't get block-number.\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_qdma_probe._entry_ptr.14 = internal global ptr @fsl_qdma_probe._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl,dma-queues\00", [17 x i8] zeroinitializer }, align 32
@fsl_qdma_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.3, ptr @.str.4, i32 1169, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"Can't get queues.\0A\00", [45 x i8] zeroinitializer }, align 32
@fsl_qdma_probe._entry_ptr.18 = internal global ptr @fsl_qdma_probe._entry.16, section ".printk_index", align 4
@fsl_qdma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.19 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&fsl_qdma->fsl_qdma_mutex\00", [38 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"qdma-queue0\00", [20 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"big-endian\00", [21 x i8] zeroinitializer }, align 32
@fsl_qdma_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 1240, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dma_set_mask failure.\0A\00", [41 x i8] zeroinitializer }, align 32
@fsl_qdma_probe._entry_ptr.24 = internal global ptr @fsl_qdma_probe._entry.22, section ".printk_index", align 4
@fsl_qdma_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.3, ptr @.str.4, i32 1249, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Can't register NXP Layerscape qDMA engine.\0A\00", [52 x i8] zeroinitializer }, align 32
@fsl_qdma_probe._entry_ptr.27 = internal global ptr @fsl_qdma_probe._entry.25, section ".printk_index", align 4
@fsl_qdma_probe._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.3, ptr @.str.4, i32 1255, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Can't Initialize the qDMA engine.\0A\00", [61 x i8] zeroinitializer }, align 32
@fsl_qdma_probe._entry_ptr.30 = internal global ptr @fsl_qdma_probe._entry.28, section ".printk_index", align 4
@__num_online_cpus = external dso_local global %struct.atomic_t, align 4
@.str.31 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"status-sizes\00", [19 x i8] zeroinitializer }, align 32
@fsl_qdma_prep_status_queue._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 550, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't get status-sizes.\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"fsl_qdma_prep_status_queue\00", [37 x i8] zeroinitializer }, align 32
@fsl_qdma_prep_status_queue._entry_ptr = internal global ptr @fsl_qdma_prep_status_queue._entry, section ".printk_index", align 4
@fsl_qdma_prep_status_queue._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.33, ptr @.str.4, i32 555, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Get wrong status_size.\0A\00", [40 x i8] zeroinitializer }, align 32
@fsl_qdma_prep_status_queue._entry_ptr.36 = internal global ptr @fsl_qdma_prep_status_queue._entry.34, section ".printk_index", align 4
@.str.37 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"queue-sizes\00", [20 x i8] zeroinitializer }, align 32
@fsl_qdma_alloc_queue_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.39, ptr @.str.4, i32 503, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Can't get queue-sizes.\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"fsl_qdma_alloc_queue_resources\00", [33 x i8] zeroinitializer }, align 32
@fsl_qdma_alloc_queue_resources._entry_ptr = internal global ptr @fsl_qdma_alloc_queue_resources._entry, section ".printk_index", align 4
@fsl_qdma_alloc_queue_resources._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.39, ptr @.str.4, i32 511, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"Get wrong queue-sizes.\0A\00", [40 x i8] zeroinitializer }, align 32
@fsl_qdma_alloc_queue_resources._entry_ptr.42 = internal global ptr @fsl_qdma_alloc_queue_resources._entry.40, section ".printk_index", align 4
@fsl_qdma_alloc_queue_resources.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&queue_temp->queue_lock\00", [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qdma-error\00", [21 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qDMA error\00", [21 x i8] zeroinitializer }, align 32
@fsl_qdma_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.4, i32 819, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Can't register qDMA controller IRQ.\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_qdma_irq_init\00", [46 x i8] zeroinitializer }, align 32
@fsl_qdma_irq_init._entry_ptr = internal global ptr @fsl_qdma_irq_init._entry, section ".printk_index", align 4
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"qdma-queue%d\00", [19 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"qDMA queue\00", [21 x i8] zeroinitializer }, align 32
@fsl_qdma_irq_init._entry.50 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.47, ptr @.str.4, i32 839, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Can't register qDMA queue IRQ.\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_qdma_irq_init._entry_ptr.52 = internal global ptr @fsl_qdma_irq_init._entry.50, section ".printk_index", align 4
@fsl_qdma_irq_init._entry.53 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.54, ptr @.str.47, ptr @.str.4, i32 850, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Can't set cpu %d affinity to IRQ %d.\0A\00", [58 x i8] zeroinitializer }, align 32
@fsl_qdma_irq_init._entry_ptr.55 = internal global ptr @fsl_qdma_irq_init._entry.53, section ".printk_index", align 4
@fsl_qdma_error_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.57, ptr @.str.4, i32 757, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"DMA transaction error! (%x: %x-%x-%x-%x)\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl_qdma_error_handler\00", [41 x i8] zeroinitializer }, align 32
@fsl_qdma_error_handler._entry_ptr = internal global ptr @fsl_qdma_error_handler._entry, section ".printk_index", align 4
@fsl_qdma_queue_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.4, i32 775, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"irq %d is wrong irq_base is %d\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"fsl_qdma_queue_handler\00", [41 x i8] zeroinitializer }, align 32
@fsl_qdma_queue_handler._entry_ptr = internal global ptr @fsl_qdma_queue_handler._entry, section ".printk_index", align 4
@fsl_qdma_queue_handler._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.59, ptr @.str.4, i32 791, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"QDMA: status err!\0A\00", [45 x i8] zeroinitializer }, align 32
@fsl_qdma_queue_handler._entry_ptr.62 = internal global ptr @fsl_qdma_queue_handler._entry.60, section ".printk_index", align 4
@__per_cpu_offset = external dso_local local_unnamed_addr global [4 x i32], align 4
@fsl_qdma_queue_transfer_complete._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.66, ptr @.str.4, i32 725, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMA status descriptor error %x\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"fsl_qdma_queue_transfer_complete\00", [63 x i8] zeroinitializer }, align 32
@fsl_qdma_queue_transfer_complete._entry_ptr = internal global ptr @fsl_qdma_queue_transfer_complete._entry, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsl_qdma\00", [23 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@cpu_bit_bitmap = external dso_local constant [33 x [1 x i32]], align 4
@.str.71 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"comp_pool\00", [22 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"desc_pool\00", [22 x i8] zeroinitializer }, align 32
@fsl_qdma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.4, i32 1103, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"failed to alloc dma buffer for S/G descriptor\0A\00", [49 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"fsl_qdma_alloc_chan_resources\00", [34 x i8] zeroinitializer }, align 32
@fsl_qdma_alloc_chan_resources._entry_ptr = internal global ptr @fsl_qdma_alloc_chan_resources._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@fsl_qdma_reg_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.4, i32 880, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"DMA halt failed!\00", [47 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_qdma_reg_init\00", [46 x i8] zeroinitializer }, align 32
@fsl_qdma_reg_init._entry_ptr = internal global ptr @fsl_qdma_reg_init._entry, section ".printk_index", align 4
@___asan_gen_.77 = private unnamed_addr constant [16 x i8] c"fsl_qdma_driver\00", align 1
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1299, i32 31 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1301, i32 11 }
@___asan_gen_.83 = private unnamed_addr constant [16 x i8] c"fsl_qdma_dt_ids\00", align 1
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1293, i32 34 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1127, i32 33 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1129, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1133, i32 33 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1135, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1139, i32 33 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1141, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1167, i32 33 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1169, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1179, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1208, i32 53 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1212, i32 48 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1240, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1248, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1255, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 548, i32 33 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 550, i32 3 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 555, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 500, i32 51 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 503, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 510, i32 5 }
@___asan_gen_.200 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 534, i32 4 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 811, i32 33 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 817, i32 11 }
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 819, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 824, i32 21 }
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 835, i32 12 }
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 838, i32 4 }
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 847, i32 4 }
@___asan_gen_.247 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 755, i32 3 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 773, i32 3 }
@___asan_gen_.262 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 791, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 723, i32 5 }
@___asan_gen_.282 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.282, i32 101, i32 2 }
@___asan_gen_.286 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1082, i32 18 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1093, i32 18 }
@___asan_gen_.298 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 1102, i32 3 }
@___asan_gen_.299 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.305 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.306 = private constant [26 x i8] c"../drivers/dma/fsl-qdma.c\00", align 1
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.306, i32 880, i32 3 }
@llvm.compiler.used = appending global [104 x ptr] [ptr @__UNIQUE_ID_alias241, ptr @__UNIQUE_ID_description244, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_fsl_qdma_driver_exit, ptr @__initcall__kmod_fsl_qdma__240_1308_fsl_qdma_driver_init6, ptr @fsl_qdma_alloc_chan_resources._entry, ptr @fsl_qdma_alloc_chan_resources._entry_ptr, ptr @fsl_qdma_alloc_queue_resources._entry, ptr @fsl_qdma_alloc_queue_resources._entry.40, ptr @fsl_qdma_alloc_queue_resources._entry_ptr, ptr @fsl_qdma_alloc_queue_resources._entry_ptr.42, ptr @fsl_qdma_driver_exit, ptr @fsl_qdma_error_handler._entry, ptr @fsl_qdma_error_handler._entry_ptr, ptr @fsl_qdma_irq_init._entry, ptr @fsl_qdma_irq_init._entry.50, ptr @fsl_qdma_irq_init._entry.53, ptr @fsl_qdma_irq_init._entry_ptr, ptr @fsl_qdma_irq_init._entry_ptr.52, ptr @fsl_qdma_irq_init._entry_ptr.55, ptr @fsl_qdma_prep_status_queue._entry, ptr @fsl_qdma_prep_status_queue._entry.34, ptr @fsl_qdma_prep_status_queue._entry_ptr, ptr @fsl_qdma_prep_status_queue._entry_ptr.36, ptr @fsl_qdma_probe._entry, ptr @fsl_qdma_probe._entry.12, ptr @fsl_qdma_probe._entry.16, ptr @fsl_qdma_probe._entry.22, ptr @fsl_qdma_probe._entry.25, ptr @fsl_qdma_probe._entry.28, ptr @fsl_qdma_probe._entry.8, ptr @fsl_qdma_probe._entry_ptr, ptr @fsl_qdma_probe._entry_ptr.10, ptr @fsl_qdma_probe._entry_ptr.14, ptr @fsl_qdma_probe._entry_ptr.18, ptr @fsl_qdma_probe._entry_ptr.24, ptr @fsl_qdma_probe._entry_ptr.27, ptr @fsl_qdma_probe._entry_ptr.30, ptr @fsl_qdma_queue_handler._entry, ptr @fsl_qdma_queue_handler._entry.60, ptr @fsl_qdma_queue_handler._entry_ptr, ptr @fsl_qdma_queue_handler._entry_ptr.62, ptr @fsl_qdma_queue_transfer_complete._entry, ptr @fsl_qdma_queue_transfer_complete._entry_ptr, ptr @fsl_qdma_reg_init._entry, ptr @fsl_qdma_reg_init._entry_ptr, ptr @fsl_qdma_driver, ptr @.str, ptr @fsl_qdma_dt_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @fsl_qdma_probe.__key, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.23, ptr @.str.26, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.41, ptr @fsl_qdma_alloc_queue_resources.__key, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.51, ptr @.str.54, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.61, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76], section "llvm.metadata"
@0 = internal global [77 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_probe._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_prep_status_queue._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_prep_status_queue._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_alloc_queue_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_alloc_queue_resources._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_alloc_queue_resources.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_irq_init._entry.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_irq_init._entry.53 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_error_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_queue_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_queue_handler._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.262 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_queue_transfer_complete._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.286 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.298 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_qdma_reg_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_qdma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_qdma_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_qdma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_qdma_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_qdma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %status_size.i = alloca i32, align 4
  %blk_num = alloca i32, align 4
  %blk_off = alloca i32, align 4
  %chans = alloca i32, align 4
  %queues = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blk_num) #10
  %0 = ptrtoint ptr %blk_num to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %blk_num, align 4, !annotation !165
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %blk_off) #10
  %1 = ptrtoint ptr %blk_off to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -1, ptr %blk_off, align 4, !annotation !165
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chans) #10
  %2 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %chans, align 4, !annotation !165
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %queues) #10
  %3 = ptrtoint ptr %queues to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %queues, align 4, !annotation !165
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %4 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.1, ptr noundef nonnull %chans, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2) #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i285 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.7, ptr noundef nonnull %blk_off, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i285)
  %tobool3.not = icmp sgt i32 %call.i.i285, -1
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #13
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call.i.i286 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.11, ptr noundef nonnull %blk_num, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i286)
  %tobool11.not = icmp sgt i32 %call.i.i286, -1
  br i1 %tobool11.not, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #13
  br label %cleanup

if.end17:                                         ; preds = %if.end9
  %6 = ptrtoint ptr %blk_num to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %blk_num, align 4
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %8 = load volatile i32, ptr @__num_online_cpus, align 4
  %9 = call i32 @llvm.smin.i32(i32 %7, i32 %8)
  %10 = ptrtoint ptr %blk_num to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %blk_num, align 4
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 516, i32 noundef 3520) #10
  %tobool21.not = icmp eq ptr %call.i, null
  br i1 %tobool21.not, label %if.end17.cleanup_crit_edge, label %if.end23

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end23:                                         ; preds = %if.end17
  %11 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %chans, align 4
  %mul = mul i32 %12, 308
  %call.i287 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul, i32 noundef 3520) #10
  %chans26 = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 12
  %13 = ptrtoint ptr %chans26 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i287, ptr %chans26, align 4
  %tobool28.not = icmp eq ptr %call.i287, null
  br i1 %tobool28.not, label %if.end23.cleanup_crit_edge, label %if.end30

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end23
  %14 = ptrtoint ptr %blk_num to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %blk_num, align 4
  %mul31 = shl i32 %15, 2
  %call.i288 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul31, i32 noundef 3520) #10
  %status = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 11
  %16 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call.i288, ptr %status, align 4
  %tobool35.not = icmp eq ptr %call.i288, null
  br i1 %tobool35.not, label %if.end30.cleanup_crit_edge, label %if.end37

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end37:                                         ; preds = %if.end30
  %17 = ptrtoint ptr %blk_num to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %blk_num, align 4
  %mul38 = shl i32 %18, 2
  %call.i289 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul38, i32 noundef 3520) #10
  %queue_irq = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 8
  %19 = ptrtoint ptr %queue_irq to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call.i289, ptr %queue_irq, align 4
  %tobool42.not = icmp eq ptr %call.i289, null
  br i1 %tobool42.not, label %if.end37.cleanup_crit_edge, label %if.end44

if.end37.cleanup_crit_edge:                       ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end44:                                         ; preds = %if.end37
  %call.i.i290 = call i32 @of_property_read_variable_u32_array(ptr noundef %5, ptr noundef nonnull @.str.15, ptr noundef nonnull %queues, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i290)
  %tobool46.not = icmp sgt i32 %call.i.i290, -1
  br i1 %tobool46.not, label %if.end52, label %do.end50

do.end50:                                         ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17) #13
  br label %cleanup

if.end52:                                         ; preds = %if.end44
  %desc_allocated = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 16
  %20 = ptrtoint ptr %desc_allocated to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %desc_allocated, align 4
  %21 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chans, align 4
  %n_chans = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 4
  %23 = ptrtoint ptr %n_chans to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %n_chans, align 4
  %24 = ptrtoint ptr %queues to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %queues, align 4
  %n_queues = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %n_queues to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %n_queues, align 4
  %27 = ptrtoint ptr %blk_num to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %blk_num, align 4
  %block_number = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 13
  %29 = ptrtoint ptr %block_number to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %block_number, align 4
  %30 = ptrtoint ptr %blk_off to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %blk_off, align 4
  %block_offset = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 14
  %32 = ptrtoint ptr %block_offset to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %block_offset, align 4
  %fsl_qdma_mutex = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 6
  call void @__mutex_init(ptr noundef %fsl_qdma_mutex, ptr noundef nonnull @.str.19, ptr noundef nonnull @fsl_qdma_probe.__key) #10
  %33 = ptrtoint ptr %block_number to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %block_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp57296 = icmp sgt i32 %34, 0
  br i1 %cmp57296, label %if.end52.for.body_crit_edge, label %if.end52.for.end_crit_edge

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

if.end52.for.body_crit_edge:                      ; preds = %if.end52
  br label %for.body

for.cond:                                         ; preds = %fsl_qdma_prep_status_queue.exit
  %inc = add nuw nsw i32 %i.0297, 1
  %35 = ptrtoint ptr %block_number to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %block_number, align 4
  %cmp57 = icmp slt i32 %inc, %36
  br i1 %cmp57, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %if.end52.for.body_crit_edge
  %i.0297 = phi i32 [ %inc, %for.cond.for.body_crit_edge ], [ 0, %if.end52.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %status_size.i) #10
  %37 = ptrtoint ptr %status_size.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 -1, ptr %status_size.i, align 4, !annotation !165
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %of_node, align 8
  %call.i.i.i291 = call i32 @of_property_read_variable_u32_array(ptr noundef %39, ptr noundef nonnull @.str.31, ptr noundef nonnull %status_size.i, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i291)
  %tobool.not.i = icmp sgt i32 %call.i.i.i291, -1
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.32) #13
  br label %fsl_qdma_prep_status_queue.exit

if.end.i:                                         ; preds = %for.body
  %40 = ptrtoint ptr %status_size.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %status_size.i, align 4
  %42 = add i32 %41, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16321, i32 %42)
  %43 = icmp ult i32 %42, -16321
  br i1 %43, label %do.end6.i, label %if.end8.i

do.end6.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.35) #13
  br label %fsl_qdma_prep_status_queue.exit

if.end8.i:                                        ; preds = %if.end.i
  %call.i.i292 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 96, i32 noundef 3520) #10
  %tobool11.not.i = icmp eq ptr %call.i.i292, null
  br i1 %tobool11.not.i, label %if.end8.i.fsl_qdma_prep_status_queue.exit_crit_edge, label %if.end13.i

if.end8.i.fsl_qdma_prep_status_queue.exit_crit_edge: ; preds = %if.end8.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_qdma_prep_status_queue.exit

if.end13.i:                                       ; preds = %if.end8.i
  %44 = ptrtoint ptr %status_size.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %status_size.i, align 4
  %mul.i = shl i32 %45, 4
  %bus_addr.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %call.i.i292, i32 0, i32 7
  %call.i42.i = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul.i, ptr noundef %bus_addr.i, i32 noundef 3264, i32 noundef 0) #10
  %cq.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %call.i.i292, i32 0, i32 10
  %46 = ptrtoint ptr %cq.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call.i42.i, ptr %cq.i, align 4
  %tobool17.not.i = icmp eq ptr %call.i42.i, null
  br i1 %tobool17.not.i, label %if.then18.i, label %if.end20.i

if.then18.i:                                      ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @devm_kfree(ptr noundef %dev, ptr noundef nonnull %call.i.i292) #10
  br label %fsl_qdma_prep_status_queue.exit

if.end20.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %status_size.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %status_size.i, align 4
  %n_cq.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %call.i.i292, i32 0, i32 8
  %49 = ptrtoint ptr %n_cq.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %n_cq.i, align 4
  %50 = ptrtoint ptr %call.i.i292 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %call.i42.i, ptr %call.i.i292, align 4
  %virt_tail.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %call.i.i292, i32 0, i32 1
  %51 = ptrtoint ptr %virt_tail.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %call.i42.i, ptr %virt_tail.i, align 4
  %comp_pool.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %call.i.i292, i32 0, i32 4
  %52 = ptrtoint ptr %comp_pool.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %comp_pool.i, align 4
  br label %fsl_qdma_prep_status_queue.exit

fsl_qdma_prep_status_queue.exit:                  ; preds = %if.end20.i, %if.then18.i, %if.end8.i.fsl_qdma_prep_status_queue.exit_crit_edge, %do.end6.i, %do.end.i
  %retval.0.i = phi ptr [ null, %do.end.i ], [ null, %do.end6.i ], [ %call.i.i292, %if.end20.i ], [ null, %if.then18.i ], [ null, %if.end8.i.fsl_qdma_prep_status_queue.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %status_size.i) #10
  %53 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %status, align 4
  %arrayidx = getelementptr ptr, ptr %54, i32 %i.0297
  %55 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %retval.0.i, ptr %arrayidx, align 4
  %56 = load ptr, ptr %status, align 4
  %arrayidx61 = getelementptr ptr, ptr %56, i32 %i.0297
  %57 = ptrtoint ptr %arrayidx61 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx61, align 4
  %tobool62.not = icmp eq ptr %58, null
  br i1 %tobool62.not, label %fsl_qdma_prep_status_queue.exit.cleanup_crit_edge, label %for.cond

fsl_qdma_prep_status_queue.exit.cleanup_crit_edge: ; preds = %fsl_qdma_prep_status_queue.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %if.end52.for.end_crit_edge
  %call65 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call67 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call65) #10
  %ctrl_base = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 1
  %59 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call67, ptr %ctrl_base, align 4
  %cmp.i = icmp ugt ptr %call67, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then70, label %if.end73

if.then70:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %call67 to i32
  br label %cleanup

if.end73:                                         ; preds = %for.end
  %call74 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 1) #10
  %call76 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call74) #10
  %status_base = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 2
  %61 = ptrtoint ptr %status_base to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %call76, ptr %status_base, align 4
  %cmp.i293 = icmp ugt ptr %call76, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i293, label %if.then79, label %if.end82

if.then79:                                        ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %call76 to i32
  br label %cleanup

if.end82:                                         ; preds = %if.end73
  %call83 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 2) #10
  %call85 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call83) #10
  %block_base = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 3
  %63 = ptrtoint ptr %block_base to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %call85, ptr %block_base, align 4
  %cmp.i294 = icmp ugt ptr %call85, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i294, label %if.then88, label %if.end91

if.then88:                                        ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %call85 to i32
  br label %cleanup

if.end91:                                         ; preds = %if.end82
  %call92 = call fastcc ptr @fsl_qdma_alloc_queue_resources(ptr noundef %pdev, ptr noundef nonnull %call.i)
  %queue = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 10
  %65 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %call92, ptr %queue, align 4
  %tobool94.not = icmp eq ptr %call92, null
  br i1 %tobool94.not, label %if.end91.cleanup_crit_edge, label %if.end96

if.end91.cleanup_crit_edge:                       ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end96:                                         ; preds = %if.end91
  %call97 = call fastcc i32 @fsl_qdma_irq_init(ptr noundef %pdev, ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call97)
  %tobool98.not = icmp eq i32 %call97, 0
  br i1 %tobool98.not, label %if.end100, label %if.end96.cleanup_crit_edge

if.end96.cleanup_crit_edge:                       ; preds = %if.end96
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end100:                                        ; preds = %if.end96
  %call101 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.20) #10
  %irq_base = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 15
  %66 = ptrtoint ptr %irq_base to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %call101, ptr %irq_base, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101)
  %cmp103 = icmp slt i32 %call101, 0
  br i1 %cmp103, label %if.end100.cleanup_crit_edge, label %if.end106

if.end100.cleanup_crit_edge:                      ; preds = %if.end100
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end106:                                        ; preds = %if.end100
  %call.i295 = call ptr @of_find_property(ptr noundef %5, ptr noundef nonnull @.str.21, ptr noundef null) #10
  %tobool.i = icmp ne ptr %call.i295, null
  %conv = zext i1 %tobool.i to i32
  %feature = getelementptr inbounds %struct.fsl_qdma_engine, ptr %call.i, i32 0, i32 9
  %67 = ptrtoint ptr %feature to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %conv, ptr %feature, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %68 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %channels, ptr %prev.i, align 4
  %70 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %n_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp110298.not = icmp eq i32 %71, 0
  br i1 %cmp110298.not, label %if.end106.for.end125_crit_edge, label %if.end106.for.body112_crit_edge

if.end106.for.body112_crit_edge:                  ; preds = %if.end106
  br label %for.body112

if.end106.for.end125_crit_edge:                   ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end125

for.body112:                                      ; preds = %for.body112.for.body112_crit_edge, %if.end106.for.body112_crit_edge
  %i.1299 = phi i32 [ %inc124, %for.body112.for.body112_crit_edge ], [ 0, %if.end106.for.body112_crit_edge ]
  %72 = ptrtoint ptr %chans26 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %chans26, align 4
  %arrayidx115 = getelementptr %struct.fsl_qdma_chan, ptr %73, i32 %i.1299
  %qdma = getelementptr %struct.fsl_qdma_chan, ptr %73, i32 %i.1299, i32 3
  %74 = ptrtoint ptr %qdma to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call.i, ptr %qdma, align 4
  %75 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %queue, align 4
  %77 = ptrtoint ptr %n_queues to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %n_queues, align 4
  %79 = ptrtoint ptr %block_number to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %block_number, align 4
  %mul119 = mul i32 %80, %78
  %rem = urem i32 %i.1299, %mul119
  %add.ptr = getelementptr %struct.fsl_qdma_queue, ptr %76, i32 %rem
  %queue120 = getelementptr %struct.fsl_qdma_chan, ptr %73, i32 %i.1299, i32 4
  %81 = ptrtoint ptr %queue120 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %add.ptr, ptr %queue120, align 4
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx115, i32 0, i32 2
  %82 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @fsl_qdma_free_desc, ptr %desc_free, align 4
  call void @vchan_init(ptr noundef %arrayidx115, ptr noundef nonnull %call.i) #10
  %inc124 = add nuw i32 %i.1299, 1
  %83 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %n_chans, align 4
  %cmp110 = icmp ult i32 %inc124, %84
  br i1 %cmp110, label %for.body112.for.body112_crit_edge, label %for.body112.for.end125_crit_edge

for.body112.for.end125_crit_edge:                 ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end125

for.body112.for.body112_crit_edge:                ; preds = %for.body112
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body112

for.end125:                                       ; preds = %for.body112.for.end125_crit_edge, %if.end106.for.end125_crit_edge
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #10
  %dev129 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %85 = ptrtoint ptr %dev129 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %dev, ptr %dev129, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %86 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @fsl_qdma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %87 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @fsl_qdma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %88 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr @dma_cookie_status, ptr %device_tx_status, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %89 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @fsl_qdma_prep_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %90 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr @fsl_qdma_issue_pending, ptr %device_issue_pending, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 48
  %91 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @fsl_qdma_synchronize, ptr %device_synchronize, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %92 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @fsl_qdma_terminate_all, ptr %device_terminate_all, align 4
  %call138 = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 1099511627775) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %if.end145, label %do.end143

do.end143:                                        ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #13
  br label %cleanup

if.end145:                                        ; preds = %for.end125
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %93 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call147 = call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call147)
  %tobool148.not = icmp eq i32 %call147, 0
  br i1 %tobool148.not, label %if.end154, label %do.end152

do.end152:                                        ; preds = %if.end145
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26) #13
  br label %cleanup

if.end154:                                        ; preds = %if.end145
  %call155 = call fastcc i32 @fsl_qdma_reg_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call155)
  %tobool156.not = icmp eq i32 %call155, 0
  br i1 %tobool156.not, label %if.end154.cleanup_crit_edge, label %do.end160

if.end154.cleanup_crit_edge:                      ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end160:                                        ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.29) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end160, %if.end154.cleanup_crit_edge, %do.end152, %do.end143, %if.end100.cleanup_crit_edge, %if.end96.cleanup_crit_edge, %if.end91.cleanup_crit_edge, %if.then88, %if.then79, %if.then70, %fsl_qdma_prep_status_queue.exit.cleanup_crit_edge, %do.end50, %if.end37.cleanup_crit_edge, %if.end30.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %do.end15, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i.i, %do.end ], [ %call.i.i285, %do.end7 ], [ %call.i.i286, %do.end15 ], [ %call.i.i290, %do.end50 ], [ %60, %if.then70 ], [ %62, %if.then79 ], [ %64, %if.then88 ], [ %call138, %do.end143 ], [ %call147, %do.end152 ], [ %call155, %do.end160 ], [ -12, %if.end17.cleanup_crit_edge ], [ -12, %if.end23.cleanup_crit_edge ], [ -12, %if.end30.cleanup_crit_edge ], [ -12, %if.end37.cleanup_crit_edge ], [ -12, %if.end91.cleanup_crit_edge ], [ %call97, %if.end96.cleanup_crit_edge ], [ %call101, %if.end100.cleanup_crit_edge ], [ 0, %if.end154.cleanup_crit_edge ], [ -12, %fsl_qdma_prep_status_queue.exit.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %queues) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chans) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blk_off) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %blk_num) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_qdma_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %error_irq.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %error_irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %error_irq.i, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %5, ptr noundef %3) #10
  %block_number.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %3, i32 0, i32 13
  %6 = ptrtoint ptr %block_number.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %block_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp9.i = icmp sgt i32 %7, 0
  br i1 %cmp9.i, label %for.body.lr.ph.i, label %entry.fsl_qdma_irq_exit.exit_crit_edge

entry.fsl_qdma_irq_exit.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_qdma_irq_exit.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %queue_irq.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %3, i32 0, i32 8
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.010.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.body.i.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %queue_irq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %queue_irq.i, align 4
  %arrayidx.i = getelementptr i32, ptr %9, i32 %i.010.i
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %11, ptr noundef %3) #10
  %inc.i = add nuw nsw i32 %i.010.i, 1
  %12 = ptrtoint ptr %block_number.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %block_number.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %13
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.fsl_qdma_irq_exit.exit_crit_edge

for.body.i.fsl_qdma_irq_exit.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_qdma_irq_exit.exit

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

fsl_qdma_irq_exit.exit:                           ; preds = %for.body.i.fsl_qdma_irq_exit.exit_crit_edge, %entry.fsl_qdma_irq_exit.exit_crit_edge
  %channels.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 3
  %14 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channels.i, align 4
  %cmp.not27.i = icmp eq ptr %15, %channels.i
  br i1 %cmp.not27.i, label %fsl_qdma_irq_exit.exit.fsl_qdma_cleanup_vchan.exit_crit_edge, label %fsl_qdma_irq_exit.exit.for.body.i15_crit_edge

fsl_qdma_irq_exit.exit.for.body.i15_crit_edge:    ; preds = %fsl_qdma_irq_exit.exit
  br label %for.body.i15

fsl_qdma_irq_exit.exit.fsl_qdma_cleanup_vchan.exit_crit_edge: ; preds = %fsl_qdma_irq_exit.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_qdma_cleanup_vchan.exit

for.body.i15:                                     ; preds = %list_del.exit.i.for.body.i15_crit_edge, %fsl_qdma_irq_exit.exit.for.body.i15_crit_edge
  %.pn.in28.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i15_crit_edge ], [ %15, %fsl_qdma_irq_exit.exit.for.body.i15_crit_edge ]
  %16 = ptrtoint ptr %.pn.in28.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn.i = load ptr, ptr %.pn.in28.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in28.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i15.list_del.exit.i_crit_edge

for.body.i15.list_del.exit.i_crit_edge:           ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i15
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28.i, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i, align 4
  %19 = ptrtoint ptr %.pn.in28.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in28.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i15.list_del.exit.i_crit_edge
  %23 = ptrtoint ptr %.pn.in28.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in28.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in28.i, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %task.i = getelementptr i8, ptr %.pn.in28.i, i32 32
  tail call void @tasklet_kill(ptr noundef %task.i) #10
  %cmp.not.i = icmp eq ptr %.pn.i, %channels.i
  br i1 %cmp.not.i, label %list_del.exit.i.fsl_qdma_cleanup_vchan.exit_crit_edge, label %list_del.exit.i.for.body.i15_crit_edge

list_del.exit.i.for.body.i15_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i15

list_del.exit.i.fsl_qdma_cleanup_vchan.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_qdma_cleanup_vchan.exit

fsl_qdma_cleanup_vchan.exit:                      ; preds = %list_del.exit.i.fsl_qdma_cleanup_vchan.exit_crit_edge, %fsl_qdma_irq_exit.exit.fsl_qdma_cleanup_vchan.exit_crit_edge
  tail call void @of_dma_controller_free(ptr noundef %1) #10
  tail call void @dma_async_device_unregister(ptr noundef %3) #10
  %25 = ptrtoint ptr %block_number.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %block_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp16 = icmp sgt i32 %26, 0
  br i1 %cmp16, label %for.body.lr.ph, label %fsl_qdma_cleanup_vchan.exit.for.end_crit_edge

fsl_qdma_cleanup_vchan.exit.for.end_crit_edge:    ; preds = %fsl_qdma_cleanup_vchan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %fsl_qdma_cleanup_vchan.exit
  %status2 = getelementptr inbounds %struct.fsl_qdma_engine, ptr %3, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.017 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %27 = ptrtoint ptr %status2 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %status2, align 4
  %arrayidx = getelementptr ptr, ptr %28, i32 %i.017
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx, align 4
  %n_cq = getelementptr inbounds %struct.fsl_qdma_queue, ptr %30, i32 0, i32 8
  %31 = ptrtoint ptr %n_cq to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_cq, align 4
  %mul = shl i32 %32, 4
  %cq = getelementptr inbounds %struct.fsl_qdma_queue, ptr %30, i32 0, i32 10
  %33 = ptrtoint ptr %cq to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %cq, align 4
  %bus_addr = getelementptr inbounds %struct.fsl_qdma_queue, ptr %30, i32 0, i32 7
  %35 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %bus_addr, align 4
  tail call void @dma_free_attrs(ptr noundef %dev, i32 noundef %mul, ptr noundef %34, i32 noundef %36, i32 noundef 0) #10
  %inc = add nuw nsw i32 %i.017, 1
  %37 = ptrtoint ptr %block_number.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %block_number.i, align 4
  %cmp = icmp slt i32 %inc, %38
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %fsl_qdma_cleanup_vchan.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @fsl_qdma_alloc_queue_resources(ptr noundef %pdev, ptr nocapture noundef readonly %fsl_qdma) unnamed_addr #2 align 64 {
entry:
  %queue_size = alloca [8 x i32], align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %queue_size) #10
  %n_queues = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 5
  %0 = call ptr @memset(ptr %queue_size, i32 255, i32 32)
  %1 = ptrtoint ptr %n_queues to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %n_queues, align 4
  %block_number1 = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 13
  %3 = ptrtoint ptr %block_number1 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %block_number1, align 4
  %5 = tail call i32 @llvm.smin.i32(i32 %2, i32 8)
  %mul = mul i32 %5, 96
  %mul2 = mul i32 %mul, %4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %mul2, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end4

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %entry
  %call6 = call i32 @device_property_read_u32_array(ptr noundef %dev, ptr noundef nonnull @.str.37, ptr noundef nonnull %queue_size, i32 noundef %5) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %tobool7.not = icmp eq i32 %call6, 0
  br i1 %tobool7.not, label %for.cond.preheader, label %if.end4.cleanup.sink.split_crit_edge

if.end4.cleanup.sink.split_crit_edge:             ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

for.cond.preheader:                               ; preds = %if.end4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %cmp1194 = icmp sgt i32 %4, 0
  br i1 %cmp1194, label %for.cond12.preheader.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond12.preheader.lr.ph:                       ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %cmp1392 = icmp sgt i32 %2, 0
  %block_base = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 3
  %block_offset = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 14
  %smax = call i32 @llvm.smax.i32(i32 %5, i32 1)
  br label %for.cond12.preheader

for.cond12.preheader:                             ; preds = %for.inc44.for.cond12.preheader_crit_edge, %for.cond12.preheader.lr.ph
  %j.095 = phi i32 [ 0, %for.cond12.preheader.lr.ph ], [ %inc45, %for.inc44.for.cond12.preheader_crit_edge ]
  br i1 %cmp1392, label %for.body14.lr.ph, label %for.cond12.preheader.for.inc44_crit_edge

for.cond12.preheader.for.inc44_crit_edge:         ; preds = %for.cond12.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc44

for.body14.lr.ph:                                 ; preds = %for.cond12.preheader
  %mul24 = mul i32 %j.095, %5
  %add.ptr = getelementptr %struct.fsl_qdma_queue, ptr %call.i, i32 %mul24
  br label %for.body14

for.body14:                                       ; preds = %if.end33.for.body14_crit_edge, %for.body14.lr.ph
  %i.093 = phi i32 [ 0, %for.body14.lr.ph ], [ %inc, %if.end33.for.body14_crit_edge ]
  %arrayidx = getelementptr [8 x i32], ptr %queue_size, i32 0, i32 %i.093
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %8 = add i32 %7, -16385
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16321, i32 %8)
  %9 = icmp ult i32 %8, -16321
  br i1 %9, label %for.body14.cleanup.sink.split_crit_edge, label %if.end23

for.body14.cleanup.sink.split_crit_edge:          ; preds = %for.body14
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end23:                                         ; preds = %for.body14
  %add.ptr25 = getelementptr %struct.fsl_qdma_queue, ptr %add.ptr, i32 %i.093
  %mul28 = shl nuw nsw i32 %7, 4
  %bus_addr = getelementptr inbounds %struct.fsl_qdma_queue, ptr %add.ptr25, i32 0, i32 7
  %call.i90 = call ptr @dma_alloc_attrs(ptr noundef %dev, i32 noundef %mul28, ptr noundef %bus_addr, i32 noundef 3264, i32 noundef 0) #10
  %cq = getelementptr inbounds %struct.fsl_qdma_queue, ptr %add.ptr25, i32 0, i32 10
  %10 = ptrtoint ptr %cq to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i90, ptr %cq, align 4
  %tobool31.not = icmp eq ptr %call.i90, null
  br i1 %tobool31.not, label %if.end23.cleanup_crit_edge, label %if.end33

if.end23.cleanup_crit_edge:                       ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end33:                                         ; preds = %if.end23
  %11 = ptrtoint ptr %block_base to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %block_base, align 4
  %13 = ptrtoint ptr %block_offset to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %block_offset, align 4
  %mul34 = mul i32 %14, %j.095
  %add.ptr35 = getelementptr i8, ptr %12, i32 %mul34
  %block_base36 = getelementptr inbounds %struct.fsl_qdma_queue, ptr %add.ptr25, i32 0, i32 11
  %15 = ptrtoint ptr %block_base36 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %add.ptr35, ptr %block_base36, align 4
  %16 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx, align 4
  %n_cq = getelementptr inbounds %struct.fsl_qdma_queue, ptr %add.ptr25, i32 0, i32 8
  %18 = ptrtoint ptr %n_cq to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %n_cq, align 4
  %id = getelementptr inbounds %struct.fsl_qdma_queue, ptr %add.ptr25, i32 0, i32 9
  %19 = ptrtoint ptr %id to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %i.093, ptr %id, align 4
  %20 = ptrtoint ptr %add.ptr25 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call.i90, ptr %add.ptr25, align 4
  %virt_tail = getelementptr inbounds %struct.fsl_qdma_queue, ptr %add.ptr25, i32 0, i32 1
  %21 = ptrtoint ptr %virt_tail to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i90, ptr %virt_tail, align 4
  %comp_used = getelementptr inbounds %struct.fsl_qdma_queue, ptr %add.ptr25, i32 0, i32 2
  %22 = ptrtoint ptr %comp_used to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %comp_used, ptr %comp_used, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %comp_used, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %comp_used, ptr %prev.i, align 4
  %queue_lock = getelementptr inbounds %struct.fsl_qdma_queue, ptr %add.ptr25, i32 0, i32 6
  call void @__raw_spin_lock_init(ptr noundef %queue_lock, ptr noundef nonnull @.str.43, ptr noundef nonnull @fsl_qdma_alloc_queue_resources.__key, i16 noundef signext 3) #10
  %inc = add nuw nsw i32 %i.093, 1
  %exitcond.not = icmp eq i32 %inc, %smax
  br i1 %exitcond.not, label %if.end33.for.inc44_crit_edge, label %if.end33.for.body14_crit_edge

if.end33.for.body14_crit_edge:                    ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body14

if.end33.for.inc44_crit_edge:                     ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc44

for.inc44:                                        ; preds = %if.end33.for.inc44_crit_edge, %for.cond12.preheader.for.inc44_crit_edge
  %inc45 = add nuw nsw i32 %j.095, 1
  %exitcond98.not = icmp eq i32 %inc45, %4
  br i1 %exitcond98.not, label %for.inc44.cleanup_crit_edge, label %for.inc44.for.cond12.preheader_crit_edge

for.inc44.for.cond12.preheader_crit_edge:         ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond12.preheader

for.inc44.cleanup_crit_edge:                      ; preds = %for.inc44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

cleanup.sink.split:                               ; preds = %for.body14.cleanup.sink.split_crit_edge, %if.end4.cleanup.sink.split_crit_edge
  %.str.41.sink = phi ptr [ @.str.38, %if.end4.cleanup.sink.split_crit_edge ], [ @.str.41, %for.body14.cleanup.sink.split_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.41.sink) #13
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %for.inc44.cleanup_crit_edge, %if.end23.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %call.i, %for.cond.preheader.cleanup_crit_edge ], [ null, %cleanup.sink.split ], [ null, %if.end23.cleanup_crit_edge ], [ %call.i, %for.inc44.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %queue_size) #10
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_qdma_irq_init(ptr noundef %pdev, ptr noundef %fsl_qdma) unnamed_addr #2 align 64 {
entry:
  %irq_name = alloca [20 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %irq_name) #10
  %0 = call ptr @memset(ptr %irq_name, i32 255, i32 20)
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.44) #10
  %error_irq = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 7
  %1 = ptrtoint ptr %error_irq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call, ptr %error_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call, ptr noundef nonnull @fsl_qdma_error_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.45, ptr noundef %fsl_qdma) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %for.cond.preheader, label %do.end

for.cond.preheader:                               ; preds = %if.end
  %block_number = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 13
  %2 = ptrtoint ptr %block_number to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %block_number, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp885 = icmp sgt i32 %3, 0
  br i1 %cmp885, label %for.body.lr.ph, label %for.cond.preheader.cleanup_crit_edge

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %queue_irq = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 8
  br label %for.body

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.46) #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.086 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call9 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %irq_name, ptr noundef nonnull @.str.48, i32 noundef %i.086)
  %call11 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull %irq_name) #10
  %4 = ptrtoint ptr %queue_irq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue_irq, align 4
  %arrayidx = getelementptr i32, ptr %5, i32 %i.086
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %call11, ptr %arrayidx, align 4
  %7 = load ptr, ptr %queue_irq, align 4
  %arrayidx13 = getelementptr i32, ptr %7, i32 %i.086
  %8 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %arrayidx13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp14 = icmp slt i32 %9, 0
  br i1 %cmp14, label %for.body.cleanup_crit_edge, label %if.end18

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end18:                                         ; preds = %for.body
  %call.i80 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %9, ptr noundef nonnull @fsl_qdma_queue_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.49, ptr noundef %fsl_qdma) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i80)
  %tobool23.not = icmp eq i32 %call.i80, 0
  br i1 %tobool23.not, label %if.end29, label %do.end27

do.end27:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.51) #13
  br label %cleanup

if.end29:                                         ; preds = %if.end18
  %call.i.i.i = call zeroext i1 @__kasan_check_read(ptr noundef nonnull @__num_online_cpus, i32 noundef 4) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__num_online_cpus to i32))
  %10 = load volatile i32, ptr @__num_online_cpus, align 4
  %rem = urem i32 %i.086, %10
  %11 = ptrtoint ptr %queue_irq to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %queue_irq, align 4
  %arrayidx32 = getelementptr i32, ptr %12, i32 %i.086
  %13 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %arrayidx32, align 4
  %rem.i = and i32 %rem, 31
  %add.i = add nuw nsw i32 %rem.i, 1
  %arrayidx.i = getelementptr [33 x [1 x i32]], ptr @cpu_bit_bitmap, i32 0, i32 %add.i
  %div3.i = lshr i32 %rem, 5
  %idx.neg.i = sub nsw i32 0, %div3.i
  %add.ptr.i = getelementptr i32, ptr %arrayidx.i, i32 %idx.neg.i
  %call.i.i = call i32 @__irq_apply_affinity_hint(i32 noundef %14, ptr noundef %add.ptr.i, i1 noundef zeroext true) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool35.not = icmp eq i32 %call.i.i, 0
  br i1 %tobool35.not, label %for.inc, label %do.end39

do.end39:                                         ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %queue_irq to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %queue_irq, align 4
  %arrayidx42 = getelementptr i32, ptr %16, i32 %i.086
  %17 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx42, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %rem, i32 noundef %18) #13
  br label %cleanup

for.inc:                                          ; preds = %if.end29
  %inc = add nuw nsw i32 %i.086, 1
  %19 = ptrtoint ptr %block_number to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %block_number, align 4
  %cmp8 = icmp slt i32 %inc, %20
  br i1 %cmp8, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %do.end39, %do.end27, %for.body.cleanup_crit_edge, %do.end, %for.cond.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i80, %do.end27 ], [ %call.i.i, %do.end39 ], [ %call, %entry.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %9, %for.body.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %irq_name) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_qdma_free_desc(ptr noundef %vdesc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qchan = getelementptr i8, ptr %vdesc, i32 -4
  %0 = ptrtoint ptr %qchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qchan, align 4
  %queue = getelementptr inbounds %struct.fsl_qdma_chan, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %queue_lock = getelementptr inbounds %struct.fsl_qdma_queue, ptr %3, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #10
  %list = getelementptr i8, ptr %vdesc, i32 116
  %comp_free = getelementptr inbounds %struct.fsl_qdma_queue, ptr %3, i32 0, i32 3
  %prev.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %3, i32 0, i32 3, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list, ptr noundef %5, ptr noundef %comp_free) #10
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %6 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %list, ptr %prev.i, align 4
  %7 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %comp_free, ptr %list, align 4
  %prev3.i.i = getelementptr i8, ptr %vdesc, i32 120
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %list, ptr %5, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_qdma_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.fsl_qdma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %qdma = getelementptr inbounds %struct.fsl_qdma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %qdma to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %qdma, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #10
  %4 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %5 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head, ptr %head, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %head, ptr %4, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %7 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %8, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %entry.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

entry.list_splice_tail_init.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %4, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %11 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %8, ptr %10, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %head, ptr %12, align 4
  store ptr %12, ptr %4, align 4
  %16 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %entry.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %17 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %18, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %4, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev3.i.i12.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %18, ptr %20, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %head, ptr %22, align 4
  store ptr %22, ptr %4, align 4
  %26 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %27 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %28, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %4, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i18.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %28, ptr %30, align 4
  %35 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %head, ptr %32, align 4
  store ptr %32, ptr %4, align 4
  %36 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %37 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %38, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %4, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %41 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i24.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %38, ptr %40, align 4
  %45 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %head, ptr %42, align 4
  store ptr %42, ptr %4, align 4
  %46 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %47 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %48, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %4, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %51 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i30.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %48, ptr %50, align 4
  %55 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %head, ptr %52, align 4
  store ptr %52, ptr %4, align 4
  %56 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #10
  %comp_pool = getelementptr inbounds %struct.fsl_qdma_queue, ptr %1, i32 0, i32 4
  %57 = ptrtoint ptr %comp_pool to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %comp_pool, align 4
  %tobool.not = icmp eq ptr %58, null
  br i1 %tobool.not, label %land.lhs.true, label %vchan_get_all_descriptors.exit.if.end_crit_edge

vchan_get_all_descriptors.exit.if.end_crit_edge:  ; preds = %vchan_get_all_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %vchan_get_all_descriptors.exit
  %desc_pool = getelementptr inbounds %struct.fsl_qdma_queue, ptr %1, i32 0, i32 5
  %59 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %desc_pool, align 4
  %tobool10.not = icmp eq ptr %60, null
  br i1 %tobool10.not, label %land.lhs.true.cleanup_crit_edge, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %vchan_get_all_descriptors.exit.if.end_crit_edge
  %comp_used = getelementptr inbounds %struct.fsl_qdma_queue, ptr %1, i32 0, i32 2
  %61 = ptrtoint ptr %comp_used to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %comp_used, align 4
  %cmp19.not115 = icmp eq ptr %62, %comp_used
  br i1 %cmp19.not115, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %desc_pool22 = getelementptr inbounds %struct.fsl_qdma_queue, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in116 = phi ptr [ %62, %for.body.lr.ph ], [ %.pn, %list_del.exit.for.body_crit_edge ]
  %comp_temp.0 = getelementptr i8, ptr %.pn.in116, i32 -136
  %63 = ptrtoint ptr %.pn.in116 to i32
  call void @__asan_load4_noabort(i32 %63)
  %.pn = load ptr, ptr %.pn.in116, align 4
  %64 = ptrtoint ptr %comp_pool to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %comp_pool, align 4
  %virt_addr = getelementptr i8, ptr %.pn.in116, i32 -128
  %66 = ptrtoint ptr %virt_addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %virt_addr, align 4
  %68 = ptrtoint ptr %comp_temp.0 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %comp_temp.0, align 4
  call void @dma_pool_free(ptr noundef %65, ptr noundef %67, i32 noundef %69) #10
  %70 = ptrtoint ptr %desc_pool22 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %desc_pool22, align 4
  %desc_virt_addr = getelementptr i8, ptr %.pn.in116, i32 -124
  %72 = ptrtoint ptr %desc_virt_addr to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %desc_virt_addr, align 4
  %desc_bus_addr = getelementptr i8, ptr %.pn.in116, i32 -132
  %74 = ptrtoint ptr %desc_bus_addr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %desc_bus_addr, align 4
  call void @dma_pool_free(ptr noundef %71, ptr noundef %73, i32 noundef %75) #10
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in116) #10
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i108 = getelementptr inbounds %struct.list_head, ptr %.pn.in116, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i108 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i108, align 4
  %78 = ptrtoint ptr %.pn.in116 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %.pn.in116, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev1.i.i.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %79, ptr %77, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %82 = ptrtoint ptr %.pn.in116 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in116, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in116, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  call void @kfree(ptr noundef %comp_temp.0) #10
  %cmp19.not = icmp eq ptr %.pn, %comp_used
  br i1 %cmp19.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.end.for.end_crit_edge
  %comp_free = getelementptr inbounds %struct.fsl_qdma_queue, ptr %1, i32 0, i32 3
  %84 = ptrtoint ptr %comp_free to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %comp_free, align 4
  %cmp41.not118 = icmp eq ptr %85, %comp_free
  br i1 %cmp41.not118, label %for.end.for.end58_crit_edge, label %for.body44.lr.ph

for.end.for.end58_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end58

for.body44.lr.ph:                                 ; preds = %for.end
  %desc_pool48 = getelementptr inbounds %struct.fsl_qdma_queue, ptr %1, i32 0, i32 5
  br label %for.body44

for.body44:                                       ; preds = %list_del.exit114.for.body44_crit_edge, %for.body44.lr.ph
  %.pn105.in119 = phi ptr [ %85, %for.body44.lr.ph ], [ %.pn105, %list_del.exit114.for.body44_crit_edge ]
  %comp_temp.1 = getelementptr i8, ptr %.pn105.in119, i32 -136
  %86 = ptrtoint ptr %.pn105.in119 to i32
  call void @__asan_load4_noabort(i32 %86)
  %.pn105 = load ptr, ptr %.pn105.in119, align 4
  %87 = ptrtoint ptr %comp_pool to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %comp_pool, align 4
  %virt_addr46 = getelementptr i8, ptr %.pn105.in119, i32 -128
  %89 = ptrtoint ptr %virt_addr46 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %virt_addr46, align 4
  %91 = ptrtoint ptr %comp_temp.1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %comp_temp.1, align 4
  call void @dma_pool_free(ptr noundef %88, ptr noundef %90, i32 noundef %92) #10
  %93 = ptrtoint ptr %desc_pool48 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %desc_pool48, align 4
  %desc_virt_addr49 = getelementptr i8, ptr %.pn105.in119, i32 -124
  %95 = ptrtoint ptr %desc_virt_addr49 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %desc_virt_addr49, align 4
  %desc_bus_addr50 = getelementptr i8, ptr %.pn105.in119, i32 -132
  %97 = ptrtoint ptr %desc_bus_addr50 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %desc_bus_addr50, align 4
  call void @dma_pool_free(ptr noundef %94, ptr noundef %96, i32 noundef %98) #10
  %call.i.i109 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn105.in119) #10
  br i1 %call.i.i109, label %if.end.i.i112, label %for.body44.list_del.exit114_crit_edge

for.body44.list_del.exit114_crit_edge:            ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit114

if.end.i.i112:                                    ; preds = %for.body44
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i110 = getelementptr inbounds %struct.list_head, ptr %.pn105.in119, i32 0, i32 1
  %99 = ptrtoint ptr %prev.i.i110 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %prev.i.i110, align 4
  %101 = ptrtoint ptr %.pn105.in119 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %.pn105.in119, align 4
  %prev1.i.i.i111 = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i.i111 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %100, ptr %prev1.i.i.i111, align 4
  %104 = ptrtoint ptr %100 to i32
  call void @__asan_store4_noabort(i32 %104)
  store volatile ptr %102, ptr %100, align 4
  br label %list_del.exit114

list_del.exit114:                                 ; preds = %if.end.i.i112, %for.body44.list_del.exit114_crit_edge
  %105 = ptrtoint ptr %.pn105.in119 to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn105.in119, align 4
  %prev.i113 = getelementptr inbounds %struct.list_head, ptr %.pn105.in119, i32 0, i32 1
  %106 = ptrtoint ptr %prev.i113 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i113, align 4
  call void @kfree(ptr noundef %comp_temp.1) #10
  %cmp41.not = icmp eq ptr %.pn105, %comp_free
  br i1 %cmp41.not, label %list_del.exit114.for.end58_crit_edge, label %list_del.exit114.for.body44_crit_edge

list_del.exit114.for.body44_crit_edge:            ; preds = %list_del.exit114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body44

list_del.exit114.for.end58_crit_edge:             ; preds = %list_del.exit114
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end58

for.end58:                                        ; preds = %list_del.exit114.for.end58_crit_edge, %for.end.for.end58_crit_edge
  %107 = ptrtoint ptr %comp_pool to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %comp_pool, align 4
  call void @dma_pool_destroy(ptr noundef %108) #10
  %desc_pool60 = getelementptr inbounds %struct.fsl_qdma_queue, ptr %1, i32 0, i32 5
  %109 = ptrtoint ptr %desc_pool60 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %desc_pool60, align 4
  call void @dma_pool_destroy(ptr noundef %110) #10
  %desc_allocated = getelementptr inbounds %struct.fsl_qdma_engine, ptr %3, i32 0, i32 16
  %111 = ptrtoint ptr %desc_allocated to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %desc_allocated, align 4
  %dec = add i32 %112, -1
  store i32 %dec, ptr %desc_allocated, align 4
  %113 = ptrtoint ptr %comp_pool to i32
  call void @__asan_store4_noabort(i32 %113)
  store ptr null, ptr %comp_pool, align 4
  %114 = ptrtoint ptr %desc_pool60 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr null, ptr %desc_pool60, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end58, %land.lhs.true.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_qdma_alloc_chan_resources(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %qdma = getelementptr inbounds %struct.fsl_qdma_chan, ptr %chan, i32 0, i32 3
  %0 = ptrtoint ptr %qdma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %qdma, align 4
  %queue = getelementptr inbounds %struct.fsl_qdma_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %comp_pool = getelementptr inbounds %struct.fsl_qdma_queue, ptr %3, i32 0, i32 4
  %4 = ptrtoint ptr %comp_pool to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %comp_pool, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %desc_pool = getelementptr inbounds %struct.fsl_qdma_queue, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_pool, align 4
  %tobool1.not = icmp eq ptr %7, null
  br i1 %tobool1.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %desc_allocated = getelementptr inbounds %struct.fsl_qdma_engine, ptr %1, i32 0, i32 16
  %8 = ptrtoint ptr %desc_allocated to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc_allocated, align 4
  br label %cleanup

if.end:                                           ; preds = %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %comp_free = getelementptr inbounds %struct.fsl_qdma_queue, ptr %3, i32 0, i32 3
  %10 = ptrtoint ptr %comp_free to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %comp_free, ptr %comp_free, align 4
  %prev.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %3, i32 0, i32 3, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %comp_free, ptr %prev.i, align 4
  %12 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %13, i32 0, i32 15
  %14 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev, align 4
  %call2 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.71, ptr noundef %15, i32 noundef 64, i32 noundef 64, i32 noundef 0) #10
  %16 = ptrtoint ptr %comp_pool to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %call2, ptr %comp_pool, align 4
  %tobool5.not = icmp eq ptr %call2, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %17 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan, align 4
  %dev9 = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %dev9 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev9, align 4
  %call10 = tail call ptr @dma_pool_create(ptr noundef nonnull @.str.72, ptr noundef %20, i32 noundef 32, i32 noundef 32, i32 noundef 0) #10
  %desc_pool11 = getelementptr inbounds %struct.fsl_qdma_queue, ptr %3, i32 0, i32 5
  %21 = ptrtoint ptr %desc_pool11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call10, ptr %desc_pool11, align 4
  %tobool13.not = icmp eq ptr %call10, null
  br i1 %tobool13.not, label %if.end7.err_desc_pool_crit_edge, label %if.end15

if.end7.err_desc_pool_crit_edge:                  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_desc_pool

if.end15:                                         ; preds = %if.end7
  %n_cq.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %3, i32 0, i32 8
  %22 = ptrtoint ptr %n_cq.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_cq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -10, i32 %23)
  %cmp91.not.i = icmp eq i32 %23, -10
  br i1 %cmp91.not.i, label %if.end15.if.end21_crit_edge, label %if.end15.for.body.i_crit_edge

if.end15.for.body.i_crit_edge:                    ; preds = %if.end15
  br label %for.body.i

if.end15.if.end21_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

for.body.i:                                       ; preds = %list_add_tail.exit.i.for.body.i_crit_edge, %if.end15.for.body.i_crit_edge
  %i.092.i = phi i32 [ %inc.i, %list_add_tail.exit.i.for.body.i_crit_edge ], [ 0, %if.end15.for.body.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %24 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %24, i32 noundef 3520, i32 noundef 144) #14
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.i.err_alloc.i_crit_edge, label %if.end.i

for.body.i.err_alloc.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_alloc.i

if.end.i:                                         ; preds = %for.body.i
  %25 = ptrtoint ptr %comp_pool to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %comp_pool, align 4
  %call1.i = tail call ptr @dma_pool_alloc(ptr noundef %26, i32 noundef 3264, ptr noundef nonnull %call7.i.i.i) #10
  %virt_addr.i = getelementptr inbounds %struct.fsl_qdma_comp, ptr %call7.i.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call1.i, ptr %virt_addr.i, align 8
  %tobool3.not.i = icmp eq ptr %call1.i, null
  br i1 %tobool3.not.i, label %if.end.i.err_dma_alloc.i_crit_edge, label %if.end5.i

if.end.i.err_dma_alloc.i_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_dma_alloc.i

if.end5.i:                                        ; preds = %if.end.i
  %28 = ptrtoint ptr %desc_pool11 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %desc_pool11, align 4
  %desc_bus_addr.i = getelementptr inbounds %struct.fsl_qdma_comp, ptr %call7.i.i.i, i32 0, i32 1
  %call6.i = tail call ptr @dma_pool_alloc(ptr noundef %29, i32 noundef 3264, ptr noundef %desc_bus_addr.i) #10
  %desc_virt_addr.i = getelementptr inbounds %struct.fsl_qdma_comp, ptr %call7.i.i.i, i32 0, i32 3
  %30 = ptrtoint ptr %desc_virt_addr.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call6.i, ptr %desc_virt_addr.i, align 4
  %tobool8.not.i = icmp eq ptr %call6.i, null
  br i1 %tobool8.not.i, label %err_desc_dma_alloc.i, label %if.end10.i

if.end10.i:                                       ; preds = %if.end5.i
  %list.i = getelementptr inbounds %struct.fsl_qdma_comp, ptr %call7.i.i.i, i32 0, i32 6
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %32, ptr noundef %comp_free) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end10.i.list_add_tail.exit.i_crit_edge

if.end10.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end10.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %list.i, ptr %prev.i, align 4
  %34 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %comp_free, ptr %list.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.fsl_qdma_comp, ptr %call7.i.i.i, i32 0, i32 6, i32 1
  %35 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %32, ptr %prev3.i.i.i, align 4
  %36 = ptrtoint ptr %32 to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %list.i, ptr %32, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end10.i.list_add_tail.exit.i_crit_edge
  %inc.i = add nuw i32 %i.092.i, 1
  %37 = ptrtoint ptr %n_cq.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %n_cq.i, align 4
  %add.i = add i32 %38, 10
  %cmp.i = icmp ult i32 %inc.i, %add.i
  br i1 %cmp.i, label %list_add_tail.exit.i.for.body.i_crit_edge, label %list_add_tail.exit.i.if.end21_crit_edge

list_add_tail.exit.i.if.end21_crit_edge:          ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end21

list_add_tail.exit.i.for.body.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

err_desc_dma_alloc.i:                             ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #12
  %virt_addr.i.le = getelementptr inbounds %struct.fsl_qdma_comp, ptr %call7.i.i.i, i32 0, i32 2
  %39 = ptrtoint ptr %comp_pool to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %comp_pool, align 4
  %41 = ptrtoint ptr %virt_addr.i.le to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %virt_addr.i.le, align 8
  %43 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %call7.i.i.i, align 8
  tail call void @dma_pool_free(ptr noundef %40, ptr noundef %42, i32 noundef %44) #10
  br label %err_dma_alloc.i

err_dma_alloc.i:                                  ; preds = %err_desc_dma_alloc.i, %if.end.i.err_dma_alloc.i_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #10
  br label %err_alloc.i

err_alloc.i:                                      ; preds = %err_dma_alloc.i, %for.body.i.err_alloc.i_crit_edge
  %45 = ptrtoint ptr %comp_free to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %comp_free, align 4
  %cmp23.not95.i = icmp eq ptr %46, %comp_free
  br i1 %cmp23.not95.i, label %err_alloc.i.do.end_crit_edge, label %err_alloc.i.for.body24.i_crit_edge

err_alloc.i.for.body24.i_crit_edge:               ; preds = %err_alloc.i
  br label %for.body24.i

err_alloc.i.do.end_crit_edge:                     ; preds = %err_alloc.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

for.body24.i:                                     ; preds = %list_del.exit.i.for.body24.i_crit_edge, %err_alloc.i.for.body24.i_crit_edge
  %.pn.in96.i = phi ptr [ %.pn99.i, %list_del.exit.i.for.body24.i_crit_edge ], [ %46, %err_alloc.i.for.body24.i_crit_edge ]
  %comp_temp.098.i = getelementptr i8, ptr %.pn.in96.i, i32 -136
  %47 = ptrtoint ptr %.pn.in96.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %.pn99.i = load ptr, ptr %.pn.in96.i, align 4
  %virt_addr25.i = getelementptr i8, ptr %.pn.in96.i, i32 -128
  %48 = ptrtoint ptr %virt_addr25.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %virt_addr25.i, align 4
  %tobool26.not.i = icmp eq ptr %49, null
  br i1 %tobool26.not.i, label %for.body24.i.if.end31.i_crit_edge, label %if.then27.i

for.body24.i.if.end31.i_crit_edge:                ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then27.i:                                      ; preds = %for.body24.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %comp_pool to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %comp_pool, align 4
  %52 = ptrtoint ptr %comp_temp.098.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %comp_temp.098.i, align 4
  tail call void @dma_pool_free(ptr noundef %51, ptr noundef nonnull %49, i32 noundef %53) #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then27.i, %for.body24.i.if.end31.i_crit_edge
  %desc_virt_addr32.i = getelementptr i8, ptr %.pn.in96.i, i32 -124
  %54 = ptrtoint ptr %desc_virt_addr32.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc_virt_addr32.i, align 4
  %tobool33.not.i = icmp eq ptr %55, null
  br i1 %tobool33.not.i, label %if.end31.i.if.end38.i_crit_edge, label %if.then34.i

if.end31.i.if.end38.i_crit_edge:                  ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end38.i

if.then34.i:                                      ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %desc_pool11 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %desc_pool11, align 4
  %desc_bus_addr37.i = getelementptr i8, ptr %.pn.in96.i, i32 -132
  %58 = ptrtoint ptr %desc_bus_addr37.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %desc_bus_addr37.i, align 4
  tail call void @dma_pool_free(ptr noundef %57, ptr noundef nonnull %55, i32 noundef %59) #10
  br label %if.end38.i

if.end38.i:                                       ; preds = %if.then34.i, %if.end31.i.if.end38.i_crit_edge
  %call.i.i81.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in96.i) #10
  br i1 %call.i.i81.i, label %if.end.i.i82.i, label %if.end38.i.list_del.exit.i_crit_edge

if.end38.i.list_del.exit.i_crit_edge:             ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i82.i:                                   ; preds = %if.end38.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in96.i, i32 0, i32 1
  %60 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i.i.i, align 4
  %62 = ptrtoint ptr %.pn.in96.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %.pn.in96.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev1.i.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %63, ptr %61, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i82.i, %if.end38.i.list_del.exit.i_crit_edge
  %66 = ptrtoint ptr %.pn.in96.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in96.i, align 4
  %prev.i83.i = getelementptr inbounds %struct.list_head, ptr %.pn.in96.i, i32 0, i32 1
  %67 = ptrtoint ptr %prev.i83.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i83.i, align 4
  tail call void @kfree(ptr noundef %comp_temp.098.i) #10
  %cmp23.not.i = icmp eq ptr %.pn99.i, %comp_free
  br i1 %cmp23.not.i, label %list_del.exit.i.do.end_crit_edge, label %list_del.exit.i.for.body24.i_crit_edge

list_del.exit.i.for.body24.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body24.i

list_del.exit.i.do.end_crit_edge:                 ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %list_del.exit.i.do.end_crit_edge, %err_alloc.i.do.end_crit_edge
  %68 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %chan, align 4
  %dev20 = getelementptr inbounds %struct.dma_device, ptr %69, i32 0, i32 15
  %70 = ptrtoint ptr %dev20 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev20, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %71, ptr noundef nonnull @.str.73) #13
  %72 = ptrtoint ptr %desc_pool11 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %desc_pool11, align 4
  tail call void @dma_pool_destroy(ptr noundef %73) #10
  br label %err_desc_pool

if.end21:                                         ; preds = %list_add_tail.exit.i.if.end21_crit_edge, %if.end15.if.end21_crit_edge
  %desc_allocated22 = getelementptr inbounds %struct.fsl_qdma_engine, ptr %1, i32 0, i32 16
  %74 = ptrtoint ptr %desc_allocated22 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %desc_allocated22, align 4
  %inc = add i32 %75, 1
  store i32 %inc, ptr %desc_allocated22, align 4
  br label %cleanup

err_desc_pool:                                    ; preds = %do.end, %if.end7.err_desc_pool_crit_edge
  %76 = ptrtoint ptr %comp_pool to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %comp_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %77) #10
  br label %cleanup

cleanup:                                          ; preds = %err_desc_pool, %if.end21, %if.end.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %9, %if.then ], [ -12, %err_desc_pool ], [ %inc, %if.end21 ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_cookie_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %state) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  %cookie1 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1, align 4
  %completed_cookie = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !166
  %tobool.not = icmp eq ptr %state, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  %used2 = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %used2 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2, align 4
  %residue = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue, align 4
  %in_flight_bytes = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 3
  %7 = ptrtoint ptr %in_flight_bytes to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 0, ptr %in_flight_bytes, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %1)
  %cmp.not.i = icmp sgt i32 %3, %1
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp4.not.i = icmp sge i32 %3, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %1, i32 %cookie)
  %cmp5.i = icmp slt i32 %1, %cookie
  br i1 %cmp.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.end
  %or.cond.i = or i1 %cmp5.i, %cmp4.not.i
  br i1 %or.cond.i, label %if.then.i.dma_async_is_complete.exit_crit_edge, label %if.then.i.if.end8.i_crit_edge

if.then.i.if.end8.i_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.then.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_async_is_complete.exit

if.else.i:                                        ; preds = %if.end
  %or.cond16.i = and i1 %cmp5.i, %cmp4.not.i
  br i1 %or.cond16.i, label %if.else.i.dma_async_is_complete.exit_crit_edge, label %if.else.i.if.end8.i_crit_edge

if.else.i.if.end8.i_crit_edge:                    ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i

if.else.i.dma_async_is_complete.exit_crit_edge:   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_async_is_complete.exit

if.end8.i:                                        ; preds = %if.else.i.if.end8.i_crit_edge, %if.then.i.if.end8.i_crit_edge
  br label %dma_async_is_complete.exit

dma_async_is_complete.exit:                       ; preds = %if.end8.i, %if.else.i.dma_async_is_complete.exit_crit_edge, %if.then.i.dma_async_is_complete.exit_crit_edge
  %retval.0.i = phi i32 [ 1, %if.end8.i ], [ 0, %if.then.i.dma_async_is_complete.exit_crit_edge ], [ 0, %if.else.i.dma_async_is_complete.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fsl_qdma_prep_memcpy(ptr noundef %chan, i32 noundef %dst, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue1.i = getelementptr inbounds %struct.fsl_qdma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %queue1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue1.i, align 4
  %queue_lock.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %1, i32 0, i32 6
  %comp_free.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %1, i32 0, i32 3
  br label %do.body2.i

do.body2.i:                                       ; preds = %if.end.i.do.body2.i_crit_edge, %entry
  %dec23.i = phi i32 [ 999, %entry ], [ %dec.i, %if.end.i.do.body2.i_crit_edge ]
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock.i) #10
  %2 = ptrtoint ptr %comp_free.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %comp_free.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %comp_free.i
  br i1 %cmp.i.not.i, label %if.end.i, label %if.then.i

if.then.i:                                        ; preds = %do.body2.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -136
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.fsl_qdma_request_enqueue_desc.exit_crit_edge

if.then.i.fsl_qdma_request_enqueue_desc.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %fsl_qdma_request_enqueue_desc.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %fsl_qdma_request_enqueue_desc.exit

if.end.i:                                         ; preds = %do.body2.i
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call3.i) #10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #10
  %dec.i = add nsw i32 %dec23.i, -1
  %tobool.not.i = icmp eq i32 %dec23.i, 0
  br i1 %tobool.not.i, label %if.end.i.cleanup_crit_edge, label %if.end.i.do.body2.i_crit_edge

if.end.i.do.body2.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2.i

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

fsl_qdma_request_enqueue_desc.exit:               ; preds = %if.end.i.i.i, %if.then.i.fsl_qdma_request_enqueue_desc.exit_crit_edge
  %11 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %3, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock.i, i32 noundef %call3.i) #10
  %qchan.i = getelementptr i8, ptr %3, i32 -120
  %13 = ptrtoint ptr %qchan.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %chan, ptr %qchan.i, align 4
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %fsl_qdma_request_enqueue_desc.exit.cleanup_crit_edge, label %if.end

fsl_qdma_request_enqueue_desc.exit.cleanup_crit_edge: ; preds = %fsl_qdma_request_enqueue_desc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %fsl_qdma_request_enqueue_desc.exit
  %virt_addr.i = getelementptr i8, ptr %3, i32 -128
  %14 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %virt_addr.i, align 4
  %desc_virt_addr.i = getelementptr i8, ptr %3, i32 -124
  %16 = ptrtoint ptr %desc_virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %desc_virt_addr.i, align 4
  %18 = call ptr @memset(ptr %15, i32 0, i32 64)
  %19 = load ptr, ptr %desc_virt_addr.i, align 4
  %20 = call ptr @memset(ptr %19, i32 0, i32 32)
  %21 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %add.ptr.i, align 4
  %add.i = add i32 %22, 16
  %23 = getelementptr inbounds %struct.fsl_qdma_format, ptr %15, i32 0, i32 2
  %addr_hi.i.i = getelementptr inbounds %struct.anon.76, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %addr_hi.i.i to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %addr_hi.i.i, align 1
  %25 = tail call i32 @llvm.bswap.i32(i32 %add.i) #10
  %26 = ptrtoint ptr %23 to i32
  call void @__asan_storeN_noabort(i32 %26, i32 4)
  store i32 %25, ptr %23, align 1
  %cfg.i.i = getelementptr inbounds %struct.fsl_qdma_format, ptr %15, i32 0, i32 1
  %27 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_loadN_noabort(i32 %27, i32 4)
  %28 = load i32, ptr %cfg.i.i, align 1
  %29 = and i32 %28, 61471
  %30 = or i32 %29, 32
  store i32 %30, ptr %cfg.i.i, align 1
  %31 = ptrtoint ptr %15 to i32
  call void @__asan_loadN_noabort(i32 %31, i32 4)
  %32 = load i32, ptr %15, align 1
  %33 = lshr i32 %32, 24
  %and.i.i = and i32 %33, 55
  %or.i39.i = or i32 %and.i.i, 1073741824
  %34 = tail call i32 @llvm.bswap.i32(i32 %or.i39.i) #10
  %35 = ptrtoint ptr %15 to i32
  call void @__asan_storeN_noabort(i32 %35, i32 4)
  store i32 %34, ptr %15, align 1
  %desc_bus_addr.i = getelementptr i8, ptr %3, i32 -132
  %36 = ptrtoint ptr %desc_bus_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %desc_bus_addr.i, align 4
  %38 = getelementptr %struct.fsl_qdma_format, ptr %15, i32 1, i32 2
  %addr_hi.i40.i = getelementptr inbounds %struct.anon.76, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %addr_hi.i40.i to i32
  call void @__asan_store1_noabort(i32 %39)
  store i8 0, ptr %addr_hi.i40.i, align 1
  %40 = tail call i32 @llvm.bswap.i32(i32 %37) #10
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_storeN_noabort(i32 %41, i32 4)
  store i32 %40, ptr %38, align 1
  %cfg.i41.i = getelementptr %struct.fsl_qdma_format, ptr %15, i32 1, i32 1
  %42 = ptrtoint ptr %cfg.i41.i to i32
  call void @__asan_storeN_noabort(i32 %42, i32 4)
  store i32 536870912, ptr %cfg.i41.i, align 1
  %43 = getelementptr %struct.fsl_qdma_format, ptr %15, i32 2, i32 2
  %addr_hi.i42.i = getelementptr inbounds %struct.anon.76, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %addr_hi.i42.i to i32
  call void @__asan_store1_noabort(i32 %44)
  store i8 0, ptr %addr_hi.i42.i, align 1
  %45 = tail call i32 @llvm.bswap.i32(i32 %src) #10
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_storeN_noabort(i32 %46, i32 4)
  store i32 %45, ptr %43, align 1
  %and.i43.i = and i32 %len, 1073741823
  %47 = tail call i32 @llvm.bswap.i32(i32 %and.i43.i) #10
  %cfg.i44.i = getelementptr %struct.fsl_qdma_format, ptr %15, i32 2, i32 1
  %48 = ptrtoint ptr %cfg.i44.i to i32
  call void @__asan_storeN_noabort(i32 %48, i32 4)
  store i32 %47, ptr %cfg.i44.i, align 1
  %49 = getelementptr %struct.fsl_qdma_format, ptr %15, i32 3, i32 2
  %addr_hi.i45.i = getelementptr inbounds %struct.anon.76, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %addr_hi.i45.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 0, ptr %addr_hi.i45.i, align 1
  %51 = tail call i32 @llvm.bswap.i32(i32 %dst) #10
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_storeN_noabort(i32 %52, i32 4)
  store i32 %51, ptr %49, align 1
  %cfg.i47.i = getelementptr %struct.fsl_qdma_format, ptr %15, i32 3, i32 1
  %or.i49.i = or i32 %and.i43.i, 1073741824
  %53 = tail call i32 @llvm.bswap.i32(i32 %or.i49.i) #10
  %54 = ptrtoint ptr %cfg.i47.i to i32
  call void @__asan_storeN_noabort(i32 %54, i32 4)
  store i32 %53, ptr %cfg.i47.i, align 1
  %55 = getelementptr inbounds %struct.fsl_qdma_format, ptr %17, i32 0, i32 2
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_storeN_noabort(i32 %56, i32 8)
  store i64 274877906944, ptr %55, align 1
  %57 = getelementptr %struct.fsl_qdma_format, ptr %17, i32 1, i32 2
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_storeN_noabort(i32 %58, i32 8)
  store i64 2473901162496, ptr %57, align 1
  %vdesc = getelementptr i8, ptr %3, i32 -116
  tail call void @dma_async_tx_descriptor_init(ptr noundef %vdesc, ptr noundef %chan) #10
  %flags2.i = getelementptr i8, ptr %3, i32 -112
  %59 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr i8, ptr %3, i32 -100
  %60 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 4
  %desc_free.i = getelementptr i8, ptr %3, i32 -96
  %61 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr i8, ptr %3, i32 -16
  %62 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr i8, ptr %3, i32 -12
  %63 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %residue.i, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr i8, ptr %3, i32 -8
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i7 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %prev.i.i7 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i7, align 4
  %call.i.i.i8 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %65, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i8, label %if.end.i.i.i9, label %if.end.vchan_tx_prep.exit_crit_edge

if.end.vchan_tx_prep.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i9:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %66 = ptrtoint ptr %prev.i.i7 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %node.i, ptr %prev.i.i7, align 4
  %67 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %3, i32 -4
  %68 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %node.i, ptr %65, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i9, %if.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %fsl_qdma_request_enqueue_desc.exit.cleanup_crit_edge, %if.end.i.cleanup_crit_edge
  %retval.0 = phi ptr [ %vdesc, %vchan_tx_prep.exit ], [ null, %fsl_qdma_request_enqueue_desc.exit.cleanup_crit_edge ], [ null, %if.end.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_qdma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.fsl_qdma_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %queue_lock = getelementptr inbounds %struct.fsl_qdma_queue, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %queue_lock) #10
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %2 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %3, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %5, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %desc_issued.i, ptr %7, align 4
  store ptr %7, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i.i, align 4
  br label %vchan_issue_pending.exit

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %entry.vchan_issue_pending.exit_crit_edge
  %12 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.i.not = icmp eq ptr %13, %desc_issued.i
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end_crit_edge, label %if.then

vchan_issue_pending.exit.if.end_crit_edge:        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %vchan_issue_pending.exit
  %14 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %queue, align 4
  %block_base.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %15, i32 0, i32 11
  %16 = ptrtoint ptr %block_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %block_base.i, align 4
  %qdma.i = getelementptr inbounds %struct.fsl_qdma_chan, ptr %chan, i32 0, i32 3
  %18 = ptrtoint ptr %qdma.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %qdma.i, align 4
  %id.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %15, i32 0, i32 9
  %20 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %id.i, align 4
  %mul.i = shl i32 %21, 8
  %add.i = or i32 %mul.i, 196
  %add.ptr.i = getelementptr i8, ptr %17, i32 %add.i
  %feature.i.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %19, i32 0, i32 9
  %22 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %feature.i.i, align 4
  %and.i.i = and i32 %23, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit.i

cond.false.i.i:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %25 = tail call i32 @llvm.bswap.i32(i32 %24) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit.i

qdma_readl.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %24, %cond.true.i.i ], [ %25, %cond.false.i.i ]
  %and.i = and i32 %cond.i.i, 65537
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %qdma_readl.exit.i.if.end_crit_edge

qdma_readl.exit.i.if.end_crit_edge:               ; preds = %qdma_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i:                                         ; preds = %qdma_readl.exit.i
  %26 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i.i = icmp eq ptr %27, %desc_issued.i
  %add.ptr.i.i = getelementptr i8, ptr %27, i32 -108
  %tobool2.not64.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not.i = or i1 %cmp.not.i.i, %tobool2.not64.i
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %if.end4.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end4.i:                                        ; preds = %if.end.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %27) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end4.i.list_del.exit.i_crit_edge

if.end4.i.list_del.exit.i_crit_edge:              ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %27, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.end4.i.list_del.exit.i_crit_edge
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  %prev.i.i16 = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i16 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i16, align 4
  %36 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %15, align 4
  %incdec.ptr.i = getelementptr %struct.fsl_qdma_format, ptr %37, i32 1
  store ptr %incdec.ptr.i, ptr %15, align 4
  %virt_addr.i = getelementptr i8, ptr %27, i32 -120
  %38 = ptrtoint ptr %virt_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %virt_addr.i, align 4
  %40 = call ptr @memcpy(ptr %37, ptr %39, i32 16)
  %41 = load ptr, ptr %15, align 4
  %cq.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %15, i32 0, i32 10
  %42 = ptrtoint ptr %cq.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cq.i, align 4
  %n_cq.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %15, i32 0, i32 8
  %44 = ptrtoint ptr %n_cq.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %n_cq.i, align 4
  %add.ptr7.i = getelementptr %struct.fsl_qdma_format, ptr %43, i32 %45
  %cmp.i = icmp eq ptr %41, %add.ptr7.i
  br i1 %cmp.i, label %if.then8.i, label %list_del.exit.i.if.end11.i_crit_edge

list_del.exit.i.if.end11.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11.i

if.then8.i:                                       ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %46 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %15, align 4
  br label %if.end11.i

if.end11.i:                                       ; preds = %if.then8.i, %list_del.exit.i.if.end11.i_crit_edge
  %list.i = getelementptr i8, ptr %27, i32 8
  %comp_used.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %15, i32 0, i32 2
  %prev.i50.i = getelementptr inbounds %struct.fsl_qdma_queue, ptr %15, i32 0, i32 2, i32 1
  %47 = ptrtoint ptr %prev.i50.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i50.i, align 4
  %call.i.i51.i = tail call zeroext i1 @__list_add_valid(ptr noundef %list.i, ptr noundef %48, ptr noundef %comp_used.i) #10
  br i1 %call.i.i51.i, label %if.end.i.i52.i, label %if.end11.i.list_add_tail.exit.i_crit_edge

if.end11.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i52.i:                                   ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %prev.i50.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %list.i, ptr %prev.i50.i, align 4
  %50 = ptrtoint ptr %list.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %comp_used.i, ptr %list.i, align 4
  %prev3.i.i.i17 = getelementptr i8, ptr %27, i32 12
  %51 = ptrtoint ptr %prev3.i.i.i17 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i.i17, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %list.i, ptr %48, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i52.i, %if.end11.i.list_add_tail.exit.i_crit_edge
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !169
  %53 = ptrtoint ptr %qdma.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %qdma.i, align 4
  %55 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %id.i, align 4
  %mul14.i = shl i32 %56, 8
  %add15.i = or i32 %mul14.i, 192
  %add.ptr16.i = getelementptr i8, ptr %17, i32 %add15.i
  %feature.i53.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %54, i32 0, i32 9
  %57 = ptrtoint ptr %feature.i53.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %feature.i53.i, align 4
  %and.i54.i = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i54.i)
  %tobool.not.i55.i = icmp eq i32 %and.i54.i, 0
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr16.i) #10
  br i1 %tobool.not.i55.i, label %cond.false.i57.i, label %cond.true.i56.i

cond.true.i56.i:                                  ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit59.i

cond.false.i57.i:                                 ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit59.i

qdma_readl.exit59.i:                              ; preds = %cond.false.i57.i, %cond.true.i56.i
  %cond.i58.i = phi i32 [ %59, %cond.true.i56.i ], [ %60, %cond.false.i57.i ]
  %or.i = or i32 %cond.i58.i, 1073741824
  %61 = ptrtoint ptr %qdma.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %qdma.i, align 4
  %63 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %id.i, align 4
  %mul20.i = shl i32 %64, 8
  %add21.i = or i32 %mul20.i, 192
  %add.ptr22.i = getelementptr i8, ptr %17, i32 %add21.i
  %feature.i60.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %62, i32 0, i32 9
  %65 = ptrtoint ptr %feature.i60.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %feature.i60.i, align 4
  %and.i61.i = and i32 %66, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i61.i)
  %tobool.not.i62.i = icmp eq i32 %and.i61.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i62.i, label %cond.false.i63.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %qdma_readl.exit59.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %or.i) #10, !srcloc !170
  br label %qdma_writel.exit.i

cond.false.i63.i:                                 ; preds = %qdma_readl.exit59.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22.i, i32 %67) #10, !srcloc !170
  br label %qdma_writel.exit.i

qdma_writel.exit.i:                               ; preds = %cond.false.i63.i, %do.body.i.i
  %status.i = getelementptr inbounds %struct.fsl_qdma_chan, ptr %chan, i32 0, i32 2
  %68 = ptrtoint ptr %status.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 1, ptr %status.i, align 4
  br label %if.end

if.end:                                           ; preds = %qdma_writel.exit.i, %if.end.i.if.end_crit_edge, %qdma_readl.exit.i.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %queue_lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_qdma_synchronize(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #10
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %3 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_terminated.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_synchronize.exit_crit_edge, label %if.then.i.i

entry.vchan_synchronize.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_synchronize.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i.i, align 4
  br label %vchan_synchronize.exit

vchan_synchronize.exit:                           ; preds = %if.then.i.i, %entry.vchan_synchronize.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_qdma_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %entry.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

entry.list_splice_tail_init.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %entry.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %13 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %14, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i12.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head, ptr %18, align 4
  store ptr %18, ptr %0, align 4
  %22 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %23 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %24, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i18.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head, ptr %28, align 4
  store ptr %28, ptr %0, align 4
  %32 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %33 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %34, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i24.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head, ptr %38, align 4
  store ptr %38, ptr %0, align 4
  %42 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %43 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %44, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i30.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head, ptr %48, align 4
  store ptr %48, ptr %0, align 4
  %52 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_qdma_reg_init(ptr noundef readonly %fsl_qdma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status_base = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 2
  %0 = ptrtoint ptr %status_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_base, align 4
  %ctrl_base = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 1
  %2 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ctrl_base, align 4
  %queue = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 10
  %4 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %queue, align 4
  %feature.i.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 9
  %6 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %feature.i.i, align 4
  %and.i.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10
  br i1 %tobool.not.i.i, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit.i

cond.false.i.i:                                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit.i

qdma_readl.exit.i:                                ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i32 [ %8, %cond.true.i.i ], [ %9, %cond.false.i.i ]
  %or.i = or i32 %cond.i.i, 1073741824
  %10 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %feature.i.i, align 4
  %and.i60.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i60.i)
  %tobool.not.i61.i = icmp eq i32 %and.i60.i, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i61.i, label %cond.false.i62.i, label %do.body.i.i

do.body.i.i:                                      ; preds = %qdma_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %or.i) #10, !srcloc !170
  br label %qdma_writel.exit.i

cond.false.i62.i:                                 ; preds = %qdma_readl.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %or.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %12) #10, !srcloc !170
  br label %qdma_writel.exit.i

qdma_writel.exit.i:                               ; preds = %cond.false.i62.i, %do.body.i.i
  %block_number.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 13
  %13 = ptrtoint ptr %block_number.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %block_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp90.i = icmp sgt i32 %14, 0
  br i1 %cmp90.i, label %for.body.lr.ph.i, label %qdma_writel.exit.i.while.cond.preheader.i_crit_edge

qdma_writel.exit.i.while.cond.preheader.i_crit_edge: ; preds = %qdma_writel.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader.i

for.body.lr.ph.i:                                 ; preds = %qdma_writel.exit.i
  %block_base.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 3
  %block_offset.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 14
  br label %for.body.i

while.cond.preheader.i:                           ; preds = %for.body.i.while.cond.preheader.i_crit_edge, %qdma_writel.exit.i.while.cond.preheader.i_crit_edge
  %add.ptr11.i = getelementptr i8, ptr %3, i32 4
  br label %while.cond.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %j.091.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc9.i, %for.body.i.for.body.i_crit_edge ]
  %15 = ptrtoint ptr %block_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %block_base.i, align 4
  %17 = ptrtoint ptr %block_offset.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %block_offset.i, align 4
  %mul.i = mul i32 %18, %j.091.i
  %add.ptr2.i = getelementptr i8, ptr %16, i32 %mul.i
  %add.ptr7.i = getelementptr i8, ptr %add.ptr2.i, i32 192
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.i, i32 0) #10
  %add.ptr7.1.i = getelementptr i8, ptr %add.ptr2.i, i32 448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.1.i, i32 0) #10
  %add.ptr7.2.i = getelementptr i8, ptr %add.ptr2.i, i32 704
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.2.i, i32 0) #10
  %add.ptr7.3.i = getelementptr i8, ptr %add.ptr2.i, i32 960
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.3.i, i32 0) #10
  %add.ptr7.4.i = getelementptr i8, ptr %add.ptr2.i, i32 1216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.4.i, i32 0) #10
  %add.ptr7.5.i = getelementptr i8, ptr %add.ptr2.i, i32 1472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.5.i, i32 0) #10
  %add.ptr7.6.i = getelementptr i8, ptr %add.ptr2.i, i32 1728
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.6.i, i32 0) #10
  %add.ptr7.7.i = getelementptr i8, ptr %add.ptr2.i, i32 1984
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr7.7.i, i32 0) #10
  %inc9.i = add nuw nsw i32 %j.091.i, 1
  %19 = ptrtoint ptr %block_number.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %block_number.i, align 4
  %cmp.i = icmp slt i32 %inc9.i, %20
  br i1 %cmp.i, label %for.body.i.for.body.i_crit_edge, label %for.body.i.while.cond.preheader.i_crit_edge

for.body.i.while.cond.preheader.i_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader.i

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

while.cond.i:                                     ; preds = %if.end15.i, %while.cond.preheader.i
  %count.0.i = phi i32 [ %dec.i, %if.end15.i ], [ 1500, %while.cond.preheader.i ]
  %21 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %feature.i.i, align 4
  %and.i70.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i70.i)
  %tobool.not.i71.i = icmp eq i32 %and.i70.i, 0
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr11.i) #10
  br i1 %tobool.not.i71.i, label %cond.false.i73.i, label %cond.true.i72.i

cond.true.i72.i:                                  ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit75.i

cond.false.i73.i:                                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %24 = tail call i32 @llvm.bswap.i32(i32 %23) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit75.i

qdma_readl.exit75.i:                              ; preds = %cond.false.i73.i, %cond.true.i72.i
  %cond.i74.i = phi i32 [ %23, %cond.true.i72.i ], [ %24, %cond.false.i73.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %cond.i74.i)
  %tobool.not.i = icmp sgt i32 %cond.i74.i, -1
  br i1 %tobool.not.i, label %for.cond16.preheader.i, label %if.end.i

for.cond16.preheader.i:                           ; preds = %qdma_readl.exit75.i
  %25 = ptrtoint ptr %block_number.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %block_number.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp1892.i = icmp sgt i32 %26, 0
  br i1 %cmp1892.i, label %for.body19.lr.ph.i, label %for.cond16.preheader.i.for.end105_crit_edge

for.cond16.preheader.i.for.end105_crit_edge:      ; preds = %for.cond16.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end105

for.body19.lr.ph.i:                               ; preds = %for.cond16.preheader.i
  %block_base20.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 3
  %block_offset21.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 14
  br label %for.body19.i

if.end.i:                                         ; preds = %qdma_readl.exit75.i
  %cmp13.i = icmp slt i32 %count.0.i, 0
  br i1 %cmp13.i, label %do.end, label %if.end15.i

if.end15.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dec.i = add nsw i32 %count.0.i, -1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %27 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %27(i32 noundef 21474800) #10
  br label %while.cond.i

for.body19.i:                                     ; preds = %for.body19.i.for.body19.i_crit_edge, %for.body19.lr.ph.i
  %j.193.i = phi i32 [ 0, %for.body19.lr.ph.i ], [ %inc27.i, %for.body19.i.for.body19.i_crit_edge ]
  %28 = ptrtoint ptr %block_base20.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %block_base20.i, align 4
  %30 = ptrtoint ptr %block_offset21.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %block_offset21.i, align 4
  %mul22.i = mul i32 %31, %j.193.i
  %add.ptr23.i = getelementptr i8, ptr %29, i32 %mul22.i
  %add.ptr24.i = getelementptr i8, ptr %add.ptr23.i, i32 2048
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr24.i, i32 0) #10
  %add.ptr25.i = getelementptr i8, ptr %add.ptr23.i, i32 228
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25.i, i32 -1) #10
  %inc27.i = add nuw nsw i32 %j.193.i, 1
  %32 = ptrtoint ptr %block_number.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %block_number.i, align 4
  %cmp18.i = icmp slt i32 %inc27.i, %33
  br i1 %cmp18.i, label %for.body19.i.for.body19.i_crit_edge, label %fsl_qdma_halt.exit

for.body19.i.for.body19.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body19.i

fsl_qdma_halt.exit:                               ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %cmp311 = icmp sgt i32 %33, 0
  br i1 %cmp311, label %for.body.lr.ph, label %fsl_qdma_halt.exit.for.cond2.preheader_crit_edge

fsl_qdma_halt.exit.for.cond2.preheader_crit_edge: ; preds = %fsl_qdma_halt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader

for.body.lr.ph:                                   ; preds = %fsl_qdma_halt.exit
  %block_base = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 3
  %block_offset = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 14
  br label %for.body

do.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.dma_device, ptr %fsl_qdma, i32 0, i32 15
  %34 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.75) #13
  br label %cleanup

for.cond2.preheader:                              ; preds = %for.body.for.cond2.preheader_crit_edge, %fsl_qdma_halt.exit.for.cond2.preheader_crit_edge
  %36 = phi i32 [ %33, %fsl_qdma_halt.exit.for.cond2.preheader_crit_edge ], [ %42, %for.body.for.cond2.preheader_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp4315 = icmp sgt i32 %36, 0
  br i1 %cmp4315, label %for.body5.lr.ph, label %for.cond2.preheader.for.end105_crit_edge

for.cond2.preheader.for.end105_crit_edge:         ; preds = %for.cond2.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end105

for.body5.lr.ph:                                  ; preds = %for.cond2.preheader
  %block_base6 = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 3
  %block_offset7 = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 14
  %n_queues = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 5
  %status61 = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 11
  br label %for.body5

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.0312 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %37 = ptrtoint ptr %block_base to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %block_base, align 4
  %39 = ptrtoint ptr %block_offset to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %block_offset, align 4
  %mul = mul i32 %40, %i.0312
  %add.ptr = getelementptr i8, ptr %38, i32 228
  %add.ptr1 = getelementptr i8, ptr %add.ptr, i32 %mul
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 -1) #10
  %inc = add nuw nsw i32 %i.0312, 1
  %41 = ptrtoint ptr %block_number.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %block_number.i, align 4
  %cmp = icmp slt i32 %inc, %42
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.cond2.preheader_crit_edge

for.body.for.cond2.preheader_crit_edge:           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond2.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body5:                                        ; preds = %qdma_writel.exit269.for.body5_crit_edge, %for.body5.lr.ph
  %j.0316 = phi i32 [ 0, %for.body5.lr.ph ], [ %inc104, %qdma_writel.exit269.for.body5_crit_edge ]
  %43 = ptrtoint ptr %block_base6 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %block_base6, align 4
  %45 = ptrtoint ptr %block_offset7 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %block_offset7, align 4
  %mul8 = mul i32 %46, %j.0316
  %add.ptr9 = getelementptr i8, ptr %44, i32 %mul8
  %47 = ptrtoint ptr %n_queues to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %n_queues, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %cmp11313.not = icmp eq i32 %48, 0
  br i1 %cmp11313.not, label %for.body5.for.end59_crit_edge, label %for.body5.for.body12_crit_edge

for.body5.for.body12_crit_edge:                   ; preds = %for.body5
  br label %for.body12

for.body5.for.end59_crit_edge:                    ; preds = %for.body5
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end59

for.body12:                                       ; preds = %qdma_writel.exit224.for.body12_crit_edge, %for.body5.for.body12_crit_edge
  %49 = phi i32 [ %68, %qdma_writel.exit224.for.body12_crit_edge ], [ %48, %for.body5.for.body12_crit_edge ]
  %i.1314 = phi i32 [ %inc58, %qdma_writel.exit224.for.body12_crit_edge ], [ 0, %for.body5.for.body12_crit_edge ]
  %add.ptr13 = getelementptr %struct.fsl_qdma_queue, ptr %5, i32 %i.1314
  %mul15 = mul i32 %49, %j.0316
  %add.ptr16 = getelementptr %struct.fsl_qdma_queue, ptr %add.ptr13, i32 %mul15
  %bus_addr = getelementptr inbounds %struct.fsl_qdma_queue, ptr %add.ptr16, i32 0, i32 7
  %50 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bus_addr, align 4
  %mul17 = shl i32 %i.1314, 8
  %add = or i32 %mul17, 204
  %add.ptr18 = getelementptr i8, ptr %add.ptr9, i32 %add
  %52 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %feature.i.i, align 4
  %and.i204 = and i32 %53, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i204)
  %tobool.not.i205 = icmp eq i32 %and.i204, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i205, label %cond.false.i207, label %do.body.i206

do.body.i206:                                     ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %51) #10, !srcloc !170
  br label %qdma_writel.exit208

cond.false.i207:                                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #12
  %54 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr18, i32 %54) #10, !srcloc !170
  br label %qdma_writel.exit208

qdma_writel.exit208:                              ; preds = %cond.false.i207, %do.body.i206
  %55 = ptrtoint ptr %bus_addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %bus_addr, align 4
  %add21 = or i32 %mul17, 212
  %add.ptr22 = getelementptr i8, ptr %add.ptr9, i32 %add21
  %57 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %feature.i.i, align 4
  %and.i210 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i210)
  %tobool.not.i211 = icmp eq i32 %and.i210, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i211, label %cond.false.i213, label %do.body.i212

do.body.i212:                                     ; preds = %qdma_writel.exit208
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %56) #10, !srcloc !170
  br label %cond.end49

cond.false.i213:                                  ; preds = %qdma_writel.exit208
  call void @__sanitizer_cov_trace_pc() #12
  %59 = tail call i32 @llvm.bswap.i32(i32 %56) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %59) #10, !srcloc !170
  br label %cond.end49

cond.end49:                                       ; preds = %cond.false.i213, %do.body.i212
  %n_cq = getelementptr inbounds %struct.fsl_qdma_queue, ptr %add.ptr16, i32 0, i32 8
  %60 = ptrtoint ptr %n_cq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %n_cq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %tobool.not.i.i215 = icmp eq i32 %61, 0
  %62 = tail call i32 @llvm.ctlz.i32(i32 %61, i1 true) #10, !range !171
  %sub.i.op.i = shl nuw nsw i32 %62, 20
  %sub.i.op.i.op = xor i32 %sub.i.op.i, 32505856
  %sub.i.op.i.op.op = add nuw i32 %sub.i.op.i.op, 2143289344
  %sub.i.op.i217 = shl nuw nsw i32 %62, 16
  %sub.i.op.i217.op = xor i32 %sub.i.op.i217, 2031616
  %sub.i.op.i217.op.op = add nuw i32 %sub.i.op.i217.op, 2147090432
  %63 = or i32 %sub.i.op.i.op.op, %sub.i.op.i217.op.op
  %.op = or i32 %63, -2147483648
  %or53 = select i1 %tobool.not.i.i215, i32 -458752, i32 %.op
  %add55 = or i32 %mul17, 192
  %add.ptr56 = getelementptr i8, ptr %add.ptr9, i32 %add55
  %64 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %feature.i.i, align 4
  %and.i220 = and i32 %65, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i220)
  %tobool.not.i221 = icmp eq i32 %and.i220, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i221, label %cond.false.i223, label %do.body.i222

do.body.i222:                                     ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %or53) #10, !srcloc !170
  br label %qdma_writel.exit224

cond.false.i223:                                  ; preds = %cond.end49
  call void @__sanitizer_cov_trace_pc() #12
  %66 = tail call i32 @llvm.bswap.i32(i32 %or53) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr56, i32 %66) #10, !srcloc !170
  br label %qdma_writel.exit224

qdma_writel.exit224:                              ; preds = %cond.false.i223, %do.body.i222
  %inc58 = add nuw i32 %i.1314, 1
  %67 = ptrtoint ptr %n_queues to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n_queues, align 4
  %cmp11 = icmp ult i32 %inc58, %68
  br i1 %cmp11, label %qdma_writel.exit224.for.body12_crit_edge, label %qdma_writel.exit224.for.end59_crit_edge

qdma_writel.exit224.for.end59_crit_edge:          ; preds = %qdma_writel.exit224
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end59

qdma_writel.exit224.for.body12_crit_edge:         ; preds = %qdma_writel.exit224
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body12

for.end59:                                        ; preds = %qdma_writel.exit224.for.end59_crit_edge, %for.body5.for.end59_crit_edge
  %add.ptr60 = getelementptr i8, ptr %add.ptr9, i32 2592
  %69 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %feature.i.i, align 4
  %and.i226 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i226)
  %tobool.not.i227 = icmp eq i32 %and.i226, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i227, label %cond.false.i229, label %do.body.i228

do.body.i228:                                     ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 2097152) #10, !srcloc !170
  br label %qdma_writel.exit230

cond.false.i229:                                  ; preds = %for.end59
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr60, i32 8192) #10, !srcloc !170
  br label %qdma_writel.exit230

qdma_writel.exit230:                              ; preds = %cond.false.i229, %do.body.i228
  %71 = ptrtoint ptr %status61 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %status61, align 4
  %arrayidx = getelementptr ptr, ptr %72, i32 %j.0316
  %73 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %arrayidx, align 4
  %bus_addr62 = getelementptr inbounds %struct.fsl_qdma_queue, ptr %74, i32 0, i32 7
  %75 = ptrtoint ptr %bus_addr62 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %bus_addr62, align 4
  %add.ptr63 = getelementptr i8, ptr %add.ptr9, i32 2068
  %77 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %feature.i.i, align 4
  %and.i232 = and i32 %78, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i232)
  %tobool.not.i233 = icmp eq i32 %and.i232, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i233, label %cond.false.i235, label %do.body.i234

do.body.i234:                                     ; preds = %qdma_writel.exit230
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %76) #10, !srcloc !170
  br label %qdma_writel.exit236

cond.false.i235:                                  ; preds = %qdma_writel.exit230
  call void @__sanitizer_cov_trace_pc() #12
  %79 = tail call i32 @llvm.bswap.i32(i32 %76) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr63, i32 %79) #10, !srcloc !170
  br label %qdma_writel.exit236

qdma_writel.exit236:                              ; preds = %cond.false.i235, %do.body.i234
  %80 = ptrtoint ptr %status61 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %status61, align 4
  %arrayidx65 = getelementptr ptr, ptr %81, i32 %j.0316
  %82 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %arrayidx65, align 4
  %bus_addr66 = getelementptr inbounds %struct.fsl_qdma_queue, ptr %83, i32 0, i32 7
  %84 = ptrtoint ptr %bus_addr66 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %bus_addr66, align 4
  %add.ptr67 = getelementptr i8, ptr %add.ptr9, i32 2060
  %86 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %feature.i.i, align 4
  %and.i238 = and i32 %87, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i238)
  %tobool.not.i239 = icmp eq i32 %and.i238, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i239, label %cond.false.i241, label %do.body.i240

do.body.i240:                                     ; preds = %qdma_writel.exit236
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %85) #10, !srcloc !170
  br label %qdma_writel.exit242

cond.false.i241:                                  ; preds = %qdma_writel.exit236
  call void @__sanitizer_cov_trace_pc() #12
  %88 = tail call i32 @llvm.bswap.i32(i32 %85) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr67, i32 %88) #10, !srcloc !170
  br label %qdma_writel.exit242

qdma_writel.exit242:                              ; preds = %cond.false.i241, %do.body.i240
  %add.ptr68 = getelementptr i8, ptr %add.ptr9, i32 224
  %89 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %feature.i.i, align 4
  %and.i244 = and i32 %90, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i244)
  %tobool.not.i245 = icmp eq i32 %and.i244, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i245, label %cond.false.i247, label %do.body.i246

do.body.i246:                                     ; preds = %qdma_writel.exit242
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 32768) #10, !srcloc !170
  br label %qdma_writel.exit248

cond.false.i247:                                  ; preds = %qdma_writel.exit242
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr68, i32 8388608) #10, !srcloc !170
  br label %qdma_writel.exit248

qdma_writel.exit248:                              ; preds = %cond.false.i247, %do.body.i246
  %add.ptr69 = getelementptr i8, ptr %add.ptr9, i32 2088
  %91 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load i32, ptr %feature.i.i, align 4
  %and.i250 = and i32 %92, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i250)
  %tobool.not.i251 = icmp eq i32 %and.i250, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i251, label %cond.false.i253, label %do.body.i252

do.body.i252:                                     ; preds = %qdma_writel.exit248
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 -2147123200) #10, !srcloc !170
  br label %qdma_writel.exit254

cond.false.i253:                                  ; preds = %qdma_writel.exit248
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr69, i32 8390016) #10, !srcloc !170
  br label %qdma_writel.exit254

qdma_writel.exit254:                              ; preds = %cond.false.i253, %do.body.i252
  %add.ptr70 = getelementptr i8, ptr %add.ptr9, i32 2576
  %93 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %feature.i.i, align 4
  %and.i256 = and i32 %94, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i256)
  %tobool.not.i257 = icmp eq i32 %and.i256, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i257, label %cond.false.i259, label %do.body.i258

do.body.i258:                                     ; preds = %qdma_writel.exit254
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 -2147483647) #10, !srcloc !170
  br label %cond.end95

cond.false.i259:                                  ; preds = %qdma_writel.exit254
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr70, i32 16777344) #10, !srcloc !170
  br label %cond.end95

cond.end95:                                       ; preds = %cond.false.i259, %do.body.i258
  %95 = ptrtoint ptr %status61 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %status61, align 4
  %arrayidx72 = getelementptr ptr, ptr %96, i32 %j.0316
  %97 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %arrayidx72, align 4
  %n_cq73 = getelementptr inbounds %struct.fsl_qdma_queue, ptr %98, i32 0, i32 8
  %99 = ptrtoint ptr %n_cq73 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %n_cq73, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool.not.i.i261 = icmp eq i32 %100, 0
  %101 = tail call i32 @llvm.ctlz.i32(i32 %100, i1 true) #10, !range !171
  %sub.i.op.i262 = shl nuw nsw i32 %101, 16
  %sub.i.op.i262.op = xor i32 %sub.i.op.i262, 2031616
  %sub.i.op.i262.op.op = add nuw i32 %sub.i.op.i262.op, 2147090432
  %sub.i.op.i262.op.op.op = or i32 %sub.i.op.i262.op.op, -2147483648
  %or99 = select i1 %tobool.not.i.i261, i32 -458752, i32 %sub.i.op.i262.op.op.op
  %add.ptr100 = getelementptr i8, ptr %add.ptr9, i32 2048
  %102 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %feature.i.i, align 4
  %and.i265 = and i32 %103, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i265)
  %tobool.not.i266 = icmp eq i32 %and.i265, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i266, label %cond.false.i268, label %do.body.i267

do.body.i267:                                     ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %or99) #10, !srcloc !170
  br label %qdma_writel.exit269

cond.false.i268:                                  ; preds = %cond.end95
  call void @__sanitizer_cov_trace_pc() #12
  %104 = tail call i32 @llvm.bswap.i32(i32 %or99) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr100, i32 %104) #10, !srcloc !170
  br label %qdma_writel.exit269

qdma_writel.exit269:                              ; preds = %cond.false.i268, %do.body.i267
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr100) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  %inc104 = add nuw nsw i32 %j.0316, 1
  %106 = ptrtoint ptr %block_number.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %block_number.i, align 4
  %cmp4 = icmp slt i32 %inc104, %107
  br i1 %cmp4, label %qdma_writel.exit269.for.body5_crit_edge, label %qdma_writel.exit269.for.end105_crit_edge

qdma_writel.exit269.for.end105_crit_edge:         ; preds = %qdma_writel.exit269
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end105

qdma_writel.exit269.for.body5_crit_edge:          ; preds = %qdma_writel.exit269
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body5

for.end105:                                       ; preds = %qdma_writel.exit269.for.end105_crit_edge, %for.cond2.preheader.for.end105_crit_edge, %for.cond16.preheader.i.for.end105_crit_edge
  %add.ptr106 = getelementptr i8, ptr %1, i32 3588
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr106, i32 -1) #10
  %add.ptr107 = getelementptr i8, ptr %1, i32 3584
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr107, i32 -1) #10
  %108 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %feature.i.i, align 4
  %and.i287 = and i32 %109, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i287)
  %tobool.not.i288 = icmp eq i32 %and.i287, 0
  %110 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10
  br i1 %tobool.not.i288, label %cond.false.i290, label %cond.true.i289

cond.true.i289:                                   ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit292

cond.false.i290:                                  ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #12
  %111 = tail call i32 @llvm.bswap.i32(i32 %110) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit292

qdma_readl.exit292:                               ; preds = %cond.false.i290, %cond.true.i289
  %cond.i291 = phi i32 [ %110, %cond.true.i289 ], [ %111, %cond.false.i290 ]
  %and = and i32 %cond.i291, -1073741825
  %112 = ptrtoint ptr %feature.i.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %feature.i.i, align 4
  %and.i294 = and i32 %113, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i294)
  %tobool.not.i295 = icmp eq i32 %and.i294, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i295, label %cond.false.i297, label %do.body.i296

do.body.i296:                                     ; preds = %qdma_readl.exit292
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %and) #10, !srcloc !170
  br label %cleanup

cond.false.i297:                                  ; preds = %qdma_readl.exit292
  call void @__sanitizer_cov_trace_pc() #12
  %114 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 %114) #10, !srcloc !170
  br label %cleanup

cleanup:                                          ; preds = %cond.false.i297, %do.body.i296, %do.end
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %do.body.i296 ], [ 0, %cond.false.i297 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_kfree(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @device_property_read_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_qdma_error_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %status_base = getelementptr inbounds %struct.fsl_qdma_engine, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %status_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %status_base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 3588
  %feature.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %dev_id, i32 0, i32 9
  %2 = ptrtoint ptr %feature.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %feature.i, align 4
  %and.i = and i32 %3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit

cond.false.i:                                     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit

qdma_readl.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %4, %cond.true.i ], [ %5, %cond.false.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond.i)
  %tobool.not = icmp eq i32 %cond.i, 0
  br i1 %tobool.not, label %qdma_readl.exit.if.end_crit_edge, label %if.then

qdma_readl.exit.if.end_crit_edge:                 ; preds = %qdma_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %qdma_readl.exit
  %add.ptr1 = getelementptr i8, ptr %1, i32 3600
  %6 = ptrtoint ptr %feature.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %feature.i, align 4
  %and.i24 = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i24)
  %tobool.not.i25 = icmp eq i32 %and.i24, 0
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #10
  br i1 %tobool.not.i25, label %cond.false.i27, label %cond.true.i26

cond.true.i26:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit29

cond.false.i27:                                   ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit29

qdma_readl.exit29:                                ; preds = %cond.false.i27, %cond.true.i26
  %cond.i28 = phi i32 [ %8, %cond.true.i26 ], [ %9, %cond.false.i27 ]
  %add.ptr3 = getelementptr i8, ptr %1, i32 3604
  %10 = ptrtoint ptr %feature.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %feature.i, align 4
  %and.i31 = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i31)
  %tobool.not.i32 = icmp eq i32 %and.i31, 0
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10
  br i1 %tobool.not.i32, label %cond.false.i34, label %cond.true.i33

cond.true.i33:                                    ; preds = %qdma_readl.exit29
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit36

cond.false.i34:                                   ; preds = %qdma_readl.exit29
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i32 @llvm.bswap.i32(i32 %12) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit36

qdma_readl.exit36:                                ; preds = %cond.false.i34, %cond.true.i33
  %cond.i35 = phi i32 [ %12, %cond.true.i33 ], [ %13, %cond.false.i34 ]
  %add.ptr5 = getelementptr i8, ptr %1, i32 3608
  %14 = ptrtoint ptr %feature.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %feature.i, align 4
  %and.i38 = and i32 %15, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i38)
  %tobool.not.i39 = icmp eq i32 %and.i38, 0
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5) #10
  br i1 %tobool.not.i39, label %cond.false.i41, label %cond.true.i40

cond.true.i40:                                    ; preds = %qdma_readl.exit36
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit43

cond.false.i41:                                   ; preds = %qdma_readl.exit36
  call void @__sanitizer_cov_trace_pc() #12
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit43

qdma_readl.exit43:                                ; preds = %cond.false.i41, %cond.true.i40
  %cond.i42 = phi i32 [ %16, %cond.true.i40 ], [ %17, %cond.false.i41 ]
  %add.ptr7 = getelementptr i8, ptr %1, i32 3612
  %18 = ptrtoint ptr %feature.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %feature.i, align 4
  %and.i45 = and i32 %19, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool.not.i46 = icmp eq i32 %and.i45, 0
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10
  br i1 %tobool.not.i46, label %cond.false.i48, label %cond.true.i47

cond.true.i47:                                    ; preds = %qdma_readl.exit43
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit50

cond.false.i48:                                   ; preds = %qdma_readl.exit43
  call void @__sanitizer_cov_trace_pc() #12
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit50

qdma_readl.exit50:                                ; preds = %cond.false.i48, %cond.true.i47
  %cond.i49 = phi i32 [ %20, %cond.true.i47 ], [ %21, %cond.false.i48 ]
  %dev = getelementptr inbounds %struct.dma_device, ptr %dev_id, i32 0, i32 15
  %22 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.56, i32 noundef %cond.i, i32 noundef %cond.i28, i32 noundef %cond.i35, i32 noundef %cond.i42, i32 noundef %cond.i49) #13
  br label %if.end

if.end:                                           ; preds = %qdma_readl.exit50, %qdma_readl.exit.if.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #10
  ret i32 1
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_qdma_queue_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ctrl_base = getelementptr inbounds %struct.fsl_qdma_engine, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %ctrl_base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ctrl_base, align 4
  %irq_base = getelementptr inbounds %struct.fsl_qdma_engine, ptr %dev_id, i32 0, i32 15
  %2 = ptrtoint ptr %irq_base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_base, align 4
  %sub = sub i32 %irq, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp = icmp slt i32 %sub, 0
  br i1 %cmp, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %block_number = getelementptr inbounds %struct.fsl_qdma_engine, ptr %dev_id, i32 0, i32 13
  %4 = ptrtoint ptr %block_number to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %block_number, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %sub, i32 %5)
  %cmp1 = icmp sgt i32 %sub, %5
  br i1 %cmp1, label %do.end, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.dma_device, ptr %dev_id, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.58, i32 noundef %irq, i32 noundef %3) #13
  br label %if.end

if.end:                                           ; preds = %do.end, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %block_base = getelementptr inbounds %struct.fsl_qdma_engine, ptr %dev_id, i32 0, i32 3
  %8 = ptrtoint ptr %block_base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %block_base, align 4
  %block_offset = getelementptr inbounds %struct.fsl_qdma_engine, ptr %dev_id, i32 0, i32 14
  %10 = ptrtoint ptr %block_offset to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %block_offset, align 4
  %mul = mul i32 %11, %sub
  %add.ptr = getelementptr i8, ptr %9, i32 %mul
  %add.ptr3 = getelementptr i8, ptr %add.ptr, i32 228
  %feature.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %dev_id, i32 0, i32 9
  %12 = ptrtoint ptr %feature.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %feature.i, align 4
  %and.i = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #10
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit

cond.false.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit

qdma_readl.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %14, %cond.true.i ], [ %15, %cond.false.i ]
  %and = and i32 %cond.i, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp4.not = icmp eq i32 %and, 0
  br i1 %cmp4.not, label %qdma_readl.exit.if.end7_crit_edge, label %if.then5

qdma_readl.exit.if.end7_crit_edge:                ; preds = %qdma_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %qdma_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call6 = tail call fastcc i32 @fsl_qdma_queue_transfer_complete(ptr noundef %dev_id, ptr noundef %add.ptr, i32 noundef %sub)
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %qdma_readl.exit.if.end7_crit_edge
  %intr.0 = phi i32 [ %call6, %if.then5 ], [ %cond.i, %qdma_readl.exit.if.end7_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %intr.0)
  %cmp8.not = icmp eq i32 %intr.0, 0
  br i1 %cmp8.not, label %if.end7.if.end19_crit_edge, label %if.then9

if.end7.if.end19_crit_edge:                       ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end19

if.then9:                                         ; preds = %if.end7
  %16 = ptrtoint ptr %feature.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %feature.i, align 4
  %and.i45 = and i32 %17, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i45)
  %tobool.not.i46 = icmp eq i32 %and.i45, 0
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10
  br i1 %tobool.not.i46, label %cond.false.i48, label %cond.true.i47

cond.true.i47:                                    ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit50

cond.false.i48:                                   ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit50

qdma_readl.exit50:                                ; preds = %cond.false.i48, %cond.true.i47
  %cond.i49 = phi i32 [ %18, %cond.true.i47 ], [ %19, %cond.false.i48 ]
  %or = or i32 %cond.i49, 1073741824
  %20 = ptrtoint ptr %feature.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %feature.i, align 4
  %and.i52 = and i32 %21, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i52)
  %tobool.not.i53 = icmp eq i32 %and.i52, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i53, label %cond.false.i54, label %do.body.i

do.body.i:                                        ; preds = %qdma_readl.exit50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %or) #10, !srcloc !170
  br label %qdma_writel.exit

cond.false.i54:                                   ; preds = %qdma_readl.exit50
  call void @__sanitizer_cov_trace_pc() #12
  %22 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 %22) #10, !srcloc !170
  br label %qdma_writel.exit

qdma_writel.exit:                                 ; preds = %cond.false.i54, %do.body.i
  %add.ptr13 = getelementptr i8, ptr %add.ptr, i32 224
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #10
  %dev18 = getelementptr inbounds %struct.dma_device, ptr %dev_id, i32 0, i32 15
  %23 = ptrtoint ptr %dev18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev18, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.61) #13
  br label %if.end19

if.end19:                                         ; preds = %qdma_writel.exit, %if.end7.if.end19_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3, i32 -1) #10
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fsl_qdma_queue_transfer_complete(ptr nocapture noundef readonly %fsl_qdma, ptr noundef %block, i32 noundef %id) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 10
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %queue, align 4
  %status = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 11
  %2 = ptrtoint ptr %status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %status, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %id
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %add.ptr = getelementptr i8, ptr %block, i32 2052
  %feature.i = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 9
  %n_queues = getelementptr inbounds %struct.fsl_qdma_engine, ptr %fsl_qdma, i32 0, i32 5
  %add.ptr145 = getelementptr i8, ptr %block, i32 2048
  %cq151 = getelementptr inbounds %struct.fsl_qdma_queue, ptr %5, i32 0, i32 10
  %n_cq152 = getelementptr inbounds %struct.fsl_qdma_queue, ptr %5, i32 0, i32 8
  %dev = getelementptr inbounds %struct.dma_device, ptr %fsl_qdma, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %while.cond.backedge.while.body_crit_edge, %entry
  %dec293 = phi i32 [ 16384, %entry ], [ %dec, %while.cond.backedge.while.body_crit_edge ]
  %6 = ptrtoint ptr %feature.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %feature.i, align 4
  %and.i = and i32 %7, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10
  br i1 %tobool.not.i, label %cond.false.i, label %cond.true.i

cond.true.i:                                      ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit

cond.false.i:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit

qdma_readl.exit:                                  ; preds = %cond.false.i, %cond.true.i
  %cond.i = phi i32 [ %8, %cond.true.i ], [ %9, %cond.false.i ]
  %and = and i32 %cond.i, 131072
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool1.not = icmp eq i32 %and, 0
  br i1 %tobool1.not, label %if.end, label %qdma_readl.exit.cleanup_crit_edge

qdma_readl.exit.cleanup_crit_edge:                ; preds = %qdma_readl.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %qdma_readl.exit
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %5, align 4
  %12 = getelementptr inbounds %struct.fsl_qdma_format, ptr %11, i32 0, i32 2
  %cfg8b_w1.i = getelementptr inbounds %struct.anon.76, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %cfg8b_w1.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %cfg8b_w1.i, align 1
  %15 = tail call i32 @llvm.read_register.i32(metadata !155) #10
  %and.i258 = and i32 %15, -16384
  %16 = inttoptr i32 %and.i258 to ptr
  %cpu = getelementptr inbounds %struct.thread_info, ptr %16, i32 0, i32 3
  %17 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cpu, align 4
  %arrayidx11 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %18
  %19 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %arrayidx11, align 4
  %add = add i32 %20, ptrtoint (ptr getelementptr inbounds (%struct.fsl_pre_status, ptr @pre, i32 0, i32 1) to i32)
  %21 = inttoptr i32 %add to ptr
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %21, align 1
  call void @__sanitizer_cov_trace_cmp1(i8 %14, i8 %23)
  %cmp = icmp eq i8 %14, %23
  br i1 %cmp, label %land.lhs.true, label %if.end.if.end38_crit_edge

if.end.if.end38_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add i32 %20, ptrtoint (ptr @pre to i32)
  %.pre296 = inttoptr i32 %.pre to ptr
  br label %if.end38

land.lhs.true:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %24, i32 8)
  %25 = load i64, ptr %12, align 1
  %26 = and i64 %25, -16777216
  %27 = tail call i64 @llvm.bswap.i64(i64 %26) #10
  %add33 = add i32 %20, ptrtoint (ptr @pre to i32)
  %28 = inttoptr i32 %add33 to ptr
  %29 = ptrtoint ptr %28 to i32
  call void @__asan_load8_noabort(i32 %29)
  %30 = load i64, ptr %28, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %27, i64 %30)
  %cmp35 = icmp eq i64 %27, %30
  br label %if.end38

if.end38:                                         ; preds = %land.lhs.true, %if.end.if.end38_crit_edge
  %.pre-phi = phi ptr [ %.pre296, %if.end.if.end38_crit_edge ], [ %28, %land.lhs.true ]
  %duplicate.0.off0 = phi i1 [ false, %if.end.if.end38_crit_edge ], [ %cmp35, %land.lhs.true ]
  %conv40 = zext i8 %14 to i32
  %31 = ptrtoint ptr %n_queues to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %n_queues, align 4
  %mul = mul i32 %32, %id
  %add41 = add i32 %mul, %conv40
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_loadN_noabort(i32 %33, i32 8)
  %34 = load i64, ptr %12, align 1
  %35 = and i64 %34, -16777216
  %36 = tail call i64 @llvm.bswap.i64(i64 %35) #10
  %37 = ptrtoint ptr %.pre-phi to i32
  call void @__asan_store8_noabort(i32 %37)
  store i64 %36, ptr %.pre-phi, align 8
  %38 = ptrtoint ptr %cfg8b_w1.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cfg8b_w1.i, align 1
  %40 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %cpu, align 4
  %arrayidx80 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %41
  %42 = ptrtoint ptr %arrayidx80 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %arrayidx80, align 4
  %add81 = add i32 %43, ptrtoint (ptr getelementptr inbounds (%struct.fsl_pre_status, ptr @pre, i32 0, i32 1) to i32)
  %44 = inttoptr i32 %add81 to ptr
  %45 = ptrtoint ptr %44 to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 %39, ptr %44, align 1
  %queue_lock = getelementptr %struct.fsl_qdma_queue, ptr %1, i32 %add41, i32 6
  tail call void @_raw_spin_lock(ptr noundef %queue_lock) #10
  %comp_used = getelementptr %struct.fsl_qdma_queue, ptr %1, i32 %add41, i32 2
  %46 = ptrtoint ptr %comp_used to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %comp_used, align 4
  %cmp.i.not = icmp eq ptr %47, %comp_used
  br i1 %cmp.i.not, label %if.then89, label %if.else

if.then89:                                        ; preds = %if.end38
  br i1 %duplicate.0.off0, label %if.then89.if.then128_crit_edge, label %if.then89.cleanup.sink.split_crit_edge

if.then89.cleanup.sink.split_crit_edge:           ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.then89.if.then128_crit_edge:                   ; preds = %if.then89
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then128

if.else:                                          ; preds = %if.end38
  %add.ptr96 = getelementptr i8, ptr %47, i32 -136
  %48 = ptrtoint ptr %add.ptr96 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %add.ptr96, align 4
  %add97 = add i32 %49, 16
  %conv98 = zext i32 %add97 to i64
  %50 = ptrtoint ptr %cpu to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %cpu, align 4
  %arrayidx115 = getelementptr [4 x i32], ptr @__per_cpu_offset, i32 0, i32 %51
  %52 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %arrayidx115, align 4
  %add116 = add i32 %53, ptrtoint (ptr @pre to i32)
  %54 = inttoptr i32 %add116 to ptr
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_load8_noabort(i32 %55)
  %56 = load i64, ptr %54, align 8
  call void @__sanitizer_cov_trace_cmp8(i64 %56, i64 %conv98)
  %cmp118.not = icmp eq i64 %56, %conv98
  %brmerge = select i1 %cmp118.not, i1 true, i1 %duplicate.0.off0
  br i1 %brmerge, label %if.end126, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.sink.split

if.end126:                                        ; preds = %if.else
  br i1 %duplicate.0.off0, label %if.end126.if.then128_crit_edge, label %if.end142

if.end126.if.then128_crit_edge:                   ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then128

if.then128:                                       ; preds = %if.end126.if.then128_crit_edge, %if.then89.if.then128_crit_edge
  %57 = ptrtoint ptr %feature.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %feature.i, align 4
  %and.i262 = and i32 %58, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i262)
  %tobool.not.i263 = icmp eq i32 %and.i262, 0
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #10
  br i1 %tobool.not.i263, label %cond.false.i265, label %cond.true.i264

cond.true.i264:                                   ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit267

cond.false.i265:                                  ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit267

qdma_readl.exit267:                               ; preds = %cond.false.i265, %cond.true.i264
  %cond.i266 = phi i32 [ %59, %cond.true.i264 ], [ %60, %cond.false.i265 ]
  %or = or i32 %cond.i266, 1073741824
  %addr_hi.i = getelementptr inbounds %struct.anon.76, ptr %12, i32 0, i32 1
  %61 = ptrtoint ptr %addr_hi.i to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 0, ptr %addr_hi.i, align 1
  %62 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %62, i32 4)
  store i32 0, ptr %12, align 1
  %63 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %5, align 4
  %incdec.ptr = getelementptr %struct.fsl_qdma_format, ptr %64, i32 1
  %65 = ptrtoint ptr %cq151 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %cq151, align 4
  %67 = ptrtoint ptr %n_cq152 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %n_cq152, align 4
  %add.ptr133 = getelementptr %struct.fsl_qdma_format, ptr %66, i32 %68
  %cmp134 = icmp eq ptr %incdec.ptr, %add.ptr133
  %spec.store.select = select i1 %cmp134, ptr %66, ptr %incdec.ptr
  store ptr %spec.store.select, ptr %5, align 4
  %69 = ptrtoint ptr %feature.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %feature.i, align 4
  %and.i269 = and i32 %70, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i269)
  %tobool.not.i270 = icmp eq i32 %and.i269, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i270, label %cond.false.i271, label %do.body.i

do.body.i:                                        ; preds = %qdma_readl.exit267
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 %or) #10, !srcloc !170
  br label %while.cond.backedge

cond.false.i271:                                  ; preds = %qdma_readl.exit267
  call void @__sanitizer_cov_trace_pc() #12
  %71 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 %71) #10, !srcloc !170
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %vchan_cookie_complete.exit, %cond.false.i271, %do.body.i
  %queue_lock.sink = phi ptr [ %lock192, %vchan_cookie_complete.exit ], [ %queue_lock, %do.body.i ], [ %queue_lock, %cond.false.i271 ]
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock.sink) #10
  %dec = add nsw i32 %dec293, -1
  %tobool.not = icmp eq i32 %dec293, 0
  br i1 %tobool.not, label %while.cond.backedge.cleanup_crit_edge, label %while.cond.backedge.while.body_crit_edge

while.cond.backedge.while.body_crit_edge:         ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end142:                                        ; preds = %if.end126
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %47) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end142.list_del.exit_crit_edge

if.end142.list_del.exit_crit_edge:                ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end142
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %72 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev.i.i, align 4
  %74 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %47, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev1.i.i.i, align 4
  %77 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %75, ptr %73, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end142.list_del.exit_crit_edge
  %78 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr inttoptr (i32 256 to ptr), ptr %47, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %79 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %80 = ptrtoint ptr %11 to i32
  call void @__asan_loadN_noabort(i32 %80, i32 4)
  %81 = load i32, ptr %11, align 1
  %82 = lshr i32 %81, 24
  %and.i272 = and i32 %82, 55
  %83 = ptrtoint ptr %feature.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %feature.i, align 4
  %and.i274 = and i32 %84, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i274)
  %tobool.not.i275 = icmp eq i32 %and.i274, 0
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr145) #10
  br i1 %tobool.not.i275, label %cond.false.i277, label %cond.true.i276

cond.true.i276:                                   ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !167
  br label %qdma_readl.exit279

cond.false.i277:                                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %86 = tail call i32 @llvm.bswap.i32(i32 %85) #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !168
  br label %qdma_readl.exit279

qdma_readl.exit279:                               ; preds = %cond.false.i277, %cond.true.i276
  %cond.i278 = phi i32 [ %85, %cond.true.i276 ], [ %86, %cond.false.i277 ]
  %or147 = or i32 %cond.i278, 1073741824
  %addr_hi.i280 = getelementptr inbounds %struct.anon.76, ptr %12, i32 0, i32 1
  %87 = ptrtoint ptr %addr_hi.i280 to i32
  call void @__asan_store1_noabort(i32 %87)
  store i8 0, ptr %addr_hi.i280, align 1
  %88 = ptrtoint ptr %12 to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 0, ptr %12, align 1
  %89 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %5, align 4
  %incdec.ptr149 = getelementptr %struct.fsl_qdma_format, ptr %90, i32 1
  %91 = ptrtoint ptr %cq151 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %cq151, align 4
  %93 = ptrtoint ptr %n_cq152 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %n_cq152, align 4
  %add.ptr153 = getelementptr %struct.fsl_qdma_format, ptr %92, i32 %94
  %cmp154 = icmp eq ptr %incdec.ptr149, %add.ptr153
  %spec.store.select257 = select i1 %cmp154, ptr %92, ptr %incdec.ptr149
  store ptr %spec.store.select257, ptr %5, align 4
  %95 = ptrtoint ptr %feature.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %feature.i, align 4
  %and.i282 = and i32 %96, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i282)
  %tobool.not.i283 = icmp eq i32 %and.i282, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  br i1 %tobool.not.i283, label %cond.false.i285, label %do.body.i284

do.body.i284:                                     ; preds = %qdma_readl.exit279
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 %or147) #10, !srcloc !170
  br label %qdma_writel.exit286

cond.false.i285:                                  ; preds = %qdma_readl.exit279
  call void @__sanitizer_cov_trace_pc() #12
  %97 = tail call i32 @llvm.bswap.i32(i32 %or147) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr145, i32 %97) #10, !srcloc !170
  br label %qdma_writel.exit286

qdma_writel.exit286:                              ; preds = %cond.false.i285, %do.body.i284
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i272)
  %tobool162.not = icmp eq i32 %and.i272, 0
  br i1 %tobool162.not, label %qdma_writel.exit286.if.end186_crit_edge, label %if.then163

qdma_writel.exit286.if.end186_crit_edge:          ; preds = %qdma_writel.exit286
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end186

if.then163:                                       ; preds = %qdma_writel.exit286
  %98 = and i32 %81, 268435456
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %98)
  %tobool166.not = icmp eq i32 %98, 0
  br i1 %tobool166.not, label %if.else168, label %if.then167

if.then167:                                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #12
  %tx_result = getelementptr i8, ptr %47, i32 -16
  %99 = ptrtoint ptr %tx_result to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 2, ptr %tx_result, align 4
  br label %if.end186

if.else168:                                       ; preds = %if.then163
  %100 = and i32 %81, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %100)
  %tobool171.not = icmp eq i32 %100, 0
  %tx_result178 = getelementptr i8, ptr %47, i32 -16
  br i1 %tobool171.not, label %if.else176, label %if.then172

if.then172:                                       ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %tx_result178 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 1, ptr %tx_result178, align 4
  br label %if.end186

if.else176:                                       ; preds = %if.else168
  call void @__sanitizer_cov_trace_pc() #12
  %102 = ptrtoint ptr %tx_result178 to i32
  call void @__asan_store4_noabort(i32 %102)
  store i32 3, ptr %tx_result178, align 4
  %103 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %104, ptr noundef nonnull @.str.65, i32 noundef %and.i272) #13
  br label %if.end186

if.end186:                                        ; preds = %if.else176, %if.then172, %if.then167, %qdma_writel.exit286.if.end186_crit_edge
  %qchan = getelementptr i8, ptr %47, i32 -120
  %105 = ptrtoint ptr %qchan to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %qchan, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %106, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %vdesc187 = getelementptr i8, ptr %47, i32 -116
  %chan.i = getelementptr i8, ptr %47, i32 -104
  %107 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %chan.i, align 4
  %109 = ptrtoint ptr %vdesc187 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %vdesc187, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %110)
  %cmp.i.i = icmp slt i32 %110, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !172

do.body2.i.i:                                     ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !173
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.end186
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %108, i32 0, i32 3
  %111 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %111)
  store i32 %110, ptr %completed_cookie.i.i, align 4
  %112 = ptrtoint ptr %vdesc187 to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %vdesc187, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsl_qdma_queue_transfer_complete, %do.end.i)) #10
          to label %if.then.i [label %do.end.i], !srcloc !174

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %108, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %114, i32 0, i32 15
  %115 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %116, ptr noundef nonnull @.str.70, ptr noundef %vdesc187, i32 noundef %110) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr i8, ptr %47, i32 -8
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %108, i32 0, i32 7
  %prev.i.i287 = getelementptr inbounds %struct.virt_dma_chan, ptr %108, i32 0, i32 7, i32 1
  %117 = ptrtoint ptr %prev.i.i287 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %prev.i.i287, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %118, ptr noundef %desc_completed.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %119 = ptrtoint ptr %prev.i.i287 to i32
  call void @__asan_store4_noabort(i32 %119)
  store ptr %node.i, ptr %prev.i.i287, align 4
  %120 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %120)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr i8, ptr %47, i32 -4
  %121 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %121)
  store ptr %118, ptr %prev3.i.i.i, align 4
  %122 = ptrtoint ptr %118 to i32
  call void @__asan_store4_noabort(i32 %122)
  store volatile ptr %node.i, ptr %118, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %108, i32 0, i32 1, i32 1
  %call.i.i288 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i288)
  %tobool.not.i.i = icmp eq i32 %call.i.i288, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %108, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #10
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %123 = ptrtoint ptr %qchan to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %qchan, align 4
  %status189 = getelementptr inbounds %struct.fsl_qdma_chan, ptr %124, i32 0, i32 2
  %125 = ptrtoint ptr %status189 to i32
  call void @__asan_store4_noabort(i32 %125)
  store i32 0, ptr %status189, align 4
  %126 = load ptr, ptr %qchan, align 4
  %lock192 = getelementptr inbounds %struct.virt_dma_chan, ptr %126, i32 0, i32 3
  br label %while.cond.backedge

cleanup.sink.split:                               ; preds = %if.else.cleanup.sink.split_crit_edge, %if.then89.cleanup.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %queue_lock) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %while.cond.backedge.cleanup_crit_edge, %qdma_readl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -11, %cleanup.sink.split ], [ 0, %qdma_readl.exit.cleanup_crit_edge ], [ 0, %while.cond.backedge.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind readonly
declare i32 @llvm.read_register.i32(metadata) #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i64 @llvm.bswap.i64(i64) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__irq_apply_affinity_hint(i32 noundef, ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_loadN_noabort(i32, i32)

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 77)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind readonly }
attributes #9 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !8, !10, !12, !13, !15, !17, !19, !21, !22, !23, !24, !25, !26, !27, !29, !31, !32, !33, !35, !37, !38, !39, !41, !43, !44, !45, !47, !48, !50, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !91, !93, !95, !96, !97, !98, !100, !102, !104, !105, !106, !108, !109, !110, !112, !113, !114, !115, !117, !118, !119, !120, !122, !123, !124, !126, !128, !130, !131, !132, !133, !135, !136, !137, !138, !139, !141, !143, !145, !146, !147, !148, !150, !151, !152, !153}
!llvm.named.register.sp = !{!155}
!llvm.module.flags = !{!156, !157, !158, !159, !160, !161, !162, !163}
!llvm.ident = !{!164}

!0 = !{ptr @__initcall__kmod_fsl_qdma__240_1308_fsl_qdma_driver_init6, !1, !"__initcall__kmod_fsl_qdma__240_1308_fsl_qdma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/fsl-qdma.c", i32 1308, i32 1}
!2 = !{ptr @__exitcall_fsl_qdma_driver_exit, !1, !"__exitcall_fsl_qdma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias241, !4, !"__UNIQUE_ID_alias241", i1 false, i1 false}
!4 = !{!"../drivers/dma/fsl-qdma.c", i32 1310, i32 1}
!5 = !{ptr @__UNIQUE_ID_file242, !6, !"__UNIQUE_ID_file242", i1 false, i1 false}
!6 = !{!"../drivers/dma/fsl-qdma.c", i32 1311, i32 1}
!7 = !{ptr @__UNIQUE_ID_license243, !6, !"__UNIQUE_ID_license243", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_description244, !9, !"__UNIQUE_ID_description244", i1 false, i1 false}
!9 = !{!"../drivers/dma/fsl-qdma.c", i32 1312, i32 1}
!10 = !{ptr @__pcpu_unique_pre, !11, !"__pcpu_unique_pre", i1 false, i1 false}
!11 = !{!"../drivers/dma/fsl-qdma.c", i32 173, i32 8}
!12 = !{ptr @pre, !11, !"pre", i1 false, i1 false}
!13 = !{ptr @.str, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/dma/fsl-qdma.c", i32 1301, i32 11}
!15 = !{ptr @fsl_qdma_driver, !16, !"fsl_qdma_driver", i1 false, i1 false}
!16 = !{!"../drivers/dma/fsl-qdma.c", i32 1299, i32 31}
!17 = !{ptr @.str.1, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/dma/fsl-qdma.c", i32 1127, i32 33}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/dma/fsl-qdma.c", i32 1129, i32 3}
!21 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !20, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !20, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @fsl_qdma_probe._entry, !20, !"_entry", i1 false, i1 false}
!26 = !{ptr @fsl_qdma_probe._entry_ptr, !20, !"_entry_ptr", i1 false, i1 false}
!27 = !{ptr @.str.7, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/dma/fsl-qdma.c", i32 1133, i32 33}
!29 = !{ptr @.str.9, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/dma/fsl-qdma.c", i32 1135, i32 3}
!31 = !{ptr @fsl_qdma_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @fsl_qdma_probe._entry_ptr.10, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.11, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/fsl-qdma.c", i32 1139, i32 33}
!35 = !{ptr @.str.13, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dma/fsl-qdma.c", i32 1141, i32 3}
!37 = !{ptr @fsl_qdma_probe._entry.12, !36, !"_entry", i1 false, i1 false}
!38 = !{ptr @fsl_qdma_probe._entry_ptr.14, !36, !"_entry_ptr", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/fsl-qdma.c", i32 1167, i32 33}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/fsl-qdma.c", i32 1169, i32 3}
!43 = !{ptr @fsl_qdma_probe._entry.16, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @fsl_qdma_probe._entry_ptr.18, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @fsl_qdma_probe.__key, !46, !"__key", i1 false, i1 false}
!46 = !{!"../drivers/dma/fsl-qdma.c", i32 1179, i32 2}
!47 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/fsl-qdma.c", i32 1208, i32 53}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/fsl-qdma.c", i32 1212, i32 48}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/fsl-qdma.c", i32 1240, i32 3}
!54 = !{ptr @fsl_qdma_probe._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @fsl_qdma_probe._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/fsl-qdma.c", i32 1248, i32 3}
!58 = !{ptr @fsl_qdma_probe._entry.25, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @fsl_qdma_probe._entry_ptr.27, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.29, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/fsl-qdma.c", i32 1255, i32 3}
!62 = !{ptr @fsl_qdma_probe._entry.28, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @fsl_qdma_probe._entry_ptr.30, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dma/fsl-qdma.c", i32 548, i32 33}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/fsl-qdma.c", i32 550, i32 3}
!68 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @fsl_qdma_prep_status_queue._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @fsl_qdma_prep_status_queue._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.35, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma/fsl-qdma.c", i32 555, i32 3}
!73 = !{ptr @fsl_qdma_prep_status_queue._entry.34, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @fsl_qdma_prep_status_queue._entry_ptr.36, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.37, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/fsl-qdma.c", i32 500, i32 51}
!77 = !{ptr @.str.38, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/dma/fsl-qdma.c", i32 503, i32 3}
!79 = !{ptr @.str.39, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @fsl_qdma_alloc_queue_resources._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @fsl_qdma_alloc_queue_resources._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.41, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/dma/fsl-qdma.c", i32 510, i32 5}
!84 = !{ptr @fsl_qdma_alloc_queue_resources._entry.40, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @fsl_qdma_alloc_queue_resources._entry_ptr.42, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @fsl_qdma_alloc_queue_resources.__key, !87, !"__key", i1 false, i1 false}
!87 = !{!"../drivers/dma/fsl-qdma.c", i32 534, i32 4}
!88 = !{ptr @.str.43, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/dma/fsl-qdma.c", i32 811, i32 33}
!91 = !{ptr @.str.45, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/dma/fsl-qdma.c", i32 817, i32 11}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/dma/fsl-qdma.c", i32 819, i32 3}
!95 = !{ptr @.str.47, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @fsl_qdma_irq_init._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @fsl_qdma_irq_init._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/dma/fsl-qdma.c", i32 824, i32 21}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/dma/fsl-qdma.c", i32 835, i32 12}
!102 = !{ptr @.str.51, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/dma/fsl-qdma.c", i32 838, i32 4}
!104 = !{ptr @fsl_qdma_irq_init._entry.50, !103, !"_entry", i1 false, i1 false}
!105 = !{ptr @fsl_qdma_irq_init._entry_ptr.52, !103, !"_entry_ptr", i1 false, i1 false}
!106 = !{ptr @.str.54, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/dma/fsl-qdma.c", i32 847, i32 4}
!108 = !{ptr @fsl_qdma_irq_init._entry.53, !107, !"_entry", i1 false, i1 false}
!109 = !{ptr @fsl_qdma_irq_init._entry_ptr.55, !107, !"_entry_ptr", i1 false, i1 false}
!110 = !{ptr @.str.56, !111, !"<string literal>", i1 false, i1 false}
!111 = !{!"../drivers/dma/fsl-qdma.c", i32 755, i32 3}
!112 = !{ptr @.str.57, !111, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @fsl_qdma_error_handler._entry, !111, !"_entry", i1 false, i1 false}
!114 = !{ptr @fsl_qdma_error_handler._entry_ptr, !111, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/dma/fsl-qdma.c", i32 773, i32 3}
!117 = !{ptr @.str.59, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @fsl_qdma_queue_handler._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @fsl_qdma_queue_handler._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{ptr @.str.61, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/dma/fsl-qdma.c", i32 791, i32 3}
!122 = !{ptr @fsl_qdma_queue_handler._entry.60, !121, !"_entry", i1 false, i1 false}
!123 = !{ptr @fsl_qdma_queue_handler._entry_ptr.62, !121, !"_entry_ptr", i1 false, i1 false}
!124 = distinct !{null, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/dma/fsl-qdma.c", i32 651, i32 6}
!126 = distinct !{null, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/dma/fsl-qdma.c", i32 657, i32 3}
!128 = !{ptr @.str.65, !129, !"<string literal>", i1 false, i1 false}
!129 = !{!"../drivers/dma/fsl-qdma.c", i32 723, i32 5}
!130 = !{ptr @.str.66, !129, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @fsl_qdma_queue_transfer_complete._entry, !129, !"_entry", i1 false, i1 false}
!132 = !{ptr @fsl_qdma_queue_transfer_complete._entry_ptr, !129, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.67, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!135 = !{ptr @.str.68, !134, !"<string literal>", i1 false, i1 false}
!136 = !{ptr @.str.69, !134, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @.str.70, !134, !"<string literal>", i1 false, i1 false}
!138 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, !134, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!139 = !{ptr @.str.71, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/dma/fsl-qdma.c", i32 1082, i32 18}
!141 = !{ptr @.str.72, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/dma/fsl-qdma.c", i32 1093, i32 18}
!143 = !{ptr @.str.73, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/dma/fsl-qdma.c", i32 1102, i32 3}
!145 = !{ptr @.str.74, !144, !"<string literal>", i1 false, i1 false}
!146 = !{ptr @fsl_qdma_alloc_chan_resources._entry, !144, !"_entry", i1 false, i1 false}
!147 = !{ptr @fsl_qdma_alloc_chan_resources._entry_ptr, !144, !"_entry_ptr", i1 false, i1 false}
!148 = !{ptr @.str.75, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/dma/fsl-qdma.c", i32 880, i32 3}
!150 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @fsl_qdma_reg_init._entry, !149, !"_entry", i1 false, i1 false}
!152 = !{ptr @fsl_qdma_reg_init._entry_ptr, !149, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @fsl_qdma_dt_ids, !154, !"fsl_qdma_dt_ids", i1 false, i1 false}
!154 = !{!"../drivers/dma/fsl-qdma.c", i32 1293, i32 34}
!155 = !{!"sp"}
!156 = !{i32 1, !"wchar_size", i32 2}
!157 = !{i32 1, !"min_enum_size", i32 4}
!158 = !{i32 8, !"branch-target-enforcement", i32 0}
!159 = !{i32 8, !"sign-return-address", i32 0}
!160 = !{i32 8, !"sign-return-address-all", i32 0}
!161 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!162 = !{i32 7, !"uwtable", i32 1}
!163 = !{i32 7, !"frame-pointer", i32 2}
!164 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!165 = !{!"auto-init"}
!166 = !{i64 2154415655}
!167 = !{i64 2154484017}
!168 = !{i64 2152159457}
!169 = !{i64 2154567047}
!170 = !{i64 4618690}
!171 = !{i32 0, i32 33}
!172 = !{!"branch_weights", i32 1, i32 2000}
!173 = !{i64 2154414155, i64 2154414642, i64 2154414192, i64 2154414248, i64 2154414282, i64 2154414306, i64 2154414347, i64 2154414368, i64 2154414396, i64 2154414430}
!174 = !{i64 2148988032, i64 2148988037, i64 2148988050, i64 2148988094, i64 2148988128, i64 2148988149}
