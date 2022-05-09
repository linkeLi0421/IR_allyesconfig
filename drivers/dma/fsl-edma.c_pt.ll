; ModuleID = '/llk/IR_all_yes/drivers/dma/fsl-edma.c_pt.bc'
source_filename = "../drivers/dma/fsl-edma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.fsl_edma_drvdata = type { i32, i32, i8, i8, ptr }
%struct.atomic_t = type { i32 }
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
%struct.fsl_edma_engine = type { %struct.dma_device, ptr, [2 x ptr], [2 x ptr], ptr, %struct.mutex, ptr, i32, i32, i32, i8, %struct.edma_regs, [0 x %struct.fsl_edma_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.edma_regs = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.fsl_edma_chan = type { %struct.virt_dma_chan, i32, i32, i8, i32, ptr, ptr, %struct.dma_slave_config, i32, i8, ptr, i32, i32, i32, [16 x i8] }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.fsl_edma_hw_tcd = type { i32, i16, i16, i32, i32, i32, i16, i16, i32, i16, i16 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.fsl_edma_desc = type { %struct.virt_dma_desc, ptr, i8, i32, i32, [0 x %struct.fsl_edma_sw_tcd] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.fsl_edma_sw_tcd = type { i32, ptr }

@__initcall__kmod_fsl_edma__239_509_fsl_edma_init4 = internal global ptr @fsl_edma_init, section ".initcall4.init", align 4
@fsl_edma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @fsl_edma_probe, ptr @fsl_edma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @fsl_edma_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_edma_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_fsl_edma_exit = internal global ptr @fsl_edma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias240 = internal constant [33 x i8] c"fsl_edma.alias=platform:fsl-edma\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [50 x i8] c"fsl_edma.description=Freescale eDMA engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [35 x i8] c"fsl_edma.file=drivers/dma/fsl-edma\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [24 x i8] c"fsl_edma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsl-edma\00", [23 x i8] zeroinitializer }, align 32
@fsl_edma_dt_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,vf610-edma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @vf610_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,ls1028a-edma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ls1028a_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx7ulp-edma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @imx7ulp_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@fsl_edma_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @fsl_edma_suspend_late, ptr @fsl_edma_resume_early, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@fsl_edma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 282, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to find driver data\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"fsl_edma_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/fsl-edma.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@fsl_edma_probe._entry_ptr = internal global ptr @fsl_edma_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@fsl_edma_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 288, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't get dma-channels.\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_edma_probe._entry_ptr.9 = internal global ptr @fsl_edma_probe._entry.7, section ".printk_index", align 4
@fsl_edma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"&fsl_edma->fsl_edma_mutex\00", [38 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dma\00", [28 x i8] zeroinitializer }, align 32
@fsl_edma_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 312, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Missing DMA block clock.\0A\00", [38 x i8] zeroinitializer }, align 32
@fsl_edma_probe._entry_ptr.14 = internal global ptr @fsl_edma_probe._entry.12, section ".printk_index", align 4
@fsl_edma_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DMA clk block failed.\0A\00", [41 x i8] zeroinitializer }, align 32
@fsl_edma_probe._entry_ptr.17 = internal global ptr @fsl_edma_probe._entry.15, section ".printk_index", align 4
@.str.18 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"dmamux%d\00", [23 x i8] zeroinitializer }, align 32
@fsl_edma_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 337, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Missing DMAMUX block clock.\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_edma_probe._entry_ptr.21 = internal global ptr @fsl_edma_probe._entry.19, section ".printk_index", align 4
@.str.22 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"big-endian\00", [21 x i8] zeroinitializer }, align 32
@fsl_edma_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 407, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Can't register Freescale eDMA engine. (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@fsl_edma_probe._entry_ptr.25 = internal global ptr @fsl_edma_probe._entry.23, section ".printk_index", align 4
@fsl_edma_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 415, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Can't register Freescale eDMA of_dma. (%d)\0A\00", [52 x i8] zeroinitializer }, align 32
@fsl_edma_probe._entry_ptr.28 = internal global ptr @fsl_edma_probe._entry.26, section ".printk_index", align 4
@vf610_data = internal global { %struct.fsl_edma_drvdata, [16 x i8] } { %struct.fsl_edma_drvdata { i32 0, i32 2, i8 0, i8 0, ptr @fsl_edma_irq_init }, [16 x i8] zeroinitializer }, align 32
@ls1028a_data = internal global { %struct.fsl_edma_drvdata, [16 x i8] } { %struct.fsl_edma_drvdata { i32 0, i32 2, i8 0, i8 1, ptr @fsl_edma_irq_init }, [16 x i8] zeroinitializer }, align 32
@imx7ulp_data = internal global { %struct.fsl_edma_drvdata, [16 x i8] } { %struct.fsl_edma_drvdata { i32 2, i32 1, i8 1, i8 0, ptr @fsl_edma2_irq_init }, [16 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"edma-tx\00", [24 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"edma-err\00", [23 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"eDMA\00", [27 x i8] zeroinitializer }, align 32
@fsl_edma_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Can't register eDMA IRQ.\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"fsl_edma_irq_init\00", [46 x i8] zeroinitializer }, align 32
@fsl_edma_irq_init._entry_ptr = internal global ptr @fsl_edma_irq_init._entry, section ".printk_index", align 4
@.str.34 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"eDMA tx\00", [24 x i8] zeroinitializer }, align 32
@fsl_edma_irq_init._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.33, ptr @.str.3, i32 161, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Can't register eDMA tx IRQ.\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_edma_irq_init._entry_ptr.37 = internal global ptr @fsl_edma_irq_init._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"eDMA err\00", [23 x i8] zeroinitializer }, align 32
@fsl_edma_irq_init._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.33, ptr @.str.3, i32 168, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Can't register eDMA err IRQ.\0A\00", [34 x i8] zeroinitializer }, align 32
@fsl_edma_irq_init._entry_ptr.41 = internal global ptr @fsl_edma_irq_init._entry.39, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"fsl_edma\00", [23 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@fsl_edma2_irq_init.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.42, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 46, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"fsl_edma2_irq_init\00", [45 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s Found %d interrupts\0D\0A\00", [39 x i8] zeroinitializer }, align 32
@fsl_edma2_irq_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.46, ptr @.str.3, i32 186, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Interrupts in DTS not correct.\0A\00", [32 x i8] zeroinitializer }, align 32
@fsl_edma2_irq_init._entry_ptr = internal global ptr @fsl_edma2_irq_init._entry, section ".printk_index", align 4
@.str.49 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"eDMA2-CH%02d\00", [19 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"eDMA2-ERR\00", [22 x i8] zeroinitializer }, align 32
@fsl_edma_suspend_late._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.51, ptr @.str.52, ptr @.str.3, i32 453, ptr @.str.53, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"WARN: There is non-idle channel.\00", [63 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"fsl_edma_suspend_late\00", [42 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@fsl_edma_suspend_late._entry_ptr = internal global ptr @fsl_edma_suspend_late._entry, section ".printk_index", align 4
@___asan_gen_.54 = private unnamed_addr constant [16 x i8] c"fsl_edma_driver\00", align 1
@___asan_gen_.56 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 495, i32 31 }
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 497, i32 11 }
@___asan_gen_.60 = private unnamed_addr constant [16 x i8] c"fsl_edma_dt_ids\00", align 1
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 258, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant [16 x i8] c"fsl_edma_pm_ops\00", align 1
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 490, i32 32 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 282, i32 3 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 286, i32 33 }
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 288, i32 3 }
@___asan_gen_.93 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 299, i32 2 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 310, i32 47 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 312, i32 4 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 318, i32 4 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 334, i32 20 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 337, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 350, i32 51 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 406, i32 3 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 414, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant [11 x i8] c"vf610_data\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 238, i32 32 }
@___asan_gen_.141 = private unnamed_addr constant [13 x i8] c"ls1028a_data\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 244, i32 32 }
@___asan_gen_.144 = private unnamed_addr constant [13 x i8] c"imx7ulp_data\00", align 1
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 251, i32 32 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 142, i32 50 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 146, i32 51 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 152, i32 30 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 154, i32 4 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 159, i32 29 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 161, i32 4 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 166, i32 30 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 168, i32 4 }
@___asan_gen_.193 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.193, i32 101, i32 2 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 184, i32 2 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 186, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 200, i32 41 }
@___asan_gen_.212 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 206, i32 10 }
@___asan_gen_.213 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.222 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.223 = private constant [26 x i8] c"../drivers/dma/fsl-edma.c\00", align 1
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.223, i32 453, i32 4 }
@llvm.compiler.used = appending global [76 x ptr] [ptr @__UNIQUE_ID_alias240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_fsl_edma_exit, ptr @__initcall__kmod_fsl_edma__239_509_fsl_edma_init4, ptr @fsl_edma2_irq_init._entry, ptr @fsl_edma2_irq_init._entry_ptr, ptr @fsl_edma_exit, ptr @fsl_edma_irq_init._entry, ptr @fsl_edma_irq_init._entry.35, ptr @fsl_edma_irq_init._entry.39, ptr @fsl_edma_irq_init._entry_ptr, ptr @fsl_edma_irq_init._entry_ptr.37, ptr @fsl_edma_irq_init._entry_ptr.41, ptr @fsl_edma_probe._entry, ptr @fsl_edma_probe._entry.12, ptr @fsl_edma_probe._entry.15, ptr @fsl_edma_probe._entry.19, ptr @fsl_edma_probe._entry.23, ptr @fsl_edma_probe._entry.26, ptr @fsl_edma_probe._entry.7, ptr @fsl_edma_probe._entry_ptr, ptr @fsl_edma_probe._entry_ptr.14, ptr @fsl_edma_probe._entry_ptr.17, ptr @fsl_edma_probe._entry_ptr.21, ptr @fsl_edma_probe._entry_ptr.25, ptr @fsl_edma_probe._entry_ptr.28, ptr @fsl_edma_probe._entry_ptr.9, ptr @fsl_edma_suspend_late._entry, ptr @fsl_edma_suspend_late._entry_ptr, ptr @fsl_edma_driver, ptr @.str, ptr @fsl_edma_dt_ids, ptr @fsl_edma_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @fsl_edma_probe.__key, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @vf610_data, ptr @ls1028a_data, ptr @imx7ulp_data, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.40, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53], section "llvm.metadata"
@0 = internal global [57 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_dt_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @vf610_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ls1028a_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx7ulp_data to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_irq_init._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_irq_init._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma2_irq_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @fsl_edma_suspend_late._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_edma_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @fsl_edma_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @fsl_edma_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @fsl_edma_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_edma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %chans = alloca i32, align 4
  %clkname = alloca [32 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_match_device(ptr noundef nonnull @fsl_edma_dt_ids, ptr noundef %dev) #7
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %chans) #7
  %2 = ptrtoint ptr %chans to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %chans, align 4, !annotation !124
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.do.end_crit_edge, label %if.end

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %3 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %data, align 4
  %tobool2.not = icmp eq ptr %4, null
  br i1 %tobool2.not, label %if.end.do.end_crit_edge, label %if.end5

if.end.do.end_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end:                                           ; preds = %if.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup163

if.end5:                                          ; preds = %if.end
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.6, ptr noundef nonnull %chans, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool7.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool7.not, label %if.end13, label %do.end11

do.end11:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #10
  br label %cleanup163

if.end13:                                         ; preds = %if.end5
  %5 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %chans, align 4
  %mul = mul i32 %6, 292
  %add = add i32 %mul, 576
  %call.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add, i32 noundef 3520) #7
  %tobool16.not = icmp eq ptr %call.i, null
  br i1 %tobool16.not, label %if.end13.cleanup163_crit_edge, label %if.end18

if.end13.cleanup163_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup163

if.end18:                                         ; preds = %if.end13
  %drvdata19 = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 6
  %7 = ptrtoint ptr %drvdata19 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %drvdata19, align 4
  %8 = ptrtoint ptr %chans to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chans, align 4
  %n_chans = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 7
  %10 = ptrtoint ptr %n_chans to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %n_chans, align 4
  %fsl_edma_mutex = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 5
  call void @__mutex_init(ptr noundef %fsl_edma_mutex, ptr noundef nonnull @.str.10, ptr noundef nonnull @fsl_edma_probe.__key) #7
  %call23 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #7
  %call25 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call23) #7
  %membase = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 1
  %11 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call25, ptr %membase, align 4
  %cmp.i = icmp ugt ptr %call25, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then28, label %if.end31

