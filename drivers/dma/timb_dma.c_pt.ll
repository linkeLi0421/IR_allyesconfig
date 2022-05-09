; ModuleID = '/llk/IR_all_yes/drivers/dma/timb_dma.c_pt.bc'
source_filename = "../drivers/dma/timb_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.timb_dma = type { %struct.dma_device, ptr, %struct.tasklet_struct, [0 x %struct.timb_dma_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.timb_dma_chan = type { %struct.dma_chan, ptr, %struct.spinlock, i8, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, i32, i32 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.timb_dma_platform_data = type { i32, [32 x %struct.timb_dma_platform_data_channel] }
%struct.timb_dma_platform_data_channel = type { i8, i32, i32, i32 }
%struct.timb_dma_desc = type { %struct.list_head, %struct.dma_async_tx_descriptor, ptr, i32, i8 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }

@__initcall__kmod_timb_dma__258_768_td_driver_init6 = internal global ptr @td_driver_init, section ".initcall6.init", align 4
@td_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @td_probe, ptr @td_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_td_driver_exit = internal global ptr @td_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_file259 = internal constant [35 x i8] c"timb_dma.file=drivers/dma/timb_dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license260 = internal constant [24 x i8] c"timb_dma.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_description261 = internal constant [54 x i8] c"timb_dma.description=Timberdale DMA controller driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author262 = internal constant [52 x i8] c"timb_dma.author=Pelagicore AB <info@pelagicore.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_alias263 = internal constant [33 x i8] c"timb_dma.alias=platform:timb-dma\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timb-dma\00", [23 x i8] zeroinitializer }, align 32
@td_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 622, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"No platform data\0A\00", [46 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"td_probe\00", [23 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/timb_dma.c\00", [41 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@td_probe._entry_ptr = internal global ptr @td_probe._entry, section ".printk_index", align 4
@iomem_resource = external dso_local global %struct.resource, align 4
@td_probe.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 0, i8 -95, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"timb_dma\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Allocated TD: %p\0A\00", [46 x i8] zeroinitializer }, align 32
@td_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 649, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to remap I/O memory\0A\00", [36 x i8] zeroinitializer }, align 32
@td_probe._entry_ptr.10 = internal global ptr @td_probe._entry.8, section ".printk_index", align 4
@td_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 665, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Failed to request IRQ\0A\00", [41 x i8] zeroinitializer }, align 32
@td_probe._entry_ptr.13 = internal global ptr @td_probe._entry.11, section ".printk_index", align 4
@td_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.2, ptr @.str.3, i32 690, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Wrong channel configuration\0A\00", [35 x i8] zeroinitializer }, align 32
@td_probe._entry_ptr.16 = internal global ptr @td_probe._entry.14, section ".printk_index", align 4
@td_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"&td_chan->lock\00", [17 x i8] zeroinitializer }, align 32
@td_probe.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.18, i8 0, i8 -78, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.18 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Chan: %d, membase: %p\0A\00", [41 x i8] zeroinitializer }, align 32
@td_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 720, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Failed to register async device\0A\00", [63 x i8] zeroinitializer }, align 32
@td_probe._entry_ptr.21 = internal global ptr @td_probe._entry.19, section ".printk_index", align 4
@td_probe.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.2, ptr @.str.3, ptr @.str.22, i8 0, i8 -75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Probe result: %d\0A\00", [46 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@__td_finish.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.23, ptr @.str.3, ptr @.str.24, i8 0, i8 58, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"__td_finish\00", [20 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"descriptor %u complete\0A\00", [40 x i8] zeroinitializer }, align 32
@__td_start_next.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.25, ptr @.str.3, ptr @.str.26, i8 0, i8 72, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"__td_start_next\00", [16 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: started %u\0A\00", [16 x i8] zeroinitializer }, align 32
@__td_start_dma._entry = internal constant %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.3, i32 184, ptr @.str.4, ptr @.str.5 }, align 1
@.str.27 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Transfer already ongoing\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"__td_start_dma\00", [17 x i8] zeroinitializer }, align 32
@__td_start_dma._entry_ptr = internal global ptr @__td_start_dma._entry, section ".printk_index", align 4
@__td_start_dma.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.28, ptr @.str.3, ptr @.str.29, i8 0, i8 48, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"td_chan: %p, chan: %d, membase: %p\0A\00", [60 x i8] zeroinitializer }, align 32
@__td_enable_chan_irq.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.30, ptr @.str.3, ptr @.str.31, i8 0, i8 30, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"__td_enable_chan_irq\00", [43 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"Enabling irq: %d, IER: 0x%x\0A\00", [35 x i8] zeroinitializer }, align 32
@td_alloc_chan_resources.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.32, ptr @.str.3, ptr @.str.33, i8 0, i8 101, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.32 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"td_alloc_chan_resources\00", [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: entry\0A\00", [21 x i8] zeroinitializer }, align 32
@td_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.32, ptr @.str.3, i32 417, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"Couldn't allocate any descriptors\0A\00", [61 x i8] zeroinitializer }, align 32
@td_alloc_chan_resources._entry_ptr = internal global ptr @td_alloc_chan_resources._entry, section ".printk_index", align 4
@td_alloc_init_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 347, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"DMA mapping error: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"td_alloc_init_desc\00", [45 x i8] zeroinitializer }, align 32
@td_alloc_init_desc._entry_ptr = internal global ptr @td_alloc_init_desc._entry, section ".printk_index", align 4
@td_tx_submit.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.37, ptr @.str.3, ptr @.str.26, i8 0, i8 76, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"td_tx_submit\00", [19 x i8] zeroinitializer }, align 32
@td_tx_submit.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.37, ptr @.str.3, ptr @.str.38, i8 0, i8 78, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"tx_submit: queued %u\0A\00", [42 x i8] zeroinitializer }, align 32
@dma_map_single_attrs.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"include/linux/dma-mapping.h\00", [36 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s %s: rejecting DMA map of vmalloc memory\0A\00", [52 x i8] zeroinitializer }, align 32
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@td_desc_put.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.41, ptr @.str.3, ptr @.str.42, i8 0, i8 93, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.41 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"td_desc_put\00", [20 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Putting desc: %p\0A\00", [46 x i8] zeroinitializer }, align 32
@td_free_chan_resources.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.43, ptr @.str.3, ptr @.str.44, i8 0, i8 109, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"td_free_chan_resources\00", [41 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"%s: Entry\0A\00", [21 x i8] zeroinitializer }, align 32
@td_free_chan_resources.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.43, ptr @.str.3, ptr @.str.45, i8 0, i8 112, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"%s: Freeing desc: %p\0A\00", [42 x i8] zeroinitializer }, align 32
@td_free_desc.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 90, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.46 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"td_free_desc\00", [19 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"Freeing desc: %p\0A\00", [46 x i8] zeroinitializer }, align 32
@td_tx_status.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.48, ptr @.str.3, ptr @.str.44, i8 0, i8 115, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"td_tx_status\00", [19 x i8] zeroinitializer }, align 32
@td_tx_status.__UNIQUE_ID_ddebug251 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.48, ptr @.str.3, ptr @.str.49, i8 0, i8 116, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.49 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"%s: exit, ret: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@td_issue_pending.__UNIQUE_ID_ddebug252 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.50, ptr @.str.3, ptr @.str.44, i8 0, i8 118, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"td_issue_pending\00", [47 x i8] zeroinitializer }, align 32
@__td_dma_done_ack.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.51, ptr @.str.3, ptr @.str.52, i8 0, i8 33, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"__td_dma_done_ack\00", [46 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Checking irq: %d, td: %p\0A\00", [38 x i8] zeroinitializer }, align 32
@td_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 502, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"%s: No SG list\0A\00", [16 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"td_prep_slave_sg\00", [47 x i8] zeroinitializer }, align 32
@td_prep_slave_sg._entry_ptr = internal global ptr @td_prep_slave_sg._entry, section ".printk_index", align 4
@td_prep_slave_sg._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 509, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Requesting channel in wrong direction\0A\00", [57 x i8] zeroinitializer }, align 32
@td_prep_slave_sg._entry_ptr.57 = internal global ptr @td_prep_slave_sg._entry.55, section ".printk_index", align 4
@td_prep_slave_sg._entry.58 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.59, ptr @.str.54, ptr @.str.3, i32 515, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Not enough descriptors available\0A\00", [62 x i8] zeroinitializer }, align 32
@td_prep_slave_sg._entry_ptr.60 = internal global ptr @td_prep_slave_sg._entry.58, section ".printk_index", align 4
@td_prep_slave_sg._entry.61 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.62, ptr @.str.54, ptr @.str.3, i32 524, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"No descriptor space\0A\00", [43 x i8] zeroinitializer }, align 32
@td_prep_slave_sg._entry_ptr.63 = internal global ptr @td_prep_slave_sg._entry.61, section ".printk_index", align 4
@td_prep_slave_sg._entry.64 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.65, ptr @.str.54, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.65 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Failed to update desc: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@td_prep_slave_sg._entry_ptr.66 = internal global ptr @td_prep_slave_sg._entry.64, section ".printk_index", align 4
@td_desc_get.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.67, ptr @.str.3, ptr @.str.68, i8 0, i8 98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"td_desc_get\00", [20 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"desc %p not ACKed\0A\00", [45 x i8] zeroinitializer }, align 32
@td_fill_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.69, ptr @.str.70, ptr @.str.3, i32 149, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Too big sg element\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"td_fill_desc\00", [19 x i8] zeroinitializer }, align 32
@td_fill_desc._entry_ptr = internal global ptr @td_fill_desc._entry, section ".printk_index", align 4
@td_fill_desc._entry.71 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.72, ptr @.str.70, ptr @.str.3, i32 156, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.72 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Incorrect length: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@td_fill_desc._entry_ptr.73 = internal global ptr @td_fill_desc._entry.71, section ".printk_index", align 4
@td_fill_desc.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.70, ptr @.str.3, ptr @.str.74, i8 0, i8 40, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"desc: %p, addr: 0x%llx\0A\00", [40 x i8] zeroinitializer }, align 32
@td_terminate_all.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.75, ptr @.str.3, ptr @.str.44, i8 0, i8 -119, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.75 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"td_terminate_all\00", [47 x i8] zeroinitializer }, align 32
@td_remove.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.6, ptr @.str.76, ptr @.str.3, ptr @.str.77, i8 0, i8 -67, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"td_remove\00", [22 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"Removed...\0A\00", [20 x i8] zeroinitializer }, align 32
@___asan_gen_.78 = private unnamed_addr constant [10 x i8] c"td_driver\00", align 1
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 760, i32 31 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 762, i32 11 }
@___asan_gen_.101 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 622, i32 3 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 645, i32 2 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 649, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 665, i32 3 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 690, i32 4 }
@___asan_gen_.126 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 697, i32 3 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 712, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 720, i32 3 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 726, i32 2 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 233, i32 2 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 287, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 183, i32 3 }
@___asan_gen_.164 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 191, i32 2 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 120, i32 2 }
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 407, i32 2 }
@___asan_gen_.182 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 416, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 347, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 306, i32 3 }
@___asan_gen_.197 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 311, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant [31 x i8] c"../include/linux/dma-mapping.h\00", align 1
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.202, i32 326, i32 6 }
@___asan_gen_.209 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 373, i32 2 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 439, i32 2 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 450, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 362, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 461, i32 2 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 465, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 475, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 134, i32 2 }
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 502, i32 3 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 508, i32 3 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 515, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 524, i32 4 }
@___asan_gen_.272 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 531, i32 4 }
@___asan_gen_.278 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 393, i32 3 }
@___asan_gen_.287 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 149, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 155, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 160, i32 2 }
@___asan_gen_.299 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 551, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.304 = private constant [26 x i8] c"../drivers/dma/timb_dma.c\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.304, i32 756, i32 2 }
@llvm.compiler.used = appending global [100 x ptr] [ptr @__UNIQUE_ID_alias263, ptr @__UNIQUE_ID_author262, ptr @__UNIQUE_ID_description261, ptr @__UNIQUE_ID_file259, ptr @__UNIQUE_ID_license260, ptr @__exitcall_td_driver_exit, ptr @__initcall__kmod_timb_dma__258_768_td_driver_init6, ptr @__td_start_dma._entry, ptr @__td_start_dma._entry_ptr, ptr @td_alloc_chan_resources._entry, ptr @td_alloc_chan_resources._entry_ptr, ptr @td_alloc_init_desc._entry, ptr @td_alloc_init_desc._entry_ptr, ptr @td_driver_exit, ptr @td_fill_desc._entry, ptr @td_fill_desc._entry.71, ptr @td_fill_desc._entry_ptr, ptr @td_fill_desc._entry_ptr.73, ptr @td_prep_slave_sg._entry, ptr @td_prep_slave_sg._entry.55, ptr @td_prep_slave_sg._entry.58, ptr @td_prep_slave_sg._entry.61, ptr @td_prep_slave_sg._entry.64, ptr @td_prep_slave_sg._entry_ptr, ptr @td_prep_slave_sg._entry_ptr.57, ptr @td_prep_slave_sg._entry_ptr.60, ptr @td_prep_slave_sg._entry_ptr.63, ptr @td_prep_slave_sg._entry_ptr.66, ptr @td_probe._entry, ptr @td_probe._entry.11, ptr @td_probe._entry.14, ptr @td_probe._entry.19, ptr @td_probe._entry.8, ptr @td_probe._entry_ptr, ptr @td_probe._entry_ptr.10, ptr @td_probe._entry_ptr.13, ptr @td_probe._entry_ptr.16, ptr @td_probe._entry_ptr.21, ptr @td_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.15, ptr @td_probe.__key, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.59, ptr @.str.62, ptr @.str.65, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.72, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77], section "llvm.metadata"
@0 = internal global [76 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.101 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.164 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.182 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_alloc_init_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.197 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_prep_slave_sg._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_prep_slave_sg._entry.58 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_prep_slave_sg._entry.61 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_prep_slave_sg._entry.64 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.272 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.278 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_fill_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.287 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @td_fill_desc._entry.71 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.299 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.304 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @td_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @td_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @td_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @td_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @td_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup155

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %tobool3.not = icmp eq ptr %call2, null
  br i1 %tobool3.not, label %if.end.cleanup155_crit_edge, label %if.end5

if.end.cleanup155_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup155

if.end5:                                          ; preds = %if.end
  %call6 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call6)
  %cmp = icmp slt i32 %call6, 0
  br i1 %cmp, label %if.end5.cleanup155_crit_edge, label %if.end8

