; ModuleID = '/llk/IR_all_yes/drivers/dma/imx-dma.c_pt.bc'
source_filename = "../drivers/dma/imx-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.imxdma_engine = type { ptr, %struct.dma_device, ptr, ptr, ptr, %struct.spinlock, [2 x %struct.imx_dma_2d_config], [16 x %struct.imxdma_channel], i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.imx_dma_2d_config = type { i16, i16, i16, i32 }
%struct.imxdma_channel = type { i32, %struct.timer_list, ptr, i32, %struct.tasklet_struct, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32, %struct.dma_chan, %struct.dma_async_tx_descriptor, i32, i32, ptr, i32, i32, i8, i32, i32, %struct.dma_slave_config }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.imxdma_desc = type { %struct.list_head, %struct.dma_async_tx_descriptor, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.imxdma_filter_data = type { ptr, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }

@__initcall__kmod_imx_dma__249_1251_imxdma_module_init4 = internal global ptr @imxdma_module_init, section ".initcall4.init", align 4
@__UNIQUE_ID_author250 = internal constant [66 x i8] c"imx_dma.author=Sascha Hauer, Pengutronix <s.hauer@pengutronix.de>\00", section ".modinfo", align 1
@__UNIQUE_ID_description251 = internal constant [36 x i8] c"imx_dma.description=i.MX dma driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file252 = internal constant [33 x i8] c"imx_dma.file=drivers/dma/imx-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license253 = internal constant [20 x i8] c"imx_dma.license=GPL\00", section ".modinfo", align 1
@imxdma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr @imxdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @imx_dma_of_dev_id, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx-dma\00", [24 x i8] zeroinitializer }, align 32
@imx_dma_of_dev_id = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx1-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx21-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"fsl,imx27-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ipg\00", [28 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"ahb\00", [28 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"DMA\00", [28 x i8] zeroinitializer }, align 32
@imxdma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1083, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Can't register IRQ for DMA\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"imxdma_probe\00", [19 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/dma/imx-dma.c\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@imxdma_probe._entry_ptr = internal global ptr @imxdma_probe._entry, section ".printk_index", align 4
@imxdma_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1097, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Can't register ERRIRQ for DMA\0A\00", [33 x i8] zeroinitializer }, align 32
@imxdma_probe._entry_ptr.11 = internal global ptr @imxdma_probe._entry.9, section ".printk_index", align 4
@imxdma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.12 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&imxdma->lock\00", [18 x i8] zeroinitializer }, align 32
@imxdma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.5, ptr @.str.6, i32 1135, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Can't register IRQ %d for DMA channel %d\0A\00", [54 x i8] zeroinitializer }, align 32
@imxdma_probe._entry_ptr.15 = internal global ptr @imxdma_probe._entry.13, section ".printk_index", align 4
@imxdma_probe.__key.16 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"(&imxdmac->watchdog)\00", [43 x i8] zeroinitializer }, align 32
@imxdma_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 1179, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unable to register\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@imxdma_probe._entry_ptr.21 = internal global ptr @imxdma_probe._entry.18, section ".printk_index", align 4
@imxdma_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.5, ptr @.str.6, i32 1187, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to register of_dma_controller\0A\00", [58 x i8] zeroinitializer }, align 32
@imxdma_probe._entry_ptr.24 = internal global ptr @imxdma_probe._entry.22, section ".printk_index", align 4
@dma_irq_handler.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.26, ptr @.str.6, ptr @.str.27, i8 0, i8 120, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"imx_dma\00", [24 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dma_irq_handler\00", [16 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s called, disr=0x%08x\0A\00", [40 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@imxdma_sg_next.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.28, ptr @.str.6, ptr @.str.29, i8 0, i8 71, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imxdma_sg_next\00", [17 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c" %s channel: %d dst 0x%08x, src 0x%08x, size 0x%08x\0A\00", [43 x i8] zeroinitializer }, align 32
@imxdma_err_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.6, i32 402, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"DMA timeout on channel %d -%s%s%s%s\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"imxdma_err_handler\00", [45 x i8] zeroinitializer }, align 32
@imxdma_err_handler._entry_ptr = internal global ptr @imxdma_err_handler._entry, section ".printk_index", align 4
@.str.32 = internal constant { [7 x i8], [25 x i8] } { [7 x i8] c" burst\00", [25 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.34 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" request\00", [23 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c" transfer\00", [22 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c" buffer\00", [24 x i8] zeroinitializer }, align 32
@imxdma_watchdog.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.37, ptr @.str.6, ptr @.str.38, i8 0, i8 87, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"imxdma_watchdog\00", [16 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"channel %d: watchdog timeout!\0A\00", [33 x i8] zeroinitializer }, align 32
@imxdma_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.40, ptr @.str.6, i32 635, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: channel: %d couldn't xfer desc\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"imxdma_tasklet\00", [17 x i8] zeroinitializer }, align 32
@imxdma_tasklet._entry_ptr = internal global ptr @imxdma_tasklet._entry, section ".printk_index", align 4
@imxdma_xfer_desc.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.41, ptr @.str.6, ptr @.str.42, i8 0, i8 -118, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imxdma_xfer_desc\00", [47 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"%s channel: %d dest=0x%08llx src=0x%08llx dma_length=%zu\0A\00", [38 x i8] zeroinitializer }, align 32
@imxdma_xfer_desc.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.41, ptr @.str.6, ptr @.str.43, i8 0, i8 -114, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s channel: %d sg=%p sgcount=%d total length=%zu dev_addr=0x%08llx (dev2mem)\0A\00", [50 x i8] zeroinitializer }, align 32
@imxdma_xfer_desc.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.41, ptr @.str.6, ptr @.str.44, i8 0, i8 -112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.44 = internal constant { [78 x i8], [50 x i8] } { [78 x i8] c"%s channel: %d sg=%p sgcount=%d total length=%zu dev_addr=0x%08llx (mem2dev)\0A\00", [50 x i8] zeroinitializer }, align 32
@imxdma_xfer_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.41, ptr @.str.6, i32 582, ptr @.str.20, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s channel: %d bad dma mode\0A\00", [35 x i8] zeroinitializer }, align 32
@imxdma_xfer_desc._entry_ptr = internal global ptr @imxdma_xfer_desc._entry, section ".printk_index", align 4
@imxdma_enable_hw.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.46, ptr @.str.6, ptr @.str.47, i8 0, i8 73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"imxdma_enable_hw\00", [47 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s channel %d\0A\00", [17 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@imxdma_disable_hw.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.48, ptr @.str.6, ptr @.str.47, i8 0, i8 81, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"imxdma_disable_hw\00", [46 x i8] zeroinitializer }, align 32
@imxdma_prep_dma_cyclic.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.49, ptr @.str.6, ptr @.str.50, i8 0, i8 -41, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imxdma_prep_dma_cyclic\00", [41 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"%s channel: %d buf_len=%zu period_len=%zu\0A\00", [53 x i8] zeroinitializer }, align 32
@imxdma_prep_dma_memcpy.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.51, ptr @.str.6, ptr @.str.52, i8 0, i8 -27, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"imxdma_prep_dma_memcpy\00", [41 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s channel: %d src=0x%llx dst=0x%llx len=%zu\0A\00", [50 x i8] zeroinitializer }, align 32
@imxdma_prep_dma_interleaved.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.25, ptr @.str.53, ptr @.str.6, ptr @.str.54, i8 0, i8 -19, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"imxdma_prep_dma_interleaved\00", [36 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [99 x i8], [61 x i8] } { [99 x i8] c"%s channel: %d src_start=0x%llx dst_start=0x%llx\0A   src_sgl=%s dst_sgl=%s numf=%zu frame_size=%zu\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.55 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"true\00", [27 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"false\00", [26 x i8] zeroinitializer }, align 32
@imxdma_issue_pending._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.6, i32 997, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"%s: channel: %d couldn't issue DMA xfer\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"imxdma_issue_pending\00", [43 x i8] zeroinitializer }, align 32
@imxdma_issue_pending._entry_ptr = internal global ptr @imxdma_issue_pending._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.59 = internal global [6 x i64] [i64 4, i64 32, i64 0, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.60 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.61 = private unnamed_addr constant [14 x i8] c"imxdma_driver\00", align 1
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1239, i32 31 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1241, i32 11 }
@___asan_gen_.67 = private unnamed_addr constant [18 x i8] c"imx_dma_of_dev_id\00", align 1
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 194, i32 34 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1061, i32 45 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1065, i32 45 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1081, i32 32 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1083, i32 4 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1097, i32 4 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1123, i32 2 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1133, i32 5 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1140, i32 4 }
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1179, i32 3 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 1187, i32 4 }
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 480, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 281, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 397, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 350, i32 2 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 634, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 548, i32 3 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 564, i32 4 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 575, i32 4 }
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 581, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 295, i32 2 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 326, i32 2 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 859, i32 2 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 914, i32 2 }
@___asan_gen_.240 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 945, i32 2 }
@___asan_gen_.241 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.247 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.248 = private constant [25 x i8] c"../drivers/dma/imx-dma.c\00", align 1
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.248, i32 995, i32 4 }
@llvm.compiler.used = appending global [77 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file252, ptr @__UNIQUE_ID_license253, ptr @__initcall__kmod_imx_dma__249_1251_imxdma_module_init4, ptr @imxdma_err_handler._entry, ptr @imxdma_err_handler._entry_ptr, ptr @imxdma_issue_pending._entry, ptr @imxdma_issue_pending._entry_ptr, ptr @imxdma_probe._entry, ptr @imxdma_probe._entry.13, ptr @imxdma_probe._entry.18, ptr @imxdma_probe._entry.22, ptr @imxdma_probe._entry.9, ptr @imxdma_probe._entry_ptr, ptr @imxdma_probe._entry_ptr.11, ptr @imxdma_probe._entry_ptr.15, ptr @imxdma_probe._entry_ptr.21, ptr @imxdma_probe._entry_ptr.24, ptr @imxdma_tasklet._entry, ptr @imxdma_tasklet._entry_ptr, ptr @imxdma_xfer_desc._entry, ptr @imxdma_xfer_desc._entry_ptr, ptr @imxdma_driver, ptr @.str, ptr @imx_dma_of_dev_id, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @imxdma_probe.__key, ptr @.str.12, ptr @.str.14, ptr @imxdma_probe.__key.16, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxdma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imx_dma_of_dev_id to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxdma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxdma_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxdma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxdma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxdma_probe.__key.16 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxdma_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxdma_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxdma_err_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 7, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxdma_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 78, i32 128, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxdma_xfer_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 99, i32 160, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.240 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @imxdma_issue_pending._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.241 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.247 to i32), i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imxdma_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @imxdma_driver, ptr noundef nonnull @imxdma_probe, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @imxdma_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 6348, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup156_crit_edge, label %if.end

entry.cleanup156_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup156

if.end:                                           ; preds = %entry
  %0 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %call.i, align 4
  %call4 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #11
  %1 = ptrtoint ptr %call4 to i32
  %devtype = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 8
  %2 = ptrtoint ptr %devtype to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %devtype, align 4
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call7 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call5) #11
  %base = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call7 to i32
  br label %cleanup156

if.end13:                                         ; preds = %if.end
  %call14 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14)
  %cmp = icmp slt i32 %call14, 0
  br i1 %cmp, label %if.end13.cleanup156_crit_edge, label %if.end16

if.end13.cleanup156_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup156

if.end16:                                         ; preds = %if.end13
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  %dma_ipg = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %dma_ipg to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %call18, ptr %dma_ipg, align 4
  %cmp.i273 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i273, label %if.then21, label %if.end24

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %call18 to i32
  br label %cleanup156

if.end24:                                         ; preds = %if.end16
  %call26 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.2) #11
  %dma_ahb = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %dma_ahb to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call26, ptr %dma_ahb, align 4
  %cmp.i274 = icmp ugt ptr %call26, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i274, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #13
  %8 = ptrtoint ptr %call26 to i32
  br label %cleanup156

if.end32:                                         ; preds = %if.end24
  %9 = ptrtoint ptr %dma_ipg to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dma_ipg, align 4
  %call.i275 = tail call i32 @clk_prepare(ptr noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i275)
  %tobool.not.i = icmp eq i32 %call.i275, 0
  br i1 %tobool.not.i, label %if.end.i, label %if.end32.cleanup156_crit_edge

if.end32.cleanup156_crit_edge:                    ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup156

if.end.i:                                         ; preds = %if.end32
  %call1.i = tail call i32 @clk_enable(ptr noundef %10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end37, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %10) #11
  br label %cleanup156

if.end37:                                         ; preds = %if.end.i
  %11 = ptrtoint ptr %dma_ahb to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dma_ahb, align 4
  %call39 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %12)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end37.disable_dma_ipg_clk_crit_edge

if.end37.disable_dma_ipg_clk_crit_edge:           ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_dma_ipg_clk

if.end42:                                         ; preds = %if.end37
  %13 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %14, i32 2) #11, !srcloc !129
  %15 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp.i276.not = icmp eq i32 %16, 0
  br i1 %cmp.i276.not, label %if.then45, label %if.end42.if.end67_crit_edge

if.end42.if.end67_crit_edge:                      ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end67

if.then45:                                        ; preds = %if.end42
  %call.i277 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call14, ptr noundef nonnull @dma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i277)
  %tobool48.not = icmp eq i32 %call.i277, 0
  br i1 %tobool48.not, label %if.end51, label %do.end

do.end:                                           ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %18, ptr noundef nonnull @.str.4) #14
  br label %disable_dma_ahb_clk

if.end51:                                         ; preds = %if.then45
  %irq52 = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 9
  %19 = ptrtoint ptr %irq52 to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %call14, ptr %irq52, align 4
  %call53 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call53)
  %cmp54 = icmp slt i32 %call53, 0
  br i1 %cmp54, label %if.end51.disable_dma_ahb_clk_crit_edge, label %if.end56

if.end51.disable_dma_ahb_clk_crit_edge:           ; preds = %if.end51
  call void @__sanitizer_cov_trace_pc() #13
  br label %disable_dma_ahb_clk

if.end56:                                         ; preds = %if.end51
  %call.i278 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call53, ptr noundef nonnull @imxdma_err_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i278)
  %tobool59.not = icmp eq i32 %call.i278, 0
  br i1 %tobool59.not, label %if.end65, label %do.end63

do.end63:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %21, ptr noundef nonnull @.str.10) #14
  br label %disable_dma_ahb_clk

if.end65:                                         ; preds = %if.end56
  call void @__sanitizer_cov_trace_pc() #13
  %irq_err66 = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 10
  %22 = ptrtoint ptr %irq_err66 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call53, ptr %irq_err66, align 4
  br label %if.end67

if.end67:                                         ; preds = %if.end65, %if.end42.if.end67_crit_edge
  %23 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %24, i32 1) #11, !srcloc !129
  %25 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base, align 4
  %add.ptr.i = getelementptr i8, ptr %26, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 65535) #11, !srcloc !129
  %27 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base, align 4
  %add.ptr.i282 = getelementptr i8, ptr %28, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282, i32 65535) #11, !srcloc !129
  %channels = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 3
  %29 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 3, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %channels, ptr %prev.i, align 4
  %cap_mask = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #11
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #11
  tail call void @_set_bit(i32 noundef 13, ptr noundef %cap_mask) #11
  %count = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 6, i32 0, i32 3
  %31 = ptrtoint ptr %count to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %count, align 4
  %count.1 = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 6, i32 1, i32 3
  %32 = ptrtoint ptr %count.1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 0, ptr %count.1, align 4
  %dma_device = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1
  %lock = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.12, ptr noundef nonnull @imxdma_probe.__key, i16 noundef signext 3) #11
  br label %for.body82

for.body82:                                       ; preds = %for.inc110.for.body82_crit_edge, %if.end67
  %i.1299 = phi i32 [ 0, %if.end67 ], [ %inc111, %for.inc110.for.body82_crit_edge ]
  %33 = ptrtoint ptr %devtype to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %devtype, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %cmp.i284.not = icmp eq i32 %34, 0
  br i1 %cmp.i284.not, label %for.body82.if.end102_crit_edge, label %if.then86

for.body82.if.end102_crit_edge:                   ; preds = %for.body82
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end102

if.then86:                                        ; preds = %for.body82
  %add = add i32 %i.1299, %call14
  %call.i286 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %add, ptr noundef nonnull @dma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str.3, ptr noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i286)
  %tobool89.not = icmp eq i32 %call.i286, 0
  br i1 %tobool89.not, label %if.end96, label %cleanup

if.end96:                                         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  %irq98 = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 21
  %35 = ptrtoint ptr %irq98 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add, ptr %irq98, align 4
  %watchdog = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 1
  tail call void @init_timer_key(ptr noundef %watchdog, ptr noundef nonnull @imxdma_watchdog, i32 noundef 0, ptr noundef nonnull @.str.17, ptr noundef nonnull @imxdma_probe.__key.16) #11
  br label %if.end102

if.end102:                                        ; preds = %if.end96, %for.body82.if.end102_crit_edge
  %imxdma103 = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 2
  %36 = ptrtoint ptr %imxdma103 to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %imxdma103, align 4
  %ld_queue = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 6
  %37 = ptrtoint ptr %ld_queue to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %ld_queue, ptr %ld_queue, align 4
  %prev.i287 = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 6, i32 1
  %38 = ptrtoint ptr %prev.i287 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %ld_queue, ptr %prev.i287, align 4
  %ld_free = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 5
  %39 = ptrtoint ptr %ld_free to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %ld_free, ptr %ld_free, align 4
  %prev.i288 = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 5, i32 1
  %40 = ptrtoint ptr %prev.i288 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %ld_free, ptr %prev.i288, align 4
  %ld_active = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 7
  %41 = ptrtoint ptr %ld_active to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %ld_active, ptr %ld_active, align 4
  %prev.i289 = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 7, i32 1
  %42 = ptrtoint ptr %prev.i289 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %ld_active, ptr %prev.i289, align 4
  %dma_tasklet = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 4
  tail call void @tasklet_setup(ptr noundef %dma_tasklet, ptr noundef nonnull @imxdma_tasklet) #11
  %chan = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 12
  %43 = ptrtoint ptr %chan to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %dma_device, ptr %chan, align 4
  %cookie.i = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 12, i32 2
  %44 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 12, i32 3
  %45 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %completed_cookie.i, align 4
  %channel106 = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 3
  %46 = ptrtoint ptr %channel106 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %i.1299, ptr %channel106, align 4
  %device_node = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 12, i32 8
  %47 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %48, ptr noundef %channels) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end102.for.inc110_crit_edge