if.then28:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %call25 to i32
  br label %cleanup163

if.end31:                                         ; preds = %if.end18
  call void @fsl_edma_setup_regs(ptr noundef nonnull %call.i) #7
  %regs32 = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 11
  %has_dmaclk = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %4, i32 0, i32 2
  %13 = ptrtoint ptr %has_dmaclk to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %has_dmaclk, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool33.not = icmp eq i8 %14, 0
  br i1 %tobool33.not, label %if.end31.if.end56_crit_edge, label %if.then34

if.end31.if.end56_crit_edge:                      ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then34:                                        ; preds = %if.end31
  %call36 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.11) #7
  %dmaclk = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 4
  %15 = ptrtoint ptr %dmaclk to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call36, ptr %dmaclk, align 4
  %cmp.i300 = icmp ugt ptr %call36, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i300, label %do.end42, label %if.end46

do.end42:                                         ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13) #10
  %16 = ptrtoint ptr %dmaclk to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dmaclk, align 4
  %18 = ptrtoint ptr %17 to i32
  br label %cleanup163

if.end46:                                         ; preds = %if.then34
  %call.i301 = call i32 @clk_prepare(ptr noundef %call36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i301)
  %tobool.not.i = icmp eq i32 %call.i301, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end46.do.end53_crit_edge

if.end46.do.end53_crit_edge:                      ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end53

if.end.i:                                         ; preds = %if.end46
  %call1.i = call i32 @clk_enable(ptr noundef %call36) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end.i.if.end56_crit_edge, label %if.then3.i

if.end.i.if.end56_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call36) #7
  br label %do.end53

do.end53:                                         ; preds = %if.then3.i, %if.end46.do.end53_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i301, %if.end46.do.end53_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %cleanup163

if.end56:                                         ; preds = %if.end.i.if.end56_crit_edge, %if.end31.if.end56_crit_edge
  %19 = ptrtoint ptr %drvdata19 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %drvdata19, align 4
  %dmamuxs354 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %dmamuxs354 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dmamuxs354, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp355.not = icmp eq i32 %22, 0
  br i1 %cmp355.not, label %if.end56.for.end_crit_edge, label %if.end56.for.body_crit_edge

if.end56.for.body_crit_edge:                      ; preds = %if.end56
  br label %for.body

if.end56.for.end_crit_edge:                       ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end56.for.body_crit_edge
  %i.0356 = phi i32 [ %add58, %cleanup.for.body_crit_edge ], [ 0, %if.end56.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %clkname) #7
  %add58 = add nuw i32 %i.0356, 1
  %23 = call ptr @memset(ptr %clkname, i32 255, i32 32)
  %call59 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef %add58) #7
  %call61 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call59) #7
  %arrayidx = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 2, i32 %i.0356
  %24 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call61, ptr %arrayidx, align 4
  %cmp.i302 = icmp ugt ptr %call61, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i302, label %if.then65, label %if.end69

if.then65:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0356)
  %cmp3.i = icmp sgt i32 %i.0356, 0
  br i1 %cmp3.i, label %if.then65.for.body.i_crit_edge, label %if.then65.cleanup.thread_crit_edge

if.then65.cleanup.thread_crit_edge:               ; preds = %if.then65
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.then65.for.body.i_crit_edge:                   ; preds = %if.then65
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.then65.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %if.then65.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 3, i32 %i.04.i
  %25 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx.i, align 4
  call void @clk_disable(ptr noundef %26) #7
  call void @clk_unprepare(ptr noundef %26) #7
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %i.0356
  br i1 %exitcond.not.i, label %for.body.i.cleanup.thread_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.cleanup.thread_crit_edge:              ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end69:                                         ; preds = %for.body
  %call70 = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %clkname, ptr noundef nonnull @.str.18, i32 noundef %i.0356)
  %call73 = call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull %clkname) #7
  %arrayidx74 = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 3, i32 %i.0356
  %27 = ptrtoint ptr %arrayidx74 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call73, ptr %arrayidx74, align 4
  %cmp.i303 = icmp ugt ptr %call73, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i303, label %do.end81, label %if.end86