if.end5.cleanup155_crit_edge:                     ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup155

if.end8:                                          ; preds = %if.end5
  %2 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %call2, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call2, i32 0, i32 1
  %4 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %3
  %add.i = add i32 %sub.i, %5
  %call10 = tail call ptr @__request_region(ptr noundef nonnull @iomem_resource, i32 noundef %3, i32 noundef %add.i, ptr noundef nonnull @.str, i32 noundef 0) #8
  %tobool11.not = icmp eq ptr %call10, null
  br i1 %tobool11.not, label %if.end8.cleanup155_crit_edge, label %if.end8.i.i

if.end8.cleanup155_crit_edge:                     ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup155

if.end8.i.i:                                      ; preds = %if.end8
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %8 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %7, i32 156) #8
  %9 = extractvalue { i32, i1 } %8, 1
  %10 = extractvalue { i32, i1 } %8, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %10, i32 392) #8
  %retval.0.i246 = select i1 %9, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i246, i32 noundef 3520) #12
  %tobool16.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool16.not, label %if.end8.i.i.err_release_region_crit_edge, label %do.body19

if.end8.i.i.err_release_region_crit_edge:         ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_release_region

do.body19:                                        ; preds = %if.end8.i.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_probe.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_probe, %do.end29)) #8
          to label %if.then25 [label %do.end29], !srcloc !177

if.then25:                                        ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_probe.__UNIQUE_ID_ddebug254, ptr noundef %dev, ptr noundef nonnull @.str.7, ptr noundef nonnull %call9.i.i) #8
  br label %do.end29

do.end29:                                         ; preds = %if.then25, %do.body19
  %11 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %call2, align 4
  %13 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %end.i, align 4
  %sub.i248 = sub i32 1, %12
  %add.i249 = add i32 %sub.i248, %14
  %call32 = tail call ptr @ioremap(i32 noundef %12, i32 noundef %add.i249) #8
  %membase = getelementptr inbounds %struct.timb_dma, ptr %call9.i.i, i32 0, i32 1
  %15 = ptrtoint ptr %membase to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %call32, ptr %membase, align 4
  %tobool34.not = icmp eq ptr %call32, null
  br i1 %tobool34.not, label %do.end38, label %if.end40

do.end38:                                         ; preds = %do.end29
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #11
  br label %err_free_mem

if.end40:                                         ; preds = %do.end29
  %add.ptr = getelementptr i8, ptr %call32, i32 52
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 16777216) #8, !srcloc !179
  %16 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %membase, align 4
  %add.ptr43 = getelementptr i8, ptr %17, i32 524296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr43, i32 0) #8, !srcloc !179
  %18 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase, align 4
  %add.ptr45 = getelementptr i8, ptr %19, i32 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr45, i32 -1) #8, !srcloc !179
  %tasklet = getelementptr inbounds %struct.timb_dma, ptr %call9.i.i, i32 0, i32 2
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @td_tasklet) #8
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %call6, ptr noundef nonnull @td_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef nonnull %call9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool47.not = icmp eq i32 %call.i, 0
  br i1 %tobool47.not, label %if.end53, label %do.end51

do.end51:                                         ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #11
  br label %err_tasklet_kill

if.end53:                                         ; preds = %if.end40
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 27
  %20 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @td_alloc_chan_resources, ptr %device_alloc_chan_resources, align 128
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 29
  %21 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @td_free_chan_resources, ptr %device_free_chan_resources, align 8
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 49
  %22 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @td_tx_status, ptr %device_tx_status, align 8
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 50
  %23 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @td_issue_pending, ptr %device_issue_pending, align 4
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #8
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #8
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 39
  %24 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @td_prep_slave_sg, ptr %device_prep_slave_sg, align 16
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 47
  %25 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @td_terminate_all, ptr %device_terminate_all, align 16
  %dev64 = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 15
  %26 = ptrtoint ptr %dev64 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %dev, ptr %dev64, align 8
  %channels = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 3
  %27 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 3, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %channels, ptr %prev.i, align 16
  %29 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %cmp67266.not = icmp eq i32 %30, 0
  br i1 %cmp67266.not, label %if.end53.for.end_crit_edge, label %for.body.lr.ph

if.end53.for.end_crit_edge:                       ; preds = %if.end53
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end53
  %channels69 = getelementptr inbounds %struct.timb_dma_platform_data, ptr %1, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0267 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.timb_dma, ptr %call9.i.i, i32 0, i32 3, i32 %i.0267
  %add.ptr70 = getelementptr %struct.timb_dma_platform_data_channel, ptr %channels69, i32 %i.0267
  %i.0267.frozen = freeze i32 %i.0267
  %div = sdiv i32 %i.0267.frozen, 2
  %31 = mul i32 %div, 2
  %rem.decomposed = sub i32 %i.0267.frozen, %31
  %32 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load1_noabort(i32 %32)
  %33 = load i8, ptr %add.ptr70, align 4, !range !180
  %34 = zext i8 %33 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %rem.decomposed, i32 %34)
  %cmp72 = icmp eq i32 %rem.decomposed, %34
  br i1 %cmp72, label %for.body.err_free_irq_crit_edge, label %if.end79

for.body.err_free_irq_crit_edge:                  ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_irq

if.end79:                                         ; preds = %for.body
  %35 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call9.i.i, ptr %arrayidx, align 4
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 2
  %36 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 3
  %37 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 1, ptr %completed_cookie.i, align 4
  %lock = getelementptr %struct.timb_dma, ptr %call9.i.i, i32 0, i32 3, i32 %i.0267, i32 2
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.17, ptr noundef nonnull @td_probe.__key, i16 noundef signext 3) #8
  %active_list = getelementptr %struct.timb_dma, ptr %call9.i.i, i32 0, i32 3, i32 %i.0267, i32 4
  %38 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %38)
  store volatile ptr %active_list, ptr %active_list, align 4
  %prev.i250 = getelementptr %struct.timb_dma, ptr %call9.i.i, i32 0, i32 3, i32 %i.0267, i32 4, i32 1
  %39 = ptrtoint ptr %prev.i250 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %active_list, ptr %prev.i250, align 4
  %queue = getelementptr %struct.timb_dma, ptr %call9.i.i, i32 0, i32 3, i32 %i.0267, i32 5
  %40 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i251 = getelementptr %struct.timb_dma, ptr %call9.i.i, i32 0, i32 3, i32 %i.0267, i32 5, i32 1
  %41 = ptrtoint ptr %prev.i251 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %queue, ptr %prev.i251, align 4
  %free_list = getelementptr %struct.timb_dma, ptr %call9.i.i, i32 0, i32 3, i32 %i.0267, i32 6
  %42 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i252 = getelementptr %struct.timb_dma, ptr %call9.i.i, i32 0, i32 3, i32 %i.0267, i32 6, i32 1
  %43 = ptrtoint ptr %prev.i252 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %free_list, ptr %prev.i252, align 4
  %descriptors = getelementptr %struct.timb_dma_platform_data_channel, ptr %channels69, i32 %i.0267, i32 2
  %44 = ptrtoint ptr %descriptors to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %descriptors, align 4
  %descs = getelementptr %struct.timb_dma, ptr %call9.i.i, i32 0, i32 3, i32 %i.0267, i32 9
  %46 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %descs, align 4
  %descriptor_elements = getelementptr %struct.timb_dma_platform_data_channel, ptr %channels69, i32 %i.0267, i32 3
  %47 = ptrtoint ptr %descriptor_elements to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %descriptor_elements, align 4
  %desc_elems = getelementptr %struct.timb_dma, ptr %call9.i.i, i32 0, i32 3, i32 %i.0267, i32 10
  %49 = ptrtoint ptr %desc_elems to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %48, ptr %desc_elems, align 4
  %bytes_per_line = getelementptr %struct.timb_dma_platform_data_channel, ptr %channels69, i32 %i.0267, i32 1
  %50 = ptrtoint ptr %bytes_per_line to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %bytes_per_line, align 4
  %bytes_per_line86 = getelementptr %struct.timb_dma, ptr %call9.i.i, i32 0, i32 3, i32 %i.0267, i32 7
  %52 = ptrtoint ptr %bytes_per_line86 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %bytes_per_line86, align 4
  %53 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %add.ptr70, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %54)
  %tobool88.not = icmp eq i8 %54, 0
  %cond = select i1 %tobool88.not, i32 1, i32 2
  %direction = getelementptr %struct.timb_dma, ptr %call9.i.i, i32 0, i32 3, i32 %i.0267, i32 8
  %55 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %cond, ptr %direction, align 4
  %56 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %membase, align 4
  %mul = shl i32 %div, 6
  %add.ptr91 = getelementptr i8, ptr %57, i32 %mul
  %58 = ptrtoint ptr %add.ptr70 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %add.ptr70, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool93.not = icmp eq i8 %59, 0
  %cond95 = select i1 %tobool93.not, i32 24, i32 0
  %add.ptr96 = getelementptr i8, ptr %add.ptr91, i32 %cond95
  %membase97 = getelementptr %struct.timb_dma, ptr %call9.i.i, i32 0, i32 3, i32 %i.0267, i32 1
  %60 = ptrtoint ptr %membase97 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %add.ptr96, ptr %membase97, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_probe.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_probe, %do.end117)) #8
          to label %if.then112 [label %do.end117], !srcloc !177

if.then112:                                       ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #10
  %61 = ptrtoint ptr %membase97 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %membase97, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_probe.__UNIQUE_ID_ddebug255, ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef %i.0267, ptr noundef %62) #8
  br label %do.end117

do.end117:                                        ; preds = %if.then112, %if.end79
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 8
  %63 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i, align 16
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %64, ptr noundef %channels) #8
  br i1 %call.i.i, label %if.end.i.i254, label %do.end117.for.inc_crit_edge