if.end102.for.inc110_crit_edge:                   ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc110

if.end.i.i:                                       ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %device_node, ptr %prev.i, align 4
  %50 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr %struct.imxdma_engine, ptr %call.i, i32 0, i32 7, i32 %i.1299, i32 12, i32 8, i32 1
  %51 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %device_node, ptr %48, align 4
  br label %for.inc110

cleanup:                                          ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #13
  %53 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %call.i, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %54, ptr noundef nonnull @.str.14, i32 noundef %add, i32 noundef %i.1299) #14
  br label %disable_dma_ahb_clk

for.inc110:                                       ; preds = %if.end.i.i, %if.end102.for.inc110_crit_edge
  %inc111 = add nuw nsw i32 %i.1299, 1
  %exitcond.not = icmp eq i32 %inc111, 16
  br i1 %exitcond.not, label %for.end112, label %for.inc110.for.body82_crit_edge

for.inc110.for.body82_crit_edge:                  ; preds = %for.inc110
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body82

for.end112:                                       ; preds = %for.inc110
  %dev115 = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 15
  %55 = ptrtoint ptr %dev115 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %dev, ptr %dev115, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 27
  %56 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @imxdma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 29
  %57 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @imxdma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 49
  %58 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @imxdma_tx_status, ptr %device_tx_status, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 39
  %59 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @imxdma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 40
  %60 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @imxdma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 30
  %61 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @imxdma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_interleaved_dma = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 41
  %62 = ptrtoint ptr %device_prep_interleaved_dma to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @imxdma_prep_dma_interleaved, ptr %device_prep_interleaved_dma, align 4
  %device_config = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 44
  %63 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @imxdma_config, ptr %device_config, align 4
  %device_terminate_all = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 47
  %64 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr @imxdma_terminate_all, ptr %device_terminate_all, align 4
  %device_issue_pending = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 50
  %65 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @imxdma_issue_pending, ptr %device_issue_pending, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %66 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %copy_align = getelementptr inbounds %struct.imxdma_engine, ptr %call.i, i32 0, i32 1, i32 10
  %67 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 2, ptr %copy_align, align 4
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %68 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i291 = icmp eq ptr %69, null
  br i1 %tobool.not.i291, label %for.end112.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

for.end112.dma_set_max_seg_size.exit_crit_edge:   ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %for.end112
  call void @__sanitizer_cov_trace_pc() #13
  %70 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 16777215, ptr %69, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %for.end112.dma_set_max_seg_size.exit_crit_edge
  %call131 = tail call i32 @dma_async_device_register(ptr noundef %dma_device) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call131)
  %tobool132.not = icmp eq i32 %call131, 0
  br i1 %tobool132.not, label %if.end138, label %do.end136

do.end136:                                        ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #14
  br label %disable_dma_ahb_clk

if.end138:                                        ; preds = %dma_set_max_seg_size.exit
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %71 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %of_node, align 8
  %tobool140.not = icmp eq ptr %72, null
  br i1 %tobool140.not, label %if.end138.cleanup156_crit_edge, label %if.then141

if.end138.cleanup156_crit_edge:                   ; preds = %if.end138
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup156

if.then141:                                       ; preds = %if.end138
  %call144 = tail call i32 @of_dma_controller_register(ptr noundef nonnull %72, ptr noundef nonnull @imxdma_xlate, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call144)
  %tobool145.not = icmp eq i32 %call144, 0
  br i1 %tobool145.not, label %if.then141.cleanup156_crit_edge, label %do.end149

if.then141.cleanup156_crit_edge:                  ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup156

do.end149:                                        ; preds = %if.then141
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23) #14
  tail call void @dma_async_device_unregister(ptr noundef %dma_device) #11
  br label %disable_dma_ahb_clk

disable_dma_ahb_clk:                              ; preds = %do.end149, %do.end136, %cleanup, %do.end63, %if.end51.disable_dma_ahb_clk_crit_edge, %do.end
  %ret.4 = phi i32 [ %call.i277, %do.end ], [ %call.i278, %do.end63 ], [ %call.i286, %cleanup ], [ %call131, %do.end136 ], [ %call144, %do.end149 ], [ %call53, %if.end51.disable_dma_ahb_clk_crit_edge ]
  %73 = ptrtoint ptr %dma_ahb to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dma_ahb, align 4
  tail call void @clk_disable(ptr noundef %74) #11
  tail call void @clk_unprepare(ptr noundef %74) #11
  br label %disable_dma_ipg_clk

disable_dma_ipg_clk:                              ; preds = %disable_dma_ahb_clk, %if.end37.disable_dma_ipg_clk_crit_edge
  %ret.5 = phi i32 [ %call39, %if.end37.disable_dma_ipg_clk_crit_edge ], [ %ret.4, %disable_dma_ahb_clk ]
  %75 = ptrtoint ptr %dma_ipg to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dma_ipg, align 4
  tail call void @clk_disable(ptr noundef %76) #11
  tail call void @clk_unprepare(ptr noundef %76) #11
  br label %cleanup156

cleanup156:                                       ; preds = %disable_dma_ipg_clk, %if.then141.cleanup156_crit_edge, %if.end138.cleanup156_crit_edge, %if.then3.i, %if.end32.cleanup156_crit_edge, %if.then29, %if.then21, %if.end13.cleanup156_crit_edge, %if.then10, %entry.cleanup156_crit_edge
  %retval.0 = phi i32 [ %4, %if.then10 ], [ %6, %if.then21 ], [ %8, %if.then29 ], [ %ret.5, %disable_dma_ipg_clk ], [ -12, %entry.cleanup156_crit_edge ], [ %call14, %if.end13.cleanup156_crit_edge ], [ 0, %if.then141.cleanup156_crit_edge ], [ 0, %if.end138.cleanup156_crit_edge ], [ %call1.i, %if.then3.i ], [ %call.i275, %if.end32.cleanup156_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxdma_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %devtype.i.i = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 8
  %2 = ptrtoint ptr %devtype.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %devtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.i.not.i = icmp eq i32 %3, 0
  br i1 %cmp.i.not.i, label %if.then.i, label %entry.for.body.i.preheader_crit_edge

entry.for.body.i.preheader_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i.preheader

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %irq.i = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 9
  %4 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq.i, align 4
  tail call void @disable_irq(i32 noundef %5) #11
  %irq_err.i = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %irq_err.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_err.i, align 4
  tail call void @disable_irq(i32 noundef %7) #11
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.then.i, %entry.for.body.i.preheader_crit_edge
  br label %for.body.i

for.body.i:                                       ; preds = %if.end5.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.04.i = phi i32 [ %inc.i, %if.end5.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %8 = ptrtoint ptr %devtype.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp.i2.not.i = icmp eq i32 %9, 0
  br i1 %cmp.i2.not.i, label %for.body.i.if.end5.i_crit_edge, label %if.then3.i

for.body.i.if.end5.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.then3.i:                                       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %irq4.i = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 7, i32 %i.04.i, i32 21
  %10 = ptrtoint ptr %irq4.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq4.i, align 4
  tail call void @disable_irq(i32 noundef %11) #11
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.then3.i, %for.body.i.if.end5.i_crit_edge
  %dma_tasklet.i = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 7, i32 %i.04.i, i32 4
  tail call void @tasklet_kill(ptr noundef %dma_tasklet.i) #11
  %inc.i = add nuw nsw i32 %i.04.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 16
  br i1 %exitcond.not.i, label %imxdma_free_irq.exit, label %if.end5.i.for.body.i_crit_edge

if.end5.i.for.body.i_crit_edge:                   ; preds = %if.end5.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

imxdma_free_irq.exit:                             ; preds = %if.end5.i
  %dma_device = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 1
  tail call void @dma_async_device_unregister(ptr noundef %dma_device) #11
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %imxdma_free_irq.exit.if.end_crit_edge, label %if.then

imxdma_free_irq.exit.if.end_crit_edge:            ; preds = %imxdma_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %imxdma_free_irq.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @of_dma_controller_free(ptr noundef nonnull %13) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %imxdma_free_irq.exit.if.end_crit_edge
  %dma_ipg = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 4
  %14 = ptrtoint ptr %dma_ipg to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dma_ipg, align 4
  tail call void @clk_disable(ptr noundef %15) #11
  tail call void @clk_unprepare(ptr noundef %15) #11
  %dma_ahb = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 3
  %16 = ptrtoint ptr %dma_ahb to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_ahb, align 4
  tail call void @clk_disable(ptr noundef %17) #11
  tail call void @clk_unprepare(ptr noundef %17) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %clk) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_irq_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %devtype.i = getelementptr inbounds %struct.imxdma_engine, ptr %dev_id, i32 0, i32 8
  %0 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp.i.not = icmp eq i32 %1, 0
  br i1 %cmp.i.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call1 = tail call i32 @imxdma_err_handler(i32 noundef %irq, ptr noundef %dev_id)
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %base.i = getelementptr inbounds %struct.imxdma_engine, ptr %dev_id, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !130
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_irq_handler.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_irq_handler, %do.end)) #11
          to label %if.then8 [label %do.end], !srcloc !131

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev_id, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_irq_handler.__UNIQUE_ID_ddebug242, ptr noundef %6, ptr noundef nonnull @.str.27, ptr noundef nonnull @.str.26, i32 noundef %4) #11
  br label %do.end

do.end:                                           ; preds = %if.then8, %if.end
  %7 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i, align 4
  %add.ptr.i24 = getelementptr i8, ptr %8, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i24, i32 %4) #11, !srcloc !129
  %and = and i32 %4, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool10.not = icmp eq i32 %and, 0
  br i1 %tobool10.not, label %do.end.for.inc_crit_edge, label %if.then11

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.then11:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 0
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx)
  br label %for.inc

for.inc:                                          ; preds = %if.then11, %do.end.for.inc_crit_edge
  %and.1 = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.1)
  %tobool10.not.1 = icmp eq i32 %and.1, 0
  br i1 %tobool10.not.1, label %for.inc.for.inc.1_crit_edge, label %if.then11.1

for.inc.for.inc.1_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.1

if.then11.1:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.1 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 1
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.1)
  br label %for.inc.1

for.inc.1:                                        ; preds = %if.then11.1, %for.inc.for.inc.1_crit_edge
  %and.2 = and i32 %4, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.2)
  %tobool10.not.2 = icmp eq i32 %and.2, 0
  br i1 %tobool10.not.2, label %for.inc.1.for.inc.2_crit_edge, label %if.then11.2

for.inc.1.for.inc.2_crit_edge:                    ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.2

if.then11.2:                                      ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.2 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 2
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.2)
  br label %for.inc.2

for.inc.2:                                        ; preds = %if.then11.2, %for.inc.1.for.inc.2_crit_edge
  %and.3 = and i32 %4, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.3)
  %tobool10.not.3 = icmp eq i32 %and.3, 0
  br i1 %tobool10.not.3, label %for.inc.2.for.inc.3_crit_edge, label %if.then11.3

for.inc.2.for.inc.3_crit_edge:                    ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.3

if.then11.3:                                      ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.3 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 3
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.3)
  br label %for.inc.3

for.inc.3:                                        ; preds = %if.then11.3, %for.inc.2.for.inc.3_crit_edge
  %and.4 = and i32 %4, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.4)
  %tobool10.not.4 = icmp eq i32 %and.4, 0
  br i1 %tobool10.not.4, label %for.inc.3.for.inc.4_crit_edge, label %if.then11.4

for.inc.3.for.inc.4_crit_edge:                    ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.4

if.then11.4:                                      ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.4 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 4
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.4)
  br label %for.inc.4

for.inc.4:                                        ; preds = %if.then11.4, %for.inc.3.for.inc.4_crit_edge
  %and.5 = and i32 %4, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.5)
  %tobool10.not.5 = icmp eq i32 %and.5, 0
  br i1 %tobool10.not.5, label %for.inc.4.for.inc.5_crit_edge, label %if.then11.5

for.inc.4.for.inc.5_crit_edge:                    ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.5

if.then11.5:                                      ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.5 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 5
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.5)
  br label %for.inc.5

for.inc.5:                                        ; preds = %if.then11.5, %for.inc.4.for.inc.5_crit_edge
  %and.6 = and i32 %4, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.6)
  %tobool10.not.6 = icmp eq i32 %and.6, 0
  br i1 %tobool10.not.6, label %for.inc.5.for.inc.6_crit_edge, label %if.then11.6

for.inc.5.for.inc.6_crit_edge:                    ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.6

if.then11.6:                                      ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.6 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 6
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.6)
  br label %for.inc.6

for.inc.6:                                        ; preds = %if.then11.6, %for.inc.5.for.inc.6_crit_edge
  %and.7 = and i32 %4, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.7)
  %tobool10.not.7 = icmp eq i32 %and.7, 0
  br i1 %tobool10.not.7, label %for.inc.6.for.inc.7_crit_edge, label %if.then11.7

for.inc.6.for.inc.7_crit_edge:                    ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.7

if.then11.7:                                      ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.7 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 7
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.7)
  br label %for.inc.7

for.inc.7:                                        ; preds = %if.then11.7, %for.inc.6.for.inc.7_crit_edge
  %and.8 = and i32 %4, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.8)
  %tobool10.not.8 = icmp eq i32 %and.8, 0
  br i1 %tobool10.not.8, label %for.inc.7.for.inc.8_crit_edge, label %if.then11.8

for.inc.7.for.inc.8_crit_edge:                    ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.8

if.then11.8:                                      ; preds = %for.inc.7
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.8 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 8
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.8)
  br label %for.inc.8

for.inc.8:                                        ; preds = %if.then11.8, %for.inc.7.for.inc.8_crit_edge
  %and.9 = and i32 %4, 512
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.9)
  %tobool10.not.9 = icmp eq i32 %and.9, 0
  br i1 %tobool10.not.9, label %for.inc.8.for.inc.9_crit_edge, label %if.then11.9

for.inc.8.for.inc.9_crit_edge:                    ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.9

if.then11.9:                                      ; preds = %for.inc.8
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.9 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 9
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.9)
  br label %for.inc.9

for.inc.9:                                        ; preds = %if.then11.9, %for.inc.8.for.inc.9_crit_edge
  %and.10 = and i32 %4, 1024
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.10)
  %tobool10.not.10 = icmp eq i32 %and.10, 0
  br i1 %tobool10.not.10, label %for.inc.9.for.inc.10_crit_edge, label %if.then11.10

for.inc.9.for.inc.10_crit_edge:                   ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.10

if.then11.10:                                     ; preds = %for.inc.9
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.10 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 10
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.10)
  br label %for.inc.10

for.inc.10:                                       ; preds = %if.then11.10, %for.inc.9.for.inc.10_crit_edge
  %and.11 = and i32 %4, 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.11)
  %tobool10.not.11 = icmp eq i32 %and.11, 0
  br i1 %tobool10.not.11, label %for.inc.10.for.inc.11_crit_edge, label %if.then11.11

for.inc.10.for.inc.11_crit_edge:                  ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.11

if.then11.11:                                     ; preds = %for.inc.10
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.11 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 11
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.11)
  br label %for.inc.11

for.inc.11:                                       ; preds = %if.then11.11, %for.inc.10.for.inc.11_crit_edge
  %and.12 = and i32 %4, 4096
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.12)
  %tobool10.not.12 = icmp eq i32 %and.12, 0
  br i1 %tobool10.not.12, label %for.inc.11.for.inc.12_crit_edge, label %if.then11.12

for.inc.11.for.inc.12_crit_edge:                  ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.12

if.then11.12:                                     ; preds = %for.inc.11
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.12 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 12
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.12)
  br label %for.inc.12

for.inc.12:                                       ; preds = %if.then11.12, %for.inc.11.for.inc.12_crit_edge
  %and.13 = and i32 %4, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.13)
  %tobool10.not.13 = icmp eq i32 %and.13, 0
  br i1 %tobool10.not.13, label %for.inc.12.for.inc.13_crit_edge, label %if.then11.13

for.inc.12.for.inc.13_crit_edge:                  ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.13

if.then11.13:                                     ; preds = %for.inc.12
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.13 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 13
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.13)
  br label %for.inc.13

for.inc.13:                                       ; preds = %if.then11.13, %for.inc.12.for.inc.13_crit_edge
  %and.14 = and i32 %4, 16384
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.14)
  %tobool10.not.14 = icmp eq i32 %and.14, 0
  br i1 %tobool10.not.14, label %for.inc.13.for.inc.14_crit_edge, label %if.then11.14

for.inc.13.for.inc.14_crit_edge:                  ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.14

if.then11.14:                                     ; preds = %for.inc.13
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.14 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 14
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.14)
  br label %for.inc.14

for.inc.14:                                       ; preds = %if.then11.14, %for.inc.13.for.inc.14_crit_edge
  %and.15 = and i32 %4, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.15)
  %tobool10.not.15 = icmp eq i32 %and.15, 0
  br i1 %tobool10.not.15, label %for.inc.14.for.inc.15_crit_edge, label %if.then11.15

for.inc.14.for.inc.15_crit_edge:                  ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc.15

if.then11.15:                                     ; preds = %for.inc.14
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx.15 = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 15
  tail call fastcc void @dma_irq_handle_channel(ptr noundef %arrayidx.15)
  br label %for.inc.15

for.inc.15:                                       ; preds = %if.then11.15, %for.inc.14.for.inc.15_crit_edge
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxdma_err_handler(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.imxdma_engine, ptr %dev_id, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !130
  %3 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %base.i, align 4
  %add.ptr.i95 = getelementptr i8, ptr %4, i32 12
  %5 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #11, !srcloc !130
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i97 = getelementptr i8, ptr %7, i32 16
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i97) #11, !srcloc !130
  %or = or i32 %8, %5
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i99 = getelementptr i8, ptr %10, i32 20
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i99) #11, !srcloc !130
  %or4 = or i32 %or, %11
  %12 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i, align 4
  %add.ptr.i101 = getelementptr i8, ptr %13, i32 24
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #11, !srcloc !130
  %or6 = or i32 %or4, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or6)
  %tobool.not = icmp eq i32 %or6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %and = and i32 %or6, %2
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %add.ptr.i103 = getelementptr i8, ptr %16, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i103, i32 %and) #11, !srcloc !129
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end
  %i.0120 = phi i32 [ 0, %if.end ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw nsw i32 1, %i.0120
  %and7 = and i32 %shl, %or6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %for.body.for.inc_crit_edge, label %if.end10

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end10:                                         ; preds = %for.body
  %17 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i, align 4
  %add.ptr.i105 = getelementptr i8, ptr %18, i32 12
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i105) #11, !srcloc !130
  %and13 = and i32 %19, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end10.if.end18_crit_edge, label %if.then15