do.end81:                                         ; preds = %if.end69
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0356)
  %cmp3.i304 = icmp sgt i32 %i.0356, 0
  br i1 %cmp3.i304, label %do.end81.for.body.i309_crit_edge, label %do.end81.cleanup.thread_crit_edge

do.end81.cleanup.thread_crit_edge:                ; preds = %do.end81
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

do.end81.for.body.i309_crit_edge:                 ; preds = %do.end81
  br label %for.body.i309

for.body.i309:                                    ; preds = %for.body.i309.for.body.i309_crit_edge, %do.end81.for.body.i309_crit_edge
  %i.04.i305 = phi i32 [ %inc.i307, %for.body.i309.for.body.i309_crit_edge ], [ 0, %do.end81.for.body.i309_crit_edge ]
  %arrayidx.i306 = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 3, i32 %i.04.i305
  %28 = ptrtoint ptr %arrayidx.i306 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx.i306, align 4
  call void @clk_disable(ptr noundef %29) #7
  call void @clk_unprepare(ptr noundef %29) #7
  %inc.i307 = add nuw nsw i32 %i.04.i305, 1
  %exitcond.not.i308 = icmp eq i32 %inc.i307, %i.0356
  br i1 %exitcond.not.i308, label %for.body.i309.cleanup.thread_crit_edge, label %for.body.i309.for.body.i309_crit_edge

for.body.i309.for.body.i309_crit_edge:            ; preds = %for.body.i309
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i309

for.body.i309.cleanup.thread_crit_edge:           ; preds = %for.body.i309
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread

if.end86:                                         ; preds = %if.end69
  %call.i311 = call i32 @clk_prepare(ptr noundef %call73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i311)
  %tobool.not.i312 = icmp eq i32 %call.i311, 0
  br i1 %tobool.not.i312, label %if.end.i315, label %if.end86.if.then91_crit_edge

if.end86.if.then91_crit_edge:                     ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then91

if.end.i315:                                      ; preds = %if.end86
  %call1.i313 = call i32 @clk_enable(ptr noundef %call73) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i313)
  %tobool2.not.i314 = icmp eq i32 %call1.i313, 0
  br i1 %tobool2.not.i314, label %if.end.i315.cleanup_crit_edge, label %if.then3.i316

if.end.i315.cleanup_crit_edge:                    ; preds = %if.end.i315
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3.i316:                                    ; preds = %if.end.i315
  call void @__sanitizer_cov_trace_pc() #9
  call void @clk_unprepare(ptr noundef %call73) #7
  br label %if.then91

if.then91:                                        ; preds = %if.then3.i316, %if.end86.if.then91_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0356)
  %cmp3.i319 = icmp sgt i32 %i.0356, 0
  br i1 %cmp3.i319, label %if.then91.for.body.i324_crit_edge, label %if.then91.cleanup_crit_edge

if.then91.cleanup_crit_edge:                      ; preds = %if.then91
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then91.for.body.i324_crit_edge:                ; preds = %if.then91
  br label %for.body.i324

for.body.i324:                                    ; preds = %for.body.i324.for.body.i324_crit_edge, %if.then91.for.body.i324_crit_edge
  %i.04.i320 = phi i32 [ %inc.i322, %for.body.i324.for.body.i324_crit_edge ], [ 0, %if.then91.for.body.i324_crit_edge ]
  %arrayidx.i321 = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 3, i32 %i.04.i320
  %30 = ptrtoint ptr %arrayidx.i321 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.i321, align 4
  call void @clk_disable(ptr noundef %31) #7
  call void @clk_unprepare(ptr noundef %31) #7
  %inc.i322 = add nuw nsw i32 %i.04.i320, 1
  %exitcond.not.i323 = icmp eq i32 %inc.i322, %i.0356
  br i1 %exitcond.not.i323, label %for.body.i324.cleanup_crit_edge, label %for.body.i324.for.body.i324_crit_edge

for.body.i324.for.body.i324_crit_edge:            ; preds = %for.body.i324
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i324

for.body.i324.cleanup_crit_edge:                  ; preds = %for.body.i324
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.thread:                                   ; preds = %for.body.i309.cleanup.thread_crit_edge, %do.end81.cleanup.thread_crit_edge, %for.body.i.cleanup.thread_crit_edge, %if.then65.cleanup.thread_crit_edge
  %retval.1.ph.in.in = phi ptr [ %arrayidx, %if.then65.cleanup.thread_crit_edge ], [ %arrayidx74, %do.end81.cleanup.thread_crit_edge ], [ %arrayidx, %for.body.i.cleanup.thread_crit_edge ], [ %arrayidx74, %for.body.i309.cleanup.thread_crit_edge ]
  %32 = ptrtoint ptr %retval.1.ph.in.in to i32
  call void @__asan_load4_noabort(i32 %32)
  %retval.1.ph.in = load ptr, ptr %retval.1.ph.in.in, align 4
  %retval.1.ph = ptrtoint ptr %retval.1.ph.in to i32
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clkname) #7
  br label %cleanup163

cleanup:                                          ; preds = %for.body.i324.cleanup_crit_edge, %if.then91.cleanup_crit_edge, %if.end.i315.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %clkname) #7
  %33 = ptrtoint ptr %drvdata19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %drvdata19, align 4
  %dmamuxs = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %dmamuxs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dmamuxs, align 4
  %cmp = icmp ult i32 %add58, %36
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end56.for.end_crit_edge
  %call.i326 = call ptr @of_find_property(ptr noundef %1, ptr noundef nonnull @.str.22, ptr noundef null) #7
  %tobool.i = icmp ne ptr %call.i326, null
  %big_endian = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 10
  %frombool = zext i1 %tobool.i to i8
  %37 = ptrtoint ptr %big_endian to i32
  call void @__asan_store1_noabort(i32 %37)
  store i8 %frombool, ptr %big_endian, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %38 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %channels, ptr %prev.i, align 4
  %40 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %n_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp96357.not = icmp eq i32 %41, 0
  br i1 %cmp96357.not, label %for.end.for.end106_crit_edge, label %for.body97.lr.ph

for.end.for.end106_crit_edge:                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end106

for.body97.lr.ph:                                 ; preds = %for.end
  %tcd = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 11, i32 18
  br label %for.body97

for.body97:                                       ; preds = %edma_writew.exit.for.body97_crit_edge, %for.body97.lr.ph
  %i.1358 = phi i32 [ 0, %for.body97.lr.ph ], [ %inc105, %edma_writew.exit.for.body97_crit_edge ]
  %arrayidx100 = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 12, i32 %i.1358
  %edma = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 12, i32 %i.1358, i32 5
  %42 = ptrtoint ptr %edma to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %call.i, ptr %edma, align 4
  %pm_state = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 12, i32 %i.1358, i32 2
  %43 = ptrtoint ptr %pm_state to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 0, ptr %pm_state, align 4
  %slave_id = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 12, i32 %i.1358, i32 4
  %44 = ptrtoint ptr %slave_id to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %slave_id, align 4
  %idle = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 12, i32 %i.1358, i32 3
  %45 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 1, ptr %idle, align 4
  %dma_dir = getelementptr %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 12, i32 %i.1358, i32 13
  %46 = ptrtoint ptr %dma_dir to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 3, ptr %dma_dir, align 4
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx100, i32 0, i32 2
  %47 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @fsl_edma_free_desc, ptr %desc_free, align 4
  call void @vchan_init(ptr noundef %arrayidx100, ptr noundef nonnull %call.i) #7
  %48 = ptrtoint ptr %tcd to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %tcd, align 4
  %csr = getelementptr %struct.fsl_edma_hw_tcd, ptr %49, i32 %i.1358, i32 9
  %50 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %big_endian, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool.not.i327 = icmp eq i8 %51, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i327, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %csr to i32
  %xor.i = xor i32 %52, 2
  %53 = inttoptr i32 %xor.i to ptr
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %53, i16 0) #7, !srcloc !126
  br label %edma_writew.exit