do.end117.for.inc_crit_edge:                      ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i254:                                    ; preds = %do.end117
  call void @__sanitizer_cov_trace_pc() #10
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %device_node, ptr %prev.i, align 16
  %66 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 8, i32 1
  %67 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %device_node, ptr %64, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i254, %do.end117.for.inc_crit_edge
  %inc = add nuw i32 %i.0267, 1
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %1, align 4
  %cmp67 = icmp ult i32 %inc, %70
  br i1 %cmp67, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end53.for.end_crit_edge
  %call123 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call9.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call123)
  %tobool124.not = icmp eq i32 %call123, 0
  br i1 %tobool124.not, label %if.end130, label %for.end.err_free_irq_crit_edge

for.end.err_free_irq_crit_edge:                   ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_irq

if.end130:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %71 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %call9.i.i, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_probe.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_probe, %cleanup155)) #8
          to label %if.then145 [label %cleanup155], !srcloc !177

if.then145:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_probe.__UNIQUE_ID_ddebug256, ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef 0) #8
  br label %cleanup155

err_free_irq:                                     ; preds = %for.end.err_free_irq_crit_edge, %for.body.err_free_irq_crit_edge
  %.str.15.sink = phi ptr [ @.str.20, %for.end.err_free_irq_crit_edge ], [ @.str.15, %for.body.err_free_irq_crit_edge ]
  %err.2 = phi i32 [ %call123, %for.end.err_free_irq_crit_edge ], [ -22, %for.body.err_free_irq_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull %.str.15.sink) #11
  %call150 = tail call ptr @free_irq(i32 noundef %call6, ptr noundef nonnull %call9.i.i) #8
  br label %err_tasklet_kill

err_tasklet_kill:                                 ; preds = %err_free_irq, %do.end51
  %err.3 = phi i32 [ %call.i, %do.end51 ], [ %err.2, %err_free_irq ]
  tail call void @tasklet_kill(ptr noundef %tasklet) #8
  %72 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %73) #8
  br label %err_free_mem

err_free_mem:                                     ; preds = %err_tasklet_kill, %do.end38
  %err.4 = phi i32 [ %err.3, %err_tasklet_kill ], [ -12, %do.end38 ]
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #8
  br label %err_release_region

err_release_region:                               ; preds = %err_free_mem, %if.end8.i.i.err_release_region_crit_edge
  %err.5 = phi i32 [ %err.4, %err_free_mem ], [ -12, %if.end8.i.i.err_release_region_crit_edge ]
  %74 = ptrtoint ptr %call2 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %call2, align 4
  %76 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %end.i, align 4
  %sub.i256 = sub i32 1, %75
  %add.i257 = add i32 %sub.i256, %77
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %75, i32 noundef %add.i257) #8
  br label %cleanup155

cleanup155:                                       ; preds = %err_release_region, %if.then145, %if.end130, %if.end8.cleanup155_crit_edge, %if.end5.cleanup155_crit_edge, %if.end.cleanup155_crit_edge, %do.end
  %retval.0 = phi i32 [ %err.5, %err_release_region ], [ -22, %do.end ], [ -22, %if.end.cleanup155_crit_edge ], [ %call6, %if.end5.cleanup155_crit_edge ], [ -16, %if.end8.cleanup155_crit_edge ], [ 0, %if.then145 ], [ 0, %if.end130 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @td_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call2 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #8
  tail call void @dma_async_device_unregister(ptr noundef %1) #8
  %call3 = tail call ptr @free_irq(i32 noundef %call2, ptr noundef %1) #8
  %tasklet = getelementptr inbounds %struct.timb_dma, ptr %1, i32 0, i32 2
  tail call void @tasklet_kill(ptr noundef %tasklet) #8
  %membase = getelementptr inbounds %struct.timb_dma, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %membase, align 4
  tail call void @iounmap(ptr noundef %3) #8
  tail call void @kfree(ptr noundef %1) #8
  %4 = ptrtoint ptr %call1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %call1, align 4
  %end.i = getelementptr inbounds %struct.resource, ptr %call1, i32 0, i32 1
  %6 = ptrtoint ptr %end.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %end.i, align 4
  %sub.i = sub i32 1, %5
  %add.i = add i32 %sub.i, %7
  tail call void @__release_region(ptr noundef nonnull @iomem_resource, i32 noundef %5, i32 noundef %add.i) #8
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_remove.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_remove, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_remove.__UNIQUE_ID_ddebug257, ptr noundef %dev, ptr noundef nonnull @.str.77) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__request_region(ptr noundef, i32 noundef, i32 noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @td_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr i8, ptr %t, i32 -4
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 524288
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #8, !srcloc !181
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  %chancnt.i = getelementptr i8, ptr %t, i32 -364
  %4 = ptrtoint ptr %chancnt.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chancnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp11.not.i = icmp eq i32 %5, 0
  br i1 %cmp11.not.i, label %entry.__td_ier_mask.exit_crit_edge, label %for.body.lr.ph.i

entry.__td_ier_mask.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %__td_ier_mask.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %channels.i = getelementptr i8, ptr %t, i32 24
  br label %for.body.i

for.body.i:                                       ; preds = %if.end4.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %if.end4.i.for.body.i_crit_edge ]
  %ret.012.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %ret.2.i, %if.end4.i.for.body.i_crit_edge ]
  %ongoing.i = getelementptr %struct.timb_dma_chan, ptr %channels.i, i32 %i.013.i, i32 3
  %6 = ptrtoint ptr %ongoing.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %ongoing.i, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not.i = icmp eq i8 %7, 0
  br i1 %tobool.not.i, label %for.body.i.if.end4.i_crit_edge, label %if.then.i

for.body.i.if.end4.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i

if.then.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  %active_list.i = getelementptr %struct.timb_dma_chan, ptr %channels.i, i32 %i.013.i, i32 4
  %8 = ptrtoint ptr %active_list.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %active_list.i, align 4
  %interrupt.i = getelementptr inbounds %struct.timb_dma_desc, ptr %9, i32 0, i32 4
  %10 = ptrtoint ptr %interrupt.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %interrupt.i, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool2.not.i = icmp eq i8 %11, 0
  %shl.i = shl nuw i32 1, %i.013.i
  %or.i = select i1 %tobool2.not.i, i32 0, i32 %shl.i
  %ret.1.i = or i32 %or.i, %ret.012.i
  br label %if.end4.i

if.end4.i:                                        ; preds = %if.then.i, %for.body.i.if.end4.i_crit_edge
  %ret.2.i = phi i32 [ %ret.1.i, %if.then.i ], [ %ret.012.i, %for.body.i.if.end4.i_crit_edge ]
  %inc.i = add nuw i32 %i.013.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %5
  br i1 %exitcond.not.i, label %if.end4.i.__td_ier_mask.exit_crit_edge, label %if.end4.i.for.body.i_crit_edge

if.end4.i.for.body.i_crit_edge:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i

if.end4.i.__td_ier_mask.exit_crit_edge:           ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %__td_ier_mask.exit

__td_ier_mask.exit:                               ; preds = %if.end4.i.__td_ier_mask.exit_crit_edge, %entry.__td_ier_mask.exit_crit_edge
  %ret.0.lcssa.i = phi i32 [ 0, %entry.__td_ier_mask.exit_crit_edge ], [ %ret.2.i, %if.end4.i.__td_ier_mask.exit_crit_edge ]
  %and = and i32 %ret.0.lcssa.i, %3
  %12 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase, align 4
  %add.ptr4 = getelementptr i8, ptr %13, i32 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %and) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 %14) #8, !srcloc !179
  %15 = ptrtoint ptr %chancnt.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %chancnt.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp51.not = icmp eq i32 %16, 0
  br i1 %cmp51.not, label %__td_ier_mask.exit.__td_ier_mask.exit50_crit_edge, label %for.body.lr.ph

__td_ier_mask.exit.__td_ier_mask.exit50_crit_edge: ; preds = %__td_ier_mask.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__td_ier_mask.exit50

for.body.lr.ph:                                   ; preds = %__td_ier_mask.exit
  %channels = getelementptr i8, ptr %t, i32 24
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.052 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %shl = shl nuw i32 1, %i.052
  %and5 = and i32 %shl, %and
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and5)
  %tobool.not = icmp eq i32 %and5, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.then:                                          ; preds = %for.body
  %add.ptr6 = getelementptr %struct.timb_dma_chan, ptr %channels, i32 %i.052
  %lock = getelementptr inbounds %struct.timb_dma_chan, ptr %add.ptr6, i32 0, i32 2
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  tail call fastcc void @__td_finish(ptr noundef %add.ptr6)
  %queue = getelementptr inbounds %struct.timb_dma_chan, ptr %add.ptr6, i32 0, i32 5
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %18, %queue
  br i1 %cmp.i.not, label %if.then.if.end_crit_edge, label %if.then9

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then9:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__td_start_next(ptr noundef %add.ptr6)
  br label %if.end

if.end:                                           ; preds = %if.then9, %if.then.if.end_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  br label %for.inc

for.inc:                                          ; preds = %if.end, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.052, 1
  %19 = ptrtoint ptr %chancnt.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %chancnt.i, align 4
  %cmp = icmp ult i32 %inc, %20
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp11.not.i30 = icmp eq i32 %20, 0
  br i1 %cmp11.not.i30, label %for.end.__td_ier_mask.exit50_crit_edge, label %for.body.lr.ph.i32

for.end.__td_ier_mask.exit50_crit_edge:           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %__td_ier_mask.exit50

for.body.lr.ph.i32:                               ; preds = %for.end
  %channels.i31 = getelementptr i8, ptr %t, i32 24
  br label %for.body.i37

for.body.i37:                                     ; preds = %if.end4.i48.for.body.i37_crit_edge, %for.body.lr.ph.i32
  %i.013.i33 = phi i32 [ 0, %for.body.lr.ph.i32 ], [ %inc.i46, %if.end4.i48.for.body.i37_crit_edge ]
  %ret.012.i34 = phi i32 [ 0, %for.body.lr.ph.i32 ], [ %ret.2.i45, %if.end4.i48.for.body.i37_crit_edge ]
  %ongoing.i35 = getelementptr %struct.timb_dma_chan, ptr %channels.i31, i32 %i.013.i33, i32 3
  %21 = ptrtoint ptr %ongoing.i35 to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ongoing.i35, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool.not.i36 = icmp eq i8 %22, 0
  br i1 %tobool.not.i36, label %for.body.i37.if.end4.i48_crit_edge, label %if.then.i44

for.body.i37.if.end4.i48_crit_edge:               ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end4.i48

if.then.i44:                                      ; preds = %for.body.i37
  call void @__sanitizer_cov_trace_pc() #10
  %active_list.i38 = getelementptr %struct.timb_dma_chan, ptr %channels.i31, i32 %i.013.i33, i32 4
  %23 = ptrtoint ptr %active_list.i38 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %active_list.i38, align 4
  %interrupt.i39 = getelementptr inbounds %struct.timb_dma_desc, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %interrupt.i39 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %interrupt.i39, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %26)
  %tobool2.not.i40 = icmp eq i8 %26, 0
  %shl.i41 = shl nuw i32 1, %i.013.i33
  %or.i42 = select i1 %tobool2.not.i40, i32 0, i32 %shl.i41
  %ret.1.i43 = or i32 %or.i42, %ret.012.i34
  br label %if.end4.i48

if.end4.i48:                                      ; preds = %if.then.i44, %for.body.i37.if.end4.i48_crit_edge
  %ret.2.i45 = phi i32 [ %ret.1.i43, %if.then.i44 ], [ %ret.012.i34, %for.body.i37.if.end4.i48_crit_edge ]
  %inc.i46 = add nuw i32 %i.013.i33, 1
  %exitcond.not.i47 = icmp eq i32 %inc.i46, %20
  br i1 %exitcond.not.i47, label %if.end4.i48.__td_ier_mask.exit50_crit_edge, label %if.end4.i48.for.body.i37_crit_edge

if.end4.i48.for.body.i37_crit_edge:               ; preds = %if.end4.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body.i37

if.end4.i48.__td_ier_mask.exit50_crit_edge:       ; preds = %if.end4.i48
  call void @__sanitizer_cov_trace_pc() #10
  br label %__td_ier_mask.exit50