if.end10.if.end18_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then15:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i107 = getelementptr i8, ptr %21, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i107, i32 %shl) #11, !srcloc !129
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %if.end10.if.end18_crit_edge
  %errcode.0 = phi i32 [ 1, %if.then15 ], [ 0, %if.end10.if.end18_crit_edge ]
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %add.ptr.i109 = getelementptr i8, ptr %23, i32 16
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i109) #11, !srcloc !130
  %and21 = and i32 %24, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and21)
  %tobool22.not = icmp eq i32 %and21, 0
  br i1 %tobool22.not, label %if.end18.if.end26_crit_edge, label %if.then23

if.end18.if.end26_crit_edge:                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i, align 4
  %add.ptr.i111 = getelementptr i8, ptr %26, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i111, i32 %shl) #11, !srcloc !129
  %or25 = or i32 %errcode.0, 2
  br label %if.end26

if.end26:                                         ; preds = %if.then23, %if.end18.if.end26_crit_edge
  %errcode.1 = phi i32 [ %or25, %if.then23 ], [ %errcode.0, %if.end18.if.end26_crit_edge ]
  %27 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i, align 4
  %add.ptr.i113 = getelementptr i8, ptr %28, i32 20
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i113) #11, !srcloc !130
  %and29 = and i32 %29, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and29)
  %tobool30.not = icmp eq i32 %and29, 0
  br i1 %tobool30.not, label %if.end26.if.end34_crit_edge, label %if.then31

if.end26.if.end34_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end34

if.then31:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i, align 4
  %add.ptr.i115 = getelementptr i8, ptr %31, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i115, i32 %shl) #11, !srcloc !129
  %or33 = or i32 %errcode.1, 4
  br label %if.end34

if.end34:                                         ; preds = %if.then31, %if.end26.if.end34_crit_edge
  %errcode.2 = phi i32 [ %or33, %if.then31 ], [ %errcode.1, %if.end26.if.end34_crit_edge ]
  %32 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i, align 4
  %add.ptr.i117 = getelementptr i8, ptr %33, i32 24
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #11, !srcloc !130
  %and37 = and i32 %34, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and37)
  %tobool38.not = icmp eq i32 %and37, 0
  br i1 %tobool38.not, label %if.end34.if.end42_crit_edge, label %if.then39

if.end34.if.end42_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end42

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i, align 4
  %add.ptr.i119 = getelementptr i8, ptr %36, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i119, i32 %shl) #11, !srcloc !129
  %or41 = or i32 %errcode.2, 8
  br label %if.end42

if.end42:                                         ; preds = %if.then39, %if.end34.if.end42_crit_edge
  %errcode.3 = phi i32 [ %or41, %if.then39 ], [ %errcode.2, %if.end34.if.end42_crit_edge ]
  %state.i = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 %i.0120, i32 4, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end42.tasklet_schedule.exit_crit_edge

if.end42.tasklet_schedule.exit_crit_edge:         ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %if.end42
  call void @__sanitizer_cov_trace_pc() #13
  %dma_tasklet = getelementptr %struct.imxdma_engine, ptr %dev_id, i32 0, i32 7, i32 %i.0120, i32 4
  tail call void @__tasklet_schedule(ptr noundef %dma_tasklet) #11
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %if.end42.tasklet_schedule.exit_crit_edge
  %37 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev_id, align 4
  %and43 = and i32 %errcode.3, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and43)
  %tobool44.not = icmp eq i32 %and43, 0
  %cond = select i1 %tobool44.not, ptr @.str.33, ptr @.str.32
  %and45 = and i32 %errcode.3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and45)
  %tobool46.not = icmp eq i32 %and45, 0
  %cond47 = select i1 %tobool46.not, ptr @.str.33, ptr @.str.34
  %and48 = and i32 %errcode.3, 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and48)
  %tobool49.not = icmp eq i32 %and48, 0
  %cond50 = select i1 %tobool49.not, ptr @.str.33, ptr @.str.35
  %and51 = and i32 %errcode.3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and51)
  %tobool52.not = icmp eq i32 %and51, 0
  %cond53 = select i1 %tobool52.not, ptr @.str.33, ptr @.str.36
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %38, ptr noundef nonnull @.str.30, i32 noundef %i.0120, ptr noundef nonnull %cond, ptr noundef nonnull %cond47, ptr noundef nonnull %cond50, ptr noundef nonnull %cond53) #14
  br label %for.inc

for.inc:                                          ; preds = %tasklet_schedule.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0120, 1
  %exitcond.not = icmp eq i32 %inc, 16
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %entry.cleanup_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_timer_key(ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imxdma_watchdog(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %imxdma1 = getelementptr i8, ptr %t, i32 48
  %0 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imxdma1, align 4
  %channel2 = getelementptr i8, ptr %t, i32 52
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  %shl = shl i32 %3, 6
  %add = add i32 %shl, 140
  %base.i = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 2
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #11, !srcloc !129
  %state.i = getelementptr i8, ptr %t, i32 60
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %entry.tasklet_schedule.exit_crit_edge

entry.tasklet_schedule.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dma_tasklet = getelementptr i8, ptr %t, i32 56
  tail call void @__tasklet_schedule(ptr noundef %dma_tasklet) #11
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %entry.tasklet_schedule.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxdma_watchdog.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imxdma_watchdog, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !131

if.then:                                          ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imxdma_watchdog.__UNIQUE_ID_ddebug241, ptr noundef %7, ptr noundef nonnull @.str.38, i32 noundef %9) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %tasklet_schedule.exit
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imxdma_tasklet(ptr noundef %t) #2 align 64 {
entry:
  %dummy_result.i.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %imxdma1 = getelementptr i8, ptr %t, i32 -8
  %0 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imxdma1, align 4
  %lock = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %ld_active = getelementptr i8, ptr %t, i32 40
  %2 = ptrtoint ptr %ld_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ld_active, align 4
  %cmp.i.not = icmp eq ptr %3, %ld_active
  br i1 %cmp.i.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %ld_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ld_active, align 4
  %cmp.i.not.i = icmp eq ptr %5, %ld_active
  br i1 %cmp.i.not.i, label %if.end.if.else_crit_edge, label %if.then.i

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then.i:                                        ; preds = %if.end
  %type.i = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 7
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %7)
  %cmp.i68 = icmp eq i32 %7, 3
  br i1 %cmp.i68, label %if.then.i.out_crit_edge, label %if.then.i.if.else_crit_edge

if.then.i.if.else_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then.i.out_crit_edge:                          ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.else:                                          ; preds = %if.then.i.if.else_crit_edge, %if.end.if.else_crit_edge
  %desc15 = getelementptr inbounds %struct.imxdma_desc, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %desc15 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %desc15, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.i69 = icmp slt i32 %9, 1
  br i1 %cmp.i69, label %do.body2.i, label %dma_cookie_complete.exit, !prof !132

do.body2.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #11, !srcloc !133
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.else
  %chan.i = getelementptr inbounds %struct.imxdma_desc, ptr %3, i32 0, i32 1, i32 3
  %10 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %9, ptr %completed_cookie.i, align 4
  %13 = ptrtoint ptr %desc15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %desc15, align 4
  %enabled_2d = getelementptr i8, ptr %t, i32 248
  %14 = ptrtoint ptr %enabled_2d to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %enabled_2d, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool17.not = icmp eq i8 %15, 0
  br i1 %tobool17.not, label %dma_cookie_complete.exit.if.end20_crit_edge, label %if.then18

dma_cookie_complete.exit.if.end20_crit_edge:      ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end20

if.then18:                                        ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #13
  %slot_2d = getelementptr i8, ptr %t, i32 252
  %16 = ptrtoint ptr %slot_2d to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %slot_2d, align 4
  %count = getelementptr %struct.imxdma_engine, ptr %1, i32 0, i32 6, i32 %17, i32 3
  %18 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %count, align 4
  %dec = add i32 %19, -1
  store i32 %dec, ptr %count, align 4
  %20 = ptrtoint ptr %enabled_2d to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %enabled_2d, align 4
  br label %if.end20

if.end20:                                         ; preds = %if.then18, %dma_cookie_complete.exit.if.end20_crit_edge
  %21 = ptrtoint ptr %ld_active to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %ld_active, align 4
  %ld_free = getelementptr i8, ptr %t, i32 24
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %22) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end20.__list_del_entry.exit.i_crit_edge

if.end20.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %22, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end20.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr i8, ptr %t, i32 28
  %29 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %22, ptr noundef %30, ptr noundef %ld_free) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %22, ptr %prev.i2.i, align 4
  %32 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %ld_free, ptr %22, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %22, ptr %30, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %ld_queue = getelementptr i8, ptr %t, i32 32
  %35 = ptrtoint ptr %ld_queue to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %ld_queue, align 4
  %cmp.i70.not = icmp eq ptr %36, %ld_queue
  br i1 %cmp.i70.not, label %list_move_tail.exit.out_crit_edge, label %if.then25

list_move_tail.exit.out_crit_edge:                ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then25:                                        ; preds = %list_move_tail.exit
  %call.i.i72 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %36) #11
  br i1 %call.i.i72, label %if.end.i.i75, label %if.then25.__list_del_entry.exit.i78_crit_edge

if.then25.__list_del_entry.exit.i78_crit_edge:    ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i78

if.end.i.i75:                                     ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i73 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %37 = ptrtoint ptr %prev.i.i73 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i.i73, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %36, align 4
  %prev1.i.i.i74 = getelementptr inbounds %struct.list_head, ptr %40, i32 0, i32 1
  %41 = ptrtoint ptr %prev1.i.i.i74 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev1.i.i.i74, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %40, ptr %38, align 4
  br label %__list_del_entry.exit.i78

__list_del_entry.exit.i78:                        ; preds = %if.end.i.i75, %if.then25.__list_del_entry.exit.i78_crit_edge
  %prev.i2.i76 = getelementptr i8, ptr %t, i32 44
  %43 = ptrtoint ptr %prev.i2.i76 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %prev.i2.i76, align 4
  %call.i.i.i77 = tail call zeroext i1 @__list_add_valid(ptr noundef %36, ptr noundef %44, ptr noundef %ld_active) #11
  br i1 %call.i.i.i77, label %if.end.i.i.i80, label %__list_del_entry.exit.i78.list_move_tail.exit81_crit_edge

__list_del_entry.exit.i78.list_move_tail.exit81_crit_edge: ; preds = %__list_del_entry.exit.i78
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit81

if.end.i.i.i80:                                   ; preds = %__list_del_entry.exit.i78
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %prev.i2.i76 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %36, ptr %prev.i2.i76, align 4
  %46 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %ld_active, ptr %36, align 4
  %prev3.i.i.i79 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i79 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i.i79, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %36, ptr %44, align 4
  br label %list_move_tail.exit81

list_move_tail.exit81:                            ; preds = %if.end.i.i.i80, %__list_del_entry.exit.i78.list_move_tail.exit81_crit_edge
  %call34 = tail call fastcc i32 @imxdma_xfer_desc(ptr noundef %36)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call34)
  %cmp35 = icmp slt i32 %call34, 0
  br i1 %cmp35, label %do.end40, label %list_move_tail.exit81.out_crit_edge

list_move_tail.exit81.out_crit_edge:              ; preds = %list_move_tail.exit81
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

do.end40:                                         ; preds = %list_move_tail.exit81
  call void @__sanitizer_cov_trace_pc() #13
  %49 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %1, align 4
  %channel = getelementptr i8, ptr %t, i32 -4
  %51 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %channel, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %50, ptr noundef nonnull @.str.39, ptr noundef nonnull @.str.40, i32 noundef %52) #14
  br label %out

out:                                              ; preds = %do.end40, %list_move_tail.exit81.out_crit_edge, %list_move_tail.exit.out_crit_edge, %if.then.i.out_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  %callback.i.i = getelementptr inbounds %struct.imxdma_desc, ptr %3, i32 0, i32 1, i32 6
  %53 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %callback.i.i, align 4
  %callback_result.i.i = getelementptr inbounds %struct.imxdma_desc, ptr %3, i32 0, i32 1, i32 7
  %55 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %callback_result.i.i, align 4
  %callback_param.i.i = getelementptr inbounds %struct.imxdma_desc, ptr %3, i32 0, i32 1, i32 8
  %57 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %callback_param.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i) #11
  %59 = ptrtoint ptr %dummy_result.i.i to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 0, ptr %dummy_result.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %56, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  call void %56(ptr noundef %58, ptr noundef nonnull %dummy_result.i.i) #11
  br label %dmaengine_desc_get_callback_invoke.exit

if.else.i.i:                                      ; preds = %out
  %tobool4.not.i.i = icmp eq ptr %54, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, label %if.then5.i.i

if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmaengine_desc_get_callback_invoke.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %54(ptr noundef %58) #11
  br label %dmaengine_desc_get_callback_invoke.exit

dmaengine_desc_get_callback_invoke.exit:          ; preds = %if.then5.i.i, %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_desc_get_callback_invoke.exit, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxdma_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %cmp.not = icmp eq ptr %1, null
  br i1 %cmp.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %dma_request1 = getelementptr i8, ptr %chan, i32 168
  %4 = ptrtoint ptr %dma_request1 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %dma_request1, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %descs_allocated = getelementptr i8, ptr %chan, i32 -16
  %5 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %descs_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %6)
  %cmp235 = icmp slt i32 %6, 16
  br i1 %cmp235, label %while.body.lr.ph, label %if.end.while.end_crit_edge

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %ld_free = getelementptr i8, ptr %chan, i32 -40
  %prev.i = getelementptr i8, ptr %chan, i32 -36
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %7 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %7, i32 noundef 3520, i32 noundef 160) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %while.body.while.end_crit_edge, label %if.end5

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

if.end5:                                          ; preds = %while.body
  %desc6 = getelementptr inbounds %struct.imxdma_desc, ptr %call7.i.i, i32 0, i32 1
  %8 = call ptr @memset(ptr %desc6, i32 0, i32 100)
  tail call void @dma_async_tx_descriptor_init(ptr noundef %desc6, ptr noundef %chan) #11
  %tx_submit = getelementptr inbounds %struct.imxdma_desc, ptr %call7.i.i, i32 0, i32 1, i32 4
  %9 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @imxdma_tx_submit, ptr %tx_submit, align 8
  %flags = getelementptr inbounds %struct.imxdma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 2, ptr %flags, align 4
  %status = getelementptr inbounds %struct.imxdma_desc, ptr %call7.i.i, i32 0, i32 2
  %11 = ptrtoint ptr %status to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %status, align 4
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %13, ptr noundef %ld_free) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end5.cleanup_crit_edge

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.i.i:                                       ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %prev.i, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ld_free, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %13, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %if.end5.cleanup_crit_edge
  %18 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %descs_allocated, align 4
  %inc = add i32 %19, 1
  store i32 %inc, ptr %descs_allocated, align 4
  %cmp2 = icmp slt i32 %inc, 16
  br i1 %cmp2, label %cleanup.while.body_crit_edge, label %cleanup.while.end_crit_edge

cleanup.while.end_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.end:                                        ; preds = %cleanup.while.end_crit_edge, %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  %20 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %descs_allocated, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool12.not = icmp eq i32 %21, 0
  %. = select i1 %tobool12.not, i32 -12, i32 %21
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imxdma_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -124
  %imxdma1 = getelementptr i8, ptr %chan, i32 -72
  %0 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imxdma1, align 4
  %lock = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  tail call fastcc void @imxdma_disable_hw(ptr noundef %add.ptr.i)
  %ld_active = getelementptr i8, ptr %chan, i32 -24
  %ld_free = getelementptr i8, ptr %chan, i32 -40
  %2 = ptrtoint ptr %ld_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ld_active, align 4
  %cmp.i.not.i = icmp eq ptr %3, %ld_active
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i = getelementptr i8, ptr %chan, i32 -36
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr i8, ptr %chan, i32 -20
  %6 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %5, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ld_free, ptr %7, align 4
  store ptr %7, ptr %prev.i, align 4
  %11 = ptrtoint ptr %ld_active to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %ld_active, ptr %ld_active, align 4
  store ptr %ld_active, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  %ld_queue = getelementptr i8, ptr %chan, i32 -32
  %12 = ptrtoint ptr %ld_queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %ld_queue, align 4
  %cmp.i.not.i41 = icmp eq ptr %13, %ld_queue
  br i1 %cmp.i.not.i41, label %list_splice_tail_init.exit.list_splice_tail_init.exit46_crit_edge, label %if.then.i45

list_splice_tail_init.exit.list_splice_tail_init.exit46_crit_edge: ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit46

if.then.i45:                                      ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i42 = getelementptr i8, ptr %chan, i32 -36
  %14 = ptrtoint ptr %prev.i42 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i42, align 4
  %prev2.i.i43 = getelementptr i8, ptr %chan, i32 -28
  %16 = ptrtoint ptr %prev2.i.i43 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev2.i.i43, align 4
  %prev3.i.i44 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i44 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i44, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %13, ptr %15, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ld_free, ptr %17, align 4
  store ptr %17, ptr %prev.i42, align 4
  %21 = ptrtoint ptr %ld_queue to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %ld_queue, ptr %ld_queue, align 4
  store ptr %ld_queue, ptr %prev2.i.i43, align 4
  br label %list_splice_tail_init.exit46

list_splice_tail_init.exit46:                     ; preds = %if.then.i45, %list_splice_tail_init.exit.list_splice_tail_init.exit46_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  %22 = ptrtoint ptr %ld_free to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ld_free, align 4
  %cmp17.not48 = icmp eq ptr %23, %ld_free
  br i1 %cmp17.not48, label %list_splice_tail_init.exit46.for.end_crit_edge, label %for.body.lr.ph