if.else.i:                                        ; preds = %for.body97
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %csr, i16 0) #7, !srcloc !126
  br label %edma_writew.exit

edma_writew.exit:                                 ; preds = %if.else.i, %do.body.i
  call void @fsl_edma_chan_mux(ptr noundef %arrayidx100, i32 noundef 0, i1 noundef zeroext false) #7
  %inc105 = add nuw i32 %i.1358, 1
  %54 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %n_chans, align 4
  %cmp96 = icmp ult i32 %inc105, %55
  br i1 %cmp96, label %edma_writew.exit.for.body97_crit_edge, label %edma_writew.exit.for.end106_crit_edge

edma_writew.exit.for.end106_crit_edge:            ; preds = %edma_writew.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end106

edma_writew.exit.for.body97_crit_edge:            ; preds = %edma_writew.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body97

for.end106:                                       ; preds = %edma_writew.exit.for.end106_crit_edge, %for.end.for.end106_crit_edge
  %intl = getelementptr inbounds %struct.fsl_edma_engine, ptr %call.i, i32 0, i32 11, i32 15
  %56 = ptrtoint ptr %intl to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %intl, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 -1) #7
  %58 = ptrtoint ptr %drvdata19 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %drvdata19, align 4
  %setup_irq = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %59, i32 0, i32 4
  %60 = ptrtoint ptr %setup_irq to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %setup_irq, align 4
  %call108 = call i32 %61(ptr noundef %pdev, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call108)
  %tobool109.not = icmp eq i32 %call108, 0
  br i1 %tobool109.not, label %if.end111, label %for.end106.cleanup163_crit_edge

for.end106.cleanup163_crit_edge:                  ; preds = %for.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup163

if.end111:                                        ; preds = %for.end106
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #7
  call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #7
  call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #7
  call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #7
  %dev121 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %62 = ptrtoint ptr %dev121 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %dev, ptr %dev121, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %63 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @fsl_edma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %64 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @fsl_edma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %65 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @fsl_edma_tx_status, ptr %device_tx_status, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %66 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @fsl_edma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 40
  %67 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @fsl_edma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %68 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @fsl_edma_prep_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %69 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @fsl_edma_slave_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 45
  %70 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @fsl_edma_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 46
  %71 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @fsl_edma_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %72 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @fsl_edma_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 48
  %73 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @fsl_edma_synchronize, ptr %device_synchronize, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %74 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @fsl_edma_issue_pending, ptr %device_issue_pending, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %75 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 278, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %76 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 278, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %77 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 6, ptr %directions, align 4
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 10
  %78 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 5, ptr %copy_align, align 4
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %79 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i334 = icmp eq ptr %80, null
  br i1 %tobool.not.i334, label %if.end111.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

if.end111.dma_set_max_seg_size.exit_crit_edge:    ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %if.end111
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 16383, ptr %80, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %if.end111.dma_set_max_seg_size.exit_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %82 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call142 = call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call142)
  %tobool143.not = icmp eq i32 %call142, 0
  br i1 %tobool143.not, label %if.end151, label %do.end147

do.end147:                                        ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call142) #10
  %83 = ptrtoint ptr %drvdata19 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %drvdata19, align 4
  %dmamuxs150 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %84, i32 0, i32 1
  %85 = ptrtoint ptr %dmamuxs150 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dmamuxs150, align 4
  call fastcc void @fsl_disable_clocks(ptr noundef nonnull %call.i, i32 noundef %86)
  br label %cleanup163

if.end151:                                        ; preds = %dma_set_max_seg_size.exit
  %call152 = call i32 @of_dma_controller_register(ptr noundef %1, ptr noundef nonnull @fsl_edma_xlate, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call152)
  %tobool153.not = icmp eq i32 %call152, 0
  br i1 %tobool153.not, label %if.end162, label %do.end157

do.end157:                                        ; preds = %if.end151
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call152) #10
  call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #7
  %87 = ptrtoint ptr %drvdata19 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %drvdata19, align 4
  %dmamuxs161 = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %88, i32 0, i32 1
  %89 = ptrtoint ptr %dmamuxs161 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %dmamuxs161, align 4
  call fastcc void @fsl_disable_clocks(ptr noundef nonnull %call.i, i32 noundef %90)
  br label %cleanup163

if.end162:                                        ; preds = %if.end151
  %91 = ptrtoint ptr %regs32 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %regs32, align 4
  %93 = ptrtoint ptr %big_endian to i32
  call void @__asan_load1_noabort(i32 %93)
  %94 = load i8, ptr %big_endian, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %94)
  %tobool.not.i336 = icmp eq i8 %94, 0
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  call void @arm_heavy_mb() #7
  br i1 %tobool.not.i336, label %if.else.i338, label %do.body.i337

do.body.i337:                                     ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 12) #7, !srcloc !127
  br label %cleanup163

if.else.i338:                                     ; preds = %if.end162
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %92, i32 201326592) #7, !srcloc !127
  br label %cleanup163

cleanup163:                                       ; preds = %if.else.i338, %do.body.i337, %do.end157, %do.end147, %for.end106.cleanup163_crit_edge, %cleanup.thread, %do.end53, %do.end42, %if.then28, %if.end13.cleanup163_crit_edge, %do.end11, %do.end
  %retval.2 = phi i32 [ %call.i.i, %do.end11 ], [ %12, %if.then28 ], [ %18, %do.end42 ], [ %retval.0.i.ph, %do.end53 ], [ %call142, %do.end147 ], [ %call152, %do.end157 ], [ -22, %do.end ], [ -12, %if.end13.cleanup163_crit_edge ], [ %call108, %for.end106.cleanup163_crit_edge ], [ %retval.1.ph, %cleanup.thread ], [ 0, %do.body.i337 ], [ 0, %if.else.i338 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %chans) #7
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_edma_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %txirq.i = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 8
  %4 = ptrtoint ptr %txirq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txirq.i, align 4
  %errirq.i = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 9
  %6 = ptrtoint ptr %errirq.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %errirq.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.i = icmp eq i32 %5, %7
  %dev.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @devm_free_irq(ptr noundef %dev.i, i32 noundef %5, ptr noundef %3) #7
  br i1 %cmp.i, label %entry.fsl_edma_irq_exit.exit_crit_edge, label %if.else.i

entry.fsl_edma_irq_exit.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsl_edma_irq_exit.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %errirq.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %errirq.i, align 4
  tail call void @devm_free_irq(ptr noundef %dev.i, i32 noundef %9, ptr noundef %3) #7
  br label %fsl_edma_irq_exit.exit

fsl_edma_irq_exit.exit:                           ; preds = %if.else.i, %entry.fsl_edma_irq_exit.exit_crit_edge
  tail call void @fsl_edma_cleanup_vchan(ptr noundef %3) #7
  tail call void @of_dma_controller_free(ptr noundef %1) #7
  tail call void @dma_async_device_unregister(ptr noundef %3) #7
  %drvdata = getelementptr inbounds %struct.fsl_edma_engine, ptr %3, i32 0, i32 6
  %10 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %drvdata, align 4
  %dmamuxs = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %dmamuxs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dmamuxs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp3.i = icmp sgt i32 %13, 0
  br i1 %cmp3.i, label %fsl_edma_irq_exit.exit.for.body.i_crit_edge, label %fsl_edma_irq_exit.exit.fsl_disable_clocks.exit_crit_edge

fsl_edma_irq_exit.exit.fsl_disable_clocks.exit_crit_edge: ; preds = %fsl_edma_irq_exit.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsl_disable_clocks.exit

fsl_edma_irq_exit.exit.for.body.i_crit_edge:      ; preds = %fsl_edma_irq_exit.exit
  br label %for.body.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %fsl_edma_irq_exit.exit.for.body.i_crit_edge
  %i.04.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %fsl_edma_irq_exit.exit.for.body.i_crit_edge ]
  %arrayidx.i = getelementptr %struct.fsl_edma_engine, ptr %3, i32 0, i32 3, i32 %i.04.i
  %14 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %13
  br i1 %exitcond.not.i, label %for.body.i.fsl_disable_clocks.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.body.i.fsl_disable_clocks.exit_crit_edge:     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %fsl_disable_clocks.exit