__td_ier_mask.exit50:                             ; preds = %if.end4.i48.__td_ier_mask.exit50_crit_edge, %for.end.__td_ier_mask.exit50_crit_edge, %__td_ier_mask.exit.__td_ier_mask.exit50_crit_edge
  %ret.0.lcssa.i49 = phi i32 [ 0, %for.end.__td_ier_mask.exit50_crit_edge ], [ 0, %__td_ier_mask.exit.__td_ier_mask.exit50_crit_edge ], [ %ret.2.i45, %if.end4.i48.__td_ier_mask.exit50_crit_edge ]
  %27 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %membase, align 4
  %add.ptr14 = getelementptr i8, ptr %28, i32 524296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %29 = tail call i32 @llvm.bswap.i32(i32 %ret.0.lcssa.i49) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %29) #8, !srcloc !179
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @td_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %membase = getelementptr inbounds %struct.timb_dma, ptr %devid, i32 0, i32 1
  %0 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %membase, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 524292
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !181
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not = icmp eq i32 %2, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then:                                          ; preds = %entry
  %3 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %membase, align 4
  %add.ptr2 = getelementptr i8, ptr %4, i32 524296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2, i32 0) #8, !srcloc !179
  %state.i = getelementptr inbounds %struct.timb_dma, ptr %devid, i32 0, i32 2, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then.cleanup_crit_edge

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %tasklet = getelementptr inbounds %struct.timb_dma, ptr %devid, i32 0, i32 2
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #8
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.then.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @td_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_alloc_chan_resources.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_alloc_chan_resources, %do.body6)) #8
          to label %if.then [label %do.body6], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_alloc_chan_resources.__UNIQUE_ID_ddebug247, ptr noundef %device.i, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.32) #8
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %free_list = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 6
  %2 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not = icmp eq ptr %3, %free_list
  br i1 %cmp.i.not, label %for.cond.preheader, label %do.body18, !prof !183

for.cond.preheader:                               ; preds = %do.body6
  %descs = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 9
  %4 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %descs, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp71.not = icmp eq i32 %5, 0
  br i1 %cmp71.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %desc_elems.i = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 10
  %dev.i.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %lock.i = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 2
  br label %for.body

do.body18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/timb_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 409, 0\0A.popsection", ""() #8, !srcloc !184
  unreachable

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.072 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 3520, i32 noundef 120) #13
  %tobool.not.i = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i, label %for.body.if.then29_crit_edge, label %if.end.i

for.body.if.then29_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.then29

if.end.i:                                         ; preds = %for.body
  %7 = ptrtoint ptr %desc_elems.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %desc_elems.i, align 4
  %mul.i = shl i32 %8, 3
  %desc_list_len.i = getelementptr inbounds %struct.timb_dma_desc, ptr %call7.i.i.i, i32 0, i32 3
  %9 = ptrtoint ptr %desc_list_len.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %mul.i, ptr %desc_list_len.i, align 8
  %call9.i.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %mul.i, i32 noundef 3520) #12
  %desc_list.i = getelementptr inbounds %struct.timb_dma_desc, ptr %call7.i.i.i, i32 0, i32 2
  %10 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call9.i.i.i, ptr %desc_list.i, align 4
  %tobool5.not.i = icmp eq ptr %call9.i.i.i, null
  br i1 %tobool5.not.i, label %if.end.i.err23.i_crit_edge, label %if.end7.i

if.end.i.err23.i_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err23.i

if.end7.i:                                        ; preds = %if.end.i
  %txd.i = getelementptr inbounds %struct.timb_dma_desc, ptr %call7.i.i.i, i32 0, i32 1
  tail call void @dma_async_tx_descriptor_init(ptr noundef %txd.i, ptr noundef %chan) #8
  %tx_submit.i = getelementptr inbounds %struct.timb_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 4
  %11 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @td_tx_submit, ptr %tx_submit.i, align 8
  %flags.i = getelementptr inbounds %struct.timb_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 1
  %12 = ptrtoint ptr %flags.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 2, ptr %flags.i, align 4
  %13 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %parent.i.i, align 8
  %parent1.i.i = getelementptr inbounds %struct.device, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %parent1.i.i, align 8
  %19 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %desc_list.i, align 4
  %21 = ptrtoint ptr %desc_list_len.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %desc_list_len.i, align 8
  %call.i.i = tail call zeroext i1 @is_vmalloc_addr(ptr noundef %20) #8
  br i1 %call.i.i, label %land.rhs.i.i, label %if.end39.i.i

land.rhs.i.i:                                     ; preds = %if.end7.i
  %.b1.i.i = load i1, ptr @dma_map_single_attrs.__already_done, align 1
  br i1 %.b1.i.i, label %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge, label %if.then.i.i, !prof !183

land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge: ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_map_single_attrs.exit.i

if.then.i.i:                                      ; preds = %land.rhs.i.i
  store i1 true, ptr @dma_map_single_attrs.__already_done, align 1
  %call16.i.i = tail call ptr @dev_driver_string(ptr noundef %18) #8
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %18, i32 0, i32 3
  %23 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %24, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i47.i, label %if.then.i.i.dev_name.exit.i.i_crit_edge

if.then.i.i.dev_name.exit.i.i_crit_edge:          ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit.i.i

if.end.i.i47.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %18 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %18, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i47.i, %if.then.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %26, %if.end.i.i47.i ], [ %24, %if.then.i.i.dev_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.39, i32 noundef 327, i32 noundef 9, ptr noundef nonnull @.str.40, ptr noundef %call16.i.i, ptr noundef %retval.0.i.i.i) #8
  br label %dma_map_single_attrs.exit.i

if.end39.i.i:                                     ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @debug_dma_map_single(ptr noundef %18, ptr noundef %20, i32 noundef %22) #8
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %27 = load ptr, ptr @mem_map, align 4
  %28 = ptrtoint ptr %20 to i32
  %sub.i.i = add i32 %28, 1073741824
  %shr.i.i = lshr i32 %sub.i.i, 12
  %add.ptr.i.i = getelementptr %struct.page, ptr %27, i32 %shr.i.i
  %and.i.i = and i32 %28, 4095
  %call41.i.i = tail call i32 @dma_map_page_attrs(ptr noundef %18, ptr noundef %add.ptr.i.i, i32 noundef %and.i.i, i32 noundef %22, i32 noundef 1, i32 noundef 0) #8
  br label %dma_map_single_attrs.exit.i

dma_map_single_attrs.exit.i:                      ; preds = %if.end39.i.i, %dev_name.exit.i.i, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge
  %retval.0.i.i = phi i32 [ %call41.i.i, %if.end39.i.i ], [ -1, %dev_name.exit.i.i ], [ -1, %land.rhs.i.i.dma_map_single_attrs.exit.i_crit_edge ]
  %phys.i = getelementptr inbounds %struct.timb_dma_desc, ptr %call7.i.i.i, i32 0, i32 1, i32 2
  %29 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %retval.0.i.i, ptr %phys.i, align 8
  %30 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i.i, align 4
  %parent.i49.i = getelementptr inbounds %struct.dma_chan_dev, ptr %31, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %parent.i49.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i49.i, align 8
  %parent1.i50.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %parent1.i50.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent1.i50.i, align 8
  tail call void @debug_dma_mapping_error(ptr noundef %35, i32 noundef %retval.0.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %retval.0.i.i)
  %cmp.i.i = icmp eq i32 %retval.0.i.i, -1
  br i1 %cmp.i.i, label %do.end.i, label %if.end36

do.end.i:                                         ; preds = %dma_map_single_attrs.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %dev.i.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %37, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i.i, ptr noundef nonnull @.str.35, i32 noundef -12) #11
  br label %err23.i

err23.i:                                          ; preds = %do.end.i, %if.end.i.err23.i_crit_edge
  %38 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %desc_list.i, align 4
  tail call void @kfree(ptr noundef %39) #8
  tail call void @kfree(ptr noundef nonnull %call7.i.i.i) #8
  br label %if.then29

if.then29:                                        ; preds = %err23.i, %for.body.if.then29_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.072)
  %tobool30.not = icmp eq i32 %i.072, 0
  br i1 %tobool30.not, label %cleanup.thread, label %if.then29.for.end_crit_edge

if.then29.for.end_crit_edge:                      ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

cleanup.thread:                                   ; preds = %if.then29
  call void @__sanitizer_cov_trace_pc() #10
  %40 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %dev.i.i.i, align 4
  %device.i53 = getelementptr inbounds %struct.dma_chan_dev, ptr %41, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i53, ptr noundef nonnull @.str.34) #11
  br label %cleanup38

if.end36:                                         ; preds = %dma_map_single_attrs.exit.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_desc_put.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_alloc_chan_resources, %do.end.i55)) #8
          to label %if.then.i [label %do.end.i55], !srcloc !177

if.then.i:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #10
  %42 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i.i.i, align 4
  %device.i.i54 = getelementptr inbounds %struct.dma_chan_dev, ptr %43, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_desc_put.__UNIQUE_ID_ddebug245, ptr noundef %device.i.i54, ptr noundef nonnull @.str.42, ptr noundef nonnull %call7.i.i.i) #8
  br label %do.end.i55

do.end.i55:                                       ; preds = %if.then.i, %if.end36
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %44 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %free_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i.i, ptr noundef %free_list, ptr noundef %45) #8
  br i1 %call.i.i.i, label %if.end.i.i.i56, label %do.end.i55.for.inc_crit_edge

do.end.i55.for.inc_crit_edge:                     ; preds = %do.end.i55
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.inc

if.end.i.i.i56:                                   ; preds = %do.end.i55
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %call7.i.i.i, ptr %prev1.i.i.i, align 4
  %47 = ptrtoint ptr %call7.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %call7.i.i.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i.i, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %free_list, ptr %prev3.i.i.i, align 4
  %49 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %call7.i.i.i, ptr %free_list, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i56, %do.end.i55.for.inc_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  %inc = add nuw i32 %i.072, 1
  %50 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %descs, align 4
  %cmp = icmp ult i32 %inc, %51
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.then29.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %lock = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %52 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %53 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 1, ptr %completed_cookie.i, align 4
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  br label %cleanup38

cleanup38:                                        ; preds = %for.end, %cleanup.thread
  %retval.2 = phi i32 [ 0, %for.end ], [ -12, %cleanup.thread ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @td_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_free_chan_resources.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_free_chan_resources, %do.body6)) #8
          to label %if.then [label %do.body6], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %3 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %4, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_free_chan_resources.__UNIQUE_ID_ddebug248, ptr noundef %device.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.43) #8
  br label %do.body6

do.body6:                                         ; preds = %if.then, %entry
  %active_list = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 4
  %5 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %6, %active_list
  br i1 %cmp.i.not, label %do.body27, label %do.body18, !prof !183

do.body18:                                        ; preds = %do.body6
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/timb_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 442, 0\0A.popsection", ""() #8, !srcloc !185
  unreachable

do.body27:                                        ; preds = %do.body6
  %queue = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 5
  %7 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %queue, align 4
  %cmp.i97.not = icmp eq ptr %8, %queue
  br i1 %cmp.i97.not, label %do.end47, label %do.body39, !prof !183

do.body39:                                        ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #10
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/timb_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 443, 0\0A.popsection", ""() #8, !srcloc !186
  unreachable

do.end47:                                         ; preds = %do.body27
  %lock = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 2
  call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %free_list = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 6
  %9 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not.i = icmp eq ptr %10, %free_list
  br i1 %cmp.i.not.i, label %do.end47.list_splice_init.exit_crit_edge, label %if.then.i

do.end47.list_splice_init.exit_crit_edge:         ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %do.end47
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %10, ptr %list, align 4
  %16 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %12, ptr %14, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev6.i.i, align 4
  %18 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %free_list, ptr %free_list, align 4
  store ptr %free_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %do.end47.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  %cmp.not105 = icmp eq ptr %20, %list
  br i1 %cmp.not105, label %list_splice_init.exit.for.end_crit_edge, label %do.body60.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

do.body60.lr.ph:                                  ; preds = %list_splice_init.exit
  %dev.i99 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  br label %do.body60