list_splice_tail_init.exit46.for.end_crit_edge:   ; preds = %list_splice_tail_init.exit46
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_tail_init.exit46
  %descs_allocated = getelementptr i8, ptr %chan, i32 -16
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %desc.049 = phi ptr [ %23, %for.body.lr.ph ], [ %_desc.0, %for.body.for.body_crit_edge ]
  %24 = ptrtoint ptr %desc.049 to i32
  call void @__asan_load4_noabort(i32 %24)
  %_desc.0 = load ptr, ptr %desc.049, align 4
  tail call void @kfree(ptr noundef %desc.049) #11
  %25 = ptrtoint ptr %descs_allocated to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %descs_allocated, align 4
  %dec = add i32 %26, -1
  store i32 %dec, ptr %descs_allocated, align 4
  %cmp17.not = icmp eq ptr %_desc.0, %ld_free
  br i1 %cmp17.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_splice_tail_init.exit46.for.end_crit_edge
  %27 = ptrtoint ptr %ld_free to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %ld_free, ptr %ld_free, align 4
  %prev.i47 = getelementptr i8, ptr %chan, i32 -36
  %28 = ptrtoint ptr %prev.i47 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %ld_free, ptr %prev.i47, align 4
  %sg_list = getelementptr i8, ptr %chan, i32 172
  %29 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %sg_list, align 4
  tail call void @kfree(ptr noundef %30) #11
  %31 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %sg_list, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxdma_tx_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !135
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.then.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_cookie_status.exit

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.dma_cookie_status.exit_crit_edge, label %if.else.i.i.if.end8.i.i_crit_edge

if.else.i.i.if.end8.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end8.i.i

if.else.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_cookie_status.exit

if.end8.i.i:                                      ; preds = %if.else.i.i.if.end8.i.i_crit_edge, %if.then.i.i.if.end8.i.i_crit_edge
  br label %dma_cookie_status.exit

dma_cookie_status.exit:                           ; preds = %if.end8.i.i, %if.else.i.i.dma_cookie_status.exit_crit_edge, %if.then.i.i.dma_cookie_status.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end8.i.i ], [ 0, %if.then.i.i.dma_cookie_status.exit_crit_edge ], [ 0, %if.else.i.i.dma_cookie_status.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @imxdma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -124
  %ld_free = getelementptr i8, ptr %chan, i32 -40
  %0 = ptrtoint ptr %ld_free to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %ld_free, align 4
  %cmp.i.not = icmp eq ptr %1, %ld_free
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %ld_active.i = getelementptr i8, ptr %chan, i32 -24
  %2 = ptrtoint ptr %ld_active.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ld_active.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %ld_active.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.if.end_crit_edge, label %if.then.i

lor.lhs.false.if.end_crit_edge:                   ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i:                                        ; preds = %lor.lhs.false
  %type.i = getelementptr inbounds %struct.imxdma_desc, ptr %3, i32 0, i32 7
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.i64 = icmp eq i32 %5, 3
  br i1 %cmp.i64, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end_crit_edge

if.then.i.if.end_crit_edge:                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %if.then.i.if.end_crit_edge, %lor.lhs.false.if.end_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp68.not = icmp eq i32 %sg_len, 0
  br i1 %cmp68.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %dma_length.071 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.070 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %sg.069 = phi ptr [ %call5, %for.body.for.body_crit_edge ], [ %sgl, %if.end.for.body_crit_edge ]
  %dma_length4 = getelementptr inbounds %struct.scatterlist, ptr %sg.069, i32 0, i32 4
  %6 = ptrtoint ptr %dma_length4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_length4, align 4
  %add = add i32 %7, %dma_length.071
  %inc = add nuw i32 %i.070, 1
  %call5 = tail call ptr @sg_next(ptr noundef %sg.069) #11
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %dma_length.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %add, %for.body.for.end_crit_edge ]
  %imxdma1.i = getelementptr i8, ptr %chan, i32 -72
  %8 = ptrtoint ptr %imxdma1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %imxdma1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp.i65 = icmp eq i32 %direction, 2
  %. = select i1 %cmp.i65, i32 200, i32 204
  %.76 = select i1 %cmp.i65, i32 216, i32 220
  %.77 = select i1 %cmp.i65, i32 208, i32 212
  %src_addr.i = getelementptr i8, ptr %chan, i32 %.
  %src_maxburst.i = getelementptr i8, ptr %chan, i32 %.76
  %src_addr_width.i = getelementptr i8, ptr %chan, i32 %.77
  %10 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %.sink = load i32, ptr %src_maxburst.i, align 4
  %11 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.sink72 = load i32, ptr %src_addr.i, align 4
  %12 = getelementptr i8, ptr %chan, i32 -8
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %.sink72, ptr %12, align 4
  %14 = getelementptr i8, ptr %chan, i32 -4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %.sink, ptr %14, align 4
  %16 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %.sink.i = load i32, ptr %src_addr_width.i, align 4
  %17 = getelementptr i8, ptr %chan, i32 -12
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %.sink.i, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.sink.i)
  %switch.selectcmp.i = icmp eq i32 %.sink.i, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2080, i32 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.sink.i)
  %switch.selectcmp1.i = icmp eq i32 %.sink.i, 1
  %switch.select2.i = select i1 %switch.selectcmp1.i, i32 2064, i32 %switch.select.i
  %19 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 0, ptr %add.ptr.i, align 4
  %or9.i = or i32 %switch.select2.i, 8
  %ccr_from_device.i = getelementptr i8, ptr %chan, i32 176
  %20 = ptrtoint ptr %ccr_from_device.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %or9.i, ptr %ccr_from_device.i, align 4
  %shl.i = shl nuw nsw i32 %switch.select2.i, 2
  %or12.i = or i32 %shl.i, 8
  %ccr_to_device.i = getelementptr i8, ptr %chan, i32 180
  %21 = ptrtoint ptr %ccr_to_device.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %or12.i, ptr %ccr_to_device.i, align 4
  %dma_request.i = getelementptr i8, ptr %chan, i32 168
  %22 = ptrtoint ptr %dma_request.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_request.i, align 4
  %channel.i = getelementptr i8, ptr %chan, i32 -68
  %24 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %channel.i, align 4
  %shl13.i = shl i32 %25, 6
  %add.i = add i32 %shl13.i, 144
  %base.i.i = getelementptr inbounds %struct.imxdma_engine, ptr %9, i32 0, i32 2
  %26 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %27, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %23) #11, !srcloc !129
  %28 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %14, align 4
  %30 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %17, align 4
  %mul.i = mul i32 %31, %29
  %32 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %channel.i, align 4
  %shl17.i = shl i32 %33, 6
  %add18.i = add i32 %shl17.i, 148
  %34 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %35, i32 %add18.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %mul.i) #11, !srcloc !129
  %36 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %17, align 4
  %38 = zext i32 %37 to i64
  call void @__sanitizer_cov_trace_switch(i64 %38, ptr @__sancov_gen_cov_switch_values)
  switch i32 %37, label %for.end.cleanup_crit_edge [
    i32 4, label %sw.bb
    i32 2, label %sw.bb14
    i32 1, label %for.end.sw.epilog_crit_edge
  ]

for.end.sw.epilog_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %for.end
  %dma_length7 = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 4
  %39 = ptrtoint ptr %dma_length7 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dma_length7, align 4
  %and = and i32 %40, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool8.not = icmp eq i32 %and, 0
  br i1 %tobool8.not, label %lor.lhs.false9, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false9:                                   ; preds = %sw.bb
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 3
  %41 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_address, align 4
  %and10 = and i32 %42, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and10)
  %tobool11.not = icmp eq i32 %and10, 0
  br i1 %tobool11.not, label %lor.lhs.false9.sw.epilog_crit_edge, label %lor.lhs.false9.cleanup_crit_edge

lor.lhs.false9.cleanup_crit_edge:                 ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false9.sw.epilog_crit_edge:               ; preds = %lor.lhs.false9
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.bb14:                                          ; preds = %for.end
  %dma_length15 = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 4
  %43 = ptrtoint ptr %dma_length15 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dma_length15, align 4
  %and16 = and i32 %44, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %lor.lhs.false18, label %sw.bb14.cleanup_crit_edge

sw.bb14.cleanup_crit_edge:                        ; preds = %sw.bb14
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false18:                                  ; preds = %sw.bb14
  %dma_address19 = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 3
  %45 = ptrtoint ptr %dma_address19 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %dma_address19, align 4
  %and20 = and i32 %46, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and20)
  %tobool21.not = icmp eq i32 %and20, 0
  br i1 %tobool21.not, label %lor.lhs.false18.sw.epilog_crit_edge, label %lor.lhs.false18.cleanup_crit_edge

lor.lhs.false18.cleanup_crit_edge:                ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false18.sw.epilog_crit_edge:              ; preds = %lor.lhs.false18
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog

sw.epilog:                                        ; preds = %lor.lhs.false18.sw.epilog_crit_edge, %lor.lhs.false9.sw.epilog_crit_edge, %for.end.sw.epilog_crit_edge
  %type = getelementptr inbounds %struct.imxdma_desc, ptr %1, i32 0, i32 7
  %47 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 2, ptr %type, align 4
  %sg24 = getelementptr inbounds %struct.imxdma_desc, ptr %1, i32 0, i32 13
  %48 = ptrtoint ptr %sg24 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %sgl, ptr %sg24, align 4
  %sgcount = getelementptr inbounds %struct.imxdma_desc, ptr %1, i32 0, i32 14
  %49 = ptrtoint ptr %sgcount to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %sg_len, ptr %sgcount, align 4
  %len = getelementptr inbounds %struct.imxdma_desc, ptr %1, i32 0, i32 5
  %50 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %dma_length.0.lcssa, ptr %len, align 4
  %direction25 = getelementptr inbounds %struct.imxdma_desc, ptr %1, i32 0, i32 6
  %51 = ptrtoint ptr %direction25 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %direction, ptr %direction25, align 4
  %52 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %12, align 4
  %dest = getelementptr inbounds %struct.imxdma_desc, ptr %1, i32 0, i32 4
  %src = getelementptr inbounds %struct.imxdma_desc, ptr %1, i32 0, i32 3
  %dest.sink = select i1 %cmp.i65, ptr %src, ptr %dest
  %54 = ptrtoint ptr %dest.sink to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %53, ptr %dest.sink, align 4
  %desc30 = getelementptr inbounds %struct.imxdma_desc, ptr %1, i32 0, i32 1
  %callback = getelementptr inbounds %struct.imxdma_desc, ptr %1, i32 0, i32 1, i32 6
  %55 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr null, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.imxdma_desc, ptr %1, i32 0, i32 1, i32 8
  %56 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %callback_param, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %lor.lhs.false18.cleanup_crit_edge, %sw.bb14.cleanup_crit_edge, %lor.lhs.false9.cleanup_crit_edge, %sw.bb.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %desc30, %sw.epilog ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false9.cleanup_crit_edge ], [ null, %sw.bb.cleanup_crit_edge ], [ null, %lor.lhs.false18.cleanup_crit_edge ], [ null, %sw.bb14.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ], [ null, %if.then.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @imxdma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %dma_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -124
  %imxdma1 = getelementptr i8, ptr %chan, i32 -72
  %0 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imxdma1, align 4
  %div = udiv i32 %buf_len, %period_len
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxdma_prep_dma_cyclic.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imxdma_prep_dma_cyclic, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !131

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %channel = getelementptr i8, ptr %chan, i32 -68
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imxdma_prep_dma_cyclic.__UNIQUE_ID_ddebug246, ptr noundef %3, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, i32 noundef %5, i32 noundef %buf_len, i32 noundef %period_len) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ld_free = getelementptr i8, ptr %chan, i32 -40
  %6 = ptrtoint ptr %ld_free to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ld_free, align 4
  %cmp.i.not = icmp eq ptr %7, %ld_free
  br i1 %cmp.i.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %ld_active.i = getelementptr i8, ptr %chan, i32 -24
  %8 = ptrtoint ptr %ld_active.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ld_active.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %ld_active.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.if.end10_crit_edge, label %if.then.i

lor.lhs.false.if.end10_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then.i:                                        ; preds = %lor.lhs.false
  %type.i = getelementptr inbounds %struct.imxdma_desc, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i89 = icmp eq i32 %11, 3
  br i1 %cmp.i89, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end10_crit_edge

if.then.i.if.end10_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end10

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %if.then.i.if.end10_crit_edge, %lor.lhs.false.if.end10_crit_edge
  %sg_list = getelementptr i8, ptr %chan, i32 172
  %12 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %sg_list, align 4
  tail call void @kfree(ptr noundef %13) #11
  %add = add i32 %div, 1
  %14 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 20) #11
  %15 = extractvalue { i32, i1 } %14, 1
  br i1 %15, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !132

kcalloc.exit.thread:                              ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %16 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %sg_list, align 4
  br label %cleanup

if.end7.i.i:                                      ; preds = %if.end10
  %17 = extractvalue { i32, i1 } %14, 0
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %17, i32 noundef 2848) #16
  %18 = ptrtoint ptr %sg_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call8.i.i, ptr %sg_list, align 4
  %tobool16.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool16.not, label %if.end7.i.i.cleanup_crit_edge, label %if.end18

if.end7.i.i.cleanup_crit_edge:                    ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end18:                                         ; preds = %if.end7.i.i
  tail call void @sg_init_table(ptr noundef nonnull %call8.i.i, i32 noundef %div) #11
  call void @__sanitizer_cov_trace_cmp4(i32 %period_len, i32 %buf_len)
  %cmp110.not = icmp ugt i32 %period_len, %buf_len
  br i1 %cmp110.not, label %if.end18.for.end_crit_edge, label %for.body.preheader

if.end18.for.end_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.preheader:                               ; preds = %if.end18
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %sg_assign_page.exit.for.body_crit_edge, %for.body.preheader
  %dma_addr.addr.0112 = phi i32 [ %add27, %sg_assign_page.exit.for.body_crit_edge ], [ %dma_addr, %for.body.preheader ]
  %i.0111 = phi i32 [ %inc, %sg_assign_page.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %19 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %sg_list, align 4
  %arrayidx = getelementptr %struct.scatterlist, ptr %20, i32 %i.0111
  %21 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx, align 4
  %and.i.i = and i32 %22, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %sg_assign_page.exit, label %do.body19.i, !prof !136

do.body19.i:                                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #11, !srcloc !137
  unreachable

sg_assign_page.exit:                              ; preds = %for.body
  %and.i = and i32 %22, 3
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %and.i, ptr %arrayidx, align 4
  %24 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %sg_list, align 4
  %offset = getelementptr %struct.scatterlist, ptr %25, i32 %i.0111, i32 1
  %26 = ptrtoint ptr %offset to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %offset, align 4
  %27 = load ptr, ptr %sg_list, align 4
  %dma_address = getelementptr %struct.scatterlist, ptr %27, i32 %i.0111, i32 3
  %28 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %dma_addr.addr.0112, ptr %dma_address, align 4
  %29 = load ptr, ptr %sg_list, align 4
  %dma_length = getelementptr %struct.scatterlist, ptr %29, i32 %i.0111, i32 4
  %30 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %period_len, ptr %dma_length, align 4
  %add27 = add i32 %dma_addr.addr.0112, %period_len
  %inc = add nuw i32 %i.0111, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %sg_assign_page.exit.for.end_crit_edge, label %sg_assign_page.exit.for.body_crit_edge

sg_assign_page.exit.for.body_crit_edge:           ; preds = %sg_assign_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

sg_assign_page.exit.for.end_crit_edge:            ; preds = %sg_assign_page.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %sg_assign_page.exit.for.end_crit_edge, %if.end18.for.end_crit_edge
  %31 = ptrtoint ptr %sg_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %sg_list, align 4
  %arrayidx.i = getelementptr %struct.scatterlist, ptr %32, i32 %div
  %offset.i.i = getelementptr %struct.scatterlist, ptr %32, i32 %div, i32 1
  %33 = ptrtoint ptr %offset.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 0, ptr %offset.i.i, align 4
  %length.i.i = getelementptr %struct.scatterlist, ptr %32, i32 %div, i32 2
  %34 = ptrtoint ptr %length.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %length.i.i, align 4
  %35 = ptrtoint ptr %32 to i32
  %or.i.i = and i32 %35, -4
  %and.i.i91 = or i32 %or.i.i, 1
  %36 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %and.i.i91, ptr %arrayidx.i, align 4
  %type = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 7
  %37 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 3, ptr %type, align 4
  %38 = load ptr, ptr %sg_list, align 4
  %sg = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 13
  %39 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %38, ptr %sg, align 4
  %sgcount = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 14
  %40 = ptrtoint ptr %sgcount to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %div, ptr %sgcount, align 4
  %len = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 5
  %41 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -1, ptr %len, align 4
  %direction32 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 6
  %42 = ptrtoint ptr %direction32 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %direction, ptr %direction32, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp33 = icmp eq i32 %direction, 2
  %per_address = getelementptr i8, ptr %chan, i32 -8
  %43 = ptrtoint ptr %per_address to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %per_address, align 4
  br i1 %cmp33, label %if.then.i93, label %if.else.i

if.then.i93:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %src = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 3
  br label %imxdma_config_write.exit

if.else.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %dest = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 4
  br label %imxdma_config_write.exit

imxdma_config_write.exit:                         ; preds = %if.else.i, %if.then.i93
  %src.sink = phi ptr [ %src, %if.then.i93 ], [ %dest, %if.else.i ]
  %.sink116 = phi i32 [ 200, %if.then.i93 ], [ 204, %if.else.i ]
  %.sink115 = phi i32 [ 216, %if.then.i93 ], [ 220, %if.else.i ]
  %.sink114 = phi i32 [ 208, %if.then.i93 ], [ 212, %if.else.i ]
  %45 = ptrtoint ptr %src.sink to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %44, ptr %src.sink, align 4
  %callback103 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 1, i32 6
  %46 = ptrtoint ptr %callback103 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %callback103, align 4
  %callback_param104 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 1, i32 8
  %47 = ptrtoint ptr %callback_param104 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %callback_param104, align 4
  %src_addr.i = getelementptr i8, ptr %chan, i32 %.sink116
  %src_maxburst.i = getelementptr i8, ptr %chan, i32 %.sink115
  %src_addr_width.i = getelementptr i8, ptr %chan, i32 %.sink114
  %48 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %imxdma1, align 4
  %50 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %.sink = load i32, ptr %src_maxburst.i, align 4
  %51 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %.sink113 = load i32, ptr %src_addr.i, align 4
  %52 = getelementptr i8, ptr %chan, i32 -8
  %53 = ptrtoint ptr %52 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink113, ptr %52, align 4
  %54 = getelementptr i8, ptr %chan, i32 -4
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %.sink, ptr %54, align 4
  %desc37107 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 1
  %56 = ptrtoint ptr %src_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.sink.i = load i32, ptr %src_addr_width.i, align 4
  %57 = getelementptr i8, ptr %chan, i32 -12
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink.i, ptr %57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %.sink.i)
  %switch.selectcmp.i = icmp eq i32 %.sink.i, 2
  %switch.select.i = select i1 %switch.selectcmp.i, i32 2080, i32 2048
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %.sink.i)
  %switch.selectcmp1.i = icmp eq i32 %.sink.i, 1
  %switch.select2.i = select i1 %switch.selectcmp1.i, i32 2064, i32 %switch.select.i
  %59 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 0, ptr %add.ptr.i, align 4
  %or9.i = or i32 %switch.select2.i, 8
  %ccr_from_device.i = getelementptr i8, ptr %chan, i32 176
  %60 = ptrtoint ptr %ccr_from_device.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %or9.i, ptr %ccr_from_device.i, align 4
  %shl.i = shl nuw nsw i32 %switch.select2.i, 2
  %or12.i = or i32 %shl.i, 8
  %ccr_to_device.i = getelementptr i8, ptr %chan, i32 180
  %61 = ptrtoint ptr %ccr_to_device.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or12.i, ptr %ccr_to_device.i, align 4
  %dma_request.i = getelementptr i8, ptr %chan, i32 168
  %62 = ptrtoint ptr %dma_request.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_request.i, align 4
  %channel.i = getelementptr i8, ptr %chan, i32 -68
  %64 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %channel.i, align 4
  %shl13.i = shl i32 %65, 6
  %add.i = add i32 %shl13.i, 144
  %base.i.i = getelementptr inbounds %struct.imxdma_engine, ptr %49, i32 0, i32 2
  %66 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i3.i = getelementptr i8, ptr %67, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i3.i, i32 %63) #11, !srcloc !129
  %68 = ptrtoint ptr %54 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %54, align 4
  %70 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %57, align 4
  %mul.i = mul i32 %71, %69
  %72 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %channel.i, align 4
  %shl17.i = shl i32 %73, 6
  %add18.i = add i32 %shl17.i, 148
  %74 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i5.i = getelementptr i8, ptr %75, i32 %add18.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i5.i, i32 %mul.i) #11, !srcloc !129
  br label %cleanup