fsl_disable_clocks.exit:                          ; preds = %for.body.i.fsl_disable_clocks.exit_crit_edge, %fsl_edma_irq_exit.exit.fsl_disable_clocks.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_setup_regs(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @fsl_disable_clocks(ptr nocapture noundef readonly %fsl_edma, i32 noundef %nr_clocks) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nr_clocks)
  %cmp3 = icmp sgt i32 %nr_clocks, 0
  br i1 %cmp3, label %entry.for.body_crit_edge, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.04 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fsl_edma_engine, ptr %fsl_edma, i32 0, i32 3, i32 %i.04
  %0 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %arrayidx, align 4
  tail call void @clk_disable(ptr noundef %1) #7
  tail call void @clk_unprepare(ptr noundef %1) #7
  %inc = add nuw nsw i32 %i.04, 1
  %exitcond.not = icmp eq i32 %inc, %nr_clocks
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_free_desc(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_chan_mux(ptr noundef, i32 noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_alloc_chan_resources(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_free_chan_resources(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_tx_status(ptr noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_edma_prep_slave_sg(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_edma_prep_dma_cyclic(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @fsl_edma_prep_memcpy(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_slave_config(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_pause(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_resume(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @fsl_edma_terminate_all(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @fsl_edma_synchronize(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i) #7
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %3 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_terminated.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_synchronize.exit_crit_edge, label %if.then.i.i

entry.vchan_synchronize.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %vchan_synchronize.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #7
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #7
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_issue_pending(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @fsl_edma_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %drvdata = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 6
  %2 = ptrtoint ptr %drvdata to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %drvdata, align 4
  %dmamuxs = getelementptr inbounds %struct.fsl_edma_drvdata, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %dmamuxs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dmamuxs, align 4
  %n_chans = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_chans, align 4
  %div = udiv i32 %7, %5
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %8 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.not = icmp eq i32 %9, 2
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %fsl_edma_mutex = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 5
  tail call void @mutex_lock_nested(ptr noundef %fsl_edma_mutex, i32 noundef 0) #7
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %channels, align 4
  %cmp8.not56 = icmp eq ptr %11, %channels
  br i1 %cmp8.not56, label %if.end.cleanup.sink.split_crit_edge, label %for.body.lr.ph

if.end.cleanup.sink.split_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

for.body.lr.ph:                                   ; preds = %if.end
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in57 = phi ptr [ %11, %for.body.lr.ph ], [ %.pn59, %for.inc.for.body_crit_edge ]
  %chan.058 = getelementptr i8, ptr %.pn.in57, i32 -32
  %12 = ptrtoint ptr %.pn.in57 to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn59 = load ptr, ptr %.pn.in57, align 4
  %client_count = getelementptr i8, ptr %.pn.in57, i32 12
  %13 = ptrtoint ptr %client_count to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %client_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not = icmp eq i32 %14, 0
  br i1 %tobool.not, label %if.end10, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %chan_id = getelementptr i8, ptr %.pn.in57, i32 -16
  %15 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chan_id, align 4
  %div11 = udiv i32 %16, %div
  %17 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %div11, i32 %18)
  %cmp12 = icmp eq i32 %div11, %18
  br i1 %cmp12, label %if.then13, label %if.end10.for.inc_crit_edge

if.end10.for.inc_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then13:                                        ; preds = %if.end10
  %call = tail call ptr @dma_get_slave_channel(ptr noundef %chan.058) #7
  %tobool14.not = icmp eq ptr %call, null
  br i1 %tobool14.not, label %if.then13.for.inc_crit_edge, label %if.then15

if.then13.for.inc_crit_edge:                      ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then15:                                        ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %call, align 4
  %privatecnt = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %privatecnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %privatecnt, align 4
  %inc = add i32 %22, 1
  store i32 %inc, ptr %privatecnt, align 4
  %arrayidx18 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %23 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %arrayidx18, align 4
  %slave_id = getelementptr inbounds %struct.fsl_edma_chan, ptr %call, i32 0, i32 4
  %25 = ptrtoint ptr %slave_id to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %slave_id, align 4
  tail call void @fsl_edma_chan_mux(ptr noundef nonnull %call, i32 noundef %24, i1 noundef zeroext true) #7
  br label %cleanup.sink.split

for.inc:                                          ; preds = %if.then13.for.inc_crit_edge, %if.end10.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %cmp8.not = icmp eq ptr %.pn59, %channels
  br i1 %cmp8.not, label %for.inc.cleanup.sink.split_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.cleanup.sink.split_crit_edge:             ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %for.inc.cleanup.sink.split_crit_edge, %if.then15, %if.end.cleanup.sink.split_crit_edge
  %retval.0.ph = phi ptr [ %call, %if.then15 ], [ null, %if.end.cleanup.sink.split_crit_edge ], [ null, %for.inc.cleanup.sink.split_crit_edge ]
  tail call void @mutex_unlock(ptr noundef %fsl_edma_mutex) #7
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %entry.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_cleanup_vchan(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_edma_irq_init(ptr noundef %pdev, ptr noundef %fsl_edma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.29) #7
  %txirq = getelementptr inbounds %struct.fsl_edma_engine, ptr %fsl_edma, i32 0, i32 8
  %0 = ptrtoint ptr %txirq to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %call, ptr %txirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.30) #7
  %errirq = getelementptr inbounds %struct.fsl_edma_engine, ptr %fsl_edma, i32 0, i32 9
  %1 = ptrtoint ptr %errirq to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %call3, ptr %errirq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp5 = icmp slt i32 %call3, 0
  br i1 %cmp5, label %if.end.cleanup_crit_edge, label %if.end8

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %2 = ptrtoint ptr %txirq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %txirq, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %call3)
  %cmp11 = icmp eq i32 %3, %call3
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br i1 %cmp11, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end8
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call3, ptr noundef nonnull @fsl_edma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.31, ptr noundef %fsl_edma) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.then12.cleanup_crit_edge, label %if.then12.cleanup.sink.split_crit_edge

if.then12.cleanup.sink.split_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.then12.cleanup_crit_edge:                      ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else:                                          ; preds = %if.end8
  %call.i64 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %3, ptr noundef nonnull @fsl_edma_tx_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.34, ptr noundef %fsl_edma) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i64)
  %tobool21.not = icmp eq i32 %call.i64, 0
  br i1 %tobool21.not, label %if.end27, label %if.else.cleanup.sink.split_crit_edge

if.else.cleanup.sink.split_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end27:                                         ; preds = %if.else
  %4 = ptrtoint ptr %errirq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %errirq, align 4
  %call.i65 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %5, ptr noundef nonnull @fsl_edma_err_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.38, ptr noundef %fsl_edma) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i65)
  %tobool31.not = icmp eq i32 %call.i65, 0
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %if.end27.cleanup.sink.split_crit_edge

if.end27.cleanup.sink.split_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.sink.split

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup.sink.split:                               ; preds = %if.end27.cleanup.sink.split_crit_edge, %if.else.cleanup.sink.split_crit_edge, %if.then12.cleanup.sink.split_crit_edge
  %.str.40.sink = phi ptr [ @.str.32, %if.then12.cleanup.sink.split_crit_edge ], [ @.str.36, %if.else.cleanup.sink.split_crit_edge ], [ @.str.40, %if.end27.cleanup.sink.split_crit_edge ]
  %retval.0.ph = phi i32 [ %call.i, %if.then12.cleanup.sink.split_crit_edge ], [ %call.i64, %if.else.cleanup.sink.split_crit_edge ], [ %call.i65, %if.end27.cleanup.sink.split_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.40.sink) #10
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end27.cleanup_crit_edge, %if.then12.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call3, %if.end.cleanup_crit_edge ], [ 0, %if.end27.cleanup_crit_edge ], [ 0, %if.then12.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_edma_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @fsl_edma_tx_handler(i32 noundef %irq, ptr noundef %dev_id)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call)
  %cmp = icmp eq i32 %call, 1
  br i1 %cmp, label %entry.return_crit_edge, label %if.end

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %return

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %call1 = tail call i32 @fsl_edma_err_handler(i32 noundef %irq, ptr noundef %dev_id)
  br label %return

return:                                           ; preds = %if.end, %entry.return_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ 1, %entry.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_edma_tx_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %intl = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 11, i32 15
  %0 = ptrtoint ptr %intl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %intl, align 4
  %big_endian.i = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 10
  %2 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %big_endian.i, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  br label %edma_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  br label %edma_readl.exit

edma_readl.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ %5, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %edma_readl.exit.cleanup_crit_edge, label %for.cond.preheader

edma_readl.exit.cleanup_crit_edge:                ; preds = %edma_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %edma_readl.exit
  %n_chans = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 7
  %6 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp67.not = icmp eq i32 %7, 0
  br i1 %cmp67.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cint = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 11, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ch.068 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %ch.068
  %and = and i32 %shl, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then3:                                         ; preds = %for.body
  %8 = trunc i32 %ch.068 to i8
  %conv = and i8 %8, 31
  %9 = ptrtoint ptr %cint to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cint, align 4
  %11 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %big_endian.i, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i54 = icmp eq i8 %12, 0
  br i1 %tobool.not.i54, label %if.else.i56, label %if.then.i55

if.then.i55:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %10 to i32
  %xor.i = xor i32 %13, 3
  %14 = inttoptr i32 %xor.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %conv) #7, !srcloc !131
  br label %edma_writeb.exit

if.else.i56:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 %conv) #7, !srcloc !131
  br label %edma_writeb.exit

edma_writeb.exit:                                 ; preds = %if.else.i56, %if.then.i55
  %arrayidx = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.068
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #7
  %edesc = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.068, i32 6
  %15 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %edesc, align 4
  %tobool5.not = icmp eq ptr %16, null
  br i1 %tobool5.not, label %edma_writeb.exit.for.inc.sink.split_crit_edge, label %if.end9

edma_writeb.exit.for.inc.sink.split_crit_edge:    ; preds = %edma_writeb.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

if.end9:                                          ; preds = %edma_writeb.exit
  %iscyclic = getelementptr inbounds %struct.fsl_edma_desc, ptr %16, i32 0, i32 2
  %17 = ptrtoint ptr %iscyclic to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %iscyclic, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool11.not = icmp eq i8 %18, 0
  br i1 %tobool11.not, label %if.then12, label %if.else

if.then12:                                        ; preds = %if.end9
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %16, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.list_del.exit_crit_edge

if.then12.list_del.exit_crit_edge:                ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %16, i32 0, i32 2, i32 1
  %19 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev.i.i, align 4
  %21 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %22, ptr %20, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then12.list_del.exit_crit_edge
  %25 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_desc, ptr %16, i32 0, i32 2, i32 1
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %27 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %edesc, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chan.i, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %28, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i.i = icmp slt i32 %32, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !132

do.body2.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #7, !srcloc !133
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %list_del.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %30, i32 0, i32 3
  %33 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %completed_cookie.i.i, align 4
  %34 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %28, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsl_edma_tx_handler, %do.end.i)) #7
          to label %if.then.i57 [label %do.end.i], !srcloc !134

if.then.i57:                                      ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %30, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %36, i32 0, i32 15
  %37 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %38, ptr noundef nonnull @.str.45, ptr noundef %28, i32 noundef %32) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i57, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %28, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %30, i32 0, i32 7
  %prev.i.i58 = getelementptr inbounds %struct.virt_dma_chan, ptr %30, i32 0, i32 7, i32 1
  %39 = ptrtoint ptr %prev.i.i58 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i58, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %40, ptr noundef %desc_completed.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %41 = ptrtoint ptr %prev.i.i58 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %node.i, ptr %prev.i.i58, align 4
  %42 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %28, i32 0, i32 2, i32 1
  %43 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev3.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %node.i, ptr %40, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %30, i32 0, i32 1, i32 1
  %call.i.i59 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i59)
  %tobool.not.i.i = icmp eq i32 %call.i.i59, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.if.end19.thread_crit_edge