do.body60:                                        ; preds = %td_free_desc.exit.do.body60_crit_edge, %do.body60.lr.ph
  %td_desc.0106 = phi ptr [ %20, %do.body60.lr.ph ], [ %_td_desc.0108, %td_free_desc.exit.do.body60_crit_edge ]
  %21 = ptrtoint ptr %td_desc.0106 to i32
  call void @__asan_load4_noabort(i32 %21)
  %_td_desc.0108 = load ptr, ptr %td_desc.0106, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_free_chan_resources.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_free_chan_resources, %do.end78)) #8
          to label %if.then74 [label %do.end78], !srcloc !177

if.then74:                                        ; preds = %do.body60
  call void @__sanitizer_cov_trace_pc() #10
  %22 = ptrtoint ptr %dev.i99 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i99, align 4
  %device.i100 = getelementptr inbounds %struct.dma_chan_dev, ptr %23, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_free_chan_resources.__UNIQUE_ID_ddebug249, ptr noundef %device.i100, ptr noundef nonnull @.str.45, ptr noundef nonnull @.str.43, ptr noundef %td_desc.0106) #8
  br label %do.end78

do.end78:                                         ; preds = %if.then74, %do.body60
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_free_desc.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_free_chan_resources, %td_free_desc.exit)) #8
          to label %if.then.i101 [label %td_free_desc.exit], !srcloc !177

if.then.i101:                                     ; preds = %do.end78
  call void @__sanitizer_cov_trace_pc() #10
  %chan.i = getelementptr inbounds %struct.timb_dma_desc, ptr %td_desc.0106, i32 0, i32 1, i32 3
  %24 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %chan.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %25, i32 0, i32 5
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %27, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_free_desc.__UNIQUE_ID_ddebug244, ptr noundef %device.i.i, ptr noundef nonnull @.str.47, ptr noundef %td_desc.0106) #8
  br label %td_free_desc.exit

td_free_desc.exit:                                ; preds = %if.then.i101, %do.end78
  %chan6.i = getelementptr inbounds %struct.timb_dma_desc, ptr %td_desc.0106, i32 0, i32 1, i32 3
  %28 = ptrtoint ptr %chan6.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan6.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.dma_chan, ptr %29, i32 0, i32 5
  %30 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i.i.i, align 4
  %parent.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %31, i32 0, i32 1, i32 1
  %32 = ptrtoint ptr %parent.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %parent.i.i, align 8
  %parent1.i.i = getelementptr inbounds %struct.device, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %parent1.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %parent1.i.i, align 8
  %phys.i = getelementptr inbounds %struct.timb_dma_desc, ptr %td_desc.0106, i32 0, i32 1, i32 2
  %36 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %phys.i, align 4
  %desc_list_len.i = getelementptr inbounds %struct.timb_dma_desc, ptr %td_desc.0106, i32 0, i32 3
  %38 = ptrtoint ptr %desc_list_len.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %desc_list_len.i, align 4
  call void @dma_unmap_page_attrs(ptr noundef %35, i32 noundef %37, i32 noundef %39, i32 noundef 1, i32 noundef 0) #8
  %desc_list.i = getelementptr inbounds %struct.timb_dma_desc, ptr %td_desc.0106, i32 0, i32 2
  %40 = ptrtoint ptr %desc_list.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %desc_list.i, align 4
  call void @kfree(ptr noundef %41) #8
  call void @kfree(ptr noundef %td_desc.0106) #8
  %cmp.not = icmp eq ptr %_td_desc.0108, %list
  br i1 %cmp.not, label %td_free_desc.exit.for.end_crit_edge, label %td_free_desc.exit.do.body60_crit_edge

td_free_desc.exit.do.body60_crit_edge:            ; preds = %td_free_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body60

td_free_desc.exit.for.end_crit_edge:              ; preds = %td_free_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %td_free_desc.exit.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @td_tx_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_tx_status.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_tx_status, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_tx_status.__UNIQUE_ID_ddebug250, ptr noundef %device.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.48) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !187
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %do.end.if.end.i_crit_edge, label %if.then.i

do.end.if.end.i_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
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

if.end.i:                                         ; preds = %if.then.i, %do.end.if.end.i_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %3)
  %cmp.not.i.i = icmp sgt i32 %5, %3
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %cookie)
  %cmp4.not.i.i = icmp sge i32 %5, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %cookie)
  %cmp5.i.i = icmp slt i32 %3, %cookie
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
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_tx_status.__UNIQUE_ID_ddebug251, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_tx_status, %do.end24)) #8
          to label %if.then20 [label %do.end24], !srcloc !177

if.then20:                                        ; preds = %dma_cookie_status.exit
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i31 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %10 = ptrtoint ptr %dev.i31 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i31, align 4
  %device.i32 = getelementptr inbounds %struct.dma_chan_dev, ptr %11, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_tx_status.__UNIQUE_ID_ddebug251, ptr noundef %device.i32, ptr noundef nonnull @.str.49, ptr noundef nonnull @.str.48, i32 noundef %retval.0.i.i) #8
  br label %do.end24

do.end24:                                         ; preds = %if.then20, %dma_cookie_status.exit
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @td_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_issue_pending.__UNIQUE_ID_ddebug252, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_issue_pending, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_issue_pending.__UNIQUE_ID_ddebug252, ptr noundef %device.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.50) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %active_list = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %3, %active_list
  br i1 %cmp.i.not, label %do.end.if.end12_crit_edge, label %if.then8

do.end.if.end12_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then8:                                         ; preds = %do.end
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %4 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %chan_id.i, align 4
  %mul.neg.i = mul i32 %5, -156
  %add.ptr.i = getelementptr i8, ptr %chan, i32 %mul.neg.i
  %add.ptr1.i = getelementptr i8, ptr %add.ptr.i, i32 -392
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__td_dma_done_ack.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_issue_pending, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !177

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__td_dma_done_ack.__UNIQUE_ID_ddebug237, ptr noundef %device.i.i, ptr noundef nonnull @.str.52, i32 noundef %5, ptr noundef %add.ptr1.i) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %if.then8
  %membase.i = getelementptr inbounds %struct.timb_dma, ptr %add.ptr1.i, i32 0, i32 1
  %8 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %9, i32 524288
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #8, !srcloc !181
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  %shl.i = shl nuw i32 1, %5
  %and.i = and i32 %11, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool9.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool9.not.i, label %do.end.i.if.end12_crit_edge, label %if.then10

do.end.i.if.end12_crit_edge:                      ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end12

if.then10:                                        ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %membase.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %13, i32 524288
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %14 = tail call i32 @llvm.bswap.i32(i32 %and.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %14) #8, !srcloc !179
  tail call fastcc void @__td_finish(ptr noundef %chan)
  br label %if.end12

if.end12:                                         ; preds = %if.then10, %do.end.i.if.end12_crit_edge, %do.end.if.end12_crit_edge
  %15 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %active_list, align 4
  %cmp.i29.not = icmp eq ptr %16, %active_list
  br i1 %cmp.i29.not, label %land.lhs.true, label %if.end12.if.end19_crit_edge

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

land.lhs.true:                                    ; preds = %if.end12
  %queue = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 5
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %queue, align 4
  %cmp.i31.not = icmp eq ptr %18, %queue
  br i1 %cmp.i31.not, label %land.lhs.true.if.end19_crit_edge, label %if.then18

land.lhs.true.if.end19_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end19

if.then18:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @__td_start_next(ptr noundef %chan)
  br label %if.end19

if.end19:                                         ; preds = %if.then18, %land.lhs.true.if.end19_crit_edge, %if.end12.if.end19_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @td_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %sgl, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %tobool1.not = icmp eq i32 %sg_len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #11
  br label %cleanup40

if.end:                                           ; preds = %entry
  %direction2 = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 8
  %2 = ptrtoint ptr %direction2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %direction2, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %3, i32 %direction)
  %cmp.not = icmp eq i32 %3, %direction
  br i1 %cmp.not, label %if.end8, label %do.end6

do.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i70 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i70 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i70, align 4
  %device.i71 = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i71, ptr noundef nonnull @.str.56) #11
  br label %cleanup40

if.end8:                                          ; preds = %if.end
  %call9 = tail call fastcc ptr @td_desc_get(ptr noundef %chan)
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %do.end14, label %for.body.lr.ph

do.end14:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i72 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i72 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i72, align 4
  %device.i73 = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i73, ptr noundef nonnull @.str.59) #11
  br label %cleanup40

for.body.lr.ph:                                   ; preds = %if.end8
  %interrupt = getelementptr inbounds %struct.timb_dma_desc, ptr %call9, i32 0, i32 4
  %8 = trunc i32 %flags to i8
  %9 = and i8 %8, 1
  %10 = ptrtoint ptr %interrupt to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 %9, ptr %interrupt, align 4
  %desc_list_len = getelementptr inbounds %struct.timb_dma_desc, ptr %call9, i32 0, i32 3
  %desc_list = getelementptr inbounds %struct.timb_dma_desc, ptr %call9, i32 0, i32 2
  %sub = add i32 %sg_len, -1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %desc_usage.084 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %i.083 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sg.082 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call36, %for.inc.for.body_crit_edge ]
  %11 = ptrtoint ptr %desc_list_len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %desc_list_len, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %desc_usage.084, i32 %12)
  %cmp19 = icmp ugt i32 %desc_usage.084, %12
  br i1 %cmp19, label %do.end23, label %if.end25

do.end23:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i74 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %13 = ptrtoint ptr %dev.i74 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i74, align 4
  %device.i75 = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i75, ptr noundef nonnull @.str.62) #11
  br label %cleanup40

if.end25:                                         ; preds = %for.body
  %15 = ptrtoint ptr %desc_list to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %desc_list, align 4
  %add.ptr26 = getelementptr i8, ptr %16, i32 %desc_usage.084
  call void @__sanitizer_cov_trace_cmp4(i32 %i.083, i32 %sub)
  %cmp27 = icmp eq i32 %i.083, %sub
  %call28 = tail call fastcc i32 @td_fill_desc(ptr noundef %chan, ptr noundef %add.ptr26, ptr noundef %sg.082, i1 noundef zeroext %cmp27)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call28)
  %tobool29.not = icmp eq i32 %call28, 0
  br i1 %tobool29.not, label %for.inc, label %do.end33

do.end33:                                         ; preds = %if.end25
  %dev.i76 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %17 = ptrtoint ptr %dev.i76 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i76, align 4
  %device.i77 = getelementptr inbounds %struct.dma_chan_dev, ptr %18, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i77, ptr noundef nonnull @.str.65, i32 noundef %call28) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_desc_put.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_prep_slave_sg, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !177

if.then.i:                                        ; preds = %do.end33
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %dev.i76 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i76, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_desc_put.__UNIQUE_ID_ddebug245, ptr noundef %device.i.i, ptr noundef nonnull @.str.42, ptr noundef nonnull %call9) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %do.end33
  %lock.i = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock.i) #8
  %free_list.i = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 6
  %21 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call9, ptr noundef %free_list.i, ptr noundef %22) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.td_desc_put.exit_crit_edge

do.end.i.td_desc_put.exit_crit_edge:              ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %td_desc_put.exit

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call9, ptr %prev1.i.i.i, align 4
  %24 = ptrtoint ptr %call9 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %22, ptr %call9, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call9, i32 0, i32 1
  %25 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %free_list.i, ptr %prev3.i.i.i, align 4
  %26 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %call9, ptr %free_list.i, align 4
  br label %td_desc_put.exit

td_desc_put.exit:                                 ; preds = %if.end.i.i.i, %do.end.i.td_desc_put.exit_crit_edge
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock.i) #8
  br label %cleanup40

for.inc:                                          ; preds = %if.end25
  %add = add i32 %desc_usage.084, 8
  %inc = add nuw i32 %i.083, 1
  %call36 = tail call ptr @sg_next(ptr noundef %sg.082) #8
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i78 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %27 = ptrtoint ptr %dev.i.i78 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev.i.i78, align 4
  %parent.i = getelementptr inbounds %struct.dma_chan_dev, ptr %28, i32 0, i32 1, i32 1
  %29 = ptrtoint ptr %parent.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %parent.i, align 8
  %parent1.i = getelementptr inbounds %struct.device, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %parent1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %parent1.i, align 8
  %txd = getelementptr inbounds %struct.timb_dma_desc, ptr %call9, i32 0, i32 1
  %phys = getelementptr inbounds %struct.timb_dma_desc, ptr %call9, i32 0, i32 1, i32 2
  %33 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %phys, align 4
  %desc_list_len38 = getelementptr inbounds %struct.timb_dma_desc, ptr %call9, i32 0, i32 3
  %35 = ptrtoint ptr %desc_list_len38 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %desc_list_len38, align 4
  tail call void @dma_sync_single_for_device(ptr noundef %32, i32 noundef %34, i32 noundef %36, i32 noundef 1) #8
  br label %cleanup40