cleanup:                                          ; preds = %imxdma_config_write.exit, %if.end7.i.i.cleanup_crit_edge, %kcalloc.exit.thread, %if.then.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %desc37107, %imxdma_config_write.exit ], [ null, %do.end.cleanup_crit_edge ], [ null, %if.end7.i.i.cleanup_crit_edge ], [ null, %kcalloc.exit.thread ], [ null, %if.then.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @imxdma_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %imxdma1 = getelementptr i8, ptr %chan, i32 -72
  %0 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imxdma1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxdma_prep_dma_memcpy.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imxdma_prep_dma_memcpy, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !131

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %channel = getelementptr i8, ptr %chan, i32 -68
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %conv = zext i32 %src to i64
  %conv6 = zext i32 %dest to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imxdma_prep_dma_memcpy.__UNIQUE_ID_ddebug247, ptr noundef %3, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, i32 noundef %5, i64 noundef %conv, i64 noundef %conv6, i32 noundef %len) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ld_free = getelementptr i8, ptr %chan, i32 -40
  %6 = ptrtoint ptr %ld_free to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %ld_free, align 4
  %cmp.i.not = icmp eq ptr %7, %ld_free
  br i1 %cmp.i.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %ld_active.i = getelementptr i8, ptr %chan, i32 -24
  %8 = ptrtoint ptr %ld_active.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %ld_active.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %ld_active.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.if.end12_crit_edge, label %if.then.i

lor.lhs.false.if.end12_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then.i:                                        ; preds = %lor.lhs.false
  %type.i = getelementptr inbounds %struct.imxdma_desc, ptr %9, i32 0, i32 7
  %10 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %11)
  %cmp.i39 = icmp eq i32 %11, 3
  br i1 %cmp.i39, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end12_crit_edge

if.then.i.if.end12_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end12:                                         ; preds = %if.then.i.if.end12_crit_edge, %lor.lhs.false.if.end12_crit_edge
  %type = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 7
  %12 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %type, align 4
  %src15 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 3
  %13 = ptrtoint ptr %src15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %src, ptr %src15, align 4
  %dest16 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 4
  %14 = ptrtoint ptr %dest16 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %dest, ptr %dest16, align 4
  %len17 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 5
  %15 = ptrtoint ptr %len17 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %len, ptr %len17, align 4
  %direction = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 6
  %16 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 0, ptr %direction, align 4
  %config_port = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 8
  %17 = ptrtoint ptr %config_port to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 0, ptr %config_port, align 4
  %config_mem = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 9
  %18 = ptrtoint ptr %config_mem to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %config_mem, align 4
  %desc18 = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 1
  %callback = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 1, i32 6
  %19 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr null, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.imxdma_desc, ptr %7, i32 0, i32 1, i32 8
  %20 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr null, ptr %callback_param, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end12, %if.then.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %desc18, %if.end12 ], [ null, %do.end.cleanup_crit_edge ], [ null, %if.then.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @imxdma_prep_dma_interleaved(ptr noundef %chan, ptr nocapture noundef readonly %xt, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %imxdma1 = getelementptr i8, ptr %chan, i32 -72
  %0 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imxdma1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxdma_prep_dma_interleaved.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imxdma_prep_dma_interleaved, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !131

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %channel = getelementptr i8, ptr %chan, i32 -68
  %4 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel, align 4
  %6 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xt, align 4
  %conv = zext i32 %7 to i64
  %dst_start = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 1
  %8 = ptrtoint ptr %dst_start to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst_start, align 4
  %conv6 = zext i32 %9 to i64
  %src_sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 5
  %10 = ptrtoint ptr %src_sgl to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %src_sgl, align 2, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool7.not = icmp eq i8 %11, 0
  %cond = select i1 %tobool7.not, ptr @.str.56, ptr @.str.55
  %dst_sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 6
  %12 = ptrtoint ptr %dst_sgl to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %dst_sgl, align 1, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool9.not = icmp eq i8 %13, 0
  %cond11 = select i1 %tobool9.not, ptr @.str.56, ptr @.str.55
  %numf = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 7
  %14 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %numf, align 4
  %frame_size = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 8
  %16 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %frame_size, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imxdma_prep_dma_interleaved.__UNIQUE_ID_ddebug248, ptr noundef %3, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53, i32 noundef %5, i64 noundef %conv, i64 noundef %conv6, ptr noundef nonnull %cond, ptr noundef nonnull %cond11, i32 noundef %15, i32 noundef %17) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %ld_free = getelementptr i8, ptr %chan, i32 -40
  %18 = ptrtoint ptr %ld_free to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %ld_free, align 4
  %cmp.i.not = icmp eq ptr %19, %ld_free
  br i1 %cmp.i.not, label %do.end.cleanup_crit_edge, label %lor.lhs.false

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %do.end
  %ld_active.i = getelementptr i8, ptr %chan, i32 -24
  %20 = ptrtoint ptr %ld_active.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %ld_active.i, align 4
  %cmp.i.not.i = icmp eq ptr %21, %ld_active.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.if.end17_crit_edge, label %if.then.i

lor.lhs.false.if.end17_crit_edge:                 ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then.i:                                        ; preds = %lor.lhs.false
  %type.i = getelementptr inbounds %struct.imxdma_desc, ptr %21, i32 0, i32 7
  %22 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %23)
  %cmp.i91 = icmp eq i32 %23, 3
  br i1 %cmp.i91, label %if.then.i.cleanup_crit_edge, label %if.then.i.if.end17_crit_edge

if.then.i.if.end17_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

if.then.i.cleanup_crit_edge:                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end17:                                         ; preds = %if.then.i.if.end17_crit_edge, %lor.lhs.false.if.end17_crit_edge
  %frame_size18 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 8
  %24 = ptrtoint ptr %frame_size18 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %frame_size18, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.not = icmp eq i32 %25, 1
  br i1 %cmp.not, label %lor.lhs.false20, label %if.end17.cleanup_crit_edge

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false20:                                  ; preds = %if.end17
  %numf21 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 7
  %26 = ptrtoint ptr %numf21 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %numf21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp22 = icmp eq i32 %27, 0
  br i1 %cmp22, label %lor.lhs.false20.cleanup_crit_edge, label %lor.lhs.false24

lor.lhs.false20.cleanup_crit_edge:                ; preds = %lor.lhs.false20
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false24:                                  ; preds = %lor.lhs.false20
  %dir = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 2
  %28 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp25.not = icmp eq i32 %29, 0
  br i1 %cmp25.not, label %if.end28, label %lor.lhs.false24.cleanup_crit_edge

lor.lhs.false24.cleanup_crit_edge:                ; preds = %lor.lhs.false24
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end28:                                         ; preds = %lor.lhs.false24
  %type = getelementptr inbounds %struct.imxdma_desc, ptr %19, i32 0, i32 7
  %30 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 1, ptr %type, align 4
  %31 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %xt, align 4
  %src = getelementptr inbounds %struct.imxdma_desc, ptr %19, i32 0, i32 3
  %33 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %src, align 4
  %dst_start32 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 1
  %34 = ptrtoint ptr %dst_start32 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dst_start32, align 4
  %dest = getelementptr inbounds %struct.imxdma_desc, ptr %19, i32 0, i32 4
  %36 = ptrtoint ptr %dest to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %dest, align 4
  %sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 9
  %37 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sgl, align 4
  %x = getelementptr inbounds %struct.imxdma_desc, ptr %19, i32 0, i32 10
  %39 = ptrtoint ptr %x to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %x, align 4
  %40 = ptrtoint ptr %numf21 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %numf21, align 4
  %y = getelementptr inbounds %struct.imxdma_desc, ptr %19, i32 0, i32 11
  %42 = ptrtoint ptr %y to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %y, align 4
  %icg = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 1
  %43 = ptrtoint ptr %icg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %icg, align 4
  %add = add i32 %44, %38
  %w = getelementptr inbounds %struct.imxdma_desc, ptr %19, i32 0, i32 12
  %45 = ptrtoint ptr %w to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %add, ptr %w, align 4
  %mul = mul i32 %41, %38
  %len = getelementptr inbounds %struct.imxdma_desc, ptr %19, i32 0, i32 5
  %46 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %mul, ptr %len, align 4
  %direction = getelementptr inbounds %struct.imxdma_desc, ptr %19, i32 0, i32 6
  %47 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %direction, align 4
  %config_port = getelementptr inbounds %struct.imxdma_desc, ptr %19, i32 0, i32 8
  %48 = ptrtoint ptr %config_port to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 0, ptr %config_port, align 4
  %config_mem = getelementptr inbounds %struct.imxdma_desc, ptr %19, i32 0, i32 9
  %49 = ptrtoint ptr %config_mem to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %config_mem, align 4
  %src_sgl39 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 5
  %50 = ptrtoint ptr %src_sgl39 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %src_sgl39, align 2, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool40.not = icmp eq i8 %51, 0
  %spec.store.select = select i1 %tobool40.not, i32 0, i32 1024
  %52 = ptrtoint ptr %config_mem to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %spec.store.select, ptr %config_mem, align 4
  %dst_sgl44 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 6
  %53 = ptrtoint ptr %dst_sgl44 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %dst_sgl44, align 1, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool45.not = icmp eq i8 %54, 0
  br i1 %tobool45.not, label %if.end28.if.end49_crit_edge, label %if.then46

if.end28.if.end49_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end49

if.then46:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %config_port to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 1024, ptr %config_port, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then46, %if.end28.if.end49_crit_edge
  %desc50 = getelementptr inbounds %struct.imxdma_desc, ptr %19, i32 0, i32 1
  %callback = getelementptr inbounds %struct.imxdma_desc, ptr %19, i32 0, i32 1, i32 6
  %56 = ptrtoint ptr %callback to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr null, ptr %callback, align 4
  %callback_param = getelementptr inbounds %struct.imxdma_desc, ptr %19, i32 0, i32 1, i32 8
  %57 = ptrtoint ptr %callback_param to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %callback_param, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end49, %lor.lhs.false24.cleanup_crit_edge, %lor.lhs.false20.cleanup_crit_edge, %if.end17.cleanup_crit_edge, %if.then.i.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %desc50, %if.end49 ], [ null, %do.end.cleanup_crit_edge ], [ null, %lor.lhs.false24.cleanup_crit_edge ], [ null, %lor.lhs.false20.cleanup_crit_edge ], [ null, %if.end17.cleanup_crit_edge ], [ null, %if.then.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @imxdma_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %dmaengine_cfg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %config = getelementptr i8, ptr %chan, i32 196
  %0 = call ptr @memcpy(ptr %config, ptr %dmaengine_cfg, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxdma_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %chan, i32 -124
  %imxdma1 = getelementptr i8, ptr %chan, i32 -72
  %0 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imxdma1, align 4
  tail call fastcc void @imxdma_disable_hw(ptr noundef %add.ptr.i)
  %lock = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %ld_active = getelementptr i8, ptr %chan, i32 -24
  %ld_free = getelementptr i8, ptr %chan, i32 -40
  %2 = ptrtoint ptr %ld_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ld_active, align 4
  %cmp.i.not.i = icmp eq ptr %3, %ld_active
  br i1 %cmp.i.not.i, label %entry.list_splice_tail_init.exit_crit_edge, label %if.then.i

entry.list_splice_tail_init.exit_crit_edge:       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i = getelementptr i8, ptr %chan, i32 -36
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr i8, ptr %chan, i32 -20
  %6 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %5, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %ld_free, ptr %7, align 4
  store ptr %7, ptr %prev.i, align 4
  %11 = ptrtoint ptr %ld_active to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %ld_active, ptr %ld_active, align 4
  store ptr %ld_active, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %entry.list_splice_tail_init.exit_crit_edge
  %ld_queue = getelementptr i8, ptr %chan, i32 -32
  %12 = ptrtoint ptr %ld_queue to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %ld_queue, align 4
  %cmp.i.not.i15 = icmp eq ptr %13, %ld_queue
  br i1 %cmp.i.not.i15, label %list_splice_tail_init.exit.list_splice_tail_init.exit20_crit_edge, label %if.then.i19

list_splice_tail_init.exit.list_splice_tail_init.exit20_crit_edge: ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit20

if.then.i19:                                      ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i16 = getelementptr i8, ptr %chan, i32 -36
  %14 = ptrtoint ptr %prev.i16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev.i16, align 4
  %prev2.i.i17 = getelementptr i8, ptr %chan, i32 -28
  %16 = ptrtoint ptr %prev2.i.i17 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev2.i.i17, align 4
  %prev3.i.i18 = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i18 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %15, ptr %prev3.i.i18, align 4
  %19 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %13, ptr %15, align 4
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %ld_free, ptr %17, align 4
  store ptr %17, ptr %prev.i16, align 4
  %21 = ptrtoint ptr %ld_queue to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %ld_queue, ptr %ld_queue, align 4
  store ptr %ld_queue, ptr %prev2.i.i17, align 4
  br label %list_splice_tail_init.exit20

list_splice_tail_init.exit20:                     ; preds = %if.then.i19, %list_splice_tail_init.exit.list_splice_tail_init.exit20_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @imxdma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %imxdma1 = getelementptr i8, ptr %chan, i32 -72
  %0 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imxdma1, align 4
  %lock = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %ld_active = getelementptr i8, ptr %chan, i32 -24
  %2 = ptrtoint ptr %ld_active to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %ld_active, align 4
  %cmp.i.not = icmp eq ptr %3, %ld_active
  br i1 %cmp.i.not, label %land.lhs.true, label %entry.if.end22_crit_edge

entry.if.end22_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true:                                    ; preds = %entry
  %ld_queue = getelementptr i8, ptr %chan, i32 -32
  %4 = ptrtoint ptr %ld_queue to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ld_queue, align 4
  %cmp.i32.not = icmp eq ptr %5, %ld_queue
  br i1 %cmp.i32.not, label %land.lhs.true.if.end22_crit_edge, label %if.then

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then:                                          ; preds = %land.lhs.true
  %call12 = tail call fastcc i32 @imxdma_xfer_desc(ptr noundef %5)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %cmp13 = icmp slt i32 %call12, 0
  br i1 %cmp13, label %do.end18, label %if.else

do.end18:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %channel = getelementptr i8, ptr %chan, i32 -68
  %8 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %channel, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.57, ptr noundef nonnull @.str.58, i32 noundef %9) #14
  br label %if.end22

if.else:                                          ; preds = %if.then
  %10 = ptrtoint ptr %ld_queue to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %ld_queue, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.else.__list_del_entry.exit.i_crit_edge

if.else.__list_del_entry.exit.i_crit_edge:        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i.i, align 4
  %14 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %11, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev1.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %15, ptr %13, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.else.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr i8, ptr %chan, i32 -20
  %18 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %11, ptr noundef %19, ptr noundef %ld_active) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.if.end22_crit_edge

__list_del_entry.exit.i.if.end22_crit_edge:       ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %11, ptr %prev.i2.i, align 4
  %21 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %ld_active, ptr %11, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %22 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %11, ptr %19, align 4
  br label %if.end22

if.end22:                                         ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.if.end22_crit_edge, %do.end18, %land.lhs.true.if.end22_crit_edge, %entry.if.end22_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @imxdma_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  %fdata = alloca %struct.imxdma_filter_data, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %2 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_dma_data, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %fdata) #11
  %4 = ptrtoint ptr %fdata to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %3, ptr %fdata, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = getelementptr inbounds %struct.imxdma_filter_data, ptr %fdata, i32 0, i32 1
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %5, align 4
  %cap_mask = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 1, i32 6
  %call = call ptr @__dma_request_channel(ptr noundef %cap_mask, ptr noundef nonnull @imxdma_filter_fn, ptr noundef nonnull %fdata, ptr noundef null) #11
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %fdata) #11
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dma_irq_handle_channel(ptr noundef %imxdmac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %imxdma1 = getelementptr inbounds %struct.imxdma_channel, ptr %imxdmac, i32 0, i32 2
  %0 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imxdma1, align 4
  %channel = getelementptr inbounds %struct.imxdma_channel, ptr %imxdmac, i32 0, i32 3
  %2 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel, align 4
  %lock = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %ld_active = getelementptr inbounds %struct.imxdma_channel, ptr %imxdmac, i32 0, i32 7
  %4 = ptrtoint ptr %ld_active to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %ld_active, align 4
  %cmp.i.not = icmp eq ptr %5, %ld_active
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  br i1 %cmp.i.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.end:                                           ; preds = %entry
  %sg = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 13
  %6 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %sg, align 4
  %tobool11.not = icmp eq ptr %7, null
  br i1 %tobool11.not, label %if.end.out_crit_edge, label %if.then12

if.end.out_crit_edge:                             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then12:                                        ; preds = %if.end
  %call15 = tail call ptr @sg_next(ptr noundef nonnull %7) #11
  %8 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call15, ptr %sg, align 4
  %tobool18.not = icmp eq ptr %call15, null
  br i1 %tobool18.not, label %if.end38, label %if.then19

if.then19:                                        ; preds = %if.then12
  %chan.i = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 1, i32 3
  %9 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %chan.i, align 4
  %imxdma1.i = getelementptr i8, ptr %10, i32 -72
  %11 = ptrtoint ptr %imxdma1.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %imxdma1.i, align 4
  %len.i = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 5
  %13 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %len.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %call15, i32 0, i32 4
  %15 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_length.i, align 4
  %17 = tail call i32 @llvm.umin.i32(i32 %14, i32 %16) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %14)
  %cmp4.not.i = icmp eq i32 %14, -1
  br i1 %cmp4.not.i, label %if.then19.if.end.i_crit_edge, label %if.then.i