list_add_tail.exit.i.if.end19.thread_crit_edge:   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19.thread

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %30, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #7
  br label %if.end19.thread

if.end19.thread:                                  ; preds = %if.then.i.i, %list_add_tail.exit.i.if.end19.thread_crit_edge
  %45 = ptrtoint ptr %edesc to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %edesc, align 4
  %status = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.068, i32 1
  %46 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 0, ptr %status, align 4
  %idle = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.068, i32 3
  %47 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %idle, align 4
  br label %if.then22

if.else:                                          ; preds = %if.end9
  %chan.i60 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %16, i32 0, i32 3
  %48 = ptrtoint ptr %chan.i60 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chan.i60, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %49, i32 0, i32 9
  %50 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %16, ptr %cyclic.i, align 4
  %state.i.i61 = getelementptr inbounds %struct.virt_dma_chan, ptr %49, i32 0, i32 1, i32 1
  %call.i.i62 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i61) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i62)
  %tobool.not.i.i63 = icmp eq i32 %call.i.i62, 0
  br i1 %tobool.not.i.i63, label %if.then.i.i65, label %if.else.if.end19_crit_edge

if.else.if.end19_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then.i.i65:                                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  %task.i64 = getelementptr inbounds %struct.virt_dma_chan, ptr %49, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i64) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then.i.i65, %if.else.if.end19_crit_edge
  %51 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %51)
  %.pr = load ptr, ptr %edesc, align 4
  %tobool21.not = icmp eq ptr %.pr, null
  br i1 %tobool21.not, label %if.end19.if.then22_crit_edge, label %if.end19.for.inc.sink.split_crit_edge

if.end19.for.inc.sink.split_crit_edge:            ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.sink.split

if.end19.if.then22_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then22

if.then22:                                        ; preds = %if.end19.if.then22_crit_edge, %if.end19.thread
  tail call void @fsl_edma_xfer_desc(ptr noundef %arrayidx) #7
  br label %for.inc.sink.split

for.inc.sink.split:                               ; preds = %if.then22, %if.end19.for.inc.sink.split_crit_edge, %edma_writeb.exit.for.inc.sink.split_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #7
  br label %for.inc

for.inc:                                          ; preds = %for.inc.sink.split, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %ch.068, 1
  %52 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %n_chans, align 4
  %cmp = icmp ult i32 %inc, %53
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %edma_readl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %edma_readl.exit.cleanup_crit_edge ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_edma_err_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %errl = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 11, i32 17
  %0 = ptrtoint ptr %errl to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %errl, align 4
  %big_endian.i = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 10
  %2 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %big_endian.i, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #7
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  br label %edma_readl.exit

if.else.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  br label %edma_readl.exit

edma_readl.exit:                                  ; preds = %if.else.i, %if.then.i
  %retval.0.i = phi i32 [ %4, %if.then.i ], [ %5, %if.else.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i)
  %tobool.not = icmp eq i32 %retval.0.i, 0
  br i1 %tobool.not, label %edma_readl.exit.cleanup_crit_edge, label %for.cond.preheader

edma_readl.exit.cleanup_crit_edge:                ; preds = %edma_readl.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.cond.preheader:                               ; preds = %edma_readl.exit
  %n_chans = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 7
  %6 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %n_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp31.not = icmp eq i32 %7, 0
  br i1 %cmp31.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %cerr = getelementptr inbounds %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 11, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %ch.032 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %ch.032
  %and = and i32 %shl, %retval.0.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool2.not = icmp eq i32 %and, 0
  br i1 %tobool2.not, label %for.body.for.inc_crit_edge, label %if.then3

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then3:                                         ; preds = %for.body
  %arrayidx = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.032
  tail call void @fsl_edma_disable_request(ptr noundef %arrayidx) #7
  %8 = trunc i32 %ch.032 to i8
  %conv = and i8 %8, 31
  %9 = ptrtoint ptr %cerr to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cerr, align 4
  %11 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %big_endian.i, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %12)
  %tobool.not.i28 = icmp eq i8 %12, 0
  br i1 %tobool.not.i28, label %if.else.i30, label %if.then.i29