cleanup40:                                        ; preds = %for.end, %td_desc_put.exit, %do.end23, %do.end14, %do.end6, %do.end
  %retval.2 = phi ptr [ null, %do.end6 ], [ %txd, %for.end ], [ null, %do.end14 ], [ null, %do.end ], [ null, %do.end23 ], [ null, %td_desc_put.exit ]
  ret ptr %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @td_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_terminate_all.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_terminate_all, %do.end)) #8
          to label %if.then [label %do.end], !srcloc !177

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %1, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_terminate_all.__UNIQUE_ID_ddebug253, ptr noundef %device.i, ptr noundef nonnull @.str.44, ptr noundef nonnull @.str.75) #8
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %queue = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %queue, align 4
  %cmp.not34 = icmp eq ptr %3, %queue
  br i1 %cmp.not34, label %do.end.for.end_crit_edge, label %for.body.lr.ph

do.end.for.end_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end
  %free_list = getelementptr inbounds %struct.timb_dma_chan, ptr %chan, i32 0, i32 6
  br label %for.body

for.body:                                         ; preds = %list_move.exit.for.body_crit_edge, %for.body.lr.ph
  %td_desc.035 = phi ptr [ %3, %for.body.lr.ph ], [ %_td_desc.0, %list_move.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %td_desc.035 to i32
  call void @__asan_load4_noabort(i32 %4)
  %_td_desc.0 = load ptr, ptr %td_desc.035, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %td_desc.035) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %td_desc.035, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %td_desc.035 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %td_desc.035, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %11 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %free_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %td_desc.035, ptr noundef %free_list, ptr noundef %12) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %td_desc.035, ptr %prev1.i.i2.i, align 4
  %14 = ptrtoint ptr %td_desc.035 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %12, ptr %td_desc.035, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %td_desc.035, i32 0, i32 1
  %15 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %free_list, ptr %prev3.i.i.i, align 4
  %16 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %td_desc.035, ptr %free_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %cmp.not = icmp eq ptr %_td_desc.0, %queue
  br i1 %cmp.not, label %list_move.exit.for.end_crit_edge, label %list_move.exit.for.body_crit_edge

list_move.exit.for.body_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

list_move.exit.for.end_crit_edge:                 ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %list_move.exit.for.end_crit_edge, %do.end.for.end_crit_edge
  tail call fastcc void @__td_finish(ptr noundef %chan)
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__release_region(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__td_finish(ptr noundef %td_chan) unnamed_addr #2 align 64 {
entry:
  %dummy_result.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %active_list = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 4
  %0 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %1, %active_list
  br i1 %cmp.i.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %txd2 = getelementptr inbounds %struct.timb_dma_desc, ptr %1, i32 0, i32 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__td_finish.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__td_finish, %do.end)) #8
          to label %if.then9 [label %do.end], !srcloc !177

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %td_chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %txd2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %txd2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__td_finish.__UNIQUE_ID_ddebug240, ptr noundef %device.i, ptr noundef nonnull @.str.24, i32 noundef %5) #8
  br label %do.end

do.end:                                           ; preds = %if.then9, %if.end
  %direction = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 8
  %6 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp = icmp eq i32 %7, 2
  br i1 %cmp, label %if.then12, label %do.end.if.end14_crit_edge

do.end.if.end14_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end14

if.then12:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %membase = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 1
  %8 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %membase, align 4
  %add.ptr13 = getelementptr i8, ptr %9, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr13, i32 0) #8, !srcloc !179
  br label %if.end14

if.end14:                                         ; preds = %if.then12, %do.end.if.end14_crit_edge
  %10 = ptrtoint ptr %txd2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %txd2, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %11)
  %cmp.i27 = icmp slt i32 %11, 1
  br i1 %cmp.i27, label %do.body2.i, label %dma_cookie_complete.exit, !prof !188

do.body2.i:                                       ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #8, !srcloc !189
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.end14
  %chan.i = getelementptr inbounds %struct.timb_dma_desc, ptr %1, i32 0, i32 1, i32 3
  %12 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %13, i32 0, i32 3
  %14 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %11, ptr %completed_cookie.i, align 4
  %15 = ptrtoint ptr %txd2 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %txd2, align 4
  %ongoing = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 3
  %16 = ptrtoint ptr %ongoing to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 0, ptr %ongoing, align 4
  %callback.i = getelementptr inbounds %struct.timb_dma_desc, ptr %1, i32 0, i32 1, i32 6
  %17 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr inbounds %struct.timb_dma_desc, ptr %1, i32 0, i32 1, i32 7
  %19 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr inbounds %struct.timb_dma_desc, ptr %1, i32 0, i32 1, i32 8
  %21 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %callback_param.i, align 4
  %free_list = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %dma_cookie_complete.exit.__list_del_entry.exit.i_crit_edge

dma_cookie_complete.exit.__list_del_entry.exit.i_crit_edge: ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %25 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %dma_cookie_complete.exit.__list_del_entry.exit.i_crit_edge
  %29 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %free_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %free_list, ptr noundef %30) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %30, i32 0, i32 1
  %31 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %1, ptr %prev1.i.i2.i, align 4
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %30, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %33 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %free_list, ptr %prev3.i.i.i, align 4
  %34 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %1, ptr %free_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %unmap.i = getelementptr inbounds %struct.timb_dma_desc, ptr %1, i32 0, i32 1, i32 9
  %35 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %unmap.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %list_move.exit.dma_descriptor_unmap.exit_crit_edge, label %if.end.i

list_move.exit.dma_descriptor_unmap.exit_crit_edge: ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_descriptor_unmap.exit

if.end.i:                                         ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @dmaengine_unmap_put(ptr noundef nonnull %36) #8
  %37 = ptrtoint ptr %unmap.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr null, ptr %unmap.i, align 4
  br label %dma_descriptor_unmap.exit

dma_descriptor_unmap.exit:                        ; preds = %if.end.i, %list_move.exit.dma_descriptor_unmap.exit_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #8
  %38 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %38)
  store i64 0, ptr %dummy_result.i, align 8
  %tobool.not.i29 = icmp eq ptr %20, null
  br i1 %tobool.not.i29, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %dma_descriptor_unmap.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void %20(ptr noundef %22, ptr noundef nonnull %dummy_result.i) #8
  br label %dmaengine_desc_callback_invoke.exit

if.else.i:                                        ; preds = %dma_descriptor_unmap.exit
  %tobool4.not.i = icmp eq ptr %18, null
  br i1 %tobool4.not.i, label %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, label %if.then5.i

if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %dmaengine_desc_callback_invoke.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void %18(ptr noundef %22) #8
  br label %dmaengine_desc_callback_invoke.exit

dmaengine_desc_callback_invoke.exit:              ; preds = %if.then5.i, %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i) #8
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_desc_callback_invoke.exit, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__td_start_next(ptr noundef %td_chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %queue = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 5
  %0 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not = icmp eq ptr %1, %queue
  br i1 %cmp.i.not, label %do.body3, label %do.body9, !prof !188

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/timb_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 281, 0\0A.popsection", ""() #8, !srcloc !190
  unreachable

do.body9:                                         ; preds = %entry
  %ongoing = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 3
  %2 = ptrtoint ptr %ongoing to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %ongoing, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool10.not = icmp eq i8 %3, 0
  br i1 %tobool10.not, label %do.end26, label %do.body18, !prof !183

do.body18:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/timb_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 282, 0\0A.popsection", ""() #8, !srcloc !191
  unreachable

do.end26:                                         ; preds = %do.body9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__td_start_next.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__td_start_next, %do.end44)) #8
          to label %if.then40 [label %do.end44], !srcloc !177

if.then40:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %td_chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  %txd = getelementptr inbounds %struct.timb_dma_desc, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %txd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__td_start_next.__UNIQUE_ID_ddebug241, ptr noundef %device.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.25, i32 noundef %7) #8
  br label %do.end44

do.end44:                                         ; preds = %if.then40, %do.end26
  %active_list = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end44.__list_del_entry.exit.i_crit_edge

do.end44.__list_del_entry.exit.i_crit_edge:       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %do.end44
  call void @__sanitizer_cov_trace_pc() #10
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
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %do.end44.__list_del_entry.exit.i_crit_edge
  %14 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %active_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %1, ptr noundef %active_list, ptr noundef %15) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %1, ptr %prev1.i.i2.i, align 4
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %15, ptr %1, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %18 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %active_list, ptr %prev3.i.i.i, align 4
  %19 = ptrtoint ptr %active_list to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile ptr %1, ptr %active_list, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  tail call fastcc void @__td_start_dma(ptr noundef %td_chan)
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @__td_start_dma(ptr noundef %td_chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %ongoing = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 3
  %0 = ptrtoint ptr %ongoing to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %ongoing, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %td_chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.27) #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %active_list = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 4
  %4 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %active_list, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__td_start_dma.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__td_start_dma, %do.end14)) #8
          to label %if.then8 [label %do.end14], !srcloc !177

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i53 = getelementptr inbounds %struct.dma_chan, ptr %td_chan, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i53 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i53, align 4
  %device.i54 = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %td_chan, i32 0, i32 4
  %8 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %chan_id, align 4
  %membase = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 1
  %10 = ptrtoint ptr %membase to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %membase, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__td_start_dma.__UNIQUE_ID_ddebug239, ptr noundef %device.i54, ptr noundef nonnull @.str.29, ptr noundef %td_chan, i32 noundef %9, ptr noundef %11) #8
  br label %do.end14

do.end14:                                         ; preds = %if.then8, %if.end
  %direction = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 8
  %12 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp = icmp eq i32 %13, 2
  %membase16 = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 1
  %14 = ptrtoint ptr %membase16 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %membase16, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %15, i32 0) #8
  %phys = getelementptr inbounds %struct.timb_dma_desc, ptr %5, i32 0, i32 1, i32 2
  %16 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %phys, align 4
  %18 = ptrtoint ptr %membase16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %membase16, align 4
  %add.ptr19 = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8
  tail call void @arm_heavy_mb() #8
  %20 = tail call i32 @llvm.bswap.i32(i32 %17) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr19, i32 %20) #8
  br i1 %cmp, label %if.then15, label %do.end14.if.end30_crit_edge

do.end14.if.end30_crit_edge:                      ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end30

if.then15:                                        ; preds = %do.end14
  call void @__sanitizer_cov_trace_pc() #10
  %bytes_per_line = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 7
  %21 = ptrtoint ptr %bytes_per_line to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %bytes_per_line, align 4
  %23 = ptrtoint ptr %membase16 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %membase16, align 4
  %add.ptr21 = getelementptr i8, ptr %24, i32 48
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %25 = tail call i32 @llvm.bswap.i32(i32 %22) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %25) #8, !srcloc !179
  %26 = ptrtoint ptr %membase16 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %membase16, align 4
  %add.ptr23 = getelementptr i8, ptr %27, i32 20
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 16777216) #8, !srcloc !179
  br label %if.end30

if.end30:                                         ; preds = %if.then15, %do.end14.if.end30_crit_edge
  %28 = ptrtoint ptr %ongoing to i32
  call void @__asan_store1_noabort(i32 %28)
  store i8 1, ptr %ongoing, align 4
  %interrupt = getelementptr inbounds %struct.timb_dma_desc, ptr %5, i32 0, i32 4
  %29 = ptrtoint ptr %interrupt to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %interrupt, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool32.not = icmp eq i8 %30, 0
  br i1 %tobool32.not, label %if.end30.cleanup_crit_edge, label %if.then33

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then33:                                        ; preds = %if.end30
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %td_chan, i32 0, i32 4
  %31 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %chan_id.i, align 4
  %mul.neg.i.i = mul i32 %32, -156
  %add.ptr.i.i = getelementptr i8, ptr %td_chan, i32 %mul.neg.i.i
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 -392
  %membase.i = getelementptr inbounds %struct.timb_dma, ptr %add.ptr1.i.i, i32 0, i32 1
  %33 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %membase.i, align 4
  %add.ptr.i = getelementptr i8, ptr %34, i32 524296
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !181
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !182
  %shl.i = shl nuw i32 1, %32
  %or.i = or i32 %36, %shl.i
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @__td_enable_chan_irq.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@__td_start_dma, %__td_enable_chan_irq.exit)) #8
          to label %if.then.i [label %__td_enable_chan_irq.exit], !srcloc !177