if.then19.if.end.i_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i32 %14, %17
  %18 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %sub.i, ptr %len.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.then19.if.end.i_crit_edge
  %direction.i = getelementptr inbounds %struct.imxdma_desc, ptr %5, i32 0, i32 6
  %19 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %20)
  %cmp6.i = icmp eq i32 %20, 2
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %call15, i32 0, i32 3
  %21 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dma_address.i, align 4
  %channel.i = getelementptr i8, ptr %10, i32 -68
  %23 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %channel.i, align 4
  %shl.i = shl i32 %24, 6
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %shl.i, 132
  %base.i.i = getelementptr inbounds %struct.imxdma_engine, ptr %12, i32 0, i32 2
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %26, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %22) #11, !srcloc !129
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add11.i = add i32 %shl.i, 128
  %base.i62.i = getelementptr inbounds %struct.imxdma_engine, ptr %12, i32 0, i32 2
  %27 = ptrtoint ptr %base.i62.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i62.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %28, i32 %add11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %22) #11, !srcloc !129
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then7.i
  %29 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %channel.i, align 4
  %shl14.i = shl i32 %30, 6
  %add15.i = add i32 %shl14.i, 136
  %base.i64.i = getelementptr inbounds %struct.imxdma_engine, ptr %12, i32 0, i32 2
  %31 = ptrtoint ptr %base.i64.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i64.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %32, i32 %add15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 %17) #11, !srcloc !129
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxdma_sg_next.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_irq_handle_channel, %imxdma_sg_next.exit)) #11
          to label %if.then21.i [label %imxdma_sg_next.exit], !srcloc !131

if.then21.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %33 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %12, align 4
  %35 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %channel.i, align 4
  %shl24.i = shl i32 %36, 6
  %add25.i = add i32 %shl24.i, 132
  %37 = ptrtoint ptr %base.i64.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i64.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %38, i32 %add25.i
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #11, !srcloc !130
  %40 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %channel.i, align 4
  %shl28.i = shl i32 %41, 6
  %add29.i = add i32 %shl28.i, 128
  %42 = ptrtoint ptr %base.i64.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i64.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %43, i32 %add29.i
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #11, !srcloc !130
  %45 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %channel.i, align 4
  %shl32.i = shl i32 %46, 6
  %add33.i = add i32 %shl32.i, 136
  %47 = ptrtoint ptr %base.i64.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i64.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %48, i32 %add33.i
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #11, !srcloc !130
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imxdma_sg_next.__UNIQUE_ID_ddebug238, ptr noundef %34, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %36, i32 noundef %39, i32 noundef %44, i32 noundef %49) #11
  br label %imxdma_sg_next.exit

imxdma_sg_next.exit:                              ; preds = %if.then21.i, %if.end12.i
  %shl = shl i32 %3, 6
  %add = add i32 %shl, 140
  %base.i = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %51, i32 %add
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !130
  %53 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %imxdma1, align 4
  %devtype.i.i = getelementptr inbounds %struct.imxdma_engine, ptr %54, i32 0, i32 8
  %55 = ptrtoint ptr %devtype.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %devtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %56)
  %cmp.i.not.i = icmp eq i32 %56, 2
  br i1 %cmp.i.not.i, label %imxdma_hw_chain.exit, label %imxdma_sg_next.exit.if.else_crit_edge

imxdma_sg_next.exit.if.else_crit_edge:            ; preds = %imxdma_sg_next.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

imxdma_hw_chain.exit:                             ; preds = %imxdma_sg_next.exit
  %57 = ptrtoint ptr %imxdmac to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %imxdmac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool22.not = icmp eq i32 %58, 0
  br i1 %tobool22.not, label %imxdma_hw_chain.exit.if.else_crit_edge, label %if.then23

imxdma_hw_chain.exit.if.else_crit_edge:           ; preds = %imxdma_hw_chain.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.else

if.then23:                                        ; preds = %imxdma_hw_chain.exit
  call void @__sanitizer_cov_trace_pc() #13
  %watchdog = getelementptr inbounds %struct.imxdma_channel, ptr %imxdmac, i32 0, i32 1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %59 = load volatile i32, ptr @jiffies, align 128
  %add25 = add i32 %59, 50
  %call26 = tail call i32 @mod_timer(ptr noundef %watchdog, i32 noundef %add25) #11
  %or = or i32 %52, 16389
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 4
  %add.ptr.i90 = getelementptr i8, ptr %61, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i90, i32 %or) #11, !srcloc !129
  br label %if.end32

if.else:                                          ; preds = %imxdma_hw_chain.exit.if.else_crit_edge, %imxdma_sg_next.exit.if.else_crit_edge
  %and = and i32 %52, -2
  %62 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i, align 4
  %add.ptr.i92 = getelementptr i8, ptr %63, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i92, i32 %and) #11, !srcloc !129
  %or31 = or i32 %52, 1
  br label %if.end32

if.end32:                                         ; preds = %if.else, %if.then23
  %tmp13.0 = phi i32 [ %or, %if.then23 ], [ %or31, %if.else ]
  %64 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %base.i, align 4
  %add.ptr.i94 = getelementptr i8, ptr %65, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i94, i32 %tmp13.0) #11, !srcloc !129
  %66 = ptrtoint ptr %ld_active to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %ld_active, align 4
  %cmp.i.not.i95 = icmp eq ptr %67, %ld_active
  br i1 %cmp.i.not.i95, label %if.end32.cleanup49_crit_edge, label %if.then.i97

if.end32.cleanup49_crit_edge:                     ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup49

if.then.i97:                                      ; preds = %if.end32
  %type.i = getelementptr inbounds %struct.imxdma_desc, ptr %67, i32 0, i32 7
  %68 = ptrtoint ptr %type.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %type.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %69)
  %cmp.i96 = icmp eq i32 %69, 3
  br i1 %cmp.i96, label %if.then36, label %if.then.i97.cleanup49_crit_edge

if.then.i97.cleanup49_crit_edge:                  ; preds = %if.then.i97
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup49

if.then36:                                        ; preds = %if.then.i97
  %state.i = getelementptr inbounds %struct.imxdma_channel, ptr %imxdmac, i32 0, i32 4, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i99, label %if.then36.cleanup49_crit_edge

if.then36.cleanup49_crit_edge:                    ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup49

if.then.i99:                                      ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #13
  %dma_tasklet = getelementptr inbounds %struct.imxdma_channel, ptr %imxdmac, i32 0, i32 4
  tail call void @__tasklet_schedule(ptr noundef %dma_tasklet) #11
  br label %cleanup49

if.end38:                                         ; preds = %if.then12
  %70 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %imxdma1, align 4
  %devtype.i.i102 = getelementptr inbounds %struct.imxdma_engine, ptr %71, i32 0, i32 8
  %72 = ptrtoint ptr %devtype.i.i102 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %devtype.i.i102, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %73)
  %cmp.i.not.i103 = icmp eq i32 %73, 2
  br i1 %cmp.i.not.i103, label %imxdma_hw_chain.exit106, label %if.end38.out_crit_edge

if.end38.out_crit_edge:                           ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

imxdma_hw_chain.exit106:                          ; preds = %if.end38
  %74 = ptrtoint ptr %imxdmac to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %imxdmac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %75)
  %tobool40.not = icmp eq i32 %75, 0
  br i1 %tobool40.not, label %imxdma_hw_chain.exit106.out_crit_edge, label %if.then41

imxdma_hw_chain.exit106.out_crit_edge:            ; preds = %imxdma_hw_chain.exit106
  call void @__sanitizer_cov_trace_pc() #13
  br label %out

if.then41:                                        ; preds = %imxdma_hw_chain.exit106
  call void @__sanitizer_cov_trace_pc() #13
  %watchdog42 = getelementptr inbounds %struct.imxdma_channel, ptr %imxdmac, i32 0, i32 1
  %call43 = tail call i32 @del_timer(ptr noundef %watchdog42) #11
  br label %cleanup49

out:                                              ; preds = %imxdma_hw_chain.exit106.out_crit_edge, %if.end38.out_crit_edge, %if.end.out_crit_edge, %entry.out_crit_edge
  %shl46 = shl i32 %3, 6
  %add47 = add i32 %shl46, 140
  %base.i107 = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 2
  %76 = ptrtoint ptr %base.i107 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i107, align 4
  %add.ptr.i108 = getelementptr i8, ptr %77, i32 %add47
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i108, i32 0) #11, !srcloc !129
  %state.i109 = getelementptr inbounds %struct.imxdma_channel, ptr %imxdmac, i32 0, i32 4, i32 1
  %call.i110 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i109) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110)
  %tobool.not.i111 = icmp eq i32 %call.i110, 0
  br i1 %tobool.not.i111, label %if.then.i112, label %out.cleanup49_crit_edge

out.cleanup49_crit_edge:                          ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup49

if.then.i112:                                     ; preds = %out
  call void @__sanitizer_cov_trace_pc() #13
  %dma_tasklet48 = getelementptr inbounds %struct.imxdma_channel, ptr %imxdmac, i32 0, i32 4
  tail call void @__tasklet_schedule(ptr noundef %dma_tasklet48) #11
  br label %cleanup49

cleanup49:                                        ; preds = %if.then.i112, %out.cleanup49_crit_edge, %if.then41, %if.then.i99, %if.then36.cleanup49_crit_edge, %if.then.i97.cleanup49_crit_edge, %if.end32.cleanup49_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mod_timer(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @del_timer(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @imxdma_xfer_desc(ptr noundef %d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %imxdma1 = getelementptr i8, ptr %1, i32 -72
  %2 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %imxdma1, align 4
  %type = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 7
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %type, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.59)
  switch i32 %5, label %entry.cleanup_crit_edge [
    i32 1, label %for.cond.preheader
    i32 0, label %entry.sw.bb55_crit_edge
    i32 3, label %entry.sw.bb81_crit_edge
    i32 2, label %entry.sw.bb81_crit_edge296
  ]

entry.sw.bb81_crit_edge296:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb81

entry.sw.bb81_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb81

entry.sw.bb55_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.bb55

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %x = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 10
  %y = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 11
  %w = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 12
  %count = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 6, i32 0, i32 3
  %7 = ptrtoint ptr %count to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp2 = icmp sgt i32 %8, 0
  br i1 %cmp2, label %land.lhs.true, label %for.cond.preheader.if.end21_crit_edge

for.cond.preheader.if.end21_crit_edge:            ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true:                                    ; preds = %for.cond.preheader
  %arrayidx = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 6, i32 0
  %9 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %arrayidx, align 4
  %conv = zext i16 %10 to i32
  %11 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %x, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %conv)
  %cmp5.not = icmp eq i32 %12, %conv
  br i1 %cmp5.not, label %lor.lhs.false, label %land.lhs.true.for.inc_crit_edge

land.lhs.true.for.inc_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false:                                    ; preds = %land.lhs.true
  %ysr = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 6, i32 0, i32 1
  %13 = ptrtoint ptr %ysr to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %ysr, align 2
  %conv9 = zext i16 %14 to i32
  %15 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %y, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %conv9)
  %cmp10.not = icmp eq i32 %16, %conv9
  br i1 %cmp10.not, label %lor.lhs.false12, label %lor.lhs.false.for.inc_crit_edge

lor.lhs.false.for.inc_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false12:                                  ; preds = %lor.lhs.false
  %wsr = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 6, i32 0, i32 2
  %17 = ptrtoint ptr %wsr to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %wsr, align 4
  %conv15 = zext i16 %18 to i32
  %19 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %20, i32 %conv15)
  %cmp16.not = icmp eq i32 %20, %conv15
  br i1 %cmp16.not, label %lor.lhs.false12.if.end21_crit_edge, label %lor.lhs.false12.for.inc_crit_edge

lor.lhs.false12.for.inc_crit_edge:                ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

lor.lhs.false12.if.end21_crit_edge:               ; preds = %lor.lhs.false12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

for.inc:                                          ; preds = %lor.lhs.false12.for.inc_crit_edge, %lor.lhs.false.for.inc_crit_edge, %land.lhs.true.for.inc_crit_edge
  %count.1 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 6, i32 1, i32 3
  %21 = ptrtoint ptr %count.1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %count.1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp2.1 = icmp sgt i32 %22, 0
  br i1 %cmp2.1, label %land.lhs.true.1, label %for.inc.if.end21_crit_edge

for.inc.if.end21_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

land.lhs.true.1:                                  ; preds = %for.inc
  %arrayidx.1 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load2_noabort(i32 %23)
  %24 = load i16, ptr %arrayidx.1, align 4
  %conv.1 = zext i16 %24 to i32
  %25 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %x, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %conv.1)
  %cmp5.not.1 = icmp eq i32 %26, %conv.1
  br i1 %cmp5.not.1, label %lor.lhs.false.1, label %land.lhs.true.1.cleanup_crit_edge

land.lhs.true.1.cleanup_crit_edge:                ; preds = %land.lhs.true.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false.1:                                  ; preds = %land.lhs.true.1
  %ysr.1 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 6, i32 1, i32 1
  %27 = ptrtoint ptr %ysr.1 to i32
  call void @__asan_load2_noabort(i32 %27)
  %28 = load i16, ptr %ysr.1, align 2
  %conv9.1 = zext i16 %28 to i32
  %29 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %y, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %30, i32 %conv9.1)
  %cmp10.not.1 = icmp eq i32 %30, %conv9.1
  br i1 %cmp10.not.1, label %lor.lhs.false12.1, label %lor.lhs.false.1.cleanup_crit_edge

lor.lhs.false.1.cleanup_crit_edge:                ; preds = %lor.lhs.false.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false12.1:                                ; preds = %lor.lhs.false.1
  %wsr.1 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 6, i32 1, i32 2
  %31 = ptrtoint ptr %wsr.1 to i32
  call void @__asan_load2_noabort(i32 %31)
  %32 = load i16, ptr %wsr.1, align 4
  %conv15.1 = zext i16 %32 to i32
  %33 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %w, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %conv15.1)
  %cmp16.not.1 = icmp eq i32 %34, %conv15.1
  br i1 %cmp16.not.1, label %lor.lhs.false12.1.if.end21_crit_edge, label %lor.lhs.false12.1.cleanup_crit_edge

lor.lhs.false12.1.cleanup_crit_edge:              ; preds = %lor.lhs.false12.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false12.1.if.end21_crit_edge:             ; preds = %lor.lhs.false12.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end21

if.end21:                                         ; preds = %lor.lhs.false12.1.if.end21_crit_edge, %for.inc.if.end21_crit_edge, %lor.lhs.false12.if.end21_crit_edge, %for.cond.preheader.if.end21_crit_edge
  %cmp41 = phi i1 [ false, %lor.lhs.false12.1.if.end21_crit_edge ], [ false, %for.inc.if.end21_crit_edge ], [ true, %lor.lhs.false12.if.end21_crit_edge ], [ true, %for.cond.preheader.if.end21_crit_edge ]
  %i.0293.lcssa = phi i32 [ 1, %lor.lhs.false12.1.if.end21_crit_edge ], [ 1, %for.inc.if.end21_crit_edge ], [ 0, %lor.lhs.false12.if.end21_crit_edge ], [ 0, %for.cond.preheader.if.end21_crit_edge ]
  %35 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %x, align 4
  %conv23 = trunc i32 %36 to i16
  %arrayidx25 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 6, i32 %i.0293.lcssa
  %37 = ptrtoint ptr %arrayidx25 to i32
  call void @__asan_store2_noabort(i32 %37)
  store i16 %conv23, ptr %arrayidx25, align 4
  %38 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %y, align 4
  %conv28 = trunc i32 %39 to i16
  %ysr31 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 6, i32 %i.0293.lcssa, i32 1
  %40 = ptrtoint ptr %ysr31 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 %conv28, ptr %ysr31, align 2
  %41 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %w, align 4
  %conv33 = trunc i32 %42 to i16
  %wsr36 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 6, i32 %i.0293.lcssa, i32 2
  %43 = ptrtoint ptr %wsr36 to i32
  call void @__asan_store2_noabort(i32 %43)
  store i16 %conv33, ptr %wsr36, align 4
  %count39 = getelementptr %struct.imxdma_engine, ptr %3, i32 0, i32 6, i32 %i.0293.lcssa, i32 3
  %44 = ptrtoint ptr %count39 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %count39, align 4
  %inc40 = add i32 %45, 1
  store i32 %inc40, ptr %count39, align 4
  %slot_2d = getelementptr i8, ptr %1, i32 188
  %46 = ptrtoint ptr %slot_2d to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %i.0293.lcssa, ptr %slot_2d, align 4
  %enabled_2d = getelementptr i8, ptr %1, i32 184
  %47 = ptrtoint ptr %enabled_2d to i32
  call void @__asan_store1_noabort(i32 %47)
  store i8 1, ptr %enabled_2d, align 4
  %config_mem = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 9
  %48 = ptrtoint ptr %config_mem to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %config_mem, align 4
  br i1 %cmp41, label %if.then43, label %if.else