if.then.i29:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %10 to i32
  %xor.i = xor i32 %13, 3
  %14 = inttoptr i32 %xor.i to ptr
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %14, i8 %conv) #7, !srcloc !131
  br label %edma_writeb.exit

if.else.i30:                                      ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  tail call void @arm_heavy_mb() #7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %10, i8 %conv) #7, !srcloc !131
  br label %edma_writeb.exit

edma_writeb.exit:                                 ; preds = %if.else.i30, %if.then.i29
  %status = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.032, i32 1
  %15 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 3, ptr %status, align 4
  %idle = getelementptr %struct.fsl_edma_engine, ptr %dev_id, i32 0, i32 12, i32 %ch.032, i32 3
  %16 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 1, ptr %idle, align 4
  br label %for.inc

for.inc:                                          ; preds = %edma_writeb.exit, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %ch.032, 1
  %17 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %n_chans, align 4
  %cmp = icmp ult i32 %inc, %18
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %edma_readl.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %edma_readl.exit.cleanup_crit_edge ], [ 1, %for.cond.preheader.cleanup_crit_edge ], [ 1, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @fsl_edma_xfer_desc(ptr noundef) local_unnamed_addr #1

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
declare dso_local void @fsl_edma_disable_request(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_edma2_irq_init(ptr noundef %pdev, ptr noundef %fsl_edma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_irq_count(ptr noundef %pdev) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @fsl_edma2_irq_init.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@fsl_edma2_irq_init, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !134

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @fsl_edma2_irq_init.__UNIQUE_ID_ddebug238, ptr noundef %dev, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %call) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %call)
  %cmp = icmp slt i32 %call, 3
  br i1 %cmp, label %do.end8, label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %do.end
  %sub = add nsw i32 %call, -1
  %dev21 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  br label %for.body

do.end8:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev9 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev9, ptr noundef nonnull @.str.48) #10
  br label %cleanup

for.cond:                                         ; preds = %if.end27
  %inc = add nuw nsw i32 %i.057, 1
  %exitcond.not = icmp eq i32 %inc, %call
  br i1 %exitcond.not, label %for.cond.cleanup_crit_edge, label %for.cond.for.body_crit_edge

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.cond.cleanup_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.057 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %call12 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef %i.057) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %for.body.cleanup_crit_edge, label %if.end15

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end15:                                         ; preds = %for.body
  %chan_name = getelementptr %struct.fsl_edma_engine, ptr %fsl_edma, i32 0, i32 12, i32 %i.057, i32 14
  %call16 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %chan_name, ptr noundef nonnull @.str.49, i32 noundef %i.057)
  call void @__sanitizer_cov_trace_cmp4(i32 %i.057, i32 %sub)
  %cmp17 = icmp eq i32 %i.057, %sub
  br i1 %cmp17, label %if.then18, label %if.else

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call.i = tail call i32 @devm_request_threaded_irq(ptr noundef %dev21, i32 noundef %call12, ptr noundef nonnull @fsl_edma_err_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.50, ptr noundef %fsl_edma) #7
  br label %if.end27

if.else:                                          ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  %call.i54 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev21, i32 noundef %call12, ptr noundef nonnull @fsl_edma_tx_handler, ptr noundef null, i32 noundef 0, ptr noundef %chan_name, ptr noundef %fsl_edma) #7
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.then18
  %ret.0 = phi i32 [ %call.i, %if.then18 ], [ %call.i54, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool28.not = icmp eq i32 %ret.0, 0
  br i1 %tobool28.not, label %for.cond, label %if.end27.cleanup_crit_edge

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %if.end27.cleanup_crit_edge, %for.body.cleanup_crit_edge, %for.cond.cleanup_crit_edge, %do.end8
  %retval.0 = phi i32 [ -22, %do.end8 ], [ -6, %for.body.cleanup_crit_edge ], [ %ret.0, %if.end27.cleanup_crit_edge ], [ 0, %for.cond.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_irq_count(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_edma_suspend_late(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %n_chans = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp24.not = icmp eq i32 %3, 0
  br i1 %cmp24.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end.for.body_crit_edge, %entry.for.body_crit_edge
  %i.025 = phi i32 [ %inc, %if.end.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.fsl_edma_engine, ptr %1, i32 0, i32 12, i32 %i.025
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %idle = getelementptr %struct.fsl_edma_engine, ptr %1, i32 0, i32 12, i32 %i.025, i32 3
  %4 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %idle, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %do.end12, label %for.body.if.end_crit_edge, !prof !132

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end12:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.51) #10
  tail call void @fsl_edma_disable_request(ptr noundef %arrayidx) #7
  tail call void @fsl_edma_chan_mux(ptr noundef %arrayidx, i32 noundef 0, i1 noundef zeroext false) #7
  br label %if.end

if.end:                                           ; preds = %do.end12, %for.body.if.end_crit_edge
  %pm_state = getelementptr %struct.fsl_edma_engine, ptr %1, i32 0, i32 12, i32 %i.025, i32 2
  %6 = ptrtoint ptr %pm_state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 1, ptr %pm_state, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  %inc = add nuw i32 %i.025, 1
  %7 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %n_chans, align 4
  %cmp = icmp ult i32 %inc, %8
  br i1 %cmp, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %if.end.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @fsl_edma_resume_early(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %n_chans = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_chans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp20.not = icmp eq i32 %3, 0
  br i1 %cmp20.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %tcd = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 11, i32 18
  %big_endian.i = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.021 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %pm_state = getelementptr %struct.fsl_edma_engine, ptr %1, i32 0, i32 12, i32 %i.021, i32 2
  %4 = ptrtoint ptr %pm_state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %pm_state, align 4
  %5 = ptrtoint ptr %tcd to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tcd, align 4
  %csr = getelementptr %struct.fsl_edma_hw_tcd, ptr %6, i32 %i.021, i32 9
  %7 = ptrtoint ptr %big_endian.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %big_endian.i, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool.not.i = icmp eq i8 %8, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i, label %if.else.i, label %do.body.i

do.body.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %csr to i32
  %xor.i = xor i32 %9, 2
  %10 = inttoptr i32 %xor.i to ptr
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %10, i16 0) #7, !srcloc !126
  br label %edma_writew.exit

if.else.i:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %csr, i16 0) #7, !srcloc !126
  br label %edma_writew.exit

edma_writew.exit:                                 ; preds = %if.else.i, %do.body.i
  %slave_id = getelementptr %struct.fsl_edma_engine, ptr %1, i32 0, i32 12, i32 %i.021, i32 4
  %11 = ptrtoint ptr %slave_id to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slave_id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp3.not = icmp eq i32 %12, 0
  br i1 %cmp3.not, label %edma_writew.exit.for.inc_crit_edge, label %if.then

edma_writew.exit.for.inc_crit_edge:               ; preds = %edma_writew.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then:                                          ; preds = %edma_writew.exit
  call void @__sanitizer_cov_trace_pc() #9
  %arrayidx = getelementptr %struct.fsl_edma_engine, ptr %1, i32 0, i32 12, i32 %i.021
  tail call void @fsl_edma_chan_mux(ptr noundef %arrayidx, i32 noundef %12, i1 noundef zeroext true) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then, %edma_writew.exit.for.inc_crit_edge
  %inc = add nuw i32 %i.021, 1
  %13 = ptrtoint ptr %n_chans to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %n_chans, align 4
  %cmp = icmp ult i32 %inc, %14
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %regs1 = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 11
  %15 = ptrtoint ptr %regs1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs1, align 4
  %big_endian.i16 = getelementptr inbounds %struct.fsl_edma_engine, ptr %1, i32 0, i32 10
  %17 = ptrtoint ptr %big_endian.i16 to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %big_endian.i16, align 4, !range !125
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool.not.i17 = icmp eq i8 %18, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7
  tail call void @arm_heavy_mb() #7
  br i1 %tobool.not.i17, label %if.else.i19, label %do.body.i18

do.body.i18:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 12) #7, !srcloc !127
  br label %edma_writel.exit

if.else.i19:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %16, i32 201326592) #7, !srcloc !127
  br label %edma_writel.exit

edma_writel.exit:                                 ; preds = %if.else.i19, %do.body.i18
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 57)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !29, !31, !32, !34, !36, !37, !38, !40, !41, !42, !44, !46, !47, !48, !50, !52, !53, !54, !56, !57, !58, !60, !62, !64, !66, !68, !70, !71, !72, !73, !75, !77, !78, !79, !81, !83, !84, !85, !87, !88, !89, !90, !91, !93, !95, !97, !98, !99, !101, !102, !103, !105, !107, !109, !111, !112, !113, !114}
!llvm.module.flags = !{!115, !116, !117, !118, !119, !120, !121, !122}
!llvm.ident = !{!123}