if.then.i:                                        ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %td_chan, i32 0, i32 5
  %37 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %38, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @__td_enable_chan_irq.__UNIQUE_ID_ddebug236, ptr noundef %device.i.i, ptr noundef nonnull @.str.31, i32 noundef %32, i32 noundef %or.i) #8
  br label %__td_enable_chan_irq.exit

__td_enable_chan_irq.exit:                        ; preds = %if.then.i, %if.then33
  %39 = ptrtoint ptr %membase.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %membase.i, align 4
  %add.ptr9.i = getelementptr i8, ptr %40, i32 524296
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !178
  tail call void @arm_heavy_mb() #8
  %41 = tail call i32 @llvm.bswap.i32(i32 %or.i) #8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr9.i, i32 %41) #8, !srcloc !179
  br label %cleanup

cleanup:                                          ; preds = %__td_enable_chan_irq.exit, %if.end30.cleanup_crit_edge, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @td_tx_submit(ptr noundef %txd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %txd, i32 -8
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %txd, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.timb_dma_chan, ptr %1, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %5, 1
  %6 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #8
  %7 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cookie2.i, align 4
  %8 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %txd, align 4
  %active_list = getelementptr inbounds %struct.timb_dma_chan, ptr %1, i32 0, i32 4
  %9 = ptrtoint ptr %active_list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %active_list, align 4
  %cmp.i.not = icmp eq ptr %10, %active_list
  br i1 %cmp.i.not, label %do.body, label %do.body16

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_tx_submit.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_tx_submit, %do.end)) #8
          to label %if.then11 [label %do.end], !srcloc !177

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %txd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_tx_submit.__UNIQUE_ID_ddebug242, ptr noundef %device.i, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.37, i32 noundef %16) #8
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  %prev.i = getelementptr inbounds %struct.timb_dma_chan, ptr %1, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %18, ptr noundef %active_list) #8
  br i1 %call.i.i, label %if.end.i.i, label %do.end.list_add_tail.exit_crit_edge

do.end.list_add_tail.exit_crit_edge:              ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #10
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %add.ptr, ptr %prev.i, align 4
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %active_list, ptr %add.ptr, align 4
  %prev3.i.i = getelementptr i8, ptr %txd, i32 -4
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %add.ptr, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end.list_add_tail.exit_crit_edge
  tail call fastcc void @__td_start_dma(ptr noundef %1)
  br label %if.end38

do.body16:                                        ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_tx_submit.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_tx_submit, %do.end36)) #8
          to label %if.then30 [label %do.end36], !srcloc !177

if.then30:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #10
  %23 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan, align 4
  %dev.i55 = getelementptr inbounds %struct.dma_chan, ptr %24, i32 0, i32 5
  %25 = ptrtoint ptr %dev.i55 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dev.i55, align 4
  %device.i56 = getelementptr inbounds %struct.dma_chan_dev, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %txd, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_tx_submit.__UNIQUE_ID_ddebug243, ptr noundef %device.i56, ptr noundef nonnull @.str.38, i32 noundef %28) #8
  br label %do.end36

do.end36:                                         ; preds = %if.then30, %do.body16
  %queue = getelementptr inbounds %struct.timb_dma_chan, ptr %1, i32 0, i32 5
  %prev.i57 = getelementptr inbounds %struct.timb_dma_chan, ptr %1, i32 0, i32 5, i32 1
  %29 = ptrtoint ptr %prev.i57 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev.i57, align 4
  %call.i.i58 = tail call zeroext i1 @__list_add_valid(ptr noundef %add.ptr, ptr noundef %30, ptr noundef %queue) #8
  br i1 %call.i.i58, label %if.end.i.i60, label %do.end36.if.end38_crit_edge

do.end36.if.end38_crit_edge:                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end38

if.end.i.i60:                                     ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  %31 = ptrtoint ptr %prev.i57 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %add.ptr, ptr %prev.i57, align 4
  %32 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %queue, ptr %add.ptr, align 4
  %prev3.i.i59 = getelementptr i8, ptr %txd, i32 -4
  %33 = ptrtoint ptr %prev3.i.i59 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev3.i.i59, align 4
  %34 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %add.ptr, ptr %30, align 4
  br label %if.end38

if.end38:                                         ; preds = %if.end.i.i60, %do.end36.if.end38_crit_edge, %list_add_tail.exit
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @is_vmalloc_addr(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_map_single(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_page_attrs(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_bh(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_page_attrs(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @td_desc_get(ptr noundef %td_chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 2
  tail call void @_raw_spin_lock_bh(ptr noundef %lock) #8
  %free_list = getelementptr inbounds %struct.timb_dma_chan, ptr %td_chan, i32 0, i32 6
  %0 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %free_list, align 4
  %cmp.not37 = icmp eq ptr %1, %free_list
  br i1 %cmp.not37, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %td_chan, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %td_desc.038 = phi ptr [ %1, %for.body.lr.ph ], [ %_td_desc.039, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %td_desc.038 to i32
  call void @__asan_load4_noabort(i32 %2)
  %_td_desc.039 = load ptr, ptr %td_desc.038, align 4
  %flags.i = getelementptr inbounds %struct.timb_dma_desc, ptr %td_desc.038, i32 0, i32 1, i32 1
  %3 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %4, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %do.body, label %if.then

if.then:                                          ; preds = %for.body
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %td_desc.038) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %td_desc.038, i32 0, i32 1
  %5 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %prev.i.i, align 4
  %7 = ptrtoint ptr %td_desc.038 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %td_desc.038, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %9 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev1.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %8, ptr %6, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %11 = ptrtoint ptr %td_desc.038 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 256 to ptr), ptr %td_desc.038, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %td_desc.038, i32 0, i32 1
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  br label %for.end

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_desc_get.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_desc_get, %for.inc)) #8
          to label %if.then14 [label %for.inc], !srcloc !177

if.then14:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %14, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_desc_get.__UNIQUE_ID_ddebug246, ptr noundef %device.i, ptr noundef nonnull @.str.68, ptr noundef %td_desc.038) #8
  br label %for.inc

for.inc:                                          ; preds = %if.then14, %do.body
  %cmp.not = icmp eq ptr %_td_desc.039, %free_list
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_del.exit, %entry.for.end_crit_edge
  %ret.0 = phi ptr [ %td_desc.038, %list_del.exit ], [ null, %entry.for.end_crit_edge ], [ null, %for.inc.for.end_crit_edge ]
  tail call void @_raw_spin_unlock_bh(ptr noundef %lock) #8
  ret ptr %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @td_fill_desc(ptr nocapture noundef readonly %td_chan, ptr noundef %dma_desc, ptr nocapture noundef readonly %sg, i1 noundef zeroext %last) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 4
  %0 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %1)
  %cmp = icmp ugt i32 %1, 65535
  br i1 %cmp, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %td_chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.69) #11
  br label %return

if.end:                                           ; preds = %entry
  %rem = and i32 %1, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool.not = icmp eq i32 %rem, 0
  br i1 %tobool.not, label %do.body9, label %do.end4

do.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i72 = getelementptr inbounds %struct.dma_chan, ptr %td_chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i72 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i72, align 4
  %device.i73 = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i73, ptr noundef nonnull @.str.72, i32 noundef %1) #11
  br label %return

do.body9:                                         ; preds = %if.end
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @td_fill_desc.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@td_fill_desc, %do.end20)) #8
          to label %if.then16 [label %do.end20], !srcloc !177

if.then16:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i74 = getelementptr inbounds %struct.dma_chan, ptr %td_chan, i32 0, i32 5
  %6 = ptrtoint ptr %dev.i74 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i74, align 4
  %device.i75 = getelementptr inbounds %struct.dma_chan_dev, ptr %7, i32 0, i32 1
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 3
  %8 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_address, align 4
  %conv = zext i32 %9 to i64
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @td_fill_desc.__UNIQUE_ID_ddebug238, ptr noundef %device.i75, ptr noundef nonnull @.str.74, ptr noundef %dma_desc, i64 noundef %conv) #8
  br label %do.end20

do.end20:                                         ; preds = %if.then16, %do.body9
  %dma_address21 = getelementptr inbounds %struct.scatterlist, ptr %sg, i32 0, i32 3
  %10 = ptrtoint ptr %dma_address21 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dma_address21, align 4
  %shr = lshr i32 %11, 24
  %conv22 = trunc i32 %shr to i8
  %arrayidx = getelementptr i8, ptr %dma_desc, i32 7
  %12 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv22, ptr %arrayidx, align 1
  %13 = load i32, ptr %dma_address21, align 4
  %shr24 = lshr i32 %13, 16
  %conv26 = trunc i32 %shr24 to i8
  %arrayidx27 = getelementptr i8, ptr %dma_desc, i32 6
  %14 = ptrtoint ptr %arrayidx27 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv26, ptr %arrayidx27, align 1
  %15 = load i32, ptr %dma_address21, align 4
  %shr29 = lshr i32 %15, 8
  %conv31 = trunc i32 %shr29 to i8
  %arrayidx32 = getelementptr i8, ptr %dma_desc, i32 5
  %16 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_store1_noabort(i32 %16)
  store i8 %conv31, ptr %arrayidx32, align 1
  %17 = load i32, ptr %dma_address21, align 4
  %conv36 = trunc i32 %17 to i8
  %arrayidx37 = getelementptr i8, ptr %dma_desc, i32 4
  %18 = ptrtoint ptr %arrayidx37 to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 %conv36, ptr %arrayidx37, align 1
  %19 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %dma_length, align 4
  %shr39 = lshr i32 %20, 8
  %conv41 = trunc i32 %shr39 to i8
  %arrayidx42 = getelementptr i8, ptr %dma_desc, i32 3
  %21 = ptrtoint ptr %arrayidx42 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 %conv41, ptr %arrayidx42, align 1
  %22 = load i32, ptr %dma_length, align 4
  %conv46 = trunc i32 %22 to i8
  %arrayidx47 = getelementptr i8, ptr %dma_desc, i32 2
  %23 = ptrtoint ptr %arrayidx47 to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 %conv46, ptr %arrayidx47, align 1
  %arrayidx48 = getelementptr i8, ptr %dma_desc, i32 1
  %24 = ptrtoint ptr %arrayidx48 to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %arrayidx48, align 1
  %conv51 = select i1 %last, i8 35, i8 33
  %25 = ptrtoint ptr %dma_desc to i32
  call void @__asan_store1_noabort(i32 %25)
  store i8 %conv51, ptr %dma_desc, align 1
  br label %return

return:                                           ; preds = %do.end20, %do.end4, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ -22, %do.end4 ], [ 0, %do.end20 ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_sync_single_for_device(ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 76)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(0) }
attributes #13 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !6, !8, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !45, !46, !48, !49, !50, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !83, !84, !85, !86, !88, !89, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !106, !107, !109, !110, !111, !113, !114, !116, !117, !119, !120, !122, !123, !124, !126, !127, !128, !129, !131, !132, !133, !135, !136, !137, !139, !140, !141, !143, !144, !145, !147, !148, !149, !151, !152, !153, !154, !156, !157, !158, !160, !161, !163, !164, !166, !167}
!llvm.module.flags = !{!168, !169, !170, !171, !172, !173, !174, !175}
!llvm.ident = !{!176}