if.then43:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %and = and i32 %49, -257
  %50 = ptrtoint ptr %config_mem to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %and, ptr %config_mem, align 4
  %config_port = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 8
  %51 = ptrtoint ptr %config_port to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %config_port, align 4
  %and44 = and i32 %52, -257
  store i32 %and44, ptr %config_port, align 4
  %53 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %x, align 4
  %base.i = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 2
  %55 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i, align 4
  %add.ptr.i260 = getelementptr i8, ptr %56, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i260, i32 %54) #11, !srcloc !129
  %57 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %y, align 4
  %59 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i, align 4
  %add.ptr.i262 = getelementptr i8, ptr %60, i32 72
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i262, i32 %58) #11, !srcloc !129
  %61 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %w, align 4
  %63 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base.i, align 4
  %add.ptr.i264 = getelementptr i8, ptr %64, i32 64
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i264, i32 %62) #11, !srcloc !129
  br label %sw.bb55

if.else:                                          ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  %or = or i32 %49, 256
  %65 = ptrtoint ptr %config_mem to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or, ptr %config_mem, align 4
  %config_port49 = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 8
  %66 = ptrtoint ptr %config_port49 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %config_port49, align 4
  %or50 = or i32 %67, 256
  store i32 %or50, ptr %config_port49, align 4
  %68 = ptrtoint ptr %x to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %x, align 4
  %base.i265 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 2
  %70 = ptrtoint ptr %base.i265 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i265, align 4
  %add.ptr.i266 = getelementptr i8, ptr %71, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i266, i32 %69) #11, !srcloc !129
  %72 = ptrtoint ptr %y to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %y, align 4
  %74 = ptrtoint ptr %base.i265 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i265, align 4
  %add.ptr.i268 = getelementptr i8, ptr %75, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i268, i32 %73) #11, !srcloc !129
  %76 = ptrtoint ptr %w to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %w, align 4
  %78 = ptrtoint ptr %base.i265 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i265, align 4
  %add.ptr.i270 = getelementptr i8, ptr %79, i32 76
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i270, i32 %77) #11, !srcloc !129
  br label %sw.bb55

sw.bb55:                                          ; preds = %if.else, %if.then43, %entry.sw.bb55_crit_edge
  %src = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 3
  %80 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %src, align 4
  %channel = getelementptr i8, ptr %1, i32 -68
  %82 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %channel, align 4
  %shl = shl i32 %83, 6
  %add = add i32 %shl, 128
  %base.i271 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 2
  %84 = ptrtoint ptr %base.i271 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i271, align 4
  %add.ptr.i272 = getelementptr i8, ptr %85, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i272, i32 %81) #11, !srcloc !129
  %dest = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 4
  %86 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dest, align 4
  %88 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %channel, align 4
  %shl57 = shl i32 %89, 6
  %add58 = add i32 %shl57, 132
  %90 = ptrtoint ptr %base.i271 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i271, align 4
  %add.ptr.i274 = getelementptr i8, ptr %91, i32 %add58
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i274, i32 %87) #11, !srcloc !129
  %config_mem59 = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 9
  %92 = ptrtoint ptr %config_mem59 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %config_mem59, align 4
  %config_port60 = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 8
  %94 = ptrtoint ptr %config_port60 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %config_port60, align 4
  %shl61 = shl i32 %95, 2
  %or62 = or i32 %shl61, %93
  %96 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %channel, align 4
  %shl64 = shl i32 %97, 6
  %add65 = add i32 %shl64, 140
  %98 = ptrtoint ptr %base.i271 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i271, align 4
  %add.ptr.i276 = getelementptr i8, ptr %99, i32 %add65
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i276, i32 %or62) #11, !srcloc !129
  %len = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 5
  %100 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load i32, ptr %len, align 4
  %102 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %channel, align 4
  %shl67 = shl i32 %103, 6
  %add68 = add i32 %shl67, 136
  %104 = ptrtoint ptr %base.i271 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %base.i271, align 4
  %add.ptr.i278 = getelementptr i8, ptr %105, i32 %add68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i278, i32 %101) #11, !srcloc !129
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxdma_xfer_desc.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imxdma_xfer_desc, %sw.epilog)) #11
          to label %if.then73 [label %sw.epilog], !srcloc !131

if.then73:                                        ; preds = %sw.bb55
  call void @__sanitizer_cov_trace_pc() #13
  %106 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %3, align 4
  %108 = ptrtoint ptr %channel to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %channel, align 4
  %110 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dest, align 4
  %conv76 = zext i32 %111 to i64
  %112 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %src, align 4
  %conv78 = zext i32 %113 to i64
  %114 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %len, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imxdma_xfer_desc.__UNIQUE_ID_ddebug243, ptr noundef %107, ptr noundef nonnull @.str.42, ptr noundef nonnull @.str.41, i32 noundef %109, i64 noundef %conv76, i64 noundef %conv78, i32 noundef %115) #11
  br label %sw.epilog

sw.bb81:                                          ; preds = %entry.sw.bb81_crit_edge, %entry.sw.bb81_crit_edge296
  %direction = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 6
  %116 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load i32, ptr %direction, align 4
  %118 = zext i32 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %118, ptr @__sancov_gen_cov_switch_values.60)
  switch i32 %117, label %do.end154 [
    i32 2, label %if.then84
    i32 1, label %if.then118
  ]

if.then84:                                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #13
  %per_address = getelementptr i8, ptr %1, i32 -8
  %119 = ptrtoint ptr %per_address to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load i32, ptr %per_address, align 4
  %channel85 = getelementptr i8, ptr %1, i32 -68
  %121 = ptrtoint ptr %channel85 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load i32, ptr %channel85, align 4
  %shl86 = shl i32 %122, 6
  %add87 = add i32 %shl86, 128
  %base.i279 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 2
  %123 = ptrtoint ptr %base.i279 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %base.i279, align 4
  %add.ptr.i280 = getelementptr i8, ptr %124, i32 %add87
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i280, i32 %120) #11, !srcloc !129
  %ccr_from_device = getelementptr i8, ptr %1, i32 176
  %125 = ptrtoint ptr %ccr_from_device to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %ccr_from_device, align 4
  %127 = ptrtoint ptr %channel85 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %channel85, align 4
  %shl89 = shl i32 %128, 6
  %add90 = add i32 %shl89, 140
  %129 = ptrtoint ptr %base.i279 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %base.i279, align 4
  %add.ptr.i282 = getelementptr i8, ptr %130, i32 %add90
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i282, i32 %126) #11, !srcloc !129
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxdma_xfer_desc.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imxdma_xfer_desc, %if.end158)) #11
          to label %if.then105 [label %if.end158], !srcloc !131

if.then105:                                       ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #13
  %131 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %3, align 4
  %133 = ptrtoint ptr %channel85 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load i32, ptr %channel85, align 4
  %sg = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 13
  %135 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %sg, align 4
  %sgcount = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 14
  %137 = ptrtoint ptr %sgcount to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %sgcount, align 4
  %len108 = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 5
  %139 = ptrtoint ptr %len108 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %len108, align 4
  %141 = ptrtoint ptr %per_address to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load i32, ptr %per_address, align 4
  %conv110 = zext i32 %142 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imxdma_xfer_desc.__UNIQUE_ID_ddebug244, ptr noundef %132, ptr noundef nonnull @.str.43, ptr noundef nonnull @.str.41, i32 noundef %134, ptr noundef %136, i32 noundef %138, i32 noundef %140, i64 noundef %conv110) #11
  br label %if.end158

if.then118:                                       ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #13
  %per_address119 = getelementptr i8, ptr %1, i32 -8
  %143 = ptrtoint ptr %per_address119 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load i32, ptr %per_address119, align 4
  %channel120 = getelementptr i8, ptr %1, i32 -68
  %145 = ptrtoint ptr %channel120 to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load i32, ptr %channel120, align 4
  %shl121 = shl i32 %146, 6
  %add122 = add i32 %shl121, 132
  %base.i283 = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 2
  %147 = ptrtoint ptr %base.i283 to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %base.i283, align 4
  %add.ptr.i284 = getelementptr i8, ptr %148, i32 %add122
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i284, i32 %144) #11, !srcloc !129
  %ccr_to_device = getelementptr i8, ptr %1, i32 180
  %149 = ptrtoint ptr %ccr_to_device to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load i32, ptr %ccr_to_device, align 4
  %151 = ptrtoint ptr %channel120 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load i32, ptr %channel120, align 4
  %shl124 = shl i32 %152, 6
  %add125 = add i32 %shl124, 140
  %153 = ptrtoint ptr %base.i283 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %base.i283, align 4
  %add.ptr.i286 = getelementptr i8, ptr %154, i32 %add125
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i286, i32 %150) #11, !srcloc !129
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxdma_xfer_desc.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imxdma_xfer_desc, %if.end158)) #11
          to label %if.then140 [label %if.end158], !srcloc !131

if.then140:                                       ; preds = %if.then118
  call void @__sanitizer_cov_trace_pc() #13
  %155 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %3, align 4
  %157 = ptrtoint ptr %channel120 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %channel120, align 4
  %sg143 = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 13
  %159 = ptrtoint ptr %sg143 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load ptr, ptr %sg143, align 4
  %sgcount144 = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 14
  %161 = ptrtoint ptr %sgcount144 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %sgcount144, align 4
  %len145 = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 5
  %163 = ptrtoint ptr %len145 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %len145, align 4
  %165 = ptrtoint ptr %per_address119 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %per_address119, align 4
  %conv147 = zext i32 %166 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imxdma_xfer_desc.__UNIQUE_ID_ddebug245, ptr noundef %156, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.41, i32 noundef %158, ptr noundef %160, i32 noundef %162, i32 noundef %164, i64 noundef %conv147) #11
  br label %if.end158

do.end154:                                        ; preds = %sw.bb81
  call void @__sanitizer_cov_trace_pc() #13
  %167 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %3, align 4
  %channel156 = getelementptr i8, ptr %1, i32 -68
  %169 = ptrtoint ptr %channel156 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %channel156, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %168, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.41, i32 noundef %170) #14
  br label %cleanup

if.end158:                                        ; preds = %if.then140, %if.then118, %if.then105, %if.then84
  %171 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %chan, align 4
  %imxdma1.i = getelementptr i8, ptr %172, i32 -72
  %173 = ptrtoint ptr %imxdma1.i to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %imxdma1.i, align 4
  %sg2.i = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 13
  %175 = ptrtoint ptr %sg2.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %sg2.i, align 4
  %len.i = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 5
  %177 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load i32, ptr %len.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %176, i32 0, i32 4
  %179 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load i32, ptr %dma_length.i, align 4
  %181 = tail call i32 @llvm.umin.i32(i32 %178, i32 %180) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %178)
  %cmp4.not.i = icmp eq i32 %178, -1
  br i1 %cmp4.not.i, label %if.end158.if.end.i_crit_edge, label %if.then.i

if.end158.if.end.i_crit_edge:                     ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %if.end158
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i32 %178, %181
  %182 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %182)
  store i32 %sub.i, ptr %len.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end158.if.end.i_crit_edge
  %183 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %183)
  %184 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %184)
  %cmp6.i = icmp eq i32 %184, 2
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %176, i32 0, i32 3
  %185 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load i32, ptr %dma_address.i, align 4
  %channel.i = getelementptr i8, ptr %172, i32 -68
  %187 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load i32, ptr %channel.i, align 4
  %shl.i = shl i32 %188, 6
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %shl.i, 132
  %base.i.i = getelementptr inbounds %struct.imxdma_engine, ptr %174, i32 0, i32 2
  %189 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %189)
  %190 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %190, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %186) #11, !srcloc !129
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add11.i = add i32 %shl.i, 128
  %base.i62.i = getelementptr inbounds %struct.imxdma_engine, ptr %174, i32 0, i32 2
  %191 = ptrtoint ptr %base.i62.i to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %base.i62.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %192, i32 %add11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %186) #11, !srcloc !129
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then7.i
  %193 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load i32, ptr %channel.i, align 4
  %shl14.i = shl i32 %194, 6
  %add15.i = add i32 %shl14.i, 136
  %base.i64.i = getelementptr inbounds %struct.imxdma_engine, ptr %174, i32 0, i32 2
  %195 = ptrtoint ptr %base.i64.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %base.i64.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %196, i32 %add15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 %181) #11, !srcloc !129
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxdma_sg_next.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imxdma_xfer_desc, %sw.epilog)) #11
          to label %if.then21.i [label %sw.epilog], !srcloc !131

if.then21.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %197 = ptrtoint ptr %174 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %174, align 4
  %199 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %channel.i, align 4
  %shl24.i = shl i32 %200, 6
  %add25.i = add i32 %shl24.i, 132
  %201 = ptrtoint ptr %base.i64.i to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %base.i64.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %202, i32 %add25.i
  %203 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #11, !srcloc !130
  %204 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load i32, ptr %channel.i, align 4
  %shl28.i = shl i32 %205, 6
  %add29.i = add i32 %shl28.i, 128
  %206 = ptrtoint ptr %base.i64.i to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %base.i64.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %207, i32 %add29.i
  %208 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #11, !srcloc !130
  %209 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %channel.i, align 4
  %shl32.i = shl i32 %210, 6
  %add33.i = add i32 %shl32.i, 136
  %211 = ptrtoint ptr %base.i64.i to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load ptr, ptr %base.i64.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %212, i32 %add33.i
  %213 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #11, !srcloc !130
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imxdma_sg_next.__UNIQUE_ID_ddebug238, ptr noundef %198, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %200, i32 noundef %203, i32 noundef %208, i32 noundef %213) #11
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.then21.i, %if.end12.i, %if.then73, %sw.bb55
  tail call fastcc void @imxdma_enable_hw(ptr noundef %d)
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %do.end154, %lor.lhs.false12.1.cleanup_crit_edge, %lor.lhs.false.1.cleanup_crit_edge, %land.lhs.true.1.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sw.epilog ], [ -22, %do.end154 ], [ -22, %entry.cleanup_crit_edge ], [ -16, %lor.lhs.false12.1.cleanup_crit_edge ], [ -16, %lor.lhs.false.1.cleanup_crit_edge ], [ -16, %land.lhs.true.1.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imxdma_enable_hw(ptr nocapture noundef %d) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 1, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 -124
  %imxdma1 = getelementptr i8, ptr %1, i32 -72
  %2 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %imxdma1, align 4
  %channel2 = getelementptr i8, ptr %1, i32 -68
  %4 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %channel2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxdma_enable_hw.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imxdma_enable_hw, %do.body8)) #11
          to label %if.then [label %do.body8], !srcloc !131

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imxdma_enable_hw.__UNIQUE_ID_ddebug239, ptr noundef %7, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.46, i32 noundef %5) #11
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  %8 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !138
  %and.i = and i32 %8, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool20.not = icmp eq i32 %and.i, 0
  br i1 %tobool20.not, label %if.then21, label %do.body8.do.end24_crit_edge

do.body8.do.end24_crit_edge:                      ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end24

if.then21:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %do.end24

do.end24:                                         ; preds = %if.then21, %do.body8.do.end24_crit_edge
  %shl = shl nuw i32 1, %5
  %base.i = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 2
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr.i114 = getelementptr i8, ptr %10, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i114, i32 %shl) #11, !srcloc !129
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i116 = getelementptr i8, ptr %12, i32 8
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i116) #11, !srcloc !130
  %neg = xor i32 %shl, -1
  %and = and i32 %13, %neg
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr.i118 = getelementptr i8, ptr %15, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i118, i32 %and) #11, !srcloc !129
  %shl27 = shl i32 %5, 6
  %add = add i32 %shl27, 140
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i120 = getelementptr i8, ptr %17, i32 %add
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #11, !srcloc !130
  %or29 = or i32 %18, 16385
  %19 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i, align 4
  %add.ptr.i122 = getelementptr i8, ptr %20, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i122, i32 %or29) #11, !srcloc !129
  %devtype.i = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 8
  %21 = ptrtoint ptr %devtype.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %devtype.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp.i.not = icmp eq i32 %22, 0
  br i1 %cmp.i.not, label %do.end24.do.body55_crit_edge, label %land.lhs.true

do.end24.do.body55_crit_edge:                     ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

land.lhs.true:                                    ; preds = %do.end24
  %sg = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 13
  %23 = ptrtoint ptr %sg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %sg, align 4
  %tobool34.not = icmp eq ptr %24, null
  br i1 %tobool34.not, label %land.lhs.true.do.body55_crit_edge, label %land.lhs.true35

land.lhs.true.do.body55_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

land.lhs.true35:                                  ; preds = %land.lhs.true
  %25 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %imxdma1, align 4
  %devtype.i.i = getelementptr inbounds %struct.imxdma_engine, ptr %26, i32 0, i32 8
  %27 = ptrtoint ptr %devtype.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %devtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %28)
  %cmp.i.not.i = icmp eq i32 %28, 2
  br i1 %cmp.i.not.i, label %imxdma_hw_chain.exit, label %land.lhs.true35.do.body55_crit_edge

land.lhs.true35.do.body55_crit_edge:              ; preds = %land.lhs.true35
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

imxdma_hw_chain.exit:                             ; preds = %land.lhs.true35
  %29 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %add.ptr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool37.not = icmp eq i32 %30, 0
  br i1 %tobool37.not, label %imxdma_hw_chain.exit.do.body55_crit_edge, label %if.then38

imxdma_hw_chain.exit.do.body55_crit_edge:         ; preds = %imxdma_hw_chain.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

if.then38:                                        ; preds = %imxdma_hw_chain.exit
  %call40 = tail call ptr @sg_next(ptr noundef nonnull %24) #11
  %31 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call40, ptr %sg, align 4
  %tobool43.not = icmp eq ptr %call40, null
  br i1 %tobool43.not, label %if.then38.do.body55_crit_edge, label %if.then44

if.then38.do.body55_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body55

if.then44:                                        ; preds = %if.then38
  %32 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan, align 4
  %imxdma1.i124 = getelementptr i8, ptr %33, i32 -72
  %34 = ptrtoint ptr %imxdma1.i124 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %imxdma1.i124, align 4
  %len.i = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 5
  %36 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %len.i, align 4
  %dma_length.i = getelementptr inbounds %struct.scatterlist, ptr %call40, i32 0, i32 4
  %38 = ptrtoint ptr %dma_length.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_length.i, align 4
  %40 = tail call i32 @llvm.umin.i32(i32 %37, i32 %39) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %37)
  %cmp4.not.i = icmp eq i32 %37, -1
  br i1 %cmp4.not.i, label %if.then44.if.end.i_crit_edge, label %if.then.i125

