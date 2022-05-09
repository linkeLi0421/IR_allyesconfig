; ModuleID = '/llk/IR_all_yes/drivers/dma/at_xdmac.c_pt.bc'
source_filename = "../drivers/dma/at_xdmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.68 }
%union.anon.68 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.at_xdmac_layout = type { i8, i8, i8, i8, i8, i8, i8, i8, i8, i8 }
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
%struct.at_xdmac = type { %struct.dma_device, ptr, i32, ptr, i32, ptr, ptr, [0 x %struct.at_xdmac_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.at_xdmac_chan = type { %struct.dma_chan, ptr, i32, i32, i8, i8, i8, i32, i32, i32, i32, i32, i32, %struct.tasklet_struct, %struct.dma_slave_config, %struct.spinlock, %struct.list_head, %struct.list_head }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.at_xdmac_desc = type { %struct.at_xdmac_lld, i32, %struct.dma_async_tx_descriptor, %struct.list_head, i8, i32, %struct.list_head, %struct.list_head, [4 x i8] }
%struct.at_xdmac_lld = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__param_str_init_nr_desc_per_channel = internal constant [34 x i8] c"at_xdmac.init_nr_desc_per_channel\00", align 1
@param_ops_uint = external dso_local constant %struct.kernel_param_ops, align 4
@init_nr_desc_per_channel = internal global { i32, [28 x i8] } { i32 64, [28 x i8] zeroinitializer }, align 32
@__param_init_nr_desc_per_channel = internal constant %struct.kernel_param { ptr @__param_str_init_nr_desc_per_channel, ptr null, ptr @param_ops_uint, i16 420, i8 -1, i8 0, %union.anon.68 { ptr @init_nr_desc_per_channel } }, section "__param", align 4
@__UNIQUE_ID_init_nr_desc_per_channeltype234 = internal constant [48 x i8] c"at_xdmac.parmtype=init_nr_desc_per_channel:uint\00", section ".modinfo", align 1
@__UNIQUE_ID_init_nr_desc_per_channel235 = internal constant [85 x i8] c"at_xdmac.parm=init_nr_desc_per_channel:initial descriptors per channel (default: 64)\00", section ".modinfo", align 1
@__initcall__kmod_at_xdmac__292_2236_at_xdmac_init4 = internal global ptr @at_xdmac_init, section ".initcall4.init", align 4
@at_xdmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @at_xdmac_probe, ptr @at_xdmac_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @atmel_xdmac_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_xdmac_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_at_xdmac_exit = internal global ptr @at_xdmac_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description293 = internal constant [58 x i8] c"at_xdmac.description=Atmel Extended DMA Controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author294 = internal constant [64 x i8] c"at_xdmac.author=Ludovic Desroches <ludovic.desroches@atmel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file295 = internal constant [35 x i8] c"at_xdmac.file=drivers/dma/at_xdmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license296 = internal constant [21 x i8] c"at_xdmac.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"at_xdmac\00", [23 x i8] zeroinitializer }, align 32
@atmel_xdmac_dt_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"atmel,sama5d4-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at_xdmac_sama5d4_layout }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"microchip,sama7g5-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @at_xdmac_sama7g5_layout }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@atmel_xdmac_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr @atmel_xdmac_prepare, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @atmel_xdmac_suspend, ptr @atmel_xdmac_resume, ptr @atmel_xdmac_suspend, ptr @atmel_xdmac_resume, ptr @atmel_xdmac_suspend, ptr @atmel_xdmac_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@at_xdmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2049, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"invalid number of channels (%u)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at_xdmac_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/at_xdmac.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@at_xdmac_probe._entry_ptr = internal global ptr @at_xdmac_probe._entry, section ".printk_index", align 4
@at_xdmac_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 2057, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"can't allocate at_xdmac structure\0A\00", [61 x i8] zeroinitializer }, align 32
@at_xdmac_probe._entry_ptr.8 = internal global ptr @at_xdmac_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"dma_clk\00", [24 x i8] zeroinitializer }, align 32
@at_xdmac_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 2070, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't get dma_clk\0A\00", [45 x i8] zeroinitializer }, align 32
@at_xdmac_probe._entry_ptr.12 = internal global ptr @at_xdmac_probe._entry.10, section ".printk_index", align 4
@at_xdmac_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 2077, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"can't request irq\0A\00", [45 x i8] zeroinitializer }, align 32
@at_xdmac_probe._entry_ptr.15 = internal global ptr @at_xdmac_probe._entry.13, section ".printk_index", align 4
@at_xdmac_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 2083, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"can't prepare or enable clock\0A\00", [33 x i8] zeroinitializer }, align 32
@at_xdmac_probe._entry_ptr.18 = internal global ptr @at_xdmac_probe._entry.16, section ".printk_index", align 4
@at_xdmac_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 2091, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"no memory for descriptors dma pool\0A\00", [60 x i8] zeroinitializer }, align 32
@at_xdmac_probe._entry_ptr.21 = internal global ptr @at_xdmac_probe._entry.19, section ".printk_index", align 4
@at_xdmac_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&atchan->lock\00", [18 x i8] zeroinitializer }, align 32
@at_xdmac_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.2, ptr @.str.3, i32 2155, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"fail to register DMA engine device\0A\00", [60 x i8] zeroinitializer }, align 32
@at_xdmac_probe._entry_ptr.25 = internal global ptr @at_xdmac_probe._entry.23, section ".printk_index", align 4
@at_xdmac_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 2162, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"could not register of dma controller\0A\00", [58 x i8] zeroinitializer }, align 32
@at_xdmac_probe._entry_ptr.28 = internal global ptr @at_xdmac_probe._entry.26, section ".printk_index", align 4
@at_xdmac_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 2167, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%d channels, mapped at 0x%p\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@at_xdmac_probe._entry_ptr.32 = internal global ptr @at_xdmac_probe._entry.29, section ".printk_index", align 4
@at_xdmac_interrupt.__UNIQUE_ID_ddebug282 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.3, ptr @.str.34, i8 1, i8 -79, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.33 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at_xdmac_interrupt\00", [45 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: status=0x%08x, imr=0x%08x, pending=0x%08x\0A\00", [49 x i8] zeroinitializer }, align 32
@at_xdmac_interrupt.__UNIQUE_ID_ddebug283 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.3, ptr @.str.35, i8 1, i8 -75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: chan%d: imr=0x%x, status=0x%x\0A\00", [61 x i8] zeroinitializer }, align 32
@at_xdmac_interrupt.__UNIQUE_ID_ddebug284 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.33, ptr @.str.3, ptr @.str.36, i8 1, i8 -73, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.36 = internal constant { [77 x i8], [51 x i8] } { [77 x i8] c"%s: CC=0x%08x CNDA=0x%08x, CNDC=0x%08x, CSA=0x%08x, CDA=0x%08x, CUBC=0x%08x\0A\00", [51 x i8] zeroinitializer }, align 32
@at_xdmac_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.38, ptr @.str.3, i32 1881, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"can't allocate channel resources (channel enabled)\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"at_xdmac_alloc_chan_resources\00", [34 x i8] zeroinitializer }, align 32
@at_xdmac_alloc_chan_resources._entry_ptr = internal global ptr @at_xdmac_alloc_chan_resources._entry, section ".printk_index", align 4
@at_xdmac_alloc_chan_resources._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.38, ptr @.str.3, i32 1887, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [73 x i8], [55 x i8] } { [73 x i8] c"can't allocate channel resources (channel not free from a previous use)\0A\00", [55 x i8] zeroinitializer }, align 32
@at_xdmac_alloc_chan_resources._entry_ptr.41 = internal global ptr @at_xdmac_alloc_chan_resources._entry.39, section ".printk_index", align 4
@at_xdmac_alloc_chan_resources._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.38, ptr @.str.3, i32 1895, ptr @.str.44, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"only %d descriptors have been allocated\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@at_xdmac_alloc_chan_resources._entry_ptr.45 = internal global ptr @at_xdmac_alloc_chan_resources._entry.42, section ".printk_index", align 4
@at_xdmac_alloc_chan_resources.__UNIQUE_ID_ddebug290 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.38, ptr @.str.3, ptr @.str.46, i8 1, i8 -37, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: allocated %d descriptors\0A\00", [34 x i8] zeroinitializer }, align 32
@at_xdmac_tx_submit.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.47, ptr @.str.3, ptr @.str.48, i8 0, i8 120, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.47 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at_xdmac_tx_submit\00", [45 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: atchan 0x%p, add desc 0x%p to xfers_list\0A\00", [50 x i8] zeroinitializer }, align 32
@at_xdmac_free_chan_resources.__UNIQUE_ID_ddebug291 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.49, ptr @.str.3, ptr @.str.50, i8 1, i8 -34, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"at_xdmac_free_chan_resources\00", [35 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"%s: freeing descriptor %p\0A\00", [37 x i8] zeroinitializer }, align 32
@at_xdmac_tx_status.__UNIQUE_ID_ddebug276 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 1, i8 -117, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"at_xdmac_tx_status\00", [45 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [75 x i8], [53 x i8] } { [75 x i8] c"%s: desc=0x%p, tx_dma_desc.phys=%pad, tx_status=%d, cookie=%d, residue=%d\0A\00", [53 x i8] zeroinitializer }, align 32
@at_xdmac_issue_pending.__UNIQUE_ID_ddebug285 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 1, i8 -68, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"at_xdmac_issue_pending\00", [41 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%s\0A\00", [28 x i8] zeroinitializer }, align 32
@at_xdmac_advance_work.__UNIQUE_ID_ddebug277 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 1, i8 -112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at_xdmac_advance_work\00", [42 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"%s: desc 0x%p\0A\00", [17 x i8] zeroinitializer }, align 32
@at_xdmac_start_xfer.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.56, i8 0, i8 96, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"at_xdmac_start_xfer\00", [44 x i8] zeroinitializer }, align 32
@at_xdmac_start_xfer.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.36, i8 0, i8 107, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@at_xdmac_start_xfer.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.58, i8 0, i8 113, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.58 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: enable channel (0x%08x)\0A\00", [35 x i8] zeroinitializer }, align 32
@at_xdmac_start_xfer.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.57, ptr @.str.3, ptr @.str.36, i8 0, i8 116, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.60, i8 0, i8 -56, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.59 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"at_xdmac_prep_dma_cyclic\00", [39 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: buf_addr=%pad, buf_len=%zd, period_len=%zd, dir=%s, flags=0x%lx\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mem2per\00", [24 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"per2mem\00", [24 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.59, ptr @.str.3, i32 803, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"invalid DMA direction\0A\00", [41 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_cyclic._entry_ptr = internal global ptr @at_xdmac_prep_dma_cyclic._entry, section ".printk_index", align 4
@at_xdmac_prep_dma_cyclic._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.59, ptr @.str.3, i32 808, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"channel currently used\0A\00", [40 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_cyclic._entry_ptr.66 = internal global ptr @at_xdmac_prep_dma_cyclic._entry.64, section ".printk_index", align 4
@at_xdmac_prep_dma_cyclic._entry.67 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.59, ptr @.str.3, i32 821, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"can't get descriptor\0A\00", [42 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_cyclic._entry_ptr.69 = internal global ptr @at_xdmac_prep_dma_cyclic._entry.67, section ".printk_index", align 4
@at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.70, i8 0, i8 -49, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: desc=0x%p, tx_dma_desc.phys=%pad\0A\00", [58 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.71, i8 0, i8 -44, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.71 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: lld: mbr_sa=%pad, mbr_da=%pad, mbr_ubc=0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.59, ptr @.str.3, ptr @.str.72, i8 0, i8 -42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: add desc 0x%p to descs_list 0x%p\0A\00", [58 x i8] zeroinitializer }, align 32
@at_xdmac_compute_chan_conf._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 609, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"invalid src maxburst value\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"at_xdmac_compute_chan_conf\00", [37 x i8] zeroinitializer }, align 32
@at_xdmac_compute_chan_conf._entry_ptr = internal global ptr @at_xdmac_compute_chan_conf._entry, section ".printk_index", align 4
@at_xdmac_compute_chan_conf._entry.75 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.76, ptr @.str.74, ptr @.str.3, i32 615, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid src addr width value\0A\00", [34 x i8] zeroinitializer }, align 32
@at_xdmac_compute_chan_conf._entry_ptr.77 = internal global ptr @at_xdmac_compute_chan_conf._entry.75, section ".printk_index", align 4
@at_xdmac_compute_chan_conf._entry.78 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.73, ptr @.str.74, ptr @.str.3, i32 634, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@at_xdmac_compute_chan_conf._entry_ptr.79 = internal global ptr @at_xdmac_compute_chan_conf._entry.78, section ".printk_index", align 4
@at_xdmac_compute_chan_conf._entry.80 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.81, ptr @.str.74, ptr @.str.3, i32 640, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.81 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"invalid dst addr width value\0A\00", [34 x i8] zeroinitializer }, align 32
@at_xdmac_compute_chan_conf._entry_ptr.82 = internal global ptr @at_xdmac_compute_chan_conf._entry.80, section ".printk_index", align 4
@at_xdmac_compute_chan_conf.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.74, ptr @.str.3, ptr @.str.83, i8 0, i8 -95, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: cfg=0x%08x\0A\00", [16 x i8] zeroinitializer }, align 32
@at_xdmac_queue_desc.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.84, ptr @.str.3, ptr @.str.85, i8 0, i8 -121, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.84 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"at_xdmac_queue_desc\00", [44 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: chain lld: prev=0x%p, mbr_nda=%pad\0A\00", [56 x i8] zeroinitializer }, align 32
@at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.3, ptr @.str.87, i8 0, i8 -2, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"at_xdmac_prep_interleaved\00", [38 x i8] zeroinitializer }, align 32
@.str.87 = internal constant { [64 x i8], [32 x i8] } { [64 x i8] c"%s: src=%pad, dest=%pad, numf=%zu, frame_size=%zu, flags=0x%lx\0A\00", [32 x i8] zeroinitializer }, align 32
@at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.3, ptr @.str.72, i8 1, i8 2, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.3, ptr @.str.88, i8 1, i8 6, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.88 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: chunk size=%zu, src icg=%zu, dst icg=%zu\0A\00", [50 x i8] zeroinitializer }, align 32
@at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.86, ptr @.str.3, ptr @.str.72, i8 1, i8 10, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@at_xdmac_interleaved_queue_desc.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.3, ptr @.str.90, i8 0, i8 -22, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.89 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"at_xdmac_interleaved_queue_desc\00", [32 x i8] zeroinitializer }, align 32
@.str.90 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: chunk too big (%zu, max size %lu)...\0A\00", [54 x i8] zeroinitializer }, align 32
@at_xdmac_interleaved_queue_desc.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.3, ptr @.str.91, i8 0, i8 -21, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Adding items at the end of desc 0x%p\0A\00", [58 x i8] zeroinitializer }, align 32
@at_xdmac_interleaved_queue_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.89, ptr @.str.3, i32 963, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@at_xdmac_interleaved_queue_desc._entry_ptr = internal global ptr @at_xdmac_interleaved_queue_desc._entry, section ".printk_index", align 4
@at_xdmac_interleaved_queue_desc.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.89, ptr @.str.3, ptr @.str.92, i8 0, i8 -10, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.92 = internal constant { [67 x i8], [61 x i8] } { [67 x i8] c"%s: lld: mbr_sa=%pad, mbr_da=%pad, mbr_ubc=0x%08x, mbr_cfg=0x%08x\0A\00", [61 x i8] zeroinitializer }, align 32
@at_xdmac_align_width.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.3, ptr @.str.94, i8 0, i8 -35, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"at_xdmac_align_width\00", [43 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"%s: dwidth: double word\0A\00", [39 x i8] zeroinitializer }, align 32
@at_xdmac_align_width.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.3, ptr @.str.95, i8 0, i8 -34, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.95 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: dwidth: word\0A\00", [46 x i8] zeroinitializer }, align 32
@at_xdmac_align_width.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.3, ptr @.str.96, i8 0, i8 -34, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.96 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: dwidth: half word\0A\00", [41 x i8] zeroinitializer }, align 32
@at_xdmac_align_width.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.93, ptr @.str.3, ptr @.str.97, i8 0, i8 -33, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.97 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"%s: dwidth: byte\0A\00", [46 x i8] zeroinitializer }, align 32
@at_xdmac_increment_block_count.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.98, ptr @.str.3, ptr @.str.99, i8 0, i8 -118, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.98 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"at_xdmac_increment_block_count\00", [33 x i8] zeroinitializer }, align 32
@.str.99 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: incrementing the block count of the desc 0x%p\0A\00", [45 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.101, i8 1, i8 24, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.100 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"at_xdmac_prep_dma_memcpy\00", [39 x i8] zeroinitializer }, align 32
@.str.101 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"%s: src=%pad, dest=%pad, len=%zd, flags=0x%lx\0A\00", [49 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.102, i8 1, i8 26, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.102 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"%s: remaining_size=%zu\0A\00", [40 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.100, ptr @.str.3, i32 1137, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_memcpy._entry_ptr = internal global ptr @at_xdmac_prep_dma_memcpy._entry, section ".printk_index", align 4
@at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.103, i8 1, i8 32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.103 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: xfer_size=%zu\0A\00", [45 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.92, i8 1, i8 37, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.100, ptr @.str.3, ptr @.str.72, i8 1, i8 40, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@at_xdmac_prep_dma_memset.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.104, ptr @.str.3, ptr @.str.105, i8 1, i8 62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.104 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"at_xdmac_prep_dma_memset\00", [39 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"%s: dest=%pad, len=%zu, pattern=0x%x, flags=0x%lx\0A\00", [45 x i8] zeroinitializer }, align 32
@at_xdmac_memset_create_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.106, ptr @.str.107, ptr @.str.3, i32 1233, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.106 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"%s: Transfer too large, aborting...\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"at_xdmac_memset_create_desc\00", [36 x i8] zeroinitializer }, align 32
@at_xdmac_memset_create_desc._entry_ptr = internal global ptr @at_xdmac_memset_create_desc._entry, section ".printk_index", align 4
@at_xdmac_memset_create_desc._entry.108 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.107, ptr @.str.3, i32 1241, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@at_xdmac_memset_create_desc._entry_ptr.109 = internal global ptr @at_xdmac_memset_create_desc._entry.108, section ".printk_index", align 4
@at_xdmac_memset_create_desc.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.107, ptr @.str.3, ptr @.str.110, i8 1, i8 59, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.110 = internal constant { [69 x i8], [59 x i8] } { [69 x i8] c"%s: lld: mbr_da=%pad, mbr_ds=0x%08x, mbr_ubc=0x%08x, mbr_cfg=0x%08x\0A\00", [59 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.3, ptr @.str.112, i8 1, i8 70, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.111 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"at_xdmac_prep_dma_memset_sg\00", [36 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"%s: sg_len=%d, value=0x%x, flags=0x%lx\0A\00", [56 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.3, ptr @.str.113, i8 1, i8 71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.113 = internal constant { [50 x i8], [46 x i8] } { [50 x i8] c"%s: dest=%pad, len=%d, pattern=0x%x, flags=0x%lx\0A\00", [46 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.3, ptr @.str.114, i8 1, i8 82, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.114 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: desc 0x%p can be merged with desc 0x%p\0A\00", [52 x i8] zeroinitializer }, align 32
@at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug274 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.3, ptr @.str.72, i8 1, i8 94, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug275 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.111, ptr @.str.3, ptr @.str.114, i8 1, i8 97, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@at_xdmac_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.63, ptr @.str.115, ptr @.str.3, i32 701, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"at_xdmac_prep_slave_sg\00", [41 x i8] zeroinitializer }, align 32
@at_xdmac_prep_slave_sg._entry_ptr = internal global ptr @at_xdmac_prep_slave_sg._entry, section ".printk_index", align 4
@at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.3, ptr @.str.116, i8 0, i8 -79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.116 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"%s: sg_len=%d, dir=%s, flags=0x%lx\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"to device\00", [22 x i8] zeroinitializer }, align 32
@.str.118 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"from device\00", [20 x i8] zeroinitializer }, align 32
@at_xdmac_prep_slave_sg._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.120, ptr @.str.115, ptr @.str.3, i32 724, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.120 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sg data length is zero\0A\00", [40 x i8] zeroinitializer }, align 32
@at_xdmac_prep_slave_sg._entry_ptr.121 = internal global ptr @at_xdmac_prep_slave_sg._entry.119, section ".printk_index", align 4
@at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.3, ptr @.str.122, i8 0, i8 -74, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.122 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"%s: * sg%d len=%u, mem=0x%08x\0A\00", [33 x i8] zeroinitializer }, align 32
@at_xdmac_prep_slave_sg._entry.123 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.68, ptr @.str.115, ptr @.str.3, i32 732, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@at_xdmac_prep_slave_sg._entry_ptr.124 = internal global ptr @at_xdmac_prep_slave_sg._entry.123, section ".printk_index", align 4
@at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.3, ptr @.str.71, i8 0, i8 -67, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.115, ptr @.str.3, ptr @.str.72, i8 0, i8 -64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@at_xdmac_device_config.__UNIQUE_ID_ddebug286 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.125, ptr @.str.3, ptr @.str.54, i8 1, i8 -64, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.125 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"at_xdmac_device_config\00", [41 x i8] zeroinitializer }, align 32
@at_xdmac_set_slave_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.126, ptr @.str.127, ptr @.str.3, i32 675, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.126 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"invalid slave configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.127 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"at_xdmac_set_slave_config\00", [38 x i8] zeroinitializer }, align 32
@at_xdmac_set_slave_config._entry_ptr = internal global ptr @at_xdmac_set_slave_config._entry, section ".printk_index", align 4
@at_xdmac_device_pause.__UNIQUE_ID_ddebug287 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.128, ptr @.str.3, ptr @.str.54, i8 1, i8 -60, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.128 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at_xdmac_device_pause\00", [42 x i8] zeroinitializer }, align 32
@at_xdmac_device_resume.__UNIQUE_ID_ddebug288 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.129, ptr @.str.3, ptr @.str.54, i8 1, i8 -55, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.129 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"at_xdmac_device_resume\00", [41 x i8] zeroinitializer }, align 32
@at_xdmac_device_terminate_all.__UNIQUE_ID_ddebug289 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.130, ptr @.str.3, ptr @.str.54, i8 1, i8 -49, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"at_xdmac_device_terminate_all\00", [34 x i8] zeroinitializer }, align 32
@at_xdmac_tasklet.__UNIQUE_ID_ddebug280 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.131, ptr @.str.3, ptr @.str.132, i8 1, i8 -92, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.131 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"at_xdmac_tasklet\00", [47 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: status=0x%08x\0A\00", [45 x i8] zeroinitializer }, align 32
@at_xdmac_tasklet.__UNIQUE_ID_ddebug281 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.131, ptr @.str.3, ptr @.str.56, i8 1, i8 -89, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@at_xdmac_tasklet._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.133, ptr @.str.131, ptr @.str.3, i32 1696, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.133 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Xfer not active: exiting\00", [39 x i8] zeroinitializer }, align 32
@at_xdmac_tasklet._entry_ptr = internal global ptr @at_xdmac_tasklet._entry, section ".printk_index", align 4
@at_xdmac_handle_cyclic.__UNIQUE_ID_ddebug278 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.134, ptr @.str.3, ptr @.str.132, i8 1, i8 -109, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.134 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"at_xdmac_handle_cyclic\00", [41 x i8] zeroinitializer }, align 32
@at_xdmac_handle_error._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.135, ptr @.str.136, ptr @.str.3, i32 1641, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"read bus error!!!\00", [46 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"at_xdmac_handle_error\00", [42 x i8] zeroinitializer }, align 32
@at_xdmac_handle_error._entry_ptr = internal global ptr @at_xdmac_handle_error._entry, section ".printk_index", align 4
@at_xdmac_handle_error._entry.137 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.138, ptr @.str.136, ptr @.str.3, i32 1643, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.138 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"write bus error!!!\00", [45 x i8] zeroinitializer }, align 32
@at_xdmac_handle_error._entry_ptr.139 = internal global ptr @at_xdmac_handle_error._entry.137, section ".printk_index", align 4
@at_xdmac_handle_error._entry.140 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.141, ptr @.str.136, ptr @.str.3, i32 1645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.141 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"request overflow error!!!\00", [38 x i8] zeroinitializer }, align 32
@at_xdmac_handle_error._entry_ptr.142 = internal global ptr @at_xdmac_handle_error._entry.140, section ".printk_index", align 4
@at_xdmac_handle_error.__UNIQUE_ID_ddebug279 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.136, ptr @.str.3, ptr @.str.71, i8 1, i8 -97, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@at_xdmac_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.143, ptr @.str.144, ptr @.str.3, i32 567, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"dma phandler args: bad number of args\0A\00", [57 x i8] zeroinitializer }, align 32
@.str.144 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"at_xdmac_xlate\00", [17 x i8] zeroinitializer }, align 32
@at_xdmac_xlate._entry_ptr = internal global ptr @at_xdmac_xlate._entry, section ".printk_index", align 4
@at_xdmac_xlate._entry.145 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.146, ptr @.str.144, ptr @.str.3, i32 573, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.146 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"can't get a dma channel\0A\00", [39 x i8] zeroinitializer }, align 32
@at_xdmac_xlate._entry_ptr.147 = internal global ptr @at_xdmac_xlate._entry.145, section ".printk_index", align 4
@at_xdmac_xlate.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.144, ptr @.str.3, ptr @.str.148, i8 0, i8 -111, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.148 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"chan dt cfg: memif=%u perif=%u perid=%u\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.149 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-requests\00", [19 x i8] zeroinitializer }, align 32
@at_xdmac_axi_config._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.150, ptr @.str.151, ptr @.str.3, i32 1934, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.150 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"controller in mem2mem mode.\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.151 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"at_xdmac_axi_config\00", [44 x i8] zeroinitializer }, align 32
@at_xdmac_axi_config._entry_ptr = internal global ptr @at_xdmac_axi_config._entry, section ".printk_index", align 4
@at_xdmac_sama5d4_layout = internal constant { %struct.at_xdmac_layout, [22 x i8] } { %struct.at_xdmac_layout { i8 40, i8 44, i8 48, i8 52, i8 56, i8 60, i8 64, i8 80, i8 1, i8 0 }, [22 x i8] zeroinitializer }, align 32
@at_xdmac_sama7g5_layout = internal constant { %struct.at_xdmac_layout, [22 x i8] } { %struct.at_xdmac_layout { i8 48, i8 56, i8 64, i8 68, i8 72, i8 76, i8 80, i8 96, i8 0, i8 1 }, [22 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.152 = private unnamed_addr constant [25 x i8] c"init_nr_desc_per_channel\00", align 1
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 358, i32 21 }
@___asan_gen_.155 = private unnamed_addr constant [16 x i8] c"at_xdmac_driver\00", align 1
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2222, i32 31 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2226, i32 12 }
@___asan_gen_.161 = private unnamed_addr constant [19 x i8] c"atmel_xdmac_dt_ids\00", align 1
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2209, i32 34 }
@___asan_gen_.164 = private unnamed_addr constant [23 x i8] c"atmel_xdmac_dev_pm_ops\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2204, i32 47 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2048, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2057, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2068, i32 42 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2070, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2077, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2083, i32 3 }
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2091, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2142, i32 3 }
@___asan_gen_.229 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2155, i32 3 }
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2162, i32 3 }
@___asan_gen_.244 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 2166, i32 2 }
@___asan_gen_.250 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1732, i32 3 }
@___asan_gen_.253 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1748, i32 4 }
@___asan_gen_.256 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1751, i32 4 }
@___asan_gen_.265 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1880, i32 3 }
@___asan_gen_.271 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1886, i32 3 }
@___asan_gen_.280 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1894, i32 4 }
@___asan_gen_.283 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1903, i32 2 }
@___asan_gen_.289 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 481, i32 2 }
@___asan_gen_.295 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1915, i32 3 }
@___asan_gen_.301 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1581, i32 2 }
@___asan_gen_.307 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1778, i32 2 }
@___asan_gen_.313 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1603, i32 2 }
@___asan_gen_.316 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 387, i32 2 }
@___asan_gen_.319 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 452, i32 2 }
@___asan_gen_.331 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 798, i32 2 }
@___asan_gen_.337 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 803, i32 3 }
@___asan_gen_.343 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 808, i32 3 }
@___asan_gen_.349 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 821, i32 4 }
@___asan_gen_.352 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 829, i32 3 }
@___asan_gen_.355 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 846, i32 3 }
@___asan_gen_.358 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 858, i32 3 }
@___asan_gen_.367 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 609, i32 4 }
@___asan_gen_.373 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 615, i32 4 }
@___asan_gen_.376 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 634, i32 4 }
@___asan_gen_.382 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 640, i32 4 }
@___asan_gen_.385 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 646, i32 2 }
@___asan_gen_.391 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 541, i32 2 }
@___asan_gen_.397 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1016, i32 2 }
@___asan_gen_.400 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1049, i32 4 }
@___asan_gen_.406 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 934, i32 3 }
@___asan_gen_.409 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 942, i32 3 }
@___asan_gen_.412 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 963, i32 3 }
@___asan_gen_.415 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 982, i32 2 }
@___asan_gen_.421 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 885, i32 3 }
@___asan_gen_.424 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 888, i32 3 }
@___asan_gen_.427 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 891, i32 3 }
@___asan_gen_.430 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 894, i32 3 }
@___asan_gen_.436 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 553, i32 2 }
@___asan_gen_.442 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1119, i32 2 }
@___asan_gen_.445 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1131, i32 3 }
@___asan_gen_.448 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1137, i32 4 }
@___asan_gen_.451 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1153, i32 3 }
@___asan_gen_.457 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1272, i32 2 }
@___asan_gen_.466 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1231, i32 3 }
@___asan_gen_.469 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1241, i32 3 }
@___asan_gen_.472 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1257, i32 2 }
@___asan_gen_.478 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1303, i32 2 }
@___asan_gen_.481 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1308, i32 3 }
@___asan_gen_.484 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1350, i32 5 }
@___asan_gen_.490 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 701, i32 3 }
@___asan_gen_.499 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 705, i32 2 }
@___asan_gen_.505 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 724, i32 4 }
@___asan_gen_.508 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 727, i32 3 }
@___asan_gen_.511 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 732, i32 4 }
@___asan_gen_.514 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1794, i32 2 }
@___asan_gen_.523 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 675, i32 3 }
@___asan_gen_.526 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1809, i32 2 }
@___asan_gen_.529 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1830, i32 2 }
@___asan_gen_.532 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1852, i32 2 }
@___asan_gen_.538 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1680, i32 2 }
@___asan_gen_.544 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1696, i32 3 }
@___asan_gen_.547 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1614, i32 2 }
@___asan_gen_.556 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1641, i32 3 }
@___asan_gen_.562 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1643, i32 3 }
@___asan_gen_.568 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1645, i32 3 }
@___asan_gen_.577 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 567, i32 3 }
@___asan_gen_.583 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 573, i32 3 }
@___asan_gen_.586 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 581, i32 2 }
@___asan_gen_.589 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1932, i32 47 }
@___asan_gen_.590 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.596 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.598 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 1934, i32 3 }
@___asan_gen_.599 = private unnamed_addr constant [24 x i8] c"at_xdmac_sama5d4_layout\00", align 1
@___asan_gen_.601 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 280, i32 37 }
@___asan_gen_.602 = private unnamed_addr constant [24 x i8] c"at_xdmac_sama7g5_layout\00", align 1
@___asan_gen_.603 = private constant [26 x i8] c"../drivers/dma/at_xdmac.c\00", align 1
@___asan_gen_.604 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.603, i32 293, i32 37 }
@llvm.compiler.used = appending global [195 x ptr] [ptr @__UNIQUE_ID_author294, ptr @__UNIQUE_ID_description293, ptr @__UNIQUE_ID_file295, ptr @__UNIQUE_ID_init_nr_desc_per_channel235, ptr @__UNIQUE_ID_init_nr_desc_per_channeltype234, ptr @__UNIQUE_ID_license296, ptr @__exitcall_at_xdmac_exit, ptr @__initcall__kmod_at_xdmac__292_2236_at_xdmac_init4, ptr @__param_init_nr_desc_per_channel, ptr @at_xdmac_alloc_chan_resources._entry, ptr @at_xdmac_alloc_chan_resources._entry.39, ptr @at_xdmac_alloc_chan_resources._entry.42, ptr @at_xdmac_alloc_chan_resources._entry_ptr, ptr @at_xdmac_alloc_chan_resources._entry_ptr.41, ptr @at_xdmac_alloc_chan_resources._entry_ptr.45, ptr @at_xdmac_axi_config._entry, ptr @at_xdmac_axi_config._entry_ptr, ptr @at_xdmac_compute_chan_conf._entry, ptr @at_xdmac_compute_chan_conf._entry.75, ptr @at_xdmac_compute_chan_conf._entry.78, ptr @at_xdmac_compute_chan_conf._entry.80, ptr @at_xdmac_compute_chan_conf._entry_ptr, ptr @at_xdmac_compute_chan_conf._entry_ptr.77, ptr @at_xdmac_compute_chan_conf._entry_ptr.79, ptr @at_xdmac_compute_chan_conf._entry_ptr.82, ptr @at_xdmac_exit, ptr @at_xdmac_handle_error._entry, ptr @at_xdmac_handle_error._entry.137, ptr @at_xdmac_handle_error._entry.140, ptr @at_xdmac_handle_error._entry_ptr, ptr @at_xdmac_handle_error._entry_ptr.139, ptr @at_xdmac_handle_error._entry_ptr.142, ptr @at_xdmac_interleaved_queue_desc._entry, ptr @at_xdmac_interleaved_queue_desc._entry_ptr, ptr @at_xdmac_memset_create_desc._entry, ptr @at_xdmac_memset_create_desc._entry.108, ptr @at_xdmac_memset_create_desc._entry_ptr, ptr @at_xdmac_memset_create_desc._entry_ptr.109, ptr @at_xdmac_prep_dma_cyclic._entry, ptr @at_xdmac_prep_dma_cyclic._entry.64, ptr @at_xdmac_prep_dma_cyclic._entry.67, ptr @at_xdmac_prep_dma_cyclic._entry_ptr, ptr @at_xdmac_prep_dma_cyclic._entry_ptr.66, ptr @at_xdmac_prep_dma_cyclic._entry_ptr.69, ptr @at_xdmac_prep_dma_memcpy._entry, ptr @at_xdmac_prep_dma_memcpy._entry_ptr, ptr @at_xdmac_prep_slave_sg._entry, ptr @at_xdmac_prep_slave_sg._entry.119, ptr @at_xdmac_prep_slave_sg._entry.123, ptr @at_xdmac_prep_slave_sg._entry_ptr, ptr @at_xdmac_prep_slave_sg._entry_ptr.121, ptr @at_xdmac_prep_slave_sg._entry_ptr.124, ptr @at_xdmac_probe._entry, ptr @at_xdmac_probe._entry.10, ptr @at_xdmac_probe._entry.13, ptr @at_xdmac_probe._entry.16, ptr @at_xdmac_probe._entry.19, ptr @at_xdmac_probe._entry.23, ptr @at_xdmac_probe._entry.26, ptr @at_xdmac_probe._entry.29, ptr @at_xdmac_probe._entry.6, ptr @at_xdmac_probe._entry_ptr, ptr @at_xdmac_probe._entry_ptr.12, ptr @at_xdmac_probe._entry_ptr.15, ptr @at_xdmac_probe._entry_ptr.18, ptr @at_xdmac_probe._entry_ptr.21, ptr @at_xdmac_probe._entry_ptr.25, ptr @at_xdmac_probe._entry_ptr.28, ptr @at_xdmac_probe._entry_ptr.32, ptr @at_xdmac_probe._entry_ptr.8, ptr @at_xdmac_set_slave_config._entry, ptr @at_xdmac_set_slave_config._entry_ptr, ptr @at_xdmac_tasklet._entry, ptr @at_xdmac_tasklet._entry_ptr, ptr @at_xdmac_xlate._entry, ptr @at_xdmac_xlate._entry.145, ptr @at_xdmac_xlate._entry_ptr, ptr @at_xdmac_xlate._entry_ptr.147, ptr @init_nr_desc_per_channel, ptr @at_xdmac_driver, ptr @.str, ptr @atmel_xdmac_dt_ids, ptr @atmel_xdmac_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @at_xdmac_probe.__key, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.65, ptr @.str.68, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.76, ptr @.str.81, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.88, ptr @.str.89, ptr @.str.90, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.96, ptr @.str.97, ptr @.str.98, ptr @.str.99, ptr @.str.100, ptr @.str.101, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.106, ptr @.str.107, ptr @.str.110, ptr @.str.111, ptr @.str.112, ptr @.str.113, ptr @.str.114, ptr @.str.115, ptr @.str.116, ptr @.str.117, ptr @.str.118, ptr @.str.120, ptr @.str.122, ptr @.str.125, ptr @.str.126, ptr @.str.127, ptr @.str.128, ptr @.str.129, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.138, ptr @.str.141, ptr @.str.143, ptr @.str.144, ptr @.str.146, ptr @.str.148, ptr @.str.149, ptr @.str.150, ptr @.str.151, ptr @at_xdmac_sama5d4_layout, ptr @at_xdmac_sama7g5_layout], section "llvm.metadata"
@0 = internal global [151 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_nr_desc_per_channel to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_xdmac_dt_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @atmel_xdmac_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.229 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.244 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.250 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.253 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 77, i32 128, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.256 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.265 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_alloc_chan_resources._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 73, i32 128, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_alloc_chan_resources._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.280 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.283 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.289 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.295 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 75, i32 128, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.301 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.307 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.313 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.316 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_prep_dma_cyclic._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.343 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_prep_dma_cyclic._entry.67 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.349 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.352 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.355 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_compute_chan_conf._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.367 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_compute_chan_conf._entry.75 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.373 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_compute_chan_conf._entry.78 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.376 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_compute_chan_conf._entry.80 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.382 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.385 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.391 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 64, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.397 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.88 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.400 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.90 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.406 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.409 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_interleaved_queue_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.412 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 67, i32 128, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.415 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.421 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.424 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.96 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.427 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.430 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.98 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.99 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.436 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.101 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.442 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.445 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_prep_dma_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.448 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.451 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.457 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_memset_create_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.106 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.466 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_memset_create_desc._entry.108 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.469 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 69, i32 128, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.472 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.111 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.478 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.113 to i32), i32 50, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.481 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.484 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.490 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.116 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.118 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.499 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_prep_slave_sg._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.120 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.505 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.122 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.508 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_prep_slave_sg._entry.123 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.511 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.514 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_set_slave_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.126 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.523 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.128 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.526 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.129 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.529 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.532 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.538 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_tasklet._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.544 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.547 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_handle_error._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.556 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_handle_error._entry.137 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_handle_error._entry.140 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.144 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.577 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_xlate._entry.145 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.146 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.583 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.148 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.586 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.149 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.589 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_axi_config._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.590 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.150 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.151 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.596 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.598 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_sama5d4_layout to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.599 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.601 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @at_xdmac_sama7g5_layout to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.602 to i32), i32 ptrtoint (ptr @___asan_gen_.603 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.604 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @at_xdmac_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @at_xdmac_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @at_xdmac_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @at_xdmac_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_xdmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then3, label %if.end5

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %0 = ptrtoint ptr %call1 to i32
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %1 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %call1) #7, !srcloc !367
  %2 = lshr i32 %1, 24
  %and = and i32 %2, 31
  %add = add nuw nsw i32 %and, 1
  %dev10 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %3 = mul nuw nsw i32 %add, 236
  %spec.select.i264 = add nuw nsw i32 %3, 388
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev10, i32 noundef %spec.select.i264, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end18:                                         ; preds = %if.end5
  %regs = getelementptr inbounds %struct.at_xdmac, ptr %call.i, i32 0, i32 1
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call1, ptr %regs, align 4
  %irq19 = getelementptr inbounds %struct.at_xdmac, ptr %call.i, i32 0, i32 2
  %5 = ptrtoint ptr %irq19 to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call, ptr %irq19, align 4
  %call21 = tail call ptr @of_device_get_match_data(ptr noundef %dev10) #7
  %layout = getelementptr inbounds %struct.at_xdmac, ptr %call.i, i32 0, i32 6
  %6 = ptrtoint ptr %layout to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call21, ptr %layout, align 4
  %tobool23.not = icmp eq ptr %call21, null
  br i1 %tobool23.not, label %if.end18.cleanup_crit_edge, label %if.end25

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end25:                                         ; preds = %if.end18
  %call27 = tail call ptr @devm_clk_get(ptr noundef %dev10, ptr noundef nonnull @.str.9) #7
  %clk = getelementptr inbounds %struct.at_xdmac, ptr %call.i, i32 0, i32 3
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %call27, ptr %clk, align 4
  %cmp.i258 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i258, label %do.end33, label %if.end37

do.end33:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.11) #10
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end37:                                         ; preds = %if.end25
  %11 = ptrtoint ptr %irq19 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq19, align 4
  %call.i259 = tail call i32 @request_threaded_irq(i32 noundef %12, ptr noundef nonnull @at_xdmac_interrupt, ptr noundef null, i32 noundef 0, ptr noundef nonnull @.str, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i259)
  %tobool40.not = icmp eq i32 %call.i259, 0
  br i1 %tobool40.not, label %if.end46, label %do.end44

do.end44:                                         ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.14) #10
  br label %cleanup

if.end46:                                         ; preds = %if.end37
  %13 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk, align 4
  %call48 = tail call fastcc i32 @clk_prepare_enable(ptr noundef %14)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call48)
  %tobool49.not = icmp eq i32 %call48, 0
  br i1 %tobool49.not, label %if.end55, label %do.end53

do.end53:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.17) #10
  br label %err_free_irq

if.end55:                                         ; preds = %if.end46
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %15 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %16, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end55.dev_name.exit_crit_edge

if.end55.dev_name.exit_crit_edge:                 ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end55
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dev10 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev10, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end55.dev_name.exit_crit_edge
  %retval.0.i260 = phi ptr [ %18, %if.end.i ], [ %16, %if.end55.dev_name.exit_crit_edge ]
  %call59 = tail call ptr @dmam_pool_create(ptr noundef %retval.0.i260, ptr noundef %dev10, i32 noundef 176, i32 noundef 4, i32 noundef 0) #7
  %at_xdmac_desc_pool = getelementptr inbounds %struct.at_xdmac, ptr %call.i, i32 0, i32 5
  %19 = ptrtoint ptr %at_xdmac_desc_pool to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call59, ptr %at_xdmac_desc_pool, align 4
  %tobool61.not = icmp eq ptr %call59, null
  br i1 %tobool61.not, label %do.end65, label %if.end67

do.end65:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.20) #10
  br label %err_clk_disable

if.end67:                                         ; preds = %dev_name.exit
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #7
  tail call void @_set_bit(i32 noundef 13, ptr noundef %cap_mask) #7
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #7
  tail call void @_set_bit(i32 noundef 6, ptr noundef %cap_mask) #7
  tail call void @_set_bit(i32 noundef 7, ptr noundef %cap_mask) #7
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #7
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #7
  %dev82 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %20 = ptrtoint ptr %dev82 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %dev10, ptr %dev82, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %21 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @at_xdmac_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %22 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @at_xdmac_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %23 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @at_xdmac_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %24 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @at_xdmac_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 40
  %25 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @at_xdmac_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_prep_interleaved_dma = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 41
  %26 = ptrtoint ptr %device_prep_interleaved_dma to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @at_xdmac_prep_interleaved, ptr %device_prep_interleaved_dma, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %27 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr @at_xdmac_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_dma_memset = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 36
  %28 = ptrtoint ptr %device_prep_dma_memset to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr @at_xdmac_prep_dma_memset, ptr %device_prep_dma_memset, align 4
  %device_prep_dma_memset_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 37
  %29 = ptrtoint ptr %device_prep_dma_memset_sg to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @at_xdmac_prep_dma_memset_sg, ptr %device_prep_dma_memset_sg, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %30 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @at_xdmac_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %31 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @at_xdmac_device_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 45
  %32 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @at_xdmac_device_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 46
  %33 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @at_xdmac_device_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %34 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @at_xdmac_device_terminate_all, ptr %device_terminate_all, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %35 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 279, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %36 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 279, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %37 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %38 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %residue_granularity, align 4
  tail call fastcc void @at_xdmac_off(ptr noundef nonnull %call.i)
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %39 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %channels, ptr %prev.i, align 4
  br label %for.body

for.body:                                         ; preds = %while.end.for.body_crit_edge, %if.end67
  %i.0267 = phi i32 [ 0, %if.end67 ], [ %inc, %while.end.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.at_xdmac, ptr %call.i, i32 0, i32 7, i32 %i.0267
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %call.i, ptr %arrayidx, align 4
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 8
  %42 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %43, ptr noundef %channels) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %device_node, ptr %prev.i, align 4
  %45 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 8, i32 1
  %46 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %device_node, ptr %43, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %48 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %regs, align 4
  %50 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %layout, align 4
  %chan_cc_reg_base.i = getelementptr inbounds %struct.at_xdmac_layout, ptr %51, i32 0, i32 7
  %52 = ptrtoint ptr %chan_cc_reg_base.i to i32
  call void @__asan_load1_noabort(i32 %52)
  %53 = load i8, ptr %chan_cc_reg_base.i, align 1
  %conv.i = zext i8 %53 to i32
  %mul.i = shl i32 %i.0267, 6
  %add.i = add i32 %mul.i, %conv.i
  %add.ptr.i = getelementptr i8, ptr %49, i32 %add.i
  %ch_regs = getelementptr %struct.at_xdmac, ptr %call.i, i32 0, i32 7, i32 %i.0267, i32 1
  %54 = ptrtoint ptr %ch_regs to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %add.ptr.i, ptr %ch_regs, align 4
  %shl = shl nuw i32 1, %i.0267
  %mask = getelementptr %struct.at_xdmac, ptr %call.i, i32 0, i32 7, i32 %i.0267, i32 2
  %55 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %shl, ptr %mask, align 4
  %lock = getelementptr %struct.at_xdmac, ptr %call.i, i32 0, i32 7, i32 %i.0267, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.22, ptr noundef nonnull @at_xdmac_probe.__key, i16 noundef signext 3) #7
  %xfers_list = getelementptr %struct.at_xdmac, ptr %call.i, i32 0, i32 7, i32 %i.0267, i32 16
  %56 = ptrtoint ptr %xfers_list to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %xfers_list, ptr %xfers_list, align 4
  %prev.i262 = getelementptr %struct.at_xdmac, ptr %call.i, i32 0, i32 7, i32 %i.0267, i32 16, i32 1
  %57 = ptrtoint ptr %prev.i262 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %xfers_list, ptr %prev.i262, align 4
  %free_descs_list = getelementptr %struct.at_xdmac, ptr %call.i, i32 0, i32 7, i32 %i.0267, i32 17
  %58 = ptrtoint ptr %free_descs_list to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %free_descs_list, ptr %free_descs_list, align 4
  %prev.i263 = getelementptr %struct.at_xdmac, ptr %call.i, i32 0, i32 7, i32 %i.0267, i32 17, i32 1
  %59 = ptrtoint ptr %prev.i263 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %free_descs_list, ptr %prev.i263, align 4
  %tasklet = getelementptr %struct.at_xdmac, ptr %call.i, i32 0, i32 7, i32 %i.0267, i32 13
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @at_xdmac_tasklet) #7
  %60 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ch_regs, align 4
  %add.ptr115265 = getelementptr i8, ptr %61, i32 12
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115265) #7, !srcloc !367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool118.not266 = icmp eq i32 %62, 0
  br i1 %tobool118.not266, label %list_add_tail.exit.while.end_crit_edge, label %list_add_tail.exit.do.end123_crit_edge

list_add_tail.exit.do.end123_crit_edge:           ; preds = %list_add_tail.exit
  br label %do.end123

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end123:                                        ; preds = %do.end123.do.end123_crit_edge, %list_add_tail.exit.do.end123_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !368
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !369
  %63 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %ch_regs, align 4
  %add.ptr115 = getelementptr i8, ptr %64, i32 12
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr115) #7, !srcloc !367
  %tobool118.not = icmp eq i32 %65, 0
  br i1 %tobool118.not, label %do.end123.while.end_crit_edge, label %do.end123.do.end123_crit_edge

do.end123.do.end123_crit_edge:                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end123

do.end123.while.end_crit_edge:                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end123.while.end_crit_edge, %list_add_tail.exit.while.end_crit_edge
  %inc = add nuw nsw i32 %i.0267, 1
  %exitcond = icmp eq i32 %i.0267, %and
  br i1 %exitcond, label %for.end, label %while.end.for.body_crit_edge

while.end.for.body_crit_edge:                     ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %while.end
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %66 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call129 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call129)
  %tobool130.not = icmp eq i32 %call129, 0
  br i1 %tobool130.not, label %if.end136, label %do.end134

do.end134:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.24) #10
  br label %err_clk_disable

if.end136:                                        ; preds = %for.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %67 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %of_node, align 8
  %call138 = tail call i32 @of_dma_controller_register(ptr noundef %68, ptr noundef nonnull @at_xdmac_xlate, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call138)
  %tobool139.not = icmp eq i32 %call138, 0
  br i1 %tobool139.not, label %do.end148, label %do.end143

do.end143:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev10, ptr noundef nonnull @.str.27) #10
  tail call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #7
  br label %err_clk_disable

do.end148:                                        ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #9
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev10, ptr noundef nonnull @.str.30, i32 noundef %add, ptr noundef %70) #10
  tail call fastcc void @at_xdmac_axi_config(ptr noundef %pdev)
  br label %cleanup

err_clk_disable:                                  ; preds = %do.end143, %do.end134, %do.end65
  %ret.0 = phi i32 [ %call129, %do.end134 ], [ %call138, %do.end143 ], [ -12, %do.end65 ]
  %71 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %72) #7
  tail call void @clk_unprepare(ptr noundef %72) #7
  br label %err_free_irq

err_free_irq:                                     ; preds = %err_clk_disable, %do.end53
  %ret.1 = phi i32 [ %call48, %do.end53 ], [ %ret.0, %err_clk_disable ]
  %73 = ptrtoint ptr %irq19 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %irq19, align 4
  %call154 = tail call ptr @free_irq(i32 noundef %74, ptr noundef nonnull %call.i) #7
  br label %cleanup

cleanup:                                          ; preds = %err_free_irq, %do.end148, %do.end44, %do.end33, %if.end18.cleanup_crit_edge, %do.end16, %if.then3, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then3 ], [ %10, %do.end33 ], [ %call.i259, %do.end44 ], [ %ret.1, %err_free_irq ], [ 0, %do.end148 ], [ -12, %do.end16 ], [ %call, %entry.cleanup_crit_edge ], [ -19, %if.end18.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_xdmac_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %regs.i = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !370
  %4 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs.i, align 4
  %add.ptr211.i = getelementptr i8, ptr %5, i32 36
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr211.i) #7, !srcloc !367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not12.i = icmp eq i32 %6, 0
  br i1 %tobool.not12.i, label %entry.at_xdmac_off.exit_crit_edge, label %entry.do.end.i_crit_edge

entry.do.end.i_crit_edge:                         ; preds = %entry
  br label %do.end.i

entry.at_xdmac_off.exit_crit_edge:                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_off.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %entry.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !371
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !372
  %7 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs.i, align 4
  %add.ptr2.i = getelementptr i8, ptr %8, i32 36
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !367
  %tobool.not.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i, label %do.end.i.at_xdmac_off.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.at_xdmac_off.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_off.exit

at_xdmac_off.exit:                                ; preds = %do.end.i.at_xdmac_off.exit_crit_edge, %entry.at_xdmac_off.exit_crit_edge
  %10 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs.i, align 4
  %add.ptr8.i = getelementptr i8, ptr %11, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 -1) #7, !srcloc !370
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %13) #7
  tail call void @dma_async_device_unregister(ptr noundef %1) #7
  %clk = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %15) #7
  tail call void @clk_unprepare(ptr noundef %15) #7
  %irq = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %irq, align 4
  %call1 = tail call ptr @free_irq(i32 noundef %17, ptr noundef %1) #7
  %chancnt = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %chancnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp15.not = icmp eq i32 %19, 0
  br i1 %cmp15.not, label %at_xdmac_off.exit.for.end_crit_edge, label %at_xdmac_off.exit.for.body_crit_edge

at_xdmac_off.exit.for.body_crit_edge:             ; preds = %at_xdmac_off.exit
  br label %for.body

at_xdmac_off.exit.for.end_crit_edge:              ; preds = %at_xdmac_off.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %at_xdmac_free_chan_resources.exit.for.body_crit_edge, %at_xdmac_off.exit.for.body_crit_edge
  %i.016 = phi i32 [ %inc, %at_xdmac_free_chan_resources.exit.for.body_crit_edge ], [ 0, %at_xdmac_off.exit.for.body_crit_edge ]
  %tasklet = getelementptr %struct.at_xdmac, ptr %1, i32 0, i32 7, i32 %i.016, i32 13
  tail call void @tasklet_kill(ptr noundef %tasklet) #7
  %free_descs_list.i = getelementptr %struct.at_xdmac, ptr %1, i32 0, i32 7, i32 %i.016, i32 17
  %20 = ptrtoint ptr %free_descs_list.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %free_descs_list.i, align 4
  %cmp.not34.i = icmp eq ptr %21, %free_descs_list.i
  br i1 %cmp.not34.i, label %for.body.at_xdmac_free_chan_resources.exit_crit_edge, label %do.body.lr.ph.i

for.body.at_xdmac_free_chan_resources.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_free_chan_resources.exit

do.body.lr.ph.i:                                  ; preds = %for.body
  %arrayidx = getelementptr %struct.at_xdmac, ptr %1, i32 0, i32 7, i32 %i.016
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %arrayidx, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 5
  %at_xdmac_desc_pool.i = getelementptr inbounds %struct.at_xdmac, ptr %23, i32 0, i32 5
  br label %do.body.i

do.body.i:                                        ; preds = %list_del.exit.i.do.body.i_crit_edge, %do.body.lr.ph.i
  %.pn.in35.i = phi ptr [ %21, %do.body.lr.ph.i ], [ %.pn39.i, %list_del.exit.i.do.body.i_crit_edge ]
  %desc.037.i = getelementptr i8, ptr %.pn.in35.i, i32 -140
  %24 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn39.i = load ptr, ptr %.pn.in35.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_free_chan_resources.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_remove, %do.end.i14)) #7
          to label %if.then.i [label %do.end.i14], !srcloc !373

if.then.i:                                        ; preds = %do.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %26, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_free_chan_resources.__UNIQUE_ID_ddebug291, ptr noundef %device.i.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, ptr noundef %desc.037.i) #7
  br label %do.end.i14

do.end.i14:                                       ; preds = %if.then.i, %do.body.i
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in35.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i14.list_del.exit.i_crit_edge

do.end.i14.list_del.exit.i_crit_edge:             ; preds = %do.end.i14
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i14
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35.i, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i.i, align 4
  %29 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %.pn.in35.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %do.end.i14.list_del.exit.i_crit_edge
  %33 = ptrtoint ptr %.pn.in35.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in35.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %35 = ptrtoint ptr %at_xdmac_desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %at_xdmac_desc_pool.i, align 4
  %phys.i = getelementptr i8, ptr %.pn.in35.i, i32 -92
  %37 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %phys.i, align 8
  tail call void @dma_pool_free(ptr noundef %36, ptr noundef %desc.037.i, i32 noundef %38) #7
  %cmp.not.i = icmp eq ptr %.pn39.i, %free_descs_list.i
  br i1 %cmp.not.i, label %list_del.exit.i.at_xdmac_free_chan_resources.exit_crit_edge, label %list_del.exit.i.do.body.i_crit_edge

list_del.exit.i.do.body.i_crit_edge:              ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i

list_del.exit.i.at_xdmac_free_chan_resources.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_free_chan_resources.exit

at_xdmac_free_chan_resources.exit:                ; preds = %list_del.exit.i.at_xdmac_free_chan_resources.exit_crit_edge, %for.body.at_xdmac_free_chan_resources.exit_crit_edge
  %inc = add nuw i32 %i.016, 1
  %39 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %chancnt, align 4
  %cmp = icmp ult i32 %inc, %40
  br i1 %cmp, label %at_xdmac_free_chan_resources.exit.for.body_crit_edge, label %at_xdmac_free_chan_resources.exit.for.end_crit_edge

at_xdmac_free_chan_resources.exit.for.end_crit_edge: ; preds = %at_xdmac_free_chan_resources.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

at_xdmac_free_chan_resources.exit.for.body_crit_edge: ; preds = %at_xdmac_free_chan_resources.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %at_xdmac_free_chan_resources.exit.for.end_crit_edge, %at_xdmac_off.exit.for.end_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_xdmac_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.at_xdmac, ptr %dev_id, i32 0, i32 1
  %dev = getelementptr inbounds %struct.dma_device, ptr %dev_id, i32 0, i32 15
  %chancnt = getelementptr inbounds %struct.dma_device, ptr %dev_id, i32 0, i32 1
  br label %do.body.outer

do.body.outer:                                    ; preds = %for.inc.do.body.outer_crit_edge, %entry
  %ret.0.ph = phi i32 [ 0, %entry ], [ %ret.2, %for.inc.do.body.outer_crit_edge ]
  br label %do.body

do.body:                                          ; preds = %for.cond.preheader.do.body_crit_edge, %do.body.outer
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 20
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !367
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr3 = getelementptr i8, ptr %5, i32 24
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !367
  %7 = tail call i32 @llvm.bswap.i32(i32 %6)
  %and = and i32 %7, %3
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_interrupt.__UNIQUE_ID_ddebug282, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_interrupt, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !373

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_interrupt.__UNIQUE_ID_ddebug282, ptr noundef %9, ptr noundef nonnull @.str.34, ptr noundef nonnull @.str.33, i32 noundef %7, i32 noundef %3, i32 noundef %and) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool12.not = icmp eq i32 %and, 0
  br i1 %tobool12.not, label %do.end109, label %for.cond.preheader

for.cond.preheader:                               ; preds = %do.end
  %10 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chancnt, align 4
  %cmp148.not = icmp eq i32 %11, 0
  br i1 %cmp148.not, label %for.cond.preheader.do.body_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.do.body_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0150 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %ret.1149 = phi i32 [ %ret.2, %for.inc.for.body_crit_edge ], [ %ret.0.ph, %for.cond.preheader.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.0150
  %and16 = and i32 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and16)
  %tobool17.not = icmp eq i32 %and16, 0
  br i1 %tobool17.not, label %for.body.for.inc_crit_edge, label %if.end19

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end19:                                         ; preds = %for.body
  %ch_regs = getelementptr %struct.at_xdmac, ptr %dev_id, i32 0, i32 7, i32 %i.0150, i32 1
  %12 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ch_regs, align 4
  %add.ptr21 = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #7, !srcloc !367
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  %16 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ch_regs, align 4
  %add.ptr26 = getelementptr i8, ptr %17, i32 12
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #7, !srcloc !367
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  %and29 = and i32 %19, %15
  %irq_status = getelementptr %struct.at_xdmac, ptr %dev_id, i32 0, i32 7, i32 %i.0150, i32 11
  %20 = ptrtoint ptr %irq_status to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %and29, ptr %irq_status, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_interrupt.__UNIQUE_ID_ddebug283, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_interrupt, %do.body50)) #7
          to label %if.then44 [label %do.body50], !srcloc !373

if.then44:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_interrupt.__UNIQUE_ID_ddebug283, ptr noundef %22, ptr noundef nonnull @.str.35, ptr noundef nonnull @.str.33, i32 noundef %i.0150, i32 noundef %15, i32 noundef %19) #7
  br label %do.body50

do.body50:                                        ; preds = %if.then44, %if.end19
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_interrupt.__UNIQUE_ID_ddebug284, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_interrupt, %do.end99)) #7
          to label %if.then64 [label %do.end99], !srcloc !373

if.then64:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr %struct.at_xdmac, ptr %dev_id, i32 0, i32 7, i32 %i.0150, i32 0, i32 5
  %23 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ch_regs, align 4
  %add.ptr69 = getelementptr i8, ptr %26, i32 40
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #7, !srcloc !367
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ch_regs, align 4
  %add.ptr74 = getelementptr i8, ptr %30, i32 24
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr74) #7, !srcloc !367
  %32 = tail call i32 @llvm.bswap.i32(i32 %31)
  %33 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %ch_regs, align 4
  %add.ptr79 = getelementptr i8, ptr %34, i32 28
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr79) #7, !srcloc !367
  %36 = tail call i32 @llvm.bswap.i32(i32 %35)
  %37 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %ch_regs, align 4
  %add.ptr84 = getelementptr i8, ptr %38, i32 16
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr84) #7, !srcloc !367
  %40 = tail call i32 @llvm.bswap.i32(i32 %39)
  %41 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %ch_regs, align 4
  %add.ptr89 = getelementptr i8, ptr %42, i32 20
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr89) #7, !srcloc !367
  %44 = tail call i32 @llvm.bswap.i32(i32 %43)
  %45 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %ch_regs, align 4
  %add.ptr94 = getelementptr i8, ptr %46, i32 32
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94) #7, !srcloc !367
  %48 = tail call i32 @llvm.bswap.i32(i32 %47)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_interrupt.__UNIQUE_ID_ddebug284, ptr noundef %device.i, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.33, i32 noundef %28, i32 noundef %32, i32 noundef %36, i32 noundef %40, i32 noundef %44, i32 noundef %48) #7
  br label %do.end99

do.end99:                                         ; preds = %if.then64, %do.body50
  %49 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %irq_status, align 4
  %and101 = and i32 %50, 48
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and101)
  %tobool102.not = icmp eq i32 %and101, 0
  br i1 %tobool102.not, label %do.end99.if.end106_crit_edge, label %if.then103

do.end99.if.end106_crit_edge:                     ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end106

if.then103:                                       ; preds = %do.end99
  call void @__sanitizer_cov_trace_pc() #9
  %mask = getelementptr %struct.at_xdmac, ptr %dev_id, i32 0, i32 7, i32 %i.0150, i32 2
  %51 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mask, align 4
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  %54 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %regs, align 4
  %add.ptr105 = getelementptr i8, ptr %55, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr105, i32 %53) #7, !srcloc !370
  br label %if.end106

if.end106:                                        ; preds = %if.then103, %do.end99.if.end106_crit_edge
  %state.i = getelementptr %struct.at_xdmac, ptr %dev_id, i32 0, i32 7, i32 %i.0150, i32 13, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.end106.for.inc_crit_edge

if.end106.for.inc_crit_edge:                      ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.then.i:                                        ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  %tasklet = getelementptr %struct.at_xdmac, ptr %dev_id, i32 0, i32 7, i32 %i.0150, i32 13
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #7
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.end106.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %ret.2 = phi i32 [ %ret.1149, %for.body.for.inc_crit_edge ], [ 1, %if.end106.for.inc_crit_edge ], [ 1, %if.then.i ]
  %inc = add nuw i32 %i.0150, 1
  %56 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %chancnt, align 4
  %cmp = icmp ult i32 %inc, %57
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.do.body.outer_crit_edge

for.inc.do.body.outer_crit_edge:                  ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.outer

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.end109:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  ret i32 %ret.0.ph
}

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @clk_prepare_enable(ptr noundef %clk) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @clk_prepare(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call i32 @clk_enable(ptr noundef %clk) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2.not = icmp eq i32 %call1, 0
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.then3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %clk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then3, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call, %entry.cleanup_crit_edge ], [ %call1, %if.then3 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_xdmac_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %phys.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_regs.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 36
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !367
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  %mask.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %3, %5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.37) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %free_descs_list = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17
  %8 = ptrtoint ptr %free_descs_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %free_descs_list, align 4
  %cmp.i.not = icmp eq ptr %9, %free_descs_list
  br i1 %cmp.i.not, label %for.cond.preheader, label %do.end7

for.cond.preheader:                               ; preds = %if.end
  %10 = load i32, ptr @init_nr_desc_per_channel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %cmp55.not = icmp eq i32 %10, 0
  br i1 %cmp55.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %prev.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17, i32 1
  br label %for.body

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i45 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %11 = ptrtoint ptr %dev.i45 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev.i45, align 4
  %device.i46 = getelementptr inbounds %struct.dma_chan_dev, ptr %12, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i46, ptr noundef nonnull @.str.40) #10
  br label %cleanup

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.body.lr.ph
  %i.056 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %13 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i) #7
  %15 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 -1, ptr %phys.i, align 4, !annotation !374
  %at_xdmac_desc_pool.i = getelementptr inbounds %struct.at_xdmac, ptr %14, i32 0, i32 5
  %16 = ptrtoint ptr %at_xdmac_desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %at_xdmac_desc_pool.i, align 4
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %17, i32 noundef 3520, ptr noundef nonnull %phys.i) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end15, label %if.end17

do.end15:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #7
  %dev.i47 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %18 = ptrtoint ptr %dev.i47 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i47, align 4
  %device.i48 = getelementptr inbounds %struct.dma_chan_dev, ptr %19, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i48, ptr noundef nonnull @.str.43, i32 noundef %i.056) #10
  br label %for.end

if.end17:                                         ; preds = %for.body
  %descs_list.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %descs_list.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %descs_list.i, ptr %descs_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i, i32 0, i32 6, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %descs_list.i, ptr %prev.i.i, align 4
  %tx_dma_desc.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %tx_dma_desc.i, ptr noundef %chan) #7
  %tx_submit.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i, i32 0, i32 2, i32 4
  %22 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @at_xdmac_tx_submit, ptr %tx_submit.i, align 8
  %23 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %phys.i, align 4
  %phys4.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i, i32 0, i32 2, i32 2
  %25 = ptrtoint ptr %phys4.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %24, ptr %phys4.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i) #7
  %desc_node = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i, i32 0, i32 3
  %26 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i, align 4
  %call.i.i49 = call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %27, ptr noundef %free_descs_list) #7
  br i1 %call.i.i49, label %if.end.i.i, label %if.end17.list_add_tail.exit_crit_edge

if.end17.list_add_tail.exit_crit_edge:            ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %desc_node, ptr %prev.i, align 4
  %29 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %free_descs_list, ptr %desc_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i, i32 0, i32 3, i32 1
  %30 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %desc_node, ptr %27, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end17.list_add_tail.exit_crit_edge
  %inc = add nuw i32 %i.056, 1
  %32 = load i32, ptr @init_nr_desc_per_channel, align 4
  %cmp = icmp ult i32 %inc, %32
  br i1 %cmp, label %list_add_tail.exit.for.body_crit_edge, label %list_add_tail.exit.for.end_crit_edge

list_add_tail.exit.for.end_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %list_add_tail.exit.for.end_crit_edge, %do.end15, %for.cond.preheader.for.end_crit_edge
  %i.054 = phi i32 [ %i.056, %do.end15 ], [ 0, %for.cond.preheader.for.end_crit_edge ], [ %inc, %list_add_tail.exit.for.end_crit_edge ]
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %33 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %34 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 1, ptr %completed_cookie.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_alloc_chan_resources.__UNIQUE_ID_ddebug290, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_alloc_chan_resources, %cleanup)) #7
          to label %if.then25 [label %cleanup], !srcloc !373

if.then25:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i50 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %35 = ptrtoint ptr %dev.i50 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i50, align 4
  %device.i51 = getelementptr inbounds %struct.dma_chan_dev, ptr %36, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_alloc_chan_resources.__UNIQUE_ID_ddebug290, ptr noundef %device.i51, ptr noundef nonnull @.str.46, ptr noundef nonnull @.str.38, i32 noundef %i.054) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %for.end, %do.end7, %do.end
  %retval.0 = phi i32 [ -5, %do.end ], [ -5, %do.end7 ], [ %i.054, %if.then25 ], [ %i.054, %for.end ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at_xdmac_free_chan_resources(ptr noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %free_descs_list = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17
  %0 = ptrtoint ptr %free_descs_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_descs_list, align 4
  %cmp.not34 = icmp eq ptr %1, %free_descs_list
  br i1 %cmp.not34, label %entry.for.end_crit_edge, label %do.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body.lr.ph:                                    ; preds = %entry
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %at_xdmac_desc_pool = getelementptr inbounds %struct.at_xdmac, ptr %3, i32 0, i32 5
  br label %do.body

do.body:                                          ; preds = %list_del.exit.do.body_crit_edge, %do.body.lr.ph
  %.pn.in35 = phi ptr [ %1, %do.body.lr.ph ], [ %.pn39, %list_del.exit.do.body_crit_edge ]
  %desc.037 = getelementptr i8, ptr %.pn.in35, i32 -140
  %4 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn39 = load ptr, ptr %.pn.in35, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_free_chan_resources.__UNIQUE_ID_ddebug291, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_free_chan_resources, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !373

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %6, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_free_chan_resources.__UNIQUE_ID_ddebug291, ptr noundef %device.i, ptr noundef nonnull @.str.50, ptr noundef nonnull @.str.49, ptr noundef %desc.037) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in35) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_del.exit_crit_edge

do.end.list_del.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %.pn.in35, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.end.list_del.exit_crit_edge
  %13 = ptrtoint ptr %.pn.in35 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in35, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in35, i32 0, i32 1
  %14 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %15 = ptrtoint ptr %at_xdmac_desc_pool to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %at_xdmac_desc_pool, align 4
  %phys = getelementptr i8, ptr %.pn.in35, i32 -92
  %17 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %phys, align 8
  tail call void @dma_pool_free(ptr noundef %16, ptr noundef %desc.037, i32 noundef %18) #7
  %cmp.not = icmp eq ptr %.pn39, %free_descs_list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.do.body_crit_edge

list_del.exit.do.body_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_xdmac_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !375
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %txstate to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %txstate, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 1
  %7 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %8 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 3
  %9 = ptrtoint ptr %in_flight_bytes.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %in_flight_bytes.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %entry.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i.i = icmp sgt i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %5, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %3, %cookie
  br i1 %cmp.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end.i
  %or.cond.i.i = or i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge246 = or i1 %tobool.not.i, %or.cond.i.i
  %not.or.cond.i.i = xor i1 %or.cond.i.i, true
  %.mux247 = zext i1 %not.or.cond.i.i to i32
  br i1 %brmerge246, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body6_crit_edge

if.then.i.i.do.body6_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  %.mux = zext i1 %not.or.cond16.i.i to i32
  br i1 %brmerge, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body6_crit_edge

if.else.i.i.do.body6_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body6

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body6:                                         ; preds = %if.else.i.i.do.body6_crit_edge, %if.then.i.i.do.body6_crit_edge
  %lock = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 15
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %xfers_list = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 16
  %10 = ptrtoint ptr %xfers_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %xfers_list, align 4
  %active_xfer = getelementptr i8, ptr %11, i32 -16
  %12 = ptrtoint ptr %active_xfer to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %active_xfer, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool13.not = icmp eq i8 %13, 0
  %xfer_size = getelementptr i8, ptr %11, i32 -12
  %14 = ptrtoint ptr %xfer_size to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %xfer_size, align 8
  br i1 %tobool13.not, label %dma_set_residue.exit, label %if.end15

dma_set_residue.exit:                             ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #9
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %16 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %residue1.i, align 4
  br label %spin_unlock

if.end15:                                         ; preds = %do.body6
  %mbr_cfg = getelementptr i8, ptr %11, i32 -148
  %17 = ptrtoint ptr %mbr_cfg to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %mbr_cfg, align 8
  %and = and i32 %18, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and)
  %cmp17 = icmp eq i32 %and, 1
  br i1 %cmp17, label %if.then19, label %if.end15.if.end37_crit_edge

if.end15.if.end37_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then19:                                        ; preds = %if.end15
  %mask20 = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 2
  %19 = ptrtoint ptr %mask20 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask20, align 4
  %21 = tail call i32 @llvm.bswap.i32(i32 %20)
  %regs = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 1
  %22 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %regs, align 4
  %layout = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 6
  %24 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %layout, align 4
  %gswf = getelementptr inbounds %struct.at_xdmac_layout, ptr %25, i32 0, i32 6
  %26 = ptrtoint ptr %gswf to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %gswf, align 1
  %conv21 = zext i8 %27 to i32
  %add.ptr22 = getelementptr i8, ptr %23, i32 %conv21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %21) #7, !srcloc !370
  %ch_regs = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 1
  %28 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ch_regs, align 4
  %add.ptr23249 = getelementptr i8, ptr %29, i32 12
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23249) #7, !srcloc !367
  %31 = and i32 %30, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %tobool27.not250 = icmp eq i32 %31, 0
  br i1 %tobool27.not250, label %if.then19.do.end32_crit_edge, label %if.then19.if.end37_crit_edge

if.then19.if.end37_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

if.then19.do.end32_crit_edge:                     ; preds = %if.then19
  br label %do.end32

do.end32:                                         ; preds = %do.end32.do.end32_crit_edge, %if.then19.do.end32_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !377
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !378
  %32 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %ch_regs, align 4
  %add.ptr23 = getelementptr i8, ptr %33, i32 12
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr23) #7, !srcloc !367
  %35 = and i32 %34, 134217728
  %tobool27.not = icmp eq i32 %35, 0
  br i1 %tobool27.not, label %do.end32.do.end32_crit_edge, label %do.end32.if.end37_crit_edge

do.end32.if.end37_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end37

do.end32.do.end32_crit_edge:                      ; preds = %do.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

if.end37:                                         ; preds = %do.end32.if.end37_crit_edge, %if.then19.if.end37_crit_edge, %if.end15.if.end37_crit_edge
  %ch_regs41 = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 1
  %36 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %ch_regs41, align 4
  %add.ptr42 = getelementptr i8, ptr %37, i32 24
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42) #7, !srcloc !367
  %39 = and i32 %38, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !379
  %40 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ch_regs41, align 4
  %add.ptr48 = getelementptr i8, ptr %41, i32 32
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48) #7, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !380
  %43 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ch_regs41, align 4
  %add.ptr53 = getelementptr i8, ptr %44, i32 40
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53) #7, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !381
  %46 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ch_regs41, align 4
  %add.ptr62 = getelementptr i8, ptr %47, i32 24
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62) #7, !srcloc !367
  %49 = and i32 %48, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !382
  call void @__sanitizer_cov_trace_cmp4(i32 %39, i32 %49)
  %cmp66 = icmp ne i32 %39, %49
  %50 = and i32 %45, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %50)
  %tobool57.not = icmp eq i32 %50, 0
  %or.cond = select i1 %cmp66, i1 true, i1 %tobool57.not
  br i1 %or.cond, label %for.cond, label %if.end37.if.end78_crit_edge

if.end37.if.end78_crit_edge:                      ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

for.cond:                                         ; preds = %if.end37
  %51 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %ch_regs41, align 4
  %add.ptr42.1 = getelementptr i8, ptr %52, i32 24
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.1) #7, !srcloc !367
  %54 = and i32 %53, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !379
  %55 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %ch_regs41, align 4
  %add.ptr48.1 = getelementptr i8, ptr %56, i32 32
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.1) #7, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !380
  %58 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %ch_regs41, align 4
  %add.ptr53.1 = getelementptr i8, ptr %59, i32 40
  %60 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.1) #7, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !381
  %61 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ch_regs41, align 4
  %add.ptr62.1 = getelementptr i8, ptr %62, i32 24
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.1) #7, !srcloc !367
  %64 = and i32 %63, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !382
  call void @__sanitizer_cov_trace_cmp4(i32 %54, i32 %64)
  %cmp66.1 = icmp ne i32 %54, %64
  %65 = and i32 %60, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool57.not.1 = icmp eq i32 %65, 0
  %or.cond.1 = select i1 %cmp66.1, i1 true, i1 %tobool57.not.1
  br i1 %or.cond.1, label %for.cond.1, label %for.cond.if.end78_crit_edge

for.cond.if.end78_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

for.cond.1:                                       ; preds = %for.cond
  %66 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ch_regs41, align 4
  %add.ptr42.2 = getelementptr i8, ptr %67, i32 24
  %68 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.2) #7, !srcloc !367
  %69 = and i32 %68, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !379
  %70 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %ch_regs41, align 4
  %add.ptr48.2 = getelementptr i8, ptr %71, i32 32
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.2) #7, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !380
  %73 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ch_regs41, align 4
  %add.ptr53.2 = getelementptr i8, ptr %74, i32 40
  %75 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.2) #7, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !381
  %76 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %ch_regs41, align 4
  %add.ptr62.2 = getelementptr i8, ptr %77, i32 24
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.2) #7, !srcloc !367
  %79 = and i32 %78, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !382
  call void @__sanitizer_cov_trace_cmp4(i32 %69, i32 %79)
  %cmp66.2 = icmp ne i32 %69, %79
  %80 = and i32 %75, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %80)
  %tobool57.not.2 = icmp eq i32 %80, 0
  %or.cond.2 = select i1 %cmp66.2, i1 true, i1 %tobool57.not.2
  br i1 %or.cond.2, label %for.cond.2, label %for.cond.1.if.end78_crit_edge

for.cond.1.if.end78_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

for.cond.2:                                       ; preds = %for.cond.1
  %81 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ch_regs41, align 4
  %add.ptr42.3 = getelementptr i8, ptr %82, i32 24
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.3) #7, !srcloc !367
  %84 = and i32 %83, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !379
  %85 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %ch_regs41, align 4
  %add.ptr48.3 = getelementptr i8, ptr %86, i32 32
  %87 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.3) #7, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !380
  %88 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %ch_regs41, align 4
  %add.ptr53.3 = getelementptr i8, ptr %89, i32 40
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.3) #7, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !381
  %91 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ch_regs41, align 4
  %add.ptr62.3 = getelementptr i8, ptr %92, i32 24
  %93 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.3) #7, !srcloc !367
  %94 = and i32 %93, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !382
  call void @__sanitizer_cov_trace_cmp4(i32 %84, i32 %94)
  %cmp66.3 = icmp ne i32 %84, %94
  %95 = and i32 %90, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %95)
  %tobool57.not.3 = icmp eq i32 %95, 0
  %or.cond.3 = select i1 %cmp66.3, i1 true, i1 %tobool57.not.3
  br i1 %or.cond.3, label %for.cond.3, label %for.cond.2.if.end78_crit_edge

for.cond.2.if.end78_crit_edge:                    ; preds = %for.cond.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

for.cond.3:                                       ; preds = %for.cond.2
  %96 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %ch_regs41, align 4
  %add.ptr42.4 = getelementptr i8, ptr %97, i32 24
  %98 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.4) #7, !srcloc !367
  %99 = and i32 %98, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !379
  %100 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %ch_regs41, align 4
  %add.ptr48.4 = getelementptr i8, ptr %101, i32 32
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr48.4) #7, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !380
  %103 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %ch_regs41, align 4
  %add.ptr53.4 = getelementptr i8, ptr %104, i32 40
  %105 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr53.4) #7, !srcloc !367
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !381
  %106 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %ch_regs41, align 4
  %add.ptr62.4 = getelementptr i8, ptr %107, i32 24
  %108 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr62.4) #7, !srcloc !367
  %109 = and i32 %108, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !382
  call void @__sanitizer_cov_trace_cmp4(i32 %99, i32 %109)
  %cmp66.4 = icmp ne i32 %99, %109
  %110 = and i32 %105, 8192
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %110)
  %tobool57.not.4 = icmp eq i32 %110, 0
  %or.cond.4 = select i1 %cmp66.4, i1 true, i1 %tobool57.not.4
  br i1 %or.cond.4, label %for.cond.3.spin_unlock_crit_edge, label %for.cond.3.if.end78_crit_edge

for.cond.3.if.end78_crit_edge:                    ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end78

for.cond.3.spin_unlock_crit_edge:                 ; preds = %for.cond.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %spin_unlock

if.end78:                                         ; preds = %for.cond.3.if.end78_crit_edge, %for.cond.2.if.end78_crit_edge, %for.cond.1.if.end78_crit_edge, %for.cond.if.end78_crit_edge, %if.end37.if.end78_crit_edge
  %.lcssa269 = phi i32 [ %42, %if.end37.if.end78_crit_edge ], [ %57, %for.cond.if.end78_crit_edge ], [ %72, %for.cond.1.if.end78_crit_edge ], [ %87, %for.cond.2.if.end78_crit_edge ], [ %102, %for.cond.3.if.end78_crit_edge ]
  %.lcssa = phi i32 [ %39, %if.end37.if.end78_crit_edge ], [ %54, %for.cond.if.end78_crit_edge ], [ %69, %for.cond.1.if.end78_crit_edge ], [ %84, %for.cond.2.if.end78_crit_edge ], [ %99, %for.cond.3.if.end78_crit_edge ]
  %111 = tail call i32 @llvm.bswap.i32(i32 %.lcssa269)
  %112 = tail call i32 @llvm.bswap.i32(i32 %.lcssa)
  %113 = ptrtoint ptr %mbr_cfg to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %mbr_cfg, align 8
  %and81 = and i32 %114, 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %and81)
  %cmp82 = icmp eq i32 %and81, 1
  br i1 %cmp82, label %if.then84, label %if.end78.if.end112_crit_edge

if.end78.if.end112_crit_edge:                     ; preds = %if.end78
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then84:                                        ; preds = %if.end78
  %mask85 = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 2
  %115 = ptrtoint ptr %mask85 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %mask85, align 4
  %117 = tail call i32 @llvm.bswap.i32(i32 %116)
  %regs86 = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 1
  %118 = ptrtoint ptr %regs86 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %regs86, align 4
  %layout87 = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 6
  %120 = ptrtoint ptr %layout87 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %layout87, align 4
  %gswf88 = getelementptr inbounds %struct.at_xdmac_layout, ptr %121, i32 0, i32 6
  %122 = ptrtoint ptr %gswf88 to i32
  call void @__asan_load1_noabort(i32 %122)
  %123 = load i8, ptr %gswf88, align 1
  %conv89 = zext i8 %123 to i32
  %add.ptr90 = getelementptr i8, ptr %119, i32 %conv89
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr90, i32 %117) #7, !srcloc !370
  %124 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %ch_regs41, align 4
  %add.ptr94253 = getelementptr i8, ptr %125, i32 12
  %126 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94253) #7, !srcloc !367
  %127 = and i32 %126, 134217728
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %127)
  %tobool98.not254 = icmp eq i32 %127, 0
  br i1 %tobool98.not254, label %if.then84.do.end106_crit_edge, label %if.then84.if.end112_crit_edge

if.then84.if.end112_crit_edge:                    ; preds = %if.then84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

if.then84.do.end106_crit_edge:                    ; preds = %if.then84
  br label %do.end106

do.end106:                                        ; preds = %do.end106.do.end106_crit_edge, %if.then84.do.end106_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !383
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !384
  %128 = ptrtoint ptr %ch_regs41 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %ch_regs41, align 4
  %add.ptr94 = getelementptr i8, ptr %129, i32 12
  %130 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr94) #7, !srcloc !367
  %131 = and i32 %130, 134217728
  %tobool98.not = icmp eq i32 %131, 0
  br i1 %tobool98.not, label %do.end106.do.end106_crit_edge, label %do.end106.if.end112_crit_edge

do.end106.if.end112_crit_edge:                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end112

do.end106.do.end106_crit_edge:                    ; preds = %do.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end106

if.end112:                                        ; preds = %do.end106.if.end112_crit_edge, %if.then84.if.end112_crit_edge, %if.end78.if.end112_crit_edge
  %descs_list113 = getelementptr i8, ptr %11, i32 -8
  %132 = ptrtoint ptr %descs_list113 to i32
  call void @__asan_load4_noabort(i32 %132)
  %.pn.in255 = load ptr, ptr %descs_list113, align 4
  %desc.0256 = getelementptr i8, ptr %.pn.in255, i32 -140
  %cmp124.not257 = icmp eq ptr %.pn.in255, %descs_list113
  br i1 %cmp124.not257, label %if.end112.dma_set_residue.exit239_crit_edge, label %if.end112.for.body128_crit_edge

if.end112.for.body128_crit_edge:                  ; preds = %if.end112
  br label %for.body128

if.end112.dma_set_residue.exit239_crit_edge:      ; preds = %if.end112
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_set_residue.exit239

for.cond122:                                      ; preds = %for.body128
  %133 = ptrtoint ptr %.pn.in259 to i32
  call void @__asan_load4_noabort(i32 %133)
  %.pn.in = load ptr, ptr %.pn.in259, align 4
  %desc.0 = getelementptr i8, ptr %.pn.in, i32 -140
  %cmp124.not = icmp eq ptr %.pn.in, %descs_list113
  br i1 %cmp124.not, label %for.cond122.dma_set_residue.exit239.loopexit_crit_edge, label %for.cond122.for.body128_crit_edge

for.cond122.for.body128_crit_edge:                ; preds = %for.cond122
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body128

for.cond122.dma_set_residue.exit239.loopexit_crit_edge: ; preds = %for.cond122
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_set_residue.exit239.loopexit

for.body128:                                      ; preds = %for.cond122.for.body128_crit_edge, %if.end112.for.body128_crit_edge
  %desc.0260 = phi ptr [ %desc.0, %for.cond122.for.body128_crit_edge ], [ %desc.0256, %if.end112.for.body128_crit_edge ]
  %.pn.in259 = phi ptr [ %.pn.in, %for.cond122.for.body128_crit_edge ], [ %.pn.in255, %if.end112.for.body128_crit_edge ]
  %residue.0258 = phi i32 [ %sub, %for.cond122.for.body128_crit_edge ], [ %15, %if.end112.for.body128_crit_edge ]
  %mbr_cfg130 = getelementptr i8, ptr %.pn.in259, i32 -124
  %134 = ptrtoint ptr %mbr_cfg130 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load i32, ptr %mbr_cfg130, align 8
  %and.i = lshr i32 %135, 11
  %136 = trunc i32 %and.i to i8
  %conv.i = and i8 %136, 3
  %mbr_ubc = getelementptr i8, ptr %.pn.in259, i32 -136
  %137 = ptrtoint ptr %mbr_ubc to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load i32, ptr %mbr_ubc, align 4
  %and133 = and i32 %138, 16777215
  %conv134 = zext i8 %conv.i to i32
  %shl = shl nuw nsw i32 %and133, %conv134
  %sub = sub i32 %residue.0258, %shl
  %139 = ptrtoint ptr %desc.0260 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %desc.0260, align 8
  %and136 = and i32 %140, -4
  call void @__sanitizer_cov_trace_cmp4(i32 %and136, i32 %112)
  %cmp137 = icmp eq i32 %and136, %112
  br i1 %cmp137, label %for.body128.dma_set_residue.exit239.loopexit_crit_edge, label %for.cond122

for.body128.dma_set_residue.exit239.loopexit_crit_edge: ; preds = %for.body128
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_set_residue.exit239.loopexit

dma_set_residue.exit239.loopexit:                 ; preds = %for.body128.dma_set_residue.exit239.loopexit_crit_edge, %for.cond122.dma_set_residue.exit239.loopexit_crit_edge
  %.pn.in.lcssa.ph = phi ptr [ %descs_list113, %for.cond122.dma_set_residue.exit239.loopexit_crit_edge ], [ %.pn.in259, %for.body128.dma_set_residue.exit239.loopexit_crit_edge ]
  %desc.0.lcssa.ph = phi ptr [ %desc.0, %for.cond122.dma_set_residue.exit239.loopexit_crit_edge ], [ %desc.0260, %for.body128.dma_set_residue.exit239.loopexit_crit_edge ]
  %phi.cast = zext i8 %conv.i to i32
  br label %dma_set_residue.exit239

dma_set_residue.exit239:                          ; preds = %dma_set_residue.exit239.loopexit, %if.end112.dma_set_residue.exit239_crit_edge
  %.pn.in.lcssa = phi ptr [ %.pn.in.lcssa.ph, %dma_set_residue.exit239.loopexit ], [ %descs_list113, %if.end112.dma_set_residue.exit239_crit_edge ]
  %desc.0.lcssa = phi ptr [ %desc.0.lcssa.ph, %dma_set_residue.exit239.loopexit ], [ %desc.0256, %if.end112.dma_set_residue.exit239_crit_edge ]
  %dwidth.1 = phi i32 [ %phi.cast, %dma_set_residue.exit239.loopexit ], [ 0, %if.end112.dma_set_residue.exit239_crit_edge ]
  %residue.1 = phi i32 [ %sub, %dma_set_residue.exit239.loopexit ], [ %15, %if.end112.dma_set_residue.exit239_crit_edge ]
  %shl149 = shl i32 %111, %dwidth.1
  %add = add i32 %shl149, %residue.1
  %residue1.i236 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %141 = ptrtoint ptr %residue1.i236 to i32
  call void @__asan_store4_noabort(i32 %141)
  store i32 %add, ptr %residue1.i236, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_tx_status.__UNIQUE_ID_ddebug276, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_tx_status, %spin_unlock)) #7
          to label %if.then163 [label %spin_unlock], !srcloc !373

if.then163:                                       ; preds = %dma_set_residue.exit239
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %142 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %143, i32 0, i32 1
  %phys = getelementptr i8, ptr %.pn.in.lcssa, i32 -92
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_tx_status.__UNIQUE_ID_ddebug276, ptr noundef %device.i, ptr noundef nonnull @.str.52, ptr noundef nonnull @.str.51, ptr noundef %desc.0.lcssa, ptr noundef %phys, i32 noundef 1, i32 noundef %cookie, i32 noundef %add) #7
  br label %spin_unlock

spin_unlock:                                      ; preds = %if.then163, %dma_set_residue.exit239, %for.cond.3.spin_unlock_crit_edge, %dma_set_residue.exit
  %ret.0 = phi i32 [ 1, %if.then163 ], [ 1, %dma_set_residue.exit ], [ 1, %dma_set_residue.exit239 ], [ 3, %for.cond.3.spin_unlock_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call9) #7
  br label %cleanup

cleanup:                                          ; preds = %spin_unlock, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %spin_unlock ], [ %.mux247, %if.then.i.i.cleanup_crit_edge ], [ %.mux, %if.else.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at_xdmac_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_issue_pending.__UNIQUE_ID_ddebug285, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_issue_pending, %do.body8)) #7
          to label %if.then [label %do.body8], !srcloc !373

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_issue_pending.__UNIQUE_ID_ddebug285, ptr noundef %device.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.53) #7
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 15
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %ch_regs.i.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 1
  %2 = ptrtoint ptr %ch_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ch_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !367
  %5 = tail call i32 @llvm.bswap.i32(i32 %4) #7
  %mask.i.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 2
  %6 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %mask.i.i, align 4
  %and.i.i = and i32 %5, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %do.body8.at_xdmac_advance_work.exit_crit_edge

do.body8.at_xdmac_advance_work.exit_crit_edge:    ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_advance_work.exit

lor.lhs.false.i:                                  ; preds = %do.body8
  %xfers_list.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 16
  %8 = ptrtoint ptr %xfers_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %xfers_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %9, %xfers_list.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i.at_xdmac_advance_work.exit_crit_edge, label %if.end.i

lor.lhs.false.i.at_xdmac_advance_work.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_advance_work.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr i8, ptr %9, i32 -164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_advance_work.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_issue_pending, %do.end.i)) #7
          to label %if.then9.i [label %do.end.i], !srcloc !373

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_advance_work.__UNIQUE_ID_ddebug277, ptr noundef %device.i.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, ptr noundef %add.ptr.i) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then9.i, %if.end.i
  %active_xfer.i = getelementptr i8, ptr %9, i32 -16
  %12 = ptrtoint ptr %active_xfer.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %active_xfer.i, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool12.not.i = icmp eq i8 %13, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %do.end.i.at_xdmac_advance_work.exit_crit_edge

do.end.i.at_xdmac_advance_work.exit_crit_edge:    ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_advance_work.exit

if.then13.i:                                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @at_xdmac_start_xfer(ptr noundef %chan, ptr noundef %add.ptr.i) #7
  br label %at_xdmac_advance_work.exit

at_xdmac_advance_work.exit:                       ; preds = %if.then13.i, %do.end.i.at_xdmac_advance_work.exit_crit_edge, %lor.lhs.false.i.at_xdmac_advance_work.exit_crit_edge, %do.body8.at_xdmac_advance_work.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call11) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @at_xdmac_prep_dma_cyclic(ptr noundef %chan, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #2 align 64 {
entry:
  %phys.i.i = alloca i32, align 4
  %buf_addr.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %buf_addr.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %buf_addr, ptr %buf_addr.addr, align 4
  %div = udiv i32 %buf_len, %period_len
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_cyclic, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !373

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %2, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  %cond = select i1 %cmp, ptr @.str.61, ptr @.str.62
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug249, ptr noundef %device.i, ptr noundef nonnull @.str.60, ptr noundef nonnull @.str.59, ptr noundef nonnull %buf_addr.addr, i32 noundef %buf_len, i32 noundef %period_len, ptr noundef nonnull %cond, i32 noundef %flags) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %3 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %4 = icmp ult i32 %3, 2
  br i1 %4, label %if.end12, label %do.end10

do.end10:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i218 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %5 = ptrtoint ptr %dev.i218 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i218, align 4
  %device.i219 = getelementptr inbounds %struct.dma_chan_dev, ptr %6, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i219, ptr noundef nonnull @.str.63) #10
  br label %cleanup141

if.end12:                                         ; preds = %do.end
  %status = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 12
  %call13 = call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call13)
  %tobool14.not = icmp eq i32 %call13, 0
  br i1 %tobool14.not, label %if.end20, label %do.end18

do.end18:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i220 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %7 = ptrtoint ptr %dev.i220 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %dev.i220, align 4
  %device.i221 = getelementptr inbounds %struct.dma_chan_dev, ptr %8, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i221, ptr noundef nonnull @.str.65) #10
  br label %cleanup141

if.end20:                                         ; preds = %if.end12
  %call21 = call fastcc i32 @at_xdmac_compute_chan_conf(ptr noundef %chan, i32 noundef %direction)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call21)
  %tobool22.not = icmp eq i32 %call21, 0
  br i1 %tobool22.not, label %for.cond.preheader, label %if.end20.cleanup141_crit_edge

if.end20.cleanup141_crit_edge:                    ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup141

for.cond.preheader:                               ; preds = %if.end20
  call void @__sanitizer_cov_trace_cmp4(i32 %period_len, i32 %buf_len)
  %cmp25256.not = icmp ugt i32 %period_len, %buf_len
  br i1 %cmp25256.not, label %for.cond.preheader.at_xdmac_queue_desc.exit244_crit_edge, label %for.body.lr.ph

for.cond.preheader.at_xdmac_queue_desc.exit244_crit_edge: ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_queue_desc.exit244

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %lock = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 15
  %free_descs_list.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17
  %dev.i226 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp68 = icmp eq i32 %direction, 2
  %dst_addr = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 14, i32 2
  %src_addr = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 14, i32 1
  %cfg = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 3
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %first.0260 = phi ptr [ null, %for.body.lr.ph ], [ %spec.select, %for.inc.for.body_crit_edge ]
  %prev.0259 = phi ptr [ null, %for.body.lr.ph ], [ %desc.0.i, %for.inc.for.body_crit_edge ]
  %i.0257 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %call31 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %9 = ptrtoint ptr %free_descs_list.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %free_descs_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %10, %free_descs_list.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %for.body
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i.i) #7
  %13 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -1, ptr %phys.i.i, align 4, !annotation !374
  %at_xdmac_desc_pool.i.i = getelementptr inbounds %struct.at_xdmac, ptr %12, i32 0, i32 5
  %14 = ptrtoint ptr %at_xdmac_desc_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %at_xdmac_desc_pool.i.i, align 4
  %call.i.i.i = call ptr @dma_pool_alloc(ptr noundef %15, i32 noundef 2304, ptr noundef nonnull %phys.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.at_xdmac_alloc_desc.exit.i_crit_edge, label %if.then.i.i

if.then.i.at_xdmac_alloc_desc.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_alloc_desc.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %descs_list.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 6
  %16 = ptrtoint ptr %descs_list.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %descs_list.i.i, ptr %descs_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %descs_list.i.i, ptr %prev.i.i.i, align 4
  %tx_dma_desc.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %tx_dma_desc.i.i, ptr noundef %chan) #7
  %tx_submit.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2, i32 4
  %18 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @at_xdmac_tx_submit, ptr %tx_submit.i.i, align 8
  %19 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %phys.i.i, align 4
  %phys4.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2, i32 2
  %21 = ptrtoint ptr %phys4.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %phys4.i.i, align 8
  br label %at_xdmac_alloc_desc.exit.i

at_xdmac_alloc_desc.exit.i:                       ; preds = %if.then.i.i, %if.then.i.at_xdmac_alloc_desc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i.i) #7
  br label %at_xdmac_get_desc.exit

if.else.i:                                        ; preds = %for.body
  %add.ptr.i = getelementptr i8, ptr %10, i32 -140
  %call.i.i7.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #7
  br i1 %call.i.i7.i, label %if.end.i.i.i, label %if.else.i.list_del.exit.i_crit_edge

if.else.i.list_del.exit.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i8.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %22 = ptrtoint ptr %prev.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i8.i, align 4
  %24 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %10, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev1.i.i.i.i, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %25, ptr %23, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.else.i.list_del.exit.i_crit_edge
  %28 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 256 to ptr), ptr %10, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %29 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %30 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 36)
  %descs_list.i9.i = getelementptr i8, ptr %10, i32 16
  %31 = ptrtoint ptr %descs_list.i9.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %descs_list.i9.i, ptr %descs_list.i9.i, align 4
  %prev.i.i10.i = getelementptr i8, ptr %10, i32 20
  %32 = ptrtoint ptr %prev.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %descs_list.i9.i, ptr %prev.i.i10.i, align 4
  %direction.i.i = getelementptr i8, ptr %10, i32 -104
  %33 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 4, ptr %direction.i.i, align 4
  %xfer_size.i.i = getelementptr i8, ptr %10, i32 12
  %34 = ptrtoint ptr %xfer_size.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %xfer_size.i.i, align 8
  %active_xfer.i.i = getelementptr i8, ptr %10, i32 8
  %35 = ptrtoint ptr %active_xfer.i.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 0, ptr %active_xfer.i.i, align 4
  br label %at_xdmac_get_desc.exit

at_xdmac_get_desc.exit:                           ; preds = %list_del.exit.i, %at_xdmac_alloc_desc.exit.i
  %desc.0.i = phi ptr [ %call.i.i.i, %at_xdmac_alloc_desc.exit.i ], [ %add.ptr.i, %list_del.exit.i ]
  %tobool37.not = icmp eq ptr %desc.0.i, null
  br i1 %tobool37.not, label %do.end41, label %if.end47

do.end41:                                         ; preds = %at_xdmac_get_desc.exit
  %36 = ptrtoint ptr %dev.i226 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i226, align 4
  %device.i223 = getelementptr inbounds %struct.dma_chan_dev, ptr %37, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i223, ptr noundef nonnull @.str.68) #10
  %tobool43.not = icmp eq ptr %first.0260, null
  br i1 %tobool43.not, label %do.end41.cleanup_crit_edge, label %if.then44

do.end41.cleanup_crit_edge:                       ; preds = %do.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then44:                                        ; preds = %do.end41
  %descs_list = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0260, i32 0, i32 6
  %38 = ptrtoint ptr %descs_list to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load volatile ptr, ptr %descs_list, align 4
  %cmp.i.not.i224 = icmp eq ptr %39, %descs_list
  br i1 %cmp.i.not.i224, label %if.then44.cleanup_crit_edge, label %if.then.i225

if.then44.cleanup_crit_edge:                      ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i225:                                     ; preds = %if.then44
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17, i32 1
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0260, i32 0, i32 6, i32 1
  %42 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %44 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev3.i.i, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %39, ptr %41, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %free_descs_list.i, ptr %43, align 4
  store ptr %43, ptr %prev.i, align 4
  %47 = ptrtoint ptr %descs_list to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %descs_list, ptr %descs_list, align 4
  store ptr %descs_list, ptr %prev2.i.i, align 4
  br label %cleanup

if.end47:                                         ; preds = %at_xdmac_get_desc.exit
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_cyclic, %do.end67)) #7
          to label %if.then63 [label %do.end67], !srcloc !373

if.then63:                                        ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %dev.i226 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i226, align 4
  %device.i227 = getelementptr inbounds %struct.dma_chan_dev, ptr %49, i32 0, i32 1
  %phys = getelementptr inbounds %struct.at_xdmac_desc, ptr %desc.0.i, i32 0, i32 2, i32 2
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug250, ptr noundef %device.i227, ptr noundef nonnull @.str.70, ptr noundef nonnull @.str.59, ptr noundef nonnull %desc.0.i, ptr noundef %phys) #7
  br label %do.end67

do.end67:                                         ; preds = %if.then63, %if.end47
  br i1 %cmp68, label %if.then70, label %if.else

if.then70:                                        ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %src_addr, align 4
  %mbr_sa = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 2
  %52 = ptrtoint ptr %mbr_sa to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %mbr_sa, align 8
  %53 = ptrtoint ptr %buf_addr.addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %buf_addr.addr, align 4
  %mul = mul i32 %i.0257, %period_len
  %add = add i32 %54, %mul
  br label %if.end79

if.else:                                          ; preds = %do.end67
  call void @__sanitizer_cov_trace_pc() #9
  %55 = ptrtoint ptr %buf_addr.addr to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %buf_addr.addr, align 4
  %mul72 = mul i32 %i.0257, %period_len
  %add73 = add i32 %56, %mul72
  %mbr_sa75 = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 2
  %57 = ptrtoint ptr %mbr_sa75 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %add73, ptr %mbr_sa75, align 8
  %58 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dst_addr, align 4
  br label %if.end79

if.end79:                                         ; preds = %if.else, %if.then70
  %.sink = phi i32 [ %add, %if.then70 ], [ %59, %if.else ]
  %60 = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 3
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %.sink, ptr %60, align 4
  %62 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %cfg, align 4
  %mbr_cfg = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 4
  %64 = ptrtoint ptr %mbr_cfg to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %63, ptr %mbr_cfg, align 8
  %and.i = lshr i32 %63, 11
  %conv.i = and i32 %and.i, 3
  %shr = lshr i32 %period_len, %conv.i
  %or = or i32 %shr, 234881024
  %mbr_ubc = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 1
  %65 = ptrtoint ptr %mbr_ubc to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or, ptr %mbr_ubc, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_cyclic, %do.end110)) #7
          to label %if.then100 [label %do.end110], !srcloc !373

if.then100:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %66 = ptrtoint ptr %dev.i226 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i226, align 4
  %device.i229 = getelementptr inbounds %struct.dma_chan_dev, ptr %67, i32 0, i32 1
  %mbr_sa103 = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 2
  %68 = ptrtoint ptr %mbr_ubc to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %mbr_ubc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug251, ptr noundef %device.i229, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.59, ptr noundef %mbr_sa103, ptr noundef %60, i32 noundef %69) #7
  br label %do.end110

do.end110:                                        ; preds = %if.then100, %if.end79
  %tobool111.not = icmp eq ptr %prev.0259, null
  br i1 %tobool111.not, label %do.end110.if.end113_crit_edge, label %if.end.i

do.end110.if.end113_crit_edge:                    ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end113

if.end.i:                                         ; preds = %do.end110
  call void @__sanitizer_cov_trace_pc() #9
  %phys.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %desc.0.i, i32 0, i32 2, i32 2
  %70 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %phys.i, align 8
  %72 = ptrtoint ptr %prev.0259 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %prev.0259, align 8
  %mbr_ubc.i = getelementptr inbounds %struct.at_xdmac_lld, ptr %prev.0259, i32 0, i32 1
  %73 = ptrtoint ptr %mbr_ubc.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mbr_ubc.i, align 4
  %or.i = or i32 %74, 16777216
  store i32 %or.i, ptr %mbr_ubc.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_queue_desc.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_cyclic, %if.end113)) #7
          to label %if.then7.i [label %if.end113], !srcloc !373

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %75 = ptrtoint ptr %dev.i226 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i226, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %76, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_queue_desc.__UNIQUE_ID_ddebug241, ptr noundef %device.i.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84, ptr noundef nonnull %prev.0259, ptr noundef nonnull %prev.0259) #7
  br label %if.end113

if.end113:                                        ; preds = %if.then7.i, %if.end.i, %do.end110.if.end113_crit_edge
  %tobool114.not = icmp eq ptr %first.0260, null
  %spec.select = select i1 %tobool114.not, ptr %desc.0.i, ptr %first.0260
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_cyclic, %do.end135)) #7
          to label %if.then131 [label %do.end135], !srcloc !373

if.then131:                                       ; preds = %if.end113
  call void @__sanitizer_cov_trace_pc() #9
  %77 = ptrtoint ptr %dev.i226 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev.i226, align 4
  %device.i231 = getelementptr inbounds %struct.dma_chan_dev, ptr %78, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug252, ptr noundef %device.i231, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.59, ptr noundef nonnull %desc.0.i, ptr noundef nonnull %spec.select) #7
  br label %do.end135

do.end135:                                        ; preds = %if.then131, %if.end113
  %desc_node = getelementptr inbounds %struct.at_xdmac_desc, ptr %desc.0.i, i32 0, i32 3
  %descs_list136 = getelementptr inbounds %struct.at_xdmac_desc, ptr %spec.select, i32 0, i32 6
  %prev.i232 = getelementptr inbounds %struct.at_xdmac_desc, ptr %spec.select, i32 0, i32 6, i32 1
  %79 = ptrtoint ptr %prev.i232 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %prev.i232, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %80, ptr noundef %descs_list136) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end135.for.inc_crit_edge

do.end135.for.inc_crit_edge:                      ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i.i:                                       ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %prev.i232 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %desc_node, ptr %prev.i232, align 4
  %82 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %descs_list136, ptr %desc_node, align 4
  %prev3.i.i233 = getelementptr inbounds %struct.at_xdmac_desc, ptr %desc.0.i, i32 0, i32 3, i32 1
  %83 = ptrtoint ptr %prev3.i.i233 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %80, ptr %prev3.i.i233, align 4
  %84 = ptrtoint ptr %80 to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %desc_node, ptr %80, align 4
  br label %for.inc

cleanup:                                          ; preds = %if.then.i225, %if.then44.cleanup_crit_edge, %do.end41.cleanup_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call31) #7
  br label %cleanup141

for.inc:                                          ; preds = %if.end.i.i, %do.end135.for.inc_crit_edge
  %inc = add nuw i32 %i.0257, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end.i240, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end.i240:                                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %phys.i237 = getelementptr inbounds %struct.at_xdmac_desc, ptr %spec.select, i32 0, i32 2, i32 2
  %85 = ptrtoint ptr %phys.i237 to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %phys.i237, align 8
  %87 = ptrtoint ptr %desc.0.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %desc.0.i, align 8
  %mbr_ubc.i238 = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 1
  %88 = ptrtoint ptr %mbr_ubc.i238 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mbr_ubc.i238, align 4
  %or.i239 = or i32 %89, 16777216
  store i32 %or.i239, ptr %mbr_ubc.i238, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_queue_desc.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_cyclic, %at_xdmac_queue_desc.exit244)) #7
          to label %if.then7.i243 [label %at_xdmac_queue_desc.exit244], !srcloc !373

if.then7.i243:                                    ; preds = %if.end.i240
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i241 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %90 = ptrtoint ptr %dev.i.i241 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i.i241, align 4
  %device.i.i242 = getelementptr inbounds %struct.dma_chan_dev, ptr %91, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_queue_desc.__UNIQUE_ID_ddebug241, ptr noundef %device.i.i242, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84, ptr noundef nonnull %desc.0.i, ptr noundef nonnull %desc.0.i) #7
  br label %at_xdmac_queue_desc.exit244

at_xdmac_queue_desc.exit244:                      ; preds = %if.then7.i243, %if.end.i240, %for.cond.preheader.at_xdmac_queue_desc.exit244_crit_edge
  %first.0.lcssa270 = phi ptr [ %spec.select, %if.end.i240 ], [ %spec.select, %if.then7.i243 ], [ null, %for.cond.preheader.at_xdmac_queue_desc.exit244_crit_edge ]
  %tx_dma_desc137 = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0.lcssa270, i32 0, i32 2
  %flags138 = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0.lcssa270, i32 0, i32 2, i32 1
  %92 = ptrtoint ptr %flags138 to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %flags, ptr %flags138, align 4
  %xfer_size = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0.lcssa270, i32 0, i32 5
  %93 = ptrtoint ptr %xfer_size to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 %buf_len, ptr %xfer_size, align 8
  %direction139 = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0.lcssa270, i32 0, i32 1
  %94 = ptrtoint ptr %direction139 to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %direction, ptr %direction139, align 4
  br label %cleanup141

cleanup141:                                       ; preds = %at_xdmac_queue_desc.exit244, %cleanup, %if.end20.cleanup141_crit_edge, %do.end18, %do.end10
  %retval.2 = phi ptr [ null, %do.end18 ], [ null, %cleanup ], [ %tx_dma_desc137, %at_xdmac_queue_desc.exit244 ], [ null, %do.end10 ], [ null, %if.end20.cleanup141_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @at_xdmac_prep_interleaved(ptr noundef %chan, ptr noundef %xt, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %xt, null
  br i1 %tobool.not, label %entry.cleanup123_crit_edge, label %lor.lhs.false

entry.cleanup123_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup123

lor.lhs.false:                                    ; preds = %entry
  %numf = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 7
  %0 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %numf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %tobool1.not = icmp eq i32 %1, 0
  br i1 %tobool1.not, label %lor.lhs.false.cleanup123_crit_edge, label %lor.lhs.false2

lor.lhs.false.cleanup123_crit_edge:               ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup123

lor.lhs.false2:                                   ; preds = %lor.lhs.false
  %dir = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp.not = icmp eq i32 %3, 0
  br i1 %cmp.not, label %if.end, label %lor.lhs.false2.cleanup123_crit_edge

lor.lhs.false2.cleanup123_crit_edge:              ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup123

if.end:                                           ; preds = %lor.lhs.false2
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp4 = icmp ugt i32 %1, 1
  br i1 %cmp4, label %land.lhs.true, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true:                                    ; preds = %if.end
  %frame_size = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 8
  %4 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp5 = icmp ugt i32 %5, 1
  br i1 %cmp5, label %land.lhs.true.cleanup123_crit_edge, label %land.lhs.true.do.body_crit_edge

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

land.lhs.true.cleanup123_crit_edge:               ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup123

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_interleaved, %do.end)) #7
          to label %if.then13 [label %do.end], !srcloc !373

if.then13:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  %dst_start = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 1
  %8 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %numf, align 4
  %frame_size16 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 8
  %10 = ptrtoint ptr %frame_size16 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %frame_size16, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug260, ptr noundef %device.i, ptr noundef nonnull @.str.87, ptr noundef nonnull @.str.86, ptr noundef nonnull %xt, ptr noundef %dst_start, i32 noundef %9, i32 noundef %11, i32 noundef %flags) #7
  br label %do.end

do.end:                                           ; preds = %if.then13, %do.body
  %12 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %xt, align 4
  %dst_start19 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 1
  %14 = ptrtoint ptr %dst_start19 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst_start19, align 4
  %16 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %numf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %17)
  %cmp21 = icmp ugt i32 %17, 1
  br i1 %cmp21, label %if.then22, label %for.cond45.preheader

for.cond45.preheader:                             ; preds = %do.end
  %frame_size46 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 8
  %18 = ptrtoint ptr %frame_size46 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %frame_size46, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp47242.not = icmp eq i32 %19, 0
  br i1 %cmp47242.not, label %for.cond45.preheader.if.end119_crit_edge, label %for.body48.lr.ph

for.cond45.preheader.if.end119_crit_edge:         ; preds = %for.cond45.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

for.body48.lr.ph:                                 ; preds = %for.cond45.preheader
  %sgl49 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 9
  %dst_inc.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 4
  %dst_sgl.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 6
  %src_inc.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 3
  %src_sgl.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 5
  %dev.i219 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  br label %for.body48

if.then22:                                        ; preds = %do.end
  %sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 9
  %call23 = tail call fastcc ptr @at_xdmac_interleaved_queue_desc(ptr noundef %chan, ptr noundef %chan, ptr noundef null, i32 noundef %13, i32 noundef %15, ptr noundef nonnull %xt, ptr noundef %sgl)
  %20 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %numf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %21)
  %cmp25253.not = icmp eq i32 %21, 1
  br i1 %cmp25253.not, label %if.then22.do.body26_crit_edge, label %for.body.lr.ph

if.then22.do.body26_crit_edge:                    ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

for.body.lr.ph:                                   ; preds = %if.then22
  %tobool.not.i = icmp eq ptr %call23, null
  %mbr_bc.i = getelementptr inbounds %struct.at_xdmac_lld, ptr %call23, i32 0, i32 5
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %at_xdmac_increment_block_count.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0254 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %at_xdmac_increment_block_count.exit.for.body_crit_edge ]
  br i1 %tobool.not.i, label %for.body.at_xdmac_increment_block_count.exit_crit_edge, label %if.end.i

for.body.at_xdmac_increment_block_count.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_increment_block_count.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %mbr_bc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mbr_bc.i, align 4
  %inc.i = add i32 %23, 1
  store i32 %inc.i, ptr %mbr_bc.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_increment_block_count.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_interleaved, %at_xdmac_increment_block_count.exit)) #7
          to label %if.then5.i [label %at_xdmac_increment_block_count.exit], !srcloc !373

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %25, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_increment_block_count.__UNIQUE_ID_ddebug242, ptr noundef %device.i.i, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, ptr noundef nonnull %call23) #7
  br label %at_xdmac_increment_block_count.exit

at_xdmac_increment_block_count.exit:              ; preds = %if.then5.i, %if.end.i, %for.body.at_xdmac_increment_block_count.exit_crit_edge
  %inc = add nuw i32 %i.0254, 1
  %26 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %numf, align 4
  %sub = add i32 %27, -1
  %cmp25 = icmp ult i32 %inc, %sub
  br i1 %cmp25, label %at_xdmac_increment_block_count.exit.for.body_crit_edge, label %at_xdmac_increment_block_count.exit.do.body26_crit_edge

at_xdmac_increment_block_count.exit.do.body26_crit_edge: ; preds = %at_xdmac_increment_block_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body26

at_xdmac_increment_block_count.exit.for.body_crit_edge: ; preds = %at_xdmac_increment_block_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

do.body26:                                        ; preds = %at_xdmac_increment_block_count.exit.do.body26_crit_edge, %if.then22.do.body26_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_interleaved, %do.end44)) #7
          to label %if.then40 [label %do.end44], !srcloc !373

if.then40:                                        ; preds = %do.body26
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i207 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %28 = ptrtoint ptr %dev.i207 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i207, align 4
  %device.i208 = getelementptr inbounds %struct.dma_chan_dev, ptr %29, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug261, ptr noundef %device.i208, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.86, ptr noundef %call23, ptr noundef %call23) #7
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.body26
  %desc_node = getelementptr inbounds %struct.at_xdmac_desc, ptr %call23, i32 0, i32 3
  %descs_list = getelementptr inbounds %struct.at_xdmac_desc, ptr %call23, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call23, i32 0, i32 6, i32 1
  %30 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %31, ptr noundef %descs_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end44.if.end119_crit_edge

do.end44.if.end119_crit_edge:                     ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

if.end.i.i:                                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #9
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %desc_node, ptr %prev.i, align 4
  %33 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %descs_list, ptr %desc_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call23, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %31, ptr %prev3.i.i, align 4
  %35 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %desc_node, ptr %31, align 4
  br label %if.end119

for.body48:                                       ; preds = %for.inc116.for.body48_crit_edge, %for.body48.lr.ph
  %prev.0250 = phi ptr [ null, %for.body48.lr.ph ], [ %call75, %for.inc116.for.body48_crit_edge ]
  %first.0249 = phi ptr [ null, %for.body48.lr.ph ], [ %spec.select, %for.inc116.for.body48_crit_edge ]
  %dst_addr.0248 = phi i32 [ %15, %for.body48.lr.ph ], [ %dst_addr.1, %for.inc116.for.body48_crit_edge ]
  %src_addr.0247 = phi i32 [ %13, %for.body48.lr.ph ], [ %spec.select197, %for.inc116.for.body48_crit_edge ]
  %i.1244 = phi i32 [ 0, %for.body48.lr.ph ], [ %inc117, %for.inc116.for.body48_crit_edge ]
  %len.0243 = phi i32 [ 0, %for.body48.lr.ph ], [ %add113, %for.inc116.for.body48_crit_edge ]
  %add.ptr = getelementptr %struct.data_chunk, ptr %sgl49, i32 %i.1244
  %36 = ptrtoint ptr %dst_inc.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %dst_inc.i, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool.not.i209 = icmp eq i8 %37, 0
  br i1 %tobool.not.i209, label %for.body48.if.end7.i.i_crit_edge, label %if.then.i.i

for.body48.if.end7.i.i_crit_edge:                 ; preds = %for.body48
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

if.then.i.i:                                      ; preds = %for.body48
  %dst_icg.i = getelementptr %struct.data_chunk, ptr %sgl49, i32 %i.1244, i32 2
  %38 = ptrtoint ptr %dst_icg.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dst_icg.i, align 4
  %icg.i = getelementptr %struct.data_chunk, ptr %sgl49, i32 %i.1244, i32 1
  %40 = ptrtoint ptr %icg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %icg.i, align 4
  %42 = ptrtoint ptr %dst_sgl.i to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %dst_sgl.i, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool1.i = icmp ne i8 %43, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool2.not.i.i = icmp ne i32 %39, 0
  %brmerge.i.i = or i1 %tobool2.not.i.i, %tobool1.i
  %dir_icg.mux.i.i = select i1 %tobool2.not.i.i, i32 %39, i32 %41
  br i1 %brmerge.i.i, label %if.then.i.i.dmaengine_get_dst_icg.exit_crit_edge, label %if.then.i.i.if.end7.i.i_crit_edge

if.then.i.i.if.end7.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

if.then.i.i.dmaengine_get_dst_icg.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_get_dst_icg.exit

if.end7.i.i:                                      ; preds = %if.then.i.i.if.end7.i.i_crit_edge, %for.body48.if.end7.i.i_crit_edge
  br label %dmaengine_get_dst_icg.exit

dmaengine_get_dst_icg.exit:                       ; preds = %if.end7.i.i, %if.then.i.i.dmaengine_get_dst_icg.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end7.i.i ], [ %dir_icg.mux.i.i, %if.then.i.i.dmaengine_get_dst_icg.exit_crit_edge ]
  %44 = ptrtoint ptr %src_inc.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %src_inc.i, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool.not.i210 = icmp eq i8 %45, 0
  br i1 %tobool.not.i210, label %dmaengine_get_dst_icg.exit.if.end7.i.i217_crit_edge, label %if.then.i.i216

dmaengine_get_dst_icg.exit.if.end7.i.i217_crit_edge: ; preds = %dmaengine_get_dst_icg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i217

if.then.i.i216:                                   ; preds = %dmaengine_get_dst_icg.exit
  %src_icg.i = getelementptr %struct.data_chunk, ptr %sgl49, i32 %i.1244, i32 3
  %46 = ptrtoint ptr %src_icg.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %src_icg.i, align 4
  %icg.i211 = getelementptr %struct.data_chunk, ptr %sgl49, i32 %i.1244, i32 1
  %48 = ptrtoint ptr %icg.i211 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %icg.i211, align 4
  %50 = ptrtoint ptr %src_sgl.i to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %src_sgl.i, align 2, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool1.i212 = icmp ne i8 %51, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %tobool2.not.i.i213 = icmp ne i32 %47, 0
  %brmerge.i.i214 = or i1 %tobool2.not.i.i213, %tobool1.i212
  %dir_icg.mux.i.i215 = select i1 %tobool2.not.i.i213, i32 %47, i32 %49
  br i1 %brmerge.i.i214, label %if.then.i.i216.dmaengine_get_src_icg.exit_crit_edge, label %if.then.i.i216.if.end7.i.i217_crit_edge

if.then.i.i216.if.end7.i.i217_crit_edge:          ; preds = %if.then.i.i216
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i217

if.then.i.i216.dmaengine_get_src_icg.exit_crit_edge: ; preds = %if.then.i.i216
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_get_src_icg.exit

if.end7.i.i217:                                   ; preds = %if.then.i.i216.if.end7.i.i217_crit_edge, %dmaengine_get_dst_icg.exit.if.end7.i.i217_crit_edge
  br label %dmaengine_get_src_icg.exit

dmaengine_get_src_icg.exit:                       ; preds = %if.end7.i.i217, %if.then.i.i216.dmaengine_get_src_icg.exit_crit_edge
  %retval.0.i.i218 = phi i32 [ 0, %if.end7.i.i217 ], [ %dir_icg.mux.i.i215, %if.then.i.i216.dmaengine_get_src_icg.exit_crit_edge ]
  %52 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %add.ptr, align 4
  %add = add i32 %53, %retval.0.i.i218
  %add54 = add i32 %53, %retval.0.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_interleaved, %do.end74)) #7
          to label %if.then69 [label %do.end74], !srcloc !373

if.then69:                                        ; preds = %dmaengine_get_src_icg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev.i219 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i219, align 4
  %device.i220 = getelementptr inbounds %struct.dma_chan_dev, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug262, ptr noundef %device.i220, ptr noundef nonnull @.str.88, ptr noundef nonnull @.str.86, i32 noundef %57, i32 noundef %retval.0.i.i218, i32 noundef %retval.0.i.i) #7
  br label %do.end74

do.end74:                                         ; preds = %if.then69, %dmaengine_get_src_icg.exit
  %call75 = tail call fastcc ptr @at_xdmac_interleaved_queue_desc(ptr noundef %chan, ptr noundef %chan, ptr noundef %prev.0250, i32 noundef %src_addr.0247, i32 noundef %dst_addr.0248, ptr noundef nonnull %xt, ptr noundef %add.ptr)
  %tobool76.not = icmp eq ptr %call75, null
  br i1 %tobool76.not, label %if.then77, label %if.end79

if.then77:                                        ; preds = %do.end74
  %descs_list78 = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0249, i32 0, i32 6
  %58 = ptrtoint ptr %descs_list78 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %descs_list78, align 4
  %cmp.i.not.i = icmp eq ptr %59, %descs_list78
  br i1 %cmp.i.not.i, label %if.then77.cleanup123_crit_edge, label %if.then.i

if.then77.cleanup123_crit_edge:                   ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup123

if.then.i:                                        ; preds = %if.then77
  call void @__sanitizer_cov_trace_pc() #9
  %free_descs_list = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17
  %prev.i221 = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17, i32 1
  %60 = ptrtoint ptr %prev.i221 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i221, align 4
  %prev2.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0249, i32 0, i32 6, i32 1
  %62 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i222 = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %64 = ptrtoint ptr %prev3.i.i222 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i222, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %59, ptr %61, align 4
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %free_descs_list, ptr %63, align 4
  store ptr %63, ptr %prev.i221, align 4
  %67 = ptrtoint ptr %descs_list78 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %descs_list78, ptr %descs_list78, align 4
  store ptr %descs_list78, ptr %prev2.i.i, align 4
  br label %cleanup123

if.end79:                                         ; preds = %do.end74
  %tobool80.not = icmp eq ptr %first.0249, null
  %spec.select = select i1 %tobool80.not, ptr %call75, ptr %first.0249
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_interleaved, %do.end101)) #7
          to label %if.then97 [label %do.end101], !srcloc !373

if.then97:                                        ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %dev.i219 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i219, align 4
  %device.i225 = getelementptr inbounds %struct.dma_chan_dev, ptr %69, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug263, ptr noundef %device.i225, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.86, ptr noundef nonnull %call75, ptr noundef nonnull %spec.select) #7
  br label %do.end101

do.end101:                                        ; preds = %if.then97, %if.end79
  %desc_node102 = getelementptr inbounds %struct.at_xdmac_desc, ptr %call75, i32 0, i32 3
  %descs_list103 = getelementptr inbounds %struct.at_xdmac_desc, ptr %spec.select, i32 0, i32 6
  %prev.i226 = getelementptr inbounds %struct.at_xdmac_desc, ptr %spec.select, i32 0, i32 6, i32 1
  %70 = ptrtoint ptr %prev.i226 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev.i226, align 4
  %call.i.i227 = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node102, ptr noundef %71, ptr noundef %descs_list103) #7
  br i1 %call.i.i227, label %if.end.i.i229, label %do.end101.for.inc116_crit_edge

do.end101.for.inc116_crit_edge:                   ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc116

if.end.i.i229:                                    ; preds = %do.end101
  call void @__sanitizer_cov_trace_pc() #9
  %72 = ptrtoint ptr %prev.i226 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %desc_node102, ptr %prev.i226, align 4
  %73 = ptrtoint ptr %desc_node102 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %descs_list103, ptr %desc_node102, align 4
  %prev3.i.i228 = getelementptr inbounds %struct.at_xdmac_desc, ptr %call75, i32 0, i32 3, i32 1
  %74 = ptrtoint ptr %prev3.i.i228 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %71, ptr %prev3.i.i228, align 4
  %75 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %desc_node102, ptr %71, align 4
  br label %for.inc116

for.inc116:                                       ; preds = %if.end.i.i229, %do.end101.for.inc116_crit_edge
  %76 = ptrtoint ptr %src_sgl.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %src_sgl.i, align 2, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool104.not = icmp eq i8 %77, 0
  %add106 = select i1 %tobool104.not, i32 0, i32 %add
  %spec.select197 = add i32 %add106, %src_addr.0247
  %78 = ptrtoint ptr %dst_sgl.i to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %dst_sgl.i, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool108.not = icmp eq i8 %79, 0
  %add110 = select i1 %tobool108.not, i32 0, i32 %add54
  %dst_addr.1 = add i32 %add110, %dst_addr.0248
  %80 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %add.ptr, align 4
  %add113 = add i32 %81, %len.0243
  %inc117 = add nuw i32 %i.1244, 1
  %82 = ptrtoint ptr %frame_size46 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %frame_size46, align 4
  %cmp47 = icmp ult i32 %inc117, %83
  br i1 %cmp47, label %for.inc116.for.body48_crit_edge, label %for.inc116.if.end119_crit_edge

for.inc116.if.end119_crit_edge:                   ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end119

for.inc116.for.body48_crit_edge:                  ; preds = %for.inc116
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body48

if.end119:                                        ; preds = %for.inc116.if.end119_crit_edge, %if.end.i.i, %do.end44.if.end119_crit_edge, %for.cond45.preheader.if.end119_crit_edge
  %len.2 = phi i32 [ 0, %do.end44.if.end119_crit_edge ], [ 0, %if.end.i.i ], [ 0, %for.cond45.preheader.if.end119_crit_edge ], [ %add113, %for.inc116.if.end119_crit_edge ]
  %first.3 = phi ptr [ %call23, %do.end44.if.end119_crit_edge ], [ %call23, %if.end.i.i ], [ null, %for.cond45.preheader.if.end119_crit_edge ], [ %spec.select, %for.inc116.if.end119_crit_edge ]
  %tx_dma_desc = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.3, i32 0, i32 2
  %84 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 -16, ptr %tx_dma_desc, align 8
  %flags121 = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.3, i32 0, i32 2, i32 1
  %85 = ptrtoint ptr %flags121 to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %flags, ptr %flags121, align 4
  %xfer_size = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.3, i32 0, i32 5
  %86 = ptrtoint ptr %xfer_size to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %len.2, ptr %xfer_size, align 8
  br label %cleanup123

cleanup123:                                       ; preds = %if.end119, %if.then.i, %if.then77.cleanup123_crit_edge, %land.lhs.true.cleanup123_crit_edge, %lor.lhs.false2.cleanup123_crit_edge, %lor.lhs.false.cleanup123_crit_edge, %entry.cleanup123_crit_edge
  %retval.2 = phi ptr [ %tx_dma_desc, %if.end119 ], [ null, %lor.lhs.false2.cleanup123_crit_edge ], [ null, %lor.lhs.false.cleanup123_crit_edge ], [ null, %entry.cleanup123_crit_edge ], [ null, %land.lhs.true.cleanup123_crit_edge ], [ null, %if.then.i ], [ null, %if.then77.cleanup123_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @at_xdmac_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %phys.i.i = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %src.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dest.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dest, ptr %dest.addr, align 4
  %1 = ptrtoint ptr %src.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %src, ptr %src.addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memcpy, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !373

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug264, ptr noundef %device.i, ptr noundef nonnull @.str.101, ptr noundef nonnull @.str.100, ptr noundef nonnull %src.addr, ptr noundef nonnull %dest.addr, i32 noundef %len, i32 noundef %flags) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool6.not = icmp eq i32 %len, 0
  br i1 %tobool6.not, label %do.end.cleanup150_crit_edge, label %if.end16, !prof !385

do.end.cleanup150_crit_edge:                      ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup150

if.end16:                                         ; preds = %do.end
  %or = or i32 %src, %dest
  %and.i = and i32 %or, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memcpy, %while.body.lr.ph)) #7
          to label %if.then5.i [label %while.body.lr.ph], !srcloc !373

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug253, ptr noundef %device.i.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93) #7
  br label %while.body.lr.ph

if.else.i:                                        ; preds = %if.end16
  %and7.i = and i32 %or, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else29.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memcpy, %while.body.lr.ph)) #7
          to label %if.then24.i [label %while.body.lr.ph], !srcloc !373

if.then24.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i89.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i89.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i89.i, align 4
  %device.i90.i = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug254, ptr noundef %device.i90.i, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93) #7
  br label %while.body.lr.ph

if.else29.i:                                      ; preds = %if.else.i
  %and30.i = and i32 %or, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.else52.i

if.then32.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memcpy, %while.body.lr.ph)) #7
          to label %if.then47.i [label %while.body.lr.ph], !srcloc !373

if.then47.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i91.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i91.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i91.i, align 4
  %device.i92.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug255, ptr noundef %device.i92.i, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.93) #7
  br label %while.body.lr.ph

if.else52.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memcpy, %while.body.lr.ph)) #7
          to label %if.then67.i [label %while.body.lr.ph], !srcloc !373

if.then67.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i93.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %10 = ptrtoint ptr %dev.i93.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i93.i, align 4
  %device.i94.i = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug256, ptr noundef %device.i94.i, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.93) #7
  br label %while.body.lr.ph

while.body.lr.ph:                                 ; preds = %if.then67.i, %if.else52.i, %if.then47.i, %if.then32.i, %if.then24.i, %if.then9.i, %if.then5.i, %if.then.i
  %width.0.i = phi i32 [ 0, %if.then67.i ], [ 1, %if.then47.i ], [ 2, %if.then24.i ], [ 3, %if.then5.i ], [ 3, %if.then.i ], [ 2, %if.then9.i ], [ 1, %if.then32.i ], [ 0, %if.else52.i ]
  %dev.i230 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %lock = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 15
  %free_descs_list.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.lr.ph
  %first.0297 = phi ptr [ null, %while.body.lr.ph ], [ %spec.select, %cleanup.while.body_crit_edge ]
  %prev.0296 = phi ptr [ null, %while.body.lr.ph ], [ %desc.0.i, %cleanup.while.body_crit_edge ]
  %remaining_size.0295 = phi i32 [ %len, %while.body.lr.ph ], [ %sub, %cleanup.while.body_crit_edge ]
  %xfer_size.0294 = phi i32 [ 0, %while.body.lr.ph ], [ %53, %cleanup.while.body_crit_edge ]
  %src_addr.0293 = phi i32 [ %src, %while.body.lr.ph ], [ %add, %cleanup.while.body_crit_edge ]
  %dst_addr.0292 = phi i32 [ %dest, %while.body.lr.ph ], [ %add59, %cleanup.while.body_crit_edge ]
  %dwidth.0291 = phi i32 [ %width.0.i, %while.body.lr.ph ], [ %width.0.i264, %cleanup.while.body_crit_edge ]
  %chan_cc.0290 = phi i32 [ 2131034118, %while.body.lr.ph ], [ %or89, %cleanup.while.body_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memcpy, %do.body39)) #7
          to label %if.then33 [label %do.body39], !srcloc !373

if.then33:                                        ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i230, align 4
  %device.i231 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug265, ptr noundef %device.i231, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.100, i32 noundef %remaining_size.0295) #7
  br label %do.body39

do.body39:                                        ; preds = %if.then33, %while.body
  %call42 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %14 = ptrtoint ptr %free_descs_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %free_descs_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %free_descs_list.i
  br i1 %cmp.i.not.i, label %if.then.i232, label %if.else.i233

if.then.i232:                                     ; preds = %do.body39
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i.i) #7
  %18 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %phys.i.i, align 4, !annotation !374
  %at_xdmac_desc_pool.i.i = getelementptr inbounds %struct.at_xdmac, ptr %17, i32 0, i32 5
  %19 = ptrtoint ptr %at_xdmac_desc_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %at_xdmac_desc_pool.i.i, align 4
  %call.i.i.i = call ptr @dma_pool_alloc(ptr noundef %20, i32 noundef 2304, ptr noundef nonnull %phys.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i232.at_xdmac_alloc_desc.exit.i_crit_edge, label %if.then.i.i

if.then.i232.at_xdmac_alloc_desc.exit.i_crit_edge: ; preds = %if.then.i232
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_alloc_desc.exit.i

if.then.i.i:                                      ; preds = %if.then.i232
  call void @__sanitizer_cov_trace_pc() #9
  %descs_list.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %descs_list.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %descs_list.i.i, ptr %descs_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %descs_list.i.i, ptr %prev.i.i.i, align 4
  %tx_dma_desc.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %tx_dma_desc.i.i, ptr noundef %chan) #7
  %tx_submit.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @at_xdmac_tx_submit, ptr %tx_submit.i.i, align 8
  %24 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phys.i.i, align 4
  %phys4.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %phys4.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %phys4.i.i, align 8
  br label %at_xdmac_alloc_desc.exit.i

at_xdmac_alloc_desc.exit.i:                       ; preds = %if.then.i.i, %if.then.i232.at_xdmac_alloc_desc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i.i) #7
  br label %at_xdmac_get_desc.exit

if.else.i233:                                     ; preds = %do.body39
  %add.ptr.i = getelementptr i8, ptr %15, i32 -140
  %call.i.i7.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #7
  br i1 %call.i.i7.i, label %if.end.i.i.i, label %if.else.i233.list_del.exit.i_crit_edge

if.else.i233.list_del.exit.i_crit_edge:           ; preds = %if.else.i233
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i233
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i8.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i8.i, align 4
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.else.i233.list_del.exit.i_crit_edge
  %33 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %35 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 36)
  %descs_list.i9.i = getelementptr i8, ptr %15, i32 16
  %36 = ptrtoint ptr %descs_list.i9.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %descs_list.i9.i, ptr %descs_list.i9.i, align 4
  %prev.i.i10.i = getelementptr i8, ptr %15, i32 20
  %37 = ptrtoint ptr %prev.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %descs_list.i9.i, ptr %prev.i.i10.i, align 4
  %direction.i.i = getelementptr i8, ptr %15, i32 -104
  %38 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %direction.i.i, align 4
  %xfer_size.i.i = getelementptr i8, ptr %15, i32 12
  %39 = ptrtoint ptr %xfer_size.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %xfer_size.i.i, align 8
  %active_xfer.i.i = getelementptr i8, ptr %15, i32 8
  %40 = ptrtoint ptr %active_xfer.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %active_xfer.i.i, align 4
  br label %at_xdmac_get_desc.exit

at_xdmac_get_desc.exit:                           ; preds = %list_del.exit.i, %at_xdmac_alloc_desc.exit.i
  %desc.0.i = phi ptr [ %call.i.i.i, %at_xdmac_alloc_desc.exit.i ], [ %add.ptr.i, %list_del.exit.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call42) #7
  %tobool49.not = icmp eq ptr %desc.0.i, null
  br i1 %tobool49.not, label %do.end53, label %if.end58

do.end53:                                         ; preds = %at_xdmac_get_desc.exit
  %41 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i230, align 4
  %device.i235 = getelementptr inbounds %struct.dma_chan_dev, ptr %42, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i235, ptr noundef nonnull @.str.68) #10
  %tobool55.not = icmp eq ptr %first.0297, null
  br i1 %tobool55.not, label %do.end53.cleanup150_crit_edge, label %if.then56

do.end53.cleanup150_crit_edge:                    ; preds = %do.end53
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup150

if.then56:                                        ; preds = %do.end53
  %descs_list = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0297, i32 0, i32 6
  %43 = ptrtoint ptr %descs_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %descs_list, align 4
  %cmp.i.not.i236 = icmp eq ptr %44, %descs_list
  br i1 %cmp.i.not.i236, label %if.then56.cleanup150_crit_edge, label %if.then.i237

if.then56.cleanup150_crit_edge:                   ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup150

if.then.i237:                                     ; preds = %if.then56
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0297, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %free_descs_list.i, ptr %48, align 4
  store ptr %48, ptr %prev.i, align 4
  %52 = ptrtoint ptr %descs_list to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %descs_list, ptr %descs_list, align 4
  store ptr %descs_list, ptr %prev2.i.i, align 4
  br label %cleanup150

if.end58:                                         ; preds = %at_xdmac_get_desc.exit
  %add = add i32 %xfer_size.0294, %src_addr.0293
  %add59 = add i32 %xfer_size.0294, %dst_addr.0292
  %shl = shl nuw nsw i32 16777215, %dwidth.0291
  %53 = call i32 @llvm.umin.i32(i32 %remaining_size.0295, i32 %shl)
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memcpy, %do.end83)) #7
          to label %if.then79 [label %do.end83], !srcloc !373

if.then79:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #9
  %54 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %dev.i230, align 4
  %device.i239 = getelementptr inbounds %struct.dma_chan_dev, ptr %55, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug266, ptr noundef %device.i239, ptr noundef nonnull @.str.103, ptr noundef nonnull @.str.100, i32 noundef %53) #7
  br label %do.end83

do.end83:                                         ; preds = %if.then79, %if.end58
  %or84 = or i32 %add, %add59
  %or85 = or i32 %or84, %53
  %and.i240 = and i32 %or85, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i240)
  %tobool.not.i241 = icmp eq i32 %and.i240, 0
  br i1 %tobool.not.i241, label %if.then.i242, label %if.else.i248

if.then.i242:                                     ; preds = %do.end83
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memcpy, %at_xdmac_align_width.exit265)) #7
          to label %if.then5.i245 [label %at_xdmac_align_width.exit265], !srcloc !373

if.then5.i245:                                    ; preds = %if.then.i242
  call void @__sanitizer_cov_trace_pc() #9
  %56 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i230, align 4
  %device.i.i244 = getelementptr inbounds %struct.dma_chan_dev, ptr %57, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug253, ptr noundef %device.i.i244, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93) #7
  br label %at_xdmac_align_width.exit265

if.else.i248:                                     ; preds = %do.end83
  %and7.i246 = and i32 %or85, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i246)
  %tobool8.not.i247 = icmp eq i32 %and7.i246, 0
  br i1 %tobool8.not.i247, label %if.then9.i249, label %if.else29.i255

if.then9.i249:                                    ; preds = %if.else.i248
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memcpy, %at_xdmac_align_width.exit265)) #7
          to label %if.then24.i252 [label %at_xdmac_align_width.exit265], !srcloc !373

if.then24.i252:                                   ; preds = %if.then9.i249
  call void @__sanitizer_cov_trace_pc() #9
  %58 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %dev.i230, align 4
  %device.i90.i251 = getelementptr inbounds %struct.dma_chan_dev, ptr %59, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug254, ptr noundef %device.i90.i251, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93) #7
  br label %at_xdmac_align_width.exit265

if.else29.i255:                                   ; preds = %if.else.i248
  %and30.i253 = and i32 %or85, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i253)
  %tobool31.not.i254 = icmp eq i32 %and30.i253, 0
  br i1 %tobool31.not.i254, label %if.then32.i256, label %if.else52.i260

if.then32.i256:                                   ; preds = %if.else29.i255
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memcpy, %at_xdmac_align_width.exit265)) #7
          to label %if.then47.i259 [label %at_xdmac_align_width.exit265], !srcloc !373

if.then47.i259:                                   ; preds = %if.then32.i256
  call void @__sanitizer_cov_trace_pc() #9
  %60 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i230, align 4
  %device.i92.i258 = getelementptr inbounds %struct.dma_chan_dev, ptr %61, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug255, ptr noundef %device.i92.i258, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.93) #7
  br label %at_xdmac_align_width.exit265

if.else52.i260:                                   ; preds = %if.else29.i255
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memcpy, %at_xdmac_align_width.exit265)) #7
          to label %if.then67.i263 [label %at_xdmac_align_width.exit265], !srcloc !373

if.then67.i263:                                   ; preds = %if.else52.i260
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i230, align 4
  %device.i94.i262 = getelementptr inbounds %struct.dma_chan_dev, ptr %63, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug256, ptr noundef %device.i94.i262, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.93) #7
  br label %at_xdmac_align_width.exit265

at_xdmac_align_width.exit265:                     ; preds = %if.then67.i263, %if.else52.i260, %if.then47.i259, %if.then32.i256, %if.then24.i252, %if.then9.i249, %if.then5.i245, %if.then.i242
  %width.0.i264 = phi i32 [ 0, %if.then67.i263 ], [ 1, %if.then47.i259 ], [ 2, %if.then24.i252 ], [ 3, %if.then5.i245 ], [ 3, %if.then.i242 ], [ 2, %if.then9.i249 ], [ 1, %if.then32.i256 ], [ 0, %if.else52.i260 ]
  %and = and i32 %chan_cc.0290, -6145
  %and87 = shl nuw nsw i32 %width.0.i264, 11
  %or89 = or i32 %and87, %and
  %shr = lshr i32 %53, %width.0.i264
  %sub = sub i32 %remaining_size.0295, %53
  %mbr_sa = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 2
  %64 = ptrtoint ptr %mbr_sa to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add, ptr %mbr_sa, align 8
  %mbr_da = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 3
  %65 = ptrtoint ptr %mbr_da to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %add59, ptr %mbr_da, align 4
  %or91 = or i32 %shr, 369098752
  %mbr_ubc = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 1
  %66 = ptrtoint ptr %mbr_ubc to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or91, ptr %mbr_ubc, align 4
  %mbr_cfg = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 4
  %67 = ptrtoint ptr %mbr_cfg to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %or89, ptr %mbr_cfg, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memcpy, %do.end120)) #7
          to label %if.then108 [label %do.end120], !srcloc !373

if.then108:                                       ; preds = %at_xdmac_align_width.exit265
  call void @__sanitizer_cov_trace_pc() #9
  %68 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i230, align 4
  %device.i267 = getelementptr inbounds %struct.dma_chan_dev, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %mbr_ubc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mbr_ubc, align 4
  %72 = ptrtoint ptr %mbr_cfg to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %mbr_cfg, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug267, ptr noundef %device.i267, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.100, ptr noundef %mbr_sa, ptr noundef %mbr_da, i32 noundef %71, i32 noundef %73) #7
  br label %do.end120

do.end120:                                        ; preds = %if.then108, %at_xdmac_align_width.exit265
  %tobool121.not = icmp eq ptr %prev.0296, null
  br i1 %tobool121.not, label %do.end120.if.end123_crit_edge, label %if.end.i

do.end120.if.end123_crit_edge:                    ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end123

if.end.i:                                         ; preds = %do.end120
  call void @__sanitizer_cov_trace_pc() #9
  %phys.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %desc.0.i, i32 0, i32 2, i32 2
  %74 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %phys.i, align 8
  %76 = ptrtoint ptr %prev.0296 to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %75, ptr %prev.0296, align 8
  %mbr_ubc.i = getelementptr inbounds %struct.at_xdmac_lld, ptr %prev.0296, i32 0, i32 1
  %77 = ptrtoint ptr %mbr_ubc.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %mbr_ubc.i, align 4
  %or.i = or i32 %78, 16777216
  store i32 %or.i, ptr %mbr_ubc.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_queue_desc.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memcpy, %if.end123)) #7
          to label %if.then7.i [label %if.end123], !srcloc !373

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i230, align 4
  %device.i.i270 = getelementptr inbounds %struct.dma_chan_dev, ptr %80, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_queue_desc.__UNIQUE_ID_ddebug241, ptr noundef %device.i.i270, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84, ptr noundef nonnull %prev.0296, ptr noundef nonnull %prev.0296) #7
  br label %if.end123

if.end123:                                        ; preds = %if.then7.i, %if.end.i, %do.end120.if.end123_crit_edge
  %tobool124.not = icmp eq ptr %first.0297, null
  %spec.select = select i1 %tobool124.not, ptr %desc.0.i, ptr %first.0297
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memcpy, %do.end145)) #7
          to label %if.then141 [label %do.end145], !srcloc !373

if.then141:                                       ; preds = %if.end123
  call void @__sanitizer_cov_trace_pc() #9
  %81 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev.i230, align 4
  %device.i272 = getelementptr inbounds %struct.dma_chan_dev, ptr %82, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug268, ptr noundef %device.i272, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.100, ptr noundef nonnull %desc.0.i, ptr noundef nonnull %spec.select) #7
  br label %do.end145

do.end145:                                        ; preds = %if.then141, %if.end123
  %desc_node = getelementptr inbounds %struct.at_xdmac_desc, ptr %desc.0.i, i32 0, i32 3
  %descs_list146 = getelementptr inbounds %struct.at_xdmac_desc, ptr %spec.select, i32 0, i32 6
  %prev.i273 = getelementptr inbounds %struct.at_xdmac_desc, ptr %spec.select, i32 0, i32 6, i32 1
  %83 = ptrtoint ptr %prev.i273 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev.i273, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %84, ptr noundef %descs_list146) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end145.cleanup_crit_edge

do.end145.cleanup_crit_edge:                      ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i.i:                                       ; preds = %do.end145
  call void @__sanitizer_cov_trace_pc() #9
  %85 = ptrtoint ptr %prev.i273 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %desc_node, ptr %prev.i273, align 4
  %86 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %descs_list146, ptr %desc_node, align 4
  %prev3.i.i274 = getelementptr inbounds %struct.at_xdmac_desc, ptr %desc.0.i, i32 0, i32 3, i32 1
  %87 = ptrtoint ptr %prev3.i.i274 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %84, ptr %prev3.i.i274, align 4
  %88 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %desc_node, ptr %84, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %do.end145.cleanup_crit_edge
  %tobool18.not = icmp eq i32 %sub, 0
  br i1 %tobool18.not, label %while.end, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

while.end:                                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #9
  %tx_dma_desc = getelementptr inbounds %struct.at_xdmac_desc, ptr %spec.select, i32 0, i32 2
  %flags147 = getelementptr inbounds %struct.at_xdmac_desc, ptr %spec.select, i32 0, i32 2, i32 1
  %89 = ptrtoint ptr %flags147 to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 %flags, ptr %flags147, align 4
  %xfer_size148 = getelementptr inbounds %struct.at_xdmac_desc, ptr %spec.select, i32 0, i32 5
  %90 = ptrtoint ptr %xfer_size148 to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %len, ptr %xfer_size148, align 8
  br label %cleanup150

cleanup150:                                       ; preds = %while.end, %if.then.i237, %if.then56.cleanup150_crit_edge, %do.end53.cleanup150_crit_edge, %do.end.cleanup150_crit_edge
  %retval.2 = phi ptr [ %tx_dma_desc, %while.end ], [ null, %do.end.cleanup150_crit_edge ], [ null, %if.then.i237 ], [ null, %if.then56.cleanup150_crit_edge ], [ null, %do.end53.cleanup150_crit_edge ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @at_xdmac_prep_dma_memset(ptr noundef %chan, i32 noundef %dest, i32 noundef %value, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %dest.addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dest.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dest, ptr %dest.addr, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_memset.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memset, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !373

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %1 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %2, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_memset.__UNIQUE_ID_ddebug270, ptr noundef %device.i, ptr noundef nonnull @.str.105, ptr noundef nonnull @.str.104, ptr noundef nonnull %dest.addr, i32 noundef %len, i32 noundef %value, i32 noundef %flags) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool6.not = icmp eq i32 %len, 0
  br i1 %tobool6.not, label %do.end.cleanup_crit_edge, label %if.end16, !prof !385

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end16:                                         ; preds = %do.end
  %3 = ptrtoint ptr %dest.addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dest.addr, align 4
  %call17 = call fastcc ptr @at_xdmac_memset_create_desc(ptr noundef %chan, ptr noundef %chan, i32 noundef %4, i32 noundef %len, i32 noundef %value)
  %desc_node = getelementptr inbounds %struct.at_xdmac_desc, ptr %call17, i32 0, i32 3
  %descs_list = getelementptr inbounds %struct.at_xdmac_desc, ptr %call17, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call17, i32 0, i32 6, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %6, ptr noundef %descs_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %if.end16.list_add_tail.exit_crit_edge

if.end16.list_add_tail.exit_crit_edge:            ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %desc_node, ptr %prev.i, align 4
  %8 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %descs_list, ptr %desc_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call17, i32 0, i32 3, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %desc_node, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end16.list_add_tail.exit_crit_edge
  %tx_dma_desc = getelementptr inbounds %struct.at_xdmac_desc, ptr %call17, i32 0, i32 2
  %11 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 -16, ptr %tx_dma_desc, align 8
  %flags19 = getelementptr inbounds %struct.at_xdmac_desc, ptr %call17, i32 0, i32 2, i32 1
  %12 = ptrtoint ptr %flags19 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %flags, ptr %flags19, align 4
  %xfer_size = getelementptr inbounds %struct.at_xdmac_desc, ptr %call17, i32 0, i32 5
  %13 = ptrtoint ptr %xfer_size to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %len, ptr %xfer_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %tx_dma_desc, %list_add_tail.exit ], [ null, %do.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @at_xdmac_prep_dma_memset_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %value, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sgl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memset_sg, %do.end)) #7
          to label %if.then6 [label %do.end], !srcloc !373

if.then6:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug271, ptr noundef %device.i, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.111, i32 noundef %sg_len, i32 noundef %value, i32 noundef %flags) #7
  br label %do.end

do.end:                                           ; preds = %if.then6, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp268.not = icmp eq i32 %sg_len, 0
  br i1 %cmp268.not, label %do.end.for.end_crit_edge, label %do.body9.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

do.body9.lr.ph:                                   ; preds = %do.end
  %dev.i230 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %free_descs_list = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17
  %prev.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17, i32 1
  %sub103 = add i32 %sg_len, -1
  br label %do.body9

do.body9:                                         ; preds = %if.end133.do.body9_crit_edge, %do.body9.lr.ph
  %pdesc.0279 = phi ptr [ null, %do.body9.lr.ph ], [ %call30, %if.end133.do.body9_crit_edge ]
  %ppdesc.0277 = phi ptr [ null, %do.body9.lr.ph ], [ %pdesc.1, %if.end133.do.body9_crit_edge ]
  %first.0275 = phi ptr [ null, %do.body9.lr.ph ], [ %spec.select, %if.end133.do.body9_crit_edge ]
  %sg.0274 = phi ptr [ %sgl, %do.body9.lr.ph ], [ %call136, %if.end133.do.body9_crit_edge ]
  %psg.0273 = phi ptr [ null, %do.body9.lr.ph ], [ %sg.0274, %if.end133.do.body9_crit_edge ]
  %ppsg.0272 = phi ptr [ null, %do.body9.lr.ph ], [ %psg.0273, %if.end133.do.body9_crit_edge ]
  %stride.0271 = phi i32 [ 0, %do.body9.lr.ph ], [ %stride.1, %if.end133.do.body9_crit_edge ]
  %i.0270 = phi i32 [ 0, %do.body9.lr.ph ], [ %inc, %if.end133.do.body9_crit_edge ]
  %len.0269 = phi i32 [ 0, %do.body9.lr.ph ], [ %add135, %if.end133.do.body9_crit_edge ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memset_sg, %do.end27)) #7
          to label %if.then23 [label %do.end27], !srcloc !373

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i230, align 4
  %device.i231 = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0274, i32 0, i32 3
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0274, i32 0, i32 4
  %4 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_length, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug272, ptr noundef %device.i231, ptr noundef nonnull @.str.113, ptr noundef nonnull @.str.111, ptr noundef %dma_address, i32 noundef %5, i32 noundef %value, i32 noundef %flags) #7
  br label %do.end27

do.end27:                                         ; preds = %if.then23, %do.body9
  %dma_address28 = getelementptr inbounds %struct.scatterlist, ptr %sg.0274, i32 0, i32 3
  %6 = ptrtoint ptr %dma_address28 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_address28, align 4
  %dma_length29 = getelementptr inbounds %struct.scatterlist, ptr %sg.0274, i32 0, i32 4
  %8 = ptrtoint ptr %dma_length29 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_length29, align 4
  %call30 = tail call fastcc ptr @at_xdmac_memset_create_desc(ptr noundef %chan, ptr noundef %chan, i32 noundef %7, i32 noundef %9, i32 noundef %value)
  %tobool31.not = icmp ne ptr %call30, null
  %tobool32.not = icmp eq ptr %first.0275, null
  %or.cond = select i1 %tobool31.not, i1 true, i1 %tobool32.not
  br i1 %or.cond, label %do.end27.if.end34_crit_edge, label %if.then33

do.end27.if.end34_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then33:                                        ; preds = %do.end27
  %descs_list = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0275, i32 0, i32 6
  %10 = ptrtoint ptr %descs_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %descs_list, align 4
  %cmp.i.not.i = icmp eq ptr %11, %descs_list
  br i1 %cmp.i.not.i, label %if.then33.if.end34_crit_edge, label %if.then.i

if.then33.if.end34_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end34

if.then.i:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0275, i32 0, i32 6, i32 1
  %14 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %13, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %13 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %11, ptr %13, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %free_descs_list, ptr %15, align 4
  store ptr %15, ptr %prev.i, align 4
  %19 = ptrtoint ptr %descs_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %descs_list, ptr %descs_list, align 4
  store ptr %descs_list, ptr %prev2.i.i, align 4
  br label %if.end34

if.end34:                                         ; preds = %if.then.i, %if.then33.if.end34_crit_edge, %do.end27.if.end34_crit_edge
  %spec.select = select i1 %tobool32.not, ptr %call30, ptr %first.0275
  %tobool38.not = icmp eq ptr %psg.0273, null
  br i1 %tobool38.not, label %if.end34.if.end43_crit_edge, label %if.then39

if.end34.if.end43_crit_edge:                      ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end43

if.then39:                                        ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %dma_address28 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_address28, align 4
  %dma_address41 = getelementptr inbounds %struct.scatterlist, ptr %psg.0273, i32 0, i32 3
  %22 = ptrtoint ptr %dma_address41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_address41, align 4
  %dma_length42 = getelementptr inbounds %struct.scatterlist, ptr %psg.0273, i32 0, i32 4
  %24 = ptrtoint ptr %dma_length42 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dma_length42, align 4
  %26 = add i32 %23, %25
  %sub = sub i32 %21, %26
  br label %if.end43

if.end43:                                         ; preds = %if.then39, %if.end34.if.end43_crit_edge
  %stride.1 = phi i32 [ %sub, %if.then39 ], [ %stride.0271, %if.end34.if.end43_crit_edge ]
  %tobool44.not = icmp eq ptr %ppdesc.0277, null
  br i1 %tobool44.not, label %if.end43.if.end102_crit_edge, label %land.lhs.true45

if.end43.if.end102_crit_edge:                     ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

land.lhs.true45:                                  ; preds = %if.end43
  %tobool46.not = icmp eq ptr %pdesc.0279, null
  br i1 %tobool46.not, label %land.lhs.true45.if.end102_crit_edge, label %if.then47

land.lhs.true45.if.end102_crit_edge:              ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.then47:                                        ; preds = %land.lhs.true45
  call void @__sanitizer_cov_trace_cmp4(i32 %stride.1, i32 %stride.0271)
  %cmp48 = icmp eq i32 %stride.1, %stride.0271
  br i1 %cmp48, label %land.lhs.true49, label %if.then47.if.else_crit_edge

if.then47.if.else_crit_edge:                      ; preds = %if.then47
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true49:                                  ; preds = %if.then47
  %dma_length50 = getelementptr inbounds %struct.scatterlist, ptr %ppsg.0272, i32 0, i32 4
  %27 = ptrtoint ptr %dma_length50 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_length50, align 4
  %dma_length51 = getelementptr inbounds %struct.scatterlist, ptr %psg.0273, i32 0, i32 4
  %29 = ptrtoint ptr %dma_length51 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_length51, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %28, i32 %30)
  %cmp52 = icmp eq i32 %28, %30
  br i1 %cmp52, label %do.body54, label %land.lhs.true49.if.else_crit_edge

land.lhs.true49.if.else_crit_edge:                ; preds = %land.lhs.true49
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

do.body54:                                        ; preds = %land.lhs.true49
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memset_sg, %if.end.i)) #7
          to label %if.then68 [label %if.end.i], !srcloc !373

if.then68:                                        ; preds = %do.body54
  call void @__sanitizer_cov_trace_pc() #9
  %31 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i230, align 4
  %device.i233 = getelementptr inbounds %struct.dma_chan_dev, ptr %32, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug273, ptr noundef %device.i233, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.111, ptr noundef nonnull %pdesc.0279, ptr noundef nonnull %ppdesc.0277) #7
  br label %if.end.i

if.end.i:                                         ; preds = %if.then68, %do.body54
  %mbr_bc.i = getelementptr inbounds %struct.at_xdmac_lld, ptr %ppdesc.0277, i32 0, i32 5
  %33 = ptrtoint ptr %mbr_bc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %mbr_bc.i, align 4
  %inc.i = add i32 %34, 1
  store i32 %inc.i, ptr %mbr_bc.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_increment_block_count.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memset_sg, %at_xdmac_increment_block_count.exit)) #7
          to label %if.then5.i [label %at_xdmac_increment_block_count.exit], !srcloc !373

if.then5.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev.i230, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %36, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_increment_block_count.__UNIQUE_ID_ddebug242, ptr noundef %device.i.i, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, ptr noundef nonnull %ppdesc.0277) #7
  br label %at_xdmac_increment_block_count.exit

at_xdmac_increment_block_count.exit:              ; preds = %if.then5.i, %if.end.i
  %mbr_dus = getelementptr inbounds %struct.at_xdmac_lld, ptr %ppdesc.0277, i32 0, i32 8
  %37 = ptrtoint ptr %mbr_dus to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %stride.0271, ptr %mbr_dus, align 8
  %desc_node = getelementptr inbounds %struct.at_xdmac_desc, ptr %pdesc.0279, i32 0, i32 3
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %39, ptr noundef %free_descs_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %at_xdmac_increment_block_count.exit.if.end102_crit_edge

at_xdmac_increment_block_count.exit.if.end102_crit_edge: ; preds = %at_xdmac_increment_block_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

if.end.i.i:                                       ; preds = %at_xdmac_increment_block_count.exit
  call void @__sanitizer_cov_trace_pc() #9
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %desc_node, ptr %prev.i, align 4
  %41 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %free_descs_list, ptr %desc_node, align 4
  %prev3.i.i235 = getelementptr inbounds %struct.at_xdmac_desc, ptr %pdesc.0279, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %prev3.i.i235 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i235, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %desc_node, ptr %39, align 4
  br label %if.end102

if.else:                                          ; preds = %land.lhs.true49.if.else_crit_edge, %if.then47.if.else_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %stride.0271)
  %tobool74.not = icmp eq i32 %stride.0271, 0
  br i1 %tobool74.not, label %lor.lhs.false, label %if.else.if.end.i237_crit_edge

if.else.if.end.i237_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i237

lor.lhs.false:                                    ; preds = %if.else
  %44 = ptrtoint ptr %dma_address28 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_address28, align 4
  %dma_address76 = getelementptr inbounds %struct.scatterlist, ptr %psg.0273, i32 0, i32 3
  %46 = ptrtoint ptr %dma_address76 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_address76, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %45, i32 %47)
  %cmp77 = icmp ult i32 %45, %47
  br i1 %cmp77, label %lor.lhs.false.if.end.i237_crit_edge, label %lor.lhs.false.if.end102_crit_edge

lor.lhs.false.if.end102_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end102

lor.lhs.false.if.end.i237_crit_edge:              ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i237

if.end.i237:                                      ; preds = %lor.lhs.false.if.end.i237_crit_edge, %if.else.if.end.i237_crit_edge
  %phys.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %pdesc.0279, i32 0, i32 2, i32 2
  %48 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %phys.i, align 8
  %50 = ptrtoint ptr %ppdesc.0277 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %ppdesc.0277, align 8
  %mbr_ubc.i = getelementptr inbounds %struct.at_xdmac_lld, ptr %ppdesc.0277, i32 0, i32 1
  %51 = ptrtoint ptr %mbr_ubc.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %mbr_ubc.i, align 4
  %or.i = or i32 %52, 16777216
  store i32 %or.i, ptr %mbr_ubc.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_queue_desc.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memset_sg, %at_xdmac_queue_desc.exit)) #7
          to label %if.then7.i [label %at_xdmac_queue_desc.exit], !srcloc !373

if.then7.i:                                       ; preds = %if.end.i237
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i230, align 4
  %device.i.i239 = getelementptr inbounds %struct.dma_chan_dev, ptr %54, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_queue_desc.__UNIQUE_ID_ddebug241, ptr noundef %device.i.i239, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84, ptr noundef nonnull %ppdesc.0277, ptr noundef nonnull %ppdesc.0277) #7
  br label %at_xdmac_queue_desc.exit

at_xdmac_queue_desc.exit:                         ; preds = %if.then7.i, %if.end.i237
  %desc_node79 = getelementptr inbounds %struct.at_xdmac_desc, ptr %call30, i32 0, i32 3
  %descs_list80 = getelementptr inbounds %struct.at_xdmac_desc, ptr %spec.select, i32 0, i32 6
  %prev.i240 = getelementptr inbounds %struct.at_xdmac_desc, ptr %spec.select, i32 0, i32 6, i32 1
  %55 = ptrtoint ptr %prev.i240 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev.i240, align 4
  %call.i.i241 = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node79, ptr noundef %56, ptr noundef %descs_list80) #7
  br i1 %call.i.i241, label %if.end.i.i243, label %at_xdmac_queue_desc.exit.list_add_tail.exit244_crit_edge

at_xdmac_queue_desc.exit.list_add_tail.exit244_crit_edge: ; preds = %at_xdmac_queue_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit244

if.end.i.i243:                                    ; preds = %at_xdmac_queue_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %57 = ptrtoint ptr %prev.i240 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %desc_node79, ptr %prev.i240, align 4
  %58 = ptrtoint ptr %desc_node79 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %descs_list80, ptr %desc_node79, align 4
  %prev3.i.i242 = getelementptr inbounds %struct.at_xdmac_desc, ptr %call30, i32 0, i32 3, i32 1
  %59 = ptrtoint ptr %prev3.i.i242 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i242, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %desc_node79, ptr %56, align 4
  br label %list_add_tail.exit244

list_add_tail.exit244:                            ; preds = %if.end.i.i243, %at_xdmac_queue_desc.exit.list_add_tail.exit244_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug274, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memset_sg, %if.end102)) #7
          to label %if.then95 [label %if.end102], !srcloc !373

if.then95:                                        ; preds = %list_add_tail.exit244
  call void @__sanitizer_cov_trace_pc() #9
  %61 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i230, align 4
  %device.i246 = getelementptr inbounds %struct.dma_chan_dev, ptr %62, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug274, ptr noundef %device.i246, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.111, ptr noundef %call30, ptr noundef %spec.select) #7
  br label %if.end102

if.end102:                                        ; preds = %if.then95, %list_add_tail.exit244, %lor.lhs.false.if.end102_crit_edge, %if.end.i.i, %at_xdmac_increment_block_count.exit.if.end102_crit_edge, %land.lhs.true45.if.end102_crit_edge, %if.end43.if.end102_crit_edge
  %pdesc.1 = phi ptr [ %pdesc.0279, %if.then95 ], [ %pdesc.0279, %lor.lhs.false.if.end102_crit_edge ], [ null, %land.lhs.true45.if.end102_crit_edge ], [ %pdesc.0279, %if.end43.if.end102_crit_edge ], [ %ppdesc.0277, %at_xdmac_increment_block_count.exit.if.end102_crit_edge ], [ %ppdesc.0277, %if.end.i.i ], [ %pdesc.0279, %list_add_tail.exit244 ]
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0270, i32 %sub103)
  %cmp104 = icmp eq i32 %i.0270, %sub103
  br i1 %cmp104, label %land.lhs.true105, label %if.end102.if.end133_crit_edge

if.end102.if.end133_crit_edge:                    ; preds = %if.end102
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

land.lhs.true105:                                 ; preds = %if.end102
  %dma_length106 = getelementptr inbounds %struct.scatterlist, ptr %psg.0273, i32 0, i32 4
  %63 = ptrtoint ptr %dma_length106 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_length106, align 4
  %65 = ptrtoint ptr %dma_length29 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %dma_length29, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %64, i32 %66)
  %cmp108 = icmp eq i32 %64, %66
  br i1 %cmp108, label %do.body110, label %land.lhs.true105.if.end133_crit_edge

land.lhs.true105.if.end133_crit_edge:             ; preds = %land.lhs.true105
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

do.body110:                                       ; preds = %land.lhs.true105
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug275, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memset_sg, %do.end128)) #7
          to label %if.then124 [label %do.end128], !srcloc !373

if.then124:                                       ; preds = %do.body110
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i230, align 4
  %device.i248 = getelementptr inbounds %struct.dma_chan_dev, ptr %68, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug275, ptr noundef %device.i248, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.111, ptr noundef %call30, ptr noundef %pdesc.1) #7
  br label %do.end128

do.end128:                                        ; preds = %if.then124, %do.body110
  %tobool.not.i249 = icmp eq ptr %pdesc.1, null
  br i1 %tobool.not.i249, label %do.end128.at_xdmac_increment_block_count.exit256_crit_edge, label %if.end.i252

do.end128.at_xdmac_increment_block_count.exit256_crit_edge: ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_increment_block_count.exit256

if.end.i252:                                      ; preds = %do.end128
  call void @__sanitizer_cov_trace_pc() #9
  %mbr_bc.i250 = getelementptr inbounds %struct.at_xdmac_lld, ptr %pdesc.1, i32 0, i32 5
  %69 = ptrtoint ptr %mbr_bc.i250 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mbr_bc.i250, align 4
  %inc.i251 = add i32 %70, 1
  store i32 %inc.i251, ptr %mbr_bc.i250, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_increment_block_count.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_dma_memset_sg, %at_xdmac_increment_block_count.exit256)) #7
          to label %if.then5.i255 [label %at_xdmac_increment_block_count.exit256], !srcloc !373

if.then5.i255:                                    ; preds = %if.end.i252
  call void @__sanitizer_cov_trace_pc() #9
  %71 = ptrtoint ptr %dev.i230 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i230, align 4
  %device.i.i254 = getelementptr inbounds %struct.dma_chan_dev, ptr %72, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_increment_block_count.__UNIQUE_ID_ddebug242, ptr noundef %device.i.i254, ptr noundef nonnull @.str.99, ptr noundef nonnull @.str.98, ptr noundef nonnull %pdesc.1) #7
  br label %at_xdmac_increment_block_count.exit256

at_xdmac_increment_block_count.exit256:           ; preds = %if.then5.i255, %if.end.i252, %do.end128.at_xdmac_increment_block_count.exit256_crit_edge
  %mbr_dus130 = getelementptr inbounds %struct.at_xdmac_lld, ptr %pdesc.1, i32 0, i32 8
  %73 = ptrtoint ptr %mbr_dus130 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %stride.1, ptr %mbr_dus130, align 8
  %desc_node131 = getelementptr inbounds %struct.at_xdmac_desc, ptr %call30, i32 0, i32 3
  %74 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %prev.i, align 4
  %call.i.i258 = tail call zeroext i1 @__list_add_valid(ptr noundef %desc_node131, ptr noundef %75, ptr noundef %free_descs_list) #7
  br i1 %call.i.i258, label %if.end.i.i260, label %at_xdmac_increment_block_count.exit256.if.end133_crit_edge

at_xdmac_increment_block_count.exit256.if.end133_crit_edge: ; preds = %at_xdmac_increment_block_count.exit256
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end133

if.end.i.i260:                                    ; preds = %at_xdmac_increment_block_count.exit256
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %desc_node131, ptr %prev.i, align 4
  %77 = ptrtoint ptr %desc_node131 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %free_descs_list, ptr %desc_node131, align 4
  %prev3.i.i259 = getelementptr inbounds %struct.at_xdmac_desc, ptr %call30, i32 0, i32 3, i32 1
  %78 = ptrtoint ptr %prev3.i.i259 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i259, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store volatile ptr %desc_node131, ptr %75, align 4
  br label %if.end133

if.end133:                                        ; preds = %if.end.i.i260, %at_xdmac_increment_block_count.exit256.if.end133_crit_edge, %land.lhs.true105.if.end133_crit_edge, %if.end102.if.end133_crit_edge
  %80 = ptrtoint ptr %dma_length29 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_length29, align 4
  %add135 = add i32 %81, %len.0269
  %inc = add nuw i32 %i.0270, 1
  %call136 = tail call ptr @sg_next(ptr noundef %sg.0274) #7
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %if.end133.for.end_crit_edge, label %if.end133.do.body9_crit_edge

if.end133.do.body9_crit_edge:                     ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body9

if.end133.for.end_crit_edge:                      ; preds = %if.end133
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end133.for.end_crit_edge, %do.end.for.end_crit_edge
  %len.0.lcssa = phi i32 [ 0, %do.end.for.end_crit_edge ], [ %add135, %if.end133.for.end_crit_edge ]
  %first.0.lcssa = phi ptr [ null, %do.end.for.end_crit_edge ], [ %spec.select, %if.end133.for.end_crit_edge ]
  %tx_dma_desc = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0.lcssa, i32 0, i32 2
  %82 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 -16, ptr %tx_dma_desc, align 8
  %flags138 = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0.lcssa, i32 0, i32 2, i32 1
  %83 = ptrtoint ptr %flags138 to i32
  call void @__asan_store4_noabort(i32 %83)
  store i32 %flags, ptr %flags138, align 4
  %xfer_size = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0.lcssa, i32 0, i32 5
  %84 = ptrtoint ptr %xfer_size to i32
  call void @__asan_store4_noabort(i32 %84)
  store i32 %len.0.lcssa, ptr %xfer_size, align 8
  br label %cleanup

cleanup:                                          ; preds = %for.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %tx_dma_desc, %for.end ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @at_xdmac_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  %phys.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sgl, null
  br i1 %tobool.not, label %entry.cleanup160_crit_edge, label %if.end

entry.cleanup160_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup160

if.end:                                           ; preds = %entry
  %0 = add i32 %direction, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %0)
  %1 = icmp ult i32 %0, 2
  br i1 %1, label %do.body5, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.63) #10
  br label %cleanup160

do.body5:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_slave_sg, %do.body17)) #7
          to label %if.then11 [label %do.body17], !srcloc !373

if.then11:                                        ; preds = %do.body5
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i237 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i237 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i237, align 4
  %device.i238 = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp = icmp eq i32 %direction, 1
  %cond = select i1 %cmp, ptr @.str.117, ptr @.str.118
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug245, ptr noundef %device.i238, ptr noundef nonnull @.str.116, ptr noundef nonnull @.str.115, i32 noundef %sg_len, ptr noundef nonnull %cond, i32 noundef %flags) #7
  br label %do.body17

do.body17:                                        ; preds = %if.then11, %do.body5
  %lock = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 15
  %call21 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %call26 = tail call fastcc i32 @at_xdmac_compute_chan_conf(ptr noundef %chan, i32 noundef %direction)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %for.cond.preheader, label %do.body17.spin_unlock_crit_edge

do.body17.spin_unlock_crit_edge:                  ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #9
  br label %spin_unlock

for.cond.preheader:                               ; preds = %do.body17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp30265.not = icmp eq i32 %sg_len, 0
  br i1 %cmp30265.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %dev.i241 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %free_descs_list.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp77 = icmp eq i32 %direction, 2
  %dst_addr = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 14, i32 2
  %src_addr = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 14, i32 1
  %cfg = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 3
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %first.0270 = phi ptr [ null, %for.body.lr.ph ], [ %spec.select227, %for.inc.for.body_crit_edge ]
  %prev.0269 = phi ptr [ null, %for.body.lr.ph ], [ %desc.0.i, %for.inc.for.body_crit_edge ]
  %sg.0268 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call154, %for.inc.for.body_crit_edge ]
  %i.0267 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %xfer_size.0266 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0268, i32 0, i32 4
  %6 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_length, align 4
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0268, i32 0, i32 3
  %8 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_address, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool32.not = icmp eq i32 %7, 0
  br i1 %tobool32.not, label %do.end44, label %do.body47, !prof !385

do.end44:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev.i241 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i241, align 4
  %device.i240 = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i240, ptr noundef nonnull @.str.120) #10
  br label %spin_unlock

do.body47:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_slave_sg, %do.end65)) #7
          to label %if.then61 [label %do.end65], !srcloc !373

if.then61:                                        ; preds = %do.body47
  call void @__sanitizer_cov_trace_pc() #9
  %12 = ptrtoint ptr %dev.i241 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i241, align 4
  %device.i242 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug246, ptr noundef %device.i242, ptr noundef nonnull @.str.122, ptr noundef nonnull @.str.115, i32 noundef %i.0267, i32 noundef %7, i32 noundef %9) #7
  br label %do.end65

do.end65:                                         ; preds = %if.then61, %do.body47
  %14 = ptrtoint ptr %free_descs_list.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %free_descs_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %15, %free_descs_list.i
  br i1 %cmp.i.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end65
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i.i) #7
  %18 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 -1, ptr %phys.i.i, align 4, !annotation !374
  %at_xdmac_desc_pool.i.i = getelementptr inbounds %struct.at_xdmac, ptr %17, i32 0, i32 5
  %19 = ptrtoint ptr %at_xdmac_desc_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %at_xdmac_desc_pool.i.i, align 4
  %call.i.i.i = call ptr @dma_pool_alloc(ptr noundef %20, i32 noundef 2304, ptr noundef nonnull %phys.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i.at_xdmac_alloc_desc.exit.i_crit_edge, label %if.then.i.i

if.then.i.at_xdmac_alloc_desc.exit.i_crit_edge:   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_alloc_desc.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %descs_list.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 6
  %21 = ptrtoint ptr %descs_list.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %descs_list.i.i, ptr %descs_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 6, i32 1
  %22 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %descs_list.i.i, ptr %prev.i.i.i, align 4
  %tx_dma_desc.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %tx_dma_desc.i.i, ptr noundef %chan) #7
  %tx_submit.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2, i32 4
  %23 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @at_xdmac_tx_submit, ptr %tx_submit.i.i, align 8
  %24 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %phys.i.i, align 4
  %phys4.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2, i32 2
  %26 = ptrtoint ptr %phys4.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %phys4.i.i, align 8
  br label %at_xdmac_alloc_desc.exit.i

at_xdmac_alloc_desc.exit.i:                       ; preds = %if.then.i.i, %if.then.i.at_xdmac_alloc_desc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i.i) #7
  br label %at_xdmac_get_desc.exit

if.else.i:                                        ; preds = %do.end65
  %add.ptr.i = getelementptr i8, ptr %15, i32 -140
  %call.i.i7.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #7
  br i1 %call.i.i7.i, label %if.end.i.i.i, label %if.else.i.list_del.exit.i_crit_edge

if.else.i.list_del.exit.i_crit_edge:              ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i8.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev.i.i8.i, align 4
  %29 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev1.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %30, ptr %28, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.else.i.list_del.exit.i_crit_edge
  %33 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %35 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 36)
  %descs_list.i9.i = getelementptr i8, ptr %15, i32 16
  %36 = ptrtoint ptr %descs_list.i9.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store volatile ptr %descs_list.i9.i, ptr %descs_list.i9.i, align 4
  %prev.i.i10.i = getelementptr i8, ptr %15, i32 20
  %37 = ptrtoint ptr %prev.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %descs_list.i9.i, ptr %prev.i.i10.i, align 4
  %direction.i.i = getelementptr i8, ptr %15, i32 -104
  %38 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 4, ptr %direction.i.i, align 4
  %xfer_size.i.i = getelementptr i8, ptr %15, i32 12
  %39 = ptrtoint ptr %xfer_size.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 0, ptr %xfer_size.i.i, align 8
  %active_xfer.i.i = getelementptr i8, ptr %15, i32 8
  %40 = ptrtoint ptr %active_xfer.i.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 0, ptr %active_xfer.i.i, align 4
  br label %at_xdmac_get_desc.exit

at_xdmac_get_desc.exit:                           ; preds = %list_del.exit.i, %at_xdmac_alloc_desc.exit.i
  %desc.0.i = phi ptr [ %call.i.i.i, %at_xdmac_alloc_desc.exit.i ], [ %add.ptr.i, %list_del.exit.i ]
  %tobool67.not = icmp eq ptr %desc.0.i, null
  br i1 %tobool67.not, label %do.end71, label %if.end76

do.end71:                                         ; preds = %at_xdmac_get_desc.exit
  %41 = ptrtoint ptr %dev.i241 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dev.i241, align 4
  %device.i244 = getelementptr inbounds %struct.dma_chan_dev, ptr %42, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i244, ptr noundef nonnull @.str.68) #10
  %tobool73.not = icmp eq ptr %first.0270, null
  br i1 %tobool73.not, label %do.end71.spin_unlock_crit_edge, label %if.then74

do.end71.spin_unlock_crit_edge:                   ; preds = %do.end71
  call void @__sanitizer_cov_trace_pc() #9
  br label %spin_unlock

if.then74:                                        ; preds = %do.end71
  %descs_list = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0270, i32 0, i32 6
  %43 = ptrtoint ptr %descs_list to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %descs_list, align 4
  %cmp.i.not.i245 = icmp eq ptr %44, %descs_list
  br i1 %cmp.i.not.i245, label %if.then74.spin_unlock_crit_edge, label %if.then.i246

if.then74.spin_unlock_crit_edge:                  ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  br label %spin_unlock

if.then.i246:                                     ; preds = %if.then74
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17, i32 1
  %45 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0270, i32 0, i32 6, i32 1
  %47 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %free_descs_list.i, ptr %48, align 4
  store ptr %48, ptr %prev.i, align 4
  %52 = ptrtoint ptr %descs_list to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %descs_list, ptr %descs_list, align 4
  store ptr %descs_list, ptr %prev2.i.i, align 4
  br label %spin_unlock

if.end76:                                         ; preds = %at_xdmac_get_desc.exit
  br i1 %cmp77, label %if.then79, label %if.else

if.then79:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %53 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %src_addr, align 4
  %mbr_sa = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 2
  %55 = ptrtoint ptr %mbr_sa to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %mbr_sa, align 8
  br label %if.end86

if.else:                                          ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #9
  %mbr_sa82 = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 2
  %56 = ptrtoint ptr %mbr_sa82 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %9, ptr %mbr_sa82, align 8
  %57 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dst_addr, align 4
  br label %if.end86

if.end86:                                         ; preds = %if.else, %if.then79
  %.sink = phi i32 [ %9, %if.then79 ], [ %58, %if.else ]
  %59 = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 3
  %60 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 %.sink, ptr %59, align 4
  %61 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %cfg, align 4
  %and.i = lshr i32 %62, 11
  %conv.i = and i32 %and.i, 3
  %notmask = shl nsw i32 -1, %conv.i
  %sub = xor i32 %notmask, -1
  %and = and i32 %7, %sub
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp89 = icmp eq i32 %and, 0
  %spec.select = select i1 %cmp89, i32 %conv.i, i32 0
  %shr = lshr i32 %7, %spec.select
  %or = or i32 %shr, 369098752
  %mbr_ubc = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 1
  %63 = ptrtoint ptr %mbr_ubc to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %or, ptr %mbr_ubc, align 4
  %64 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %cfg, align 4
  %and94 = and i32 %65, -6145
  %and95 = shl nuw nsw i32 %spec.select, 11
  %or97 = or i32 %and95, %and94
  %mbr_cfg = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 4
  %66 = ptrtoint ptr %mbr_cfg to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %or97, ptr %mbr_cfg, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_slave_sg, %do.end123)) #7
          to label %if.then113 [label %do.end123], !srcloc !373

if.then113:                                       ; preds = %if.end86
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %dev.i241 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev.i241, align 4
  %device.i248 = getelementptr inbounds %struct.dma_chan_dev, ptr %68, i32 0, i32 1
  %mbr_sa116 = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 2
  %69 = ptrtoint ptr %mbr_ubc to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %mbr_ubc, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug247, ptr noundef %device.i248, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.115, ptr noundef %mbr_sa116, ptr noundef %59, i32 noundef %70) #7
  br label %do.end123

do.end123:                                        ; preds = %if.then113, %if.end86
  %tobool124.not = icmp eq ptr %prev.0269, null
  br i1 %tobool124.not, label %do.end123.if.end126_crit_edge, label %if.end.i

do.end123.if.end126_crit_edge:                    ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end126

if.end.i:                                         ; preds = %do.end123
  call void @__sanitizer_cov_trace_pc() #9
  %phys.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %desc.0.i, i32 0, i32 2, i32 2
  %71 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %phys.i, align 8
  %73 = ptrtoint ptr %prev.0269 to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %72, ptr %prev.0269, align 8
  %mbr_ubc.i = getelementptr inbounds %struct.at_xdmac_lld, ptr %prev.0269, i32 0, i32 1
  %74 = ptrtoint ptr %mbr_ubc.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %mbr_ubc.i, align 4
  %or.i = or i32 %75, 16777216
  store i32 %or.i, ptr %mbr_ubc.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_queue_desc.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_slave_sg, %if.end126)) #7
          to label %if.then7.i [label %if.end126], !srcloc !373

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %76 = ptrtoint ptr %dev.i241 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev.i241, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %77, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_queue_desc.__UNIQUE_ID_ddebug241, ptr noundef %device.i.i, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84, ptr noundef nonnull %prev.0269, ptr noundef nonnull %prev.0269) #7
  br label %if.end126

if.end126:                                        ; preds = %if.then7.i, %if.end.i, %do.end123.if.end126_crit_edge
  %tobool127.not = icmp eq ptr %first.0270, null
  %spec.select227 = select i1 %tobool127.not, ptr %desc.0.i, ptr %first.0270
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_prep_slave_sg, %do.end148)) #7
          to label %if.then144 [label %do.end148], !srcloc !373

if.then144:                                       ; preds = %if.end126
  call void @__sanitizer_cov_trace_pc() #9
  %78 = ptrtoint ptr %dev.i241 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i241, align 4
  %device.i250 = getelementptr inbounds %struct.dma_chan_dev, ptr %79, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug248, ptr noundef %device.i250, ptr noundef nonnull @.str.72, ptr noundef nonnull @.str.115, ptr noundef nonnull %desc.0.i, ptr noundef nonnull %spec.select227) #7
  br label %do.end148

do.end148:                                        ; preds = %if.then144, %if.end126
  %desc_node = getelementptr inbounds %struct.at_xdmac_desc, ptr %desc.0.i, i32 0, i32 3
  %descs_list149 = getelementptr inbounds %struct.at_xdmac_desc, ptr %spec.select227, i32 0, i32 6
  %prev.i251 = getelementptr inbounds %struct.at_xdmac_desc, ptr %spec.select227, i32 0, i32 6, i32 1
  %80 = ptrtoint ptr %prev.i251 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %prev.i251, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %desc_node, ptr noundef %81, ptr noundef %descs_list149) #7
  br i1 %call.i.i, label %if.end.i.i, label %do.end148.for.inc_crit_edge

do.end148.for.inc_crit_edge:                      ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

if.end.i.i:                                       ; preds = %do.end148
  call void @__sanitizer_cov_trace_pc() #9
  %82 = ptrtoint ptr %prev.i251 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %desc_node, ptr %prev.i251, align 4
  %83 = ptrtoint ptr %desc_node to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %descs_list149, ptr %desc_node, align 4
  %prev3.i.i252 = getelementptr inbounds %struct.at_xdmac_desc, ptr %desc.0.i, i32 0, i32 3, i32 1
  %84 = ptrtoint ptr %prev3.i.i252 to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr %81, ptr %prev3.i.i252, align 4
  %85 = ptrtoint ptr %81 to i32
  call void @__asan_store4_noabort(i32 %85)
  store volatile ptr %desc_node, ptr %81, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %do.end148.for.inc_crit_edge
  %add = add i32 %7, %xfer_size.0266
  %inc = add nuw i32 %i.0267, 1
  %call154 = call ptr @sg_next(ptr noundef %sg.0268) #7
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %xfer_size.0.lcssa = phi i32 [ 0, %for.cond.preheader.for.end_crit_edge ], [ %add, %for.inc.for.end_crit_edge ]
  %first.0.lcssa = phi ptr [ null, %for.cond.preheader.for.end_crit_edge ], [ %spec.select227, %for.inc.for.end_crit_edge ]
  %tx_dma_desc = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0.lcssa, i32 0, i32 2
  %flags155 = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0.lcssa, i32 0, i32 2, i32 1
  %86 = ptrtoint ptr %flags155 to i32
  call void @__asan_store4_noabort(i32 %86)
  store i32 %flags, ptr %flags155, align 4
  %xfer_size156 = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0.lcssa, i32 0, i32 5
  %87 = ptrtoint ptr %xfer_size156 to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %xfer_size.0.lcssa, ptr %xfer_size156, align 8
  %direction157 = getelementptr inbounds %struct.at_xdmac_desc, ptr %first.0.lcssa, i32 0, i32 1
  %88 = ptrtoint ptr %direction157 to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %direction, ptr %direction157, align 4
  br label %spin_unlock

spin_unlock:                                      ; preds = %for.end, %if.then.i246, %if.then74.spin_unlock_crit_edge, %do.end71.spin_unlock_crit_edge, %do.end44, %do.body17.spin_unlock_crit_edge
  %ret.0 = phi ptr [ null, %do.body17.spin_unlock_crit_edge ], [ %tx_dma_desc, %for.end ], [ null, %do.end44 ], [ null, %do.end71.spin_unlock_crit_edge ], [ null, %if.then74.spin_unlock_crit_edge ], [ null, %if.then.i246 ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call21) #7
  br label %cleanup160

cleanup160:                                       ; preds = %spin_unlock, %do.end, %entry.cleanup160_crit_edge
  %retval.0 = phi ptr [ %ret.0, %spin_unlock ], [ null, %do.end ], [ null, %entry.cleanup160_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_xdmac_device_config(ptr noundef %chan, ptr nocapture noundef readonly %config) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_device_config.__UNIQUE_ID_ddebug286, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_device_config, %do.body7)) #7
          to label %if.then [label %do.body7], !srcloc !373

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_device_config.__UNIQUE_ID_ddebug286, ptr noundef %device.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.125) #7
  br label %do.body7

do.body7:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 15
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %src_maxburst.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 5
  %2 = ptrtoint ptr %src_maxburst.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %src_maxburst.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %3)
  %cmp.i.i = icmp ugt i32 %3, 16
  br i1 %cmp.i.i, label %do.body7.do.end.i_crit_edge, label %lor.lhs.false.i.i

do.body7.do.end.i_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false.i.i:                                ; preds = %do.body7
  %dst_maxburst.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 6
  %4 = ptrtoint ptr %dst_maxburst.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dst_maxburst.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %5)
  %cmp1.i.i = icmp ugt i32 %5, 16
  br i1 %cmp1.i.i, label %lor.lhs.false.i.i.do.end.i_crit_edge, label %if.end.i.i

lor.lhs.false.i.i.do.end.i_crit_edge:             ; preds = %lor.lhs.false.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

if.end.i.i:                                       ; preds = %lor.lhs.false.i.i
  %src_addr_width.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 3
  %6 = ptrtoint ptr %src_addr_width.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_addr_width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %7)
  %cmp2.i.i = icmp ugt i32 %7, 8
  br i1 %cmp2.i.i, label %if.end.i.i.do.end.i_crit_edge, label %lor.lhs.false3.i.i

if.end.i.i.do.end.i_crit_edge:                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

lor.lhs.false3.i.i:                               ; preds = %if.end.i.i
  %dst_addr_width.i.i = getelementptr inbounds %struct.dma_slave_config, ptr %config, i32 0, i32 4
  %8 = ptrtoint ptr %dst_addr_width.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dst_addr_width.i.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %9)
  %cmp4.i.i = icmp ugt i32 %9, 8
  br i1 %cmp4.i.i, label %lor.lhs.false3.i.i.do.end.i_crit_edge, label %if.end.i

lor.lhs.false3.i.i.do.end.i_crit_edge:            ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %lor.lhs.false3.i.i.do.end.i_crit_edge, %if.end.i.i.do.end.i_crit_edge, %lor.lhs.false.i.i.do.end.i_crit_edge, %do.body7.do.end.i_crit_edge
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %10 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.126) #10
  br label %at_xdmac_set_slave_config.exit

if.end.i:                                         ; preds = %lor.lhs.false3.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %sconfig3.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 14
  %12 = call ptr @memcpy(ptr %sconfig3.i, ptr %config, i32 48)
  br label %at_xdmac_set_slave_config.exit

at_xdmac_set_slave_config.exit:                   ; preds = %if.end.i, %do.end.i
  %retval.0.i20 = phi i32 [ -22, %do.end.i ], [ 0, %if.end.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call10) #7
  ret i32 %retval.0.i20
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_xdmac_device_pause(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_device_pause.__UNIQUE_ID_ddebug287, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_device_pause, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !373

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_device_pause.__UNIQUE_ID_ddebug287, ptr noundef %device.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.128) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %status = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 12
  %call8 = tail call i32 @_test_and_set_bit(i32 noundef 1, ptr noundef %status) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8)
  %tobool9.not = icmp eq i32 %call8, 0
  br i1 %tobool9.not, label %do.body13, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.body13:                                        ; preds = %do.end
  %lock = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 15
  %call16 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %mask = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %regs = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %layout = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 6
  %9 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %layout, align 4
  %grws = getelementptr inbounds %struct.at_xdmac_layout, ptr %10, i32 0, i32 2
  %11 = ptrtoint ptr %grws to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %grws, align 1
  %conv21 = zext i8 %12 to i32
  %add.ptr = getelementptr i8, ptr %8, i32 %conv21
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !370
  %ch_regs = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 1
  %13 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ch_regs, align 4
  %add.ptr2246 = getelementptr i8, ptr %14, i32 40
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2246) #7, !srcloc !367
  %16 = and i32 %15, 49152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool25.not47 = icmp eq i32 %16, 0
  br i1 %tobool25.not47, label %do.body13.while.end_crit_edge, label %do.body13.do.end30_crit_edge

do.body13.do.end30_crit_edge:                     ; preds = %do.body13
  br label %do.end30

do.body13.while.end_crit_edge:                    ; preds = %do.body13
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end30:                                         ; preds = %do.end30.do.end30_crit_edge, %do.body13.do.end30_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !386
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !387
  %17 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %ch_regs, align 4
  %add.ptr22 = getelementptr i8, ptr %18, i32 40
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr22) #7, !srcloc !367
  %20 = and i32 %19, 49152
  %tobool25.not = icmp eq i32 %20, 0
  br i1 %tobool25.not, label %do.end30.while.end_crit_edge, label %do.end30.do.end30_crit_edge

do.end30.do.end30_crit_edge:                      ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end30

do.end30.while.end_crit_edge:                     ; preds = %do.end30
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end30.while.end_crit_edge, %do.body13.while.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call16) #7
  br label %cleanup

cleanup:                                          ; preds = %while.end, %do.end.cleanup_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_xdmac_device_resume(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_device_resume.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_device_resume, %do.body9)) #7
          to label %if.then [label %do.body9], !srcloc !373

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_device_resume.__UNIQUE_ID_ddebug288, ptr noundef %device.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.129) #7
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 15
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %status.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 12
  %4 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile i32, ptr %status.i, align 4
  %6 = and i32 %5, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool18.not = icmp eq i32 %6, 0
  br i1 %tobool18.not, label %do.body9.cleanup_crit_edge, label %if.end21

do.body9.cleanup_crit_edge:                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end21:                                         ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  %mask = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 2
  %7 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %mask, align 4
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  %regs = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %regs, align 4
  %layout = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 6
  %12 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %layout, align 4
  %grwr = getelementptr inbounds %struct.at_xdmac_layout, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %grwr to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %grwr, align 1
  %conv22 = zext i8 %15 to i32
  %add.ptr = getelementptr i8, ptr %11, i32 %conv22
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %9) #7, !srcloc !370
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %status.i) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end21, %do.body9.cleanup_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_xdmac_device_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_device_terminate_all.__UNIQUE_ID_ddebug289, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_device_terminate_all, %do.body9)) #7
          to label %if.then [label %do.body9], !srcloc !373

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_device_terminate_all.__UNIQUE_ID_ddebug289, ptr noundef %device.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.130) #7
  br label %do.body9

do.body9:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 15
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %mask = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 2
  %4 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %mask, align 4
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %regs = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %8, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %6) #7, !srcloc !370
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr1870 = getelementptr i8, ptr %10, i32 36
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1870) #7, !srcloc !367
  %12 = tail call i32 @llvm.bswap.i32(i32 %11)
  %13 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %mask, align 4
  %and71 = and i32 %12, %14
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and71)
  %tobool22.not72 = icmp eq i32 %and71, 0
  br i1 %tobool22.not72, label %do.body9.while.end_crit_edge, label %do.body9.do.end27_crit_edge

do.body9.do.end27_crit_edge:                      ; preds = %do.body9
  br label %do.end27

do.body9.while.end_crit_edge:                     ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end27:                                         ; preds = %do.end27.do.end27_crit_edge, %do.body9.do.end27_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !388
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !389
  %15 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs, align 4
  %add.ptr18 = getelementptr i8, ptr %16, i32 36
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr18) #7, !srcloc !367
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mask, align 4
  %and = and i32 %18, %20
  %tobool22.not = icmp eq i32 %and, 0
  br i1 %tobool22.not, label %do.end27.while.end_crit_edge, label %do.end27.do.end27_crit_edge

do.end27.do.end27_crit_edge:                      ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end27.while.end_crit_edge:                     ; preds = %do.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end27.while.end_crit_edge, %do.body9.while.end_crit_edge
  %xfers_list = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 16
  %21 = ptrtoint ptr %xfers_list to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %xfers_list, align 4
  %cmp40.not73 = icmp eq ptr %22, %xfers_list
  br i1 %cmp40.not73, label %while.end.for.end_crit_edge, label %for.body.lr.ph

while.end.for.end_crit_edge:                      ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %while.end
  %free_descs_list = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17
  %prev.i68 = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 17, i32 1
  br label %for.body

for.body:                                         ; preds = %list_splice_tail_init.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in74 = phi ptr [ %22, %for.body.lr.ph ], [ %.pn, %list_splice_tail_init.exit.for.body_crit_edge ]
  %23 = ptrtoint ptr %.pn.in74 to i32
  call void @__asan_load4_noabort(i32 %23)
  %.pn = load ptr, ptr %.pn.in74, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in74) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in74, i32 0, i32 1
  %24 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %.pn.in74 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %.pn.in74, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %25, ptr %prev1.i.i.i, align 4
  %29 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store volatile ptr %27, ptr %25, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %30 = ptrtoint ptr %.pn.in74 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in74, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in74, i32 0, i32 1
  %31 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %descs_list = getelementptr i8, ptr %.pn.in74, i32 -8
  %32 = ptrtoint ptr %descs_list to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %descs_list, align 4
  %cmp.i.not.i = icmp eq ptr %33, %descs_list
  br i1 %cmp.i.not.i, label %list_del.exit.list_splice_tail_init.exit_crit_edge, label %if.then.i

list_del.exit.list_splice_tail_init.exit_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %prev.i68 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i68, align 4
  %prev2.i.i = getelementptr i8, ptr %.pn.in74, i32 -4
  %36 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %33, ptr %35, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %free_descs_list, ptr %37, align 4
  store ptr %37, ptr %prev.i68, align 4
  %41 = ptrtoint ptr %descs_list to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %descs_list, ptr %descs_list, align 4
  store ptr %descs_list, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %list_del.exit.list_splice_tail_init.exit_crit_edge
  %cmp40.not = icmp eq ptr %.pn, %xfers_list
  br i1 %cmp40.not, label %list_splice_tail_init.exit.for.end_crit_edge, label %list_splice_tail_init.exit.for.body_crit_edge

list_splice_tail_init.exit.for.body_crit_edge:    ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_splice_tail_init.exit.for.end_crit_edge:     ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_splice_tail_init.exit.for.end_crit_edge, %while.end.for.end_crit_edge
  %status = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 12
  tail call void @_clear_bit(i32 noundef 1, ptr noundef %status) #7
  tail call void @_clear_bit(i32 noundef 0, ptr noundef %status) #7
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at_xdmac_off(ptr nocapture noundef readonly %atxdmac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.at_xdmac, ptr %atxdmac, i32 0, i32 1
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 -1) #7, !srcloc !370
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %add.ptr211 = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr211) #7, !srcloc !367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not12 = icmp eq i32 %4, 0
  br i1 %tobool.not12, label %entry.while.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  br label %do.end

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %entry.do.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !371
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !372
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr2 = getelementptr i8, ptr %6, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2) #7, !srcloc !367
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr8 = getelementptr i8, ptr %9, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8, i32 -1) #7, !srcloc !370
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @at_xdmac_tasklet(ptr noundef %t) #2 align 64 {
entry:
  %dummy_result.i.i = alloca %struct.dmaengine_result, align 8
  %dummy_result.i.i.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -104
  %status.i = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  %lock = getelementptr i8, ptr %t, i32 72
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_handle_cyclic.__UNIQUE_ID_ddebug278, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_tasklet, %do.end.i)) #7
          to label %if.then.i [label %do.end.i], !srcloc !373

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr i8, ptr %t, i32 -84
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %irq_status.i = getelementptr i8, ptr %t, i32 -8
  %4 = ptrtoint ptr %irq_status.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %irq_status.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_handle_cyclic.__UNIQUE_ID_ddebug278, ptr noundef %device.i.i, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.134, i32 noundef %5) #7
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then
  %xfers_list.i = getelementptr i8, ptr %t, i32 116
  %6 = ptrtoint ptr %xfers_list.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile ptr, ptr %xfers_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %7, %xfers_list.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  br i1 %cmp.i.not.i, label %do.end.i.cleanup_crit_edge, label %if.end9.i

do.end.i.cleanup_crit_edge:                       ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9.i:                                        ; preds = %do.end.i
  %flags.i = getelementptr i8, ptr %7, i32 -120
  %8 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %9, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool13.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool13.not.i, label %if.end9.i.cleanup_crit_edge, label %if.then14.i

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then14.i:                                      ; preds = %if.end9.i
  %callback.i.i.i = getelementptr i8, ptr %7, i32 -100
  %10 = ptrtoint ptr %callback.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %callback.i.i.i, align 4
  %callback_result.i.i.i = getelementptr i8, ptr %7, i32 -96
  %12 = ptrtoint ptr %callback_result.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %callback_result.i.i.i, align 4
  %callback_param.i.i.i = getelementptr i8, ptr %7, i32 -92
  %14 = ptrtoint ptr %callback_param.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %callback_param.i.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #7
  %16 = ptrtoint ptr %dummy_result.i.i.i to i32
  call void @__asan_store8_noabort(i32 %16)
  store i64 0, ptr %dummy_result.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %13, null
  br i1 %tobool.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.then14.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %13(ptr noundef %15, ptr noundef nonnull %dummy_result.i.i.i) #7
  br label %dmaengine_desc_get_callback_invoke.exit.i

if.else.i.i.i:                                    ; preds = %if.then14.i
  %tobool4.not.i.i.i = icmp eq ptr %11, null
  br i1 %tobool4.not.i.i.i, label %if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge, label %if.then5.i.i.i

if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_desc_get_callback_invoke.exit.i

if.then5.i.i.i:                                   ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %11(ptr noundef %15) #7
  br label %dmaengine_desc_get_callback_invoke.exit.i

dmaengine_desc_get_callback_invoke.exit.i:        ; preds = %if.then5.i.i.i, %if.else.i.i.i.dmaengine_desc_get_callback_invoke.exit.i_crit_edge, %if.then.i.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_tasklet.__UNIQUE_ID_ddebug280, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_tasklet, %do.end)) #7
          to label %if.then7 [label %do.end], !srcloc !373

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr i8, ptr %t, i32 -84
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %18, i32 0, i32 1
  %irq_status = getelementptr i8, ptr %t, i32 -8
  %19 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq_status, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_tasklet.__UNIQUE_ID_ddebug280, ptr noundef %device.i, ptr noundef nonnull @.str.132, ptr noundef nonnull @.str.131, i32 noundef %20) #7
  br label %do.end

do.end:                                           ; preds = %if.then7, %if.end
  %irq_status10 = getelementptr i8, ptr %t, i32 -8
  %21 = ptrtoint ptr %irq_status10 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq_status10, align 4
  %23 = and i32 %22, 114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %24 = icmp eq i32 %23, 0
  br i1 %24, label %if.then15, label %if.end17

if.then15:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  br label %cleanup

if.end17:                                         ; preds = %do.end
  %and13 = and i32 %22, 112
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and13)
  %tobool14.not = icmp eq i32 %and13, 0
  br i1 %tobool14.not, label %if.end17.if.end22_crit_edge, label %if.then21

if.end17.if.end22_crit_edge:                      ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  tail call fastcc void @at_xdmac_handle_error(ptr noundef %add.ptr)
  br label %if.end22

if.end22:                                         ; preds = %if.then21, %if.end17.if.end22_crit_edge
  %xfers_list = getelementptr i8, ptr %t, i32 116
  %25 = ptrtoint ptr %xfers_list to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %xfers_list, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_tasklet.__UNIQUE_ID_ddebug281, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_tasklet, %do.end45)) #7
          to label %if.then40 [label %do.end45], !srcloc !373

if.then40:                                        ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr25 = getelementptr i8, ptr %26, i32 -164
  %dev.i94 = getelementptr i8, ptr %t, i32 -84
  %27 = ptrtoint ptr %dev.i94 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i94, align 4
  %device.i95 = getelementptr inbounds %struct.dma_chan_dev, ptr %28, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_tasklet.__UNIQUE_ID_ddebug281, ptr noundef %device.i95, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.131, ptr noundef %add.ptr25) #7
  br label %do.end45

do.end45:                                         ; preds = %if.then40, %if.end22
  %active_xfer = getelementptr i8, ptr %26, i32 -16
  %29 = ptrtoint ptr %active_xfer to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %active_xfer, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool46.not = icmp eq i8 %30, 0
  br i1 %tobool46.not, label %do.end50, label %if.end54

do.end50:                                         ; preds = %do.end45
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i96 = getelementptr i8, ptr %t, i32 -84
  %31 = ptrtoint ptr %dev.i96 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i96, align 4
  %device.i97 = getelementptr inbounds %struct.dma_chan_dev, ptr %32, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i97, ptr noundef nonnull @.str.133) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  br label %cleanup

if.end54:                                         ; preds = %do.end45
  %tx_dma_desc = getelementptr i8, ptr %26, i32 -124
  %33 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %tx_dma_desc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %34)
  %cmp.i = icmp slt i32 %34, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !385

do.body2.i:                                       ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #7, !srcloc !390
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.end54
  %chan.i = getelementptr i8, ptr %26, i32 -112
  %35 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %36, i32 0, i32 3
  %37 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %34, ptr %completed_cookie.i, align 4
  %38 = ptrtoint ptr %tx_dma_desc to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 0, ptr %tx_dma_desc, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %26) #7
  br i1 %call.i.i, label %if.end.i.i, label %dma_cookie_complete.exit.list_del.exit_crit_edge

dma_cookie_complete.exit.list_del.exit_crit_edge: ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i, align 4
  %41 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %26, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %dma_cookie_complete.exit.list_del.exit_crit_edge
  %45 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %26, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  %flags = getelementptr i8, ptr %26, i32 -120
  %47 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %flags, align 4
  %and56 = and i32 %48, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and56)
  %tobool57.not = icmp eq i32 %and56, 0
  br i1 %tobool57.not, label %list_del.exit.if.end59_crit_edge, label %if.then58

list_del.exit.if.end59_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end59

if.then58:                                        ; preds = %list_del.exit
  %callback.i.i = getelementptr i8, ptr %26, i32 -100
  %49 = ptrtoint ptr %callback.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %callback.i.i, align 4
  %callback_result.i.i = getelementptr i8, ptr %26, i32 -96
  %51 = ptrtoint ptr %callback_result.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %callback_result.i.i, align 4
  %callback_param.i.i = getelementptr i8, ptr %26, i32 -92
  %53 = ptrtoint ptr %callback_param.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %callback_param.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i.i) #7
  %55 = ptrtoint ptr %dummy_result.i.i to i32
  call void @__asan_store8_noabort(i32 %55)
  store i64 0, ptr %dummy_result.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %52, null
  br i1 %tobool.not.i.i, label %if.else.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.then58
  call void @__sanitizer_cov_trace_pc() #9
  call void %52(ptr noundef %54, ptr noundef nonnull %dummy_result.i.i) #7
  br label %dmaengine_desc_get_callback_invoke.exit

if.else.i.i:                                      ; preds = %if.then58
  %tobool4.not.i.i = icmp eq ptr %50, null
  br i1 %tobool4.not.i.i, label %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, label %if.then5.i.i

if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge: ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_desc_get_callback_invoke.exit

if.then5.i.i:                                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void %50(ptr noundef %54) #7
  br label %dmaengine_desc_get_callback_invoke.exit

dmaengine_desc_get_callback_invoke.exit:          ; preds = %if.then5.i.i, %if.else.i.i.dmaengine_desc_get_callback_invoke.exit_crit_edge, %if.then.i.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i.i) #7
  br label %if.end59

if.end59:                                         ; preds = %dmaengine_desc_get_callback_invoke.exit, %list_del.exit.if.end59_crit_edge
  call void @dma_run_dependencies(ptr noundef %tx_dma_desc) #7
  call void @_raw_spin_lock_irq(ptr noundef %lock) #7
  %descs_list = getelementptr i8, ptr %26, i32 -8
  %56 = ptrtoint ptr %descs_list to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %descs_list, align 4
  %cmp.i.not.i98 = icmp eq ptr %57, %descs_list
  br i1 %cmp.i.not.i98, label %if.end59.list_splice_tail_init.exit_crit_edge, label %if.then.i100

if.end59.list_splice_tail_init.exit_crit_edge:    ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit

if.then.i100:                                     ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #9
  %free_descs_list = getelementptr i8, ptr %t, i32 124
  %prev.i99 = getelementptr i8, ptr %t, i32 128
  %58 = ptrtoint ptr %prev.i99 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i99, align 4
  %prev2.i.i = getelementptr i8, ptr %26, i32 -4
  %60 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %57, ptr %59, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %free_descs_list, ptr %61, align 4
  store ptr %61, ptr %prev.i99, align 4
  %65 = ptrtoint ptr %descs_list to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %descs_list, ptr %descs_list, align 4
  store ptr %descs_list, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i100, %if.end59.list_splice_tail_init.exit_crit_edge
  %ch_regs.i.i = getelementptr i8, ptr %t, i32 -40
  %66 = ptrtoint ptr %ch_regs.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %ch_regs.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %67, i32 36
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #7, !srcloc !367
  %69 = call i32 @llvm.bswap.i32(i32 %68) #7
  %mask.i.i = getelementptr i8, ptr %t, i32 -36
  %70 = ptrtoint ptr %mask.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %mask.i.i, align 4
  %and.i.i = and i32 %69, %71
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.i.not.i, label %lor.lhs.false.i, label %list_splice_tail_init.exit.at_xdmac_advance_work.exit_crit_edge

list_splice_tail_init.exit.at_xdmac_advance_work.exit_crit_edge: ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_advance_work.exit

lor.lhs.false.i:                                  ; preds = %list_splice_tail_init.exit
  %72 = ptrtoint ptr %xfers_list to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %xfers_list, align 4
  %cmp.i.not.i102 = icmp eq ptr %73, %xfers_list
  br i1 %cmp.i.not.i102, label %lor.lhs.false.i.at_xdmac_advance_work.exit_crit_edge, label %if.end.i

lor.lhs.false.i.at_xdmac_advance_work.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_advance_work.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr i8, ptr %73, i32 -164
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_advance_work.__UNIQUE_ID_ddebug277, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_tasklet, %do.end.i105)) #7
          to label %if.then9.i [label %do.end.i105], !srcloc !373

if.then9.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i103 = getelementptr i8, ptr %t, i32 -84
  %74 = ptrtoint ptr %dev.i.i103 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %dev.i.i103, align 4
  %device.i.i104 = getelementptr inbounds %struct.dma_chan_dev, ptr %75, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_advance_work.__UNIQUE_ID_ddebug277, ptr noundef %device.i.i104, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, ptr noundef %add.ptr.i) #7
  br label %do.end.i105

do.end.i105:                                      ; preds = %if.then9.i, %if.end.i
  %active_xfer.i = getelementptr i8, ptr %73, i32 -16
  %76 = ptrtoint ptr %active_xfer.i to i32
  call void @__asan_load1_noabort(i32 %76)
  %77 = load i8, ptr %active_xfer.i, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %77)
  %tobool12.not.i = icmp eq i8 %77, 0
  br i1 %tobool12.not.i, label %if.then13.i, label %do.end.i105.at_xdmac_advance_work.exit_crit_edge

do.end.i105.at_xdmac_advance_work.exit_crit_edge: ; preds = %do.end.i105
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_advance_work.exit

if.then13.i:                                      ; preds = %do.end.i105
  call void @__sanitizer_cov_trace_pc() #9
  call fastcc void @at_xdmac_start_xfer(ptr noundef %add.ptr, ptr noundef %add.ptr.i) #7
  br label %at_xdmac_advance_work.exit

at_xdmac_advance_work.exit:                       ; preds = %if.then13.i, %do.end.i105.at_xdmac_advance_work.exit_crit_edge, %lor.lhs.false.i.at_xdmac_advance_work.exit_crit_edge, %list_splice_tail_init.exit.at_xdmac_advance_work.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #7
  br label %cleanup

cleanup:                                          ; preds = %at_xdmac_advance_work.exit, %do.end50, %if.then15, %dmaengine_desc_get_callback_invoke.exit.i, %if.end9.i.cleanup_crit_edge, %do.end.i.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @at_xdmac_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %of_dma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %of_dma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %4 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.143) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @dma_get_any_slave_channel(ptr noundef %1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end6, label %if.end7

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.146) #10
  br label %cleanup

if.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %6 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %args, align 4
  %shr = lshr i32 %7, 13
  %8 = trunc i32 %shr to i8
  %conv = and i8 %8, 1
  %memif = getelementptr inbounds %struct.at_xdmac_chan, ptr %call, i32 0, i32 6
  %9 = ptrtoint ptr %memif to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 %conv, ptr %memif, align 2
  %10 = load i32, ptr %args, align 4
  %shr11 = lshr i32 %10, 14
  %11 = trunc i32 %shr11 to i8
  %conv13 = and i8 %11, 1
  %perif = getelementptr inbounds %struct.at_xdmac_chan, ptr %call, i32 0, i32 5
  %12 = ptrtoint ptr %perif to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv13, ptr %perif, align 1
  %13 = load i32, ptr %args, align 4
  %shr16 = lshr i32 %13, 24
  %14 = trunc i32 %shr16 to i8
  %conv18 = and i8 %14, 127
  %perid = getelementptr inbounds %struct.at_xdmac_chan, ptr %call, i32 0, i32 4
  %15 = ptrtoint ptr %perid to i32
  call void @__asan_store1_noabort(i32 %15)
  store i8 %conv18, ptr %perid, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_xlate.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_xlate, %cleanup)) #7
          to label %if.then25 [label %cleanup], !srcloc !373

if.then25:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %memif to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %memif, align 2
  %conv27 = zext i8 %17 to i32
  %18 = ptrtoint ptr %perif to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %perif, align 1
  %conv29 = zext i8 %19 to i32
  %20 = ptrtoint ptr %perid to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %perid, align 4
  %conv31 = zext i8 %21 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_xlate.__UNIQUE_ID_ddebug243, ptr noundef %3, ptr noundef nonnull @.str.148, i32 noundef %conv27, i32 noundef %conv29, i32 noundef %conv31) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then25, %if.end7, %do.end6, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end6 ], [ %call, %if.then25 ], [ %call, %if.end7 ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at_xdmac_axi_config(ptr noundef %pdev) unnamed_addr #2 align 64 {
entry:
  %dma_requests = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_requests) #7
  %2 = ptrtoint ptr %dma_requests to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %dma_requests, align 4, !annotation !374
  %layout = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %layout, align 4
  %axi_config = getelementptr inbounds %struct.at_xdmac_layout, ptr %4, i32 0, i32 9
  %5 = ptrtoint ptr %axi_config to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %axi_config, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.149, ptr noundef nonnull %dma_requests, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool2.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool2.not, label %do.end, label %if.else

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.150) #10
  %regs = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %10, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 15728655) #7, !srcloc !370
  %11 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs, align 4
  %add.ptr9 = getelementptr i8, ptr %12, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9, i32 0) #7, !srcloc !370
  br label %cleanup

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %regs10 = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 1
  %13 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs10, align 4
  %add.ptr11 = getelementptr i8, ptr %14, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11, i32 1342178064) #7, !srcloc !370
  %15 = ptrtoint ptr %regs10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs10, align 4
  %add.ptr13 = getelementptr i8, ptr %16, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 252641280) #7, !srcloc !370
  br label %cleanup

cleanup:                                          ; preds = %if.else, %do.end, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_requests) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @at_xdmac_tx_submit(ptr noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr.i = getelementptr i8, ptr %tx, i32 -40
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.at_xdmac_chan, ptr %1, i32 0, i32 15
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %5, 1
  %6 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #7
  %7 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cookie2.i, align 4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %tx, align 4
  %xfer_node = getelementptr i8, ptr %tx, i32 124
  %xfers_list = getelementptr inbounds %struct.at_xdmac_chan, ptr %1, i32 0, i32 16
  %prev.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %1, i32 0, i32 16, i32 1
  %9 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %xfer_node, ptr noundef %10, ptr noundef %xfers_list) #7
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add_tail.exit_crit_edge

entry.list_add_tail.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %xfer_node, ptr %prev.i, align 4
  %12 = ptrtoint ptr %xfer_node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %xfers_list, ptr %xfer_node, align 4
  %prev3.i.i = getelementptr i8, ptr %tx, i32 128
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev3.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %xfer_node, ptr %10, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %entry.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_tx_submit.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_tx_submit, %do.end18)) #7
          to label %if.then [label %do.end18], !srcloc !373

if.then:                                          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %16, i32 0, i32 5
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %18, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_tx_submit.__UNIQUE_ID_ddebug240, ptr noundef %device.i, ptr noundef nonnull @.str.48, ptr noundef nonnull @.str.47, ptr noundef %1, ptr noundef %add.ptr.i) #7
  br label %do.end18

do.end18:                                         ; preds = %if.then, %list_add_tail.exit
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at_xdmac_start_xfer(ptr noundef %atchan, ptr noundef %first) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %atchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atchan, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_start_xfer.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_start_xfer, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !373

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_start_xfer.__UNIQUE_ID_ddebug236, ptr noundef %device.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.57, ptr noundef %first) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %active_xfer = getelementptr inbounds %struct.at_xdmac_desc, ptr %first, i32 0, i32 4
  %4 = ptrtoint ptr %active_xfer to i32
  call void @__asan_store1_noabort(i32 %4)
  store i8 1, ptr %active_xfer, align 4
  %phys = getelementptr inbounds %struct.at_xdmac_desc, ptr %first, i32 0, i32 2, i32 2
  %5 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %phys, align 8
  %and = and i32 %6, -4
  %layout = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %layout, align 4
  %sdif = getelementptr inbounds %struct.at_xdmac_layout, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %sdif to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sdif, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool7.not = icmp eq i8 %10, 0
  br i1 %tobool7.not, label %do.end.if.end10_crit_edge, label %if.then8

do.end.if.end10_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end10

if.then8:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %memif = getelementptr inbounds %struct.at_xdmac_chan, ptr %atchan, i32 0, i32 6
  %11 = ptrtoint ptr %memif to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %memif, align 2
  %13 = and i8 %12, 1
  %and9 = zext i8 %13 to i32
  %or = or i32 %and, %and9
  br label %if.end10

if.end10:                                         ; preds = %if.then8, %do.end.if.end10_crit_edge
  %reg.0 = phi i32 [ %or, %if.then8 ], [ %and, %do.end.if.end10_crit_edge ]
  %14 = tail call i32 @llvm.bswap.i32(i32 %reg.0)
  %ch_regs = getelementptr inbounds %struct.at_xdmac_chan, ptr %atchan, i32 0, i32 1
  %15 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_regs, align 4
  %add.ptr = getelementptr i8, ptr %16, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %14) #7, !srcloc !370
  %status.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %atchan, i32 0, i32 12
  %17 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool12.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool12.not, label %if.else, label %if.end10.if.end19_crit_edge

if.end10.if.end19_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.else:                                          ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #9
  %mbr_ubc = getelementptr inbounds %struct.at_xdmac_lld, ptr %first, i32 0, i32 1
  %19 = ptrtoint ptr %mbr_ubc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %mbr_ubc, align 4
  %and14 = and i32 %20, 402653184
  call void @__sanitizer_cov_trace_const_cmp4(i32 402653184, i32 %and14)
  %cmp = icmp eq i32 %and14, 402653184
  %. = select i1 %cmp, i32 520093696, i32 385875968
  br label %if.end19

if.end19:                                         ; preds = %if.else, %if.end10.if.end19_crit_edge
  %reg.1 = phi i32 [ 251658240, %if.end10.if.end19_crit_edge ], [ %., %if.else ]
  %mbr_cfg = getelementptr inbounds %struct.at_xdmac_lld, ptr %first, i32 0, i32 4
  %21 = ptrtoint ptr %mbr_cfg to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %mbr_cfg, align 8
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ch_regs, align 4
  %add.ptr22 = getelementptr i8, ptr %25, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %23) #7, !srcloc !370
  %26 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ch_regs, align 4
  %add.ptr25 = getelementptr i8, ptr %27, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr25, i32 %reg.1) #7, !srcloc !370
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_start_xfer.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_start_xfer, %do.end74)) #7
          to label %if.then40 [label %do.end74], !srcloc !373

if.then40:                                        ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i222 = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %28 = ptrtoint ptr %dev.i222 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i222, align 4
  %device.i223 = getelementptr inbounds %struct.dma_chan_dev, ptr %29, i32 0, i32 1
  %30 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %ch_regs, align 4
  %add.ptr44 = getelementptr i8, ptr %31, i32 40
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr44) #7, !srcloc !367
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %34 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ch_regs, align 4
  %add.ptr49 = getelementptr i8, ptr %35, i32 24
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr49) #7, !srcloc !367
  %37 = tail call i32 @llvm.bswap.i32(i32 %36)
  %38 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ch_regs, align 4
  %add.ptr54 = getelementptr i8, ptr %39, i32 28
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #7, !srcloc !367
  %41 = tail call i32 @llvm.bswap.i32(i32 %40)
  %42 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ch_regs, align 4
  %add.ptr59 = getelementptr i8, ptr %43, i32 16
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59) #7, !srcloc !367
  %45 = tail call i32 @llvm.bswap.i32(i32 %44)
  %46 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %ch_regs, align 4
  %add.ptr64 = getelementptr i8, ptr %47, i32 20
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr64) #7, !srcloc !367
  %49 = tail call i32 @llvm.bswap.i32(i32 %48)
  %50 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ch_regs, align 4
  %add.ptr69 = getelementptr i8, ptr %51, i32 32
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr69) #7, !srcloc !367
  %53 = tail call i32 @llvm.bswap.i32(i32 %52)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_start_xfer.__UNIQUE_ID_ddebug237, ptr noundef %device.i223, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.57, i32 noundef %33, i32 noundef %37, i32 noundef %41, i32 noundef %45, i32 noundef %49, i32 noundef %53) #7
  br label %do.end74

do.end74:                                         ; preds = %if.then40, %if.end19
  %54 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %ch_regs, align 4
  %add.ptr76 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr76, i32 -1) #7, !srcloc !370
  %56 = ptrtoint ptr %mbr_cfg to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mbr_cfg, align 8
  %and.i = and i32 %57, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  %spec.select = select i1 %tobool.i.not, i32 805306368, i32 1879048192
  %58 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile i32, ptr %status.i, align 4
  %and1.i.i225 = and i32 %59, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i225)
  %tobool84.not = icmp eq i32 %and1.i.i225, 0
  br i1 %tobool84.not, label %if.else89, label %if.then85

if.then85:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #9
  %60 = or i32 %spec.select, 16777216
  %61 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %ch_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %62, i32 %60) #7, !srcloc !370
  br label %if.end93

if.else89:                                        ; preds = %do.end74
  call void @__sanitizer_cov_trace_pc() #9
  %63 = or i32 %spec.select, 33554432
  %64 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %ch_regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %65, i32 %63) #7, !srcloc !370
  br label %if.end93

if.end93:                                         ; preds = %if.else89, %if.then85
  %mask = getelementptr inbounds %struct.at_xdmac_chan, ptr %atchan, i32 0, i32 2
  %66 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %mask, align 4
  %68 = tail call i32 @llvm.bswap.i32(i32 %67)
  %regs = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 1
  %69 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %regs, align 4
  %add.ptr94 = getelementptr i8, ptr %70, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr94, i32 %68) #7, !srcloc !370
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_start_xfer.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_start_xfer, %do.body116)) #7
          to label %if.then109 [label %do.body116], !srcloc !373

if.then109:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i226 = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %71 = ptrtoint ptr %dev.i226 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %dev.i226, align 4
  %device.i227 = getelementptr inbounds %struct.dma_chan_dev, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %mask, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_start_xfer.__UNIQUE_ID_ddebug238, ptr noundef %device.i227, ptr noundef nonnull @.str.58, ptr noundef nonnull @.str.57, i32 noundef %74) #7
  br label %do.body116

do.body116:                                       ; preds = %if.then109, %if.end93
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !391
  tail call void @arm_heavy_mb() #7
  %75 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %mask, align 4
  %77 = tail call i32 @llvm.bswap.i32(i32 %76)
  %78 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %regs, align 4
  %add.ptr121 = getelementptr i8, ptr %79, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr121, i32 %77) #7, !srcloc !370
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_start_xfer.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_start_xfer, %do.end171)) #7
          to label %if.then136 [label %do.end171], !srcloc !373

if.then136:                                       ; preds = %do.body116
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i228 = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %80 = ptrtoint ptr %dev.i228 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev.i228, align 4
  %device.i229 = getelementptr inbounds %struct.dma_chan_dev, ptr %81, i32 0, i32 1
  %82 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %ch_regs, align 4
  %add.ptr141 = getelementptr i8, ptr %83, i32 40
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr141) #7, !srcloc !367
  %85 = tail call i32 @llvm.bswap.i32(i32 %84)
  %86 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %ch_regs, align 4
  %add.ptr146 = getelementptr i8, ptr %87, i32 24
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr146) #7, !srcloc !367
  %89 = tail call i32 @llvm.bswap.i32(i32 %88)
  %90 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ch_regs, align 4
  %add.ptr151 = getelementptr i8, ptr %91, i32 28
  %92 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr151) #7, !srcloc !367
  %93 = tail call i32 @llvm.bswap.i32(i32 %92)
  %94 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %ch_regs, align 4
  %add.ptr156 = getelementptr i8, ptr %95, i32 16
  %96 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr156) #7, !srcloc !367
  %97 = tail call i32 @llvm.bswap.i32(i32 %96)
  %98 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %ch_regs, align 4
  %add.ptr161 = getelementptr i8, ptr %99, i32 20
  %100 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr161) #7, !srcloc !367
  %101 = tail call i32 @llvm.bswap.i32(i32 %100)
  %102 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %ch_regs, align 4
  %add.ptr166 = getelementptr i8, ptr %103, i32 32
  %104 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr166) #7, !srcloc !367
  %105 = tail call i32 @llvm.bswap.i32(i32 %104)
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_start_xfer.__UNIQUE_ID_ddebug239, ptr noundef %device.i229, ptr noundef nonnull @.str.36, ptr noundef nonnull @.str.57, i32 noundef %85, i32 noundef %89, i32 noundef %93, i32 noundef %97, i32 noundef %101, i32 noundef %105) #7
  br label %do.end171

do.end171:                                        ; preds = %if.then136, %do.body116
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @at_xdmac_compute_chan_conf(ptr nocapture noundef %chan, i32 noundef %direction) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %2, ptr @__sancov_gen_cov_switch_values)
  switch i32 %direction, label %entry.do.body107_crit_edge [
    i32 2, label %if.then
    i32 1, label %if.then45
  ]

entry.do.body107_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body107

if.then:                                          ; preds = %entry
  %perid = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 4
  %3 = ptrtoint ptr %perid to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %perid, align 4
  %5 = and i8 %4, 127
  %and = zext i8 %5 to i32
  %shl = shl nuw nsw i32 %and, 24
  %or7 = or i32 %shl, 262151
  %cfg = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %or7, ptr %cfg, align 4
  %layout = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 6
  %7 = ptrtoint ptr %layout to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %layout, align 4
  %sdif = getelementptr inbounds %struct.at_xdmac_layout, ptr %8, i32 0, i32 8
  %9 = ptrtoint ptr %sdif to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %sdif, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not = icmp eq i8 %10, 0
  br i1 %tobool.not, label %if.then.if.end_crit_edge, label %if.then8

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then8:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %memif = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 6
  %11 = ptrtoint ptr %memif to i32
  call void @__asan_load1_noabort(i32 %11)
  %12 = load i8, ptr %memif, align 2
  %13 = and i8 %12, 1
  %and10 = zext i8 %13 to i32
  %shl11 = shl nuw nsw i32 %and10, 14
  %perif = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 5
  %14 = ptrtoint ptr %perif to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %perif, align 1
  %16 = and i8 %15, 1
  %and13 = zext i8 %16 to i32
  %shl14 = shl nuw nsw i32 %and13, 13
  %or15 = or i32 %shl14, %shl11
  %or17 = or i32 %or15, %or7
  %17 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or17, ptr %cfg, align 4
  br label %if.end

if.end:                                           ; preds = %if.then8, %if.then.if.end_crit_edge
  %src_maxburst = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 14, i32 5
  %18 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %src_maxburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %iszero = icmp eq i32 %19, 0
  br i1 %iszero, label %do.end, label %if.end22

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %20 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %21, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.73) #10
  br label %cleanup

if.end22:                                         ; preds = %if.end
  %22 = tail call i32 @llvm.cttz.i32(i32 %19, i1 true), !range !392
  %and23 = shl nuw nsw i32 %22, 8
  %shl24 = and i32 %and23, 1792
  %23 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %cfg, align 4
  %or26 = or i32 %24, %shl24
  store i32 %or26, ptr %cfg, align 4
  %src_addr_width = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 14, i32 3
  %25 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %src_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %iszero28 = icmp eq i32 %26, 0
  br i1 %iszero28, label %do.end36, label %if.end22.do.body107.sink.split_crit_edge

if.end22.do.body107.sink.split_crit_edge:         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body107.sink.split

do.end36:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i154 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %27 = ptrtoint ptr %dev.i154 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i154, align 4
  %device.i155 = getelementptr inbounds %struct.dma_chan_dev, ptr %28, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i155, ptr noundef nonnull @.str.76) #10
  br label %cleanup

if.then45:                                        ; preds = %entry
  %perid46 = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 4
  %29 = ptrtoint ptr %perid46 to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %perid46, align 4
  %31 = and i8 %30, 127
  %and48 = zext i8 %31 to i32
  %shl49 = shl nuw nsw i32 %and48, 24
  %or55 = or i32 %shl49, 65559
  %cfg56 = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 3
  %32 = ptrtoint ptr %cfg56 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %or55, ptr %cfg56, align 4
  %layout57 = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 6
  %33 = ptrtoint ptr %layout57 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %layout57, align 4
  %sdif58 = getelementptr inbounds %struct.at_xdmac_layout, ptr %34, i32 0, i32 8
  %35 = ptrtoint ptr %sdif58 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sdif58, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool59.not = icmp eq i8 %36, 0
  br i1 %tobool59.not, label %if.then45.if.end72_crit_edge, label %if.then60

if.then45.if.end72_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72

if.then60:                                        ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #9
  %perif61 = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 5
  %37 = ptrtoint ptr %perif61 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %perif61, align 1
  %39 = and i8 %38, 1
  %and63 = zext i8 %39 to i32
  %shl64 = shl nuw nsw i32 %and63, 14
  %memif65 = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 6
  %40 = ptrtoint ptr %memif65 to i32
  call void @__asan_load1_noabort(i32 %40)
  %41 = load i8, ptr %memif65, align 2
  %42 = and i8 %41, 1
  %and67 = zext i8 %42 to i32
  %shl68 = shl nuw nsw i32 %and67, 13
  %or69 = or i32 %shl68, %shl64
  %or71 = or i32 %or69, %or55
  %43 = ptrtoint ptr %cfg56 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %or71, ptr %cfg56, align 4
  br label %if.end72

if.end72:                                         ; preds = %if.then60, %if.then45.if.end72_crit_edge
  %dst_maxburst = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 14, i32 6
  %44 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dst_maxburst, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %iszero74 = icmp eq i32 %45, 0
  br i1 %iszero74, label %do.end82, label %if.end84

do.end82:                                         ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i156 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %46 = ptrtoint ptr %dev.i156 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i156, align 4
  %device.i157 = getelementptr inbounds %struct.dma_chan_dev, ptr %47, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i157, ptr noundef nonnull @.str.73) #10
  br label %cleanup

if.end84:                                         ; preds = %if.end72
  %48 = tail call i32 @llvm.cttz.i32(i32 %45, i1 true), !range !392
  %and85 = shl nuw nsw i32 %48, 8
  %shl86 = and i32 %and85, 1792
  %49 = ptrtoint ptr %cfg56 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cfg56, align 4
  %or88 = or i32 %50, %shl86
  store i32 %or88, ptr %cfg56, align 4
  %dst_addr_width = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 14, i32 4
  %51 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %dst_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %52)
  %iszero90 = icmp eq i32 %52, 0
  br i1 %iszero90, label %do.end98, label %if.end84.do.body107.sink.split_crit_edge

if.end84.do.body107.sink.split_crit_edge:         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body107.sink.split

do.end98:                                         ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i158 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %53 = ptrtoint ptr %dev.i158 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i158, align 4
  %device.i159 = getelementptr inbounds %struct.dma_chan_dev, ptr %54, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i159, ptr noundef nonnull @.str.81) #10
  br label %cleanup

do.body107.sink.split:                            ; preds = %if.end84.do.body107.sink.split_crit_edge, %if.end22.do.body107.sink.split_crit_edge
  %.sink163 = phi i32 [ %26, %if.end22.do.body107.sink.split_crit_edge ], [ %52, %if.end84.do.body107.sink.split_crit_edge ]
  %or26.sink = phi i32 [ %or26, %if.end22.do.body107.sink.split_crit_edge ], [ %or88, %if.end84.do.body107.sink.split_crit_edge ]
  %cfg.sink = phi ptr [ %cfg, %if.end22.do.body107.sink.split_crit_edge ], [ %cfg56, %if.end84.do.body107.sink.split_crit_edge ]
  %55 = tail call i32 @llvm.cttz.i32(i32 %.sink163, i1 true), !range !392
  %and39 = shl nuw nsw i32 %55, 11
  %shl40 = and i32 %and39, 6144
  %or42 = or i32 %shl40, %or26.sink
  %56 = ptrtoint ptr %cfg.sink to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or42, ptr %cfg.sink, align 4
  br label %do.body107

do.body107:                                       ; preds = %do.body107.sink.split, %entry.do.body107_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_compute_chan_conf.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_compute_chan_conf, %cleanup)) #7
          to label %if.then113 [label %cleanup], !srcloc !373

if.then113:                                       ; preds = %do.body107
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i160 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %57 = ptrtoint ptr %dev.i160 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i160, align 4
  %device.i161 = getelementptr inbounds %struct.dma_chan_dev, ptr %58, i32 0, i32 1
  %cfg115 = getelementptr inbounds %struct.at_xdmac_chan, ptr %chan, i32 0, i32 3
  %59 = ptrtoint ptr %cfg115 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %cfg115, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_compute_chan_conf.__UNIQUE_ID_ddebug244, ptr noundef %device.i161, ptr noundef nonnull @.str.83, ptr noundef nonnull @.str.74, i32 noundef %60) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then113, %do.body107, %do.end98, %do.end82, %do.end36, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end36 ], [ -22, %do.end82 ], [ -22, %do.end98 ], [ 0, %if.then113 ], [ 0, %do.body107 ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @at_xdmac_interleaved_queue_desc(ptr nocapture noundef readonly %chan, ptr noundef %atchan, ptr noundef %prev, i32 noundef %src, i32 noundef %dst, ptr nocapture noundef readonly %xt, ptr nocapture noundef readonly %chunk) unnamed_addr #2 align 64 {
entry:
  %phys.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %or = or i32 %dst, %src
  %0 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %chunk, align 4
  %or1 = or i32 %or, %1
  %and.i = and i32 %or1, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_interleaved_queue_desc, %at_xdmac_align_width.exit)) #7
          to label %if.then5.i [label %at_xdmac_align_width.exit], !srcloc !373

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug253, ptr noundef %device.i.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93) #7
  br label %at_xdmac_align_width.exit

if.else.i:                                        ; preds = %entry
  %and7.i = and i32 %or1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else29.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_interleaved_queue_desc, %at_xdmac_align_width.exit)) #7
          to label %if.then24.i [label %at_xdmac_align_width.exit], !srcloc !373

if.then24.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i89.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i89.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i89.i, align 4
  %device.i90.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug254, ptr noundef %device.i90.i, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93) #7
  br label %at_xdmac_align_width.exit

if.else29.i:                                      ; preds = %if.else.i
  %and30.i = and i32 %or1, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.else52.i

if.then32.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_interleaved_queue_desc, %at_xdmac_align_width.exit)) #7
          to label %if.then47.i [label %at_xdmac_align_width.exit], !srcloc !373

if.then47.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i91.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i91.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i91.i, align 4
  %device.i92.i = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug255, ptr noundef %device.i92.i, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.93) #7
  br label %at_xdmac_align_width.exit

if.else52.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_interleaved_queue_desc, %at_xdmac_align_width.exit)) #7
          to label %if.then67.i [label %at_xdmac_align_width.exit], !srcloc !373

if.then67.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i93.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i93.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i93.i, align 4
  %device.i94.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug256, ptr noundef %device.i94.i, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.93) #7
  br label %at_xdmac_align_width.exit

at_xdmac_align_width.exit:                        ; preds = %if.then67.i, %if.else52.i, %if.then47.i, %if.then32.i, %if.then24.i, %if.then9.i, %if.then5.i, %if.then.i
  %width.0.i = phi i32 [ 0, %if.then67.i ], [ 1, %if.then47.i ], [ 2, %if.then24.i ], [ 3, %if.then5.i ], [ 3, %if.then.i ], [ 2, %if.then9.i ], [ 1, %if.then32.i ], [ 0, %if.else52.i ]
  %10 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %chunk, align 4
  %shl = shl nuw nsw i32 16777215, %width.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %shl)
  %cmp.not = icmp ult i32 %11, %shl
  br i1 %cmp.not, label %if.end11, label %do.body

do.body:                                          ; preds = %at_xdmac_align_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_interleaved_queue_desc.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_interleaved_queue_desc, %cleanup)) #7
          to label %if.then7 [label %cleanup], !srcloc !373

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %chunk, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_interleaved_queue_desc.__UNIQUE_ID_ddebug257, ptr noundef %device.i, ptr noundef nonnull @.str.90, ptr noundef nonnull @.str.89, i32 noundef %15, i32 noundef %shl) #7
  br label %cleanup

if.end11:                                         ; preds = %at_xdmac_align_width.exit
  %tobool12.not = icmp eq ptr %prev, null
  br i1 %tobool12.not, label %if.end11.if.end33_crit_edge, label %do.body14

if.end11.if.end33_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end33

do.body14:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_interleaved_queue_desc.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_interleaved_queue_desc, %if.end33)) #7
          to label %if.then28 [label %if.end33], !srcloc !373

if.then28:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i163 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %16 = ptrtoint ptr %dev.i163 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i163, align 4
  %device.i164 = getelementptr inbounds %struct.dma_chan_dev, ptr %17, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_interleaved_queue_desc.__UNIQUE_ID_ddebug258, ptr noundef %device.i164, ptr noundef nonnull @.str.91, ptr noundef nonnull %prev) #7
  br label %if.end33

if.end33:                                         ; preds = %if.then28, %do.body14, %if.end11.if.end33_crit_edge
  %src_inc = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 3
  %18 = ptrtoint ptr %src_inc to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %src_inc, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool34.not = icmp eq i8 %19, 0
  br i1 %tobool34.not, label %if.end33.if.end41_crit_edge, label %if.then35

if.end33.if.end41_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end41

if.then35:                                        ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #9
  %src_sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 5
  %20 = ptrtoint ptr %src_sgl to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %src_sgl, align 2, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool36.not = icmp eq i8 %21, 0
  %. = select i1 %tobool36.not, i32 2130771974, i32 2130837510
  br label %if.end41

if.end41:                                         ; preds = %if.then35, %if.end33.if.end41_crit_edge
  %chan_cc.0 = phi i32 [ 2130706438, %if.end33.if.end41_crit_edge ], [ %., %if.then35 ]
  %dst_inc = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 4
  %22 = ptrtoint ptr %dst_inc to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dst_inc, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool42.not = icmp eq i8 %23, 0
  br i1 %tobool42.not, label %if.end41.do.body52_crit_edge, label %if.then43

if.end41.do.body52_crit_edge:                     ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body52

if.then43:                                        ; preds = %if.end41
  %dst_sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 6
  %24 = ptrtoint ptr %dst_sgl to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %dst_sgl, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool44.not = icmp eq i8 %25, 0
  br i1 %tobool44.not, label %if.else47, label %if.then45

if.then45:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %or46 = or i32 %chan_cc.0, 524288
  br label %do.body52

if.else47:                                        ; preds = %if.then43
  call void @__sanitizer_cov_trace_pc() #9
  %or48 = or i32 %chan_cc.0, 262144
  br label %do.body52

do.body52:                                        ; preds = %if.else47, %if.then45, %if.end41.do.body52_crit_edge
  %chan_cc.1 = phi i32 [ %or46, %if.then45 ], [ %or48, %if.else47 ], [ %chan_cc.0, %if.end41.do.body52_crit_edge ]
  %lock = getelementptr inbounds %struct.at_xdmac_chan, ptr %atchan, i32 0, i32 15
  %call56 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %free_descs_list.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %atchan, i32 0, i32 17
  %26 = ptrtoint ptr %free_descs_list.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %free_descs_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %27, %free_descs_list.i
  br i1 %cmp.i.not.i, label %if.then.i165, label %if.else.i166

if.then.i165:                                     ; preds = %do.body52
  %28 = ptrtoint ptr %atchan to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %atchan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i.i) #7
  %30 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 -1, ptr %phys.i.i, align 4, !annotation !374
  %at_xdmac_desc_pool.i.i = getelementptr inbounds %struct.at_xdmac, ptr %29, i32 0, i32 5
  %31 = ptrtoint ptr %at_xdmac_desc_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %at_xdmac_desc_pool.i.i, align 4
  %call.i.i.i = call ptr @dma_pool_alloc(ptr noundef %32, i32 noundef 2304, ptr noundef nonnull %phys.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i165.at_xdmac_alloc_desc.exit.i_crit_edge, label %if.then.i.i

if.then.i165.at_xdmac_alloc_desc.exit.i_crit_edge: ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_alloc_desc.exit.i

if.then.i.i:                                      ; preds = %if.then.i165
  call void @__sanitizer_cov_trace_pc() #9
  %descs_list.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %descs_list.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %descs_list.i.i, ptr %descs_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 6, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %descs_list.i.i, ptr %prev.i.i.i, align 4
  %tx_dma_desc.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %tx_dma_desc.i.i, ptr noundef %atchan) #7
  %tx_submit.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2, i32 4
  %35 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @at_xdmac_tx_submit, ptr %tx_submit.i.i, align 8
  %36 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phys.i.i, align 4
  %phys4.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2, i32 2
  %38 = ptrtoint ptr %phys4.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %37, ptr %phys4.i.i, align 8
  br label %at_xdmac_alloc_desc.exit.i

at_xdmac_alloc_desc.exit.i:                       ; preds = %if.then.i.i, %if.then.i165.at_xdmac_alloc_desc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i.i) #7
  br label %at_xdmac_get_desc.exit

if.else.i166:                                     ; preds = %do.body52
  %add.ptr.i = getelementptr i8, ptr %27, i32 -140
  %call.i.i7.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %27) #7
  br i1 %call.i.i7.i, label %if.end.i.i.i, label %if.else.i166.list_del.exit.i_crit_edge

if.else.i166.list_del.exit.i_crit_edge:           ; preds = %if.else.i166
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i166
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i8.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %39 = ptrtoint ptr %prev.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev.i.i8.i, align 4
  %41 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %27, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev1.i.i.i.i, align 4
  %44 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %42, ptr %40, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.else.i166.list_del.exit.i_crit_edge
  %45 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %47 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 36)
  %descs_list.i9.i = getelementptr i8, ptr %27, i32 16
  %48 = ptrtoint ptr %descs_list.i9.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %descs_list.i9.i, ptr %descs_list.i9.i, align 4
  %prev.i.i10.i = getelementptr i8, ptr %27, i32 20
  %49 = ptrtoint ptr %prev.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %descs_list.i9.i, ptr %prev.i.i10.i, align 4
  %direction.i.i = getelementptr i8, ptr %27, i32 -104
  %50 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 4, ptr %direction.i.i, align 4
  %xfer_size.i.i = getelementptr i8, ptr %27, i32 12
  %51 = ptrtoint ptr %xfer_size.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 0, ptr %xfer_size.i.i, align 8
  %active_xfer.i.i = getelementptr i8, ptr %27, i32 8
  %52 = ptrtoint ptr %active_xfer.i.i to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 0, ptr %active_xfer.i.i, align 4
  br label %at_xdmac_get_desc.exit

at_xdmac_get_desc.exit:                           ; preds = %list_del.exit.i, %at_xdmac_alloc_desc.exit.i
  %desc.0.i = phi ptr [ %call.i.i.i, %at_xdmac_alloc_desc.exit.i ], [ %add.ptr.i, %list_del.exit.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call56) #7
  %tobool63.not = icmp eq ptr %desc.0.i, null
  br i1 %tobool63.not, label %do.end67, label %if.end69

do.end67:                                         ; preds = %at_xdmac_get_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i167 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %53 = ptrtoint ptr %dev.i167 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %dev.i167, align 4
  %device.i168 = getelementptr inbounds %struct.dma_chan_dev, ptr %54, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i168, ptr noundef nonnull @.str.68) #10
  br label %cleanup

if.end69:                                         ; preds = %at_xdmac_get_desc.exit
  %and = shl nuw nsw i32 %width.0.i, 11
  %or71 = or i32 %chan_cc.1, %and
  %55 = ptrtoint ptr %chunk to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %chunk, align 4
  %shr = lshr i32 %56, %width.0.i
  %mbr_sa = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 2
  %57 = ptrtoint ptr %mbr_sa to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %src, ptr %mbr_sa, align 8
  %mbr_da = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 3
  %58 = ptrtoint ptr %mbr_da to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %dst, ptr %mbr_da, align 4
  %59 = ptrtoint ptr %src_inc to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %src_inc, align 4, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %60)
  %tobool.not.i169 = icmp eq i8 %60, 0
  br i1 %tobool.not.i169, label %if.end69.if.end7.i.i_crit_edge, label %if.then.i.i170

if.end69.if.end7.i.i_crit_edge:                   ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

if.then.i.i170:                                   ; preds = %if.end69
  %src_icg.i = getelementptr inbounds %struct.data_chunk, ptr %chunk, i32 0, i32 3
  %61 = ptrtoint ptr %src_icg.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %src_icg.i, align 4
  %icg.i = getelementptr inbounds %struct.data_chunk, ptr %chunk, i32 0, i32 1
  %63 = ptrtoint ptr %icg.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %icg.i, align 4
  %src_sgl.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 5
  %65 = ptrtoint ptr %src_sgl.i to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %src_sgl.i, align 2, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %66)
  %tobool1.i = icmp ne i8 %66, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %62)
  %tobool2.not.i.i = icmp ne i32 %62, 0
  %brmerge.i.i = or i1 %tobool2.not.i.i, %tobool1.i
  %dir_icg.mux.i.i = select i1 %tobool2.not.i.i, i32 %62, i32 %64
  br i1 %brmerge.i.i, label %if.then.i.i170.dmaengine_get_src_icg.exit_crit_edge, label %if.then.i.i170.if.end7.i.i_crit_edge

if.then.i.i170.if.end7.i.i_crit_edge:             ; preds = %if.then.i.i170
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i

if.then.i.i170.dmaengine_get_src_icg.exit_crit_edge: ; preds = %if.then.i.i170
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_get_src_icg.exit

if.end7.i.i:                                      ; preds = %if.then.i.i170.if.end7.i.i_crit_edge, %if.end69.if.end7.i.i_crit_edge
  br label %dmaengine_get_src_icg.exit

dmaengine_get_src_icg.exit:                       ; preds = %if.end7.i.i, %if.then.i.i170.dmaengine_get_src_icg.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end7.i.i ], [ %dir_icg.mux.i.i, %if.then.i.i170.dmaengine_get_src_icg.exit_crit_edge ]
  %mbr_sus = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 7
  %67 = ptrtoint ptr %mbr_sus to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %retval.0.i.i, ptr %mbr_sus, align 4
  %68 = ptrtoint ptr %dst_inc to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %dst_inc, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i171 = icmp eq i8 %69, 0
  br i1 %tobool.not.i171, label %dmaengine_get_src_icg.exit.if.end7.i.i178_crit_edge, label %if.then.i.i177

dmaengine_get_src_icg.exit.if.end7.i.i178_crit_edge: ; preds = %dmaengine_get_src_icg.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i178

if.then.i.i177:                                   ; preds = %dmaengine_get_src_icg.exit
  %dst_icg.i = getelementptr inbounds %struct.data_chunk, ptr %chunk, i32 0, i32 2
  %70 = ptrtoint ptr %dst_icg.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dst_icg.i, align 4
  %icg.i172 = getelementptr inbounds %struct.data_chunk, ptr %chunk, i32 0, i32 1
  %72 = ptrtoint ptr %icg.i172 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %icg.i172, align 4
  %dst_sgl.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 6
  %74 = ptrtoint ptr %dst_sgl.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %dst_sgl.i, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %75)
  %tobool1.i173 = icmp ne i8 %75, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %tobool2.not.i.i174 = icmp ne i32 %71, 0
  %brmerge.i.i175 = or i1 %tobool2.not.i.i174, %tobool1.i173
  %dir_icg.mux.i.i176 = select i1 %tobool2.not.i.i174, i32 %71, i32 %73
  br i1 %brmerge.i.i175, label %if.then.i.i177.dmaengine_get_dst_icg.exit_crit_edge, label %if.then.i.i177.if.end7.i.i178_crit_edge

if.then.i.i177.if.end7.i.i178_crit_edge:          ; preds = %if.then.i.i177
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7.i.i178

if.then.i.i177.dmaengine_get_dst_icg.exit_crit_edge: ; preds = %if.then.i.i177
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_get_dst_icg.exit

if.end7.i.i178:                                   ; preds = %if.then.i.i177.if.end7.i.i178_crit_edge, %dmaengine_get_src_icg.exit.if.end7.i.i178_crit_edge
  br label %dmaengine_get_dst_icg.exit

dmaengine_get_dst_icg.exit:                       ; preds = %if.end7.i.i178, %if.then.i.i177.dmaengine_get_dst_icg.exit_crit_edge
  %retval.0.i.i179 = phi i32 [ 0, %if.end7.i.i178 ], [ %dir_icg.mux.i.i176, %if.then.i.i177.dmaengine_get_dst_icg.exit_crit_edge ]
  %mbr_dus = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 8
  %76 = ptrtoint ptr %mbr_dus to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %retval.0.i.i179, ptr %mbr_dus, align 8
  %or78 = or i32 %shr, 503316480
  %mbr_ubc = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 1
  %77 = ptrtoint ptr %mbr_ubc to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %or78, ptr %mbr_ubc, align 4
  %mbr_cfg = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 4
  %78 = ptrtoint ptr %mbr_cfg to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %or71, ptr %mbr_cfg, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_interleaved_queue_desc.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_interleaved_queue_desc, %do.end107)) #7
          to label %if.then95 [label %do.end107], !srcloc !373

if.then95:                                        ; preds = %dmaengine_get_dst_icg.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i180 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %79 = ptrtoint ptr %dev.i180 to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %dev.i180, align 4
  %device.i181 = getelementptr inbounds %struct.dma_chan_dev, ptr %80, i32 0, i32 1
  %81 = ptrtoint ptr %mbr_ubc to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %mbr_ubc, align 4
  %83 = ptrtoint ptr %mbr_cfg to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %mbr_cfg, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_interleaved_queue_desc.__UNIQUE_ID_ddebug259, ptr noundef %device.i181, ptr noundef nonnull @.str.92, ptr noundef nonnull @.str.89, ptr noundef %mbr_sa, ptr noundef %mbr_da, i32 noundef %82, i32 noundef %84) #7
  br label %do.end107

do.end107:                                        ; preds = %if.then95, %dmaengine_get_dst_icg.exit
  br i1 %tobool12.not, label %do.end107.cleanup_crit_edge, label %if.end.i

do.end107.cleanup_crit_edge:                      ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %do.end107
  call void @__sanitizer_cov_trace_pc() #9
  %phys.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %desc.0.i, i32 0, i32 2, i32 2
  %85 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %phys.i, align 8
  %87 = ptrtoint ptr %prev to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %86, ptr %prev, align 8
  %mbr_ubc.i = getelementptr inbounds %struct.at_xdmac_lld, ptr %prev, i32 0, i32 1
  %88 = ptrtoint ptr %mbr_ubc.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %mbr_ubc.i, align 4
  %or.i = or i32 %89, 16777216
  store i32 %or.i, ptr %mbr_ubc.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_queue_desc.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_interleaved_queue_desc, %cleanup)) #7
          to label %if.then7.i [label %cleanup], !srcloc !373

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i183 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %90 = ptrtoint ptr %dev.i.i183 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %dev.i.i183, align 4
  %device.i.i184 = getelementptr inbounds %struct.dma_chan_dev, ptr %91, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_queue_desc.__UNIQUE_ID_ddebug241, ptr noundef %device.i.i184, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.84, ptr noundef nonnull %prev, ptr noundef nonnull %prev) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then7.i, %if.end.i, %do.end107.cleanup_crit_edge, %do.end67, %if.then7, %do.body
  %retval.0 = phi ptr [ null, %do.end67 ], [ null, %if.then7 ], [ %desc.0.i, %do.end107.cleanup_crit_edge ], [ %desc.0.i, %if.end.i ], [ %desc.0.i, %if.then7.i ], [ null, %do.body ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @at_xdmac_memset_create_desc(ptr nocapture noundef readonly %chan, ptr noundef %atchan, i32 noundef %dst_addr, i32 noundef %len, i32 noundef %value) unnamed_addr #2 align 64 {
entry:
  %phys.i.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %and.i = and i32 %dst_addr, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_memset_create_desc, %at_xdmac_align_width.exit)) #7
          to label %if.then5.i [label %at_xdmac_align_width.exit], !srcloc !373

if.then5.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug253, ptr noundef %device.i.i, ptr noundef nonnull @.str.94, ptr noundef nonnull @.str.93) #7
  br label %at_xdmac_align_width.exit

if.else.i:                                        ; preds = %entry
  %and7.i = and i32 %dst_addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7.i)
  %tobool8.not.i = icmp eq i32 %and7.i, 0
  br i1 %tobool8.not.i, label %if.then9.i, label %if.else29.i

if.then9.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_memset_create_desc, %at_xdmac_align_width.exit)) #7
          to label %if.then24.i [label %at_xdmac_align_width.exit], !srcloc !373

if.then24.i:                                      ; preds = %if.then9.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i89.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i89.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i89.i, align 4
  %device.i90.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug254, ptr noundef %device.i90.i, ptr noundef nonnull @.str.95, ptr noundef nonnull @.str.93) #7
  br label %at_xdmac_align_width.exit

if.else29.i:                                      ; preds = %if.else.i
  %and30.i = and i32 %dst_addr, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30.i)
  %tobool31.not.i = icmp eq i32 %and30.i, 0
  br i1 %tobool31.not.i, label %if.then32.i, label %if.else52.i

if.then32.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_memset_create_desc, %at_xdmac_align_width.exit)) #7
          to label %if.then47.i [label %at_xdmac_align_width.exit], !srcloc !373

if.then47.i:                                      ; preds = %if.then32.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i91.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i91.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i91.i, align 4
  %device.i92.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug255, ptr noundef %device.i92.i, ptr noundef nonnull @.str.96, ptr noundef nonnull @.str.93) #7
  br label %at_xdmac_align_width.exit

if.else52.i:                                      ; preds = %if.else29.i
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_memset_create_desc, %at_xdmac_align_width.exit)) #7
          to label %if.then67.i [label %at_xdmac_align_width.exit], !srcloc !373

if.then67.i:                                      ; preds = %if.else52.i
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i93.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i93.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i93.i, align 4
  %device.i94.i = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_align_width.__UNIQUE_ID_ddebug256, ptr noundef %device.i94.i, ptr noundef nonnull @.str.97, ptr noundef nonnull @.str.93) #7
  br label %at_xdmac_align_width.exit

at_xdmac_align_width.exit:                        ; preds = %if.then67.i, %if.else52.i, %if.then47.i, %if.then32.i, %if.then24.i, %if.then9.i, %if.then5.i, %if.then.i
  %width.0.i = phi i32 [ 0, %if.then67.i ], [ 1, %if.then47.i ], [ 2, %if.then24.i ], [ 3, %if.then5.i ], [ 3, %if.then.i ], [ 2, %if.then9.i ], [ 1, %if.then32.i ], [ 0, %if.else52.i ]
  %shl = shl nuw nsw i32 16777215, %width.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %shl, i32 %len)
  %cmp.not = icmp ugt i32 %shl, %len
  br i1 %cmp.not, label %do.body3, label %do.end

do.end:                                           ; preds = %at_xdmac_align_width.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.106, ptr noundef nonnull @.str.107) #10
  br label %cleanup

do.body3:                                         ; preds = %at_xdmac_align_width.exit
  %lock = getelementptr inbounds %struct.at_xdmac_chan, ptr %atchan, i32 0, i32 15
  %call6 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #7
  %free_descs_list.i = getelementptr inbounds %struct.at_xdmac_chan, ptr %atchan, i32 0, i32 17
  %10 = ptrtoint ptr %free_descs_list.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %free_descs_list.i, align 4
  %cmp.i.not.i = icmp eq ptr %11, %free_descs_list.i
  br i1 %cmp.i.not.i, label %if.then.i67, label %if.else.i68

if.then.i67:                                      ; preds = %do.body3
  %12 = ptrtoint ptr %atchan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %atchan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %phys.i.i) #7
  %14 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 -1, ptr %phys.i.i, align 4, !annotation !374
  %at_xdmac_desc_pool.i.i = getelementptr inbounds %struct.at_xdmac, ptr %13, i32 0, i32 5
  %15 = ptrtoint ptr %at_xdmac_desc_pool.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %at_xdmac_desc_pool.i.i, align 4
  %call.i.i.i = call ptr @dma_pool_alloc(ptr noundef %16, i32 noundef 2304, ptr noundef nonnull %phys.i.i) #7
  %tobool.not.i.i = icmp eq ptr %call.i.i.i, null
  br i1 %tobool.not.i.i, label %if.then.i67.at_xdmac_alloc_desc.exit.i_crit_edge, label %if.then.i.i

if.then.i67.at_xdmac_alloc_desc.exit.i_crit_edge: ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_alloc_desc.exit.i

if.then.i.i:                                      ; preds = %if.then.i67
  call void @__sanitizer_cov_trace_pc() #9
  %descs_list.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 6
  %17 = ptrtoint ptr %descs_list.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %descs_list.i.i, ptr %descs_list.i.i, align 4
  %prev.i.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 6, i32 1
  %18 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %descs_list.i.i, ptr %prev.i.i.i, align 4
  %tx_dma_desc.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2
  call void @dma_async_tx_descriptor_init(ptr noundef %tx_dma_desc.i.i, ptr noundef %atchan) #7
  %tx_submit.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2, i32 4
  %19 = ptrtoint ptr %tx_submit.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @at_xdmac_tx_submit, ptr %tx_submit.i.i, align 8
  %20 = ptrtoint ptr %phys.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %phys.i.i, align 4
  %phys4.i.i = getelementptr inbounds %struct.at_xdmac_desc, ptr %call.i.i.i, i32 0, i32 2, i32 2
  %22 = ptrtoint ptr %phys4.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %phys4.i.i, align 8
  br label %at_xdmac_alloc_desc.exit.i

at_xdmac_alloc_desc.exit.i:                       ; preds = %if.then.i.i, %if.then.i67.at_xdmac_alloc_desc.exit.i_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %phys.i.i) #7
  br label %at_xdmac_get_desc.exit

if.else.i68:                                      ; preds = %do.body3
  %add.ptr.i = getelementptr i8, ptr %11, i32 -140
  %call.i.i7.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %11) #7
  br i1 %call.i.i7.i, label %if.end.i.i.i, label %if.else.i68.list_del.exit.i_crit_edge

if.else.i68.list_del.exit.i_crit_edge:            ; preds = %if.else.i68
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %if.else.i68
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i8.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i8.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i8.i, align 4
  %25 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %11, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %if.else.i68.list_del.exit.i_crit_edge
  %29 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %11, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %31 = call ptr @memset(ptr %add.ptr.i, i32 0, i32 36)
  %descs_list.i9.i = getelementptr i8, ptr %11, i32 16
  %32 = ptrtoint ptr %descs_list.i9.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %descs_list.i9.i, ptr %descs_list.i9.i, align 4
  %prev.i.i10.i = getelementptr i8, ptr %11, i32 20
  %33 = ptrtoint ptr %prev.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %descs_list.i9.i, ptr %prev.i.i10.i, align 4
  %direction.i.i = getelementptr i8, ptr %11, i32 -104
  %34 = ptrtoint ptr %direction.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 4, ptr %direction.i.i, align 4
  %xfer_size.i.i = getelementptr i8, ptr %11, i32 12
  %35 = ptrtoint ptr %xfer_size.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 0, ptr %xfer_size.i.i, align 8
  %active_xfer.i.i = getelementptr i8, ptr %11, i32 8
  %36 = ptrtoint ptr %active_xfer.i.i to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 0, ptr %active_xfer.i.i, align 4
  br label %at_xdmac_get_desc.exit

at_xdmac_get_desc.exit:                           ; preds = %list_del.exit.i, %at_xdmac_alloc_desc.exit.i
  %desc.0.i = phi ptr [ %call.i.i.i, %at_xdmac_alloc_desc.exit.i ], [ %add.ptr.i, %list_del.exit.i ]
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #7
  %tobool.not = icmp eq ptr %desc.0.i, null
  br i1 %tobool.not, label %do.end16, label %if.end18

do.end16:                                         ; preds = %at_xdmac_get_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i69 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %37 = ptrtoint ptr %dev.i69 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i69, align 4
  %device.i70 = getelementptr inbounds %struct.dma_chan_dev, ptr %38, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i70, ptr noundef nonnull @.str.68) #10
  br label %cleanup

if.end18:                                         ; preds = %at_xdmac_get_desc.exit
  call void @__sanitizer_cov_trace_pc() #9
  %and = shl nuw nsw i32 %width.0.i, 11
  %or = or i32 %and, 2131296390
  %shr = lshr i32 %len, %width.0.i
  %mbr_da = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 3
  %39 = ptrtoint ptr %mbr_da to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %dst_addr, ptr %mbr_da, align 4
  %mbr_ds = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 6
  %40 = ptrtoint ptr %mbr_ds to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %value, ptr %mbr_ds, align 8
  %or21 = or i32 %shr, 503316480
  %mbr_ubc = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 1
  %41 = ptrtoint ptr %mbr_ubc to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or21, ptr %mbr_ubc, align 4
  %mbr_cfg = getelementptr inbounds %struct.at_xdmac_lld, ptr %desc.0.i, i32 0, i32 4
  %42 = ptrtoint ptr %mbr_cfg to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %or, ptr %mbr_cfg, align 8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_memset_create_desc.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_memset_create_desc, %cleanup)) #7
          to label %if.then31 [label %cleanup], !srcloc !373

if.then31:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i71 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %43 = ptrtoint ptr %dev.i71 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i71, align 4
  %device.i72 = getelementptr inbounds %struct.dma_chan_dev, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %mbr_ds to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %mbr_ds, align 8
  %47 = ptrtoint ptr %mbr_ubc to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %mbr_ubc, align 4
  %49 = ptrtoint ptr %mbr_cfg to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %mbr_cfg, align 8
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_memset_create_desc.__UNIQUE_ID_ddebug269, ptr noundef %device.i72, ptr noundef nonnull @.str.110, ptr noundef nonnull @.str.107, ptr noundef %mbr_da, i32 noundef %46, i32 noundef %48, i32 noundef %50) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then31, %if.end18, %do.end16, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end16 ], [ %desc.0.i, %if.then31 ], [ %desc.0.i, %if.end18 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @at_xdmac_handle_error(ptr nocapture noundef readonly %atchan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %atchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %atchan, align 4
  %irq_status = getelementptr inbounds %struct.at_xdmac_chan, ptr %atchan, i32 0, i32 11
  %2 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq_status, align 4
  %and = and i32 %3, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.135) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %6 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_status, align 4
  %and4 = and i32 %7, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and4)
  %tobool5.not = icmp eq i32 %and4, 0
  br i1 %tobool5.not, label %if.end.if.end12_crit_edge, label %do.end9

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end12

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i68 = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i68 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i68, align 4
  %device.i69 = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i69, ptr noundef nonnull @.str.138) #10
  br label %if.end12

if.end12:                                         ; preds = %do.end9, %if.end.if.end12_crit_edge
  %10 = ptrtoint ptr %irq_status to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %irq_status, align 4
  %and14 = and i32 %11, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and14)
  %tobool15.not = icmp eq i32 %and14, 0
  br i1 %tobool15.not, label %if.end12.if.end22_crit_edge, label %do.end19

if.end12.if.end22_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22

do.end19:                                         ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i70 = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %12 = ptrtoint ptr %dev.i70 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i70, align 4
  %device.i71 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i71, ptr noundef nonnull @.str.141) #10
  br label %if.end22

if.end22:                                         ; preds = %do.end19, %if.end12.if.end22_crit_edge
  %mask = getelementptr inbounds %struct.at_xdmac_chan, ptr %atchan, i32 0, i32 2
  %14 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %mask, align 4
  %16 = tail call i32 @llvm.bswap.i32(i32 %15)
  %regs = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 1
  %17 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %18, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %16) #7, !srcloc !370
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr2475 = getelementptr i8, ptr %20, i32 36
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2475) #7, !srcloc !367
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %23 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %mask, align 4
  %and2776 = and i32 %22, %24
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2776)
  %tobool28.not77 = icmp eq i32 %and2776, 0
  br i1 %tobool28.not77, label %if.end22.while.end_crit_edge, label %if.end22.do.end33_crit_edge

if.end22.do.end33_crit_edge:                      ; preds = %if.end22
  br label %do.end33

if.end22.while.end_crit_edge:                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

do.end33:                                         ; preds = %do.end33.do.end33_crit_edge, %if.end22.do.end33_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !393
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !394
  %25 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %regs, align 4
  %add.ptr24 = getelementptr i8, ptr %26, i32 36
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #7, !srcloc !367
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %mask, align 4
  %and27 = and i32 %28, %30
  %tobool28.not = icmp eq i32 %and27, 0
  br i1 %tobool28.not, label %do.end33.while.end_crit_edge, label %do.end33.do.end33_crit_edge

do.end33.do.end33_crit_edge:                      ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end33

do.end33.while.end_crit_edge:                     ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %do.end33.while.end_crit_edge, %if.end22.while.end_crit_edge
  %xfers_list = getelementptr inbounds %struct.at_xdmac_chan, ptr %atchan, i32 0, i32 16
  %31 = ptrtoint ptr %xfers_list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %xfers_list, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_handle_error.__UNIQUE_ID_ddebug279, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@at_xdmac_handle_error, %do.end54)) #7
          to label %if.then47 [label %do.end54], !srcloc !373

if.then47:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i72 = getelementptr inbounds %struct.dma_chan, ptr %atchan, i32 0, i32 5
  %33 = ptrtoint ptr %dev.i72 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i72, align 4
  %device.i73 = getelementptr inbounds %struct.dma_chan_dev, ptr %34, i32 0, i32 1
  %mbr_sa = getelementptr i8, ptr %32, i32 -156
  %mbr_da = getelementptr i8, ptr %32, i32 -152
  %mbr_ubc = getelementptr i8, ptr %32, i32 -160
  %35 = ptrtoint ptr %mbr_ubc to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %mbr_ubc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_handle_error.__UNIQUE_ID_ddebug279, ptr noundef %device.i73, ptr noundef nonnull @.str.71, ptr noundef nonnull @.str.136, ptr noundef %mbr_sa, ptr noundef %mbr_da, i32 noundef %36) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then47, %while.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_run_dependencies(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_xdmac_prepare(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 4
  %cmp.not26 = icmp eq ptr %3, %channels
  br i1 %cmp.not26, label %entry.cleanup16_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.cleanup16_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16

for.body:                                         ; preds = %for.inc.critedge.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in27 = phi ptr [ %.pn28, %for.inc.critedge.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %4 = ptrtoint ptr %.pn.in27 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn28 = load ptr, ptr %.pn.in27, align 4
  %ch_regs.i = getelementptr i8, ptr %.pn.in27, i32 32
  %5 = ptrtoint ptr %ch_regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ch_regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %6, i32 36
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !367
  %8 = tail call i32 @llvm.bswap.i32(i32 %7) #7
  %mask.i = getelementptr i8, ptr %.pn.in27, i32 36
  %9 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %mask.i, align 4
  %and.i = and i32 %8, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.i.not = icmp eq i32 %and.i, 0
  br i1 %tobool.i.not, label %for.body.for.inc.critedge_crit_edge, label %land.lhs.true

for.body.for.inc.critedge_crit_edge:              ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge

land.lhs.true:                                    ; preds = %for.body
  %status.i = getelementptr i8, ptr %.pn.in27, i32 68
  %11 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %12, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %land.lhs.true.cleanup16_crit_edge, label %land.lhs.true.for.inc.critedge_crit_edge

land.lhs.true.for.inc.critedge_crit_edge:         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.critedge

land.lhs.true.cleanup16_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16

for.inc.critedge:                                 ; preds = %land.lhs.true.for.inc.critedge_crit_edge, %for.body.for.inc.critedge_crit_edge
  %cmp.not = icmp eq ptr %.pn28, %channels
  br i1 %cmp.not, label %for.inc.critedge.cleanup16_crit_edge, label %for.inc.critedge.for.body_crit_edge

for.inc.critedge.for.body_crit_edge:              ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.inc.critedge.cleanup16_crit_edge:             ; preds = %for.inc.critedge
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup16

cleanup16:                                        ; preds = %for.inc.critedge.cleanup16_crit_edge, %land.lhs.true.cleanup16_crit_edge, %entry.cleanup16_crit_edge
  %retval.2 = phi i32 [ 0, %entry.cleanup16_crit_edge ], [ 0, %for.inc.critedge.cleanup16_crit_edge ], [ -11, %land.lhs.true.cleanup16_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_xdmac_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %channels, align 4
  %cmp.not65 = icmp eq ptr %3, %channels
  br i1 %cmp.not65, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %if.end32.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn.in66 = phi ptr [ %.pn68, %if.end32.for.body_crit_edge ], [ %3, %entry.for.body_crit_edge ]
  %chan.067 = getelementptr i8, ptr %.pn.in66, i32 -32
  %4 = ptrtoint ptr %.pn.in66 to i32
  call void @__asan_load4_noabort(i32 %4)
  %.pn68 = load ptr, ptr %.pn.in66, align 4
  %ch_regs = getelementptr i8, ptr %.pn.in66, i32 32
  %5 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ch_regs, align 4
  %add.ptr9 = getelementptr i8, ptr %6, i32 40
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9) #7, !srcloc !367
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %save_cc = getelementptr i8, ptr %.pn.in66, i32 48
  %9 = ptrtoint ptr %save_cc to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %save_cc, align 4
  %status.i = getelementptr i8, ptr %.pn.in66, i32 68
  %10 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not, label %for.body.if.end32_crit_edge, label %if.then

for.body.if.end32_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end32

if.then:                                          ; preds = %for.body
  %12 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %status.i, align 4
  %14 = and i32 %13, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool14.not = icmp eq i32 %14, 0
  br i1 %tobool14.not, label %if.then15, label %if.then.if.end_crit_edge

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then15:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call i32 @at_xdmac_device_pause(ptr noundef %chan.067)
  br label %if.end

if.end:                                           ; preds = %if.then15, %if.then.if.end_crit_edge
  %15 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %ch_regs, align 4
  %add.ptr19 = getelementptr i8, ptr %16, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #7, !srcloc !367
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %save_cim = getelementptr i8, ptr %.pn.in66, i32 52
  %19 = ptrtoint ptr %save_cim to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %save_cim, align 4
  %20 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ch_regs, align 4
  %add.ptr24 = getelementptr i8, ptr %21, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24) #7, !srcloc !367
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %save_cnda = getelementptr i8, ptr %.pn.in66, i32 56
  %24 = ptrtoint ptr %save_cnda to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %save_cnda, align 4
  %25 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %ch_regs, align 4
  %add.ptr29 = getelementptr i8, ptr %26, i32 28
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr29) #7, !srcloc !367
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %save_cndc = getelementptr i8, ptr %.pn.in66, i32 60
  %29 = ptrtoint ptr %save_cndc to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %save_cndc, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.end, %for.body.if.end32_crit_edge
  %cmp.not = icmp eq ptr %.pn68, %channels
  br i1 %cmp.not, label %if.end32.for.end_crit_edge, label %if.end32.for.body_crit_edge

if.end32.for.body_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

if.end32.for.end_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %if.end32.for.end_crit_edge, %entry.for.end_crit_edge
  %regs = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 1
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  %add.ptr39 = getelementptr i8, ptr %31, i32 20
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #7, !srcloc !367
  %33 = tail call i32 @llvm.bswap.i32(i32 %32)
  %save_gim = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 4
  %34 = ptrtoint ptr %save_gim to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %33, ptr %save_gim, align 4
  %35 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %36, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 -1) #7, !srcloc !370
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %add.ptr211.i = getelementptr i8, ptr %38, i32 36
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr211.i) #7, !srcloc !367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %39)
  %tobool.not12.i = icmp eq i32 %39, 0
  br i1 %tobool.not12.i, label %for.end.at_xdmac_off.exit_crit_edge, label %for.end.do.end.i_crit_edge

for.end.do.end.i_crit_edge:                       ; preds = %for.end
  br label %do.end.i

for.end.at_xdmac_off.exit_crit_edge:              ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_off.exit

do.end.i:                                         ; preds = %do.end.i.do.end.i_crit_edge, %for.end.do.end.i_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !371
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !372
  %40 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regs, align 4
  %add.ptr2.i = getelementptr i8, ptr %41, i32 36
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #7, !srcloc !367
  %tobool.not.i = icmp eq i32 %42, 0
  br i1 %tobool.not.i, label %do.end.i.at_xdmac_off.exit_crit_edge, label %do.end.i.do.end.i_crit_edge

do.end.i.do.end.i_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i.at_xdmac_off.exit_crit_edge:             ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_off.exit

at_xdmac_off.exit:                                ; preds = %do.end.i.at_xdmac_off.exit_crit_edge, %for.end.at_xdmac_off.exit_crit_edge
  %43 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %regs, align 4
  %add.ptr8.i = getelementptr i8, ptr %44, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr8.i, i32 -1) #7, !srcloc !370
  %clk = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 3
  %45 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %46) #7
  tail call void @clk_unprepare(ptr noundef %46) #7
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @atmel_xdmac_resume(ptr noundef %dev) #2 align 64 {
entry:
  %dma_requests.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %clk = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @clk_unprepare(ptr noundef %3) #7
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %4 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %driver_data.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_requests.i) #7
  %6 = ptrtoint ptr %dma_requests.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 -1, ptr %dma_requests.i, align 4, !annotation !374
  %layout.i = getelementptr inbounds %struct.at_xdmac, ptr %5, i32 0, i32 6
  %7 = ptrtoint ptr %layout.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %layout.i, align 4
  %axi_config.i = getelementptr inbounds %struct.at_xdmac_layout, ptr %8, i32 0, i32 9
  %9 = ptrtoint ptr %axi_config.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %axi_config.i, align 1, !range !376
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %10)
  %tobool.not.i91 = icmp eq i8 %10, 0
  br i1 %tobool.not.i91, label %if.end.at_xdmac_axi_config.exit_crit_edge, label %if.end.i93

if.end.at_xdmac_axi_config.exit_crit_edge:        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_axi_config.exit

if.end.i93:                                       ; preds = %if.end
  %of_node.i = getelementptr i8, ptr %dev, i32 832
  %11 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %of_node.i, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %12, ptr noundef nonnull @.str.149, ptr noundef nonnull %dma_requests.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool2.not.i92 = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool2.not.i92, label %do.end.i, label %if.else.i

do.end.i:                                         ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.150) #10
  %regs.i = getelementptr inbounds %struct.at_xdmac, ptr %5, i32 0, i32 1
  %13 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 15728655) #7, !srcloc !370
  %15 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %regs.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %16, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 0) #7, !srcloc !370
  br label %at_xdmac_axi_config.exit

if.else.i:                                        ; preds = %if.end.i93
  call void @__sanitizer_cov_trace_pc() #9
  %regs10.i = getelementptr inbounds %struct.at_xdmac, ptr %5, i32 0, i32 1
  %17 = ptrtoint ptr %regs10.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %regs10.i, align 4
  %add.ptr11.i = getelementptr i8, ptr %18, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr11.i, i32 1342178064) #7, !srcloc !370
  %19 = ptrtoint ptr %regs10.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs10.i, align 4
  %add.ptr13.i = getelementptr i8, ptr %20, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13.i, i32 252641280) #7, !srcloc !370
  br label %at_xdmac_axi_config.exit

at_xdmac_axi_config.exit:                         ; preds = %if.else.i, %do.end.i, %if.end.at_xdmac_axi_config.exit_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_requests.i) #7
  %chancnt = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 1
  %21 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %chancnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %22)
  %cmp103.not = icmp eq i32 %22, 0
  br i1 %cmp103.not, label %at_xdmac_axi_config.exit.for.end_crit_edge, label %at_xdmac_axi_config.exit.while.cond.preheader_crit_edge

at_xdmac_axi_config.exit.while.cond.preheader_crit_edge: ; preds = %at_xdmac_axi_config.exit
  br label %while.cond.preheader

at_xdmac_axi_config.exit.for.end_crit_edge:       ; preds = %at_xdmac_axi_config.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

while.cond.preheader:                             ; preds = %for.inc.while.cond.preheader_crit_edge, %at_xdmac_axi_config.exit.while.cond.preheader_crit_edge
  %i.0104 = phi i32 [ %inc, %for.inc.while.cond.preheader_crit_edge ], [ 0, %at_xdmac_axi_config.exit.while.cond.preheader_crit_edge ]
  %ch_regs = getelementptr %struct.at_xdmac, ptr %1, i32 0, i32 7, i32 %i.0104, i32 1
  %23 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ch_regs, align 4
  %add.ptr3101 = getelementptr i8, ptr %24, i32 12
  %25 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3101) #7, !srcloc !367
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool6.not102 = icmp eq i32 %25, 0
  br i1 %tobool6.not102, label %while.cond.preheader.for.inc_crit_edge, label %while.cond.preheader.do.end_crit_edge

while.cond.preheader.do.end_crit_edge:            ; preds = %while.cond.preheader
  br label %do.end

while.cond.preheader.for.inc_crit_edge:           ; preds = %while.cond.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

do.end:                                           ; preds = %do.end.do.end_crit_edge, %while.cond.preheader.do.end_crit_edge
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #7, !srcloc !395
  call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #7, !srcloc !396
  %26 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %ch_regs, align 4
  %add.ptr3 = getelementptr i8, ptr %27, i32 12
  %28 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr3) #7, !srcloc !367
  %tobool6.not = icmp eq i32 %28, 0
  br i1 %tobool6.not, label %do.end.for.inc_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc

for.inc:                                          ; preds = %do.end.for.inc_crit_edge, %while.cond.preheader.for.inc_crit_edge
  %inc = add nuw i32 %i.0104, 1
  %29 = ptrtoint ptr %chancnt to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %chancnt, align 4
  %cmp = icmp ult i32 %inc, %30
  br i1 %cmp, label %for.inc.while.cond.preheader_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.inc.while.cond.preheader_crit_edge:           ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.cond.preheader

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %at_xdmac_axi_config.exit.for.end_crit_edge
  %save_gim = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 4
  %31 = ptrtoint ptr %save_gim to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %save_gim, align 4
  %33 = call i32 @llvm.bswap.i32(i32 %32)
  %regs = getelementptr inbounds %struct.at_xdmac, ptr %1, i32 0, i32 1
  %34 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %regs, align 4
  %add.ptr13 = getelementptr i8, ptr %35, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 %33) #7, !srcloc !370
  %channels = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %36 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %channels, align 4
  %cmp26.not107 = icmp eq ptr %37, %channels
  br i1 %cmp26.not107, label %for.end.cleanup_crit_edge, label %for.end.for.body27_crit_edge

for.end.for.body27_crit_edge:                     ; preds = %for.end
  br label %for.body27

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body27:                                       ; preds = %for.inc51.for.body27_crit_edge, %for.end.for.body27_crit_edge
  %.pn.in108 = phi ptr [ %.pn112, %for.inc51.for.body27_crit_edge ], [ %37, %for.end.for.body27_crit_edge ]
  %chan.0111 = getelementptr i8, ptr %.pn.in108, i32 -32
  %38 = ptrtoint ptr %.pn.in108 to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pn112 = load ptr, ptr %.pn.in108, align 4
  %save_cc = getelementptr i8, ptr %.pn.in108, i32 48
  %39 = ptrtoint ptr %save_cc to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %save_cc, align 4
  %41 = call i32 @llvm.bswap.i32(i32 %40)
  %ch_regs29 = getelementptr i8, ptr %.pn.in108, i32 32
  %42 = ptrtoint ptr %ch_regs29 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %ch_regs29, align 4
  %add.ptr30 = getelementptr i8, ptr %43, i32 40
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr30, i32 %41) #7, !srcloc !370
  %status.i = getelementptr i8, ptr %.pn.in108, i32 68
  %44 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %status.i, align 4
  %and1.i.i = and i32 %45, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool32.not = icmp eq i32 %and1.i.i, 0
  br i1 %tobool32.not, label %for.body27.for.inc51_crit_edge, label %if.then33

for.body27.for.inc51_crit_edge:                   ; preds = %for.body27
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc51

if.then33:                                        ; preds = %for.body27
  %46 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile i32, ptr %status.i, align 4
  %48 = and i32 %47, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool35.not = icmp eq i32 %48, 0
  br i1 %tobool35.not, label %if.then33.if.end38_crit_edge, label %if.then36

if.then33.if.end38_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end38

if.then36:                                        ; preds = %if.then33
  %49 = ptrtoint ptr %chan.0111 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chan.0111, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @at_xdmac_device_resume.__UNIQUE_ID_ddebug288, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@atmel_xdmac_resume, %do.body9.i)) #7
          to label %if.then.i [label %do.body9.i], !srcloc !373

if.then.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #9
  %dev.i.i = getelementptr i8, ptr %.pn.in108, i32 -12
  %51 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %52, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @at_xdmac_device_resume.__UNIQUE_ID_ddebug288, ptr noundef %device.i.i, ptr noundef nonnull @.str.54, ptr noundef nonnull @.str.129) #7
  br label %do.body9.i

do.body9.i:                                       ; preds = %if.then.i, %if.then36
  %lock.i = getelementptr i8, ptr %.pn.in108, i32 144
  %call12.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #7
  %53 = ptrtoint ptr %status.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile i32, ptr %status.i, align 4
  %55 = and i32 %54, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %55)
  %tobool18.not.i = icmp eq i32 %55, 0
  br i1 %tobool18.not.i, label %do.body9.i.at_xdmac_device_resume.exit_crit_edge, label %if.end21.i

do.body9.i.at_xdmac_device_resume.exit_crit_edge: ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %at_xdmac_device_resume.exit

if.end21.i:                                       ; preds = %do.body9.i
  call void @__sanitizer_cov_trace_pc() #9
  %mask.i = getelementptr i8, ptr %.pn.in108, i32 36
  %56 = ptrtoint ptr %mask.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %mask.i, align 4
  %58 = call i32 @llvm.bswap.i32(i32 %57) #7
  %regs.i96 = getelementptr inbounds %struct.at_xdmac, ptr %50, i32 0, i32 1
  %59 = ptrtoint ptr %regs.i96 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %regs.i96, align 4
  %layout.i97 = getelementptr inbounds %struct.at_xdmac, ptr %50, i32 0, i32 6
  %61 = ptrtoint ptr %layout.i97 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %layout.i97, align 4
  %grwr.i = getelementptr inbounds %struct.at_xdmac_layout, ptr %62, i32 0, i32 3
  %63 = ptrtoint ptr %grwr.i to i32
  call void @__asan_load1_noabort(i32 %63)
  %64 = load i8, ptr %grwr.i, align 1
  %conv22.i = zext i8 %64 to i32
  %add.ptr.i98 = getelementptr i8, ptr %60, i32 %conv22.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i98, i32 %58) #7, !srcloc !370
  call void @_clear_bit(i32 noundef 1, ptr noundef %status.i) #7
  br label %at_xdmac_device_resume.exit

at_xdmac_device_resume.exit:                      ; preds = %if.end21.i, %do.body9.i.at_xdmac_device_resume.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call12.i) #7
  br label %if.end38

if.end38:                                         ; preds = %at_xdmac_device_resume.exit, %if.then33.if.end38_crit_edge
  %save_cnda = getelementptr i8, ptr %.pn.in108, i32 56
  %65 = ptrtoint ptr %save_cnda to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %save_cnda, align 4
  %67 = call i32 @llvm.bswap.i32(i32 %66)
  %68 = ptrtoint ptr %ch_regs29 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %ch_regs29, align 4
  %add.ptr40 = getelementptr i8, ptr %69, i32 24
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr40, i32 %67) #7, !srcloc !370
  %save_cndc = getelementptr i8, ptr %.pn.in108, i32 60
  %70 = ptrtoint ptr %save_cndc to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %save_cndc, align 4
  %72 = call i32 @llvm.bswap.i32(i32 %71)
  %73 = ptrtoint ptr %ch_regs29 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ch_regs29, align 4
  %add.ptr42 = getelementptr i8, ptr %74, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr42, i32 %72) #7, !srcloc !370
  %save_cim = getelementptr i8, ptr %.pn.in108, i32 52
  %75 = ptrtoint ptr %save_cim to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %save_cim, align 4
  %77 = call i32 @llvm.bswap.i32(i32 %76)
  %78 = ptrtoint ptr %ch_regs29 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %ch_regs29, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %79, i32 %77) #7, !srcloc !370
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !397
  call void @arm_heavy_mb() #7
  %mask = getelementptr i8, ptr %.pn.in108, i32 36
  %80 = ptrtoint ptr %mask to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %mask, align 4
  %82 = call i32 @llvm.bswap.i32(i32 %81)
  %83 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %regs, align 4
  %add.ptr49 = getelementptr i8, ptr %84, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr49, i32 %82) #7, !srcloc !370
  br label %for.inc51

for.inc51:                                        ; preds = %if.end38, %for.body27.for.inc51_crit_edge
  %cmp26.not = icmp eq ptr %.pn112, %channels
  br i1 %cmp26.not, label %for.inc51.cleanup_crit_edge, label %for.inc51.for.body27_crit_edge

for.inc51.for.body27_crit_edge:                   ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body27

for.inc51.cleanup_crit_edge:                      ; preds = %for.inc51
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %for.inc51.cleanup_crit_edge, %for.end.cleanup_crit_edge, %if.then3.i, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.cleanup_crit_edge ], [ 0, %for.end.cleanup_crit_edge ], [ 0, %for.inc51.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #4

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #4

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 151)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !15, !16, !17, !19, !21, !23, !25, !26, !27, !28, !29, !30, !31, !33, !34, !35, !37, !39, !40, !41, !43, !44, !45, !47, !48, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !69, !71, !72, !73, !75, !76, !78, !79, !81, !82, !83, !84, !86, !87, !88, !90, !91, !92, !93, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !123, !124, !126, !128, !129, !130, !131, !132, !134, !135, !136, !138, !139, !140, !142, !143, !144, !146, !147, !149, !150, !152, !153, !155, !156, !157, !158, !160, !161, !162, !164, !165, !167, !168, !169, !171, !172, !174, !175, !176, !178, !179, !180, !182, !184, !185, !187, !189, !190, !191, !193, !194, !196, !197, !199, !200, !202, !203, !204, !206, !207, !209, !210, !212, !213, !215, !216, !217, !219, !220, !221, !223, !224, !226, !227, !229, !230, !232, !234, !236, !237, !238, !240, !241, !242, !243, !245, !246, !248, !249, !251, !252, !253, !255, !256, !258, !259, !261, !263, !265, !266, !267, !269, !270, !271, !272, !274, !275, !276, !278, !279, !281, !282, !284, !286, !288, !289, !291, !292, !293, !294, !296, !297, !299, !300, !302, !303, !305, !306, !307, !309, !311, !312, !313, !315, !316, !318, !319, !320, !321, !323, !324, !325, !327, !328, !329, !331, !333, !334, !335, !336, !338, !339, !340, !342, !343, !345, !347, !348, !349, !350, !352, !354, !356}
!llvm.module.flags = !{!358, !359, !360, !361, !362, !363, !364, !365}
!llvm.ident = !{!366}

!0 = !{ptr @__param_init_nr_desc_per_channel, !1, !"__param_init_nr_desc_per_channel", i1 false, i1 false}
!1 = !{!"../drivers/dma/at_xdmac.c", i32 359, i32 1}
!2 = !{ptr @__UNIQUE_ID_init_nr_desc_per_channeltype234, !1, !"__UNIQUE_ID_init_nr_desc_per_channeltype234", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_init_nr_desc_per_channel235, !4, !"__UNIQUE_ID_init_nr_desc_per_channel235", i1 false, i1 false}
!4 = !{!"../drivers/dma/at_xdmac.c", i32 360, i32 1}
!5 = !{ptr @__initcall__kmod_at_xdmac__292_2236_at_xdmac_init4, !6, !"__initcall__kmod_at_xdmac__292_2236_at_xdmac_init4", i1 false, i1 false}
!6 = !{!"../drivers/dma/at_xdmac.c", i32 2236, i32 1}
!7 = !{ptr @__exitcall_at_xdmac_exit, !8, !"__exitcall_at_xdmac_exit", i1 false, i1 false}
!8 = !{!"../drivers/dma/at_xdmac.c", i32 2242, i32 1}
!9 = !{ptr @__UNIQUE_ID_description293, !10, !"__UNIQUE_ID_description293", i1 false, i1 false}
!10 = !{!"../drivers/dma/at_xdmac.c", i32 2244, i32 1}
!11 = !{ptr @__UNIQUE_ID_author294, !12, !"__UNIQUE_ID_author294", i1 false, i1 false}
!12 = !{!"../drivers/dma/at_xdmac.c", i32 2245, i32 1}
!13 = !{ptr @__UNIQUE_ID_file295, !14, !"__UNIQUE_ID_file295", i1 false, i1 false}
!14 = !{!"../drivers/dma/at_xdmac.c", i32 2246, i32 1}
!15 = !{ptr @__UNIQUE_ID_license296, !14, !"__UNIQUE_ID_license296", i1 false, i1 false}
!16 = !{ptr @__param_str_init_nr_desc_per_channel, !1, !"__param_str_init_nr_desc_per_channel", i1 false, i1 false}
!17 = !{ptr @init_nr_desc_per_channel, !18, !"init_nr_desc_per_channel", i1 false, i1 false}
!18 = !{!"../drivers/dma/at_xdmac.c", i32 358, i32 21}
!19 = !{ptr @.str, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/dma/at_xdmac.c", i32 2226, i32 12}
!21 = !{ptr @at_xdmac_driver, !22, !"at_xdmac_driver", i1 false, i1 false}
!22 = !{!"../drivers/dma/at_xdmac.c", i32 2222, i32 31}
!23 = !{ptr @.str.1, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/dma/at_xdmac.c", i32 2048, i32 3}
!25 = !{ptr @.str.2, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @.str.4, !24, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.5, !24, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @at_xdmac_probe._entry, !24, !"_entry", i1 false, i1 false}
!30 = !{ptr @at_xdmac_probe._entry_ptr, !24, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.7, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/dma/at_xdmac.c", i32 2057, i32 3}
!33 = !{ptr @at_xdmac_probe._entry.6, !32, !"_entry", i1 false, i1 false}
!34 = !{ptr @at_xdmac_probe._entry_ptr.8, !32, !"_entry_ptr", i1 false, i1 false}
!35 = !{ptr @.str.9, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dma/at_xdmac.c", i32 2068, i32 42}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/at_xdmac.c", i32 2070, i32 3}
!39 = !{ptr @at_xdmac_probe._entry.10, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @at_xdmac_probe._entry_ptr.12, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.14, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/at_xdmac.c", i32 2077, i32 3}
!43 = !{ptr @at_xdmac_probe._entry.13, !42, !"_entry", i1 false, i1 false}
!44 = !{ptr @at_xdmac_probe._entry_ptr.15, !42, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.17, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/at_xdmac.c", i32 2083, i32 3}
!47 = !{ptr @at_xdmac_probe._entry.16, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @at_xdmac_probe._entry_ptr.18, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.20, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma/at_xdmac.c", i32 2091, i32 3}
!51 = !{ptr @at_xdmac_probe._entry.19, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @at_xdmac_probe._entry_ptr.21, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @at_xdmac_probe.__key, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/dma/at_xdmac.c", i32 2142, i32 3}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/at_xdmac.c", i32 2155, i32 3}
!58 = !{ptr @at_xdmac_probe._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @at_xdmac_probe._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/at_xdmac.c", i32 2162, i32 3}
!62 = !{ptr @at_xdmac_probe._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @at_xdmac_probe._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dma/at_xdmac.c", i32 2166, i32 2}
!66 = !{ptr @.str.31, !65, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @at_xdmac_probe._entry.29, !65, !"_entry", i1 false, i1 false}
!68 = !{ptr @at_xdmac_probe._entry_ptr.32, !65, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/at_xdmac.c", i32 1732, i32 3}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @at_xdmac_interrupt.__UNIQUE_ID_ddebug282, !70, !"__UNIQUE_ID_ddebug282", i1 false, i1 false}
!73 = !{ptr @.str.35, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dma/at_xdmac.c", i32 1748, i32 4}
!75 = !{ptr @at_xdmac_interrupt.__UNIQUE_ID_ddebug283, !74, !"__UNIQUE_ID_ddebug283", i1 false, i1 false}
!76 = !{ptr @.str.36, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/dma/at_xdmac.c", i32 1751, i32 4}
!78 = !{ptr @at_xdmac_interrupt.__UNIQUE_ID_ddebug284, !77, !"__UNIQUE_ID_ddebug284", i1 false, i1 false}
!79 = !{ptr @.str.37, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/dma/at_xdmac.c", i32 1880, i32 3}
!81 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @at_xdmac_alloc_chan_resources._entry, !80, !"_entry", i1 false, i1 false}
!83 = !{ptr @at_xdmac_alloc_chan_resources._entry_ptr, !80, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.40, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/dma/at_xdmac.c", i32 1886, i32 3}
!86 = !{ptr @at_xdmac_alloc_chan_resources._entry.39, !85, !"_entry", i1 false, i1 false}
!87 = !{ptr @at_xdmac_alloc_chan_resources._entry_ptr.41, !85, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/dma/at_xdmac.c", i32 1894, i32 4}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @at_xdmac_alloc_chan_resources._entry.42, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @at_xdmac_alloc_chan_resources._entry_ptr.45, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/dma/at_xdmac.c", i32 1903, i32 2}
!95 = !{ptr @at_xdmac_alloc_chan_resources.__UNIQUE_ID_ddebug290, !94, !"__UNIQUE_ID_ddebug290", i1 false, i1 false}
!96 = !{ptr @.str.47, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma/at_xdmac.c", i32 481, i32 2}
!98 = !{ptr @.str.48, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @at_xdmac_tx_submit.__UNIQUE_ID_ddebug240, !97, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!100 = !{ptr @.str.49, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/dma/at_xdmac.c", i32 1915, i32 3}
!102 = !{ptr @.str.50, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @at_xdmac_free_chan_resources.__UNIQUE_ID_ddebug291, !101, !"__UNIQUE_ID_ddebug291", i1 false, i1 false}
!104 = !{ptr @.str.51, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/dma/at_xdmac.c", i32 1581, i32 2}
!106 = !{ptr @.str.52, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @at_xdmac_tx_status.__UNIQUE_ID_ddebug276, !105, !"__UNIQUE_ID_ddebug276", i1 false, i1 false}
!108 = !{ptr @.str.53, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/dma/at_xdmac.c", i32 1778, i32 2}
!110 = !{ptr @.str.54, !109, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @at_xdmac_issue_pending.__UNIQUE_ID_ddebug285, !109, !"__UNIQUE_ID_ddebug285", i1 false, i1 false}
!112 = !{ptr @.str.55, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/dma/at_xdmac.c", i32 1603, i32 2}
!114 = !{ptr @.str.56, !113, !"<string literal>", i1 false, i1 false}
!115 = !{ptr @at_xdmac_advance_work.__UNIQUE_ID_ddebug277, !113, !"__UNIQUE_ID_ddebug277", i1 false, i1 false}
!116 = !{ptr @.str.57, !117, !"<string literal>", i1 false, i1 false}
!117 = !{!"../drivers/dma/at_xdmac.c", i32 387, i32 2}
!118 = !{ptr @at_xdmac_start_xfer.__UNIQUE_ID_ddebug236, !117, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!119 = !{ptr @at_xdmac_start_xfer.__UNIQUE_ID_ddebug237, !120, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!120 = !{!"../drivers/dma/at_xdmac.c", i32 424, i32 2}
!121 = !{ptr @.str.58, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/dma/at_xdmac.c", i32 452, i32 2}
!123 = !{ptr @at_xdmac_start_xfer.__UNIQUE_ID_ddebug238, !122, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!124 = !{ptr @at_xdmac_start_xfer.__UNIQUE_ID_ddebug239, !125, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!125 = !{!"../drivers/dma/at_xdmac.c", i32 457, i32 2}
!126 = !{ptr @.str.59, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/dma/at_xdmac.c", i32 798, i32 2}
!128 = !{ptr @.str.60, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug249, !127, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!130 = !{ptr @.str.61, !127, !"<string literal>", i1 false, i1 false}
!131 = !{ptr @.str.62, !127, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.63, !133, !"<string literal>", i1 false, i1 false}
!133 = !{!"../drivers/dma/at_xdmac.c", i32 803, i32 3}
!134 = !{ptr @at_xdmac_prep_dma_cyclic._entry, !133, !"_entry", i1 false, i1 false}
!135 = !{ptr @at_xdmac_prep_dma_cyclic._entry_ptr, !133, !"_entry_ptr", i1 false, i1 false}
!136 = !{ptr @.str.65, !137, !"<string literal>", i1 false, i1 false}
!137 = !{!"../drivers/dma/at_xdmac.c", i32 808, i32 3}
!138 = !{ptr @at_xdmac_prep_dma_cyclic._entry.64, !137, !"_entry", i1 false, i1 false}
!139 = !{ptr @at_xdmac_prep_dma_cyclic._entry_ptr.66, !137, !"_entry_ptr", i1 false, i1 false}
!140 = !{ptr @.str.68, !141, !"<string literal>", i1 false, i1 false}
!141 = !{!"../drivers/dma/at_xdmac.c", i32 821, i32 4}
!142 = !{ptr @at_xdmac_prep_dma_cyclic._entry.67, !141, !"_entry", i1 false, i1 false}
!143 = !{ptr @at_xdmac_prep_dma_cyclic._entry_ptr.69, !141, !"_entry_ptr", i1 false, i1 false}
!144 = !{ptr @.str.70, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/dma/at_xdmac.c", i32 829, i32 3}
!146 = !{ptr @at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug250, !145, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!147 = !{ptr @.str.71, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/dma/at_xdmac.c", i32 846, i32 3}
!149 = !{ptr @at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug251, !148, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!150 = !{ptr @.str.72, !151, !"<string literal>", i1 false, i1 false}
!151 = !{!"../drivers/dma/at_xdmac.c", i32 858, i32 3}
!152 = !{ptr @at_xdmac_prep_dma_cyclic.__UNIQUE_ID_ddebug252, !151, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!153 = !{ptr @.str.73, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/dma/at_xdmac.c", i32 609, i32 4}
!155 = !{ptr @.str.74, !154, !"<string literal>", i1 false, i1 false}
!156 = !{ptr @at_xdmac_compute_chan_conf._entry, !154, !"_entry", i1 false, i1 false}
!157 = !{ptr @at_xdmac_compute_chan_conf._entry_ptr, !154, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.76, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/dma/at_xdmac.c", i32 615, i32 4}
!160 = !{ptr @at_xdmac_compute_chan_conf._entry.75, !159, !"_entry", i1 false, i1 false}
!161 = !{ptr @at_xdmac_compute_chan_conf._entry_ptr.77, !159, !"_entry_ptr", i1 false, i1 false}
!162 = !{ptr @at_xdmac_compute_chan_conf._entry.78, !163, !"_entry", i1 false, i1 false}
!163 = !{!"../drivers/dma/at_xdmac.c", i32 634, i32 4}
!164 = !{ptr @at_xdmac_compute_chan_conf._entry_ptr.79, !163, !"_entry_ptr", i1 false, i1 false}
!165 = !{ptr @.str.81, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/dma/at_xdmac.c", i32 640, i32 4}
!167 = !{ptr @at_xdmac_compute_chan_conf._entry.80, !166, !"_entry", i1 false, i1 false}
!168 = !{ptr @at_xdmac_compute_chan_conf._entry_ptr.82, !166, !"_entry_ptr", i1 false, i1 false}
!169 = !{ptr @.str.83, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/dma/at_xdmac.c", i32 646, i32 2}
!171 = !{ptr @at_xdmac_compute_chan_conf.__UNIQUE_ID_ddebug244, !170, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!172 = !{ptr @.str.84, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/dma/at_xdmac.c", i32 541, i32 2}
!174 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!175 = !{ptr @at_xdmac_queue_desc.__UNIQUE_ID_ddebug241, !173, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/dma/at_xdmac.c", i32 1016, i32 2}
!178 = !{ptr @.str.87, !177, !"<string literal>", i1 false, i1 false}
!179 = !{ptr @at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug260, !177, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!180 = !{ptr @at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug261, !181, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!181 = !{!"../drivers/dma/at_xdmac.c", i32 1033, i32 3}
!182 = !{ptr @.str.88, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/dma/at_xdmac.c", i32 1049, i32 4}
!184 = !{ptr @at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug262, !183, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!185 = !{ptr @at_xdmac_prep_interleaved.__UNIQUE_ID_ddebug263, !186, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!186 = !{!"../drivers/dma/at_xdmac.c", i32 1066, i32 4}
!187 = !{ptr @.str.89, !188, !"<string literal>", i1 false, i1 false}
!188 = !{!"../drivers/dma/at_xdmac.c", i32 934, i32 3}
!189 = !{ptr @.str.90, !188, !"<string literal>", i1 false, i1 false}
!190 = !{ptr @at_xdmac_interleaved_queue_desc.__UNIQUE_ID_ddebug257, !188, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!191 = !{ptr @.str.91, !192, !"<string literal>", i1 false, i1 false}
!192 = !{!"../drivers/dma/at_xdmac.c", i32 942, i32 3}
!193 = !{ptr @at_xdmac_interleaved_queue_desc.__UNIQUE_ID_ddebug258, !192, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!194 = !{ptr @at_xdmac_interleaved_queue_desc._entry, !195, !"_entry", i1 false, i1 false}
!195 = !{!"../drivers/dma/at_xdmac.c", i32 963, i32 3}
!196 = !{ptr @at_xdmac_interleaved_queue_desc._entry_ptr, !195, !"_entry_ptr", i1 false, i1 false}
!197 = !{ptr @.str.92, !198, !"<string literal>", i1 false, i1 false}
!198 = !{!"../drivers/dma/at_xdmac.c", i32 982, i32 2}
!199 = !{ptr @at_xdmac_interleaved_queue_desc.__UNIQUE_ID_ddebug259, !198, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!200 = !{ptr @.str.93, !201, !"<string literal>", i1 false, i1 false}
!201 = !{!"../drivers/dma/at_xdmac.c", i32 885, i32 3}
!202 = !{ptr @.str.94, !201, !"<string literal>", i1 false, i1 false}
!203 = !{ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug253, !201, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!204 = !{ptr @.str.95, !205, !"<string literal>", i1 false, i1 false}
!205 = !{!"../drivers/dma/at_xdmac.c", i32 888, i32 3}
!206 = !{ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug254, !205, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!207 = !{ptr @.str.96, !208, !"<string literal>", i1 false, i1 false}
!208 = !{!"../drivers/dma/at_xdmac.c", i32 891, i32 3}
!209 = !{ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug255, !208, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!210 = !{ptr @.str.97, !211, !"<string literal>", i1 false, i1 false}
!211 = !{!"../drivers/dma/at_xdmac.c", i32 894, i32 3}
!212 = !{ptr @at_xdmac_align_width.__UNIQUE_ID_ddebug256, !211, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!213 = !{ptr @.str.98, !214, !"<string literal>", i1 false, i1 false}
!214 = !{!"../drivers/dma/at_xdmac.c", i32 553, i32 2}
!215 = !{ptr @.str.99, !214, !"<string literal>", i1 false, i1 false}
!216 = !{ptr @at_xdmac_increment_block_count.__UNIQUE_ID_ddebug242, !214, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!217 = !{ptr @.str.100, !218, !"<string literal>", i1 false, i1 false}
!218 = !{!"../drivers/dma/at_xdmac.c", i32 1119, i32 2}
!219 = !{ptr @.str.101, !218, !"<string literal>", i1 false, i1 false}
!220 = !{ptr @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug264, !218, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!221 = !{ptr @.str.102, !222, !"<string literal>", i1 false, i1 false}
!222 = !{!"../drivers/dma/at_xdmac.c", i32 1131, i32 3}
!223 = !{ptr @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug265, !222, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!224 = !{ptr @at_xdmac_prep_dma_memcpy._entry, !225, !"_entry", i1 false, i1 false}
!225 = !{!"../drivers/dma/at_xdmac.c", i32 1137, i32 4}
!226 = !{ptr @at_xdmac_prep_dma_memcpy._entry_ptr, !225, !"_entry_ptr", i1 false, i1 false}
!227 = !{ptr @.str.103, !228, !"<string literal>", i1 false, i1 false}
!228 = !{!"../drivers/dma/at_xdmac.c", i32 1153, i32 3}
!229 = !{ptr @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug266, !228, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!230 = !{ptr @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug267, !231, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!231 = !{!"../drivers/dma/at_xdmac.c", i32 1172, i32 3}
!232 = !{ptr @at_xdmac_prep_dma_memcpy.__UNIQUE_ID_ddebug268, !233, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!233 = !{!"../drivers/dma/at_xdmac.c", i32 1184, i32 3}
!234 = !{ptr @.str.104, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/dma/at_xdmac.c", i32 1272, i32 2}
!236 = !{ptr @.str.105, !235, !"<string literal>", i1 false, i1 false}
!237 = !{ptr @at_xdmac_prep_dma_memset.__UNIQUE_ID_ddebug270, !235, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!238 = !{ptr @.str.106, !239, !"<string literal>", i1 false, i1 false}
!239 = !{!"../drivers/dma/at_xdmac.c", i32 1231, i32 3}
!240 = !{ptr @.str.107, !239, !"<string literal>", i1 false, i1 false}
!241 = !{ptr @at_xdmac_memset_create_desc._entry, !239, !"_entry", i1 false, i1 false}
!242 = !{ptr @at_xdmac_memset_create_desc._entry_ptr, !239, !"_entry_ptr", i1 false, i1 false}
!243 = !{ptr @at_xdmac_memset_create_desc._entry.108, !244, !"_entry", i1 false, i1 false}
!244 = !{!"../drivers/dma/at_xdmac.c", i32 1241, i32 3}
!245 = !{ptr @at_xdmac_memset_create_desc._entry_ptr.109, !244, !"_entry_ptr", i1 false, i1 false}
!246 = !{ptr @.str.110, !247, !"<string literal>", i1 false, i1 false}
!247 = !{!"../drivers/dma/at_xdmac.c", i32 1257, i32 2}
!248 = !{ptr @at_xdmac_memset_create_desc.__UNIQUE_ID_ddebug269, !247, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!249 = !{ptr @.str.111, !250, !"<string literal>", i1 false, i1 false}
!250 = !{!"../drivers/dma/at_xdmac.c", i32 1303, i32 2}
!251 = !{ptr @.str.112, !250, !"<string literal>", i1 false, i1 false}
!252 = !{ptr @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug271, !250, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!253 = !{ptr @.str.113, !254, !"<string literal>", i1 false, i1 false}
!254 = !{!"../drivers/dma/at_xdmac.c", i32 1308, i32 3}
!255 = !{ptr @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug272, !254, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!256 = !{ptr @.str.114, !257, !"<string literal>", i1 false, i1 false}
!257 = !{!"../drivers/dma/at_xdmac.c", i32 1350, i32 5}
!258 = !{ptr @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug273, !257, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!259 = !{ptr @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug274, !260, !"__UNIQUE_ID_ddebug274", i1 false, i1 false}
!260 = !{!"../drivers/dma/at_xdmac.c", i32 1398, i32 5}
!261 = !{ptr @at_xdmac_prep_dma_memset_sg.__UNIQUE_ID_ddebug275, !262, !"__UNIQUE_ID_ddebug275", i1 false, i1 false}
!262 = !{!"../drivers/dma/at_xdmac.c", i32 1413, i32 4}
!263 = !{ptr @.str.115, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/dma/at_xdmac.c", i32 701, i32 3}
!265 = !{ptr @at_xdmac_prep_slave_sg._entry, !264, !"_entry", i1 false, i1 false}
!266 = !{ptr @at_xdmac_prep_slave_sg._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!267 = !{ptr @.str.116, !268, !"<string literal>", i1 false, i1 false}
!268 = !{!"../drivers/dma/at_xdmac.c", i32 705, i32 2}
!269 = !{ptr @at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug245, !268, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!270 = !{ptr @.str.117, !268, !"<string literal>", i1 false, i1 false}
!271 = !{ptr @.str.118, !268, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.120, !273, !"<string literal>", i1 false, i1 false}
!273 = !{!"../drivers/dma/at_xdmac.c", i32 724, i32 4}
!274 = !{ptr @at_xdmac_prep_slave_sg._entry.119, !273, !"_entry", i1 false, i1 false}
!275 = !{ptr @at_xdmac_prep_slave_sg._entry_ptr.121, !273, !"_entry_ptr", i1 false, i1 false}
!276 = !{ptr @.str.122, !277, !"<string literal>", i1 false, i1 false}
!277 = !{!"../drivers/dma/at_xdmac.c", i32 727, i32 3}
!278 = !{ptr @at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug246, !277, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!279 = !{ptr @at_xdmac_prep_slave_sg._entry.123, !280, !"_entry", i1 false, i1 false}
!280 = !{!"../drivers/dma/at_xdmac.c", i32 732, i32 4}
!281 = !{ptr @at_xdmac_prep_slave_sg._entry_ptr.124, !280, !"_entry_ptr", i1 false, i1 false}
!282 = !{ptr @at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug247, !283, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!283 = !{!"../drivers/dma/at_xdmac.c", i32 757, i32 3}
!284 = !{ptr @at_xdmac_prep_slave_sg.__UNIQUE_ID_ddebug248, !285, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!285 = !{!"../drivers/dma/at_xdmac.c", i32 769, i32 3}
!286 = !{ptr @.str.125, !287, !"<string literal>", i1 false, i1 false}
!287 = !{!"../drivers/dma/at_xdmac.c", i32 1794, i32 2}
!288 = !{ptr @at_xdmac_device_config.__UNIQUE_ID_ddebug286, !287, !"__UNIQUE_ID_ddebug286", i1 false, i1 false}
!289 = !{ptr @.str.126, !290, !"<string literal>", i1 false, i1 false}
!290 = !{!"../drivers/dma/at_xdmac.c", i32 675, i32 3}
!291 = !{ptr @.str.127, !290, !"<string literal>", i1 false, i1 false}
!292 = !{ptr @at_xdmac_set_slave_config._entry, !290, !"_entry", i1 false, i1 false}
!293 = !{ptr @at_xdmac_set_slave_config._entry_ptr, !290, !"_entry_ptr", i1 false, i1 false}
!294 = !{ptr @.str.128, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/dma/at_xdmac.c", i32 1809, i32 2}
!296 = !{ptr @at_xdmac_device_pause.__UNIQUE_ID_ddebug287, !295, !"__UNIQUE_ID_ddebug287", i1 false, i1 false}
!297 = !{ptr @.str.129, !298, !"<string literal>", i1 false, i1 false}
!298 = !{!"../drivers/dma/at_xdmac.c", i32 1830, i32 2}
!299 = !{ptr @at_xdmac_device_resume.__UNIQUE_ID_ddebug288, !298, !"__UNIQUE_ID_ddebug288", i1 false, i1 false}
!300 = !{ptr @.str.130, !301, !"<string literal>", i1 false, i1 false}
!301 = !{!"../drivers/dma/at_xdmac.c", i32 1852, i32 2}
!302 = !{ptr @at_xdmac_device_terminate_all.__UNIQUE_ID_ddebug289, !301, !"__UNIQUE_ID_ddebug289", i1 false, i1 false}
!303 = !{ptr @.str.131, !304, !"<string literal>", i1 false, i1 false}
!304 = !{!"../drivers/dma/at_xdmac.c", i32 1680, i32 2}
!305 = !{ptr @.str.132, !304, !"<string literal>", i1 false, i1 false}
!306 = !{ptr @at_xdmac_tasklet.__UNIQUE_ID_ddebug280, !304, !"__UNIQUE_ID_ddebug280", i1 false, i1 false}
!307 = !{ptr @at_xdmac_tasklet.__UNIQUE_ID_ddebug281, !308, !"__UNIQUE_ID_ddebug281", i1 false, i1 false}
!308 = !{!"../drivers/dma/at_xdmac.c", i32 1694, i32 2}
!309 = !{ptr @.str.133, !310, !"<string literal>", i1 false, i1 false}
!310 = !{!"../drivers/dma/at_xdmac.c", i32 1696, i32 3}
!311 = !{ptr @at_xdmac_tasklet._entry, !310, !"_entry", i1 false, i1 false}
!312 = !{ptr @at_xdmac_tasklet._entry_ptr, !310, !"_entry_ptr", i1 false, i1 false}
!313 = !{ptr @.str.134, !314, !"<string literal>", i1 false, i1 false}
!314 = !{!"../drivers/dma/at_xdmac.c", i32 1614, i32 2}
!315 = !{ptr @at_xdmac_handle_cyclic.__UNIQUE_ID_ddebug278, !314, !"__UNIQUE_ID_ddebug278", i1 false, i1 false}
!316 = !{ptr @.str.135, !317, !"<string literal>", i1 false, i1 false}
!317 = !{!"../drivers/dma/at_xdmac.c", i32 1641, i32 3}
!318 = !{ptr @.str.136, !317, !"<string literal>", i1 false, i1 false}
!319 = !{ptr @at_xdmac_handle_error._entry, !317, !"_entry", i1 false, i1 false}
!320 = !{ptr @at_xdmac_handle_error._entry_ptr, !317, !"_entry_ptr", i1 false, i1 false}
!321 = !{ptr @.str.138, !322, !"<string literal>", i1 false, i1 false}
!322 = !{!"../drivers/dma/at_xdmac.c", i32 1643, i32 3}
!323 = !{ptr @at_xdmac_handle_error._entry.137, !322, !"_entry", i1 false, i1 false}
!324 = !{ptr @at_xdmac_handle_error._entry_ptr.139, !322, !"_entry_ptr", i1 false, i1 false}
!325 = !{ptr @.str.141, !326, !"<string literal>", i1 false, i1 false}
!326 = !{!"../drivers/dma/at_xdmac.c", i32 1645, i32 3}
!327 = !{ptr @at_xdmac_handle_error._entry.140, !326, !"_entry", i1 false, i1 false}
!328 = !{ptr @at_xdmac_handle_error._entry_ptr.142, !326, !"_entry_ptr", i1 false, i1 false}
!329 = !{ptr @at_xdmac_handle_error.__UNIQUE_ID_ddebug279, !330, !"__UNIQUE_ID_ddebug279", i1 false, i1 false}
!330 = !{!"../drivers/dma/at_xdmac.c", i32 1657, i32 2}
!331 = !{ptr @.str.143, !332, !"<string literal>", i1 false, i1 false}
!332 = !{!"../drivers/dma/at_xdmac.c", i32 567, i32 3}
!333 = !{ptr @.str.144, !332, !"<string literal>", i1 false, i1 false}
!334 = !{ptr @at_xdmac_xlate._entry, !332, !"_entry", i1 false, i1 false}
!335 = !{ptr @at_xdmac_xlate._entry_ptr, !332, !"_entry_ptr", i1 false, i1 false}
!336 = !{ptr @.str.146, !337, !"<string literal>", i1 false, i1 false}
!337 = !{!"../drivers/dma/at_xdmac.c", i32 573, i32 3}
!338 = !{ptr @at_xdmac_xlate._entry.145, !337, !"_entry", i1 false, i1 false}
!339 = !{ptr @at_xdmac_xlate._entry_ptr.147, !337, !"_entry_ptr", i1 false, i1 false}
!340 = !{ptr @.str.148, !341, !"<string literal>", i1 false, i1 false}
!341 = !{!"../drivers/dma/at_xdmac.c", i32 581, i32 2}
!342 = !{ptr @at_xdmac_xlate.__UNIQUE_ID_ddebug243, !341, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!343 = !{ptr @.str.149, !344, !"<string literal>", i1 false, i1 false}
!344 = !{!"../drivers/dma/at_xdmac.c", i32 1932, i32 47}
!345 = !{ptr @.str.150, !346, !"<string literal>", i1 false, i1 false}
!346 = !{!"../drivers/dma/at_xdmac.c", i32 1934, i32 3}
!347 = !{ptr @.str.151, !346, !"<string literal>", i1 false, i1 false}
!348 = !{ptr @at_xdmac_axi_config._entry, !346, !"_entry", i1 false, i1 false}
!349 = !{ptr @at_xdmac_axi_config._entry_ptr, !346, !"_entry_ptr", i1 false, i1 false}
!350 = !{ptr @atmel_xdmac_dt_ids, !351, !"atmel_xdmac_dt_ids", i1 false, i1 false}
!351 = !{!"../drivers/dma/at_xdmac.c", i32 2209, i32 34}
!352 = !{ptr @at_xdmac_sama5d4_layout, !353, !"at_xdmac_sama5d4_layout", i1 false, i1 false}
!353 = !{!"../drivers/dma/at_xdmac.c", i32 280, i32 37}
!354 = !{ptr @at_xdmac_sama7g5_layout, !355, !"at_xdmac_sama7g5_layout", i1 false, i1 false}
!355 = !{!"../drivers/dma/at_xdmac.c", i32 293, i32 37}
!356 = !{ptr @atmel_xdmac_dev_pm_ops, !357, !"atmel_xdmac_dev_pm_ops", i1 false, i1 false}
!357 = !{!"../drivers/dma/at_xdmac.c", i32 2204, i32 47}
!358 = !{i32 1, !"wchar_size", i32 2}
!359 = !{i32 1, !"min_enum_size", i32 4}
!360 = !{i32 8, !"branch-target-enforcement", i32 0}
!361 = !{i32 8, !"sign-return-address", i32 0}
!362 = !{i32 8, !"sign-return-address-all", i32 0}
!363 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!364 = !{i32 7, !"uwtable", i32 1}
!365 = !{i32 7, !"frame-pointer", i32 2}
!366 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!367 = !{i64 6370054}
!368 = !{i64 2154747213}
!369 = !{i64 2154747055}
!370 = !{i64 6369636}
!371 = !{i64 2154455853}
!372 = !{i64 2154455695}
!373 = !{i64 2148792794, i64 2148792799, i64 2148792812, i64 2148792856, i64 2148792890, i64 2148792911}
!374 = !{!"auto-init"}
!375 = !{i64 2154409244}
!376 = !{i8 0, i8 2}
!377 = !{i64 2154613537}
!378 = !{i64 2154613379}
!379 = !{i64 2154614048}
!380 = !{i64 2154614557}
!381 = !{i64 2154615078}
!382 = !{i64 2154615587}
!383 = !{i64 2154616736}
!384 = !{i64 2154616578}
!385 = !{!"branch_weights", i32 1, i32 2000}
!386 = !{i64 2154679567}
!387 = !{i64 2154679409}
!388 = !{i64 2154686032}
!389 = !{i64 2154685874}
!390 = !{i64 2154407744, i64 2154408231, i64 2154407781, i64 2154407837, i64 2154407871, i64 2154407895, i64 2154407936, i64 2154407957, i64 2154407985, i64 2154408019}
!391 = !{i64 2154470982}
!392 = !{i32 0, i32 33}
!393 = !{i64 2154638859}
!394 = !{i64 2154638701}
!395 = !{i64 2154726026}
!396 = !{i64 2154725868}
!397 = !{i64 2154733201}