!0 = !{ptr @__initcall__kmod_fsl_edma__239_509_fsl_edma_init4, !1, !"__initcall__kmod_fsl_edma__239_509_fsl_edma_init4", i1 false, i1 false}
!1 = !{!"../drivers/dma/fsl-edma.c", i32 509, i32 1}
!2 = !{ptr @__exitcall_fsl_edma_exit, !3, !"__exitcall_fsl_edma_exit", i1 false, i1 false}
!3 = !{!"../drivers/dma/fsl-edma.c", i32 515, i32 1}
!4 = !{ptr @__UNIQUE_ID_alias240, !5, !"__UNIQUE_ID_alias240", i1 false, i1 false}
!5 = !{!"../drivers/dma/fsl-edma.c", i32 517, i32 1}
!6 = !{ptr @__UNIQUE_ID_description241, !7, !"__UNIQUE_ID_description241", i1 false, i1 false}
!7 = !{!"../drivers/dma/fsl-edma.c", i32 518, i32 1}
!8 = !{ptr @__UNIQUE_ID_file242, !9, !"__UNIQUE_ID_file242", i1 false, i1 false}
!9 = !{!"../drivers/dma/fsl-edma.c", i32 519, i32 1}
!10 = !{ptr @__UNIQUE_ID_license243, !9, !"__UNIQUE_ID_license243", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/dma/fsl-edma.c", i32 497, i32 11}
!13 = !{ptr @fsl_edma_driver, !14, !"fsl_edma_driver", i1 false, i1 false}
!14 = !{!"../drivers/dma/fsl-edma.c", i32 495, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/dma/fsl-edma.c", i32 282, i32 3}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @fsl_edma_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @fsl_edma_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/dma/fsl-edma.c", i32 286, i32 33}
!25 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/fsl-edma.c", i32 288, i32 3}
!27 = !{ptr @fsl_edma_probe._entry.7, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @fsl_edma_probe._entry_ptr.9, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @fsl_edma_probe.__key, !30, !"__key", i1 false, i1 false}
!30 = !{!"../drivers/dma/fsl-edma.c", i32 299, i32 2}
!31 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/fsl-edma.c", i32 310, i32 47}
!34 = !{ptr @.str.13, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/fsl-edma.c", i32 312, i32 4}
!36 = !{ptr @fsl_edma_probe._entry.12, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @fsl_edma_probe._entry_ptr.14, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/fsl-edma.c", i32 318, i32 4}
!40 = !{ptr @fsl_edma_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @fsl_edma_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dma/fsl-edma.c", i32 334, i32 20}
!44 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/fsl-edma.c", i32 337, i32 4}
!46 = !{ptr @fsl_edma_probe._entry.19, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @fsl_edma_probe._entry_ptr.21, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/fsl-edma.c", i32 350, i32 51}
!50 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/fsl-edma.c", i32 406, i32 3}
!52 = !{ptr @fsl_edma_probe._entry.23, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @fsl_edma_probe._entry_ptr.25, !51, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma/fsl-edma.c", i32 414, i32 3}
!56 = !{ptr @fsl_edma_probe._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @fsl_edma_probe._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @fsl_edma_dt_ids, !59, !"fsl_edma_dt_ids", i1 false, i1 false}
!59 = !{!"../drivers/dma/fsl-edma.c", i32 258, i32 34}
!60 = !{ptr @vf610_data, !61, !"vf610_data", i1 false, i1 false}
!61 = !{!"../drivers/dma/fsl-edma.c", i32 238, i32 32}
!62 = !{ptr @.str.29, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/dma/fsl-edma.c", i32 142, i32 50}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dma/fsl-edma.c", i32 146, i32 51}
!66 = !{ptr @.str.31, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/fsl-edma.c", i32 152, i32 30}
!68 = !{ptr @.str.32, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/dma/fsl-edma.c", i32 154, i32 4}
!70 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @fsl_edma_irq_init._entry, !69, !"_entry", i1 false, i1 false}
!72 = !{ptr @fsl_edma_irq_init._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.34, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dma/fsl-edma.c", i32 159, i32 29}
!75 = !{ptr @.str.36, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/fsl-edma.c", i32 161, i32 4}
!77 = !{ptr @fsl_edma_irq_init._entry.35, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @fsl_edma_irq_init._entry_ptr.37, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/dma/fsl-edma.c", i32 166, i32 30}
!81 = !{ptr @.str.40, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/dma/fsl-edma.c", i32 168, i32 4}
!83 = !{ptr @fsl_edma_irq_init._entry.39, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @fsl_edma_irq_init._entry_ptr.41, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.42, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!87 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, !86, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!91 = !{ptr @ls1028a_data, !92, !"ls1028a_data", i1 false, i1 false}
!92 = !{!"../drivers/dma/fsl-edma.c", i32 244, i32 32}
!93 = !{ptr @imx7ulp_data, !94, !"imx7ulp_data", i1 false, i1 false}
!94 = !{!"../drivers/dma/fsl-edma.c", i32 251, i32 32}
!95 = !{ptr @.str.46, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/dma/fsl-edma.c", i32 184, i32 2}
!97 = !{ptr @.str.47, !96, !"<string literal>", i1 false, i1 false}
!98 = !{ptr @fsl_edma2_irq_init.__UNIQUE_ID_ddebug238, !96, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!99 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/dma/fsl-edma.c", i32 186, i32 3}
!101 = !{ptr @fsl_edma2_irq_init._entry, !100, !"_entry", i1 false, i1 false}
!102 = !{ptr @fsl_edma2_irq_init._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @.str.49, !104, !"<string literal>", i1 false, i1 false}
!104 = !{!"../drivers/dma/fsl-edma.c", i32 200, i32 41}
!105 = !{ptr @.str.50, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/dma/fsl-edma.c", i32 206, i32 10}
!107 = !{ptr @fsl_edma_pm_ops, !108, !"fsl_edma_pm_ops", i1 false, i1 false}
!108 = !{!"../drivers/dma/fsl-edma.c", i32 490, i32 32}
!109 = !{ptr @.str.51, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/dma/fsl-edma.c", i32 453, i32 4}
!111 = !{ptr @.str.52, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!113 = !{ptr @fsl_edma_suspend_late._entry, !110, !"_entry", i1 false, i1 false}
!114 = !{ptr @fsl_edma_suspend_late._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!115 = !{i32 1, !"wchar_size", i32 2}
!116 = !{i32 1, !"min_enum_size", i32 4}
!117 = !{i32 8, !"branch-target-enforcement", i32 0}
!118 = !{i32 8, !"sign-return-address", i32 0}
!119 = !{i32 8, !"sign-return-address-all", i32 0}
!120 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!121 = !{i32 7, !"uwtable", i32 1}
!122 = !{i32 7, !"frame-pointer", i32 2}
!123 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!124 = !{!"auto-init"}
!125 = !{i8 0, i8 2}
!126 = !{i64 4627766}
!127 = !{i64 4628386}
!128 = !{i64 2154482716}
!129 = !{i64 2152169153}
!130 = !{i64 2152169534}
!131 = !{i64 4628189}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{i64 2154426783, i64 2154427270, i64 2154426820, i64 2154426876, i64 2154426910, i64 2154426934, i64 2154426975, i64 2154426996, i64 2154427024, i64 2154427058}
!134 = !{i64 2148965881, i64 2148965886, i64 2148965899, i64 2148965943, i64 2148965977, i64 2148965998}