if.then44.if.end.i_crit_edge:                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i125:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i = sub i32 %37, %40
  %41 = ptrtoint ptr %len.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %sub.i, ptr %len.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i125, %if.then44.if.end.i_crit_edge
  %direction.i = getelementptr inbounds %struct.imxdma_desc, ptr %d, i32 0, i32 6
  %42 = ptrtoint ptr %direction.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %direction.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %cmp6.i = icmp eq i32 %43, 2
  %dma_address.i = getelementptr inbounds %struct.scatterlist, ptr %call40, i32 0, i32 3
  %44 = ptrtoint ptr %dma_address.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_address.i, align 4
  %channel.i = getelementptr i8, ptr %33, i32 -68
  %46 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %channel.i, align 4
  %shl.i = shl i32 %47, 6
  br i1 %cmp6.i, label %if.then7.i, label %if.else.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %shl.i, 132
  %base.i.i = getelementptr inbounds %struct.imxdma_engine, ptr %35, i32 0, i32 2
  %48 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i61.i = getelementptr i8, ptr %49, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i61.i, i32 %45) #11, !srcloc !129
  br label %if.end12.i

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %add11.i = add i32 %shl.i, 128
  %base.i62.i = getelementptr inbounds %struct.imxdma_engine, ptr %35, i32 0, i32 2
  %50 = ptrtoint ptr %base.i62.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i62.i, align 4
  %add.ptr.i63.i = getelementptr i8, ptr %51, i32 %add11.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i63.i, i32 %45) #11, !srcloc !129
  br label %if.end12.i

if.end12.i:                                       ; preds = %if.else.i, %if.then7.i
  %52 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %channel.i, align 4
  %shl14.i = shl i32 %53, 6
  %add15.i = add i32 %shl14.i, 136
  %base.i64.i = getelementptr inbounds %struct.imxdma_engine, ptr %35, i32 0, i32 2
  %54 = ptrtoint ptr %base.i64.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i64.i, align 4
  %add.ptr.i65.i = getelementptr i8, ptr %55, i32 %add15.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i65.i, i32 %40) #11, !srcloc !129
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxdma_sg_next.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imxdma_enable_hw, %imxdma_sg_next.exit)) #11
          to label %if.then21.i [label %imxdma_sg_next.exit], !srcloc !131

if.then21.i:                                      ; preds = %if.end12.i
  call void @__sanitizer_cov_trace_pc() #13
  %56 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %35, align 4
  %58 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %channel.i, align 4
  %shl24.i = shl i32 %59, 6
  %add25.i = add i32 %shl24.i, 132
  %60 = ptrtoint ptr %base.i64.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i64.i, align 4
  %add.ptr.i67.i = getelementptr i8, ptr %61, i32 %add25.i
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i67.i) #11, !srcloc !130
  %63 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %channel.i, align 4
  %shl28.i = shl i32 %64, 6
  %add29.i = add i32 %shl28.i, 128
  %65 = ptrtoint ptr %base.i64.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i64.i, align 4
  %add.ptr.i69.i = getelementptr i8, ptr %66, i32 %add29.i
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i69.i) #11, !srcloc !130
  %68 = ptrtoint ptr %channel.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %channel.i, align 4
  %shl32.i = shl i32 %69, 6
  %add33.i = add i32 %shl32.i, 136
  %70 = ptrtoint ptr %base.i64.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i64.i, align 4
  %add.ptr.i71.i = getelementptr i8, ptr %71, i32 %add33.i
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i71.i) #11, !srcloc !130
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imxdma_sg_next.__UNIQUE_ID_ddebug238, ptr noundef %57, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.28, i32 noundef %59, i32 noundef %62, i32 noundef %67, i32 noundef %72) #11
  br label %imxdma_sg_next.exit

imxdma_sg_next.exit:                              ; preds = %if.then21.i, %if.end12.i
  %73 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base.i, align 4
  %add.ptr.i127 = getelementptr i8, ptr %74, i32 %add
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #11, !srcloc !130
  %or50 = or i32 %75, 16388
  %76 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i, align 4
  %add.ptr.i129 = getelementptr i8, ptr %77, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i129, i32 %or50) #11, !srcloc !129
  br label %do.body55

do.body55:                                        ; preds = %imxdma_sg_next.exit, %if.then38.do.body55_crit_edge, %imxdma_hw_chain.exit.do.body55_crit_edge, %land.lhs.true35.do.body55_crit_edge, %land.lhs.true.do.body55_crit_edge, %do.end24.do.body55_crit_edge
  br i1 %tobool20.not, label %if.then64, label %do.body55.do.body66_crit_edge

do.body55.do.body66_crit_edge:                    ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body66

if.then64:                                        ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  br label %do.body66

do.body66:                                        ; preds = %if.then64, %do.body55.do.body66_crit_edge
  %78 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !139
  %and.i.i = and i32 %78, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool74.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool74.not, label %if.then83, label %do.body66.do.end86_crit_edge, !prof !132

do.body66.do.end86_crit_edge:                     ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end86

if.then83:                                        ; preds = %do.body66
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end86

do.end86:                                         ; preds = %if.then83, %do.body66.do.end86_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %8) #11, !srcloc !140
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_off() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @trace_hardirqs_on() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_bogus_irq_restore() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @imxdma_tx_submit(ptr nocapture noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %imxdma1 = getelementptr i8, ptr %1, i32 -72
  %2 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %imxdma1, align 4
  %lock = getelementptr inbounds %struct.imxdma_engine, ptr %3, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %ld_free = getelementptr i8, ptr %1, i32 -40
  %4 = ptrtoint ptr %ld_free to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ld_free, align 4
  %ld_queue = getelementptr i8, ptr %1, i32 -32
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %5) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.__list_del_entry.exit.i_crit_edge

entry.__list_del_entry.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %5, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %entry.__list_del_entry.exit.i_crit_edge
  %prev.i2.i = getelementptr i8, ptr %1, i32 -28
  %12 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %5, ptr noundef %13, ptr noundef %ld_queue) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %5, ptr %prev.i2.i, align 4
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %ld_queue, ptr %5, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %5, ptr %13, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %18 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %21, 1
  %22 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #11
  %23 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %cookie2.i, align 4
  %24 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %22, ptr %tx, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  ret i32 %22
}

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @imxdma_disable_hw(ptr noundef %imxdmac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %imxdma1 = getelementptr inbounds %struct.imxdma_channel, ptr %imxdmac, i32 0, i32 2
  %0 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %imxdma1, align 4
  %channel2 = getelementptr inbounds %struct.imxdma_channel, ptr %imxdmac, i32 0, i32 3
  %2 = ptrtoint ptr %channel2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %channel2, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @imxdma_disable_hw.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@imxdma_disable_hw, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !131

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @imxdma_disable_hw.__UNIQUE_ID_ddebug240, ptr noundef %5, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48, i32 noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %imxdma1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %imxdma1, align 4
  %devtype.i.i = getelementptr inbounds %struct.imxdma_engine, ptr %7, i32 0, i32 8
  %8 = ptrtoint ptr %devtype.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %devtype.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %9)
  %cmp.i.not.i = icmp eq i32 %9, 2
  br i1 %cmp.i.not.i, label %imxdma_hw_chain.exit, label %do.end.do.body12_crit_edge

do.end.do.body12_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

imxdma_hw_chain.exit:                             ; preds = %do.end
  %10 = ptrtoint ptr %imxdmac to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %imxdmac, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool7.not = icmp eq i32 %11, 0
  br i1 %tobool7.not, label %imxdma_hw_chain.exit.do.body12_crit_edge, label %if.then8

imxdma_hw_chain.exit.do.body12_crit_edge:         ; preds = %imxdma_hw_chain.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body12

if.then8:                                         ; preds = %imxdma_hw_chain.exit
  call void @__sanitizer_cov_trace_pc() #13
  %watchdog = getelementptr inbounds %struct.imxdma_channel, ptr %imxdmac, i32 0, i32 1
  %call9 = tail call i32 @del_timer(ptr noundef %watchdog) #11
  br label %do.body12

do.body12:                                        ; preds = %if.then8, %imxdma_hw_chain.exit.do.body12_crit_edge, %do.end.do.body12_crit_edge
  %12 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ arch_local_irq_save\0A\09cpsid\09i", "=r,~{memory},~{cc}"() #11, !srcloc !138
  %and.i = and i32 %12, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool24.not = icmp eq i32 %and.i, 0
  br i1 %tobool24.not, label %if.then25, label %do.body12.do.end28_crit_edge

do.body12.do.end28_crit_edge:                     ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end28

if.then25:                                        ; preds = %do.body12
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_off() #11
  br label %do.end28

do.end28:                                         ; preds = %if.then25, %do.body12.do.end28_crit_edge
  %base.i = getelementptr inbounds %struct.imxdma_engine, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 8
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !130
  %shl = shl nuw i32 1, %3
  %or = or i32 %15, %shl
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i87 = getelementptr i8, ptr %17, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i87, i32 %or) #11, !srcloc !129
  %shl30 = shl i32 %3, 6
  %add = add i32 %shl30, 140
  %18 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i, align 4
  %add.ptr.i89 = getelementptr i8, ptr %19, i32 %add
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i89) #11, !srcloc !130
  %and = and i32 %20, -2
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr.i91 = getelementptr i8, ptr %22, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91, i32 %and) #11, !srcloc !129
  %23 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i, align 4
  %add.ptr.i93 = getelementptr i8, ptr %24, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i93, i32 %shl) #11, !srcloc !129
  br i1 %tobool24.not, label %if.then44, label %do.end28.do.body46_crit_edge

do.end28.do.body46_crit_edge:                     ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body46

if.then44:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @trace_hardirqs_on() #11
  br label %do.body46

do.body46:                                        ; preds = %if.then44, %do.end28.do.body46_crit_edge
  %25 = tail call i32 asm sideeffect "\09mrs\09$0, cpsr\09@ local_save_flags", "=r,~{memory},~{cc}"() #11, !srcloc !139
  %and.i.i = and i32 %25, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool54.not = icmp eq i32 %and.i.i, 0
  br i1 %tobool54.not, label %if.then63, label %do.body46.do.end66_crit_edge, !prof !132

do.body46.do.end66_crit_edge:                     ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end66

if.then63:                                        ; preds = %do.body46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @warn_bogus_irq_restore() #11
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %do.body46.do.end66_crit_edge
  tail call void asm sideeffect "\09msr\09cpsr_c, $0\09@ local_irq_restore", "r,~{memory},~{cc}"(i32 %12) #11, !srcloc !140
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @imxdma_filter_fn(ptr nocapture noundef %chan, ptr nocapture noundef readonly %param) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %4 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %param, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %cmp.not = icmp eq ptr %3, %7
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %request = getelementptr inbounds %struct.imxdma_filter_data, ptr %param, i32 0, i32 1
  %8 = ptrtoint ptr %request to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %request, align 4
  %dma_request = getelementptr i8, ptr %chan, i32 168
  %10 = ptrtoint ptr %dma_request to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %dma_request, align 4
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %11 = ptrtoint ptr %private to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %private, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret i1 %cmp.not
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !38, !39, !40, !42, !43, !45, !46, !47, !48, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !83, !84, !86, !87, !89, !90, !92, !93, !94, !96, !97, !98, !100, !101, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !115, !117, !118, !119}
!llvm.module.flags = !{!120, !121, !122, !123, !124, !125, !126, !127}
!llvm.ident = !{!128}

!0 = !{ptr @__initcall__kmod_imx_dma__249_1251_imxdma_module_init4, !1, !"__initcall__kmod_imx_dma__249_1251_imxdma_module_init4", i1 false, i1 false}
!1 = !{!"../drivers/dma/imx-dma.c", i32 1251, i32 1}
!2 = !{ptr @__UNIQUE_ID_author250, !3, !"__UNIQUE_ID_author250", i1 false, i1 false}
!3 = !{!"../drivers/dma/imx-dma.c", i32 1253, i32 1}
!4 = !{ptr @__UNIQUE_ID_description251, !5, !"__UNIQUE_ID_description251", i1 false, i1 false}
!5 = !{!"../drivers/dma/imx-dma.c", i32 1254, i32 1}
!6 = !{ptr @__UNIQUE_ID_file252, !7, !"__UNIQUE_ID_file252", i1 false, i1 false}
!7 = !{!"../drivers/dma/imx-dma.c", i32 1255, i32 1}
!8 = !{ptr @__UNIQUE_ID_license253, !7, !"__UNIQUE_ID_license253", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/dma/imx-dma.c", i32 1241, i32 11}
!11 = !{ptr @imxdma_driver, !12, !"imxdma_driver", i1 false, i1 false}
!12 = !{!"../drivers/dma/imx-dma.c", i32 1239, i32 31}
!13 = !{ptr @imx_dma_of_dev_id, !14, !"imx_dma_of_dev_id", i1 false, i1 false}
!14 = !{!"../drivers/dma/imx-dma.c", i32 194, i32 34}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/dma/imx-dma.c", i32 1061, i32 45}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/dma/imx-dma.c", i32 1065, i32 45}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/dma/imx-dma.c", i32 1081, i32 32}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/dma/imx-dma.c", i32 1083, i32 4}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @imxdma_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @imxdma_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/dma/imx-dma.c", i32 1097, i32 4}
!31 = !{ptr @imxdma_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @imxdma_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @imxdma_probe.__key, !34, !"__key", i1 false, i1 false}
!34 = !{!"../drivers/dma/imx-dma.c", i32 1123, i32 2}
!35 = !{ptr @.str.12, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/imx-dma.c", i32 1133, i32 5}
!38 = !{ptr @imxdma_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @imxdma_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @imxdma_probe.__key.16, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/dma/imx-dma.c", i32 1140, i32 4}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/imx-dma.c", i32 1179, i32 3}
!45 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!46 = !{ptr @imxdma_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!47 = !{ptr @imxdma_probe._entry_ptr.21, !44, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.23, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/imx-dma.c", i32 1187, i32 4}
!50 = !{ptr @imxdma_probe._entry.22, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @imxdma_probe._entry_ptr.24, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/imx-dma.c", i32 480, i32 2}
!54 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dma_irq_handler.__UNIQUE_ID_ddebug242, !53, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!57 = !{ptr @.str.28, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/imx-dma.c", i32 281, i32 2}
!59 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @imxdma_sg_next.__UNIQUE_ID_ddebug238, !58, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!61 = !{ptr @.str.30, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/imx-dma.c", i32 397, i32 3}
!63 = !{ptr @.str.31, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @imxdma_err_handler._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @imxdma_err_handler._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @.str.33, !62, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @.str.35, !62, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.37, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma/imx-dma.c", i32 350, i32 2}
!73 = !{ptr @.str.38, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @imxdma_watchdog.__UNIQUE_ID_ddebug241, !72, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!75 = !{ptr @.str.39, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/imx-dma.c", i32 634, i32 4}
!77 = !{ptr @.str.40, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @imxdma_tasklet._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @imxdma_tasklet._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/dma/imx-dma.c", i32 548, i32 3}
!82 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @imxdma_xfer_desc.__UNIQUE_ID_ddebug243, !81, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!84 = !{ptr @.str.43, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/dma/imx-dma.c", i32 564, i32 4}
!86 = !{ptr @imxdma_xfer_desc.__UNIQUE_ID_ddebug244, !85, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/imx-dma.c", i32 575, i32 4}
!89 = !{ptr @imxdma_xfer_desc.__UNIQUE_ID_ddebug245, !88, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!90 = !{ptr @.str.45, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/dma/imx-dma.c", i32 581, i32 4}
!92 = !{ptr @imxdma_xfer_desc._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @imxdma_xfer_desc._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/dma/imx-dma.c", i32 295, i32 2}
!96 = !{ptr @.str.47, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @imxdma_enable_hw.__UNIQUE_ID_ddebug239, !95, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!98 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/dma/imx-dma.c", i32 326, i32 2}
!100 = !{ptr @imxdma_disable_hw.__UNIQUE_ID_ddebug240, !99, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!101 = !{ptr @.str.49, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/dma/imx-dma.c", i32 859, i32 2}
!103 = !{ptr @.str.50, !102, !"<string literal>", i1 false, i1 false}
!104 = !{ptr @imxdma_prep_dma_cyclic.__UNIQUE_ID_ddebug246, !102, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!105 = !{ptr @.str.51, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/dma/imx-dma.c", i32 914, i32 2}
!107 = !{ptr @.str.52, !106, !"<string literal>", i1 false, i1 false}
!108 = !{ptr @imxdma_prep_dma_memcpy.__UNIQUE_ID_ddebug247, !106, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!109 = !{ptr @.str.53, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/dma/imx-dma.c", i32 945, i32 2}
!111 = !{ptr @.str.54, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @imxdma_prep_dma_interleaved.__UNIQUE_ID_ddebug248, !110, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!113 = !{ptr @.str.55, !110, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @.str.56, !110, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @.str.57, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/dma/imx-dma.c", i32 995, i32 4}
!117 = !{ptr @.str.58, !116, !"<string literal>", i1 false, i1 false}
!118 = !{ptr @imxdma_issue_pending._entry, !116, !"_entry", i1 false, i1 false}
!119 = !{ptr @imxdma_issue_pending._entry_ptr, !116, !"_entry_ptr", i1 false, i1 false}
!120 = !{i32 1, !"wchar_size", i32 2}
!121 = !{i32 1, !"min_enum_size", i32 4}
!122 = !{i32 8, !"branch-target-enforcement", i32 0}
!123 = !{i32 8, !"sign-return-address", i32 0}
!124 = !{i32 8, !"sign-return-address-all", i32 0}
!125 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!126 = !{i32 7, !"uwtable", i32 1}
!127 = !{i32 7, !"frame-pointer", i32 2}
!128 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!129 = !{i64 5892287}
!130 = !{i64 5892705}
!131 = !{i64 2148302129, i64 2148302134, i64 2148302147, i64 2148302191, i64 2148302225, i64 2148302246}
!132 = !{!"branch_weights", i32 1, i32 2000}
!133 = !{i64 2154400734, i64 2154401221, i64 2154400771, i64 2154400827, i64 2154400861, i64 2154400885, i64 2154400926, i64 2154400947, i64 2154400975, i64 2154401009}
!134 = !{i8 0, i8 2}
!135 = !{i64 2154402234}
!136 = !{!"branch_weights", i32 2000, i32 1}
!137 = !{i64 2154088572, i64 2154089064, i64 2154088609, i64 2154088665, i64 2154088699, i64 2154088723, i64 2154088764, i64 2154088785, i64 2154088813, i64 2154088847}
!138 = !{i64 1102910, i64 1102971}
!139 = !{i64 1105642}
!140 = !{i64 1105927}