!0 = !{ptr @__initcall__kmod_timb_dma__258_768_td_driver_init6, !1, !"__initcall__kmod_timb_dma__258_768_td_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/timb_dma.c", i32 768, i32 1}
!2 = !{ptr @__exitcall_td_driver_exit, !1, !"__exitcall_td_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_file259, !4, !"__UNIQUE_ID_file259", i1 false, i1 false}
!4 = !{!"../drivers/dma/timb_dma.c", i32 770, i32 1}
!5 = !{ptr @__UNIQUE_ID_license260, !4, !"__UNIQUE_ID_license260", i1 false, i1 false}
!6 = !{ptr @__UNIQUE_ID_description261, !7, !"__UNIQUE_ID_description261", i1 false, i1 false}
!7 = !{!"../drivers/dma/timb_dma.c", i32 771, i32 1}
!8 = !{ptr @__UNIQUE_ID_author262, !9, !"__UNIQUE_ID_author262", i1 false, i1 false}
!9 = !{!"../drivers/dma/timb_dma.c", i32 772, i32 1}
!10 = !{ptr @__UNIQUE_ID_alias263, !11, !"__UNIQUE_ID_alias263", i1 false, i1 false}
!11 = !{!"../drivers/dma/timb_dma.c", i32 773, i32 1}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/timb_dma.c", i32 762, i32 11}
!14 = !{ptr @td_driver, !15, !"td_driver", i1 false, i1 false}
!15 = !{!"../drivers/dma/timb_dma.c", i32 760, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/timb_dma.c", i32 622, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @td_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @td_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/timb_dma.c", i32 645, i32 2}
!26 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @td_probe.__UNIQUE_ID_ddebug254, !25, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/timb_dma.c", i32 649, i32 3}
!30 = !{ptr @td_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @td_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/timb_dma.c", i32 665, i32 3}
!34 = !{ptr @td_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @td_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.15, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/timb_dma.c", i32 690, i32 4}
!38 = !{ptr @td_probe._entry.14, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @td_probe._entry_ptr.16, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @td_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/dma/timb_dma.c", i32 697, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @.str.18, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/timb_dma.c", i32 712, i32 3}
!45 = !{ptr @td_probe.__UNIQUE_ID_ddebug255, !44, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/dma/timb_dma.c", i32 720, i32 3}
!48 = !{ptr @td_probe._entry.19, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @td_probe._entry_ptr.21, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/timb_dma.c", i32 726, i32 2}
!52 = !{ptr @td_probe.__UNIQUE_ID_ddebug256, !51, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!53 = !{ptr @.str.23, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/timb_dma.c", i32 233, i32 2}
!55 = !{ptr @.str.24, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @__td_finish.__UNIQUE_ID_ddebug240, !54, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/timb_dma.c", i32 287, i32 2}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @__td_start_next.__UNIQUE_ID_ddebug241, !58, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/timb_dma.c", i32 183, i32 3}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @__td_start_dma._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @__td_start_dma._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/timb_dma.c", i32 191, i32 2}
!68 = !{ptr @__td_start_dma.__UNIQUE_ID_ddebug239, !67, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!69 = !{ptr @.str.30, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/timb_dma.c", i32 120, i32 2}
!71 = !{ptr @.str.31, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @__td_enable_chan_irq.__UNIQUE_ID_ddebug236, !70, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!73 = !{ptr @.str.32, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dma/timb_dma.c", i32 407, i32 2}
!75 = !{ptr @.str.33, !74, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @td_alloc_chan_resources.__UNIQUE_ID_ddebug247, !74, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!77 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/dma/timb_dma.c", i32 416, i32 5}
!79 = !{ptr @td_alloc_chan_resources._entry, !78, !"_entry", i1 false, i1 false}
!80 = !{ptr @td_alloc_chan_resources._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.35, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/dma/timb_dma.c", i32 347, i32 3}
!83 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @td_alloc_init_desc._entry, !82, !"_entry", i1 false, i1 false}
!85 = !{ptr @td_alloc_init_desc._entry_ptr, !82, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/dma/timb_dma.c", i32 306, i32 3}
!88 = !{ptr @td_tx_submit.__UNIQUE_ID_ddebug242, !87, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!89 = !{ptr @.str.38, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/dma/timb_dma.c", i32 311, i32 3}
!91 = !{ptr @td_tx_submit.__UNIQUE_ID_ddebug243, !90, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!92 = distinct !{null, !93, !"__already_done", i1 false, i1 false}
!93 = !{!"../include/linux/dma-mapping.h", i32 326, i32 6}
!94 = !{ptr @.str.39, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @.str.41, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma/timb_dma.c", i32 373, i32 2}
!98 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!99 = !{ptr @td_desc_put.__UNIQUE_ID_ddebug245, !97, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!100 = !{ptr @.str.43, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/dma/timb_dma.c", i32 439, i32 2}
!102 = !{ptr @.str.44, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @td_free_chan_resources.__UNIQUE_ID_ddebug248, !101, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/dma/timb_dma.c", i32 450, i32 3}
!106 = !{ptr @td_free_chan_resources.__UNIQUE_ID_ddebug249, !105, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!107 = !{ptr @.str.46, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/dma/timb_dma.c", i32 362, i32 2}
!109 = !{ptr @.str.47, !108, !"<string literal>", i1 false, i1 false}
!110 = !{ptr @td_free_desc.__UNIQUE_ID_ddebug244, !108, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/dma/timb_dma.c", i32 461, i32 2}
!113 = !{ptr @td_tx_status.__UNIQUE_ID_ddebug250, !112, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!114 = !{ptr @.str.49, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/dma/timb_dma.c", i32 465, i32 2}
!116 = !{ptr @td_tx_status.__UNIQUE_ID_ddebug251, !115, !"__UNIQUE_ID_ddebug251", i1 false, i1 false}
!117 = !{ptr @.str.50, !118, !"<string literal>", i1 false, i1 false}
!118 = !{!"../drivers/dma/timb_dma.c", i32 475, i32 2}
!119 = !{ptr @td_issue_pending.__UNIQUE_ID_ddebug252, !118, !"__UNIQUE_ID_ddebug252", i1 false, i1 false}
!120 = !{ptr @.str.51, !121, !"<string literal>", i1 false, i1 false}
!121 = !{!"../drivers/dma/timb_dma.c", i32 134, i32 2}
!122 = !{ptr @.str.52, !121, !"<string literal>", i1 false, i1 false}
!123 = !{ptr @__td_dma_done_ack.__UNIQUE_ID_ddebug237, !121, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!124 = !{ptr @.str.53, !125, !"<string literal>", i1 false, i1 false}
!125 = !{!"../drivers/dma/timb_dma.c", i32 502, i32 3}
!126 = !{ptr @.str.54, !125, !"<string literal>", i1 false, i1 false}
!127 = !{ptr @td_prep_slave_sg._entry, !125, !"_entry", i1 false, i1 false}
!128 = !{ptr @td_prep_slave_sg._entry_ptr, !125, !"_entry_ptr", i1 false, i1 false}
!129 = !{ptr @.str.56, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/dma/timb_dma.c", i32 508, i32 3}
!131 = !{ptr @td_prep_slave_sg._entry.55, !130, !"_entry", i1 false, i1 false}
!132 = !{ptr @td_prep_slave_sg._entry_ptr.57, !130, !"_entry_ptr", i1 false, i1 false}
!133 = !{ptr @.str.59, !134, !"<string literal>", i1 false, i1 false}
!134 = !{!"../drivers/dma/timb_dma.c", i32 515, i32 3}
!135 = !{ptr @td_prep_slave_sg._entry.58, !134, !"_entry", i1 false, i1 false}
!136 = !{ptr @td_prep_slave_sg._entry_ptr.60, !134, !"_entry_ptr", i1 false, i1 false}
!137 = !{ptr @.str.62, !138, !"<string literal>", i1 false, i1 false}
!138 = !{!"../drivers/dma/timb_dma.c", i32 524, i32 4}
!139 = !{ptr @td_prep_slave_sg._entry.61, !138, !"_entry", i1 false, i1 false}
!140 = !{ptr @td_prep_slave_sg._entry_ptr.63, !138, !"_entry_ptr", i1 false, i1 false}
!141 = !{ptr @.str.65, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/dma/timb_dma.c", i32 531, i32 4}
!143 = !{ptr @td_prep_slave_sg._entry.64, !142, !"_entry", i1 false, i1 false}
!144 = !{ptr @td_prep_slave_sg._entry_ptr.66, !142, !"_entry_ptr", i1 false, i1 false}
!145 = !{ptr @.str.67, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/dma/timb_dma.c", i32 393, i32 3}
!147 = !{ptr @.str.68, !146, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @td_desc_get.__UNIQUE_ID_ddebug246, !146, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!149 = !{ptr @.str.69, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/dma/timb_dma.c", i32 149, i32 3}
!151 = !{ptr @.str.70, !150, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @td_fill_desc._entry, !150, !"_entry", i1 false, i1 false}
!153 = !{ptr @td_fill_desc._entry_ptr, !150, !"_entry_ptr", i1 false, i1 false}
!154 = !{ptr @.str.72, !155, !"<string literal>", i1 false, i1 false}
!155 = !{!"../drivers/dma/timb_dma.c", i32 155, i32 3}
!156 = !{ptr @td_fill_desc._entry.71, !155, !"_entry", i1 false, i1 false}
!157 = !{ptr @td_fill_desc._entry_ptr.73, !155, !"_entry_ptr", i1 false, i1 false}
!158 = !{ptr @.str.74, !159, !"<string literal>", i1 false, i1 false}
!159 = !{!"../drivers/dma/timb_dma.c", i32 160, i32 2}
!160 = !{ptr @td_fill_desc.__UNIQUE_ID_ddebug238, !159, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!161 = !{ptr @.str.75, !162, !"<string literal>", i1 false, i1 false}
!162 = !{!"../drivers/dma/timb_dma.c", i32 551, i32 2}
!163 = !{ptr @td_terminate_all.__UNIQUE_ID_ddebug253, !162, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!164 = !{ptr @.str.76, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../drivers/dma/timb_dma.c", i32 756, i32 2}
!166 = !{ptr @.str.77, !165, !"<string literal>", i1 false, i1 false}
!167 = !{ptr @td_remove.__UNIQUE_ID_ddebug257, !165, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!168 = !{i32 1, !"wchar_size", i32 2}
!169 = !{i32 1, !"min_enum_size", i32 4}
!170 = !{i32 8, !"branch-target-enforcement", i32 0}
!171 = !{i32 8, !"sign-return-address", i32 0}
!172 = !{i32 8, !"sign-return-address-all", i32 0}
!173 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!174 = !{i32 7, !"uwtable", i32 1}
!175 = !{i32 7, !"frame-pointer", i32 2}
!176 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!177 = !{i64 2148350221, i64 2148350226, i64 2148350239, i64 2148350283, i64 2148350317, i64 2148350338}
!178 = !{i64 2153826754}
!179 = !{i64 6284632}
!180 = !{i8 0, i8 2}
!181 = !{i64 6285050}
!182 = !{i64 2153825399}
!183 = !{!"branch_weights", i32 2000, i32 1}
!184 = !{i64 2154298615, i64 2154299102, i64 2154298652, i64 2154298708, i64 2154298742, i64 2154298766, i64 2154298807, i64 2154298828, i64 2154298856, i64 2154298890}
!185 = !{i64 2154305420, i64 2154305907, i64 2154305457, i64 2154305513, i64 2154305547, i64 2154305571, i64 2154305612, i64 2154305633, i64 2154305661, i64 2154305695}
!186 = !{i64 2154307041, i64 2154307528, i64 2154307078, i64 2154307134, i64 2154307168, i64 2154307192, i64 2154307233, i64 2154307254, i64 2154307282, i64 2154307316}
!187 = !{i64 2154204292}
!188 = !{!"branch_weights", i32 1, i32 2000}
!189 = !{i64 2154202792, i64 2154203279, i64 2154202829, i64 2154202885, i64 2154202919, i64 2154202943, i64 2154202984, i64 2154203005, i64 2154203033, i64 2154203067}
!190 = !{i64 2154262449, i64 2154262936, i64 2154262486, i64 2154262542, i64 2154262576, i64 2154262600, i64 2154262641, i64 2154262662, i64 2154262690, i64 2154262724}
!191 = !{i64 2154264046, i64 2154264533, i64 2154264083, i64 2154264139, i64 2154264173, i64 2154264197, i64 2154264238, i64 2154264259, i64 2154264287, i64 2154264321}
