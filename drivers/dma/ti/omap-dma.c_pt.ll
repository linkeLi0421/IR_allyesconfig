; ModuleID = '/llk/IR_all_yes/drivers/dma/ti/omap-dma.c_pt.bc'
source_filename = "../drivers/dma/ti/omap-dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.omap_dma_config = type { i32, i8 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.of_dma_filter_info = type { %struct.dma_cap_mask_t, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
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
%struct.omap_dmadev = type { %struct.dma_device, %struct.spinlock, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.omap_dma_context, i32, [1 x i32], %struct.mutex, i8, i8, ptr, i32, %struct.spinlock, i32, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.omap_dma_context = type { i32, i32, i32, i32 }
%struct.omap_system_dma_plat_info = type { ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.omap_dma_dev_attr = type { i32, i16, i16 }
%struct.omap_chan = type { %struct.virt_dma_chan, ptr, ptr, i32, %struct.dma_slave_config, i32, i8, i8, i8, i32, ptr, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.omap_dma_reg = type { i16, i8, i8 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.omap_desc = type { %struct.virt_dma_desc, i8, i32, i32, i8, i32, i16, i8, i32, i16, i16, i32, i32, [0 x %struct.omap_sg] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.omap_sg = type { i32, i32, i32, i32, i16, ptr, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.omap_type2_desc = type { i32, i32, i32, i16, i16, i16, i16, i32, i32 }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }

@__initcall__kmod_omap_dma__240_1942_omap_dma_init4 = internal global ptr @omap_dma_init, section ".initcall4.init", align 4
@omap_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_dma_probe, ptr @omap_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_dma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_omap_dma_exit = internal global ptr @omap_dma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author241 = internal constant [29 x i8] c"omap_dma.author=Russell King\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [38 x i8] c"omap_dma.file=drivers/dma/ti/omap-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [21 x i8] c"omap_dma.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap-dma-engine\00", [16 x i8] zeroinitializer }, align 32
@omap_dma_match = internal constant { [6 x %struct.of_device_id], [296 x i8] } { [6 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2420-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2420_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap2430-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap2430_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3430-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3430_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap3630-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap3630_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4430-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @omap4_data }, %struct.of_device_id zeroinitializer], [296 x i8] zeroinitializer }, align 32
@omap_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1674, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"omap_system_dma_plat_info is missing\00", [59 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_dma_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/dma/ti/omap-dma.c\00", [38 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@omap_dma_probe._entry_ptr = internal global ptr @omap_dma_probe._entry, section ".printk_index", align 4
@default_cfg = internal constant { %struct.omap_dma_config, [24 x i8] } zeroinitializer, align 32
@omap_dma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&od->lch_lock\00", [18 x i8] zeroinitializer }, align 32
@omap_dma_probe.__key.7 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.8 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"&od->lock\00", [22 x i8] zeroinitializer }, align 32
@omap_dma_probe.__key.9 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.10 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&od->irq_lock\00", [18 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-requests\00", [19 x i8] zeroinitializer }, align 32
@omap_dma_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.2, ptr @.str.3, i32 1726, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Missing dma-requests property, using %u.\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap_dma_probe._entry_ptr.15 = internal global ptr @omap_dma_probe._entry.12, section ".printk_index", align 4
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@omap_dma_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.2, ptr @.str.3, i32 1738, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Missing dma-channels property, using %u.\0A\00", [54 x i8] zeroinitializer }, align 32
@omap_dma_probe._entry_ptr.19 = internal global ptr @omap_dma_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma-channel-mask\00", [47 x i8] zeroinitializer }, align 32
@omap_dma_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 1769, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get L1 IRQ: %d\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_dma_probe._entry_ptr.23 = internal global ptr @omap_dma_probe._entry.21, section ".printk_index", align 4
@omap_dma_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 1798, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to allocate descriptor pool\0A\00", [60 x i8] zeroinitializer }, align 32
@omap_dma_probe._entry_ptr.26 = internal global ptr @omap_dma_probe._entry.24, section ".printk_index", align 4
@omap_dma_probe._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.2, ptr @.str.3, i32 1806, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [60 x i8], [36 x i8] } { [60 x i8] c"\014OMAP-DMA: failed to register slave DMA engine device: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_dma_probe._entry_ptr.29 = internal global ptr @omap_dma_probe._entry.27, section ".printk_index", align 4
@omap_dma_info = internal global { %struct.of_dma_filter_info, [24 x i8] } { %struct.of_dma_filter_info { %struct.dma_cap_mask_t zeroinitializer, ptr @omap_dma_filter_fn }, [24 x i8] zeroinitializer }, align 32
@omap_dma_probe._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.2, ptr @.str.3, i32 1820, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\014OMAP-DMA: failed to register DMA controller\0A\00", [49 x i8] zeroinitializer }, align 32
@omap_dma_probe._entry_ptr.32 = internal global ptr @omap_dma_probe._entry.30, section ".printk_index", align 4
@omap_dma_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 1837, ptr @.str.14, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"OMAP DMA engine driver%s\0A\00", [38 x i8] zeroinitializer }, align 32
@omap_dma_probe._entry_ptr.35 = internal global ptr @omap_dma_probe._entry.33, section ".printk_index", align 4
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c" (LinkedList1/2/3 supported)\00", [35 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@.str.38 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"DMA engine\00", [21 x i8] zeroinitializer }, align 32
@omap_dma_alloc_chan_resources.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 -77, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.39 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"omap_dma\00", [23 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"omap_dma_alloc_chan_resources\00", [34 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"allocating channel %u for %u\0A\00", [34 x i8] zeroinitializer }, align 32
@vchan_cookie_complete.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.42, ptr @.str.43, ptr @.str.44, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/dma/ti/../virt-dma.h\00", [35 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_dma_free_chan_resources.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.39, ptr @.str.45, ptr @.str.3, ptr @.str.46, i8 0, i8 -62, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"omap_dma_free_chan_resources\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"freeing channel %u used for %u\0A\00", [32 x i8] zeroinitializer }, align 32
@es_bytes = internal constant { [3 x i32], [20 x i8] } { [3 x i32] [i32 1, i32 2, i32 4], [20 x i8] zeroinitializer }, align 32
@omap_dma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 980, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s: bad direction?\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"omap_dma_prep_slave_sg\00", [41 x i8] zeroinitializer }, align 32
@omap_dma_prep_slave_sg._entry_ptr = internal global ptr @omap_dma_prep_slave_sg._entry, section ".printk_index", align 4
@omap_dma_prep_slave_sg._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.50, ptr @.str.48, ptr @.str.3, i32 1108, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"t2_desc[%d] allocation failed\0A\00", [33 x i8] zeroinitializer }, align 32
@omap_dma_prep_slave_sg._entry_ptr.51 = internal global ptr @omap_dma_prep_slave_sg._entry.49, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@omap_dma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.52, ptr @.str.3, i32 1157, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.52 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"omap_dma_prep_dma_cyclic\00", [39 x i8] zeroinitializer }, align 32
@omap_dma_prep_dma_cyclic._entry_ptr = internal global ptr @omap_dma_prep_dma_cyclic._entry, section ".printk_index", align 4
@omap_dma_prep_dma_interleaved._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.54, ptr @.str.3, i32 1330, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: SRC constant addressing is not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"omap_dma_prep_dma_interleaved\00", [34 x i8] zeroinitializer }, align 32
@omap_dma_prep_dma_interleaved._entry_ptr = internal global ptr @omap_dma_prep_dma_interleaved._entry, section ".printk_index", align 4
@omap_dma_prep_dma_interleaved._entry.55 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.56, ptr @.str.54, ptr @.str.3, i32 1345, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: DST constant addressing is not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@omap_dma_prep_dma_interleaved._entry_ptr.57 = internal global ptr @omap_dma_prep_dma_interleaved._entry.55, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@omap_dma_drain_chan._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.58, ptr @.str.59, ptr @.str.3, i32 482, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"DMA drain did not complete on lch %d\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"omap_dma_drain_chan\00", [44 x i8] zeroinitializer }, align 32
@omap_dma_drain_chan._entry_ptr = internal global ptr @omap_dma_drain_chan._entry, section ".printk_index", align 4
@omap_dma_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.60, ptr @.str.61, ptr @.str.3, i32 656, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.60 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"invalid channel %u\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"omap_dma_irq\00", [19 x i8] zeroinitializer }, align 32
@omap_dma_irq._entry_ptr = internal global ptr @omap_dma_irq._entry, section ".printk_index", align 4
@omap2420_data = internal constant { %struct.omap_dma_config, [24 x i8] } { %struct.omap_dma_config { i32 49, i8 -48 }, [24 x i8] zeroinitializer }, align 32
@omap2430_data = internal constant { %struct.omap_dma_config, [24 x i8] } { %struct.omap_dma_config { i32 49, i8 -112 }, [24 x i8] zeroinitializer }, align 32
@omap3430_data = internal constant { %struct.omap_dma_config, [24 x i8] } { %struct.omap_dma_config { i32 49, i8 -80 }, [24 x i8] zeroinitializer }, align 32
@omap3630_data = internal constant { %struct.omap_dma_config, [24 x i8] } { %struct.omap_dma_config { i32 52, i8 -80 }, [24 x i8] zeroinitializer }, align 32
@omap4_data = internal constant { %struct.omap_dma_config, [24 x i8] } { %struct.omap_dma_config { i32 52, i8 -112 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.62 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.63 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.64 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.65 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.66 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.67 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.68 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.69 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.70 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.71 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.72 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.73 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.74 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.75 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.76 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.77 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.78 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.79 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.80 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.81 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.82 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.83 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.84 = internal global [4 x i64] [i64 2, i64 32, i64 3, i64 5]
@__sancov_gen_cov_switch_values.85 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.86 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.87 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.88 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.89 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.90 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.91 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.92 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.93 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.94 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.95 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.96 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.97 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.98 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.99 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.100 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.101 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.102 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 2]
@__sancov_gen_cov_switch_values.103 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.104 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.105 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.106 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.107 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.108 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.109 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.110 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.111 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.112 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.113 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.114 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.115 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.116 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.117 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.118 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.119 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.120 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.121 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.122 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.123 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.124 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.125 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.126 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.127 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.128 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.129 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.130 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.131 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@__sancov_gen_cov_switch_values.132 = internal global [5 x i64] [i64 3, i64 8, i64 1, i64 2, i64 3]
@___asan_gen_.133 = private unnamed_addr constant [16 x i8] c"omap_dma_driver\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1914, i32 31 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1918, i32 11 }
@___asan_gen_.139 = private unnamed_addr constant [15 x i8] c"omap_dma_match\00", align 1
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1904, i32 34 }
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1674, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant [12 x i8] c"default_cfg\00", align 1
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1650, i32 37 }
@___asan_gen_.168 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1715, i32 2 }
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1716, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1717, i32 2 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1722, i32 13 }
@___asan_gen_.192 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1724, i32 3 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1734, i32 53 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1736, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1744, i32 14 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1769, i32 3 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1797, i32 4 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1805, i32 3 }
@___asan_gen_.223 = private unnamed_addr constant [14 x i8] c"omap_dma_info\00", align 1
@___asan_gen_.225 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 229, i32 34 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1820, i32 4 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1836, i32 2 }
@___asan_gen_.246 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 710, i32 38 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 716, i32 2 }
@___asan_gen_.263 = private unnamed_addr constant [32 x i8] c"../drivers/dma/ti/../virt-dma.h\00", align 1
@___asan_gen_.264 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.263, i32 101, i32 2 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 776, i32 2 }
@___asan_gen_.271 = private unnamed_addr constant [9 x i8] c"es_bytes\00", align 1
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 222, i32 23 }
@___asan_gen_.282 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 980, i32 3 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1107, i32 5 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1157, i32 3 }
@___asan_gen_.303 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1328, i32 3 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1343, i32 3 }
@___asan_gen_.318 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 480, i32 3 }
@___asan_gen_.319 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.325 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.327 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 656, i32 4 }
@___asan_gen_.328 = private unnamed_addr constant [14 x i8] c"omap2420_data\00", align 1
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1871, i32 37 }
@___asan_gen_.331 = private unnamed_addr constant [14 x i8] c"omap2430_data\00", align 1
@___asan_gen_.333 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1878, i32 37 }
@___asan_gen_.334 = private unnamed_addr constant [14 x i8] c"omap3430_data\00", align 1
@___asan_gen_.336 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1884, i32 37 }
@___asan_gen_.337 = private unnamed_addr constant [14 x i8] c"omap3630_data\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1891, i32 37 }
@___asan_gen_.340 = private unnamed_addr constant [11 x i8] c"omap4_data\00", align 1
@___asan_gen_.341 = private constant [29 x i8] c"../drivers/dma/ti/omap-dma.c\00", align 1
@___asan_gen_.342 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.341, i32 1898, i32 37 }
@llvm.compiler.used = appending global [91 x ptr] [ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_omap_dma_exit, ptr @__initcall__kmod_omap_dma__240_1942_omap_dma_init4, ptr @omap_dma_drain_chan._entry, ptr @omap_dma_drain_chan._entry_ptr, ptr @omap_dma_exit, ptr @omap_dma_irq._entry, ptr @omap_dma_irq._entry_ptr, ptr @omap_dma_prep_dma_cyclic._entry, ptr @omap_dma_prep_dma_cyclic._entry_ptr, ptr @omap_dma_prep_dma_interleaved._entry, ptr @omap_dma_prep_dma_interleaved._entry.55, ptr @omap_dma_prep_dma_interleaved._entry_ptr, ptr @omap_dma_prep_dma_interleaved._entry_ptr.57, ptr @omap_dma_prep_slave_sg._entry, ptr @omap_dma_prep_slave_sg._entry.49, ptr @omap_dma_prep_slave_sg._entry_ptr, ptr @omap_dma_prep_slave_sg._entry_ptr.51, ptr @omap_dma_probe._entry, ptr @omap_dma_probe._entry.12, ptr @omap_dma_probe._entry.17, ptr @omap_dma_probe._entry.21, ptr @omap_dma_probe._entry.24, ptr @omap_dma_probe._entry.27, ptr @omap_dma_probe._entry.30, ptr @omap_dma_probe._entry.33, ptr @omap_dma_probe._entry_ptr, ptr @omap_dma_probe._entry_ptr.15, ptr @omap_dma_probe._entry_ptr.19, ptr @omap_dma_probe._entry_ptr.23, ptr @omap_dma_probe._entry_ptr.26, ptr @omap_dma_probe._entry_ptr.29, ptr @omap_dma_probe._entry_ptr.32, ptr @omap_dma_probe._entry_ptr.35, ptr @omap_dma_driver, ptr @.str, ptr @omap_dma_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @default_cfg, ptr @omap_dma_probe.__key, ptr @.str.6, ptr @omap_dma_probe.__key.7, ptr @.str.8, ptr @omap_dma_probe.__key.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.18, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.28, ptr @omap_dma_info, ptr @.str.31, ptr @.str.34, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @es_bytes, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.56, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @omap2420_data, ptr @omap2430_data, ptr @omap3430_data, ptr @omap3630_data, ptr @omap4_data], section "llvm.metadata"
@0 = internal global [70 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_match to i32), i32 1176, i32 1472, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @default_cfg to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_probe.__key.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_probe.__key.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.192 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_probe._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 60, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_info to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_probe._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.264 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @es_bytes to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.271 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.282 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_prep_slave_sg._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_prep_dma_interleaved._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_prep_dma_interleaved._entry.55 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_drain_chan._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dma_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.319 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.327 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2420_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.328 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap2430_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.331 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.333 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3430_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.334 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap3630_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.337 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap4_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.340 to i32), i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.342 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dma_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @omap_dma_driver, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @omap_dma_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @omap_dma_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dma_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #10
  %0 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %val, align 4, !annotation !142
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 616, i32 noundef 3520) #10
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #10
  %base = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 2
  %1 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #10
  %tobool12.not = icmp eq ptr %call11, null
  %cfg21 = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 5
  br i1 %tobool12.not, label %if.else, label %if.then13

if.then13:                                        ; preds = %if.end9
  %3 = ptrtoint ptr %cfg21 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call11, ptr %cfg21, align 4
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %4 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %platform_data.i, align 8
  %plat = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %plat to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %5, ptr %plat, align 4
  %tobool17.not = icmp eq ptr %5, null
  br i1 %tobool17.not, label %do.end, label %if.then13.if.end28_crit_edge

if.then13.if.end28_crit_edge:                     ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

do.end:                                           ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #13
  br label %cleanup

if.else:                                          ; preds = %if.end9
  %7 = ptrtoint ptr %cfg21 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @default_cfg, ptr %cfg21, align 4
  %call22 = tail call ptr @omap_get_plat_info() #10
  %plat23 = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %plat23 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %call22, ptr %plat23, align 4
  %tobool25.not = icmp eq ptr %call22, null
  br i1 %tobool25.not, label %if.else.cleanup_crit_edge, label %if.else.if.end28_crit_edge

if.else.if.end28_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end28

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end28:                                         ; preds = %if.else.if.end28_crit_edge, %if.then13.if.end28_crit_edge
  %plat29 = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %plat29 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %plat29, align 4
  %11 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %10, align 4
  %reg_map30 = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %reg_map30 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %reg_map30, align 4
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #10
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #10
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #10
  tail call void @_set_bit(i32 noundef 13, ptr noundef %cap_mask) #10
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %14 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @omap_dma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %15 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @omap_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %16 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @omap_dma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %17 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @omap_dma_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %18 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @omap_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 40
  %19 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @omap_dma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %20 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @omap_dma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_interleaved_dma = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 41
  %21 = ptrtoint ptr %device_prep_interleaved_dma to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @omap_dma_prep_dma_interleaved, ptr %device_prep_interleaved_dma, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %22 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @omap_dma_slave_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 45
  %23 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @omap_dma_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 46
  %24 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @omap_dma_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %25 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @omap_dma_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 48
  %26 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @omap_dma_synchronize, ptr %device_synchronize, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %27 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 22, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %28 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 22, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %29 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %30 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %residue_granularity, align 4
  %max_burst = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 23
  %31 = ptrtoint ptr %max_burst to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 16777215, ptr %max_burst, align 4
  %dev57 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %32 = ptrtoint ptr %dev57 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %dev, ptr %dev57, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %channels, ptr %prev.i, align 4
  %lch_lock = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 10
  tail call void @__mutex_init(ptr noundef %lch_lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @omap_dma_probe.__key) #10
  %lock = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 1
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.8, ptr noundef nonnull @omap_dma_probe.__key.7, i16 noundef signext 3) #10
  %irq_lock = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 15
  tail call void @__raw_spin_lock_init(ptr noundef %irq_lock, ptr noundef nonnull @.str.10, ptr noundef nonnull @omap_dma_probe.__key.9, i16 noundef signext 3) #10
  %dma_requests = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 14
  %35 = ptrtoint ptr %dma_requests to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 127, ptr %dma_requests, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %36 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %of_node, align 8
  %tobool71.not = icmp eq ptr %37, null
  br i1 %tobool71.not, label %if.end28.if.then86_crit_edge, label %land.lhs.true

if.end28.if.then86_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86

land.lhs.true:                                    ; preds = %if.end28
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %37, ptr noundef nonnull @.str.11, ptr noundef %dma_requests, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool76.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool76.not, label %land.lhs.true.if.end82_crit_edge, label %do.end80

land.lhs.true.if.end82_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end82

do.end80:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef 127) #13
  br label %if.end82

if.end82:                                         ; preds = %do.end80, %land.lhs.true.if.end82_crit_edge
  %38 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %38)
  %.pr = load ptr, ptr %of_node, align 8
  %tobool85.not = icmp eq ptr %.pr, null
  br i1 %tobool85.not, label %if.end82.if.then86_crit_edge, label %if.else97

if.end82.if.then86_crit_edge:                     ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then86

if.then86:                                        ; preds = %if.end82.if.then86_crit_edge, %if.end28.if.then86_crit_edge
  %39 = ptrtoint ptr %plat29 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %plat29, align 4
  %dma_attr = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %40, i32 0, i32 2
  %41 = ptrtoint ptr %dma_attr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %dma_attr, align 4
  %lch_count = getelementptr inbounds %struct.omap_dma_dev_attr, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %lch_count to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %lch_count, align 4
  %conv = zext i16 %44 to i32
  %lch_count88 = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 8
  %45 = ptrtoint ptr %lch_count88 to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %conv, ptr %lch_count88, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %44)
  %tobool90.not = icmp eq i16 %44, 0
  br i1 %tobool90.not, label %if.then86.if.end110.sink.split_crit_edge, label %if.then86.if.end110_crit_edge, !prof !143

if.then86.if.end110_crit_edge:                    ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then86.if.end110.sink.split_crit_edge:         ; preds = %if.then86
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110.sink.split

if.else97:                                        ; preds = %if.end82
  %lch_count100 = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 8
  %call.i.i371 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %.pr, ptr noundef nonnull @.str.16, ptr noundef %lch_count100, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i371)
  %tobool102.not = icmp sgt i32 %call.i.i371, -1
  br i1 %tobool102.not, label %if.else97.if.end110_crit_edge, label %do.end106

if.else97.if.end110_crit_edge:                    ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

do.end106:                                        ; preds = %if.else97
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef 32) #13
  br label %if.end110.sink.split

if.end110.sink.split:                             ; preds = %do.end106, %if.then86.if.end110.sink.split_crit_edge
  %lch_count100.sink = phi ptr [ %lch_count100, %do.end106 ], [ %lch_count88, %if.then86.if.end110.sink.split_crit_edge ]
  %46 = ptrtoint ptr %lch_count100.sink to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 32, ptr %lch_count100.sink, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.end110.sink.split, %if.else97.if.end110_crit_edge, %if.then86.if.end110_crit_edge
  %47 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %of_node, align 8
  %tobool113.not = icmp eq ptr %48, null
  br i1 %tobool113.not, label %if.end110.if.end121_crit_edge, label %land.lhs.true114

if.end110.if.end121_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

land.lhs.true114:                                 ; preds = %if.end110
  %call.i.i372 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %48, ptr noundef nonnull @.str.20, ptr noundef nonnull %val, i32 noundef 1, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i372)
  %tobool118.not = icmp sgt i32 %call.i.i372, -1
  br i1 %tobool118.not, label %if.then119, label %land.lhs.true114.if.end121_crit_edge

land.lhs.true114.if.end121_crit_edge:             ; preds = %land.lhs.true114
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then119:                                       ; preds = %land.lhs.true114
  %49 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %val, align 4
  %neg = xor i32 %50, -1
  store i32 %neg, ptr %val, align 4
  %lch_bitmap = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 9
  %lch_count120 = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 8
  %51 = ptrtoint ptr %lch_count120 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %lch_count120, align 4
  %sub.i.i = add i32 %52, 31
  %53 = lshr i32 %sub.i.i, 3
  %mul.i.i = and i32 %53, 536870908
  %54 = call ptr @memcpy(ptr %lch_bitmap, ptr %val, i32 %mul.i.i)
  %rem.i = and i32 %52, 31
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.i)
  %tobool.not.i = icmp eq i32 %rem.i, 0
  br i1 %tobool.not.i, label %if.then119.if.end121_crit_edge, label %if.then.i

if.then119.if.end121_crit_edge:                   ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end121

if.then.i:                                        ; preds = %if.then119
  call void @__sanitizer_cov_trace_pc() #12
  %sub.i = sub i32 0, %52
  %and.i = and i32 %sub.i, 31
  %shr.i = lshr i32 -1, %and.i
  %div6.i = lshr i32 %52, 5
  %arrayidx.i = getelementptr i32, ptr %lch_bitmap, i32 %div6.i
  %55 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %arrayidx.i, align 4
  %and1.i = and i32 %56, %shr.i
  store i32 %and1.i, ptr %arrayidx.i, align 4
  br label %if.end121

if.end121:                                        ; preds = %if.then.i, %if.then119.if.end121_crit_edge, %land.lhs.true114.if.end121_crit_edge, %if.end110.if.end121_crit_edge
  %57 = ptrtoint ptr %plat29 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %plat29, align 4
  %dma_attr123 = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %dma_attr123 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %dma_attr123, align 4
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %60, align 4
  %and = and i32 %62, 32768
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool124.not = icmp eq i32 %and, 0
  br i1 %tobool124.not, label %if.end121.if.end128_crit_edge, label %if.then125

if.end121.if.end128_crit_edge:                    ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end128

if.then125:                                       ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %lch_bitmap126 = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 9
  call void @__bitmap_set(ptr noundef %lch_bitmap126, i32 noundef 0, i32 noundef 2) #10
  br label %if.end128

if.end128:                                        ; preds = %if.then125, %if.end121.if.end128_crit_edge
  %lch_count130 = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 8
  %63 = ptrtoint ptr %lch_count130 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %lch_count130, align 4
  %65 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %64, i32 4) #10
  %66 = extractvalue { i32, i1 } %65, 1
  br i1 %66, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !143

devm_kcalloc.exit.thread:                         ; preds = %if.end128
  call void @__sanitizer_cov_trace_pc() #12
  %lch_map397 = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 17
  %67 = ptrtoint ptr %lch_map397 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr null, ptr %lch_map397, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end128
  %68 = extractvalue { i32, i1 } %65, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %68, i32 noundef 3520) #10
  %lch_map = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 17
  %69 = ptrtoint ptr %lch_map to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call5.i.i, ptr %lch_map, align 4
  %tobool133.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool133.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %70 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp402.not = icmp eq i32 %71, 0
  br i1 %cmp402.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0403 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %72 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %72, i32 noundef 3520, i32 noundef 260) #14
  %tobool.not.i373 = icmp eq ptr %call7.i.i.i, null
  br i1 %tobool.not.i373, label %if.then140, label %for.inc

if.then140:                                       ; preds = %for.body
  %73 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load volatile ptr, ptr %channels, align 4
  %cmp.i.not7.i = icmp eq ptr %74, %channels
  br i1 %cmp.i.not7.i, label %if.then140.cleanup_crit_edge, label %if.then140.while.body.i_crit_edge

if.then140.while.body.i_crit_edge:                ; preds = %if.then140
  br label %while.body.i

if.then140.cleanup_crit_edge:                     ; preds = %if.then140
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.then140.while.body.i_crit_edge
  %75 = phi ptr [ %85, %list_del.exit.i.while.body.i_crit_edge ], [ %74, %if.then140.while.body.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %75, i32 -32
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %75) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %76 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev.i.i.i, align 4
  %78 = ptrtoint ptr %75 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %75, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %77, ptr %prev1.i.i.i.i, align 4
  %81 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %79, ptr %77, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %82 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr inttoptr (i32 256 to ptr), ptr %75, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %75, i32 0, i32 1
  %83 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %task.i = getelementptr i8, ptr %75, i32 32
  call void @tasklet_kill(ptr noundef %task.i) #10
  call void @kfree(ptr noundef %add.ptr.i) #10
  %84 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load volatile ptr, ptr %channels, align 4
  %cmp.i.not.i = icmp eq ptr %85, %channels
  br i1 %cmp.i.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.inc:                                          ; preds = %for.body
  %86 = ptrtoint ptr %reg_map30 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg_map30, align 4
  %reg_map1.i = getelementptr inbounds %struct.omap_chan, ptr %call7.i.i.i, i32 0, i32 2
  %88 = ptrtoint ptr %reg_map1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %87, ptr %reg_map1.i, align 8
  %desc_free.i = getelementptr inbounds %struct.virt_dma_chan, ptr %call7.i.i.i, i32 0, i32 2
  %89 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store ptr @omap_dma_desc_free, ptr %desc_free.i, align 8
  call void @vchan_init(ptr noundef nonnull %call7.i.i.i, ptr noundef %call.i) #10
  %inc = add nuw i32 %i.0403, 1
  %90 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dma_requests, align 4
  %cmp = icmp ult i32 %inc, %91
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call142 = call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call142)
  %cmp143 = icmp slt i32 %call142, 1
  br i1 %cmp143, label %do.end148, label %if.else150

do.end148:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %call142) #13
  %legacy = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 11
  %92 = ptrtoint ptr %legacy to i32
  call void @__asan_store1_noabort(i32 %92)
  store i8 1, ptr %legacy, align 4
  br label %if.end156

if.else150:                                       ; preds = %for.end
  %irq_enable_mask = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 16
  %93 = ptrtoint ptr %irq_enable_mask to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %irq_enable_mask, align 4
  %94 = ptrtoint ptr %reg_map30 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %reg_map30, align 4
  %stride.i = getelementptr %struct.omap_dma_reg, ptr %95, i32 24, i32 1
  %96 = ptrtoint ptr %stride.i to i32
  call void @__asan_load1_noabort(i32 %96)
  %97 = load i8, ptr %stride.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %97)
  %tobool.not.i375 = icmp eq i8 %97, 0
  br i1 %tobool.not.i375, label %if.else150.if.end.i377_crit_edge, label %do.end.i, !prof !144

if.else150.if.end.i377_crit_edge:                 ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i377

do.end.i:                                         ; preds = %if.else150
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i377

if.end.i377:                                      ; preds = %do.end.i, %if.else150.if.end.i377_crit_edge
  %add.ptr.i376 = getelementptr %struct.omap_dma_reg, ptr %95, i32 24
  %type.i = getelementptr %struct.omap_dma_reg, ptr %95, i32 24, i32 2
  %98 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %type.i, align 1
  %100 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %base, align 4
  %102 = ptrtoint ptr %add.ptr.i376 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %add.ptr.i376, align 2
  %conv20.i = zext i16 %103 to i32
  %add.ptr21.i = getelementptr i8, ptr %101, i32 %conv20.i
  %104 = zext i8 %99 to i64
  call void @__sanitizer_cov_trace_switch(i64 %104, ptr @__sancov_gen_cov_switch_values)
  switch i8 %99, label %do.end.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i, i16 0) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit

sw.bb1.i.i:                                       ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i, i16 0) #10, !srcloc !145
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr21.i, i32 2
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit

sw.bb4.i.i:                                       ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 0) #10, !srcloc !146
  br label %omap_dma_glbl_write.exit

do.end.i.i:                                       ; preds = %if.end.i377
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_write.exit

omap_dma_glbl_write.exit:                         ; preds = %do.end.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %call.i378 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %call142, ptr noundef nonnull @omap_dma_irq, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str, ptr noundef %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i378)
  %tobool153.not = icmp eq i32 %call.i378, 0
  br i1 %tobool153.not, label %omap_dma_glbl_write.exit.if.end156_crit_edge, label %if.then154

omap_dma_glbl_write.exit.if.end156_crit_edge:     ; preds = %omap_dma_glbl_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end156

if.then154:                                       ; preds = %omap_dma_glbl_write.exit
  %105 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load volatile ptr, ptr %channels, align 4
  %cmp.i.not7.i380 = icmp eq ptr %106, %channels
  br i1 %cmp.i.not7.i380, label %if.then154.cleanup_crit_edge, label %if.then154.while.body.i383_crit_edge

if.then154.while.body.i383_crit_edge:             ; preds = %if.then154
  br label %while.body.i383

if.then154.cleanup_crit_edge:                     ; preds = %if.then154
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.body.i383:                                  ; preds = %list_del.exit.i390.while.body.i383_crit_edge, %if.then154.while.body.i383_crit_edge
  %107 = phi ptr [ %117, %list_del.exit.i390.while.body.i383_crit_edge ], [ %106, %if.then154.while.body.i383_crit_edge ]
  %add.ptr.i381 = getelementptr i8, ptr %107, i32 -32
  %call.i.i.i382 = call zeroext i1 @__list_del_entry_valid(ptr noundef %107) #10
  br i1 %call.i.i.i382, label %if.end.i.i.i386, label %while.body.i383.list_del.exit.i390_crit_edge

while.body.i383.list_del.exit.i390_crit_edge:     ; preds = %while.body.i383
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i390

if.end.i.i.i386:                                  ; preds = %while.body.i383
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i384 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %108 = ptrtoint ptr %prev.i.i.i384 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %prev.i.i.i384, align 4
  %110 = ptrtoint ptr %107 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %107, align 4
  %prev1.i.i.i.i385 = getelementptr inbounds %struct.list_head, ptr %111, i32 0, i32 1
  %112 = ptrtoint ptr %prev1.i.i.i.i385 to i32
  call void @__asan_store4_noabort(i32 %112)
  store ptr %109, ptr %prev1.i.i.i.i385, align 4
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_store4_noabort(i32 %113)
  store volatile ptr %111, ptr %109, align 4
  br label %list_del.exit.i390

list_del.exit.i390:                               ; preds = %if.end.i.i.i386, %while.body.i383.list_del.exit.i390_crit_edge
  %114 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %114)
  store ptr inttoptr (i32 256 to ptr), ptr %107, align 4
  %prev.i.i387 = getelementptr inbounds %struct.list_head, ptr %107, i32 0, i32 1
  %115 = ptrtoint ptr %prev.i.i387 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i387, align 4
  %task.i388 = getelementptr i8, ptr %107, i32 32
  call void @tasklet_kill(ptr noundef %task.i388) #10
  call void @kfree(ptr noundef %add.ptr.i381) #10
  %116 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load volatile ptr, ptr %channels, align 4
  %cmp.i.not.i389 = icmp eq ptr %117, %channels
  br i1 %cmp.i.not.i389, label %list_del.exit.i390.cleanup_crit_edge, label %list_del.exit.i390.while.body.i383_crit_edge

list_del.exit.i390.while.body.i383_crit_edge:     ; preds = %list_del.exit.i390
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i383

list_del.exit.i390.cleanup_crit_edge:             ; preds = %list_del.exit.i390
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end156:                                        ; preds = %omap_dma_glbl_write.exit.if.end156_crit_edge, %do.end148
  %call157 = call fastcc i32 @omap_dma_glbl_read(ptr noundef nonnull %call.i, i32 noundef 9)
  %and158 = and i32 %call157, 1048576
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and158)
  %tobool159.not = icmp eq i32 %and158, 0
  br i1 %tobool159.not, label %if.end156.if.end161_crit_edge, label %if.then160

if.end156.if.end161_crit_edge:                    ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end161

if.then160:                                       ; preds = %if.end156
  call void @__sanitizer_cov_trace_pc() #12
  %ll123_supported = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 12
  %118 = ptrtoint ptr %ll123_supported to i32
  call void @__asan_store1_noabort(i32 %118)
  store i8 1, ptr %ll123_supported, align 1
  br label %if.end161

if.end161:                                        ; preds = %if.then160, %if.end156.if.end161_crit_edge
  %119 = ptrtoint ptr %plat29 to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %plat29, align 4
  %slave_map = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %120, i32 0, i32 9
  %121 = ptrtoint ptr %slave_map to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %slave_map, align 4
  %filter = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 5
  %map = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 5, i32 2
  %123 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %123)
  store ptr %122, ptr %map, align 4
  %slavecnt = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %120, i32 0, i32 10
  %124 = ptrtoint ptr %slavecnt to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load i32, ptr %slavecnt, align 4
  %mapcnt = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 5, i32 1
  %126 = ptrtoint ptr %mapcnt to i32
  call void @__asan_store4_noabort(i32 %126)
  store i32 %125, ptr %mapcnt, align 4
  %127 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %127)
  store ptr @omap_dma_filter_fn, ptr %filter, align 4
  %ll123_supported169 = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 12
  %128 = ptrtoint ptr %ll123_supported169 to i32
  call void @__asan_load1_noabort(i32 %128)
  %129 = load i8, ptr %ll123_supported169, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %129)
  %tobool170.not = icmp eq i8 %129, 0
  br i1 %tobool170.not, label %if.end161.if.end185_crit_edge, label %if.then171

if.end161.if.end185_crit_edge:                    ; preds = %if.end161
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end185

if.then171:                                       ; preds = %if.end161
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %130 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i392 = icmp eq ptr %131, null
  br i1 %tobool.not.i392, label %if.end.i393, label %if.then171.dev_name.exit_crit_edge

if.then171.dev_name.exit_crit_edge:               ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i393:                                      ; preds = %if.then171
  call void @__sanitizer_cov_trace_pc() #12
  %132 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i393, %if.then171.dev_name.exit_crit_edge
  %retval.0.i394 = phi ptr [ %133, %if.end.i393 ], [ %131, %if.then171.dev_name.exit_crit_edge ]
  %call175 = call ptr @dma_pool_create(ptr noundef %retval.0.i394, ptr noundef %dev, i32 noundef 28, i32 noundef 4, i32 noundef 0) #10
  %desc_pool = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 13
  %134 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %134)
  store ptr %call175, ptr %desc_pool, align 4
  %tobool177.not = icmp eq ptr %call175, null
  br i1 %tobool177.not, label %do.end181, label %dev_name.exit.if.end185_crit_edge

dev_name.exit.if.end185_crit_edge:                ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end185

do.end181:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #13
  %135 = ptrtoint ptr %ll123_supported169 to i32
  call void @__asan_store1_noabort(i32 %135)
  store i8 0, ptr %ll123_supported169, align 1
  br label %if.end185

if.end185:                                        ; preds = %do.end181, %dev_name.exit.if.end185_crit_edge, %if.end161.if.end185_crit_edge
  %call187 = call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call187)
  %tobool188.not = icmp eq i32 %call187, 0
  br i1 %tobool188.not, label %if.end194, label %do.end192

do.end192:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #12
  %call193 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.28, i32 noundef %call187) #13
  call fastcc void @omap_dma_free(ptr noundef nonnull %call.i)
  br label %cleanup

if.end194:                                        ; preds = %if.end185
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %136 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %137 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %of_node, align 8
  %tobool197.not = icmp eq ptr %138, null
  br i1 %tobool197.not, label %if.end194.if.end213_crit_edge, label %if.then198

if.end194.if.end213_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end213

if.then198:                                       ; preds = %if.end194
  %139 = ptrtoint ptr %cap_mask to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load i32, ptr %cap_mask, align 4
  store i32 %140, ptr @omap_dma_info, align 4
  %call203 = call i32 @of_dma_controller_register(ptr noundef nonnull %138, ptr noundef nonnull @of_dma_simple_xlate, ptr noundef nonnull @omap_dma_info) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call203)
  %tobool204.not = icmp eq i32 %call203, 0
  br i1 %tobool204.not, label %if.then198.if.end213_crit_edge, label %do.end208

if.then198.if.end213_crit_edge:                   ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end213

do.end208:                                        ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #12
  %call210 = call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.31) #13
  call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #10
  call fastcc void @omap_dma_free(ptr noundef nonnull %call.i)
  br label %if.end213

if.end213:                                        ; preds = %do.end208, %if.then198.if.end213_crit_edge, %if.end194.if.end213_crit_edge
  %rc.0 = phi i32 [ %call203, %do.end208 ], [ 0, %if.then198.if.end213_crit_edge ], [ 0, %if.end194.if.end213_crit_edge ]
  call fastcc void @omap_dma_init_gcr(ptr noundef nonnull %call.i)
  %cfg214 = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 5
  %141 = ptrtoint ptr %cfg214 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %cfg214, align 4
  %needs_busy_check = getelementptr inbounds %struct.omap_dma_config, ptr %142, i32 0, i32 1
  %143 = ptrtoint ptr %needs_busy_check to i32
  call void @__asan_load1_noabort(i32 %143)
  %bf.load = load i8, ptr %needs_busy_check, align 4
  %144 = and i8 %bf.load, 64
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %144)
  %tobool215.not = icmp eq i8 %144, 0
  br i1 %tobool215.not, label %if.else219, label %if.then216

if.then216:                                       ; preds = %if.end213
  call void @__sanitizer_cov_trace_pc() #12
  %nb = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 6
  %145 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %145)
  store ptr @omap_dma_busy_notifier, ptr %nb, align 4
  br label %do.end235.sink.split

if.else219:                                       ; preds = %if.end213
  %146 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %146)
  %tobool225.not = icmp eq i8 %146, 0
  br i1 %tobool225.not, label %if.else219.do.end235_crit_edge, label %if.then226

if.else219.do.end235_crit_edge:                   ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end235

if.then226:                                       ; preds = %if.else219
  call void @__sanitizer_cov_trace_pc() #12
  %nb227 = getelementptr inbounds %struct.omap_dmadev, ptr %call.i, i32 0, i32 6
  %147 = ptrtoint ptr %nb227 to i32
  call void @__asan_store4_noabort(i32 %147)
  store ptr @omap_dma_context_notifier, ptr %nb227, align 4
  br label %do.end235.sink.split

do.end235.sink.split:                             ; preds = %if.then226, %if.then216
  %nb.sink = phi ptr [ %nb, %if.then216 ], [ %nb227, %if.then226 ]
  %call218 = call i32 @cpu_pm_register_notifier(ptr noundef %nb.sink) #10
  br label %do.end235

do.end235:                                        ; preds = %do.end235.sink.split, %if.else219.do.end235_crit_edge
  %148 = ptrtoint ptr %ll123_supported169 to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %ll123_supported169, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool238.not = icmp eq i8 %149, 0
  %cond = select i1 %tobool238.not, ptr @.str.37, ptr @.str.36
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.34, ptr noundef nonnull %cond) #13
  br label %cleanup

cleanup:                                          ; preds = %do.end235, %do.end192, %list_del.exit.i390.cleanup_crit_edge, %if.then154.cleanup_crit_edge, %list_del.exit.i.cleanup_crit_edge, %if.then140.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.else.cleanup_crit_edge, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then6 ], [ %call187, %do.end192 ], [ %rc.0, %do.end235 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -517, %if.else.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %if.then140.cleanup_crit_edge ], [ %call.i378, %if.then154.cleanup_crit_edge ], [ %call.i378, %list_del.exit.i390.cleanup_crit_edge ], [ -12, %list_del.exit.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dma_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %cfg = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 5
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %cfg, align 4
  %may_lose_context = getelementptr inbounds %struct.omap_dma_config, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %may_lose_context to i32
  call void @__asan_load1_noabort(i32 %4)
  %bf.load = load i8, ptr %may_lose_context, align 4
  %5 = and i8 %bf.load, 32
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %nb = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 6
  %call1 = tail call i32 @cpu_pm_unregister_notifier(ptr noundef %nb) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end6_crit_edge, label %if.then3

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @of_dma_controller_free(ptr noundef nonnull %7) #10
  br label %if.end6

if.end6:                                          ; preds = %if.then3, %if.end.if.end6_crit_edge
  %call7 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 1) #10
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %call7, ptr noundef %1) #10
  tail call void @dma_async_device_unregister(ptr noundef %1) #10
  %legacy = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 11
  %8 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %legacy, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool9.not = icmp eq i8 %9, 0
  br i1 %tobool9.not, label %if.then10, label %if.end6.if.end11_crit_edge

if.end6.if.end11_crit_edge:                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then10:                                        ; preds = %if.end6
  %reg_map.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 3
  %10 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_map.i, align 4
  %stride.i = getelementptr %struct.omap_dma_reg, ptr %11, i32 23, i32 1
  %12 = ptrtoint ptr %stride.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %stride.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool.not.i = icmp eq i8 %13, 0
  br i1 %tobool.not.i, label %if.then10.if.end.i_crit_edge, label %do.end.i, !prof !144

if.then10.if.end.i_crit_edge:                     ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then10
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then10.if.end.i_crit_edge
  %add.ptr.i = getelementptr %struct.omap_dma_reg, ptr %11, i32 23
  %type.i = getelementptr %struct.omap_dma_reg, ptr %11, i32 23, i32 2
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type.i, align 1
  %base.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 2
  %conv20.i = zext i16 %19 to i32
  %add.ptr21.i = getelementptr i8, ptr %17, i32 %conv20.i
  %20 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.62)
  switch i8 %15, label %do.end.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i, i16 0) #10, !srcloc !145
  br label %if.end11

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i, i16 0) #10, !srcloc !145
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr21.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #10, !srcloc !145
  br label %if.end11

sw.bb4.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 0) #10, !srcloc !146
  br label %if.end11

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %if.end11

if.end11:                                         ; preds = %do.end.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i, %if.end6.if.end11_crit_edge
  %ll123_supported = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 12
  %21 = ptrtoint ptr %ll123_supported to i32
  call void @__asan_load1_noabort(i32 %21)
  %22 = load i8, ptr %ll123_supported, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %22)
  %tobool12.not = icmp eq i8 %22, 0
  br i1 %tobool12.not, label %if.end11.if.end14_crit_edge, label %if.then13

if.end11.if.end14_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end14

if.then13:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %desc_pool = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 13
  %23 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %24) #10
  br label %if.end14

if.end14:                                         ; preds = %if.then13, %if.end11.if.end14_crit_edge
  %channels.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 3
  %25 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %channels.i, align 4
  %cmp.i.not7.i = icmp eq ptr %26, %channels.i
  br i1 %cmp.i.not7.i, label %if.end14.omap_dma_free.exit_crit_edge, label %if.end14.while.body.i_crit_edge

if.end14.while.body.i_crit_edge:                  ; preds = %if.end14
  br label %while.body.i

if.end14.omap_dma_free.exit_crit_edge:            ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_dma_free.exit

while.body.i:                                     ; preds = %list_del.exit.i.while.body.i_crit_edge, %if.end14.while.body.i_crit_edge
  %27 = phi ptr [ %37, %list_del.exit.i.while.body.i_crit_edge ], [ %26, %if.end14.while.body.i_crit_edge ]
  %add.ptr.i27 = getelementptr i8, ptr %27, i32 -32
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %27) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.body.i.list_del.exit.i_crit_edge

while.body.i.list_del.exit.i_crit_edge:           ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %while.body.i
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

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %while.body.i.list_del.exit.i_crit_edge
  %34 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %27, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %task.i = getelementptr i8, ptr %27, i32 32
  tail call void @tasklet_kill(ptr noundef %task.i) #10
  tail call void @kfree(ptr noundef %add.ptr.i27) #10
  %36 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %channels.i, align 4
  %cmp.i.not.i = icmp eq ptr %37, %channels.i
  br i1 %cmp.i.not.i, label %list_del.exit.i.omap_dma_free.exit_crit_edge, label %list_del.exit.i.while.body.i_crit_edge

list_del.exit.i.while.body.i_crit_edge:           ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

list_del.exit.i.omap_dma_free.exit_crit_edge:     ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_dma_free.exit

omap_dma_free.exit:                               ; preds = %list_del.exit.i.omap_dma_free.exit_crit_edge, %if.end14.omap_dma_free.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @omap_get_plat_info() local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dma_alloc_chan_resources(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev2 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev2, align 4
  %legacy = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 11
  %4 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %legacy, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool.not = icmp eq i8 %5, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dma_sig = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 5
  %6 = ptrtoint ptr %dma_sig to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_sig, align 4
  %dma_ch = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 9
  %call3 = tail call i32 @omap_request_dma(i32 noundef %7, ptr noundef nonnull @.str.38, ptr noundef nonnull @omap_dma_callback, ptr noundef %chan, ptr noundef %dma_ch) #10
  br label %do.body

if.else:                                          ; preds = %entry
  %dma_ch4 = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 9
  %lch_lock.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 10
  tail call void @mutex_lock_nested(ptr noundef %lch_lock.i, i32 noundef 0) #10
  %lch_bitmap.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 9
  %lch_count.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %lch_count.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lch_count.i, align 4
  %call.i = tail call i32 @_find_first_zero_bit_be(ptr noundef %lch_bitmap.i, i32 noundef %9) #10
  %10 = ptrtoint ptr %lch_count.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lch_count.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %11)
  %cmp.not.i = icmp slt i32 %call.i, %11
  br i1 %cmp.not.i, label %if.end.i, label %out_busy.i

if.end.i:                                         ; preds = %if.else
  tail call void @_set_bit(i32 noundef %call.i, ptr noundef %lch_bitmap.i) #10
  tail call void @mutex_unlock(ptr noundef %lch_lock.i) #10
  %lch_map.i.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 17
  %12 = ptrtoint ptr %lch_map.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %lch_map.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %13, i32 %call.i
  %14 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %15, null
  br i1 %tobool.not.i.i, label %if.end.i.omap_dma_get_lch.exit_crit_edge, label %for.cond.preheader.i.i

if.end.i.omap_dma_get_lch.exit_crit_edge:         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_dma_get_lch.exit

for.cond.preheader.i.i:                           ; preds = %if.end.i
  %cfg.i.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %cfg.i.i, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %19)
  %cmp.not6.i.i = icmp slt i32 %19, 32
  br i1 %cmp.not6.i.i, label %for.cond.preheader.i.i.omap_dma_get_lch.exit_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.omap_dma_get_lch.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_dma_get_lch.exit

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %reg_map.i.i.i = getelementptr inbounds %struct.omap_chan, ptr %15, i32 0, i32 2
  %channel_base.i.i.i = getelementptr inbounds %struct.omap_chan, ptr %15, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %omap_dma_chan_write.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 32, %for.body.lr.ph.i.i ], [ %inc.i.i, %omap_dma_chan_write.exit.i.i.for.body.i.i_crit_edge ]
  %20 = ptrtoint ptr %reg_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_map.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.omap_dma_reg, ptr %21, i32 %i.07.i.i
  %type.i.i.i = getelementptr %struct.omap_dma_reg, ptr %21, i32 %i.07.i.i, i32 2
  %22 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type.i.i.i, align 1
  %24 = ptrtoint ptr %channel_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channel_base.i.i.i, align 4
  %26 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv1.i.i.i = zext i16 %27 to i32
  %add.ptr2.i.i.i = getelementptr i8, ptr %25, i32 %conv1.i.i.i
  %28 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.63)
  switch i8 %23, label %do.end.i.i.i.i [
    i8 1, label %sw.bb.i.i.i.i
    i8 2, label %sw.bb1.i.i.i.i
    i8 3, label %sw.bb4.i.i.i.i
  ]

sw.bb.i.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i.i, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit.i.i

sw.bb1.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i.i, i16 0) #10, !srcloc !145
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit.i.i

sw.bb4.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 0) #10, !srcloc !146
  br label %omap_dma_chan_write.exit.i.i

do.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit.i.i

omap_dma_chan_write.exit.i.i:                     ; preds = %do.end.i.i.i.i, %sw.bb4.i.i.i.i, %sw.bb1.i.i.i.i, %sw.bb.i.i.i.i
  %inc.i.i = add i32 %i.07.i.i, 1
  %29 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cfg.i.i, align 4
  %31 = ptrtoint ptr %30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %30, align 4
  %cmp.not.i.i = icmp sgt i32 %inc.i.i, %32
  br i1 %cmp.not.i.i, label %omap_dma_chan_write.exit.i.i.omap_dma_get_lch.exit_crit_edge, label %omap_dma_chan_write.exit.i.i.for.body.i.i_crit_edge

omap_dma_chan_write.exit.i.i.for.body.i.i_crit_edge: ; preds = %omap_dma_chan_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

omap_dma_chan_write.exit.i.i.omap_dma_get_lch.exit_crit_edge: ; preds = %omap_dma_chan_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_dma_get_lch.exit

out_busy.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @mutex_unlock(ptr noundef %lch_lock.i) #10
  br label %omap_dma_get_lch.exit

omap_dma_get_lch.exit:                            ; preds = %out_busy.i, %omap_dma_chan_write.exit.i.i.omap_dma_get_lch.exit_crit_edge, %for.cond.preheader.i.i.omap_dma_get_lch.exit_crit_edge, %if.end.i.omap_dma_get_lch.exit_crit_edge
  %storemerge.i = phi i32 [ -22, %out_busy.i ], [ %call.i, %if.end.i.omap_dma_get_lch.exit_crit_edge ], [ %call.i, %for.cond.preheader.i.i.omap_dma_get_lch.exit_crit_edge ], [ %call.i, %omap_dma_chan_write.exit.i.i.omap_dma_get_lch.exit_crit_edge ]
  %retval.0.i73 = phi i32 [ -16, %out_busy.i ], [ 0, %if.end.i.omap_dma_get_lch.exit_crit_edge ], [ 0, %for.cond.preheader.i.i.omap_dma_get_lch.exit_crit_edge ], [ 0, %omap_dma_chan_write.exit.i.i.omap_dma_get_lch.exit_crit_edge ]
  %33 = ptrtoint ptr %dma_ch4 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %storemerge.i, ptr %dma_ch4, align 4
  br label %do.body

do.body:                                          ; preds = %omap_dma_get_lch.exit, %if.then
  %ret.0 = phi i32 [ %call3, %if.then ], [ %retval.0.i73, %omap_dma_get_lch.exit ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_dma_alloc_chan_resources.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap_dma_alloc_chan_resources, %do.end)) #10
          to label %if.then11 [label %do.end], !srcloc !148

if.then11:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dma_ch12 = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 9
  %34 = ptrtoint ptr %dma_ch12 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_ch12, align 4
  %dma_sig13 = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 5
  %36 = ptrtoint ptr %dma_sig13 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_sig13, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_dma_alloc_chan_resources.__UNIQUE_ID_ddebug238, ptr noundef %3, ptr noundef nonnull @.str.41, i32 noundef %35, i32 noundef %37) #10
  br label %do.end

do.end:                                           ; preds = %if.then11, %do.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %ret.0)
  %cmp = icmp sgt i32 %ret.0, -1
  br i1 %cmp, label %if.then15, label %do.end.if.end27_crit_edge

do.end.if.end27_crit_edge:                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then15:                                        ; preds = %do.end
  %dma_ch16 = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 9
  %38 = ptrtoint ptr %dma_ch16 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_ch16, align 4
  %base.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 2
  %40 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i, align 4
  %plat.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 4
  %42 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %plat.i, align 4
  %channel_stride.i = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %channel_stride.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %channel_stride.i, align 4
  %mul.i = mul i32 %45, %39
  %add.ptr.i = getelementptr i8, ptr %41, i32 %mul.i
  %channel_base.i = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 1
  %46 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %add.ptr.i, ptr %channel_base.i, align 4
  %lch_map.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 17
  %47 = ptrtoint ptr %lch_map.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %lch_map.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %48, i32 %39
  %49 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %chan, ptr %arrayidx.i, align 4
  %50 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %legacy, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %51)
  %tobool18.not = icmp eq i8 %51, 0
  br i1 %tobool18.not, label %if.then19, label %if.then15.if.end27_crit_edge

if.then15.if.end27_crit_edge:                     ; preds = %if.then15
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end27

if.then19:                                        ; preds = %if.then15
  %irq_lock = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #10
  %52 = ptrtoint ptr %dma_ch16 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_ch16, align 4
  %shl = shl nuw i32 1, %53
  %reg_map.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 3
  %54 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %reg_map.i, align 4
  %stride.i = getelementptr %struct.omap_dma_reg, ptr %55, i32 20, i32 1
  %56 = ptrtoint ptr %stride.i to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %stride.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool.not.i = icmp eq i8 %57, 0
  br i1 %tobool.not.i, label %if.then19.if.end.i76_crit_edge, label %do.end.i, !prof !144

if.then19.if.end.i76_crit_edge:                   ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i76

do.end.i:                                         ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i76

if.end.i76:                                       ; preds = %do.end.i, %if.then19.if.end.i76_crit_edge
  %add.ptr.i74 = getelementptr %struct.omap_dma_reg, ptr %55, i32 20
  %type.i = getelementptr %struct.omap_dma_reg, ptr %55, i32 20, i32 2
  %58 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %type.i, align 1
  %60 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i, align 4
  %62 = ptrtoint ptr %add.ptr.i74 to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %add.ptr.i74, align 2
  %conv20.i = zext i16 %63 to i32
  %add.ptr21.i = getelementptr i8, ptr %61, i32 %conv20.i
  %64 = zext i8 %59 to i64
  call void @__sanitizer_cov_trace_switch(i64 %64, ptr @__sancov_gen_cov_switch_values.64)
  switch i8 %59, label %do.end.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = trunc i32 %shl to i16
  %65 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i, i16 %65) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit

sw.bb1.i.i:                                       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i = trunc i32 %shl to i16
  %66 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i, i16 %66) #10, !srcloc !145
  %shr.i.i = lshr i32 %shl, 16
  %conv3.i.i = trunc i32 %shr.i.i to i16
  %67 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr21.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %67) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit

sw.bb4.i.i:                                       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #12
  %68 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %68) #10, !srcloc !146
  br label %omap_dma_glbl_write.exit

do.end.i.i:                                       ; preds = %if.end.i76
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_write.exit

omap_dma_glbl_write.exit:                         ; preds = %do.end.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %irq_enable_mask = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 16
  %69 = ptrtoint ptr %irq_enable_mask to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %irq_enable_mask, align 4
  %or = or i32 %70, %shl
  store i32 %or, ptr %irq_enable_mask, align 4
  %71 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_map.i, align 4
  %stride.i78 = getelementptr %struct.omap_dma_reg, ptr %72, i32 24, i32 1
  %73 = ptrtoint ptr %stride.i78 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %stride.i78, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %74)
  %tobool.not.i79 = icmp eq i8 %74, 0
  br i1 %tobool.not.i79, label %omap_dma_glbl_write.exit.if.end.i86_crit_edge, label %do.end.i80, !prof !144

omap_dma_glbl_write.exit.if.end.i86_crit_edge:    ; preds = %omap_dma_glbl_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i86

do.end.i80:                                       ; preds = %omap_dma_glbl_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i86

if.end.i86:                                       ; preds = %do.end.i80, %omap_dma_glbl_write.exit.if.end.i86_crit_edge
  %add.ptr.i81 = getelementptr %struct.omap_dma_reg, ptr %72, i32 24
  %type.i82 = getelementptr %struct.omap_dma_reg, ptr %72, i32 24, i32 2
  %75 = ptrtoint ptr %type.i82 to i32
  call void @__asan_load1_noabort(i32 %75)
  %76 = load i8, ptr %type.i82, align 1
  %77 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %base.i, align 4
  %79 = ptrtoint ptr %add.ptr.i81 to i32
  call void @__asan_load2_noabort(i32 %79)
  %80 = load i16, ptr %add.ptr.i81, align 2
  %conv20.i84 = zext i16 %80 to i32
  %add.ptr21.i85 = getelementptr i8, ptr %78, i32 %conv20.i84
  %81 = zext i8 %76 to i64
  call void @__sanitizer_cov_trace_switch(i64 %81, ptr @__sancov_gen_cov_switch_values.65)
  switch i8 %76, label %do.end.i.i95 [
    i8 1, label %sw.bb.i.i88
    i8 2, label %sw.bb1.i.i93
    i8 3, label %sw.bb4.i.i94
  ]

sw.bb.i.i88:                                      ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i87 = trunc i32 %or to i16
  %82 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i87) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i85, i16 %82) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit96

sw.bb1.i.i93:                                     ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i89 = trunc i32 %or to i16
  %83 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i89) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i85, i16 %83) #10, !srcloc !145
  %shr.i.i90 = lshr i32 %or, 16
  %conv3.i.i91 = trunc i32 %shr.i.i90 to i16
  %84 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i91) #10
  %add.ptr.i.i92 = getelementptr i8, ptr %add.ptr21.i85, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i92, i16 %84) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit96

sw.bb4.i.i94:                                     ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  %85 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i85, i32 %85) #10, !srcloc !146
  br label %omap_dma_glbl_write.exit96

do.end.i.i95:                                     ; preds = %if.end.i86
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_write.exit96

omap_dma_glbl_write.exit96:                       ; preds = %do.end.i.i95, %sw.bb4.i.i94, %sw.bb1.i.i93, %sw.bb.i.i88
  %86 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %reg_map.i, align 4
  %stride.i98 = getelementptr %struct.omap_dma_reg, ptr %87, i32 23, i32 1
  %88 = ptrtoint ptr %stride.i98 to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %stride.i98, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool.not.i99 = icmp eq i8 %89, 0
  br i1 %tobool.not.i99, label %omap_dma_glbl_write.exit96.if.end.i106_crit_edge, label %do.end.i100, !prof !144

omap_dma_glbl_write.exit96.if.end.i106_crit_edge: ; preds = %omap_dma_glbl_write.exit96
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i106

do.end.i100:                                      ; preds = %omap_dma_glbl_write.exit96
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 364, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i106

if.end.i106:                                      ; preds = %do.end.i100, %omap_dma_glbl_write.exit96.if.end.i106_crit_edge
  %add.ptr.i101 = getelementptr %struct.omap_dma_reg, ptr %87, i32 23
  %type.i102 = getelementptr %struct.omap_dma_reg, ptr %87, i32 23, i32 2
  %90 = ptrtoint ptr %type.i102 to i32
  call void @__asan_load1_noabort(i32 %90)
  %91 = load i8, ptr %type.i102, align 1
  %92 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %base.i, align 4
  %94 = ptrtoint ptr %add.ptr.i101 to i32
  call void @__asan_load2_noabort(i32 %94)
  %95 = load i16, ptr %add.ptr.i101, align 2
  %conv20.i104 = zext i16 %95 to i32
  %add.ptr21.i105 = getelementptr i8, ptr %93, i32 %conv20.i104
  %96 = zext i8 %91 to i64
  call void @__sanitizer_cov_trace_switch(i64 %96, ptr @__sancov_gen_cov_switch_values.66)
  switch i8 %91, label %do.end.i.i111 [
    i8 1, label %sw.bb.i.i108
    i8 2, label %sw.bb1.i.i110
    i8 3, label %sw.bb10.i.i
  ]

sw.bb.i.i108:                                     ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #12
  %97 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i105) #10, !srcloc !149
  %98 = tail call i16 @llvm.bswap.i16(i16 %97) #10
  %conv.i.i107 = zext i16 %98 to i32
  br label %omap_dma_glbl_read.exit

sw.bb1.i.i110:                                    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #12
  %99 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i105) #10, !srcloc !149
  %add.ptr.i.i109 = getelementptr i8, ptr %add.ptr21.i105, i32 2
  %100 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i109) #10, !srcloc !149
  %101 = zext i16 %100 to i32
  %102 = zext i16 %99 to i32
  %103 = shl nuw i32 %102, 16
  %104 = or i32 %103, %101
  %105 = tail call i32 @llvm.bswap.i32(i32 %104) #10
  br label %omap_dma_glbl_read.exit

sw.bb10.i.i:                                      ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #12
  %106 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i105) #10, !srcloc !150
  %107 = tail call i32 @llvm.bswap.i32(i32 %106) #10
  br label %omap_dma_glbl_read.exit

do.end.i.i111:                                    ; preds = %if.end.i106
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_read.exit

omap_dma_glbl_read.exit:                          ; preds = %do.end.i.i111, %sw.bb10.i.i, %sw.bb1.i.i110, %sw.bb.i.i108
  %val.0.i.i = phi i32 [ 0, %do.end.i.i111 ], [ %107, %sw.bb10.i.i ], [ %105, %sw.bb1.i.i110 ], [ %conv.i.i107, %sw.bb.i.i108 ]
  %108 = ptrtoint ptr %dma_ch16 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %dma_ch16, align 4
  %shl24 = shl nuw i32 1, %109
  %neg = xor i32 %shl24, -1
  %and = and i32 %val.0.i.i, %neg
  %110 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %reg_map.i, align 4
  %stride.i113 = getelementptr %struct.omap_dma_reg, ptr %111, i32 23, i32 1
  %112 = ptrtoint ptr %stride.i113 to i32
  call void @__asan_load1_noabort(i32 %112)
  %113 = load i8, ptr %stride.i113, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %113)
  %tobool.not.i114 = icmp eq i8 %113, 0
  br i1 %tobool.not.i114, label %omap_dma_glbl_read.exit.if.end.i121_crit_edge, label %do.end.i115, !prof !144

omap_dma_glbl_read.exit.if.end.i121_crit_edge:    ; preds = %omap_dma_glbl_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i121

do.end.i115:                                      ; preds = %omap_dma_glbl_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i121

if.end.i121:                                      ; preds = %do.end.i115, %omap_dma_glbl_read.exit.if.end.i121_crit_edge
  %add.ptr.i116 = getelementptr %struct.omap_dma_reg, ptr %111, i32 23
  %type.i117 = getelementptr %struct.omap_dma_reg, ptr %111, i32 23, i32 2
  %114 = ptrtoint ptr %type.i117 to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %type.i117, align 1
  %116 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %base.i, align 4
  %118 = ptrtoint ptr %add.ptr.i116 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %add.ptr.i116, align 2
  %conv20.i119 = zext i16 %119 to i32
  %add.ptr21.i120 = getelementptr i8, ptr %117, i32 %conv20.i119
  %120 = zext i8 %115 to i64
  call void @__sanitizer_cov_trace_switch(i64 %120, ptr @__sancov_gen_cov_switch_values.67)
  switch i8 %115, label %do.end.i.i130 [
    i8 1, label %sw.bb.i.i123
    i8 2, label %sw.bb1.i.i128
    i8 3, label %sw.bb4.i.i129
  ]

sw.bb.i.i123:                                     ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i122 = trunc i32 %and to i16
  %121 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i122) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i120, i16 %121) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit131

sw.bb1.i.i128:                                    ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i124 = trunc i32 %and to i16
  %122 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i124) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i120, i16 %122) #10, !srcloc !145
  %shr.i.i125 = lshr i32 %and, 16
  %conv3.i.i126 = trunc i32 %shr.i.i125 to i16
  %123 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i126) #10
  %add.ptr.i.i127 = getelementptr i8, ptr %add.ptr21.i120, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i127, i16 %123) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit131

sw.bb4.i.i129:                                    ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #12
  %124 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i120, i32 %124) #10, !srcloc !146
  br label %omap_dma_glbl_write.exit131

do.end.i.i130:                                    ; preds = %if.end.i121
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_write.exit131

omap_dma_glbl_write.exit131:                      ; preds = %do.end.i.i130, %sw.bb4.i.i129, %sw.bb1.i.i128, %sw.bb.i.i123
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #10
  br label %if.end27

if.end27:                                         ; preds = %omap_dma_glbl_write.exit131, %if.then15.if.end27_crit_edge, %do.end.if.end27_crit_edge
  %dma_sig28 = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 5
  %125 = ptrtoint ptr %dma_sig28 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %dma_sig28, align 4
  %and29 = and i32 %126, 31
  %ccr = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 3
  %and31 = shl i32 %126, 14
  %shl32 = and i32 %and31, -524288
  %or34 = or i32 %shl32, %and29
  %127 = ptrtoint ptr %ccr to i32
  call void @__asan_store4_noabort(i32 %127)
  store i32 %or34, ptr %ccr, align 4
  %plat = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 4
  %128 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %plat, align 4
  %errata = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %129, i32 0, i32 3
  %130 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %130)
  %131 = load i32, ptr %errata, align 4
  %and35 = and i32 %131, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and35)
  %tobool36.not = icmp eq i32 %and35, 0
  br i1 %tobool36.not, label %if.end27.if.end40_crit_edge, label %if.then37

if.end27.if.end40_crit_edge:                      ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end40

if.then37:                                        ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #12
  %or39 = or i32 %or34, 33554432
  %132 = ptrtoint ptr %ccr to i32
  call void @__asan_store4_noabort(i32 %132)
  store i32 %or39, ptr %ccr, align 4
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %if.end27.if.end40_crit_edge
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_dma_free_chan_resources(ptr noundef %chan) #0 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %legacy = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 11
  %2 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %legacy, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %if.then, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  %irq_lock = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 15
  tail call void @_raw_spin_lock_irq(ptr noundef %irq_lock) #10
  %dma_ch = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 9
  %4 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_ch, align 4
  %shl = shl nuw i32 1, %5
  %neg = xor i32 %shl, -1
  %irq_enable_mask = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 16
  %6 = ptrtoint ptr %irq_enable_mask to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq_enable_mask, align 4
  %and = and i32 %7, %neg
  store i32 %and, ptr %irq_enable_mask, align 4
  %reg_map.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 3
  %8 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reg_map.i, align 4
  %stride.i = getelementptr %struct.omap_dma_reg, ptr %9, i32 24, i32 1
  %10 = ptrtoint ptr %stride.i to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %stride.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not.i = icmp eq i8 %11, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %do.end.i, !prof !144

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.if.end.i_crit_edge
  %add.ptr.i = getelementptr %struct.omap_dma_reg, ptr %9, i32 24
  %type.i = getelementptr %struct.omap_dma_reg, ptr %9, i32 24, i32 2
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type.i, align 1
  %base.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 2
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i, align 2
  %conv20.i = zext i16 %17 to i32
  %add.ptr21.i = getelementptr i8, ptr %15, i32 %conv20.i
  %18 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.68)
  switch i8 %13, label %do.end.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = trunc i32 %and to i16
  %19 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i, i16 %19) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i = trunc i32 %and to i16
  %20 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i, i16 %20) #10, !srcloc !145
  %shr.i.i = lshr i32 %and, 16
  %conv3.i.i = trunc i32 %shr.i.i to i16
  %21 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr21.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %21) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit

sw.bb4.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %22 = tail call i32 @llvm.bswap.i32(i32 %and) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %22) #10, !srcloc !146
  br label %omap_dma_glbl_write.exit

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_write.exit

omap_dma_glbl_write.exit:                         ; preds = %do.end.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i
  tail call void @_raw_spin_unlock_irq(ptr noundef %irq_lock) #10
  br label %if.end

if.end:                                           ; preds = %omap_dma_glbl_write.exit, %entry.if.end_crit_edge
  %channel_base = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 1
  %23 = ptrtoint ptr %channel_base to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %channel_base, align 4
  %lch_map = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 17
  %24 = ptrtoint ptr %lch_map to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %lch_map, align 4
  %dma_ch4 = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 9
  %26 = ptrtoint ptr %dma_ch4 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dma_ch4, align 4
  %arrayidx = getelementptr ptr, ptr %25, i32 %27
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr null, ptr %arrayidx, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #10
  %29 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %30 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %head.i, ptr %head.i, align 4
  %31 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head.i, ptr %29, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %32 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %33, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

if.end.list_splice_tail_init.exit.i.i_crit_edge:  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %29, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %36 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %33, i32 0, i32 1
  %38 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %33, ptr %35, align 4
  %40 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %head.i, ptr %37, align 4
  store ptr %37, ptr %29, align 4
  %41 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %if.end.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %42 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %43, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %29, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %46 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %48 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %45, ptr %prev3.i.i12.i.i, align 4
  %49 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %43, ptr %45, align 4
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %head.i, ptr %47, align 4
  store ptr %47, ptr %29, align 4
  %51 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %52 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %53, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %29, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %56 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i18.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %53, ptr %55, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %head.i, ptr %57, align 4
  store ptr %57, ptr %29, align 4
  %61 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %62 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %63, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %29, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %66 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %68 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i24.i.i, align 4
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %63, ptr %65, align 4
  %70 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %head.i, ptr %67, align 4
  store ptr %67, ptr %29, align 4
  %71 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %72 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %73, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %29, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %76 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %73, i32 0, i32 1
  %78 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %75, ptr %prev3.i.i30.i.i, align 4
  %79 = ptrtoint ptr %75 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %73, ptr %75, align 4
  %80 = ptrtoint ptr %77 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %head.i, ptr %77, align 4
  store ptr %77, ptr %29, align 4
  %81 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %82 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pn20.i = load ptr, ptr %head.i, align 4
  %cmp7.not21.i = icmp eq ptr %.pn20.i, %head.i
  br i1 %cmp7.not21.i, label %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge, label %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge

vchan_get_all_descriptors.exit.i.for.body.i_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  br label %for.body.i

vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_free_chan_resources.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn20.i, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn22.i, i32 -104
  %83 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %84, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %85 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp7.not.i, label %for.body.i.vchan_free_chan_resources.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #10
  %86 = ptrtoint ptr %legacy to i32
  call void @__asan_load1_noabort(i32 %86)
  %87 = load i8, ptr %legacy, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %87)
  %tobool6.not = icmp eq i8 %87, 0
  %88 = ptrtoint ptr %dma_ch4 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma_ch4, align 4
  br i1 %tobool6.not, label %if.else, label %if.then7

if.then7:                                         ; preds = %vchan_free_chan_resources.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @omap_free_dma(i32 noundef %89) #10
  br label %do.body

if.else:                                          ; preds = %vchan_free_chan_resources.exit
  %90 = ptrtoint ptr %lch_map to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %lch_map, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %91, i32 %89
  %92 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %93, null
  br i1 %tobool.not.i.i, label %if.else.omap_dma_put_lch.exit_crit_edge, label %for.cond.preheader.i.i

if.else.omap_dma_put_lch.exit_crit_edge:          ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_dma_put_lch.exit

for.cond.preheader.i.i:                           ; preds = %if.else
  %cfg.i.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 5
  %94 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %cfg.i.i, align 4
  %96 = ptrtoint ptr %95 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %95, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %97)
  %cmp.not6.i.i = icmp slt i32 %97, 32
  br i1 %cmp.not6.i.i, label %for.cond.preheader.i.i.omap_dma_put_lch.exit_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.omap_dma_put_lch.exit_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_dma_put_lch.exit

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %reg_map.i.i.i = getelementptr inbounds %struct.omap_chan, ptr %93, i32 0, i32 2
  %channel_base.i.i.i = getelementptr inbounds %struct.omap_chan, ptr %93, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %omap_dma_chan_write.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 32, %for.body.lr.ph.i.i ], [ %inc.i.i, %omap_dma_chan_write.exit.i.i.for.body.i.i_crit_edge ]
  %98 = ptrtoint ptr %reg_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %reg_map.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr %struct.omap_dma_reg, ptr %99, i32 %i.07.i.i
  %type.i.i.i = getelementptr %struct.omap_dma_reg, ptr %99, i32 %i.07.i.i, i32 2
  %100 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %type.i.i.i, align 1
  %102 = ptrtoint ptr %channel_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %channel_base.i.i.i, align 4
  %104 = ptrtoint ptr %add.ptr.i.i.i to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %add.ptr.i.i.i, align 2
  %conv1.i.i.i = zext i16 %105 to i32
  %add.ptr2.i.i.i = getelementptr i8, ptr %103, i32 %conv1.i.i.i
  %106 = zext i8 %101 to i64
  call void @__sanitizer_cov_trace_switch(i64 %106, ptr @__sancov_gen_cov_switch_values.69)
  switch i8 %101, label %do.end.i.i.i.i [
    i8 1, label %sw.bb.i.i.i.i
    i8 2, label %sw.bb1.i.i.i.i
    i8 3, label %sw.bb4.i.i.i.i
  ]

sw.bb.i.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i.i, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit.i.i

sw.bb1.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i.i, i16 0) #10, !srcloc !145
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 2
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit.i.i

sw.bb4.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 0) #10, !srcloc !146
  br label %omap_dma_chan_write.exit.i.i

do.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit.i.i

omap_dma_chan_write.exit.i.i:                     ; preds = %do.end.i.i.i.i, %sw.bb4.i.i.i.i, %sw.bb1.i.i.i.i, %sw.bb.i.i.i.i
  %inc.i.i = add i32 %i.07.i.i, 1
  %107 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %cfg.i.i, align 4
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %108, align 4
  %cmp.not.i.i = icmp sgt i32 %inc.i.i, %110
  br i1 %cmp.not.i.i, label %omap_dma_chan_write.exit.i.i.omap_dma_put_lch.exit_crit_edge, label %omap_dma_chan_write.exit.i.i.for.body.i.i_crit_edge

omap_dma_chan_write.exit.i.i.for.body.i.i_crit_edge: ; preds = %omap_dma_chan_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

omap_dma_chan_write.exit.i.i.omap_dma_put_lch.exit_crit_edge: ; preds = %omap_dma_chan_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_dma_put_lch.exit

omap_dma_put_lch.exit:                            ; preds = %omap_dma_chan_write.exit.i.i.omap_dma_put_lch.exit_crit_edge, %for.cond.preheader.i.i.omap_dma_put_lch.exit_crit_edge, %if.else.omap_dma_put_lch.exit_crit_edge
  %lch_lock.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 10
  call void @mutex_lock_nested(ptr noundef %lch_lock.i, i32 noundef 0) #10
  %lch_bitmap.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 9
  call void @_clear_bit(i32 noundef %89, ptr noundef %lch_bitmap.i) #10
  call void @mutex_unlock(ptr noundef %lch_lock.i) #10
  br label %do.body

do.body:                                          ; preds = %omap_dma_put_lch.exit, %if.then7
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @omap_dma_free_chan_resources.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap_dma_free_chan_resources, %do.end)) #10
          to label %if.then16 [label %do.end], !srcloc !148

if.then16:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %111 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %dev, align 4
  %113 = ptrtoint ptr %dma_ch4 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %dma_ch4, align 4
  %dma_sig = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 5
  %115 = ptrtoint ptr %dma_sig to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %dma_sig, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @omap_dma_free_chan_resources.__UNIQUE_ID_ddebug239, ptr noundef %112, ptr noundef nonnull @.str.46, i32 noundef %114, i32 noundef %116) #10
  br label %do.end

do.end:                                           ; preds = %if.then16, %do.body
  %dma_sig19 = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 5
  %117 = ptrtoint ptr %dma_sig19 to i32
  call void @__asan_store4_noabort(i32 %117)
  store i32 0, ptr %dma_sig19, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !151
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
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
  br i1 %or.cond.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body2_crit_edge

if.then.i.i.do.body2_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

if.else.i.i.do.body2_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body2

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i.do.body2_crit_edge, %if.then.i.i.do.body2_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %desc = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 10
  %8 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %9, null
  br i1 %tobool.not, label %if.end14.thread, label %if.end14

if.end14:                                         ; preds = %do.body2
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp10 = icmp eq i32 %11, %cookie
  %spec.select = select i1 %cmp10, ptr %9, ptr null
  br i1 %tobool.not.i, label %if.end14.land.lhs.true52_crit_edge, label %if.end17

if.end14.land.lhs.true52_crit_edge:               ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true52

if.end14.thread:                                  ; preds = %do.body2
  br i1 %tobool.not.i, label %land.lhs.true52.thread, label %if.end14.thread.if.else36_crit_edge

if.end14.thread.if.else36_crit_edge:              ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else36

if.end17:                                         ; preds = %if.end14
  %tobool18.not = icmp eq ptr %spec.select, null
  br i1 %tobool18.not, label %if.end17.if.else36_crit_edge, label %if.then19

if.end17.if.else36_crit_edge:                     ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else36

if.then19:                                        ; preds = %if.end17
  %dir = getelementptr inbounds %struct.omap_desc, ptr %spec.select, i32 0, i32 2
  %12 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dir, align 4
  %14 = zext i32 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.70)
  switch i32 %13, label %if.then19.if.end34_crit_edge [
    i32 1, label %if.then22
    i32 2, label %if.then19.if.then30_crit_edge
    i32 0, label %if.then19.if.then30_crit_edge162
  ]

if.then19.if.then30_crit_edge162:                 ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.then19.if.then30_crit_edge:                    ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then30

if.then19.if.end34_crit_edge:                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then22:                                        ; preds = %if.then19
  %call1.i = tail call fastcc i32 @omap_dma_chan_read_3_3(ptr noundef %chan, i32 noundef 40) #10
  %call2.i = tail call fastcc i32 @omap_dma_chan_read_3_3(ptr noundef %chan, i32 noundef 41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2.i)
  %cmp.i = icmp eq i32 %call2.i, 0
  br i1 %cmp.i, label %if.then.i107, label %if.then22.if.end34_crit_edge

if.then22.if.end34_crit_edge:                     ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then.i107:                                     ; preds = %if.then22
  %reg_map.i.i = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 2
  %15 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_map.i.i, align 4
  %add.ptr.i.i = getelementptr %struct.omap_dma_reg, ptr %16, i32 45
  %type.i.i = getelementptr %struct.omap_dma_reg, ptr %16, i32 45, i32 2
  %17 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type.i.i, align 1
  %channel_base.i.i = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 1
  %19 = ptrtoint ptr %channel_base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %channel_base.i.i, align 4
  %21 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i.i, align 2
  %conv1.i.i = zext i16 %22 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %20, i32 %conv1.i.i
  %23 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.71)
  switch i8 %18, label %do.end.i.i.i [
    i8 1, label %sw.bb.i.i.i
    i8 2, label %sw.bb1.i.i.i
    i8 3, label %sw.bb10.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #12
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i.i) #10, !srcloc !149
  %25 = tail call i16 @llvm.bswap.i16(i16 %24) #10
  %conv.i.i.i = zext i16 %25 to i32
  br label %if.end34

sw.bb1.i.i.i:                                     ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #12
  %26 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i.i) #10, !srcloc !149
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 2
  %27 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !149
  %28 = zext i16 %27 to i32
  %29 = zext i16 %26 to i32
  %30 = shl nuw i32 %29, 16
  %31 = or i32 %30, %28
  %32 = tail call i32 @llvm.bswap.i32(i32 %31) #10
  br label %if.end34

sw.bb10.i.i.i:                                    ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #12
  %33 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #10, !srcloc !150
  %34 = tail call i32 @llvm.bswap.i32(i32 %33) #10
  br label %if.end34

do.end.i.i.i:                                     ; preds = %if.then.i107
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %if.end34

if.then30:                                        ; preds = %if.then19.if.then30_crit_edge, %if.then19.if.then30_crit_edge162
  %call1.i109 = tail call fastcc i32 @omap_dma_chan_read_3_3(ptr noundef %chan, i32 noundef 41) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i109)
  %cmp.i110 = icmp eq i32 %call1.i109, 0
  br i1 %cmp.i110, label %if.then.i117, label %if.then30.if.end34_crit_edge

if.then30.if.end34_crit_edge:                     ; preds = %if.then30
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end34

if.then.i117:                                     ; preds = %if.then30
  %reg_map.i.i111 = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 2
  %35 = ptrtoint ptr %reg_map.i.i111 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %reg_map.i.i111, align 4
  %add.ptr.i.i112 = getelementptr %struct.omap_dma_reg, ptr %36, i32 46
  %type.i.i113 = getelementptr %struct.omap_dma_reg, ptr %36, i32 46, i32 2
  %37 = ptrtoint ptr %type.i.i113 to i32
  call void @__asan_load1_noabort(i32 %37)
  %38 = load i8, ptr %type.i.i113, align 1
  %channel_base.i.i114 = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 1
  %39 = ptrtoint ptr %channel_base.i.i114 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %channel_base.i.i114, align 4
  %41 = ptrtoint ptr %add.ptr.i.i112 to i32
  call void @__asan_load2_noabort(i32 %41)
  %42 = load i16, ptr %add.ptr.i.i112, align 2
  %conv1.i.i115 = zext i16 %42 to i32
  %add.ptr2.i.i116 = getelementptr i8, ptr %40, i32 %conv1.i.i115
  %43 = zext i8 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %43, ptr @__sancov_gen_cov_switch_values.72)
  switch i8 %38, label %do.end.i.i.i123 [
    i8 1, label %sw.bb.i.i.i119
    i8 2, label %sw.bb1.i.i.i121
    i8 3, label %sw.bb10.i.i.i122
  ]

sw.bb.i.i.i119:                                   ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #12
  %44 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i.i116) #10, !srcloc !149
  %45 = tail call i16 @llvm.bswap.i16(i16 %44) #10
  %conv.i.i.i118 = zext i16 %45 to i32
  br label %if.end34

sw.bb1.i.i.i121:                                  ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #12
  %46 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i.i116) #10, !srcloc !149
  %add.ptr.i.i.i120 = getelementptr i8, ptr %add.ptr2.i.i116, i32 2
  %47 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i120) #10, !srcloc !149
  %48 = zext i16 %47 to i32
  %49 = zext i16 %46 to i32
  %50 = shl nuw i32 %49, 16
  %51 = or i32 %50, %48
  %52 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  br label %if.end34

sw.bb10.i.i.i122:                                 ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #12
  %53 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i116) #10, !srcloc !150
  %54 = tail call i32 @llvm.bswap.i32(i32 %53) #10
  br label %if.end34

do.end.i.i.i123:                                  ; preds = %if.then.i117
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %if.end34

if.end34:                                         ; preds = %do.end.i.i.i123, %sw.bb10.i.i.i122, %sw.bb1.i.i.i121, %sw.bb.i.i.i119, %if.then30.if.end34_crit_edge, %do.end.i.i.i, %sw.bb10.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i, %if.then22.if.end34_crit_edge, %if.then19.if.end34_crit_edge
  %pos.0 = phi i32 [ 0, %if.then19.if.end34_crit_edge ], [ %call1.i, %if.then22.if.end34_crit_edge ], [ 0, %do.end.i.i.i ], [ %34, %sw.bb10.i.i.i ], [ %32, %sw.bb1.i.i.i ], [ %conv.i.i.i, %sw.bb.i.i.i ], [ %call1.i109, %if.then30.if.end34_crit_edge ], [ 0, %do.end.i.i.i123 ], [ %54, %sw.bb10.i.i.i122 ], [ %52, %sw.bb1.i.i.i121 ], [ %conv.i.i.i118, %sw.bb.i.i.i119 ]
  %es.i = getelementptr inbounds %struct.omap_desc, ptr %spec.select, i32 0, i32 7
  %55 = ptrtoint ptr %es.i to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %es.i, align 2
  %idxprom.i = zext i8 %56 to i32
  %arrayidx.i = getelementptr [3 x i32], ptr @es_bytes, i32 0, i32 %idxprom.i
  %57 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx.i, align 4
  %sglen.i = getelementptr inbounds %struct.omap_desc, ptr %spec.select, i32 0, i32 12
  %59 = ptrtoint ptr %sglen.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sglen.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp35.not.i = icmp eq i32 %60, 0
  br i1 %cmp35.not.i, label %if.end34.land.lhs.true52.sink.split_crit_edge, label %if.end34.for.body.i_crit_edge

if.end34.for.body.i_crit_edge:                    ; preds = %if.end34
  br label %for.body.i

if.end34.land.lhs.true52.sink.split_crit_edge:    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true52.sink.split

for.body.i:                                       ; preds = %if.end17.i.for.body.i_crit_edge, %if.end34.for.body.i_crit_edge
  %size.038.i = phi i32 [ %size.1.i, %if.end17.i.for.body.i_crit_edge ], [ 0, %if.end34.for.body.i_crit_edge ]
  %i.036.i = phi i32 [ %inc.i, %if.end17.i.for.body.i_crit_edge ], [ 0, %if.end34.for.body.i_crit_edge ]
  %en.i.i = getelementptr %struct.omap_desc, ptr %spec.select, i32 0, i32 13, i32 %i.036.i, i32 1
  %61 = ptrtoint ptr %en.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %en.i.i, align 4
  %fn.i.i = getelementptr %struct.omap_desc, ptr %spec.select, i32 0, i32 13, i32 %i.036.i, i32 2
  %63 = ptrtoint ptr %fn.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %fn.i.i, align 4
  %mul.i.i = mul i32 %62, %58
  %mul.i = mul i32 %mul.i.i, %64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %size.038.i)
  %tobool.not.i126 = icmp eq i32 %size.038.i, 0
  br i1 %tobool.not.i126, label %if.else.i, label %if.then.i127

if.then.i127:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %add.i = add i32 %mul.i, %size.038.i
  br label %if.end17.i

if.else.i:                                        ; preds = %for.body.i
  %arrayidx1.i = getelementptr %struct.omap_desc, ptr %spec.select, i32 0, i32 13, i32 %i.036.i
  %65 = ptrtoint ptr %arrayidx1.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %arrayidx1.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %66, i32 %pos.0)
  %cmp5.not.i = icmp ugt i32 %66, %pos.0
  br i1 %cmp5.not.i, label %if.else.i.if.end17.i_crit_edge, label %land.lhs.true.i

if.else.i.if.end17.i_crit_edge:                   ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17.i

land.lhs.true.i:                                  ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  %add9.i = add i32 %66, %mul.i
  %67 = tail call i32 @llvm.usub.sat.i32(i32 %add9.i, i32 %pos.0) #10
  br label %if.end17.i

if.end17.i:                                       ; preds = %land.lhs.true.i, %if.else.i.if.end17.i_crit_edge, %if.then.i127
  %size.1.i = phi i32 [ %add.i, %if.then.i127 ], [ 0, %if.else.i.if.end17.i_crit_edge ], [ %67, %land.lhs.true.i ]
  %inc.i = add nuw i32 %i.036.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %60
  br i1 %exitcond.not.i, label %if.end17.i.land.lhs.true52.sink.split_crit_edge, label %if.end17.i.for.body.i_crit_edge

if.end17.i.for.body.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

if.end17.i.land.lhs.true52.sink.split_crit_edge:  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true52.sink.split

if.else36:                                        ; preds = %if.end17.if.else36_crit_edge, %if.end14.thread.if.else36_crit_edge
  %call39 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #10
  %tobool40.not = icmp eq ptr %call39, null
  br i1 %tobool40.not, label %if.else36.land.lhs.true52.sink.split_crit_edge, label %if.then41

if.else36.land.lhs.true52.sink.split_crit_edge:   ; preds = %if.else36
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true52.sink.split

if.then41:                                        ; preds = %if.else36
  %sglen.i128 = getelementptr inbounds %struct.omap_desc, ptr %call39, i32 0, i32 12
  %68 = ptrtoint ptr %sglen.i128 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %sglen.i128, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %69)
  %cmp7.not.i = icmp eq i32 %69, 0
  br i1 %cmp7.not.i, label %if.then41.omap_dma_desc_size.exit_crit_edge, label %if.then41.for.body.i135_crit_edge

if.then41.for.body.i135_crit_edge:                ; preds = %if.then41
  br label %for.body.i135

if.then41.omap_dma_desc_size.exit_crit_edge:      ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_dma_desc_size.exit

for.body.i135:                                    ; preds = %for.body.i135.for.body.i135_crit_edge, %if.then41.for.body.i135_crit_edge
  %size.09.i = phi i32 [ %add.i132, %for.body.i135.for.body.i135_crit_edge ], [ 0, %if.then41.for.body.i135_crit_edge ]
  %i.08.i = phi i32 [ %inc.i133, %for.body.i135.for.body.i135_crit_edge ], [ 0, %if.then41.for.body.i135_crit_edge ]
  %en.i.i129 = getelementptr %struct.omap_desc, ptr %call39, i32 0, i32 13, i32 %i.08.i, i32 1
  %70 = ptrtoint ptr %en.i.i129 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %en.i.i129, align 4
  %fn.i.i130 = getelementptr %struct.omap_desc, ptr %call39, i32 0, i32 13, i32 %i.08.i, i32 2
  %72 = ptrtoint ptr %fn.i.i130 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %fn.i.i130, align 4
  %mul.i.i131 = mul i32 %73, %71
  %add.i132 = add i32 %mul.i.i131, %size.09.i
  %inc.i133 = add nuw i32 %i.08.i, 1
  %exitcond.not.i134 = icmp eq i32 %inc.i133, %69
  br i1 %exitcond.not.i134, label %for.body.i135.omap_dma_desc_size.exit_crit_edge, label %for.body.i135.for.body.i135_crit_edge

for.body.i135.for.body.i135_crit_edge:            ; preds = %for.body.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i135

for.body.i135.omap_dma_desc_size.exit_crit_edge:  ; preds = %for.body.i135
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_dma_desc_size.exit

omap_dma_desc_size.exit:                          ; preds = %for.body.i135.omap_dma_desc_size.exit_crit_edge, %if.then41.omap_dma_desc_size.exit_crit_edge
  %size.0.lcssa.i136 = phi i32 [ 0, %if.then41.omap_dma_desc_size.exit_crit_edge ], [ %add.i132, %for.body.i135.omap_dma_desc_size.exit_crit_edge ]
  %es.i137 = getelementptr inbounds %struct.omap_desc, ptr %call39, i32 0, i32 7
  %74 = ptrtoint ptr %es.i137 to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %es.i137, align 2
  %idxprom.i138 = zext i8 %75 to i32
  %arrayidx1.i139 = getelementptr [3 x i32], ptr @es_bytes, i32 0, i32 %idxprom.i138
  %76 = ptrtoint ptr %arrayidx1.i139 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %arrayidx1.i139, align 4
  %mul.i140 = mul i32 %77, %size.0.lcssa.i136
  br label %land.lhs.true52.sink.split

land.lhs.true52.sink.split:                       ; preds = %omap_dma_desc_size.exit, %if.else36.land.lhs.true52.sink.split_crit_edge, %if.end17.i.land.lhs.true52.sink.split_crit_edge, %if.end34.land.lhs.true52.sink.split_crit_edge
  %size.0.lcssa.i.sink = phi i32 [ %mul.i140, %omap_dma_desc_size.exit ], [ 0, %if.end34.land.lhs.true52.sink.split_crit_edge ], [ 0, %if.else36.land.lhs.true52.sink.split_crit_edge ], [ %size.1.i, %if.end17.i.land.lhs.true52.sink.split_crit_edge ]
  %d.0148.ph = phi ptr [ null, %omap_dma_desc_size.exit ], [ %spec.select, %if.end34.land.lhs.true52.sink.split_crit_edge ], [ null, %if.else36.land.lhs.true52.sink.split_crit_edge ], [ %spec.select, %if.end17.i.land.lhs.true52.sink.split_crit_edge ]
  %residue = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %78 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %size.0.lcssa.i.sink, ptr %residue, align 4
  br label %land.lhs.true52

land.lhs.true52:                                  ; preds = %land.lhs.true52.sink.split, %if.end14.land.lhs.true52_crit_edge
  %d.0148 = phi ptr [ %spec.select, %if.end14.land.lhs.true52_crit_edge ], [ %d.0148.ph, %land.lhs.true52.sink.split ]
  %paused = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 7
  %79 = ptrtoint ptr %paused to i32
  call void @__asan_load1_noabort(i32 %79)
  %80 = load i8, ptr %paused, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %80)
  %tobool53.not = icmp eq i8 %80, 0
  br i1 %tobool53.not, label %if.else56, label %land.lhs.true52.if.end71_crit_edge

land.lhs.true52.if.end71_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

land.lhs.true52.thread:                           ; preds = %if.end14.thread
  call void @__sanitizer_cov_trace_pc() #12
  %paused153 = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 7
  %81 = ptrtoint ptr %paused153 to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %paused153, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool53.not154 = icmp eq i8 %82, 0
  %spec.select161 = select i1 %tobool53.not154, i32 1, i32 2
  br label %if.end71

if.else56:                                        ; preds = %land.lhs.true52
  %tobool57.not = icmp eq ptr %d.0148, null
  br i1 %tobool57.not, label %if.else56.if.end71_crit_edge, label %land.lhs.true58

if.else56.if.end71_crit_edge:                     ; preds = %if.else56
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

land.lhs.true58:                                  ; preds = %if.else56
  %polled = getelementptr inbounds %struct.omap_desc, ptr %d.0148, i32 0, i32 4
  %83 = ptrtoint ptr %polled to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %polled, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %tobool59.not = icmp eq i8 %84, 0
  br i1 %tobool59.not, label %land.lhs.true58.if.end71_crit_edge, label %land.lhs.true61

land.lhs.true58.if.end71_crit_edge:               ; preds = %land.lhs.true58
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

land.lhs.true61:                                  ; preds = %land.lhs.true58
  %running = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 8
  %85 = ptrtoint ptr %running to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %running, align 2, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %86)
  %tobool62.not = icmp eq i8 %86, 0
  br i1 %tobool62.not, label %land.lhs.true61.if.end71_crit_edge, label %if.then64

land.lhs.true61.if.end71_crit_edge:               ; preds = %land.lhs.true61
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then64:                                        ; preds = %land.lhs.true61
  %reg_map.i = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 2
  %87 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i = getelementptr %struct.omap_dma_reg, ptr %88, i32 33
  %type.i = getelementptr %struct.omap_dma_reg, ptr %88, i32 33, i32 2
  %89 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %type.i, align 1
  %channel_base.i = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 1
  %91 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %channel_base.i, align 4
  %93 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %93)
  %94 = load i16, ptr %add.ptr.i, align 2
  %conv1.i = zext i16 %94 to i32
  %add.ptr2.i = getelementptr i8, ptr %92, i32 %conv1.i
  %95 = zext i8 %90 to i64
  call void @__sanitizer_cov_trace_switch(i64 %95, ptr @__sancov_gen_cov_switch_values.73)
  switch i8 %90, label %omap_dma_chan_read.exit.thread [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb10.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %96 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #10, !srcloc !149
  %97 = tail call i16 @llvm.bswap.i16(i16 %96) #10
  %conv.i.i = zext i16 %97 to i32
  br label %omap_dma_chan_read.exit

sw.bb1.i.i:                                       ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %98 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #10, !srcloc !149
  %add.ptr.i.i141 = getelementptr i8, ptr %add.ptr2.i, i32 2
  %99 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i141) #10, !srcloc !149
  %100 = call i16 @llvm.bswap.i16(i16 %98)
  %101 = zext i16 %100 to i32
  br label %omap_dma_chan_read.exit

sw.bb10.i.i:                                      ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  %102 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !150
  %103 = tail call i32 @llvm.bswap.i32(i32 %102) #10
  br label %omap_dma_chan_read.exit

omap_dma_chan_read.exit.thread:                   ; preds = %if.then64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %if.then67

omap_dma_chan_read.exit:                          ; preds = %sw.bb10.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %val.0.i.i = phi i32 [ %103, %sw.bb10.i.i ], [ %101, %sw.bb1.i.i ], [ %conv.i.i, %sw.bb.i.i ]
  %and = and i32 %val.0.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool66.not = icmp eq i32 %and, 0
  br i1 %tobool66.not, label %omap_dma_chan_read.exit.if.then67_crit_edge, label %omap_dma_chan_read.exit.if.end71_crit_edge

omap_dma_chan_read.exit.if.end71_crit_edge:       ; preds = %omap_dma_chan_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

omap_dma_chan_read.exit.if.then67_crit_edge:      ; preds = %omap_dma_chan_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then67

if.then67:                                        ; preds = %omap_dma_chan_read.exit.if.then67_crit_edge, %omap_dma_chan_read.exit.thread
  tail call fastcc void @omap_dma_start_desc(ptr noundef %chan)
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %d.0148, i32 0, i32 3
  %104 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chan.i, align 4
  %106 = ptrtoint ptr %d.0148 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %d.0148, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %107)
  %cmp.i.i = icmp slt i32 %107, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !143

do.body2.i.i:                                     ; preds = %if.then67
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ti/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !152
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then67
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %105, i32 0, i32 3
  %108 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store i32 %107, ptr %completed_cookie.i.i, align 4
  %109 = ptrtoint ptr %d.0148 to i32
  call void @__asan_store4_noabort(i32 %109)
  store i32 0, ptr %d.0148, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap_dma_tx_status, %do.end.i)) #10
          to label %if.then.i142 [label %do.end.i], !srcloc !148

if.then.i142:                                     ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %110 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %105, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %111, i32 0, i32 15
  %112 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %113, ptr noundef nonnull @.str.44, ptr noundef nonnull %d.0148, i32 noundef %107) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i142, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %d.0148, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %105, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %105, i32 0, i32 7, i32 1
  %114 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %115, ptr noundef %desc_completed.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %116 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %116)
  store ptr %node.i, ptr %prev.i.i, align 4
  %117 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %117)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %d.0148, i32 0, i32 2, i32 1
  %118 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %115, ptr %prev3.i.i.i, align 4
  %119 = ptrtoint ptr %115 to i32
  call void @__asan_store4_noabort(i32 %119)
  store volatile ptr %node.i, ptr %115, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %105, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i143, label %list_add_tail.exit.i.if.end71_crit_edge

list_add_tail.exit.i.if.end71_crit_edge:          ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end71

if.then.i.i143:                                   ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %105, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #10
  br label %if.end71

if.end71:                                         ; preds = %if.then.i.i143, %list_add_tail.exit.i.if.end71_crit_edge, %omap_dma_chan_read.exit.if.end71_crit_edge, %land.lhs.true61.if.end71_crit_edge, %land.lhs.true58.if.end71_crit_edge, %if.else56.if.end71_crit_edge, %land.lhs.true52.thread, %land.lhs.true52.if.end71_crit_edge
  %ret.1 = phi i32 [ 1, %land.lhs.true61.if.end71_crit_edge ], [ 1, %land.lhs.true58.if.end71_crit_edge ], [ 1, %if.else56.if.end71_crit_edge ], [ 2, %land.lhs.true52.if.end71_crit_edge ], [ 1, %omap_dma_chan_read.exit.if.end71_crit_edge ], [ 0, %list_add_tail.exit.i.if.end71_crit_edge ], [ 0, %if.then.i.i143 ], [ %spec.select161, %land.lhs.true52.thread ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end71, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.1, %if.end71 ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_dma_issue_pending(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %4 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %1, ptr %3, align 4
  %8 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %desc_issued.i, ptr %5, align 4
  store ptr %5, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i.i, align 4
  br label %vchan_issue_pending.exit

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %entry.vchan_issue_pending.exit_crit_edge
  %10 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.i.not = icmp eq ptr %11, %desc_issued.i
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end_crit_edge, label %land.lhs.true

vchan_issue_pending.exit.if.end_crit_edge:        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %vchan_issue_pending.exit
  %desc = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 10
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @omap_dma_start_desc(ptr noundef %chan)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_dma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sglen, i32 noundef %dir, i32 noundef %tx_flags, ptr nocapture noundef readnone %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp = icmp eq i32 %dir, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %src_addr = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4, i32 1
  %src_addr_width = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4, i32 3
  %src_maxburst = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4, i32 5
  %src_port_window_size = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4, i32 7
  br label %if.end13

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp5 = icmp eq i32 %dir, 1
  br i1 %cmp5, label %if.then6, label %do.end

if.then6:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dst_addr = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4, i32 2
  %dst_addr_width = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4, i32 4
  %dst_maxburst = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4, i32 6
  %dst_port_window_size = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4, i32 8
  br label %if.end13

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.48) #13
  br label %cleanup169

if.end13:                                         ; preds = %if.then6, %if.then
  %dev_width.0.in = phi ptr [ %src_addr_width, %if.then ], [ %dst_addr_width, %if.then6 ]
  %dev_addr.0.in = phi ptr [ %src_addr, %if.then ], [ %dst_addr, %if.then6 ]
  %burst.0.in = phi ptr [ %src_maxburst, %if.then ], [ %dst_maxburst, %if.then6 ]
  %port_window.0.in = phi ptr [ %src_port_window_size, %if.then ], [ %dst_port_window_size, %if.then6 ]
  %4 = ptrtoint ptr %port_window.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %port_window.0 = load i32, ptr %port_window.0.in, align 4
  %5 = ptrtoint ptr %burst.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %burst.0 = load i32, ptr %burst.0.in, align 4
  %6 = ptrtoint ptr %dev_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %dev_addr.0 = load i32, ptr %dev_addr.0.in, align 4
  %7 = ptrtoint ptr %dev_width.0.in to i32
  call void @__asan_load4_noabort(i32 %7)
  %dev_width.0 = load i32, ptr %dev_width.0.in, align 4
  %8 = zext i32 %dev_width.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.74)
  switch i32 %dev_width.0, label %if.end13.cleanup169_crit_edge [
    i32 1, label %if.end13.if.end8.i.i_crit_edge
    i32 2, label %sw.bb14
    i32 4, label %sw.bb15
  ]

if.end13.if.end8.i.i_crit_edge:                   ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.end13.cleanup169_crit_edge:                    ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

sw.bb14:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

sw.bb15:                                          ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %sw.bb15, %sw.bb14, %if.end13.if.end8.i.i_crit_edge
  %es.0 = phi i32 [ 2, %sw.bb15 ], [ 1, %sw.bb14 ], [ 0, %if.end13.if.end8.i.i_crit_edge ]
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sglen, i32 28) #10
  %10 = extractvalue { i32, i1 } %9, 1
  %11 = extractvalue { i32, i1 } %9, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %11, i32 156) #10
  %retval.0.i = select i1 %10, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 2848) #15
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %if.end8.i.i.cleanup169_crit_edge, label %if.end19

if.end8.i.i.cleanup169_crit_edge:                 ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup169

if.end19:                                         ; preds = %if.end8.i.i
  %dir20 = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %dir20 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dir, ptr %dir20, align 8
  %dev_addr21 = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 3
  %13 = ptrtoint ptr %dev_addr21 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dev_addr.0, ptr %dev_addr21, align 4
  %conv = trunc i32 %es.0 to i8
  %es22 = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 7
  %14 = ptrtoint ptr %es22 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %conv, ptr %es22, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %port_window.0)
  %tobool23.not = icmp eq i32 %port_window.0, 0
  br i1 %tobool23.not, label %if.end26, label %if.end26.thread

if.end26:                                         ; preds = %if.end19
  %ccr = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 3
  %15 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ccr, align 4
  %or = or i32 %16, 32
  %ccr27 = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 8
  %17 = ptrtoint ptr %ccr27 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or, ptr %ccr27, align 4
  %csdp = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 11
  br i1 %cmp, label %if.else57, label %if.else89

if.end26.thread:                                  ; preds = %if.end19
  %arrayidx = getelementptr [3 x i32], ptr @es_bytes, i32 0, i32 %es.0
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  %mul = mul i32 %19, %port_window.0
  %ei = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 6
  %20 = ptrtoint ptr %ei to i32
  call void @__asan_store2_noabort(i32 %20)
  store i16 1, ptr %ei, align 8
  %sub25 = sub i32 1, %mul
  %fi = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 5
  %21 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %sub25, ptr %fi, align 4
  %ccr280 = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 3
  %22 = ptrtoint ptr %ccr280 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ccr280, align 4
  %or281 = or i32 %23, 32
  %ccr27282 = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 8
  %24 = ptrtoint ptr %ccr27282 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or281, ptr %ccr27282, align 4
  %csdp297 = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 11
  br i1 %cmp, label %if.then34, label %if.then66

if.then34:                                        ; preds = %if.end26.thread
  %25 = ptrtoint ptr %csdp297 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 57344, ptr %csdp297, align 4
  %or36 = or i32 %23, 28704
  %26 = ptrtoint ptr %ccr27282 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %or36, ptr %ccr27282, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %mul)
  %cmp37 = icmp ugt i32 %mul, 63
  br i1 %cmp37, label %if.then39, label %if.else42

if.then39:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %csdp297 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 57728, ptr %csdp297, align 4
  br label %if.then98

if.else42:                                        ; preds = %if.then34
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %mul)
  %cmp43 = icmp ugt i32 %mul, 31
  br i1 %cmp43, label %if.then45, label %if.else48

if.then45:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %csdp297 to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 57600, ptr %csdp297, align 4
  br label %if.then98

if.else48:                                        ; preds = %if.else42
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %mul)
  %cmp49 = icmp ugt i32 %mul, 15
  br i1 %cmp49, label %if.then51, label %if.else48.if.then98_crit_edge

if.else48.if.then98_crit_edge:                    ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then98

if.then51:                                        ; preds = %if.else48
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %csdp297 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 57472, ptr %csdp297, align 4
  br label %if.then98

if.else57:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %csdp to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 57344, ptr %csdp, align 4
  %or32 = or i32 %16, 16416
  %31 = ptrtoint ptr %ccr27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %or32, ptr %ccr27, align 4
  br label %if.then98

if.then66:                                        ; preds = %if.end26.thread
  %32 = ptrtoint ptr %csdp297 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 448, ptr %csdp297, align 4
  %or68 = or i32 %23, 53280
  %33 = ptrtoint ptr %ccr27282 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %or68, ptr %ccr27282, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 63, i32 %mul)
  %cmp69 = icmp ugt i32 %mul, 63
  br i1 %cmp69, label %if.then71, label %if.else74

if.then71:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %csdp297 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 49600, ptr %csdp297, align 4
  br label %if.end93

if.else74:                                        ; preds = %if.then66
  call void @__sanitizer_cov_trace_const_cmp4(i32 31, i32 %mul)
  %cmp75 = icmp ugt i32 %mul, 31
  br i1 %cmp75, label %if.then77, label %if.else80

if.then77:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_pc() #12
  %35 = ptrtoint ptr %csdp297 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 33216, ptr %csdp297, align 4
  br label %if.end93

if.else80:                                        ; preds = %if.else74
  call void @__sanitizer_cov_trace_const_cmp4(i32 15, i32 %mul)
  %cmp81 = icmp ugt i32 %mul, 15
  br i1 %cmp81, label %if.then83, label %if.else80.if.end93_crit_edge

if.else80.if.end93_crit_edge:                     ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end93

if.then83:                                        ; preds = %if.else80
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %csdp297 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 16832, ptr %csdp297, align 4
  br label %if.end93

if.else89:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %csdp to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 448, ptr %csdp, align 4
  %or64 = or i32 %16, 4128
  %38 = ptrtoint ptr %ccr27 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %or64, ptr %ccr27, align 4
  br label %if.end93

if.end93:                                         ; preds = %if.else89, %if.then83, %if.else80.if.end93_crit_edge, %if.then77, %if.then71
  %burst.1283 = phi i32 [ %burst.0, %if.else89 ], [ %port_window.0, %if.then77 ], [ %port_window.0, %if.then83 ], [ %port_window.0, %if.else80.if.end93_crit_edge ], [ %port_window.0, %if.then71 ]
  %cicr = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 10
  %39 = ptrtoint ptr %cicr to i32
  call void @__asan_store2_noabort(i32 %39)
  store i16 34, ptr %cicr, align 2
  %csdp94 = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 11
  br label %if.end101

if.then98:                                        ; preds = %if.else57, %if.then51, %if.else48.if.then98_crit_edge, %if.then45, %if.then39
  %ccr27291.ph = phi ptr [ %ccr27282, %if.then39 ], [ %ccr27282, %if.else48.if.then98_crit_edge ], [ %ccr27282, %if.then51 ], [ %ccr27282, %if.then45 ], [ %ccr27, %if.else57 ]
  %burst.1283.ph = phi i32 [ %port_window.0, %if.then39 ], [ %port_window.0, %if.else48.if.then98_crit_edge ], [ %port_window.0, %if.then51 ], [ %port_window.0, %if.then45 ], [ %burst.0, %if.else57 ]
  %cicr317 = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 10
  %40 = ptrtoint ptr %cicr317 to i32
  call void @__asan_store2_noabort(i32 %40)
  store i16 34, ptr %cicr317, align 2
  %csdp94318 = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 11
  %41 = ptrtoint ptr %csdp94318 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %csdp94318, align 4
  %or95319 = or i32 %42, %es.0
  store i32 %or95319, ptr %csdp94318, align 4
  br label %if.end101

if.end101:                                        ; preds = %if.then98, %if.end93
  %csdp94.sink339 = phi ptr [ %csdp94, %if.end93 ], [ %ccr27291.ph, %if.then98 ]
  %es.0.sink = phi i32 [ %es.0, %if.end93 ], [ 16777216, %if.then98 ]
  %csdp94325 = phi ptr [ %csdp94, %if.end93 ], [ %csdp94318, %if.then98 ]
  %cicr323 = phi ptr [ %cicr, %if.end93 ], [ %cicr317, %if.then98 ]
  %burst.1283321 = phi i32 [ %burst.1283, %if.end93 ], [ %burst.1283.ph, %if.then98 ]
  %43 = ptrtoint ptr %csdp94.sink339 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %csdp94.sink339, align 4
  %or95 = or i32 %44, %es.0.sink
  store i32 %or95, ptr %csdp94.sink339, align 4
  %45 = ptrtoint ptr %cicr323 to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cicr323, align 2
  %47 = or i16 %46, 2304
  store i16 %47, ptr %cicr323, align 2
  br i1 %tobool23.not, label %if.end101.if.end110_crit_edge, label %if.then107

if.end101.if.end110_crit_edge:                    ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end110

if.then107:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %csdp94325 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %csdp94325, align 4
  %or109 = or i32 %49, 131072
  store i32 %or109, ptr %csdp94325, align 4
  br label %if.end110

if.end110:                                        ; preds = %if.then107, %if.end101.if.end110_crit_edge
  %plat = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 4
  %50 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %plat, align 4
  %errata = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %51, i32 0, i32 3
  %52 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %errata, align 4
  %and = and i32 %53, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool111.not = icmp eq i32 %and, 0
  br i1 %tobool111.not, label %if.end110.if.end114_crit_edge, label %if.then112

if.end110.if.end114_crit_edge:                    ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end114

if.then112:                                       ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #12
  %dma_ch = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 9
  %54 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %dma_ch, align 4
  %conv113 = trunc i32 %55 to i16
  %clnk_ctrl = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 9
  %56 = ptrtoint ptr %clnk_ctrl to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 %conv113, ptr %clnk_ctrl, align 16
  br label %if.end114

if.end114:                                        ; preds = %if.then112, %if.end110.if.end114_crit_edge
  %arrayidx115 = getelementptr [3 x i32], ptr @es_bytes, i32 0, i32 %es.0
  %57 = ptrtoint ptr %arrayidx115 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %arrayidx115, align 4
  %mul116 = mul i32 %58, %burst.1283321
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %sglen)
  %cmp117 = icmp ugt i32 %sglen, 1
  br i1 %cmp117, label %if.end121.thread, label %if.end121

if.end121.thread:                                 ; preds = %if.end114
  call void @__sanitizer_cov_trace_pc() #12
  %ll123_supported = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 12
  %59 = ptrtoint ptr %ll123_supported to i32
  call void @__asan_load1_noabort(i32 %59)
  %60 = load i8, ptr %ll123_supported, align 1, !range !147
  %using_ll = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %using_ll to i32
  call void @__asan_store1_noabort(i32 %61)
  store i8 %60, ptr %using_ll, align 4
  br label %for.body.lr.ph

if.end121:                                        ; preds = %if.end114
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sglen)
  %cmp122327.not = icmp eq i32 %sglen, 0
  br i1 %cmp122327.not, label %for.end.thread, label %if.end121.for.body.lr.ph_crit_edge

if.end121.for.body.lr.ph_crit_edge:               ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.lr.ph

for.end.thread:                                   ; preds = %if.end121
  call void @__sanitizer_cov_trace_pc() #12
  %sglen145338 = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 12
  %62 = ptrtoint ptr %sglen145338 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %sglen, ptr %sglen145338, align 8
  br label %if.end167

for.body.lr.ph:                                   ; preds = %if.end121.for.body.lr.ph_crit_edge, %if.end121.thread
  %using_ll126 = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 1
  %desc_pool = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 13
  %sub140 = add i32 %sglen, -1
  %ei27.i = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 6
  %fi31.i = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %ll_failed.0.off0332 = phi i1 [ false, %for.body.lr.ph ], [ %ll_failed.1.off0, %cleanup.for.body_crit_edge ]
  %i.0329 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %cleanup.for.body_crit_edge ]
  %sgent.0328 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call144, %cleanup.for.body_crit_edge ]
  %arrayidx124 = getelementptr %struct.omap_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0329
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sgent.0328, i32 0, i32 3
  %63 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %dma_address, align 4
  %65 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %arrayidx124, align 4
  %en125 = getelementptr %struct.omap_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0329, i32 1
  %66 = ptrtoint ptr %en125 to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %burst.1283321, ptr %en125, align 4
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgent.0328, i32 0, i32 4
  %67 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %dma_length, align 4
  %div = udiv i32 %68, %mul116
  %fn = getelementptr %struct.omap_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0329, i32 2
  %69 = ptrtoint ptr %fn to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %div, ptr %fn, align 4
  %70 = ptrtoint ptr %using_ll126 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %using_ll126, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool127.not = icmp eq i8 %71, 0
  br i1 %tobool127.not, label %for.body.cleanup_crit_edge, label %if.then128

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then128:                                       ; preds = %for.body
  %72 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %desc_pool, align 4
  %t2_desc_paddr = getelementptr %struct.omap_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0329, i32 6
  %call129 = tail call ptr @dma_pool_alloc(ptr noundef %73, i32 noundef 2592, ptr noundef %t2_desc_paddr) #10
  %t2_desc = getelementptr %struct.omap_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0329, i32 5
  %74 = ptrtoint ptr %t2_desc to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %call129, ptr %t2_desc, align 4
  %tobool131.not = icmp eq ptr %call129, null
  br i1 %tobool131.not, label %do.end135, label %if.end139

do.end135:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %chan, align 4
  %dev137 = getelementptr inbounds %struct.dma_device, ptr %76, i32 0, i32 15
  %77 = ptrtoint ptr %dev137 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %dev137, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %78, ptr noundef nonnull @.str.50, i32 noundef %i.0329) #13
  %79 = ptrtoint ptr %using_ll126 to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 0, ptr %using_ll126, align 4
  br label %cleanup

if.end139:                                        ; preds = %if.then128
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0329, i32 %sub140)
  %cmp141 = icmp eq i32 %i.0329, %sub140
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.0329)
  %tobool.not.i = icmp eq i32 %i.0329, 0
  br i1 %tobool.not.i, label %if.end139.if.end.i_crit_edge, label %if.then.i

if.end139.if.end.i_crit_edge:                     ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #12
  %80 = ptrtoint ptr %t2_desc_paddr to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %t2_desc_paddr, align 4
  %sub.i = add i32 %i.0329, -1
  %t2_desc5.i = getelementptr %struct.omap_desc, ptr %call9.i.i, i32 0, i32 13, i32 %sub.i, i32 5
  %82 = ptrtoint ptr %t2_desc5.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %t2_desc5.i, align 4
  %84 = ptrtoint ptr %83 to i32
  call void @__asan_storeN_noabort(i32 %84, i32 4)
  store i32 %81, ptr %83, align 1
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i, %if.end139.if.end.i_crit_edge
  br i1 %cmp141, label %if.then7.i, label %if.end.i.if.end9.i_crit_edge

if.end.i.if.end9.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9.i

if.then7.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %85 = ptrtoint ptr %call129 to i32
  call void @__asan_storeN_noabort(i32 %85, i32 4)
  store i32 -4, ptr %call129, align 1
  br label %if.end9.i

if.end9.i:                                        ; preds = %if.then7.i, %if.end.i.if.end9.i_crit_edge
  %86 = ptrtoint ptr %en125 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %en125, align 4
  %en10.i = getelementptr inbounds %struct.omap_type2_desc, ptr %call129, i32 0, i32 1
  %88 = ptrtoint ptr %en10.i to i32
  call void @__asan_storeN_noabort(i32 %88, i32 4)
  store i32 %87, ptr %en10.i, align 1
  %89 = ptrtoint ptr %arrayidx124 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %arrayidx124, align 4
  %addr11.i = getelementptr inbounds %struct.omap_type2_desc, ptr %call129, i32 0, i32 2
  %91 = ptrtoint ptr %addr11.i to i32
  call void @__asan_storeN_noabort(i32 %91, i32 4)
  store i32 %90, ptr %addr11.i, align 1
  %92 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %fn, align 4
  %conv.i = trunc i32 %93 to i16
  %fn12.i = getelementptr inbounds %struct.omap_type2_desc, ptr %call129, i32 0, i32 3
  %94 = ptrtoint ptr %fn12.i to i32
  call void @__asan_storeN_noabort(i32 %94, i32 2)
  store i16 %conv.i, ptr %fn12.i, align 1
  %95 = ptrtoint ptr %cicr323 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %cicr323, align 2
  %cicr13.i = getelementptr inbounds %struct.omap_type2_desc, ptr %call129, i32 0, i32 4
  %97 = and i16 %96, -33
  %spec.select.i277 = select i1 %cmp141, i16 %96, i16 %97
  %98 = ptrtoint ptr %cicr13.i to i32
  call void @__asan_storeN_noabort(i32 %98, i32 2)
  store i16 %spec.select.i277, ptr %cicr13.i, align 1
  %99 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %99, ptr @__sancov_gen_cov_switch_values.75)
  switch i32 %dir, label %if.end9.i.cleanup_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb26.i
  ]

if.end9.i.cleanup_crit_edge:                      ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb.i:                                          ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %ei.i = getelementptr %struct.omap_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0329, i32 4
  %100 = ptrtoint ptr %ei.i to i32
  call void @__asan_load2_noabort(i32 %100)
  %101 = load i16, ptr %ei.i, align 4
  %cdei.i = getelementptr inbounds %struct.omap_type2_desc, ptr %call129, i32 0, i32 5
  %102 = ptrtoint ptr %cdei.i to i32
  call void @__asan_storeN_noabort(i32 %102, i32 2)
  store i16 %101, ptr %cdei.i, align 1
  %103 = ptrtoint ptr %ei27.i to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %ei27.i, align 8
  %csei.i = getelementptr inbounds %struct.omap_type2_desc, ptr %call129, i32 0, i32 6
  %105 = ptrtoint ptr %csei.i to i32
  call void @__asan_storeN_noabort(i32 %105, i32 2)
  store i16 %104, ptr %csei.i, align 1
  %fi.i = getelementptr %struct.omap_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0329, i32 3
  %106 = ptrtoint ptr %fi.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %fi.i, align 4
  %cdfi.i = getelementptr inbounds %struct.omap_type2_desc, ptr %call129, i32 0, i32 7
  %108 = ptrtoint ptr %cdfi.i to i32
  call void @__asan_storeN_noabort(i32 %108, i32 4)
  store i32 %107, ptr %cdfi.i, align 1
  br label %sw.epilog.i

sw.bb26.i:                                        ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #12
  %109 = ptrtoint ptr %ei27.i to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %ei27.i, align 8
  %cdei28.i = getelementptr inbounds %struct.omap_type2_desc, ptr %call129, i32 0, i32 5
  %111 = ptrtoint ptr %cdei28.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 2)
  store i16 %110, ptr %cdei28.i, align 1
  %ei29.i = getelementptr %struct.omap_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0329, i32 4
  %112 = ptrtoint ptr %ei29.i to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %ei29.i, align 4
  %csei30.i = getelementptr inbounds %struct.omap_type2_desc, ptr %call129, i32 0, i32 6
  %114 = ptrtoint ptr %csei30.i to i32
  call void @__asan_storeN_noabort(i32 %114, i32 2)
  store i16 %113, ptr %csei30.i, align 1
  %115 = ptrtoint ptr %fi31.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %fi31.i, align 4
  %cdfi32.i = getelementptr inbounds %struct.omap_type2_desc, ptr %call129, i32 0, i32 7
  %117 = ptrtoint ptr %cdfi32.i to i32
  call void @__asan_storeN_noabort(i32 %117, i32 4)
  store i32 %116, ptr %cdfi32.i, align 1
  %fi33.i = getelementptr %struct.omap_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0329, i32 3
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb26.i, %sw.bb.i
  %fi33.sink.i = phi ptr [ %fi33.i, %sw.bb26.i ], [ %fi31.i, %sw.bb.i ]
  %.sink.i = phi i32 [ 150994944, %sw.bb26.i ], [ 100663296, %sw.bb.i ]
  %118 = ptrtoint ptr %fi33.sink.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load i32, ptr %fi33.sink.i, align 4
  %csfi34.i = getelementptr inbounds %struct.omap_type2_desc, ptr %call129, i32 0, i32 8
  %120 = ptrtoint ptr %csfi34.i to i32
  call void @__asan_storeN_noabort(i32 %120, i32 4)
  store i32 %119, ptr %csfi34.i, align 1
  %or38.i = or i32 %87, %.sink.i
  %or40.i = or i32 %or38.i, 1073741824
  %121 = ptrtoint ptr %en10.i to i32
  call void @__asan_storeN_noabort(i32 %121, i32 4)
  store i32 %or40.i, ptr %en10.i, align 1
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog.i, %if.end9.i.cleanup_crit_edge, %do.end135, %for.body.cleanup_crit_edge
  %ll_failed.1.off0 = phi i1 [ true, %do.end135 ], [ %ll_failed.0.off0332, %for.body.cleanup_crit_edge ], [ %ll_failed.0.off0332, %if.end9.i.cleanup_crit_edge ], [ %ll_failed.0.off0332, %sw.epilog.i ]
  %inc = add nuw i32 %i.0329, 1
  %call144 = tail call ptr @sg_next(ptr noundef %sgent.0328) #10
  %exitcond.not = icmp eq i32 %inc, %sglen
  br i1 %exitcond.not, label %for.end, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup
  %sglen145 = getelementptr inbounds %struct.omap_desc, ptr %call9.i.i, i32 0, i32 12
  %122 = ptrtoint ptr %sglen145 to i32
  call void @__asan_store4_noabort(i32 %122)
  store i32 %sglen, ptr %sglen145, align 8
  br i1 %ll_failed.1.off0, label %for.cond148.preheader, label %for.end.if.end167_crit_edge

for.end.if.end167_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end167

for.cond148.preheader:                            ; preds = %for.end
  %123 = ptrtoint ptr %sglen145 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %sglen145, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %124)
  %cmp150333.not = icmp eq i32 %124, 0
  br i1 %cmp150333.not, label %for.cond148.preheader.if.end167_crit_edge, label %for.body152.lr.ph

for.cond148.preheader.if.end167_crit_edge:        ; preds = %for.cond148.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end167

for.body152.lr.ph:                                ; preds = %for.cond148.preheader
  %desc_pool159 = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 13
  br label %for.body152

for.body152:                                      ; preds = %if.end163.for.body152_crit_edge, %for.body152.lr.ph
  %i.1334 = phi i32 [ 0, %for.body152.lr.ph ], [ %inc165, %if.end163.for.body152_crit_edge ]
  %t2_desc156 = getelementptr %struct.omap_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.1334, i32 5
  %125 = ptrtoint ptr %t2_desc156 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %t2_desc156, align 4
  %tobool157.not = icmp eq ptr %126, null
  br i1 %tobool157.not, label %for.body152.if.end163_crit_edge, label %if.then158

for.body152.if.end163_crit_edge:                  ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then158:                                       ; preds = %for.body152
  call void @__sanitizer_cov_trace_pc() #12
  %127 = ptrtoint ptr %desc_pool159 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %desc_pool159, align 4
  %t2_desc_paddr161 = getelementptr %struct.omap_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.1334, i32 6
  %129 = ptrtoint ptr %t2_desc_paddr161 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load i32, ptr %t2_desc_paddr161, align 4
  tail call void @dma_pool_free(ptr noundef %128, ptr noundef nonnull %126, i32 noundef %130) #10
  %131 = ptrtoint ptr %t2_desc156 to i32
  call void @__asan_store4_noabort(i32 %131)
  store ptr null, ptr %t2_desc156, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.then158, %for.body152.if.end163_crit_edge
  %inc165 = add nuw i32 %i.1334, 1
  %132 = ptrtoint ptr %sglen145 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load i32, ptr %sglen145, align 8
  %cmp150 = icmp ult i32 %inc165, %133
  br i1 %cmp150, label %if.end163.for.body152_crit_edge, label %if.end163.if.end167_crit_edge

if.end163.if.end167_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end167

if.end163.for.body152_crit_edge:                  ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body152

if.end167:                                        ; preds = %if.end163.if.end167_crit_edge, %for.cond148.preheader.if.end167_crit_edge, %for.end.if.end167_crit_edge, %for.end.thread
  tail call void @dma_async_tx_descriptor_init(ptr noundef %call9.i.i, ptr noundef %chan) #10
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 1
  %134 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %tx_flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 4
  %135 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %135)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 16
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 5
  %136 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %136)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %137 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %137)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1, i32 1
  %138 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %138)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %139 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %140, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end167.vchan_tx_prep.exit_crit_edge

if.end167.vchan_tx_prep.exit_crit_edge:           ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end167
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %141)
  store ptr %node.i, ptr %prev.i.i, align 4
  %142 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %142)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2, i32 1
  %143 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %143)
  store ptr %140, ptr %prev3.i.i.i, align 16
  %144 = ptrtoint ptr %140 to i32
  call void @__asan_store4_noabort(i32 %144)
  store volatile ptr %node.i, ptr %140, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end167.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup169

cleanup169:                                       ; preds = %vchan_tx_prep.exit, %if.end8.i.i.cleanup169_crit_edge, %if.end13.cleanup169_crit_edge, %do.end
  %retval.0 = phi ptr [ %call9.i.i, %vchan_tx_prep.exit ], [ null, %do.end ], [ null, %if.end13.cleanup169_crit_edge ], [ null, %if.end8.i.i.cleanup169_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_dma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %dir, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp = icmp eq i32 %dir, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %src_addr = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4, i32 1
  %src_addr_width = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4, i32 3
  %src_maxburst = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4, i32 5
  br label %if.end11

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp4 = icmp eq i32 %dir, 1
  br i1 %cmp4, label %if.then5, label %do.end

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dst_addr = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4, i32 2
  %dst_addr_width = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4, i32 4
  %dst_maxburst = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4, i32 6
  br label %if.end11

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.47, ptr noundef nonnull @.str.52) #13
  br label %cleanup

if.end11:                                         ; preds = %if.then5, %if.then
  %dev_width.0.in = phi ptr [ %src_addr_width, %if.then ], [ %dst_addr_width, %if.then5 ]
  %dev_addr.0.in = phi ptr [ %src_addr, %if.then ], [ %dst_addr, %if.then5 ]
  %burst.0.in = phi ptr [ %src_maxburst, %if.then ], [ %dst_maxburst, %if.then5 ]
  %4 = ptrtoint ptr %burst.0.in to i32
  call void @__asan_load4_noabort(i32 %4)
  %burst.0 = load i32, ptr %burst.0.in, align 4
  %5 = ptrtoint ptr %dev_addr.0.in to i32
  call void @__asan_load4_noabort(i32 %5)
  %dev_addr.0 = load i32, ptr %dev_addr.0.in, align 4
  %6 = ptrtoint ptr %dev_width.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %dev_width.0 = load i32, ptr %dev_width.0.in, align 4
  %7 = zext i32 %dev_width.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %7, ptr @__sancov_gen_cov_switch_values.76)
  switch i32 %dev_width.0, label %if.end11.cleanup_crit_edge [
    i32 1, label %if.end11.sw.epilog_crit_edge
    i32 2, label %sw.bb12
    i32 4, label %sw.bb13
  ]

if.end11.sw.epilog_crit_edge:                     ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb12:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb13:                                          ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb13, %sw.bb12, %if.end11.sw.epilog_crit_edge
  %es.0 = phi i32 [ 2, %sw.bb13 ], [ 1, %sw.bb12 ], [ 0, %if.end11.sw.epilog_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 184) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %sw.epilog.cleanup_crit_edge, label %if.end16

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  %dir17 = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %dir17 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %dir, ptr %dir17, align 8
  %dev_addr18 = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %dev_addr18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dev_addr.0, ptr %dev_addr18, align 4
  %fi = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 5
  %11 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %burst.0, ptr %fi, align 4
  %conv = trunc i32 %es.0 to i8
  %es19 = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 7
  %12 = ptrtoint ptr %es19 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %conv, ptr %es19, align 2
  %sg = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 13
  %13 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %buf_addr, ptr %sg, align 4
  %arrayidx20 = getelementptr [3 x i32], ptr @es_bytes, i32 0, i32 %es.0
  %14 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %arrayidx20, align 4
  %div = udiv i32 %period_len, %15
  %en = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 1
  %16 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %div, ptr %en, align 8
  %div23 = udiv i32 %buf_len, %period_len
  %fn = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 2
  %17 = ptrtoint ptr %fn to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %div23, ptr %fn, align 4
  %sglen = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 12
  %18 = ptrtoint ptr %sglen to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %sglen, align 8
  %ccr = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 3
  %19 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %ccr, align 4
  %ccr26 = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 8
  %storemerge.v = select i1 %cmp, i32 16384, i32 4096
  %storemerge = or i32 %20, %storemerge.v
  %21 = ptrtoint ptr %ccr26 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %storemerge, ptr %ccr26, align 4
  %cicr = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 10
  %and = and i32 %flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool35.not = icmp eq i32 %and, 0
  %storemerge120 = select i1 %tobool35.not, i16 2, i16 10
  %22 = ptrtoint ptr %cicr to i32
  call void @__asan_store2_noabort(i32 %22)
  store i16 %storemerge120, ptr %cicr, align 2
  %csdp = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 11
  %23 = ptrtoint ptr %csdp to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %es.0, ptr %csdp, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %burst.0)
  %tobool42.not = icmp eq i32 %burst.0, 0
  br i1 %tobool42.not, label %if.end16.if.end49_crit_edge, label %if.then43

if.end16.if.end49_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end49

if.then43:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  %or45 = or i32 %storemerge, 262176
  %24 = ptrtoint ptr %ccr26 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or45, ptr %ccr26, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %if.end16.if.end49_crit_edge
  br i1 %cmp, label %if.then52, label %if.end49.if.end60_crit_edge

if.end49.if.end60_crit_edge:                      ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then52:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %ccr26 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ccr26, align 4
  %or54 = or i32 %26, 16777216
  store i32 %or54, ptr %ccr26, align 4
  br label %if.end60

if.end60:                                         ; preds = %if.then52, %if.end49.if.end60_crit_edge
  %.sink121 = phi i32 [ 8192, %if.then52 ], [ 64, %if.end49.if.end60_crit_edge ]
  %27 = ptrtoint ptr %csdp to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %csdp, align 4
  %or59 = or i32 %28, %.sink121
  %29 = ptrtoint ptr %cicr to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %cicr, align 2
  %31 = or i16 %30, 2304
  store i16 %31, ptr %cicr, align 2
  %or66 = or i32 %or59, 49536
  store i32 %or66, ptr %csdp, align 4
  %dma_ch = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 9
  %32 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_ch, align 4
  %34 = trunc i32 %33 to i16
  %conv68 = or i16 %34, -32768
  %clnk_ctrl = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 9
  %35 = ptrtoint ptr %clnk_ctrl to i32
  call void @__asan_store2_noabort(i32 %35)
  store i16 %conv68, ptr %clnk_ctrl, align 8
  %cyclic = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 6
  %36 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %36)
  store i8 1, ptr %cyclic, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #10
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %38 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %39 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %40 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %41 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %42 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %43, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end60.vchan_tx_prep.exit_crit_edge

if.end60.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  %44 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %node.i, ptr %prev.i.i, align 4
  %45 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev3.i.i.i, align 8
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %node.i, ptr %43, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end60.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %sw.epilog.cleanup_crit_edge, %if.end11.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ %call7.i.i, %vchan_tx_prep.exit ], [ null, %do.end ], [ null, %if.end11.cleanup_crit_edge ], [ null, %sw.epilog.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_dma_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %tx_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2848, i32 noundef 184) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %src, %dest
  %or2 = or i32 %or, %len
  %1 = tail call i32 @llvm.cttz.i32(i32 %or2, i1 false) #10, !range !153
  %2 = tail call i32 @llvm.umin.i32(i32 %1, i32 2)
  %3 = trunc i32 %2 to i8
  %dir = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 2
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %dir, align 8
  %dev_addr = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 3
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %src, ptr %dev_addr, align 4
  %fi = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %fi to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %fi, align 4
  %es = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 7
  %7 = ptrtoint ptr %es to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 %3, ptr %es, align 2
  %div59 = lshr i32 %len, %2
  %sg = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 13
  %en = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 1
  %8 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %div59, ptr %en, align 8
  %fn = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 2
  %9 = ptrtoint ptr %fn to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 1, ptr %fn, align 4
  %10 = ptrtoint ptr %sg to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dest, ptr %sg, align 4
  %sglen = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 12
  %11 = ptrtoint ptr %sglen to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %sglen, align 8
  %ccr = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 3
  %12 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %ccr, align 4
  %ccr13 = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 8
  %or15 = or i32 %13, 20480
  %14 = ptrtoint ptr %ccr13 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %or15, ptr %ccr13, align 4
  %and = and i32 %tx_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool16.not = icmp eq i32 %and, 0
  br i1 %tobool16.not, label %if.else, label %if.then17

if.then17:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %cicr = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 10
  %15 = ptrtoint ptr %cicr to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %cicr, align 2
  %17 = or i16 %16, 8
  store i16 %17, ptr %cicr, align 2
  br label %if.end21

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %polled = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 4
  %18 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %polled, align 8
  br label %if.end21

if.end21:                                         ; preds = %if.else, %if.then17
  %csdp = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 11
  %cicr25 = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 10
  %19 = ptrtoint ptr %cicr25 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %cicr25, align 2
  %21 = or i16 %20, 2304
  store i16 %21, ptr %cicr25, align 2
  %or30 = or i32 %2, 57792
  %22 = ptrtoint ptr %csdp to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or30, ptr %csdp, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #10
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %tx_flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %24 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %25 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %29, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end21.vchan_tx_prep.exit_crit_edge

if.end21.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %node.i, ptr %prev.i.i, align 4
  %31 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i, align 8
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %node.i, ptr %29, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end21.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @omap_dma_prep_dma_interleaved(ptr noundef %chan, ptr nocapture noundef readonly %xt, i32 noundef %flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dir = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 2
  %0 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dir, align 4
  %2 = add i32 %1, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %2)
  %3 = icmp ult i32 %2, 2
  br i1 %3, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %frame_size = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 8
  %4 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %frame_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %5)
  %cmp.not = icmp eq i32 %5, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %numf = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 7
  %6 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %numf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp2 = icmp eq i32 %7, 0
  br i1 %cmp2, label %lor.lhs.false.cleanup_crit_edge, label %if.end4

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end4:                                          ; preds = %lor.lhs.false
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %8 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %8, i32 noundef 2848, i32 noundef 184) #14
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %if.end4.cleanup_crit_edge, label %if.end7

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %9 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %xt, align 4
  %dst_start = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 1
  %11 = ptrtoint ptr %dst_start to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dst_start, align 4
  %or = or i32 %12, %10
  %sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 9
  %13 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %sgl, align 4
  %or8 = or i32 %or, %14
  %15 = tail call i32 @llvm.cttz.i32(i32 %or8, i1 false) #10, !range !153
  %16 = tail call i32 @llvm.umin.i32(i32 %15, i32 2)
  %17 = trunc i32 %16 to i8
  %sg15 = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 13
  %dir17 = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %dir17 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %dir17, align 8
  %dev_addr = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %10, ptr %dev_addr, align 4
  %es = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 7
  %20 = ptrtoint ptr %es to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 %17, ptr %es, align 2
  %div129 = lshr i32 %14, %16
  %en = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 1
  %21 = ptrtoint ptr %en to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %div129, ptr %en, align 8
  %22 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %numf, align 4
  %fn = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 2
  %24 = ptrtoint ptr %fn to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %23, ptr %fn, align 4
  %25 = ptrtoint ptr %sg15 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %12, ptr %sg15, align 4
  %sglen = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 12
  %26 = ptrtoint ptr %sglen to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 1, ptr %sglen, align 8
  %ccr = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 3
  %27 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %ccr, align 4
  %ccr25 = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 8
  %29 = ptrtoint ptr %ccr25 to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %ccr25, align 4
  %src_inc.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 3
  %30 = ptrtoint ptr %src_inc.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %src_inc.i, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool.not.i = icmp eq i8 %31, 0
  br i1 %tobool.not.i, label %if.end7.if.end7.i.i_crit_edge, label %if.then.i.i

if.end7.if.end7.i.i_crit_edge:                    ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.then.i.i:                                      ; preds = %if.end7
  %src_icg.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 3
  %32 = ptrtoint ptr %src_icg.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %src_icg.i, align 4
  %icg.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 1
  %34 = ptrtoint ptr %icg.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %icg.i, align 4
  %src_sgl.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 5
  %36 = ptrtoint ptr %src_sgl.i to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %src_sgl.i, align 2, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %37)
  %tobool1.i = icmp ne i8 %37, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool2.not.i.i = icmp ne i32 %33, 0
  %brmerge.i.i = or i1 %tobool2.not.i.i, %tobool1.i
  %dir_icg.mux.i.i = select i1 %tobool2.not.i.i, i32 %33, i32 %35
  br i1 %brmerge.i.i, label %if.then.i.i.dmaengine_get_src_icg.exit_crit_edge, label %if.then.i.i.if.end7.i.i_crit_edge

if.then.i.i.if.end7.i.i_crit_edge:                ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i

if.then.i.i.dmaengine_get_src_icg.exit_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_get_src_icg.exit

if.end7.i.i:                                      ; preds = %if.then.i.i.if.end7.i.i_crit_edge, %if.end7.if.end7.i.i_crit_edge
  br label %dmaengine_get_src_icg.exit

dmaengine_get_src_icg.exit:                       ; preds = %if.end7.i.i, %if.then.i.i.dmaengine_get_src_icg.exit_crit_edge
  %retval.0.i.i = phi i32 [ 0, %if.end7.i.i ], [ %dir_icg.mux.i.i, %if.then.i.i.dmaengine_get_src_icg.exit_crit_edge ]
  %dst_inc.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 4
  %38 = ptrtoint ptr %dst_inc.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %dst_inc.i, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool.not.i130 = icmp eq i8 %39, 0
  br i1 %tobool.not.i130, label %dmaengine_get_src_icg.exit.if.end7.i.i137_crit_edge, label %if.then.i.i136

dmaengine_get_src_icg.exit.if.end7.i.i137_crit_edge: ; preds = %dmaengine_get_src_icg.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i137

if.then.i.i136:                                   ; preds = %dmaengine_get_src_icg.exit
  %dst_icg.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 2
  %40 = ptrtoint ptr %dst_icg.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %dst_icg.i, align 4
  %icg.i131 = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 1
  %42 = ptrtoint ptr %icg.i131 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %icg.i131, align 4
  %dst_sgl.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 6
  %44 = ptrtoint ptr %dst_sgl.i to i32
  call void @__asan_load1_noabort(i32 %44)
  %45 = load i8, ptr %dst_sgl.i, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %45)
  %tobool1.i132 = icmp ne i8 %45, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %tobool2.not.i.i133 = icmp ne i32 %41, 0
  %brmerge.i.i134 = or i1 %tobool2.not.i.i133, %tobool1.i132
  %dir_icg.mux.i.i135 = select i1 %tobool2.not.i.i133, i32 %41, i32 %43
  br i1 %brmerge.i.i134, label %if.then.i.i136.dmaengine_get_dst_icg.exit_crit_edge, label %if.then.i.i136.if.end7.i.i137_crit_edge

if.then.i.i136.if.end7.i.i137_crit_edge:          ; preds = %if.then.i.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7.i.i137

if.then.i.i136.dmaengine_get_dst_icg.exit_crit_edge: ; preds = %if.then.i.i136
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_get_dst_icg.exit

if.end7.i.i137:                                   ; preds = %if.then.i.i136.if.end7.i.i137_crit_edge, %dmaengine_get_src_icg.exit.if.end7.i.i137_crit_edge
  br label %dmaengine_get_dst_icg.exit

dmaengine_get_dst_icg.exit:                       ; preds = %if.end7.i.i137, %if.then.i.i136.dmaengine_get_dst_icg.exit_crit_edge
  %retval.0.i.i138 = phi i32 [ 0, %if.end7.i.i137 ], [ %dir_icg.mux.i.i135, %if.then.i.i136.dmaengine_get_dst_icg.exit_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i)
  %tobool32.not = icmp eq i32 %retval.0.i.i, 0
  br i1 %tobool32.not, label %if.else, label %if.then33

if.then33:                                        ; preds = %dmaengine_get_dst_icg.exit
  call void @__sanitizer_cov_trace_pc() #12
  %or35 = or i32 %28, 12288
  %46 = ptrtoint ptr %ccr25 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or35, ptr %ccr25, align 4
  %ei = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 6
  %47 = ptrtoint ptr %ei to i32
  call void @__asan_store2_noabort(i32 %47)
  store i16 1, ptr %ei, align 8
  %add = add i32 %retval.0.i.i, 1
  br label %if.end43

if.else:                                          ; preds = %dmaengine_get_dst_icg.exit
  br i1 %tobool.not.i, label %do.end, label %if.then37

if.then37:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %or39 = or i32 %28, 4096
  %48 = ptrtoint ptr %ccr25 to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %or39, ptr %ccr25, align 4
  br label %if.end43

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %49 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %50, i32 0, i32 15
  %51 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %52, ptr noundef nonnull @.str.53, ptr noundef nonnull @.str.54) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end43:                                         ; preds = %if.then37, %if.then33
  %.sink = phi i32 [ 0, %if.then37 ], [ %add, %if.then33 ]
  %fi40 = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 5
  %53 = ptrtoint ptr %fi40 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %.sink, ptr %fi40, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i.i138)
  %tobool44.not = icmp eq i32 %retval.0.i.i138, 0
  br i1 %tobool44.not, label %if.else51, label %if.then45

if.then45:                                        ; preds = %if.end43
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %ccr25 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %ccr25, align 4
  %or47 = or i32 %55, 49152
  store i32 %or47, ptr %ccr25, align 4
  %ei48 = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 4
  %56 = ptrtoint ptr %ei48 to i32
  call void @__asan_store2_noabort(i32 %56)
  store i16 1, ptr %ei48, align 4
  %add49 = add i32 %retval.0.i.i138, 1
  br label %if.end64

if.else51:                                        ; preds = %if.end43
  br i1 %tobool.not.i130, label %do.end60, label %if.then53

if.then53:                                        ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %ccr25 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ccr25, align 4
  %or55 = or i32 %58, 16384
  store i32 %or55, ptr %ccr25, align 4
  br label %if.end64

do.end60:                                         ; preds = %if.else51
  call void @__sanitizer_cov_trace_pc() #12
  %59 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chan, align 4
  %dev62 = getelementptr inbounds %struct.dma_device, ptr %60, i32 0, i32 15
  %61 = ptrtoint ptr %dev62 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev62, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %62, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.54) #13
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #10
  br label %cleanup

if.end64:                                         ; preds = %if.then53, %if.then45
  %.sink140 = phi i32 [ 0, %if.then53 ], [ %add49, %if.then45 ]
  %fi56 = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 3
  %63 = ptrtoint ptr %fi56 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %.sink140, ptr %fi56, align 8
  %cicr = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 10
  %csdp = getelementptr inbounds %struct.omap_desc, ptr %call7.i.i, i32 0, i32 11
  %64 = ptrtoint ptr %cicr to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 2314, ptr %cicr, align 2
  %or73 = or i32 %16, 57792
  %65 = ptrtoint ptr %csdp to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %or73, ptr %csdp, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #10
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %67 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %68 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %69 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %70 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %72, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end64.vchan_tx_prep.exit_crit_edge

if.end64.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end64
  call void @__sanitizer_cov_trace_pc() #12
  %73 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %node.i, ptr %prev.i.i, align 4
  %74 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %75 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i.i, align 8
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %node.i, ptr %72, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end64.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %do.end60, %do.end, %if.end4.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %vchan_tx_prep.exit ], [ null, %do.end60 ], [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end4.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @omap_dma_slave_config(ptr nocapture noundef %chan, ptr nocapture noundef readonly %cfg) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  %0 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp = icmp eq i32 %1, 8
  br i1 %cmp, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  %2 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst_addr_width, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %3)
  %cmp1 = icmp eq i32 %3, 8
  br i1 %cmp1, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %src_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 5
  %4 = ptrtoint ptr %src_maxburst to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_maxburst, align 4
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 4
  %max_burst = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 23
  %8 = ptrtoint ptr %max_burst to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %max_burst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %9)
  %cmp2 = icmp ugt i32 %5, %9
  br i1 %cmp2, label %if.end.cleanup_crit_edge, label %lor.lhs.false3

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false3:                                   ; preds = %if.end
  %dst_maxburst = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 6
  %10 = ptrtoint ptr %dst_maxburst to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dst_maxburst, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp6 = icmp ugt i32 %11, %9
  br i1 %cmp6, label %lor.lhs.false3.cleanup_crit_edge, label %if.end8

lor.lhs.false3.cleanup_crit_edge:                 ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end8:                                          ; preds = %lor.lhs.false3
  call void @__sanitizer_cov_trace_pc() #12
  %cfg9 = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 4
  %12 = call ptr @memcpy(ptr %cfg9, ptr %cfg, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dma_pause(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %irq_lock = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 15
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %desc = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 10
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.out_crit_edge, label %if.end

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.end:                                           ; preds = %entry
  %cyclic = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 6
  %4 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %cyclic, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %if.else, label %if.end.land.lhs.true_crit_edge

if.end.land.lhs.true_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.else:                                          ; preds = %if.end
  %dir = getelementptr inbounds %struct.omap_desc, ptr %3, i32 0, i32 2
  %6 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %7)
  %cmp10 = icmp eq i32 %7, 2
  br i1 %cmp10, label %if.else.land.lhs.true_crit_edge, label %if.else.out_crit_edge

if.else.out_crit_edge:                            ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.else.land.lhs.true_crit_edge:                  ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.else.land.lhs.true_crit_edge, %if.end.land.lhs.true_crit_edge
  %paused = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 7
  %8 = ptrtoint ptr %paused to i32
  call void @__asan_load1_noabort(i32 %8)
  %9 = load i8, ptr %paused, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %9)
  %tobool17.not = icmp eq i8 %9, 0
  br i1 %tobool17.not, label %if.then18, label %land.lhs.true.out_crit_edge

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then18:                                        ; preds = %land.lhs.true
  %call19 = tail call fastcc i32 @omap_dma_stop(ptr noundef %chan)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call19)
  %tobool20.not = icmp eq i32 %call19, 0
  br i1 %tobool20.not, label %if.then21, label %if.then18.out_crit_edge

if.then18.out_crit_edge:                          ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

if.then21:                                        ; preds = %if.then18
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %paused to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %paused, align 1
  br label %out

out:                                              ; preds = %if.then21, %if.then18.out_crit_edge, %land.lhs.true.out_crit_edge, %if.else.out_crit_edge, %entry.out_crit_edge
  %ret.0 = phi i32 [ -22, %land.lhs.true.out_crit_edge ], [ %call19, %if.then18.out_crit_edge ], [ 0, %if.then21 ], [ -22, %if.else.out_crit_edge ], [ -22, %entry.out_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call4) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dma_resume(ptr noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %irq_lock = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 15
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %irq_lock) #10
  %paused = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 7
  %2 = ptrtoint ptr %paused to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %paused, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.lhs.true

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %desc = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 10
  %4 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %desc, align 4
  %tobool8.not = icmp eq ptr %5, null
  br i1 %tobool8.not, label %land.lhs.true.if.end_crit_edge, label %do.body9

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.body9:                                         ; preds = %land.lhs.true
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !154
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %clnk_ctrl = getelementptr inbounds %struct.omap_desc, ptr %7, i32 0, i32 9
  %8 = ptrtoint ptr %clnk_ctrl to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %clnk_ctrl, align 4
  %reg_map.i = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 2
  %10 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i = getelementptr %struct.omap_dma_reg, ptr %11, i32 44
  %type.i = getelementptr %struct.omap_dma_reg, ptr %11, i32 44, i32 2
  %12 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %type.i, align 1
  %channel_base.i = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 1
  %14 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %channel_base.i, align 4
  %16 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %16)
  %17 = load i16, ptr %add.ptr.i, align 2
  %conv1.i = zext i16 %17 to i32
  %add.ptr2.i = getelementptr i8, ptr %15, i32 %conv1.i
  %18 = zext i8 %13 to i64
  call void @__sanitizer_cov_trace_switch(i64 %18, ptr @__sancov_gen_cov_switch_values.77)
  switch i8 %13, label %do.end.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %19 = tail call i16 @llvm.bswap.i16(i16 %9) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %19) #10, !srcloc !145
  br label %omap_dma_chan_write.exit

sw.bb1.i.i:                                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %20 = tail call i16 @llvm.bswap.i16(i16 %9) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %20) #10, !srcloc !145
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit

sw.bb4.i.i:                                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %conv13 = zext i16 %9 to i32
  %21 = tail call i32 @llvm.bswap.i32(i32 %conv13) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %21) #10, !srcloc !146
  br label %omap_dma_chan_write.exit

do.end.i.i:                                       ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit

omap_dma_chan_write.exit:                         ; preds = %do.end.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %22 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %desc, align 4
  tail call fastcc void @omap_dma_start(ptr noundef %chan, ptr noundef %23)
  %24 = ptrtoint ptr %paused to i32
  call void @__asan_store1_noabort(i32 %24)
  store i8 0, ptr %paused, align 1
  br label %if.end

if.end:                                           ; preds = %omap_dma_chan_write.exit, %land.lhs.true.if.end_crit_edge, %entry.if.end_crit_edge
  %ret.0 = phi i32 [ 0, %omap_dma_chan_write.exit ], [ -22, %land.lhs.true.if.end_crit_edge ], [ -22, %entry.if.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %irq_lock, i32 noundef %call4) #10
  ret i32 %ret.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dma_terminate_all(ptr noundef %chan) #0 align 64 {
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
  %desc = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 10
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then:                                          ; preds = %entry
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %4, i32 0, i32 3
  %5 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan.i, align 4
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %4, i32 0, i32 2
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 8, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %8, ptr noundef %desc_terminated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.list_add_tail.exit.i_crit_edge

if.then.list_add_tail.exit.i_crit_edge:           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %node.i, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %desc_terminated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %4, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev3.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %node.i, ptr %8, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.then.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %6, i32 0, i32 9
  %13 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cyclic.i, align 4
  %cmp.i = icmp eq ptr %14, %4
  br i1 %cmp.i, label %if.then.i, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_terminate_vdesc.exit

if.then.i:                                        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %16 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr null, ptr %desc, align 4
  %paused = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 7
  %17 = ptrtoint ptr %paused to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %paused, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %18)
  %tobool8.not = icmp eq i8 %18, 0
  br i1 %tobool8.not, label %if.then9, label %vchan_terminate_vdesc.exit.if.end11_crit_edge

vchan_terminate_vdesc.exit.if.end11_crit_edge:    ; preds = %vchan_terminate_vdesc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %vchan_terminate_vdesc.exit
  call void @__sanitizer_cov_trace_pc() #12
  %call10 = call fastcc i32 @omap_dma_stop(ptr noundef %chan)
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %vchan_terminate_vdesc.exit.if.end11_crit_edge, %entry.if.end11_crit_edge
  %cyclic = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 6
  %19 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 0, ptr %cyclic, align 4
  %paused12 = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 7
  %20 = ptrtoint ptr %paused12 to i32
  call void @__asan_store1_noabort(i32 %20)
  store i8 0, ptr %paused12, align 1
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %21 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %22, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %if.end11.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.end11.list_splice_tail_init.exit.i_crit_edge:  ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %25 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i28 = getelementptr inbounds %struct.list_head, ptr %22, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i28 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i28, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %22, ptr %24, align 4
  %29 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %head, ptr %26, align 4
  store ptr %26, ptr %0, align 4
  %30 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.end11.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %31 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %32, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %35 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %32, i32 0, i32 1
  %37 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %34, ptr %prev3.i.i12.i, align 4
  %38 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %32, ptr %34, align 4
  %39 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %head, ptr %36, align 4
  store ptr %36, ptr %0, align 4
  %40 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %41 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %42, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  %43 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %45 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i18.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %42, ptr %44, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %head, ptr %46, align 4
  store ptr %46, ptr %0, align 4
  %50 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %51 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %52, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %55 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %57 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %54, ptr %prev3.i.i24.i, align 4
  %58 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %52, ptr %54, align 4
  %59 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %head, ptr %56, align 4
  store ptr %56, ptr %0, align 4
  %60 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i29 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %61 = ptrtoint ptr %desc_terminated.i29 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load volatile ptr, ptr %desc_terminated.i29, align 4
  %cmp.i.not.i27.i = icmp eq ptr %62, %desc_terminated.i29
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %65 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %67 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i30.i, align 4
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %62, ptr %64, align 4
  %69 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %head, ptr %66, align 4
  store ptr %66, ptr %0, align 4
  %70 = ptrtoint ptr %desc_terminated.i29 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %desc_terminated.i29, ptr %desc_terminated.i29, align 4
  store ptr %desc_terminated.i29, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_dma_synchronize(ptr noundef %chan) #0 align 64 {
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

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_dma_free(ptr noundef %od) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr inbounds %struct.dma_device, ptr %od, i32 0, i32 3
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %channels, align 4
  %cmp.i.not7 = icmp eq ptr %1, %channels
  br i1 %cmp.i.not7, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %list_del.exit.while.body_crit_edge, %entry.while.body_crit_edge
  %2 = phi ptr [ %12, %list_del.exit.while.body_crit_edge ], [ %1, %entry.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %2, i32 -32
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %2) #10
  br i1 %call.i.i, label %if.end.i.i, label %while.body.list_del.exit_crit_edge

while.body.list_del.exit_crit_edge:               ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %2, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %while.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %2, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %task = getelementptr i8, ptr %2, i32 32
  tail call void @tasklet_kill(ptr noundef %task) #10
  tail call void @kfree(ptr noundef %add.ptr) #10
  %11 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %channels, align 4
  %cmp.i.not = icmp eq ptr %12, %channels
  br i1 %cmp.i.not, label %list_del.exit.while.end_crit_edge, label %list_del.exit.while.body_crit_edge

list_del.exit.while.body_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_del.exit.while.end_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_del.exit.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dma_irq(i32 noundef %irq, ptr noundef %devid) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %irq_lock = getelementptr inbounds %struct.omap_dmadev, ptr %devid, i32 0, i32 15
  tail call void @_raw_spin_lock(ptr noundef %irq_lock) #10
  %reg_map.i = getelementptr inbounds %struct.omap_dmadev, ptr %devid, i32 0, i32 3
  %0 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_map.i, align 4
  %stride.i = getelementptr %struct.omap_dma_reg, ptr %1, i32 20, i32 1
  %2 = ptrtoint ptr %stride.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stride.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not.i = icmp eq i8 %3, 0
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %do.end.i, !prof !144

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 364, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %entry.if.end.i_crit_edge
  %add.ptr.i = getelementptr %struct.omap_dma_reg, ptr %1, i32 20
  %type.i = getelementptr %struct.omap_dma_reg, ptr %1, i32 20, i32 2
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type.i, align 1
  %base.i = getelementptr inbounds %struct.omap_dmadev, ptr %devid, i32 0, i32 2
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %conv20.i = zext i16 %9 to i32
  %add.ptr21.i = getelementptr i8, ptr %7, i32 %conv20.i
  %10 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.78)
  switch i8 %5, label %do.end.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb10.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i) #10, !srcloc !149
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  %conv.i.i = zext i16 %12 to i32
  br label %omap_dma_glbl_read.exit

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i) #10, !srcloc !149
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr21.i, i32 2
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !149
  %15 = zext i16 %14 to i32
  %16 = zext i16 %13 to i32
  %17 = shl nuw i32 %16, 16
  %18 = or i32 %17, %15
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  br label %omap_dma_glbl_read.exit

sw.bb10.i.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #10, !srcloc !150
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  br label %omap_dma_glbl_read.exit

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_read.exit

omap_dma_glbl_read.exit:                          ; preds = %do.end.i.i, %sw.bb10.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %val.0.i.i = phi i32 [ 0, %do.end.i.i ], [ %21, %sw.bb10.i.i ], [ %19, %sw.bb1.i.i ], [ %conv.i.i, %sw.bb.i.i ]
  %irq_enable_mask = getelementptr inbounds %struct.omap_dmadev, ptr %devid, i32 0, i32 16
  %22 = ptrtoint ptr %irq_enable_mask to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %irq_enable_mask, align 4
  %and = and i32 %23, %val.0.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp = icmp eq i32 %and, 0
  br i1 %cmp, label %omap_dma_glbl_read.exit.cleanup11_crit_edge, label %while.cond.preheader

omap_dma_glbl_read.exit.cleanup11_crit_edge:      ; preds = %omap_dma_glbl_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup11

while.cond.preheader:                             ; preds = %omap_dma_glbl_read.exit
  %lch_map = getelementptr inbounds %struct.omap_dmadev, ptr %devid, i32 0, i32 17
  %dev = getelementptr inbounds %struct.dma_device, ptr %devid, i32 0, i32 15
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.cond.preheader
  %status.048 = phi i32 [ %and, %while.cond.preheader ], [ %and3, %cleanup.while.body_crit_edge ]
  %24 = tail call i32 @llvm.cttz.i32(i32 %status.048, i1 true), !range !153
  %shl = shl nuw i32 1, %24
  %neg = xor i32 %shl, -1
  %and3 = and i32 %status.048, %neg
  %25 = ptrtoint ptr %lch_map to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %lch_map, align 4
  %arrayidx = getelementptr ptr, ptr %26, i32 %24
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %arrayidx, align 4
  %cmp4 = icmp eq ptr %28, null
  br i1 %cmp4, label %do.end, label %if.end6

do.end:                                           ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %29 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %30, ptr noundef nonnull @.str.60, i32 noundef %24) #13
  br label %cleanup

if.end6:                                          ; preds = %while.body
  %reg_map.i.i = getelementptr inbounds %struct.omap_chan, ptr %28, i32 0, i32 2
  %31 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %reg_map.i.i, align 4
  %add.ptr.i.i31 = getelementptr %struct.omap_dma_reg, ptr %32, i32 35
  %type.i.i = getelementptr %struct.omap_dma_reg, ptr %32, i32 35, i32 2
  %33 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %33)
  %34 = load i8, ptr %type.i.i, align 1
  %channel_base.i.i = getelementptr inbounds %struct.omap_chan, ptr %28, i32 0, i32 1
  %35 = ptrtoint ptr %channel_base.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %channel_base.i.i, align 4
  %37 = ptrtoint ptr %add.ptr.i.i31 to i32
  call void @__asan_load2_noabort(i32 %37)
  %38 = load i16, ptr %add.ptr.i.i31, align 2
  %conv1.i.i = zext i16 %38 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %36, i32 %conv1.i.i
  %39 = zext i8 %34 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.79)
  switch i8 %34, label %do.end.i.i.i [
    i8 1, label %sw.bb.i.i.i
    i8 2, label %sw.bb1.i.i.i
    i8 3, label %sw.bb10.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %40 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i.i) #10, !srcloc !149
  %41 = tail call i16 @llvm.bswap.i16(i16 %40) #10
  %conv.i.i.i = zext i16 %41 to i32
  br label %omap_dma_chan_read.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %42 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i.i) #10, !srcloc !149
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 2
  %43 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !149
  %44 = zext i16 %43 to i32
  %45 = zext i16 %42 to i32
  %46 = shl nuw i32 %45, 16
  %47 = or i32 %46, %44
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #10
  br label %omap_dma_chan_read.exit.i

sw.bb10.i.i.i:                                    ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i.i) #10, !srcloc !150
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #10
  br label %omap_dma_chan_read.exit.i

do.end.i.i.i:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_read.exit.i

omap_dma_chan_read.exit.i:                        ; preds = %do.end.i.i.i, %sw.bb10.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %val.0.i.i.i = phi i32 [ 0, %do.end.i.i.i ], [ %50, %sw.bb10.i.i.i ], [ %48, %sw.bb1.i.i.i ], [ %conv.i.i.i, %sw.bb.i.i.i ]
  %51 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %reg_map.i.i, align 4
  %add.ptr.i4.i = getelementptr %struct.omap_dma_reg, ptr %52, i32 35
  %type.i5.i = getelementptr %struct.omap_dma_reg, ptr %52, i32 35, i32 2
  %53 = ptrtoint ptr %type.i5.i to i32
  call void @__asan_load1_noabort(i32 %53)
  %54 = load i8, ptr %type.i5.i, align 1
  %55 = ptrtoint ptr %channel_base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %channel_base.i.i, align 4
  %57 = ptrtoint ptr %add.ptr.i4.i to i32
  call void @__asan_load2_noabort(i32 %57)
  %58 = load i16, ptr %add.ptr.i4.i, align 2
  %conv1.i7.i = zext i16 %58 to i32
  %add.ptr2.i8.i = getelementptr i8, ptr %56, i32 %conv1.i7.i
  %59 = zext i8 %54 to i64
  call void @__sanitizer_cov_trace_switch(i64 %59, ptr @__sancov_gen_cov_switch_values.80)
  switch i8 %54, label %do.end.i.i13.i [
    i8 1, label %sw.bb.i.i10.i
    i8 2, label %sw.bb1.i.i12.i
    i8 3, label %sw.bb4.i.i.i
  ]

sw.bb.i.i10.i:                                    ; preds = %omap_dma_chan_read.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i9.i = trunc i32 %val.0.i.i.i to i16
  %60 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i9.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i8.i, i16 %60) #10, !srcloc !145
  br label %omap_dma_get_csr.exit

sw.bb1.i.i12.i:                                   ; preds = %omap_dma_chan_read.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i.i = trunc i32 %val.0.i.i.i to i16
  %61 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i8.i, i16 %61) #10, !srcloc !145
  %shr.i.i.i = lshr i32 %val.0.i.i.i, 16
  %conv3.i.i.i = trunc i32 %shr.i.i.i to i16
  %62 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i.i) #10
  %add.ptr.i.i11.i = getelementptr i8, ptr %add.ptr2.i8.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i11.i, i16 %62) #10, !srcloc !145
  br label %omap_dma_get_csr.exit

sw.bb4.i.i.i:                                     ; preds = %omap_dma_chan_read.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %63 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i.i) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i8.i, i32 %63) #10, !srcloc !146
  br label %omap_dma_get_csr.exit

do.end.i.i13.i:                                   ; preds = %omap_dma_chan_read.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_get_csr.exit

omap_dma_get_csr.exit:                            ; preds = %do.end.i.i13.i, %sw.bb4.i.i.i, %sw.bb1.i.i12.i, %sw.bb.i.i10.i
  %64 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %reg_map.i, align 4
  %stride.i33 = getelementptr %struct.omap_dma_reg, ptr %65, i32 20, i32 1
  %66 = ptrtoint ptr %stride.i33 to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %stride.i33, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool.not.i34 = icmp eq i8 %67, 0
  br i1 %tobool.not.i34, label %omap_dma_get_csr.exit.if.end.i41_crit_edge, label %do.end.i35, !prof !144

omap_dma_get_csr.exit.if.end.i41_crit_edge:       ; preds = %omap_dma_get_csr.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i41

do.end.i35:                                       ; preds = %omap_dma_get_csr.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i41

if.end.i41:                                       ; preds = %do.end.i35, %omap_dma_get_csr.exit.if.end.i41_crit_edge
  %add.ptr.i36 = getelementptr %struct.omap_dma_reg, ptr %65, i32 20
  %type.i37 = getelementptr %struct.omap_dma_reg, ptr %65, i32 20, i32 2
  %68 = ptrtoint ptr %type.i37 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %type.i37, align 1
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %72 = ptrtoint ptr %add.ptr.i36 to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %add.ptr.i36, align 2
  %conv20.i39 = zext i16 %73 to i32
  %add.ptr21.i40 = getelementptr i8, ptr %71, i32 %conv20.i39
  %74 = zext i8 %69 to i64
  call void @__sanitizer_cov_trace_switch(i64 %74, ptr @__sancov_gen_cov_switch_values.81)
  switch i8 %69, label %do.end.i.i46 [
    i8 1, label %sw.bb.i.i43
    i8 2, label %sw.bb1.i.i45
    i8 3, label %sw.bb4.i.i
  ]

sw.bb.i.i43:                                      ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i42 = trunc i32 %shl to i16
  %75 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i42) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i40, i16 %75) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit

sw.bb1.i.i45:                                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i = trunc i32 %shl to i16
  %76 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i40, i16 %76) #10, !srcloc !145
  %shr.i.i = lshr i32 %shl, 16
  %conv3.i.i = trunc i32 %shr.i.i to i16
  %77 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #10
  %add.ptr.i.i44 = getelementptr i8, ptr %add.ptr21.i40, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i44, i16 %77) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit

sw.bb4.i.i:                                       ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  %78 = tail call i32 @llvm.bswap.i32(i32 %shl) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i40, i32 %78) #10, !srcloc !146
  br label %omap_dma_glbl_write.exit

do.end.i.i46:                                     ; preds = %if.end.i41
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_write.exit

omap_dma_glbl_write.exit:                         ; preds = %do.end.i.i46, %sw.bb4.i.i, %sw.bb1.i.i45, %sw.bb.i.i43
  %conv = trunc i32 %val.0.i.i.i to i16
  tail call void @omap_dma_callback(i32 noundef %24, i16 noundef zeroext %conv, ptr noundef nonnull %28)
  br label %cleanup

cleanup:                                          ; preds = %omap_dma_glbl_write.exit, %do.end
  %iszero = icmp eq i32 %and3, 0
  br i1 %iszero, label %cleanup.cleanup11_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

cleanup.cleanup11_crit_edge:                      ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup11

cleanup11:                                        ; preds = %cleanup.cleanup11_crit_edge, %omap_dma_glbl_read.exit.cleanup11_crit_edge
  %retval.0 = phi i32 [ 0, %omap_dma_glbl_read.exit.cleanup11_crit_edge ], [ 1, %cleanup.cleanup11_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %irq_lock) #10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_dma_glbl_read(ptr nocapture noundef readonly %od, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_map = getelementptr inbounds %struct.omap_dmadev, ptr %od, i32 0, i32 3
  %0 = ptrtoint ptr %reg_map to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_map, align 4
  %stride = getelementptr %struct.omap_dma_reg, ptr %1, i32 %reg, i32 1
  %2 = ptrtoint ptr %stride to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %stride, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end, !prof !144

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 364, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %add.ptr = getelementptr %struct.omap_dma_reg, ptr %1, i32 %reg
  %type = getelementptr %struct.omap_dma_reg, ptr %1, i32 %reg, i32 2
  %4 = ptrtoint ptr %type to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type, align 1
  %base = getelementptr inbounds %struct.omap_dmadev, ptr %od, i32 0, i32 2
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr, align 2
  %conv20 = zext i16 %9 to i32
  %add.ptr21 = getelementptr i8, ptr %7, i32 %conv20
  %10 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.82)
  switch i8 %5, label %do.end.i [
    i8 1, label %sw.bb.i
    i8 2, label %sw.bb1.i
    i8 3, label %sw.bb10.i
  ]

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21) #10, !srcloc !149
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  %conv.i = zext i16 %12 to i32
  br label %omap_dma_read.exit

sw.bb1.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21) #10, !srcloc !149
  %add.ptr.i = getelementptr i8, ptr %add.ptr21, i32 2
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i) #10, !srcloc !149
  %15 = zext i16 %14 to i32
  %16 = zext i16 %13 to i32
  %17 = shl nuw i32 %16, 16
  %18 = or i32 %17, %15
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  br label %omap_dma_read.exit

sw.bb10.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21) #10, !srcloc !150
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  br label %omap_dma_read.exit

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_read.exit

omap_dma_read.exit:                               ; preds = %do.end.i, %sw.bb10.i, %sw.bb1.i, %sw.bb.i
  %val.0.i = phi i32 [ 0, %do.end.i ], [ %21, %sw.bb10.i ], [ %19, %sw.bb1.i ], [ %conv.i, %sw.bb.i ]
  ret i32 %val.0.i
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @omap_dma_filter_fn(ptr nocapture noundef %chan, ptr nocapture noundef readonly %param) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
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
  %cmp = icmp eq ptr %5, getelementptr inbounds (%struct.platform_driver, ptr @omap_dma_driver, i32 0, i32 5)
  br i1 %cmp, label %if.then, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param, align 4
  %dma_requests = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 14
  %8 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %dma_requests, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3.not = icmp ugt i32 %7, %9
  br i1 %cmp3.not, label %if.then.return_crit_edge, label %cleanup

if.then.return_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

cleanup:                                          ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %dma_sig = getelementptr inbounds %struct.omap_chan, ptr %chan, i32 0, i32 5
  %10 = ptrtoint ptr %dma_sig to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %7, ptr %dma_sig, align 4
  br label %return

return:                                           ; preds = %cleanup, %if.then.return_crit_edge, %entry.return_crit_edge
  %retval.1 = phi i1 [ true, %cleanup ], [ false, %entry.return_crit_edge ], [ false, %if.then.return_crit_edge ]
  ret i1 %retval.1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_dma_simple_xlate(ptr noundef, ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_dma_init_gcr(ptr nocapture noundef readonly %od) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.omap_dmadev, ptr %od, i32 0, i32 5
  %0 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %cfg, align 4
  %rw_priority = getelementptr inbounds %struct.omap_dma_config, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %rw_priority to i32
  call void @__asan_load1_noabort(i32 %2)
  %bf.load = load i8, ptr %rw_priority, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %reg_map.i = getelementptr inbounds %struct.omap_dmadev, ptr %od, i32 0, i32 3
  %3 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %reg_map.i, align 4
  %stride.i = getelementptr %struct.omap_dma_reg, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %stride.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %stride.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not.i = icmp eq i8 %6, 0
  br i1 %tobool.not.i, label %if.end.if.end.i_crit_edge, label %do.end.i, !prof !144

if.end.if.end.i_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.end.if.end.i_crit_edge
  %type.i = getelementptr %struct.omap_dma_reg, ptr %4, i32 0, i32 2
  %7 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %type.i, align 1
  %base.i = getelementptr inbounds %struct.omap_dmadev, ptr %od, i32 0, i32 2
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %11 = ptrtoint ptr %4 to i32
  call void @__asan_load2_noabort(i32 %11)
  %12 = load i16, ptr %4, align 2
  %conv20.i = zext i16 %12 to i32
  %add.ptr21.i = getelementptr i8, ptr %10, i32 %conv20.i
  %13 = zext i8 %8 to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.83)
  switch i8 %8, label %do.end.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i, i16 4096) #10, !srcloc !145
  br label %cleanup

sw.bb1.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i, i16 4096) #10, !srcloc !145
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr21.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 256) #10, !srcloc !145
  br label %cleanup

sw.bb4.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 268435712) #10, !srcloc !146
  br label %cleanup

do.end.i.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dma_busy_notifier(ptr noundef %nb, i32 noundef %cmd, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %cmd)
  %cond = icmp eq i32 %cmd, 3
  br i1 %cond, label %sw.bb, label %entry.sw.epilog_crit_edge

entry.sw.epilog_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb:                                            ; preds = %entry
  %add.ptr = getelementptr i8, ptr %nb, i32 -424
  %call = tail call fastcc zeroext i1 @omap_dma_busy(ptr noundef %add.ptr)
  br i1 %call, label %sw.bb.cleanup_crit_edge, label %sw.bb.sw.epilog_crit_edge

sw.bb.sw.epilog_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %sw.epilog

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb.sw.epilog_crit_edge, %entry.sw.epilog_crit_edge
  br label %cleanup

cleanup:                                          ; preds = %sw.epilog, %sw.bb.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %sw.epilog ], [ 32770, %sw.bb.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_register_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dma_context_notifier(ptr noundef %nb, i32 noundef %cmd, ptr nocapture noundef readnone %v) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = zext i32 %cmd to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.84)
  switch i32 %cmd, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 5, label %sw.bb1
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %entry
  %add.ptr = getelementptr i8, ptr %nb, i32 -424
  %call = tail call fastcc zeroext i1 @omap_dma_busy(ptr noundef %add.ptr)
  br i1 %call, label %sw.bb.cleanup_crit_edge, label %if.end

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %sw.bb
  %reg_map.i.i = getelementptr i8, ptr %nb, i32 -12
  %1 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %reg_map.i.i, align 4
  %stride.i.i = getelementptr %struct.omap_dma_reg, ptr %2, i32 23, i32 1
  %3 = ptrtoint ptr %stride.i.i to i32
  call void @__asan_load1_noabort(i32 %3)
  %4 = load i8, ptr %stride.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %4)
  %tobool.not.i.i = icmp eq i8 %4, 0
  br i1 %tobool.not.i.i, label %if.end.if.end.i.i_crit_edge, label %do.end.i.i, !prof !144

if.end.if.end.i.i_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 364, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i

if.end.i.i:                                       ; preds = %do.end.i.i, %if.end.if.end.i.i_crit_edge
  %add.ptr.i.i = getelementptr %struct.omap_dma_reg, ptr %2, i32 23
  %type.i.i = getelementptr %struct.omap_dma_reg, ptr %2, i32 23, i32 2
  %5 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %type.i.i, align 1
  %base.i.i = getelementptr i8, ptr %nb, i32 -16
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  %9 = ptrtoint ptr %add.ptr.i.i to i32
  call void @__asan_load2_noabort(i32 %9)
  %10 = load i16, ptr %add.ptr.i.i, align 2
  %conv20.i.i = zext i16 %10 to i32
  %add.ptr21.i.i = getelementptr i8, ptr %8, i32 %conv20.i.i
  %11 = zext i8 %6 to i64
  call void @__sanitizer_cov_trace_switch(i64 %11, ptr @__sancov_gen_cov_switch_values.85)
  switch i8 %6, label %do.end.i.i.i [
    i8 1, label %sw.bb.i.i.i
    i8 2, label %sw.bb1.i.i.i
    i8 3, label %sw.bb10.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i.i) #10, !srcloc !149
  %13 = tail call i16 @llvm.bswap.i16(i16 %12) #10
  %conv.i.i.i = zext i16 %13 to i32
  br label %omap_dma_glbl_read.exit.i

sw.bb1.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i.i) #10, !srcloc !149
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr21.i.i, i32 2
  %15 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i.i) #10, !srcloc !149
  %16 = zext i16 %15 to i32
  %17 = zext i16 %14 to i32
  %18 = shl nuw i32 %17, 16
  %19 = or i32 %18, %16
  %20 = tail call i32 @llvm.bswap.i32(i32 %19) #10
  br label %omap_dma_glbl_read.exit.i

sw.bb10.i.i.i:                                    ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i.i) #10, !srcloc !150
  %22 = tail call i32 @llvm.bswap.i32(i32 %21) #10
  br label %omap_dma_glbl_read.exit.i

do.end.i.i.i:                                     ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_read.exit.i

omap_dma_glbl_read.exit.i:                        ; preds = %do.end.i.i.i, %sw.bb10.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %val.0.i.i.i = phi i32 [ 0, %do.end.i.i.i ], [ %22, %sw.bb10.i.i.i ], [ %20, %sw.bb1.i.i.i ], [ %conv.i.i.i, %sw.bb.i.i.i ]
  %context.i = getelementptr i8, ptr %nb, i32 12
  %23 = ptrtoint ptr %context.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %val.0.i.i.i, ptr %context.i, align 4
  %24 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %reg_map.i.i, align 4
  %stride.i15.i = getelementptr %struct.omap_dma_reg, ptr %25, i32 24, i32 1
  %26 = ptrtoint ptr %stride.i15.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %stride.i15.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool.not.i16.i = icmp eq i8 %27, 0
  br i1 %tobool.not.i16.i, label %omap_dma_glbl_read.exit.i.if.end.i23.i_crit_edge, label %do.end.i17.i, !prof !144

omap_dma_glbl_read.exit.i.if.end.i23.i_crit_edge: ; preds = %omap_dma_glbl_read.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i23.i

do.end.i17.i:                                     ; preds = %omap_dma_glbl_read.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 364, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i23.i

if.end.i23.i:                                     ; preds = %do.end.i17.i, %omap_dma_glbl_read.exit.i.if.end.i23.i_crit_edge
  %add.ptr.i18.i = getelementptr %struct.omap_dma_reg, ptr %25, i32 24
  %type.i19.i = getelementptr %struct.omap_dma_reg, ptr %25, i32 24, i32 2
  %28 = ptrtoint ptr %type.i19.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type.i19.i, align 1
  %30 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i, align 4
  %32 = ptrtoint ptr %add.ptr.i18.i to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i18.i, align 2
  %conv20.i21.i = zext i16 %33 to i32
  %add.ptr21.i22.i = getelementptr i8, ptr %31, i32 %conv20.i21.i
  %34 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.86)
  switch i8 %29, label %do.end.i.i29.i [
    i8 1, label %sw.bb.i.i25.i
    i8 2, label %sw.bb1.i.i27.i
    i8 3, label %sw.bb10.i.i28.i
  ]

sw.bb.i.i25.i:                                    ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i22.i) #10, !srcloc !149
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #10
  %conv.i.i24.i = zext i16 %36 to i32
  br label %omap_dma_glbl_read.exit31.i

sw.bb1.i.i27.i:                                   ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i22.i) #10, !srcloc !149
  %add.ptr.i.i26.i = getelementptr i8, ptr %add.ptr21.i22.i, i32 2
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i26.i) #10, !srcloc !149
  %39 = zext i16 %38 to i32
  %40 = zext i16 %37 to i32
  %41 = shl nuw i32 %40, 16
  %42 = or i32 %41, %39
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  br label %omap_dma_glbl_read.exit31.i

sw.bb10.i.i28.i:                                  ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i22.i) #10, !srcloc !150
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  br label %omap_dma_glbl_read.exit31.i

do.end.i.i29.i:                                   ; preds = %if.end.i23.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_read.exit31.i

omap_dma_glbl_read.exit31.i:                      ; preds = %do.end.i.i29.i, %sw.bb10.i.i28.i, %sw.bb1.i.i27.i, %sw.bb.i.i25.i
  %val.0.i.i30.i = phi i32 [ 0, %do.end.i.i29.i ], [ %45, %sw.bb10.i.i28.i ], [ %43, %sw.bb1.i.i27.i ], [ %conv.i.i24.i, %sw.bb.i.i25.i ]
  %irqenable_l1.i = getelementptr i8, ptr %nb, i32 16
  %46 = ptrtoint ptr %irqenable_l1.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %val.0.i.i30.i, ptr %irqenable_l1.i, align 4
  %47 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %reg_map.i.i, align 4
  %stride.i33.i = getelementptr %struct.omap_dma_reg, ptr %48, i32 28, i32 1
  %49 = ptrtoint ptr %stride.i33.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %stride.i33.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i34.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i34.i, label %omap_dma_glbl_read.exit31.i.if.end.i41.i_crit_edge, label %do.end.i35.i, !prof !144

omap_dma_glbl_read.exit31.i.if.end.i41.i_crit_edge: ; preds = %omap_dma_glbl_read.exit31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i41.i

do.end.i35.i:                                     ; preds = %omap_dma_glbl_read.exit31.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 364, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i41.i

if.end.i41.i:                                     ; preds = %do.end.i35.i, %omap_dma_glbl_read.exit31.i.if.end.i41.i_crit_edge
  %add.ptr.i36.i = getelementptr %struct.omap_dma_reg, ptr %48, i32 28
  %type.i37.i = getelementptr %struct.omap_dma_reg, ptr %48, i32 28, i32 2
  %51 = ptrtoint ptr %type.i37.i to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %type.i37.i, align 1
  %53 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i, align 4
  %55 = ptrtoint ptr %add.ptr.i36.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %add.ptr.i36.i, align 2
  %conv20.i39.i = zext i16 %56 to i32
  %add.ptr21.i40.i = getelementptr i8, ptr %54, i32 %conv20.i39.i
  %57 = zext i8 %52 to i64
  call void @__sanitizer_cov_trace_switch(i64 %57, ptr @__sancov_gen_cov_switch_values.87)
  switch i8 %52, label %do.end.i.i47.i [
    i8 1, label %sw.bb.i.i43.i
    i8 2, label %sw.bb1.i.i45.i
    i8 3, label %sw.bb10.i.i46.i
  ]

sw.bb.i.i43.i:                                    ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i40.i) #10, !srcloc !149
  %59 = tail call i16 @llvm.bswap.i16(i16 %58) #10
  %conv.i.i42.i = zext i16 %59 to i32
  br label %omap_dma_glbl_read.exit49.i

sw.bb1.i.i45.i:                                   ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  %60 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i40.i) #10, !srcloc !149
  %add.ptr.i.i44.i = getelementptr i8, ptr %add.ptr21.i40.i, i32 2
  %61 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i44.i) #10, !srcloc !149
  %62 = zext i16 %61 to i32
  %63 = zext i16 %60 to i32
  %64 = shl nuw i32 %63, 16
  %65 = or i32 %64, %62
  %66 = tail call i32 @llvm.bswap.i32(i32 %65) #10
  br label %omap_dma_glbl_read.exit49.i

sw.bb10.i.i46.i:                                  ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i40.i) #10, !srcloc !150
  %68 = tail call i32 @llvm.bswap.i32(i32 %67) #10
  br label %omap_dma_glbl_read.exit49.i

do.end.i.i47.i:                                   ; preds = %if.end.i41.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_read.exit49.i

omap_dma_glbl_read.exit49.i:                      ; preds = %do.end.i.i47.i, %sw.bb10.i.i46.i, %sw.bb1.i.i45.i, %sw.bb.i.i43.i
  %val.0.i.i48.i = phi i32 [ 0, %do.end.i.i47.i ], [ %68, %sw.bb10.i.i46.i ], [ %66, %sw.bb1.i.i45.i ], [ %conv.i.i42.i, %sw.bb.i.i43.i ]
  %ocp_sysconfig.i = getelementptr i8, ptr %nb, i32 20
  %69 = ptrtoint ptr %ocp_sysconfig.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %val.0.i.i48.i, ptr %ocp_sysconfig.i, align 4
  %70 = ptrtoint ptr %reg_map.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %reg_map.i.i, align 4
  %stride.i51.i = getelementptr %struct.omap_dma_reg, ptr %71, i32 0, i32 1
  %72 = ptrtoint ptr %stride.i51.i to i32
  call void @__asan_load1_noabort(i32 %72)
  %73 = load i8, ptr %stride.i51.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %73)
  %tobool.not.i52.i = icmp eq i8 %73, 0
  br i1 %tobool.not.i52.i, label %omap_dma_glbl_read.exit49.i.if.end.i58.i_crit_edge, label %do.end.i53.i, !prof !144

omap_dma_glbl_read.exit49.i.if.end.i58.i_crit_edge: ; preds = %omap_dma_glbl_read.exit49.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i58.i

do.end.i53.i:                                     ; preds = %omap_dma_glbl_read.exit49.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 364, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i58.i

if.end.i58.i:                                     ; preds = %do.end.i53.i, %omap_dma_glbl_read.exit49.i.if.end.i58.i_crit_edge
  %type.i54.i = getelementptr %struct.omap_dma_reg, ptr %71, i32 0, i32 2
  %74 = ptrtoint ptr %type.i54.i to i32
  call void @__asan_load1_noabort(i32 %74)
  %75 = load i8, ptr %type.i54.i, align 1
  %76 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i.i, align 4
  %78 = ptrtoint ptr %71 to i32
  call void @__asan_load2_noabort(i32 %78)
  %79 = load i16, ptr %71, align 2
  %conv20.i56.i = zext i16 %79 to i32
  %add.ptr21.i57.i = getelementptr i8, ptr %77, i32 %conv20.i56.i
  %80 = zext i8 %75 to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.88)
  switch i8 %75, label %do.end.i.i64.i [
    i8 1, label %sw.bb.i.i60.i
    i8 2, label %sw.bb1.i.i62.i
    i8 3, label %sw.bb10.i.i63.i
  ]

sw.bb.i.i60.i:                                    ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i57.i) #10, !srcloc !149
  %82 = tail call i16 @llvm.bswap.i16(i16 %81) #10
  %conv.i.i59.i = zext i16 %82 to i32
  br label %omap_dma_context_save.exit

sw.bb1.i.i62.i:                                   ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  %83 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i57.i) #10, !srcloc !149
  %add.ptr.i.i61.i = getelementptr i8, ptr %add.ptr21.i57.i, i32 2
  %84 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i61.i) #10, !srcloc !149
  %85 = zext i16 %84 to i32
  %86 = zext i16 %83 to i32
  %87 = shl nuw i32 %86, 16
  %88 = or i32 %87, %85
  %89 = tail call i32 @llvm.bswap.i32(i32 %88) #10
  br label %omap_dma_context_save.exit

sw.bb10.i.i63.i:                                  ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  %90 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i57.i) #10, !srcloc !150
  %91 = tail call i32 @llvm.bswap.i32(i32 %90) #10
  br label %omap_dma_context_save.exit

do.end.i.i64.i:                                   ; preds = %if.end.i58.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_context_save.exit

omap_dma_context_save.exit:                       ; preds = %do.end.i.i64.i, %sw.bb10.i.i63.i, %sw.bb1.i.i62.i, %sw.bb.i.i60.i
  %val.0.i.i65.i = phi i32 [ 0, %do.end.i.i64.i ], [ %91, %sw.bb10.i.i63.i ], [ %89, %sw.bb1.i.i62.i ], [ %conv.i.i59.i, %sw.bb.i.i60.i ]
  %gcr.i = getelementptr i8, ptr %nb, i32 24
  %92 = ptrtoint ptr %gcr.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store i32 %val.0.i.i65.i, ptr %gcr.i, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  %context.i4 = getelementptr i8, ptr %nb, i32 12
  %gcr.i5 = getelementptr i8, ptr %nb, i32 24
  %93 = ptrtoint ptr %gcr.i5 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %gcr.i5, align 4
  %reg_map.i.i6 = getelementptr i8, ptr %nb, i32 -12
  %95 = ptrtoint ptr %reg_map.i.i6 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %reg_map.i.i6, align 4
  %stride.i.i7 = getelementptr %struct.omap_dma_reg, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %stride.i.i7 to i32
  call void @__asan_load1_noabort(i32 %97)
  %98 = load i8, ptr %stride.i.i7, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %98)
  %tobool.not.i.i8 = icmp eq i8 %98, 0
  br i1 %tobool.not.i.i8, label %sw.bb1.if.end.i.i14_crit_edge, label %do.end.i.i9, !prof !144

sw.bb1.if.end.i.i14_crit_edge:                    ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i.i14

do.end.i.i9:                                      ; preds = %sw.bb1
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i.i14

if.end.i.i14:                                     ; preds = %do.end.i.i9, %sw.bb1.if.end.i.i14_crit_edge
  %type.i.i10 = getelementptr %struct.omap_dma_reg, ptr %96, i32 0, i32 2
  %99 = ptrtoint ptr %type.i.i10 to i32
  call void @__asan_load1_noabort(i32 %99)
  %100 = load i8, ptr %type.i.i10, align 1
  %base.i.i11 = getelementptr i8, ptr %nb, i32 -16
  %101 = ptrtoint ptr %base.i.i11 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i.i11, align 4
  %103 = ptrtoint ptr %96 to i32
  call void @__asan_load2_noabort(i32 %103)
  %104 = load i16, ptr %96, align 2
  %conv20.i.i12 = zext i16 %104 to i32
  %add.ptr21.i.i13 = getelementptr i8, ptr %102, i32 %conv20.i.i12
  %105 = zext i8 %100 to i64
  call void @__sanitizer_cov_trace_switch(i64 %105, ptr @__sancov_gen_cov_switch_values.89)
  switch i8 %100, label %do.end.i.i.i19 [
    i8 1, label %sw.bb.i.i.i16
    i8 2, label %sw.bb1.i.i.i18
    i8 3, label %sw.bb4.i.i.i
  ]

sw.bb.i.i.i16:                                    ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i.i15 = trunc i32 %94 to i16
  %106 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i.i15) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i.i13, i16 %106) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit.i

sw.bb1.i.i.i18:                                   ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i.i = trunc i32 %94 to i16
  %107 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i.i13, i16 %107) #10, !srcloc !145
  %shr.i.i.i = lshr i32 %94, 16
  %conv3.i.i.i = trunc i32 %shr.i.i.i to i16
  %108 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i.i) #10
  %add.ptr.i.i.i17 = getelementptr i8, ptr %add.ptr21.i.i13, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i17, i16 %108) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit.i

sw.bb4.i.i.i:                                     ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #12
  %109 = tail call i32 @llvm.bswap.i32(i32 %94) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i.i13, i32 %109) #10, !srcloc !146
  br label %omap_dma_glbl_write.exit.i

do.end.i.i.i19:                                   ; preds = %if.end.i.i14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_write.exit.i

omap_dma_glbl_write.exit.i:                       ; preds = %do.end.i.i.i19, %sw.bb4.i.i.i, %sw.bb1.i.i.i18, %sw.bb.i.i.i16
  %ocp_sysconfig.i20 = getelementptr i8, ptr %nb, i32 20
  %110 = ptrtoint ptr %ocp_sysconfig.i20 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ocp_sysconfig.i20, align 4
  %112 = ptrtoint ptr %reg_map.i.i6 to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %reg_map.i.i6, align 4
  %stride.i18.i = getelementptr %struct.omap_dma_reg, ptr %113, i32 28, i32 1
  %114 = ptrtoint ptr %stride.i18.i to i32
  call void @__asan_load1_noabort(i32 %114)
  %115 = load i8, ptr %stride.i18.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %115)
  %tobool.not.i19.i = icmp eq i8 %115, 0
  br i1 %tobool.not.i19.i, label %omap_dma_glbl_write.exit.i.if.end.i25.i_crit_edge, label %do.end.i20.i, !prof !144

omap_dma_glbl_write.exit.i.if.end.i25.i_crit_edge: ; preds = %omap_dma_glbl_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i25.i

do.end.i20.i:                                     ; preds = %omap_dma_glbl_write.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i25.i

if.end.i25.i:                                     ; preds = %do.end.i20.i, %omap_dma_glbl_write.exit.i.if.end.i25.i_crit_edge
  %add.ptr.i.i21 = getelementptr %struct.omap_dma_reg, ptr %113, i32 28
  %type.i21.i = getelementptr %struct.omap_dma_reg, ptr %113, i32 28, i32 2
  %116 = ptrtoint ptr %type.i21.i to i32
  call void @__asan_load1_noabort(i32 %116)
  %117 = load i8, ptr %type.i21.i, align 1
  %118 = ptrtoint ptr %base.i.i11 to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i.i11, align 4
  %120 = ptrtoint ptr %add.ptr.i.i21 to i32
  call void @__asan_load2_noabort(i32 %120)
  %121 = load i16, ptr %add.ptr.i.i21, align 2
  %conv20.i23.i = zext i16 %121 to i32
  %add.ptr21.i24.i = getelementptr i8, ptr %119, i32 %conv20.i23.i
  %122 = zext i8 %117 to i64
  call void @__sanitizer_cov_trace_switch(i64 %122, ptr @__sancov_gen_cov_switch_values.90)
  switch i8 %117, label %do.end.i.i34.i [
    i8 1, label %sw.bb.i.i27.i
    i8 2, label %sw.bb1.i.i32.i
    i8 3, label %sw.bb4.i.i33.i
  ]

sw.bb.i.i27.i:                                    ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i26.i = trunc i32 %111 to i16
  %123 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i26.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i24.i, i16 %123) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit35.i

sw.bb1.i.i32.i:                                   ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i28.i = trunc i32 %111 to i16
  %124 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i28.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i24.i, i16 %124) #10, !srcloc !145
  %shr.i.i29.i = lshr i32 %111, 16
  %conv3.i.i30.i = trunc i32 %shr.i.i29.i to i16
  %125 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i30.i) #10
  %add.ptr.i.i31.i = getelementptr i8, ptr %add.ptr21.i24.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i31.i, i16 %125) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit35.i

sw.bb4.i.i33.i:                                   ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  %126 = tail call i32 @llvm.bswap.i32(i32 %111) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i24.i, i32 %126) #10, !srcloc !146
  br label %omap_dma_glbl_write.exit35.i

do.end.i.i34.i:                                   ; preds = %if.end.i25.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_write.exit35.i

omap_dma_glbl_write.exit35.i:                     ; preds = %do.end.i.i34.i, %sw.bb4.i.i33.i, %sw.bb1.i.i32.i, %sw.bb.i.i27.i
  %127 = ptrtoint ptr %context.i4 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load i32, ptr %context.i4, align 4
  %129 = ptrtoint ptr %reg_map.i.i6 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %reg_map.i.i6, align 4
  %stride.i37.i = getelementptr %struct.omap_dma_reg, ptr %130, i32 23, i32 1
  %131 = ptrtoint ptr %stride.i37.i to i32
  call void @__asan_load1_noabort(i32 %131)
  %132 = load i8, ptr %stride.i37.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %132)
  %tobool.not.i38.i = icmp eq i8 %132, 0
  br i1 %tobool.not.i38.i, label %omap_dma_glbl_write.exit35.i.if.end.i45.i_crit_edge, label %do.end.i39.i, !prof !144

omap_dma_glbl_write.exit35.i.if.end.i45.i_crit_edge: ; preds = %omap_dma_glbl_write.exit35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i45.i

do.end.i39.i:                                     ; preds = %omap_dma_glbl_write.exit35.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i45.i

if.end.i45.i:                                     ; preds = %do.end.i39.i, %omap_dma_glbl_write.exit35.i.if.end.i45.i_crit_edge
  %add.ptr.i40.i = getelementptr %struct.omap_dma_reg, ptr %130, i32 23
  %type.i41.i = getelementptr %struct.omap_dma_reg, ptr %130, i32 23, i32 2
  %133 = ptrtoint ptr %type.i41.i to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %type.i41.i, align 1
  %135 = ptrtoint ptr %base.i.i11 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i.i11, align 4
  %137 = ptrtoint ptr %add.ptr.i40.i to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %add.ptr.i40.i, align 2
  %conv20.i43.i = zext i16 %138 to i32
  %add.ptr21.i44.i = getelementptr i8, ptr %136, i32 %conv20.i43.i
  %139 = zext i8 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.91)
  switch i8 %134, label %do.end.i.i54.i [
    i8 1, label %sw.bb.i.i47.i
    i8 2, label %sw.bb1.i.i52.i
    i8 3, label %sw.bb4.i.i53.i
  ]

sw.bb.i.i47.i:                                    ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i46.i = trunc i32 %128 to i16
  %140 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i46.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i44.i, i16 %140) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit55.i

sw.bb1.i.i52.i:                                   ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i48.i = trunc i32 %128 to i16
  %141 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i48.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i44.i, i16 %141) #10, !srcloc !145
  %shr.i.i49.i = lshr i32 %128, 16
  %conv3.i.i50.i = trunc i32 %shr.i.i49.i to i16
  %142 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i50.i) #10
  %add.ptr.i.i51.i = getelementptr i8, ptr %add.ptr21.i44.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i51.i, i16 %142) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit55.i

sw.bb4.i.i53.i:                                   ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  %143 = tail call i32 @llvm.bswap.i32(i32 %128) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i44.i, i32 %143) #10, !srcloc !146
  br label %omap_dma_glbl_write.exit55.i

do.end.i.i54.i:                                   ; preds = %if.end.i45.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_write.exit55.i

omap_dma_glbl_write.exit55.i:                     ; preds = %do.end.i.i54.i, %sw.bb4.i.i53.i, %sw.bb1.i.i52.i, %sw.bb.i.i47.i
  %irqenable_l1.i22 = getelementptr i8, ptr %nb, i32 16
  %144 = ptrtoint ptr %irqenable_l1.i22 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %irqenable_l1.i22, align 4
  %146 = ptrtoint ptr %reg_map.i.i6 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %reg_map.i.i6, align 4
  %stride.i57.i = getelementptr %struct.omap_dma_reg, ptr %147, i32 24, i32 1
  %148 = ptrtoint ptr %stride.i57.i to i32
  call void @__asan_load1_noabort(i32 %148)
  %149 = load i8, ptr %stride.i57.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %149)
  %tobool.not.i58.i = icmp eq i8 %149, 0
  br i1 %tobool.not.i58.i, label %omap_dma_glbl_write.exit55.i.if.end.i65.i_crit_edge, label %do.end.i59.i, !prof !144

omap_dma_glbl_write.exit55.i.if.end.i65.i_crit_edge: ; preds = %omap_dma_glbl_write.exit55.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i65.i

do.end.i59.i:                                     ; preds = %omap_dma_glbl_write.exit55.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i65.i

if.end.i65.i:                                     ; preds = %do.end.i59.i, %omap_dma_glbl_write.exit55.i.if.end.i65.i_crit_edge
  %add.ptr.i60.i = getelementptr %struct.omap_dma_reg, ptr %147, i32 24
  %type.i61.i = getelementptr %struct.omap_dma_reg, ptr %147, i32 24, i32 2
  %150 = ptrtoint ptr %type.i61.i to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %type.i61.i, align 1
  %152 = ptrtoint ptr %base.i.i11 to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %base.i.i11, align 4
  %154 = ptrtoint ptr %add.ptr.i60.i to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %add.ptr.i60.i, align 2
  %conv20.i63.i = zext i16 %155 to i32
  %add.ptr21.i64.i = getelementptr i8, ptr %153, i32 %conv20.i63.i
  %156 = zext i8 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.92)
  switch i8 %151, label %do.end.i.i74.i [
    i8 1, label %sw.bb.i.i67.i
    i8 2, label %sw.bb1.i.i72.i
    i8 3, label %sw.bb4.i.i73.i
  ]

sw.bb.i.i67.i:                                    ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i66.i = trunc i32 %145 to i16
  %157 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i66.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i64.i, i16 %157) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit75.i

sw.bb1.i.i72.i:                                   ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i68.i = trunc i32 %145 to i16
  %158 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i68.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i64.i, i16 %158) #10, !srcloc !145
  %shr.i.i69.i = lshr i32 %145, 16
  %conv3.i.i70.i = trunc i32 %shr.i.i69.i to i16
  %159 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i70.i) #10
  %add.ptr.i.i71.i = getelementptr i8, ptr %add.ptr21.i64.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i71.i, i16 %159) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit75.i

sw.bb4.i.i73.i:                                   ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  %160 = tail call i32 @llvm.bswap.i32(i32 %145) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i64.i, i32 %160) #10, !srcloc !146
  br label %omap_dma_glbl_write.exit75.i

do.end.i.i74.i:                                   ; preds = %if.end.i65.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_write.exit75.i

omap_dma_glbl_write.exit75.i:                     ; preds = %do.end.i.i74.i, %sw.bb4.i.i73.i, %sw.bb1.i.i72.i, %sw.bb.i.i67.i
  %plat.i = getelementptr i8, ptr %nb, i32 -8
  %161 = ptrtoint ptr %plat.i to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load ptr, ptr %plat.i, align 4
  %errata.i = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %162, i32 0, i32 3
  %163 = ptrtoint ptr %errata.i to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %errata.i, align 4
  %and.i = and i32 %164, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %omap_dma_glbl_write.exit75.i.if.end.i_crit_edge, label %if.then.i

omap_dma_glbl_write.exit75.i.if.end.i_crit_edge:  ; preds = %omap_dma_glbl_write.exit75.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %omap_dma_glbl_write.exit75.i
  %165 = ptrtoint ptr %reg_map.i.i6 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %reg_map.i.i6, align 4
  %stride.i77.i = getelementptr %struct.omap_dma_reg, ptr %166, i32 19, i32 1
  %167 = ptrtoint ptr %stride.i77.i to i32
  call void @__asan_load1_noabort(i32 %167)
  %168 = load i8, ptr %stride.i77.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %168)
  %tobool.not.i78.i = icmp eq i8 %168, 0
  br i1 %tobool.not.i78.i, label %if.then.i.if.end.i85.i_crit_edge, label %do.end.i79.i, !prof !144

if.then.i.if.end.i85.i_crit_edge:                 ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i85.i

do.end.i79.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i85.i

if.end.i85.i:                                     ; preds = %do.end.i79.i, %if.then.i.if.end.i85.i_crit_edge
  %add.ptr.i80.i = getelementptr %struct.omap_dma_reg, ptr %166, i32 19
  %type.i81.i = getelementptr %struct.omap_dma_reg, ptr %166, i32 19, i32 2
  %169 = ptrtoint ptr %type.i81.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %type.i81.i, align 1
  %171 = ptrtoint ptr %base.i.i11 to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %base.i.i11, align 4
  %173 = ptrtoint ptr %add.ptr.i80.i to i32
  call void @__asan_load2_noabort(i32 %173)
  %174 = load i16, ptr %add.ptr.i80.i, align 2
  %conv20.i83.i = zext i16 %174 to i32
  %add.ptr21.i84.i = getelementptr i8, ptr %172, i32 %conv20.i83.i
  %175 = zext i8 %170 to i64
  call void @__sanitizer_cov_trace_switch(i64 %175, ptr @__sancov_gen_cov_switch_values.93)
  switch i8 %170, label %do.end.i.i90.i [
    i8 1, label %sw.bb.i.i86.i
    i8 2, label %sw.bb1.i.i88.i
    i8 3, label %sw.bb4.i.i89.i
  ]

sw.bb.i.i86.i:                                    ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i84.i, i16 0) #10, !srcloc !145
  br label %if.end.i

sw.bb1.i.i88.i:                                   ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i84.i, i16 0) #10, !srcloc !145
  %add.ptr.i.i87.i = getelementptr i8, ptr %add.ptr21.i84.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i87.i, i16 0) #10, !srcloc !145
  br label %if.end.i

sw.bb4.i.i89.i:                                   ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i84.i, i32 0) #10, !srcloc !146
  br label %if.end.i

do.end.i.i90.i:                                   ; preds = %if.end.i85.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i.i90.i, %sw.bb4.i.i89.i, %sw.bb1.i.i88.i, %sw.bb.i.i86.i, %omap_dma_glbl_write.exit75.i.if.end.i_crit_edge
  %lch_count.i = getelementptr i8, ptr %nb, i32 28
  %176 = ptrtoint ptr %lch_count.i to i32
  call void @__asan_load4_noabort(i32 %176)
  %177 = load i32, ptr %lch_count.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %177)
  %cmp94.i = icmp sgt i32 %177, 0
  br i1 %cmp94.i, label %for.body.lr.ph.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph.i:                                 ; preds = %if.end.i
  %lch_map.i.i = getelementptr i8, ptr %nb, i32 188
  %cfg.i.i = getelementptr i8, ptr %nb, i32 -4
  br label %for.body.i

for.body.i:                                       ; preds = %omap_dma_clear_lch.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.095.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %omap_dma_clear_lch.exit.i.for.body.i_crit_edge ]
  %178 = ptrtoint ptr %lch_map.i.i to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load ptr, ptr %lch_map.i.i, align 4
  %arrayidx.i.i = getelementptr ptr, ptr %179, i32 %i.095.i
  %180 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %180)
  %181 = load ptr, ptr %arrayidx.i.i, align 4
  %tobool.not.i92.i = icmp eq ptr %181, null
  br i1 %tobool.not.i92.i, label %for.body.i.omap_dma_clear_lch.exit.i_crit_edge, label %for.cond.preheader.i.i

for.body.i.omap_dma_clear_lch.exit.i_crit_edge:   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_dma_clear_lch.exit.i

for.cond.preheader.i.i:                           ; preds = %for.body.i
  %182 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load ptr, ptr %cfg.i.i, align 4
  %184 = ptrtoint ptr %183 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %183, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %185)
  %cmp.not6.i.i = icmp slt i32 %185, 32
  br i1 %cmp.not6.i.i, label %for.cond.preheader.i.i.omap_dma_clear_lch.exit.i_crit_edge, label %for.body.lr.ph.i.i

for.cond.preheader.i.i.omap_dma_clear_lch.exit.i_crit_edge: ; preds = %for.cond.preheader.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_dma_clear_lch.exit.i

for.body.lr.ph.i.i:                               ; preds = %for.cond.preheader.i.i
  %reg_map.i.i.i = getelementptr inbounds %struct.omap_chan, ptr %181, i32 0, i32 2
  %channel_base.i.i.i = getelementptr inbounds %struct.omap_chan, ptr %181, i32 0, i32 1
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %omap_dma_chan_write.exit.i.i.for.body.i.i_crit_edge, %for.body.lr.ph.i.i
  %i.07.i.i = phi i32 [ 32, %for.body.lr.ph.i.i ], [ %inc.i.i, %omap_dma_chan_write.exit.i.i.for.body.i.i_crit_edge ]
  %186 = ptrtoint ptr %reg_map.i.i.i to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %reg_map.i.i.i, align 4
  %add.ptr.i.i93.i = getelementptr %struct.omap_dma_reg, ptr %187, i32 %i.07.i.i
  %type.i.i.i = getelementptr %struct.omap_dma_reg, ptr %187, i32 %i.07.i.i, i32 2
  %188 = ptrtoint ptr %type.i.i.i to i32
  call void @__asan_load1_noabort(i32 %188)
  %189 = load i8, ptr %type.i.i.i, align 1
  %190 = ptrtoint ptr %channel_base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %190)
  %191 = load ptr, ptr %channel_base.i.i.i, align 4
  %192 = ptrtoint ptr %add.ptr.i.i93.i to i32
  call void @__asan_load2_noabort(i32 %192)
  %193 = load i16, ptr %add.ptr.i.i93.i, align 2
  %conv1.i.i.i = zext i16 %193 to i32
  %add.ptr2.i.i.i = getelementptr i8, ptr %191, i32 %conv1.i.i.i
  %194 = zext i8 %189 to i64
  call void @__sanitizer_cov_trace_switch(i64 %194, ptr @__sancov_gen_cov_switch_values.94)
  switch i8 %189, label %do.end.i.i.i.i [
    i8 1, label %sw.bb.i.i.i.i
    i8 2, label %sw.bb1.i.i.i.i
    i8 3, label %sw.bb4.i.i.i.i
  ]

sw.bb.i.i.i.i:                                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i.i, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit.i.i

sw.bb1.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i.i, i16 0) #10, !srcloc !145
  %add.ptr.i.i.i.i = getelementptr i8, ptr %add.ptr2.i.i.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i.i, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit.i.i

sw.bb4.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i.i, i32 0) #10, !srcloc !146
  br label %omap_dma_chan_write.exit.i.i

do.end.i.i.i.i:                                   ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit.i.i

omap_dma_chan_write.exit.i.i:                     ; preds = %do.end.i.i.i.i, %sw.bb4.i.i.i.i, %sw.bb1.i.i.i.i, %sw.bb.i.i.i.i
  %inc.i.i = add i32 %i.07.i.i, 1
  %195 = ptrtoint ptr %cfg.i.i to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %cfg.i.i, align 4
  %197 = ptrtoint ptr %196 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load i32, ptr %196, align 4
  %cmp.not.i.i = icmp sgt i32 %inc.i.i, %198
  br i1 %cmp.not.i.i, label %omap_dma_chan_write.exit.i.i.omap_dma_clear_lch.exit.i_crit_edge, label %omap_dma_chan_write.exit.i.i.for.body.i.i_crit_edge

omap_dma_chan_write.exit.i.i.for.body.i.i_crit_edge: ; preds = %omap_dma_chan_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

omap_dma_chan_write.exit.i.i.omap_dma_clear_lch.exit.i_crit_edge: ; preds = %omap_dma_chan_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %omap_dma_clear_lch.exit.i

omap_dma_clear_lch.exit.i:                        ; preds = %omap_dma_chan_write.exit.i.i.omap_dma_clear_lch.exit.i_crit_edge, %for.cond.preheader.i.i.omap_dma_clear_lch.exit.i_crit_edge, %for.body.i.omap_dma_clear_lch.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i.095.i, 1
  %199 = ptrtoint ptr %lch_count.i to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load i32, ptr %lch_count.i, align 4
  %cmp.i = icmp slt i32 %inc.i, %200
  br i1 %cmp.i, label %omap_dma_clear_lch.exit.i.for.body.i_crit_edge, label %omap_dma_clear_lch.exit.i.cleanup_crit_edge

omap_dma_clear_lch.exit.i.cleanup_crit_edge:      ; preds = %omap_dma_clear_lch.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

omap_dma_clear_lch.exit.i.for.body.i_crit_edge:   ; preds = %omap_dma_clear_lch.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup:                                          ; preds = %omap_dma_clear_lch.exit.i.cleanup_crit_edge, %if.end.i.cleanup_crit_edge, %omap_dma_context_save.exit, %sw.bb.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 32770, %sw.bb.cleanup_crit_edge ], [ 1, %entry.cleanup_crit_edge ], [ 1, %omap_dma_context_save.exit ], [ 1, %if.end.i.cleanup_crit_edge ], [ 1, %omap_dma_clear_lch.exit.i.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @omap_request_dma(i32 noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_dma_callback(i32 noundef %ch, i16 noundef zeroext %status, ptr noundef %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %data, i32 0, i32 3
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %desc = getelementptr inbounds %struct.omap_chan, ptr %data, i32 0, i32 10
  %0 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end15_crit_edge, label %if.then

entry.if.end15_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then:                                          ; preds = %entry
  %cyclic = getelementptr inbounds %struct.omap_chan, ptr %data, i32 0, i32 6
  %2 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cyclic, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool5.not = icmp eq i8 %3, 0
  br i1 %tobool5.not, label %if.else, label %if.then6

if.then6:                                         ; preds = %if.then
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %5, i32 0, i32 9
  %6 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %1, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %5, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then6.if.end15_crit_edge

if.then6.if.end15_crit_edge:                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then.i.i:                                      ; preds = %if.then6
  call void @__sanitizer_cov_trace_pc() #12
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %5, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #10
  br label %if.end15

if.else:                                          ; preds = %if.then
  %using_ll = getelementptr inbounds %struct.omap_desc, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %using_ll to i32
  call void @__asan_load1_noabort(i32 %7)
  %8 = load i8, ptr %using_ll, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %8)
  %tobool7.not = icmp eq i8 %8, 0
  br i1 %tobool7.not, label %lor.lhs.false, label %if.else.if.then11_crit_edge

if.else.if.then11_crit_edge:                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

lor.lhs.false:                                    ; preds = %if.else
  %sgidx = getelementptr inbounds %struct.omap_chan, ptr %data, i32 0, i32 11
  %9 = ptrtoint ptr %sgidx to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %sgidx, align 4
  %sglen = getelementptr inbounds %struct.omap_desc, ptr %1, i32 0, i32 12
  %11 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %10, i32 %12)
  %cmp9 = icmp eq i32 %10, %12
  br i1 %cmp9, label %lor.lhs.false.if.then11_crit_edge, label %if.else13

lor.lhs.false.if.then11_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then11

if.then11:                                        ; preds = %lor.lhs.false.if.then11_crit_edge, %if.else.if.then11_crit_edge
  tail call fastcc void @omap_dma_start_desc(ptr noundef %data)
  %chan.i29 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %chan.i29 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan.i29, align 4
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i.i = icmp slt i32 %16, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !143

do.body2.i.i:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ti/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !152
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then11
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %14, i32 0, i32 3
  %17 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %completed_cookie.i.i, align 4
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 0, ptr %1, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@omap_dma_callback, %do.end.i)) #10
          to label %if.then.i [label %do.end.i], !srcloc !148

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %14, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug236, ptr noundef %22, ptr noundef nonnull @.str.44, ptr noundef nonnull %1, i32 noundef %16) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %1, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %14, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %14, i32 0, i32 7, i32 1
  %23 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %24, ptr noundef %desc_completed.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %node.i, ptr %prev.i.i, align 4
  %26 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %1, i32 0, i32 2, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %node.i, ptr %24, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i30 = getelementptr inbounds %struct.virt_dma_chan, ptr %14, i32 0, i32 1, i32 1
  %call.i.i31 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i30) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i31)
  %tobool.not.i.i32 = icmp eq i32 %call.i.i31, 0
  br i1 %tobool.not.i.i32, label %if.then.i.i34, label %list_add_tail.exit.i.if.end15_crit_edge

list_add_tail.exit.i.if.end15_crit_edge:          ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then.i.i34:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %task.i33 = getelementptr inbounds %struct.virt_dma_chan, ptr %14, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i33) #10
  br label %if.end15

if.else13:                                        ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @omap_dma_start_sg(ptr noundef %data, ptr noundef nonnull %1)
  br label %if.end15

if.end15:                                         ; preds = %if.else13, %if.then.i.i34, %list_add_tail.exit.i.if.end15_crit_edge, %if.then.i.i, %if.then6.if.end15_crit_edge, %entry.if.end15_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_dma_start_desc(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %0 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %1, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -108
  %tobool.not109 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not109
  br i1 %tobool.not, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %desc = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 10
  %2 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr null, ptr %desc, align 4
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %1) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %1, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %desc2 = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 10
  %11 = ptrtoint ptr %desc2 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %add.ptr.i, ptr %desc2, align 4
  %sgidx = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 11
  %12 = ptrtoint ptr %sgidx to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %sgidx, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !155
  tail call void @arm_heavy_mb() #10
  %ccr = getelementptr i8, ptr %1, i32 32
  %13 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ccr, align 4
  %reg_map.i = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 2
  %15 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i32 = getelementptr %struct.omap_dma_reg, ptr %16, i32 33
  %type.i = getelementptr %struct.omap_dma_reg, ptr %16, i32 33, i32 2
  %17 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %17)
  %18 = load i8, ptr %type.i, align 1
  %channel_base.i = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 1
  %19 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %channel_base.i, align 4
  %21 = ptrtoint ptr %add.ptr.i32 to i32
  call void @__asan_load2_noabort(i32 %21)
  %22 = load i16, ptr %add.ptr.i32, align 2
  %conv1.i = zext i16 %22 to i32
  %add.ptr2.i = getelementptr i8, ptr %20, i32 %conv1.i
  %23 = zext i8 %18 to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values.95)
  switch i8 %18, label %do.end.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = trunc i32 %14 to i16
  %24 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %24) #10, !srcloc !145
  br label %omap_dma_chan_write.exit

sw.bb1.i.i:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i = trunc i32 %14 to i16
  %25 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %25) #10, !srcloc !145
  %shr.i.i = lshr i32 %14, 16
  %conv3.i.i = trunc i32 %shr.i.i to i16
  %26 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %26) #10, !srcloc !145
  br label %omap_dma_chan_write.exit

sw.bb4.i.i:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %14) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %27) #10, !srcloc !146
  br label %omap_dma_chan_write.exit

do.end.i.i:                                       ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit

omap_dma_chan_write.exit:                         ; preds = %do.end.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %dir = getelementptr i8, ptr %1, i32 12
  %28 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dir, align 4
  %30 = zext i32 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.96)
  switch i32 %29, label %if.else [
    i32 2, label %omap_dma_chan_write.exit.if.end6_crit_edge
    i32 0, label %omap_dma_chan_write.exit.if.end6_crit_edge110
  ]

omap_dma_chan_write.exit.if.end6_crit_edge110:    ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

omap_dma_chan_write.exit.if.end6_crit_edge:       ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.else:                                          ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.end6:                                          ; preds = %if.else, %omap_dma_chan_write.exit.if.end6_crit_edge, %omap_dma_chan_write.exit.if.end6_crit_edge110
  %cxsa.0 = phi i32 [ 46, %if.else ], [ 45, %omap_dma_chan_write.exit.if.end6_crit_edge ], [ 45, %omap_dma_chan_write.exit.if.end6_crit_edge110 ]
  %cxei.0 = phi i32 [ 42, %if.else ], [ 39, %omap_dma_chan_write.exit.if.end6_crit_edge ], [ 39, %omap_dma_chan_write.exit.if.end6_crit_edge110 ]
  %cxfi.0 = phi i32 [ 43, %if.else ], [ 38, %omap_dma_chan_write.exit.if.end6_crit_edge ], [ 38, %omap_dma_chan_write.exit.if.end6_crit_edge110 ]
  %dev_addr = getelementptr i8, ptr %1, i32 16
  %31 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dev_addr, align 4
  %33 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i34 = getelementptr %struct.omap_dma_reg, ptr %34, i32 %cxsa.0
  %type.i35 = getelementptr %struct.omap_dma_reg, ptr %34, i32 %cxsa.0, i32 2
  %35 = ptrtoint ptr %type.i35 to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %type.i35, align 1
  %37 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %channel_base.i, align 4
  %39 = ptrtoint ptr %add.ptr.i34 to i32
  call void @__asan_load2_noabort(i32 %39)
  %40 = load i16, ptr %add.ptr.i34, align 2
  %conv1.i37 = zext i16 %40 to i32
  %add.ptr2.i38 = getelementptr i8, ptr %38, i32 %conv1.i37
  %41 = zext i8 %36 to i64
  call void @__sanitizer_cov_trace_switch(i64 %41, ptr @__sancov_gen_cov_switch_values.97)
  switch i8 %36, label %do.end.i.i47 [
    i8 1, label %sw.bb.i.i40
    i8 2, label %sw.bb1.i.i45
    i8 3, label %sw.bb4.i.i46
  ]

sw.bb.i.i40:                                      ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i39 = trunc i32 %32 to i16
  %42 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i39) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i38, i16 %42) #10, !srcloc !145
  br label %omap_dma_chan_write.exit48

sw.bb1.i.i45:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i41 = trunc i32 %32 to i16
  %43 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i41) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i38, i16 %43) #10, !srcloc !145
  %shr.i.i42 = lshr i32 %32, 16
  %conv3.i.i43 = trunc i32 %shr.i.i42 to i16
  %44 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i43) #10
  %add.ptr.i.i44 = getelementptr i8, ptr %add.ptr2.i38, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i44, i16 %44) #10, !srcloc !145
  br label %omap_dma_chan_write.exit48

sw.bb4.i.i46:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  %45 = tail call i32 @llvm.bswap.i32(i32 %32) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i38, i32 %45) #10, !srcloc !146
  br label %omap_dma_chan_write.exit48

do.end.i.i47:                                     ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit48

omap_dma_chan_write.exit48:                       ; preds = %do.end.i.i47, %sw.bb4.i.i46, %sw.bb1.i.i45, %sw.bb.i.i40
  %ei = getelementptr i8, ptr %1, i32 28
  %46 = ptrtoint ptr %ei to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %ei, align 4
  %48 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i50 = getelementptr %struct.omap_dma_reg, ptr %49, i32 %cxei.0
  %type.i51 = getelementptr %struct.omap_dma_reg, ptr %49, i32 %cxei.0, i32 2
  %50 = ptrtoint ptr %type.i51 to i32
  call void @__asan_load1_noabort(i32 %50)
  %51 = load i8, ptr %type.i51, align 1
  %52 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %channel_base.i, align 4
  %54 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %add.ptr.i50, align 2
  %conv1.i53 = zext i16 %55 to i32
  %add.ptr2.i54 = getelementptr i8, ptr %53, i32 %conv1.i53
  %56 = zext i8 %51 to i64
  call void @__sanitizer_cov_trace_switch(i64 %56, ptr @__sancov_gen_cov_switch_values.98)
  switch i8 %51, label %do.end.i.i61 [
    i8 1, label %sw.bb.i.i55
    i8 2, label %sw.bb1.i.i59
    i8 3, label %sw.bb4.i.i60
  ]

sw.bb.i.i55:                                      ; preds = %omap_dma_chan_write.exit48
  call void @__sanitizer_cov_trace_pc() #12
  %57 = tail call i16 @llvm.bswap.i16(i16 %47) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i54, i16 %57) #10, !srcloc !145
  br label %omap_dma_chan_write.exit62

sw.bb1.i.i59:                                     ; preds = %omap_dma_chan_write.exit48
  call void @__sanitizer_cov_trace_pc() #12
  %58 = tail call i16 @llvm.bswap.i16(i16 %47) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i54, i16 %58) #10, !srcloc !145
  %conv3.i.i57 = ashr i16 %47, 15
  %59 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i57) #10
  %add.ptr.i.i58 = getelementptr i8, ptr %add.ptr2.i54, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i58, i16 %59) #10, !srcloc !145
  br label %omap_dma_chan_write.exit62

sw.bb4.i.i60:                                     ; preds = %omap_dma_chan_write.exit48
  call void @__sanitizer_cov_trace_pc() #12
  %conv = sext i16 %47 to i32
  %60 = tail call i32 @llvm.bswap.i32(i32 %conv) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i54, i32 %60) #10, !srcloc !146
  br label %omap_dma_chan_write.exit62

do.end.i.i61:                                     ; preds = %omap_dma_chan_write.exit48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit62

omap_dma_chan_write.exit62:                       ; preds = %do.end.i.i61, %sw.bb4.i.i60, %sw.bb1.i.i59, %sw.bb.i.i55
  %fi = getelementptr i8, ptr %1, i32 24
  %61 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %fi, align 4
  %63 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i64 = getelementptr %struct.omap_dma_reg, ptr %64, i32 %cxfi.0
  %type.i65 = getelementptr %struct.omap_dma_reg, ptr %64, i32 %cxfi.0, i32 2
  %65 = ptrtoint ptr %type.i65 to i32
  call void @__asan_load1_noabort(i32 %65)
  %66 = load i8, ptr %type.i65, align 1
  %67 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %channel_base.i, align 4
  %69 = ptrtoint ptr %add.ptr.i64 to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %add.ptr.i64, align 2
  %conv1.i67 = zext i16 %70 to i32
  %add.ptr2.i68 = getelementptr i8, ptr %68, i32 %conv1.i67
  %71 = zext i8 %66 to i64
  call void @__sanitizer_cov_trace_switch(i64 %71, ptr @__sancov_gen_cov_switch_values.99)
  switch i8 %66, label %do.end.i.i77 [
    i8 1, label %sw.bb.i.i70
    i8 2, label %sw.bb1.i.i75
    i8 3, label %sw.bb4.i.i76
  ]

sw.bb.i.i70:                                      ; preds = %omap_dma_chan_write.exit62
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i69 = trunc i32 %62 to i16
  %72 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i69) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i68, i16 %72) #10, !srcloc !145
  br label %omap_dma_chan_write.exit78

sw.bb1.i.i75:                                     ; preds = %omap_dma_chan_write.exit62
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i71 = trunc i32 %62 to i16
  %73 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i71) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i68, i16 %73) #10, !srcloc !145
  %shr.i.i72 = lshr i32 %62, 16
  %conv3.i.i73 = trunc i32 %shr.i.i72 to i16
  %74 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i73) #10
  %add.ptr.i.i74 = getelementptr i8, ptr %add.ptr2.i68, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i74, i16 %74) #10, !srcloc !145
  br label %omap_dma_chan_write.exit78

sw.bb4.i.i76:                                     ; preds = %omap_dma_chan_write.exit62
  call void @__sanitizer_cov_trace_pc() #12
  %75 = tail call i32 @llvm.bswap.i32(i32 %62) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i68, i32 %75) #10, !srcloc !146
  br label %omap_dma_chan_write.exit78

do.end.i.i77:                                     ; preds = %omap_dma_chan_write.exit62
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit78

omap_dma_chan_write.exit78:                       ; preds = %do.end.i.i77, %sw.bb4.i.i76, %sw.bb1.i.i75, %sw.bb.i.i70
  %csdp = getelementptr i8, ptr %1, i32 40
  %76 = ptrtoint ptr %csdp to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %csdp, align 4
  %78 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i80 = getelementptr %struct.omap_dma_reg, ptr %79, i32 32
  %type.i81 = getelementptr %struct.omap_dma_reg, ptr %79, i32 32, i32 2
  %80 = ptrtoint ptr %type.i81 to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %type.i81, align 1
  %82 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %channel_base.i, align 4
  %84 = ptrtoint ptr %add.ptr.i80 to i32
  call void @__asan_load2_noabort(i32 %84)
  %85 = load i16, ptr %add.ptr.i80, align 2
  %conv1.i83 = zext i16 %85 to i32
  %add.ptr2.i84 = getelementptr i8, ptr %83, i32 %conv1.i83
  %86 = zext i8 %81 to i64
  call void @__sanitizer_cov_trace_switch(i64 %86, ptr @__sancov_gen_cov_switch_values.100)
  switch i8 %81, label %do.end.i.i93 [
    i8 1, label %sw.bb.i.i86
    i8 2, label %sw.bb1.i.i91
    i8 3, label %sw.bb4.i.i92
  ]

sw.bb.i.i86:                                      ; preds = %omap_dma_chan_write.exit78
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i85 = trunc i32 %77 to i16
  %87 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i85) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i84, i16 %87) #10, !srcloc !145
  br label %omap_dma_chan_write.exit94

sw.bb1.i.i91:                                     ; preds = %omap_dma_chan_write.exit78
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i87 = trunc i32 %77 to i16
  %88 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i87) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i84, i16 %88) #10, !srcloc !145
  %shr.i.i88 = lshr i32 %77, 16
  %conv3.i.i89 = trunc i32 %shr.i.i88 to i16
  %89 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i89) #10
  %add.ptr.i.i90 = getelementptr i8, ptr %add.ptr2.i84, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i90, i16 %89) #10, !srcloc !145
  br label %omap_dma_chan_write.exit94

sw.bb4.i.i92:                                     ; preds = %omap_dma_chan_write.exit78
  call void @__sanitizer_cov_trace_pc() #12
  %90 = tail call i32 @llvm.bswap.i32(i32 %77) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i84, i32 %90) #10, !srcloc !146
  br label %omap_dma_chan_write.exit94

do.end.i.i93:                                     ; preds = %omap_dma_chan_write.exit78
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit94

omap_dma_chan_write.exit94:                       ; preds = %do.end.i.i93, %sw.bb4.i.i92, %sw.bb1.i.i91, %sw.bb.i.i86
  %clnk_ctrl = getelementptr i8, ptr %1, i32 36
  %91 = ptrtoint ptr %clnk_ctrl to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %clnk_ctrl, align 4
  %93 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i96 = getelementptr %struct.omap_dma_reg, ptr %94, i32 44
  %type.i97 = getelementptr %struct.omap_dma_reg, ptr %94, i32 44, i32 2
  %95 = ptrtoint ptr %type.i97 to i32
  call void @__asan_load1_noabort(i32 %95)
  %96 = load i8, ptr %type.i97, align 1
  %97 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %channel_base.i, align 4
  %99 = ptrtoint ptr %add.ptr.i96 to i32
  call void @__asan_load2_noabort(i32 %99)
  %100 = load i16, ptr %add.ptr.i96, align 2
  %conv1.i99 = zext i16 %100 to i32
  %add.ptr2.i100 = getelementptr i8, ptr %98, i32 %conv1.i99
  %101 = zext i8 %96 to i64
  call void @__sanitizer_cov_trace_switch(i64 %101, ptr @__sancov_gen_cov_switch_values.101)
  switch i8 %96, label %do.end.i.i107 [
    i8 1, label %sw.bb.i.i101
    i8 2, label %sw.bb1.i.i105
    i8 3, label %sw.bb4.i.i106
  ]

sw.bb.i.i101:                                     ; preds = %omap_dma_chan_write.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %102 = tail call i16 @llvm.bswap.i16(i16 %92) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i100, i16 %102) #10, !srcloc !145
  br label %omap_dma_chan_write.exit108

sw.bb1.i.i105:                                    ; preds = %omap_dma_chan_write.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %103 = tail call i16 @llvm.bswap.i16(i16 %92) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i100, i16 %103) #10, !srcloc !145
  %add.ptr.i.i104 = getelementptr i8, ptr %add.ptr2.i100, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i104, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit108

sw.bb4.i.i106:                                    ; preds = %omap_dma_chan_write.exit94
  call void @__sanitizer_cov_trace_pc() #12
  %conv7 = zext i16 %92 to i32
  %104 = tail call i32 @llvm.bswap.i32(i32 %conv7) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i100, i32 %104) #10, !srcloc !146
  br label %omap_dma_chan_write.exit108

do.end.i.i107:                                    ; preds = %omap_dma_chan_write.exit94
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit108

omap_dma_chan_write.exit108:                      ; preds = %do.end.i.i107, %sw.bb4.i.i106, %sw.bb1.i.i105, %sw.bb.i.i101
  tail call fastcc void @omap_dma_start_sg(ptr noundef %c, ptr noundef nonnull %add.ptr.i)
  br label %cleanup

cleanup:                                          ; preds = %omap_dma_chan_write.exit108, %if.then
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_dma_start_sg(ptr noundef %c, ptr nocapture noundef readonly %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %sgidx = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 11
  %0 = ptrtoint ptr %sgidx to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %sgidx, align 4
  %dir = getelementptr inbounds %struct.omap_desc, ptr %d, i32 0, i32 2
  %2 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dir, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.102)
  switch i32 %3, label %if.else [
    i32 2, label %entry.if.end_crit_edge
    i32 0, label %entry.if.end_crit_edge81
  ]

entry.if.end_crit_edge81:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end:                                           ; preds = %if.else, %entry.if.end_crit_edge, %entry.if.end_crit_edge81
  %cxsa.0 = phi i32 [ 45, %if.else ], [ 46, %entry.if.end_crit_edge ], [ 46, %entry.if.end_crit_edge81 ]
  %cxei.0 = phi i32 [ 39, %if.else ], [ 42, %entry.if.end_crit_edge ], [ 42, %entry.if.end_crit_edge81 ]
  %cxfi.0 = phi i32 [ 38, %if.else ], [ 43, %entry.if.end_crit_edge ], [ 43, %entry.if.end_crit_edge81 ]
  %sg1 = getelementptr inbounds %struct.omap_desc, ptr %d, i32 0, i32 13
  %add.ptr = getelementptr %struct.omap_sg, ptr %sg1, i32 %1
  %5 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %add.ptr, align 4
  %reg_map.i = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 2
  %7 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i = getelementptr %struct.omap_dma_reg, ptr %8, i32 %cxsa.0
  %type.i = getelementptr %struct.omap_dma_reg, ptr %8, i32 %cxsa.0, i32 2
  %9 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %type.i, align 1
  %channel_base.i = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 1
  %11 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %channel_base.i, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %add.ptr.i, align 2
  %conv1.i = zext i16 %14 to i32
  %add.ptr2.i = getelementptr i8, ptr %12, i32 %conv1.i
  %15 = zext i8 %10 to i64
  call void @__sanitizer_cov_trace_switch(i64 %15, ptr @__sancov_gen_cov_switch_values.103)
  switch i8 %10, label %do.end.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = trunc i32 %6 to i16
  %16 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %16) #10, !srcloc !145
  br label %omap_dma_chan_write.exit

sw.bb1.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i = trunc i32 %6 to i16
  %17 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 %17) #10, !srcloc !145
  %shr.i.i = lshr i32 %6, 16
  %conv3.i.i = trunc i32 %shr.i.i to i16
  %18 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #10
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %18) #10, !srcloc !145
  br label %omap_dma_chan_write.exit

sw.bb4.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %19 = tail call i32 @llvm.bswap.i32(i32 %6) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 %19) #10, !srcloc !146
  br label %omap_dma_chan_write.exit

do.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit

omap_dma_chan_write.exit:                         ; preds = %do.end.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %ei = getelementptr %struct.omap_sg, ptr %sg1, i32 %1, i32 4
  %20 = ptrtoint ptr %ei to i32
  call void @__asan_load2_noabort(i32 %20)
  %21 = load i16, ptr %ei, align 4
  %22 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i20 = getelementptr %struct.omap_dma_reg, ptr %23, i32 %cxei.0
  %type.i21 = getelementptr %struct.omap_dma_reg, ptr %23, i32 %cxei.0, i32 2
  %24 = ptrtoint ptr %type.i21 to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %type.i21, align 1
  %26 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %channel_base.i, align 4
  %28 = ptrtoint ptr %add.ptr.i20 to i32
  call void @__asan_load2_noabort(i32 %28)
  %29 = load i16, ptr %add.ptr.i20, align 2
  %conv1.i23 = zext i16 %29 to i32
  %add.ptr2.i24 = getelementptr i8, ptr %27, i32 %conv1.i23
  %30 = zext i8 %25 to i64
  call void @__sanitizer_cov_trace_switch(i64 %30, ptr @__sancov_gen_cov_switch_values.104)
  switch i8 %25, label %do.end.i.i31 [
    i8 1, label %sw.bb.i.i25
    i8 2, label %sw.bb1.i.i29
    i8 3, label %sw.bb4.i.i30
  ]

sw.bb.i.i25:                                      ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = tail call i16 @llvm.bswap.i16(i16 %21) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i24, i16 %31) #10, !srcloc !145
  br label %omap_dma_chan_write.exit32

sw.bb1.i.i29:                                     ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %32 = tail call i16 @llvm.bswap.i16(i16 %21) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i24, i16 %32) #10, !srcloc !145
  %conv3.i.i27 = ashr i16 %21, 15
  %33 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i27) #10
  %add.ptr.i.i28 = getelementptr i8, ptr %add.ptr2.i24, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i28, i16 %33) #10, !srcloc !145
  br label %omap_dma_chan_write.exit32

sw.bb4.i.i30:                                     ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %conv = sext i16 %21 to i32
  %34 = tail call i32 @llvm.bswap.i32(i32 %conv) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i24, i32 %34) #10, !srcloc !146
  br label %omap_dma_chan_write.exit32

do.end.i.i31:                                     ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit32

omap_dma_chan_write.exit32:                       ; preds = %do.end.i.i31, %sw.bb4.i.i30, %sw.bb1.i.i29, %sw.bb.i.i25
  %fi = getelementptr %struct.omap_sg, ptr %sg1, i32 %1, i32 3
  %35 = ptrtoint ptr %fi to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %fi, align 4
  %37 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i34 = getelementptr %struct.omap_dma_reg, ptr %38, i32 %cxfi.0
  %type.i35 = getelementptr %struct.omap_dma_reg, ptr %38, i32 %cxfi.0, i32 2
  %39 = ptrtoint ptr %type.i35 to i32
  call void @__asan_load1_noabort(i32 %39)
  %40 = load i8, ptr %type.i35, align 1
  %41 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %channel_base.i, align 4
  %43 = ptrtoint ptr %add.ptr.i34 to i32
  call void @__asan_load2_noabort(i32 %43)
  %44 = load i16, ptr %add.ptr.i34, align 2
  %conv1.i37 = zext i16 %44 to i32
  %add.ptr2.i38 = getelementptr i8, ptr %42, i32 %conv1.i37
  %45 = zext i8 %40 to i64
  call void @__sanitizer_cov_trace_switch(i64 %45, ptr @__sancov_gen_cov_switch_values.105)
  switch i8 %40, label %do.end.i.i47 [
    i8 1, label %sw.bb.i.i40
    i8 2, label %sw.bb1.i.i45
    i8 3, label %sw.bb4.i.i46
  ]

sw.bb.i.i40:                                      ; preds = %omap_dma_chan_write.exit32
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i39 = trunc i32 %36 to i16
  %46 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i39) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i38, i16 %46) #10, !srcloc !145
  br label %omap_dma_chan_write.exit48

sw.bb1.i.i45:                                     ; preds = %omap_dma_chan_write.exit32
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i41 = trunc i32 %36 to i16
  %47 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i41) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i38, i16 %47) #10, !srcloc !145
  %shr.i.i42 = lshr i32 %36, 16
  %conv3.i.i43 = trunc i32 %shr.i.i42 to i16
  %48 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i43) #10
  %add.ptr.i.i44 = getelementptr i8, ptr %add.ptr2.i38, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i44, i16 %48) #10, !srcloc !145
  br label %omap_dma_chan_write.exit48

sw.bb4.i.i46:                                     ; preds = %omap_dma_chan_write.exit32
  call void @__sanitizer_cov_trace_pc() #12
  %49 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i38, i32 %49) #10, !srcloc !146
  br label %omap_dma_chan_write.exit48

do.end.i.i47:                                     ; preds = %omap_dma_chan_write.exit32
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit48

omap_dma_chan_write.exit48:                       ; preds = %do.end.i.i47, %sw.bb4.i.i46, %sw.bb1.i.i45, %sw.bb.i.i40
  %en = getelementptr %struct.omap_sg, ptr %sg1, i32 %1, i32 1
  %50 = ptrtoint ptr %en to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %en, align 4
  %52 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i50 = getelementptr %struct.omap_dma_reg, ptr %53, i32 36
  %type.i51 = getelementptr %struct.omap_dma_reg, ptr %53, i32 36, i32 2
  %54 = ptrtoint ptr %type.i51 to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %type.i51, align 1
  %56 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %channel_base.i, align 4
  %58 = ptrtoint ptr %add.ptr.i50 to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %add.ptr.i50, align 2
  %conv1.i53 = zext i16 %59 to i32
  %add.ptr2.i54 = getelementptr i8, ptr %57, i32 %conv1.i53
  %60 = zext i8 %55 to i64
  call void @__sanitizer_cov_trace_switch(i64 %60, ptr @__sancov_gen_cov_switch_values.106)
  switch i8 %55, label %do.end.i.i63 [
    i8 1, label %sw.bb.i.i56
    i8 2, label %sw.bb1.i.i61
    i8 3, label %sw.bb4.i.i62
  ]

sw.bb.i.i56:                                      ; preds = %omap_dma_chan_write.exit48
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i55 = trunc i32 %51 to i16
  %61 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i55) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i54, i16 %61) #10, !srcloc !145
  br label %omap_dma_chan_write.exit64

sw.bb1.i.i61:                                     ; preds = %omap_dma_chan_write.exit48
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i57 = trunc i32 %51 to i16
  %62 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i57) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i54, i16 %62) #10, !srcloc !145
  %shr.i.i58 = lshr i32 %51, 16
  %conv3.i.i59 = trunc i32 %shr.i.i58 to i16
  %63 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i59) #10
  %add.ptr.i.i60 = getelementptr i8, ptr %add.ptr2.i54, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i60, i16 %63) #10, !srcloc !145
  br label %omap_dma_chan_write.exit64

sw.bb4.i.i62:                                     ; preds = %omap_dma_chan_write.exit48
  call void @__sanitizer_cov_trace_pc() #12
  %64 = tail call i32 @llvm.bswap.i32(i32 %51) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i54, i32 %64) #10, !srcloc !146
  br label %omap_dma_chan_write.exit64

do.end.i.i63:                                     ; preds = %omap_dma_chan_write.exit48
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit64

omap_dma_chan_write.exit64:                       ; preds = %do.end.i.i63, %sw.bb4.i.i62, %sw.bb1.i.i61, %sw.bb.i.i56
  %fn = getelementptr %struct.omap_sg, ptr %sg1, i32 %1, i32 2
  %65 = ptrtoint ptr %fn to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %fn, align 4
  %67 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i66 = getelementptr %struct.omap_dma_reg, ptr %68, i32 37
  %type.i67 = getelementptr %struct.omap_dma_reg, ptr %68, i32 37, i32 2
  %69 = ptrtoint ptr %type.i67 to i32
  call void @__asan_load1_noabort(i32 %69)
  %70 = load i8, ptr %type.i67, align 1
  %71 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %channel_base.i, align 4
  %73 = ptrtoint ptr %add.ptr.i66 to i32
  call void @__asan_load2_noabort(i32 %73)
  %74 = load i16, ptr %add.ptr.i66, align 2
  %conv1.i69 = zext i16 %74 to i32
  %add.ptr2.i70 = getelementptr i8, ptr %72, i32 %conv1.i69
  %75 = zext i8 %70 to i64
  call void @__sanitizer_cov_trace_switch(i64 %75, ptr @__sancov_gen_cov_switch_values.107)
  switch i8 %70, label %do.end.i.i79 [
    i8 1, label %sw.bb.i.i72
    i8 2, label %sw.bb1.i.i77
    i8 3, label %sw.bb4.i.i78
  ]

sw.bb.i.i72:                                      ; preds = %omap_dma_chan_write.exit64
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i71 = trunc i32 %66 to i16
  %76 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i71) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i70, i16 %76) #10, !srcloc !145
  br label %omap_dma_chan_write.exit80

sw.bb1.i.i77:                                     ; preds = %omap_dma_chan_write.exit64
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i73 = trunc i32 %66 to i16
  %77 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i73) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i70, i16 %77) #10, !srcloc !145
  %shr.i.i74 = lshr i32 %66, 16
  %conv3.i.i75 = trunc i32 %shr.i.i74 to i16
  %78 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i75) #10
  %add.ptr.i.i76 = getelementptr i8, ptr %add.ptr2.i70, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i76, i16 %78) #10, !srcloc !145
  br label %omap_dma_chan_write.exit80

sw.bb4.i.i78:                                     ; preds = %omap_dma_chan_write.exit64
  call void @__sanitizer_cov_trace_pc() #12
  %79 = tail call i32 @llvm.bswap.i32(i32 %66) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i70, i32 %79) #10, !srcloc !146
  br label %omap_dma_chan_write.exit80

do.end.i.i79:                                     ; preds = %omap_dma_chan_write.exit64
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit80

omap_dma_chan_write.exit80:                       ; preds = %do.end.i.i79, %sw.bb4.i.i78, %sw.bb1.i.i77, %sw.bb.i.i72
  tail call fastcc void @omap_dma_start(ptr noundef %c, ptr noundef %d)
  %80 = ptrtoint ptr %sgidx to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %sgidx, align 4
  %inc = add i32 %81, 1
  store i32 %inc, ptr %sgidx, align 4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_dma_start(ptr noundef %c, ptr nocapture noundef readonly %d) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %cicr1 = getelementptr inbounds %struct.omap_desc, ptr %d, i32 0, i32 10
  %2 = ptrtoint ptr %cicr1 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %cicr1, align 2
  %reg_map.i = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 2
  %4 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i = getelementptr %struct.omap_dma_reg, ptr %5, i32 41
  %type.i = getelementptr %struct.omap_dma_reg, ptr %5, i32 41, i32 2
  %6 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %type.i, align 1
  %channel_base.i = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 1
  %8 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %channel_base.i, align 4
  %10 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %add.ptr.i, align 2
  %conv1.i = zext i16 %11 to i32
  %add.ptr2.i = getelementptr i8, ptr %9, i32 %conv1.i
  %12 = zext i8 %7 to i64
  call void @__sanitizer_cov_trace_switch(i64 %12, ptr @__sancov_gen_cov_switch_values.108)
  switch i8 %7, label %do.end.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 0) #10, !srcloc !145
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit

sw.bb4.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #10, !srcloc !146
  br label %omap_dma_chan_write.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit

omap_dma_chan_write.exit:                         ; preds = %do.end.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %13 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i.i30 = getelementptr %struct.omap_dma_reg, ptr %14, i32 35
  %type.i.i = getelementptr %struct.omap_dma_reg, ptr %14, i32 35, i32 2
  %15 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %type.i.i, align 1
  %17 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %channel_base.i, align 4
  %19 = ptrtoint ptr %add.ptr.i.i30 to i32
  call void @__asan_load2_noabort(i32 %19)
  %20 = load i16, ptr %add.ptr.i.i30, align 2
  %conv1.i.i = zext i16 %20 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %18, i32 %conv1.i.i
  %21 = zext i8 %16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.109)
  switch i8 %16, label %do.end.i.i.i [
    i8 1, label %sw.bb.i.i.i
    i8 2, label %sw.bb1.i.i.i
    i8 3, label %sw.bb4.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i, i16 -1) #10, !srcloc !145
  br label %omap_dma_clear_csr.exit

sw.bb1.i.i.i:                                     ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i, i16 -1) #10, !srcloc !145
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 -1) #10, !srcloc !145
  br label %omap_dma_clear_csr.exit

sw.bb4.i.i.i:                                     ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -1) #10, !srcloc !146
  br label %omap_dma_clear_csr.exit

do.end.i.i.i:                                     ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_clear_csr.exit

omap_dma_clear_csr.exit:                          ; preds = %do.end.i.i.i, %sw.bb4.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %using_ll = getelementptr inbounds %struct.omap_desc, ptr %d, i32 0, i32 1
  %22 = ptrtoint ptr %using_ll to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %using_ll, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not = icmp eq i8 %23, 0
  br i1 %tobool.not, label %if.else5, label %if.then

if.then:                                          ; preds = %omap_dma_clear_csr.exit
  %dir = getelementptr inbounds %struct.omap_desc, ptr %d, i32 0, i32 2
  %24 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %cmp = icmp eq i32 %25, 2
  %. = select i1 %cmp, i32 1321, i32 1318
  %26 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i32 = getelementptr %struct.omap_dma_reg, ptr %27, i32 50
  %type.i33 = getelementptr %struct.omap_dma_reg, ptr %27, i32 50, i32 2
  %28 = ptrtoint ptr %type.i33 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type.i33, align 1
  %30 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %channel_base.i, align 4
  %32 = ptrtoint ptr %add.ptr.i32 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i32, align 2
  %conv1.i35 = zext i16 %33 to i32
  %add.ptr2.i36 = getelementptr i8, ptr %31, i32 %conv1.i35
  %34 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.110)
  switch i8 %29, label %do.end.i.i41 [
    i8 1, label %sw.bb.i.i37
    i8 2, label %sw.bb1.i.i39
    i8 3, label %sw.bb4.i.i40
  ]

sw.bb.i.i37:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i = trunc i32 %. to i16
  %35 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i36, i16 %35) #10, !srcloc !145
  br label %omap_dma_chan_write.exit42

sw.bb1.i.i39:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i = trunc i32 %. to i16
  %36 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i36, i16 %36) #10, !srcloc !145
  %add.ptr.i.i38 = getelementptr i8, ptr %add.ptr2.i36, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i38, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit42

sw.bb4.i.i40:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %37 = tail call i32 @llvm.bswap.i32(i32 %.) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i36, i32 %37) #10, !srcloc !146
  br label %omap_dma_chan_write.exit42

do.end.i.i41:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit42

omap_dma_chan_write.exit42:                       ; preds = %do.end.i.i41, %sw.bb4.i.i40, %sw.bb1.i.i39, %sw.bb.i.i37
  %t2_desc_paddr = getelementptr inbounds %struct.omap_desc, ptr %d, i32 1, i32 0, i32 0, i32 6
  %38 = ptrtoint ptr %t2_desc_paddr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %t2_desc_paddr, align 4
  %40 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i44 = getelementptr %struct.omap_dma_reg, ptr %41, i32 51
  %type.i45 = getelementptr %struct.omap_dma_reg, ptr %41, i32 51, i32 2
  %42 = ptrtoint ptr %type.i45 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %type.i45, align 1
  %44 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %channel_base.i, align 4
  %46 = ptrtoint ptr %add.ptr.i44 to i32
  call void @__asan_load2_noabort(i32 %46)
  %47 = load i16, ptr %add.ptr.i44, align 2
  %conv1.i47 = zext i16 %47 to i32
  %add.ptr2.i48 = getelementptr i8, ptr %45, i32 %conv1.i47
  %48 = zext i8 %43 to i64
  call void @__sanitizer_cov_trace_switch(i64 %48, ptr @__sancov_gen_cov_switch_values.111)
  switch i8 %43, label %do.end.i.i55 [
    i8 1, label %sw.bb.i.i50
    i8 2, label %sw.bb1.i.i53
    i8 3, label %sw.bb4.i.i54
  ]

sw.bb.i.i50:                                      ; preds = %omap_dma_chan_write.exit42
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i49 = trunc i32 %39 to i16
  %49 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i49) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i48, i16 %49) #10, !srcloc !145
  br label %omap_dma_chan_write.exit56

sw.bb1.i.i53:                                     ; preds = %omap_dma_chan_write.exit42
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i51 = trunc i32 %39 to i16
  %50 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i51) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i48, i16 %50) #10, !srcloc !145
  %shr.i.i = lshr i32 %39, 16
  %conv3.i.i = trunc i32 %shr.i.i to i16
  %51 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #10
  %add.ptr.i.i52 = getelementptr i8, ptr %add.ptr2.i48, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i52, i16 %51) #10, !srcloc !145
  br label %omap_dma_chan_write.exit56

sw.bb4.i.i54:                                     ; preds = %omap_dma_chan_write.exit42
  call void @__sanitizer_cov_trace_pc() #12
  %52 = tail call i32 @llvm.bswap.i32(i32 %39) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i48, i32 %52) #10, !srcloc !146
  br label %omap_dma_chan_write.exit56

do.end.i.i55:                                     ; preds = %omap_dma_chan_write.exit42
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit56

omap_dma_chan_write.exit56:                       ; preds = %do.end.i.i55, %sw.bb4.i.i54, %sw.bb1.i.i53, %sw.bb.i.i50
  %53 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i58 = getelementptr %struct.omap_dma_reg, ptr %54, i32 52
  %type.i59 = getelementptr %struct.omap_dma_reg, ptr %54, i32 52, i32 2
  %55 = ptrtoint ptr %type.i59 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %type.i59, align 1
  %57 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %channel_base.i, align 4
  %59 = ptrtoint ptr %add.ptr.i58 to i32
  call void @__asan_load2_noabort(i32 %59)
  %60 = load i16, ptr %add.ptr.i58, align 2
  %conv1.i61 = zext i16 %60 to i32
  %add.ptr2.i62 = getelementptr i8, ptr %58, i32 %conv1.i61
  %61 = zext i8 %56 to i64
  call void @__sanitizer_cov_trace_switch(i64 %61, ptr @__sancov_gen_cov_switch_values.112)
  switch i8 %56, label %do.end.i.i67 [
    i8 1, label %sw.bb.i.i63
    i8 2, label %sw.bb1.i.i65
    i8 3, label %sw.bb4.i.i66
  ]

sw.bb.i.i63:                                      ; preds = %omap_dma_chan_write.exit56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i62, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit68

sw.bb1.i.i65:                                     ; preds = %omap_dma_chan_write.exit56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i62, i16 0) #10, !srcloc !145
  %add.ptr.i.i64 = getelementptr i8, ptr %add.ptr2.i62, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i64, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit68

sw.bb4.i.i66:                                     ; preds = %omap_dma_chan_write.exit56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i62, i32 0) #10, !srcloc !146
  br label %omap_dma_chan_write.exit68

do.end.i.i67:                                     ; preds = %omap_dma_chan_write.exit56
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit68

omap_dma_chan_write.exit68:                       ; preds = %do.end.i.i67, %sw.bb4.i.i66, %sw.bb1.i.i65, %sw.bb.i.i63
  %62 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i70 = getelementptr %struct.omap_dma_reg, ptr %63, i32 49
  %type.i71 = getelementptr %struct.omap_dma_reg, ptr %63, i32 49, i32 2
  %64 = ptrtoint ptr %type.i71 to i32
  call void @__asan_load1_noabort(i32 %64)
  %65 = load i8, ptr %type.i71, align 1
  %66 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %channel_base.i, align 4
  %68 = ptrtoint ptr %add.ptr.i70 to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %add.ptr.i70, align 2
  %conv1.i73 = zext i16 %69 to i32
  %add.ptr2.i74 = getelementptr i8, ptr %67, i32 %conv1.i73
  %70 = zext i8 %65 to i64
  call void @__sanitizer_cov_trace_switch(i64 %70, ptr @__sancov_gen_cov_switch_values.113)
  switch i8 %65, label %do.end.i.i79 [
    i8 1, label %sw.bb.i.i75
    i8 2, label %sw.bb1.i.i77
    i8 3, label %sw.bb4.i.i78
  ]

sw.bb.i.i75:                                      ; preds = %omap_dma_chan_write.exit68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i74, i16 -1) #10, !srcloc !145
  br label %omap_dma_chan_write.exit80

sw.bb1.i.i77:                                     ; preds = %omap_dma_chan_write.exit68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i74, i16 -1) #10, !srcloc !145
  %add.ptr.i.i76 = getelementptr i8, ptr %add.ptr2.i74, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i76, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit80

sw.bb4.i.i78:                                     ; preds = %omap_dma_chan_write.exit68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i74, i32 -65536) #10, !srcloc !146
  br label %omap_dma_chan_write.exit80

do.end.i.i79:                                     ; preds = %omap_dma_chan_write.exit68
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit80

omap_dma_chan_write.exit80:                       ; preds = %do.end.i.i79, %sw.bb4.i.i78, %sw.bb1.i.i77, %sw.bb.i.i75
  %71 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i82 = getelementptr %struct.omap_dma_reg, ptr %72, i32 48
  %type.i83 = getelementptr %struct.omap_dma_reg, ptr %72, i32 48, i32 2
  %73 = ptrtoint ptr %type.i83 to i32
  call void @__asan_load1_noabort(i32 %73)
  %74 = load i8, ptr %type.i83, align 1
  %75 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %channel_base.i, align 4
  %77 = ptrtoint ptr %add.ptr.i82 to i32
  call void @__asan_load2_noabort(i32 %77)
  %78 = load i16, ptr %add.ptr.i82, align 2
  %conv1.i85 = zext i16 %78 to i32
  %add.ptr2.i86 = getelementptr i8, ptr %76, i32 %conv1.i85
  %79 = zext i8 %74 to i64
  call void @__sanitizer_cov_trace_switch(i64 %79, ptr @__sancov_gen_cov_switch_values.114)
  switch i8 %74, label %do.end.i.i91 [
    i8 1, label %sw.bb.i.i87
    i8 2, label %sw.bb1.i.i89
    i8 3, label %sw.bb4.i.i90
  ]

sw.bb.i.i87:                                      ; preds = %omap_dma_chan_write.exit80
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i86, i16 -1) #10, !srcloc !145
  br label %omap_dma_chan_write.exit92

sw.bb1.i.i89:                                     ; preds = %omap_dma_chan_write.exit80
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i86, i16 -1) #10, !srcloc !145
  %add.ptr.i.i88 = getelementptr i8, ptr %add.ptr2.i86, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i88, i16 -256) #10, !srcloc !145
  br label %omap_dma_chan_write.exit92

sw.bb4.i.i90:                                     ; preds = %omap_dma_chan_write.exit80
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i86, i32 -256) #10, !srcloc !146
  br label %omap_dma_chan_write.exit92

do.end.i.i91:                                     ; preds = %omap_dma_chan_write.exit80
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit92

omap_dma_chan_write.exit92:                       ; preds = %do.end.i.i91, %sw.bb4.i.i90, %sw.bb1.i.i89, %sw.bb.i.i87
  %80 = and i16 %3, -33
  br label %if.end9

if.else5:                                         ; preds = %omap_dma_clear_csr.exit
  %ll123_supported = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 12
  %81 = ptrtoint ptr %ll123_supported to i32
  call void @__asan_load1_noabort(i32 %81)
  %82 = load i8, ptr %ll123_supported, align 1, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %82)
  %tobool6.not = icmp eq i8 %82, 0
  br i1 %tobool6.not, label %if.else5.if.end9_crit_edge, label %if.then7

if.else5.if.end9_crit_edge:                       ; preds = %if.else5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then7:                                         ; preds = %if.else5
  %83 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i94 = getelementptr %struct.omap_dma_reg, ptr %84, i32 50
  %type.i95 = getelementptr %struct.omap_dma_reg, ptr %84, i32 50, i32 2
  %85 = ptrtoint ptr %type.i95 to i32
  call void @__asan_load1_noabort(i32 %85)
  %86 = load i8, ptr %type.i95, align 1
  %87 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %channel_base.i, align 4
  %89 = ptrtoint ptr %add.ptr.i94 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %add.ptr.i94, align 2
  %conv1.i97 = zext i16 %90 to i32
  %add.ptr2.i98 = getelementptr i8, ptr %88, i32 %conv1.i97
  %91 = zext i8 %86 to i64
  call void @__sanitizer_cov_trace_switch(i64 %91, ptr @__sancov_gen_cov_switch_values.115)
  switch i8 %86, label %do.end.i.i103 [
    i8 1, label %sw.bb.i.i99
    i8 2, label %sw.bb1.i.i101
    i8 3, label %sw.bb4.i.i102
  ]

sw.bb.i.i99:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i98, i16 0) #10, !srcloc !145
  br label %if.end9

sw.bb1.i.i101:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i98, i16 0) #10, !srcloc !145
  %add.ptr.i.i100 = getelementptr i8, ptr %add.ptr2.i98, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i100, i16 0) #10, !srcloc !145
  br label %if.end9

sw.bb4.i.i102:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i98, i32 0) #10, !srcloc !146
  br label %if.end9

do.end.i.i103:                                    ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %if.end9

if.end9:                                          ; preds = %do.end.i.i103, %sw.bb4.i.i102, %sw.bb1.i.i101, %sw.bb.i.i99, %if.else5.if.end9_crit_edge, %omap_dma_chan_write.exit92
  %cicr.0 = phi i16 [ %80, %omap_dma_chan_write.exit92 ], [ %3, %if.else5.if.end9_crit_edge ], [ %3, %sw.bb.i.i99 ], [ %3, %sw.bb1.i.i101 ], [ %3, %sw.bb4.i.i102 ], [ %3, %do.end.i.i103 ]
  %92 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i106 = getelementptr %struct.omap_dma_reg, ptr %93, i32 34
  %type.i107 = getelementptr %struct.omap_dma_reg, ptr %93, i32 34, i32 2
  %94 = ptrtoint ptr %type.i107 to i32
  call void @__asan_load1_noabort(i32 %94)
  %95 = load i8, ptr %type.i107, align 1
  %96 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %channel_base.i, align 4
  %98 = ptrtoint ptr %add.ptr.i106 to i32
  call void @__asan_load2_noabort(i32 %98)
  %99 = load i16, ptr %add.ptr.i106, align 2
  %conv1.i109 = zext i16 %99 to i32
  %add.ptr2.i110 = getelementptr i8, ptr %97, i32 %conv1.i109
  %100 = zext i8 %95 to i64
  call void @__sanitizer_cov_trace_switch(i64 %100, ptr @__sancov_gen_cov_switch_values.116)
  switch i8 %95, label %do.end.i.i117 [
    i8 1, label %sw.bb.i.i111
    i8 2, label %sw.bb1.i.i115
    i8 3, label %sw.bb4.i.i116
  ]

sw.bb.i.i111:                                     ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %101 = tail call i16 @llvm.bswap.i16(i16 %cicr.0) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i110, i16 %101) #10, !srcloc !145
  br label %omap_dma_chan_write.exit118

sw.bb1.i.i115:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %102 = tail call i16 @llvm.bswap.i16(i16 %cicr.0) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i110, i16 %102) #10, !srcloc !145
  %add.ptr.i.i114 = getelementptr i8, ptr %add.ptr2.i110, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i114, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit118

sw.bb4.i.i116:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  %conv10 = zext i16 %cicr.0 to i32
  %103 = tail call i32 @llvm.bswap.i32(i32 %conv10) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i110, i32 %103) #10, !srcloc !146
  br label %omap_dma_chan_write.exit118

do.end.i.i117:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit118

omap_dma_chan_write.exit118:                      ; preds = %do.end.i.i117, %sw.bb4.i.i116, %sw.bb1.i.i115, %sw.bb.i.i111
  %ccr = getelementptr inbounds %struct.omap_desc, ptr %d, i32 0, i32 8
  %104 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %ccr, align 4
  %or11 = or i32 %105, 128
  %106 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i120 = getelementptr %struct.omap_dma_reg, ptr %107, i32 33
  %type.i121 = getelementptr %struct.omap_dma_reg, ptr %107, i32 33, i32 2
  %108 = ptrtoint ptr %type.i121 to i32
  call void @__asan_load1_noabort(i32 %108)
  %109 = load i8, ptr %type.i121, align 1
  %110 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %channel_base.i, align 4
  %112 = ptrtoint ptr %add.ptr.i120 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %add.ptr.i120, align 2
  %conv1.i123 = zext i16 %113 to i32
  %add.ptr2.i124 = getelementptr i8, ptr %111, i32 %conv1.i123
  %114 = zext i8 %109 to i64
  call void @__sanitizer_cov_trace_switch(i64 %114, ptr @__sancov_gen_cov_switch_values.117)
  switch i8 %109, label %do.end.i.i133 [
    i8 1, label %sw.bb.i.i126
    i8 2, label %sw.bb1.i.i131
    i8 3, label %sw.bb4.i.i132
  ]

sw.bb.i.i126:                                     ; preds = %omap_dma_chan_write.exit118
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i125 = trunc i32 %or11 to i16
  %115 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i125) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i124, i16 %115) #10, !srcloc !145
  br label %omap_dma_chan_write.exit134

sw.bb1.i.i131:                                    ; preds = %omap_dma_chan_write.exit118
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i127 = trunc i32 %or11 to i16
  %116 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i127) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i124, i16 %116) #10, !srcloc !145
  %shr.i.i128 = lshr i32 %105, 16
  %conv3.i.i129 = trunc i32 %shr.i.i128 to i16
  %117 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i129) #10
  %add.ptr.i.i130 = getelementptr i8, ptr %add.ptr2.i124, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i130, i16 %117) #10, !srcloc !145
  br label %omap_dma_chan_write.exit134

sw.bb4.i.i132:                                    ; preds = %omap_dma_chan_write.exit118
  call void @__sanitizer_cov_trace_pc() #12
  %118 = tail call i32 @llvm.bswap.i32(i32 %or11) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i124, i32 %118) #10, !srcloc !146
  br label %omap_dma_chan_write.exit134

do.end.i.i133:                                    ; preds = %omap_dma_chan_write.exit118
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit134

omap_dma_chan_write.exit134:                      ; preds = %do.end.i.i133, %sw.bb4.i.i132, %sw.bb1.i.i131, %sw.bb.i.i126
  %running = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 8
  %119 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %119)
  store i8 1, ptr %running, align 2
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @omap_free_dma(i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_dma_chan_read_3_3(ptr nocapture noundef readonly %c, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %reg_map.i = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 2
  %2 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i = getelementptr %struct.omap_dma_reg, ptr %3, i32 %reg
  %type.i = getelementptr %struct.omap_dma_reg, ptr %3, i32 %reg, i32 2
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type.i, align 1
  %channel_base.i = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 1
  %6 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel_base.i, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %conv1.i = zext i16 %9 to i32
  %add.ptr2.i = getelementptr i8, ptr %7, i32 %conv1.i
  %10 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.118)
  switch i8 %5, label %omap_dma_chan_read.exit.thread [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb10.i.i
  ]

sw.bb.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #10, !srcloc !149
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #10
  %conv.i.i = zext i16 %12 to i32
  br label %omap_dma_chan_read.exit

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %13 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #10, !srcloc !149
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i, i32 2
  %14 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !149
  %15 = zext i16 %14 to i32
  %16 = zext i16 %13 to i32
  %17 = shl nuw i32 %16, 16
  %18 = or i32 %17, %15
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #10
  br label %omap_dma_chan_read.exit

sw.bb10.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !150
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #10
  br label %omap_dma_chan_read.exit

omap_dma_chan_read.exit.thread:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %land.lhs.true

omap_dma_chan_read.exit:                          ; preds = %sw.bb10.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %val.0.i.i = phi i32 [ %21, %sw.bb10.i.i ], [ %19, %sw.bb1.i.i ], [ %conv.i.i, %sw.bb.i.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %val.0.i.i)
  %cmp = icmp eq i32 %val.0.i.i, 0
  br i1 %cmp, label %omap_dma_chan_read.exit.land.lhs.true_crit_edge, label %omap_dma_chan_read.exit.if.end_crit_edge

omap_dma_chan_read.exit.if.end_crit_edge:         ; preds = %omap_dma_chan_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

omap_dma_chan_read.exit.land.lhs.true_crit_edge:  ; preds = %omap_dma_chan_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %omap_dma_chan_read.exit.land.lhs.true_crit_edge, %omap_dma_chan_read.exit.thread
  %plat = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 4
  %22 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %plat, align 4
  %errata = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %23, i32 0, i32 3
  %24 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %errata, align 4
  %and = and i32 %25, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %land.lhs.true.if.end_crit_edge, label %if.then

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  %26 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i8 = getelementptr %struct.omap_dma_reg, ptr %27, i32 %reg
  %type.i9 = getelementptr %struct.omap_dma_reg, ptr %27, i32 %reg, i32 2
  %28 = ptrtoint ptr %type.i9 to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %type.i9, align 1
  %30 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %channel_base.i, align 4
  %32 = ptrtoint ptr %add.ptr.i8 to i32
  call void @__asan_load2_noabort(i32 %32)
  %33 = load i16, ptr %add.ptr.i8, align 2
  %conv1.i11 = zext i16 %33 to i32
  %add.ptr2.i12 = getelementptr i8, ptr %31, i32 %conv1.i11
  %34 = zext i8 %29 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values.119)
  switch i8 %29, label %do.end.i.i18 [
    i8 1, label %sw.bb.i.i14
    i8 2, label %sw.bb1.i.i16
    i8 3, label %sw.bb10.i.i17
  ]

sw.bb.i.i14:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %35 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i12) #10, !srcloc !149
  %36 = tail call i16 @llvm.bswap.i16(i16 %35) #10
  %conv.i.i13 = zext i16 %36 to i32
  br label %if.end

sw.bb1.i.i16:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %37 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i12) #10, !srcloc !149
  %add.ptr.i.i15 = getelementptr i8, ptr %add.ptr2.i12, i32 2
  %38 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i15) #10, !srcloc !149
  %39 = zext i16 %38 to i32
  %40 = zext i16 %37 to i32
  %41 = shl nuw i32 %40, 16
  %42 = or i32 %41, %39
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #10
  br label %if.end

sw.bb10.i.i17:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i12) #10, !srcloc !150
  %45 = tail call i32 @llvm.bswap.i32(i32 %44) #10
  br label %if.end

do.end.i.i18:                                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %if.end

if.end:                                           ; preds = %do.end.i.i18, %sw.bb10.i.i17, %sw.bb1.i.i16, %sw.bb.i.i14, %land.lhs.true.if.end_crit_edge, %omap_dma_chan_read.exit.if.end_crit_edge
  %val.0 = phi i32 [ 0, %land.lhs.true.if.end_crit_edge ], [ %val.0.i.i, %omap_dma_chan_read.exit.if.end_crit_edge ], [ 0, %do.end.i.i18 ], [ %45, %sw.bb10.i.i17 ], [ %43, %sw.bb1.i.i16 ], [ %conv.i.i13, %sw.bb.i.i14 ]
  ret i32 %val.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @omap_dma_stop(ptr noundef %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %reg_map.i = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 2
  %2 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i = getelementptr %struct.omap_dma_reg, ptr %3, i32 34
  %type.i = getelementptr %struct.omap_dma_reg, ptr %3, i32 34, i32 2
  %4 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %type.i, align 1
  %channel_base.i = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 1
  %6 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channel_base.i, align 4
  %8 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %add.ptr.i, align 2
  %conv1.i = zext i16 %9 to i32
  %add.ptr2.i = getelementptr i8, ptr %7, i32 %conv1.i
  %10 = zext i8 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %10, ptr @__sancov_gen_cov_switch_values.120)
  switch i8 %5, label %do.end.i.i [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb4.i.i
  ]

sw.bb.i.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit

sw.bb1.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i, i16 0) #10, !srcloc !145
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 0) #10, !srcloc !145
  br label %omap_dma_chan_write.exit

sw.bb4.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i, i32 0) #10, !srcloc !146
  br label %omap_dma_chan_write.exit

do.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit

omap_dma_chan_write.exit:                         ; preds = %do.end.i.i, %sw.bb4.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %11 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i.i55 = getelementptr %struct.omap_dma_reg, ptr %12, i32 35
  %type.i.i = getelementptr %struct.omap_dma_reg, ptr %12, i32 35, i32 2
  %13 = ptrtoint ptr %type.i.i to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %type.i.i, align 1
  %15 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %channel_base.i, align 4
  %17 = ptrtoint ptr %add.ptr.i.i55 to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %add.ptr.i.i55, align 2
  %conv1.i.i = zext i16 %18 to i32
  %add.ptr2.i.i = getelementptr i8, ptr %16, i32 %conv1.i.i
  %19 = zext i8 %14 to i64
  call void @__sanitizer_cov_trace_switch(i64 %19, ptr @__sancov_gen_cov_switch_values.121)
  switch i8 %14, label %do.end.i.i.i [
    i8 1, label %sw.bb.i.i.i
    i8 2, label %sw.bb1.i.i.i
    i8 3, label %sw.bb4.i.i.i
  ]

sw.bb.i.i.i:                                      ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i, i16 -1) #10, !srcloc !145
  br label %omap_dma_clear_csr.exit

sw.bb1.i.i.i:                                     ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i.i, i16 -1) #10, !srcloc !145
  %add.ptr.i.i.i = getelementptr i8, ptr %add.ptr2.i.i, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i.i, i16 -1) #10, !srcloc !145
  br label %omap_dma_clear_csr.exit

sw.bb4.i.i.i:                                     ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i.i, i32 -1) #10, !srcloc !146
  br label %omap_dma_clear_csr.exit

do.end.i.i.i:                                     ; preds = %omap_dma_chan_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_clear_csr.exit

omap_dma_clear_csr.exit:                          ; preds = %do.end.i.i.i, %sw.bb4.i.i.i, %sw.bb1.i.i.i, %sw.bb.i.i.i
  %20 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i57 = getelementptr %struct.omap_dma_reg, ptr %21, i32 33
  %type.i58 = getelementptr %struct.omap_dma_reg, ptr %21, i32 33, i32 2
  %22 = ptrtoint ptr %type.i58 to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %type.i58, align 1
  %24 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %channel_base.i, align 4
  %26 = ptrtoint ptr %add.ptr.i57 to i32
  call void @__asan_load2_noabort(i32 %26)
  %27 = load i16, ptr %add.ptr.i57, align 2
  %conv1.i60 = zext i16 %27 to i32
  %add.ptr2.i61 = getelementptr i8, ptr %25, i32 %conv1.i60
  %28 = zext i8 %23 to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.122)
  switch i8 %23, label %do.end.i.i65 [
    i8 1, label %sw.bb.i.i62
    i8 2, label %sw.bb1.i.i64
    i8 3, label %sw.bb10.i.i
  ]

sw.bb.i.i62:                                      ; preds = %omap_dma_clear_csr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %29 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i61) #10, !srcloc !149
  %30 = tail call i16 @llvm.bswap.i16(i16 %29) #10
  %conv.i.i = zext i16 %30 to i32
  br label %omap_dma_chan_read.exit

sw.bb1.i.i64:                                     ; preds = %omap_dma_clear_csr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i61) #10, !srcloc !149
  %add.ptr.i.i63 = getelementptr i8, ptr %add.ptr2.i61, i32 2
  %32 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i63) #10, !srcloc !149
  %33 = zext i16 %32 to i32
  %34 = zext i16 %31 to i32
  %35 = shl nuw i32 %34, 16
  %36 = or i32 %35, %33
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #10
  br label %omap_dma_chan_read.exit

sw.bb10.i.i:                                      ; preds = %omap_dma_clear_csr.exit
  call void @__sanitizer_cov_trace_pc() #12
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i61) #10, !srcloc !150
  %39 = tail call i32 @llvm.bswap.i32(i32 %38) #10
  br label %omap_dma_chan_read.exit

do.end.i.i65:                                     ; preds = %omap_dma_clear_csr.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_read.exit

omap_dma_chan_read.exit:                          ; preds = %do.end.i.i65, %sw.bb10.i.i, %sw.bb1.i.i64, %sw.bb.i.i62
  %val.0.i.i = phi i32 [ 0, %do.end.i.i65 ], [ %39, %sw.bb10.i.i ], [ %37, %sw.bb1.i.i64 ], [ %conv.i.i, %sw.bb.i.i62 ]
  %plat = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 4
  %40 = ptrtoint ptr %plat to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %plat, align 4
  %errata = getelementptr inbounds %struct.omap_system_dma_plat_info, ptr %41, i32 0, i32 3
  %42 = ptrtoint ptr %errata to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %errata, align 4
  %and = and i32 %43, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  %and2 = and i32 %val.0.i.i, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %or.cond = select i1 %tobool.not, i1 true, i1 %tobool3.not
  br i1 %or.cond, label %if.else, label %if.then

if.then:                                          ; preds = %omap_dma_chan_read.exit
  %reg_map.i66 = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 3
  %44 = ptrtoint ptr %reg_map.i66 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %reg_map.i66, align 4
  %stride.i = getelementptr %struct.omap_dma_reg, ptr %45, i32 28, i32 1
  %46 = ptrtoint ptr %stride.i to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %stride.i, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %47)
  %tobool.not.i = icmp eq i8 %47, 0
  br i1 %tobool.not.i, label %if.then.if.end.i_crit_edge, label %do.end.i, !prof !144

if.then.if.end.i_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 364, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %if.then.if.end.i_crit_edge
  %add.ptr.i67 = getelementptr %struct.omap_dma_reg, ptr %45, i32 28
  %type.i68 = getelementptr %struct.omap_dma_reg, ptr %45, i32 28, i32 2
  %48 = ptrtoint ptr %type.i68 to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %type.i68, align 1
  %base.i = getelementptr inbounds %struct.omap_dmadev, ptr %1, i32 0, i32 2
  %50 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i, align 4
  %52 = ptrtoint ptr %add.ptr.i67 to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %add.ptr.i67, align 2
  %conv20.i = zext i16 %53 to i32
  %add.ptr21.i = getelementptr i8, ptr %51, i32 %conv20.i
  %54 = zext i8 %49 to i64
  call void @__sanitizer_cov_trace_switch(i64 %54, ptr @__sancov_gen_cov_switch_values.123)
  switch i8 %49, label %do.end.i.i74 [
    i8 1, label %sw.bb.i.i70
    i8 2, label %sw.bb1.i.i72
    i8 3, label %sw.bb10.i.i73
  ]

sw.bb.i.i70:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %55 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i) #10, !srcloc !149
  %56 = tail call i16 @llvm.bswap.i16(i16 %55) #10
  %conv.i.i69 = zext i16 %56 to i32
  br label %omap_dma_glbl_read.exit

sw.bb1.i.i72:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr21.i) #10, !srcloc !149
  %add.ptr.i.i71 = getelementptr i8, ptr %add.ptr21.i, i32 2
  %58 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i71) #10, !srcloc !149
  %59 = zext i16 %58 to i32
  %60 = zext i16 %57 to i32
  %61 = shl nuw i32 %60, 16
  %62 = or i32 %61, %59
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #10
  br label %omap_dma_glbl_read.exit

sw.bb10.i.i73:                                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %64 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr21.i) #10, !srcloc !150
  %65 = tail call i32 @llvm.bswap.i32(i32 %64) #10
  br label %omap_dma_glbl_read.exit

do.end.i.i74:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_read.exit

omap_dma_glbl_read.exit:                          ; preds = %do.end.i.i74, %sw.bb10.i.i73, %sw.bb1.i.i72, %sw.bb.i.i70
  %val.0.i.i75 = phi i32 [ 0, %do.end.i.i74 ], [ %65, %sw.bb10.i.i73 ], [ %63, %sw.bb1.i.i72 ], [ %conv.i.i69, %sw.bb.i.i70 ]
  %and5 = and i32 %val.0.i.i75, -12289
  %or = or i32 %and5, 4096
  %66 = ptrtoint ptr %reg_map.i66 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %reg_map.i66, align 4
  %stride.i77 = getelementptr %struct.omap_dma_reg, ptr %67, i32 28, i32 1
  %68 = ptrtoint ptr %stride.i77 to i32
  call void @__asan_load1_noabort(i32 %68)
  %69 = load i8, ptr %stride.i77, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %69)
  %tobool.not.i78 = icmp eq i8 %69, 0
  br i1 %tobool.not.i78, label %omap_dma_glbl_read.exit.if.end.i85_crit_edge, label %do.end.i79, !prof !144

omap_dma_glbl_read.exit.if.end.i85_crit_edge:     ; preds = %omap_dma_glbl_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i85

do.end.i79:                                       ; preds = %omap_dma_glbl_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i85

if.end.i85:                                       ; preds = %do.end.i79, %omap_dma_glbl_read.exit.if.end.i85_crit_edge
  %add.ptr.i80 = getelementptr %struct.omap_dma_reg, ptr %67, i32 28
  %type.i81 = getelementptr %struct.omap_dma_reg, ptr %67, i32 28, i32 2
  %70 = ptrtoint ptr %type.i81 to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %type.i81, align 1
  %72 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i, align 4
  %74 = ptrtoint ptr %add.ptr.i80 to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %add.ptr.i80, align 2
  %conv20.i83 = zext i16 %75 to i32
  %add.ptr21.i84 = getelementptr i8, ptr %73, i32 %conv20.i83
  %76 = zext i8 %71 to i64
  call void @__sanitizer_cov_trace_switch(i64 %76, ptr @__sancov_gen_cov_switch_values.124)
  switch i8 %71, label %do.end.i.i91 [
    i8 1, label %sw.bb.i.i87
    i8 2, label %sw.bb1.i.i89
    i8 3, label %sw.bb4.i.i90
  ]

sw.bb.i.i87:                                      ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i86 = trunc i32 %or to i16
  %77 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i86) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i84, i16 %77) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit

sw.bb1.i.i89:                                     ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i = trunc i32 %or to i16
  %78 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i84, i16 %78) #10, !srcloc !145
  %shr.i.i = lshr i32 %val.0.i.i75, 16
  %conv3.i.i = trunc i32 %shr.i.i to i16
  %79 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i) #10
  %add.ptr.i.i88 = getelementptr i8, ptr %add.ptr21.i84, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i88, i16 %79) #10, !srcloc !145
  br label %omap_dma_glbl_write.exit

sw.bb4.i.i90:                                     ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #12
  %80 = tail call i32 @llvm.bswap.i32(i32 %or) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i84, i32 %80) #10, !srcloc !146
  br label %omap_dma_glbl_write.exit

do.end.i.i91:                                     ; preds = %if.end.i85
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_glbl_write.exit

omap_dma_glbl_write.exit:                         ; preds = %do.end.i.i91, %sw.bb4.i.i90, %sw.bb1.i.i89, %sw.bb.i.i87
  %81 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i93 = getelementptr %struct.omap_dma_reg, ptr %82, i32 33
  %type.i94 = getelementptr %struct.omap_dma_reg, ptr %82, i32 33, i32 2
  %83 = ptrtoint ptr %type.i94 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %type.i94, align 1
  %85 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %channel_base.i, align 4
  %87 = ptrtoint ptr %add.ptr.i93 to i32
  call void @__asan_load2_noabort(i32 %87)
  %88 = load i16, ptr %add.ptr.i93, align 2
  %conv1.i96 = zext i16 %88 to i32
  %add.ptr2.i97 = getelementptr i8, ptr %86, i32 %conv1.i96
  %89 = zext i8 %84 to i64
  call void @__sanitizer_cov_trace_switch(i64 %89, ptr @__sancov_gen_cov_switch_values.125)
  switch i8 %84, label %do.end.i.i103 [
    i8 1, label %sw.bb.i.i99
    i8 2, label %sw.bb1.i.i101
    i8 3, label %sw.bb10.i.i102
  ]

sw.bb.i.i99:                                      ; preds = %omap_dma_glbl_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %90 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i97) #10, !srcloc !149
  %91 = tail call i16 @llvm.bswap.i16(i16 %90) #10
  %conv.i.i98 = zext i16 %91 to i32
  br label %omap_dma_chan_read.exit105

sw.bb1.i.i101:                                    ; preds = %omap_dma_glbl_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %92 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i97) #10, !srcloc !149
  %add.ptr.i.i100 = getelementptr i8, ptr %add.ptr2.i97, i32 2
  %93 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i100) #10, !srcloc !149
  %94 = zext i16 %93 to i32
  %95 = zext i16 %92 to i32
  %96 = shl nuw i32 %95, 16
  %97 = or i32 %96, %94
  %98 = tail call i32 @llvm.bswap.i32(i32 %97) #10
  br label %omap_dma_chan_read.exit105

sw.bb10.i.i102:                                   ; preds = %omap_dma_glbl_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i97) #10, !srcloc !150
  %100 = tail call i32 @llvm.bswap.i32(i32 %99) #10
  br label %omap_dma_chan_read.exit105

do.end.i.i103:                                    ; preds = %omap_dma_glbl_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_read.exit105

omap_dma_chan_read.exit105:                       ; preds = %do.end.i.i103, %sw.bb10.i.i102, %sw.bb1.i.i101, %sw.bb.i.i99
  %val.0.i.i104 = phi i32 [ 0, %do.end.i.i103 ], [ %100, %sw.bb10.i.i102 ], [ %98, %sw.bb1.i.i101 ], [ %conv.i.i98, %sw.bb.i.i99 ]
  %and7 = and i32 %val.0.i.i104, -129
  %101 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i107 = getelementptr %struct.omap_dma_reg, ptr %102, i32 33
  %type.i108 = getelementptr %struct.omap_dma_reg, ptr %102, i32 33, i32 2
  %103 = ptrtoint ptr %type.i108 to i32
  call void @__asan_load1_noabort(i32 %103)
  %104 = load i8, ptr %type.i108, align 1
  %105 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %channel_base.i, align 4
  %107 = ptrtoint ptr %add.ptr.i107 to i32
  call void @__asan_load2_noabort(i32 %107)
  %108 = load i16, ptr %add.ptr.i107, align 2
  %conv1.i110 = zext i16 %108 to i32
  %add.ptr2.i111 = getelementptr i8, ptr %106, i32 %conv1.i110
  %109 = zext i8 %104 to i64
  call void @__sanitizer_cov_trace_switch(i64 %109, ptr @__sancov_gen_cov_switch_values.126)
  switch i8 %104, label %do.end.i.i120 [
    i8 1, label %sw.bb.i.i113
    i8 2, label %sw.bb1.i.i118
    i8 3, label %sw.bb4.i.i119
  ]

sw.bb.i.i113:                                     ; preds = %omap_dma_chan_read.exit105
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i112 = trunc i32 %and7 to i16
  %110 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i112) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i111, i16 %110) #10, !srcloc !145
  br label %omap_dma_chan_write.exit121

sw.bb1.i.i118:                                    ; preds = %omap_dma_chan_read.exit105
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i114 = trunc i32 %and7 to i16
  %111 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i114) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i111, i16 %111) #10, !srcloc !145
  %shr.i.i115 = lshr i32 %val.0.i.i104, 16
  %conv3.i.i116 = trunc i32 %shr.i.i115 to i16
  %112 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i116) #10
  %add.ptr.i.i117 = getelementptr i8, ptr %add.ptr2.i111, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i117, i16 %112) #10, !srcloc !145
  br label %omap_dma_chan_write.exit121

sw.bb4.i.i119:                                    ; preds = %omap_dma_chan_read.exit105
  call void @__sanitizer_cov_trace_pc() #12
  %113 = tail call i32 @llvm.bswap.i32(i32 %and7) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i111, i32 %113) #10, !srcloc !146
  br label %omap_dma_chan_write.exit121

do.end.i.i120:                                    ; preds = %omap_dma_chan_read.exit105
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit121

omap_dma_chan_write.exit121:                      ; preds = %do.end.i.i120, %sw.bb4.i.i119, %sw.bb1.i.i118, %sw.bb.i.i113
  %ccr = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 3
  %114 = ptrtoint ptr %ccr to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %ccr, align 4
  %and8 = and i32 %115, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8)
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %if.then10, label %omap_dma_chan_write.exit121.if.end_crit_edge

omap_dma_chan_write.exit121.if.end_crit_edge:     ; preds = %omap_dma_chan_write.exit121
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then10:                                        ; preds = %omap_dma_chan_write.exit121
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @omap_dma_drain_chan(ptr noundef %c)
  br label %if.end

if.end:                                           ; preds = %if.then10, %omap_dma_chan_write.exit121.if.end_crit_edge
  %116 = ptrtoint ptr %reg_map.i66 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %reg_map.i66, align 4
  %stride.i123 = getelementptr %struct.omap_dma_reg, ptr %117, i32 28, i32 1
  %118 = ptrtoint ptr %stride.i123 to i32
  call void @__asan_load1_noabort(i32 %118)
  %119 = load i8, ptr %stride.i123, align 2
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %119)
  %tobool.not.i124 = icmp eq i8 %119, 0
  br i1 %tobool.not.i124, label %if.end.if.end.i131_crit_edge, label %do.end.i125, !prof !144

if.end.if.end.i131_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i131

do.end.i125:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 355, i32 noundef 9, ptr noundef null) #10
  br label %if.end.i131

if.end.i131:                                      ; preds = %do.end.i125, %if.end.if.end.i131_crit_edge
  %add.ptr.i126 = getelementptr %struct.omap_dma_reg, ptr %117, i32 28
  %type.i127 = getelementptr %struct.omap_dma_reg, ptr %117, i32 28, i32 2
  %120 = ptrtoint ptr %type.i127 to i32
  call void @__asan_load1_noabort(i32 %120)
  %121 = load i8, ptr %type.i127, align 1
  %122 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i, align 4
  %124 = ptrtoint ptr %add.ptr.i126 to i32
  call void @__asan_load2_noabort(i32 %124)
  %125 = load i16, ptr %add.ptr.i126, align 2
  %conv20.i129 = zext i16 %125 to i32
  %add.ptr21.i130 = getelementptr i8, ptr %123, i32 %conv20.i129
  %126 = zext i8 %121 to i64
  call void @__sanitizer_cov_trace_switch(i64 %126, ptr @__sancov_gen_cov_switch_values.127)
  switch i8 %121, label %do.end.i.i140 [
    i8 1, label %sw.bb.i.i133
    i8 2, label %sw.bb1.i.i138
    i8 3, label %sw.bb4.i.i139
  ]

sw.bb.i.i133:                                     ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i132 = trunc i32 %val.0.i.i75 to i16
  %127 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i132) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i130, i16 %127) #10, !srcloc !145
  br label %do.body

sw.bb1.i.i138:                                    ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i134 = trunc i32 %val.0.i.i75 to i16
  %128 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i134) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr21.i130, i16 %128) #10, !srcloc !145
  %shr.i.i135 = lshr i32 %val.0.i.i75, 16
  %conv3.i.i136 = trunc i32 %shr.i.i135 to i16
  %129 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i136) #10
  %add.ptr.i.i137 = getelementptr i8, ptr %add.ptr21.i130, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i137, i16 %129) #10, !srcloc !145
  br label %do.body

sw.bb4.i.i139:                                    ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #12
  %130 = tail call i32 @llvm.bswap.i32(i32 %val.0.i.i75) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i130, i32 %130) #10, !srcloc !146
  br label %do.body

do.end.i.i140:                                    ; preds = %if.end.i131
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %do.body

if.else:                                          ; preds = %omap_dma_chan_read.exit
  %and11 = and i32 %val.0.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.else.cleanup_crit_edge, label %if.end14

if.else.cleanup_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end14:                                         ; preds = %if.else
  %and15 = and i32 %val.0.i.i, -129
  %131 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i143 = getelementptr %struct.omap_dma_reg, ptr %132, i32 33
  %type.i144 = getelementptr %struct.omap_dma_reg, ptr %132, i32 33, i32 2
  %133 = ptrtoint ptr %type.i144 to i32
  call void @__asan_load1_noabort(i32 %133)
  %134 = load i8, ptr %type.i144, align 1
  %135 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %channel_base.i, align 4
  %137 = ptrtoint ptr %add.ptr.i143 to i32
  call void @__asan_load2_noabort(i32 %137)
  %138 = load i16, ptr %add.ptr.i143, align 2
  %conv1.i146 = zext i16 %138 to i32
  %add.ptr2.i147 = getelementptr i8, ptr %136, i32 %conv1.i146
  %139 = zext i8 %134 to i64
  call void @__sanitizer_cov_trace_switch(i64 %139, ptr @__sancov_gen_cov_switch_values.128)
  switch i8 %134, label %do.end.i.i156 [
    i8 1, label %sw.bb.i.i149
    i8 2, label %sw.bb1.i.i154
    i8 3, label %sw.bb4.i.i155
  ]

sw.bb.i.i149:                                     ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i148 = trunc i32 %and15 to i16
  %140 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i148) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i147, i16 %140) #10, !srcloc !145
  br label %omap_dma_chan_write.exit157

sw.bb1.i.i154:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i150 = trunc i32 %and15 to i16
  %141 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i150) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i147, i16 %141) #10, !srcloc !145
  %shr.i.i151 = lshr i32 %val.0.i.i, 16
  %conv3.i.i152 = trunc i32 %shr.i.i151 to i16
  %142 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i152) #10
  %add.ptr.i.i153 = getelementptr i8, ptr %add.ptr2.i147, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i153, i16 %142) #10, !srcloc !145
  br label %omap_dma_chan_write.exit157

sw.bb4.i.i155:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  %143 = tail call i32 @llvm.bswap.i32(i32 %and15) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i147, i32 %143) #10, !srcloc !146
  br label %omap_dma_chan_write.exit157

do.end.i.i156:                                    ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_write.exit157

omap_dma_chan_write.exit157:                      ; preds = %do.end.i.i156, %sw.bb4.i.i155, %sw.bb1.i.i154, %sw.bb.i.i149
  %ccr16 = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 3
  %144 = ptrtoint ptr %ccr16 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %ccr16, align 4
  %and17 = and i32 %145, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17)
  %tobool18.not = icmp eq i32 %and17, 0
  br i1 %tobool18.not, label %if.then19, label %omap_dma_chan_write.exit157.do.body_crit_edge

omap_dma_chan_write.exit157.do.body_crit_edge:    ; preds = %omap_dma_chan_write.exit157
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

if.then19:                                        ; preds = %omap_dma_chan_write.exit157
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @omap_dma_drain_chan(ptr noundef %c)
  br label %do.body

do.body:                                          ; preds = %if.then19, %omap_dma_chan_write.exit157.do.body_crit_edge, %do.end.i.i140, %sw.bb4.i.i139, %sw.bb1.i.i138, %sw.bb.i.i133
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !156
  tail call void @arm_heavy_mb() #10
  %cyclic = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 6
  %146 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %146)
  %147 = load i8, ptr %cyclic, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %147)
  %tobool22.not = icmp eq i8 %147, 0
  br i1 %tobool22.not, label %do.body.if.end26_crit_edge, label %if.then23

do.body.if.end26_crit_edge:                       ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then23:                                        ; preds = %do.body
  %148 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i159 = getelementptr %struct.omap_dma_reg, ptr %149, i32 44
  %type.i160 = getelementptr %struct.omap_dma_reg, ptr %149, i32 44, i32 2
  %150 = ptrtoint ptr %type.i160 to i32
  call void @__asan_load1_noabort(i32 %150)
  %151 = load i8, ptr %type.i160, align 1
  %152 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %152)
  %153 = load ptr, ptr %channel_base.i, align 4
  %154 = ptrtoint ptr %add.ptr.i159 to i32
  call void @__asan_load2_noabort(i32 %154)
  %155 = load i16, ptr %add.ptr.i159, align 2
  %conv1.i162 = zext i16 %155 to i32
  %add.ptr2.i163 = getelementptr i8, ptr %153, i32 %conv1.i162
  %156 = zext i8 %151 to i64
  call void @__sanitizer_cov_trace_switch(i64 %156, ptr @__sancov_gen_cov_switch_values.129)
  switch i8 %151, label %do.end.i.i169 [
    i8 1, label %sw.bb.i.i165
    i8 2, label %sw.bb1.i.i167
    i8 3, label %sw.bb10.i.i168
  ]

sw.bb.i.i165:                                     ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %157 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i163) #10, !srcloc !149
  %158 = tail call i16 @llvm.bswap.i16(i16 %157) #10
  %conv.i.i164 = zext i16 %158 to i32
  br label %omap_dma_chan_read.exit171

sw.bb1.i.i167:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %159 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i163) #10, !srcloc !149
  %add.ptr.i.i166 = getelementptr i8, ptr %add.ptr2.i163, i32 2
  %160 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i166) #10, !srcloc !149
  %161 = zext i16 %160 to i32
  %162 = zext i16 %159 to i32
  %163 = shl nuw i32 %162, 16
  %164 = or i32 %163, %161
  %165 = tail call i32 @llvm.bswap.i32(i32 %164) #10
  br label %omap_dma_chan_read.exit171

sw.bb10.i.i168:                                   ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  %166 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i163) #10, !srcloc !150
  %167 = tail call i32 @llvm.bswap.i32(i32 %166) #10
  br label %omap_dma_chan_read.exit171

do.end.i.i169:                                    ; preds = %if.then23
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %omap_dma_chan_read.exit171

omap_dma_chan_read.exit171:                       ; preds = %do.end.i.i169, %sw.bb10.i.i168, %sw.bb1.i.i167, %sw.bb.i.i165
  %val.0.i.i170 = phi i32 [ 0, %do.end.i.i169 ], [ %167, %sw.bb10.i.i168 ], [ %165, %sw.bb1.i.i167 ], [ %conv.i.i164, %sw.bb.i.i165 ]
  %and25 = and i32 %val.0.i.i170, -32769
  %168 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i173 = getelementptr %struct.omap_dma_reg, ptr %169, i32 44
  %type.i174 = getelementptr %struct.omap_dma_reg, ptr %169, i32 44, i32 2
  %170 = ptrtoint ptr %type.i174 to i32
  call void @__asan_load1_noabort(i32 %170)
  %171 = load i8, ptr %type.i174, align 1
  %172 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %channel_base.i, align 4
  %174 = ptrtoint ptr %add.ptr.i173 to i32
  call void @__asan_load2_noabort(i32 %174)
  %175 = load i16, ptr %add.ptr.i173, align 2
  %conv1.i176 = zext i16 %175 to i32
  %add.ptr2.i177 = getelementptr i8, ptr %173, i32 %conv1.i176
  %176 = zext i8 %171 to i64
  call void @__sanitizer_cov_trace_switch(i64 %176, ptr @__sancov_gen_cov_switch_values.130)
  switch i8 %171, label %do.end.i.i186 [
    i8 1, label %sw.bb.i.i179
    i8 2, label %sw.bb1.i.i184
    i8 3, label %sw.bb4.i.i185
  ]

sw.bb.i.i179:                                     ; preds = %omap_dma_chan_read.exit171
  call void @__sanitizer_cov_trace_pc() #12
  %conv.i.i178 = trunc i32 %and25 to i16
  %177 = tail call i16 @llvm.bswap.i16(i16 %conv.i.i178) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i177, i16 %177) #10, !srcloc !145
  br label %if.end26

sw.bb1.i.i184:                                    ; preds = %omap_dma_chan_read.exit171
  call void @__sanitizer_cov_trace_pc() #12
  %conv2.i.i180 = trunc i32 %and25 to i16
  %178 = tail call i16 @llvm.bswap.i16(i16 %conv2.i.i180) #10
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr2.i177, i16 %178) #10, !srcloc !145
  %shr.i.i181 = lshr i32 %val.0.i.i170, 16
  %conv3.i.i182 = trunc i32 %shr.i.i181 to i16
  %179 = tail call i16 @llvm.bswap.i16(i16 %conv3.i.i182) #10
  %add.ptr.i.i183 = getelementptr i8, ptr %add.ptr2.i177, i32 2
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i183, i16 %179) #10, !srcloc !145
  br label %if.end26

sw.bb4.i.i185:                                    ; preds = %omap_dma_chan_read.exit171
  call void @__sanitizer_cov_trace_pc() #12
  %180 = tail call i32 @llvm.bswap.i32(i32 %and25) #10
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr2.i177, i32 %180) #10, !srcloc !146
  br label %if.end26

do.end.i.i186:                                    ; preds = %omap_dma_chan_read.exit171
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 324, i32 noundef 9, ptr noundef null) #10
  br label %if.end26

if.end26:                                         ; preds = %do.end.i.i186, %sw.bb4.i.i185, %sw.bb1.i.i184, %sw.bb.i.i179, %do.body.if.end26_crit_edge
  %running = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 8
  %181 = ptrtoint ptr %running to i32
  call void @__asan_store1_noabort(i32 %181)
  store i8 0, ptr %running, align 2
  br label %cleanup

cleanup:                                          ; preds = %if.end26, %if.else.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end26 ], [ -22, %if.else.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @omap_dma_drain_chan(ptr nocapture noundef readonly %c) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %reg_map.i = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 2
  %channel_base.i = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 1
  br label %for.cond

for.cond:                                         ; preds = %if.end2, %entry
  %i.0 = phi i32 [ 0, %entry ], [ %inc, %if.end2 ]
  %0 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i = getelementptr %struct.omap_dma_reg, ptr %1, i32 33
  %type.i = getelementptr %struct.omap_dma_reg, ptr %1, i32 33, i32 2
  %2 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %type.i, align 1
  %4 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channel_base.i, align 4
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %add.ptr.i, align 2
  %conv1.i = zext i16 %7 to i32
  %add.ptr2.i = getelementptr i8, ptr %5, i32 %conv1.i
  %8 = zext i8 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.131)
  switch i8 %3, label %for.end.thread [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb10.i.i
  ]

sw.bb.i.i:                                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %9 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #10, !srcloc !149
  %10 = tail call i16 @llvm.bswap.i16(i16 %9) #10
  %conv.i.i = zext i16 %10 to i32
  br label %omap_dma_chan_read.exit

sw.bb1.i.i:                                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %11 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #10, !srcloc !149
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i, i32 2
  %12 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !149
  %13 = call i16 @llvm.bswap.i16(i16 %11)
  %14 = zext i16 %13 to i32
  br label %omap_dma_chan_read.exit

sw.bb10.i.i:                                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !150
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #10
  br label %omap_dma_chan_read.exit

for.end.thread:                                   ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %if.end6

omap_dma_chan_read.exit:                          ; preds = %sw.bb10.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %val.0.i.i = phi i32 [ %16, %sw.bb10.i.i ], [ %14, %sw.bb1.i.i ], [ %conv.i.i, %sw.bb.i.i ]
  %and = and i32 %val.0.i.i, 1536
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %i.0)
  %cmp = icmp ugt i32 %i.0, 100
  %or.cond = select i1 %tobool.not, i1 true, i1 %cmp
  br i1 %or.cond, label %for.end, label %if.end2

if.end2:                                          ; preds = %omap_dma_chan_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %17 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %17(i32 noundef 1073740) #10
  %inc = add nuw nsw i32 %i.0, 1
  br label %for.cond

for.end:                                          ; preds = %omap_dma_chan_read.exit
  br i1 %tobool.not, label %for.end.if.end6_crit_edge, label %do.end

for.end.if.end6_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %c, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 15
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %dma_ch = getelementptr inbounds %struct.omap_chan, ptr %c, i32 0, i32 9
  %22 = ptrtoint ptr %dma_ch to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_ch, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %21, ptr noundef nonnull @.str.58, i32 noundef %23) #13
  br label %if.end6

if.end6:                                          ; preds = %do.end, %for.end.if.end6_crit_edge, %for.end.thread
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @omap_dma_desc_free(ptr noundef %vd) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %using_ll = getelementptr inbounds %struct.omap_desc, ptr %vd, i32 0, i32 1
  %0 = ptrtoint ptr %using_ll to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %using_ll, align 4, !range !147
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %if.then

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.then:                                          ; preds = %entry
  %sglen = getelementptr inbounds %struct.omap_desc, ptr %vd, i32 0, i32 12
  %2 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %sglen, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp21.not = icmp eq i32 %3, 0
  br i1 %cmp21.not, label %if.then.if.end10_crit_edge, label %for.body.lr.ph

if.then.if.end10_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

for.body.lr.ph:                                   ; preds = %if.then
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vd, i32 0, i32 3
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %5, align 4
  %desc_pool = getelementptr inbounds %struct.omap_dmadev, ptr %7, i32 0, i32 13
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.022 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %t2_desc = getelementptr %struct.omap_desc, ptr %vd, i32 0, i32 13, i32 %i.022, i32 5
  %8 = ptrtoint ptr %t2_desc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %t2_desc, align 4
  %tobool3.not = icmp eq ptr %9, null
  br i1 %tobool3.not, label %for.body.for.inc_crit_edge, label %if.then4

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then4:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc_pool, align 4
  %t2_desc_paddr = getelementptr %struct.omap_desc, ptr %vd, i32 0, i32 13, i32 %i.022, i32 6
  %12 = ptrtoint ptr %t2_desc_paddr to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %t2_desc_paddr, align 4
  tail call void @dma_pool_free(ptr noundef %11, ptr noundef nonnull %9, i32 noundef %13) #10
  br label %for.inc

for.inc:                                          ; preds = %if.then4, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.022, 1
  %14 = ptrtoint ptr %sglen to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %sglen, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.if.end10_crit_edge

for.inc.if.end10_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end10:                                         ; preds = %for.inc.if.end10_crit_edge, %if.then.if.end10_crit_edge, %entry.if.end10_crit_edge
  tail call void @kfree(ptr noundef %vd) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc zeroext i1 @omap_dma_busy(ptr noundef %od) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lch_bitmap = getelementptr inbounds %struct.omap_dmadev, ptr %od, i32 0, i32 9
  %lch_count = getelementptr inbounds %struct.omap_dmadev, ptr %od, i32 0, i32 8
  %0 = ptrtoint ptr %lch_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %lch_count, align 4
  %call15 = tail call i32 @_find_next_bit_be(ptr noundef %lch_bitmap, i32 noundef %1, i32 noundef 0) #10
  %2 = ptrtoint ptr %lch_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %lch_count, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call15, i32 %3)
  %cmp.not16 = icmp slt i32 %call15, %3
  br i1 %cmp.not16, label %if.end.lr.ph, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.lr.ph:                                     ; preds = %entry
  %lch_map = getelementptr inbounds %struct.omap_dmadev, ptr %od, i32 0, i32 17
  br label %if.end

if.end:                                           ; preds = %while.cond.backedge.if.end_crit_edge, %if.end.lr.ph
  %call17 = phi i32 [ %call15, %if.end.lr.ph ], [ %call, %while.cond.backedge.if.end_crit_edge ]
  %4 = ptrtoint ptr %lch_map to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %lch_map, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %call17
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.end.while.cond.backedge_crit_edge, label %if.end3

if.end.while.cond.backedge_crit_edge:             ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

while.cond.backedge:                              ; preds = %omap_dma_chan_read.exit.while.cond.backedge_crit_edge, %omap_dma_chan_read.exit.thread, %if.end.while.cond.backedge_crit_edge
  %8 = ptrtoint ptr %lch_count to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %lch_count, align 4
  %add = add nsw i32 %call17, 1
  %call = tail call i32 @_find_next_bit_be(ptr noundef %lch_bitmap, i32 noundef %9, i32 noundef %add) #10
  %10 = ptrtoint ptr %lch_count to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %lch_count, align 4
  %cmp.not = icmp slt i32 %call, %11
  br i1 %cmp.not, label %while.cond.backedge.if.end_crit_edge, label %while.cond.backedge.cleanup_crit_edge

while.cond.backedge.cleanup_crit_edge:            ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

while.cond.backedge.if.end_crit_edge:             ; preds = %while.cond.backedge
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end3:                                          ; preds = %if.end
  %reg_map.i = getelementptr inbounds %struct.omap_chan, ptr %7, i32 0, i32 2
  %12 = ptrtoint ptr %reg_map.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %reg_map.i, align 4
  %add.ptr.i = getelementptr %struct.omap_dma_reg, ptr %13, i32 33
  %type.i = getelementptr %struct.omap_dma_reg, ptr %13, i32 33, i32 2
  %14 = ptrtoint ptr %type.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %type.i, align 1
  %channel_base.i = getelementptr inbounds %struct.omap_chan, ptr %7, i32 0, i32 1
  %16 = ptrtoint ptr %channel_base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %channel_base.i, align 4
  %18 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load2_noabort(i32 %18)
  %19 = load i16, ptr %add.ptr.i, align 2
  %conv1.i = zext i16 %19 to i32
  %add.ptr2.i = getelementptr i8, ptr %17, i32 %conv1.i
  %20 = zext i8 %15 to i64
  call void @__sanitizer_cov_trace_switch(i64 %20, ptr @__sancov_gen_cov_switch_values.132)
  switch i8 %15, label %omap_dma_chan_read.exit.thread [
    i8 1, label %sw.bb.i.i
    i8 2, label %sw.bb1.i.i
    i8 3, label %sw.bb10.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #10, !srcloc !149
  %22 = tail call i16 @llvm.bswap.i16(i16 %21) #10
  %conv.i.i = zext i16 %22 to i32
  br label %omap_dma_chan_read.exit

sw.bb1.i.i:                                       ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %23 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr2.i) #10, !srcloc !149
  %add.ptr.i.i = getelementptr i8, ptr %add.ptr2.i, i32 2
  %24 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i.i) #10, !srcloc !149
  %25 = call i16 @llvm.bswap.i16(i16 %23)
  %26 = zext i16 %25 to i32
  br label %omap_dma_chan_read.exit

sw.bb10.i.i:                                      ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr2.i) #10, !srcloc !150
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #10
  br label %omap_dma_chan_read.exit

omap_dma_chan_read.exit.thread:                   ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 344, i32 noundef 9, ptr noundef null) #10
  br label %while.cond.backedge

omap_dma_chan_read.exit:                          ; preds = %sw.bb10.i.i, %sw.bb1.i.i, %sw.bb.i.i
  %val.0.i.i = phi i32 [ %28, %sw.bb10.i.i ], [ %26, %sw.bb1.i.i ], [ %conv.i.i, %sw.bb.i.i ]
  %and = and i32 %val.0.i.i, 128
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool5.not = icmp eq i32 %and, 0
  br i1 %tobool5.not, label %omap_dma_chan_read.exit.while.cond.backedge_crit_edge, label %omap_dma_chan_read.exit.cleanup_crit_edge

omap_dma_chan_read.exit.cleanup_crit_edge:        ; preds = %omap_dma_chan_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

omap_dma_chan_read.exit.while.cond.backedge_crit_edge: ; preds = %omap_dma_chan_read.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.backedge

cleanup:                                          ; preds = %omap_dma_chan_read.exit.cleanup_crit_edge, %while.cond.backedge.cleanup_crit_edge, %entry.cleanup_crit_edge
  %cmp.not.lcssa = phi i1 [ false, %entry.cleanup_crit_edge ], [ false, %while.cond.backedge.cleanup_crit_edge ], [ true, %omap_dma_chan_read.exit.cleanup_crit_edge ]
  ret i1 %cmp.not.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @cpu_pm_unregister_notifier(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.usub.sat.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 70)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { cold nounwind }
attributes #14 = { nounwind allocsize(2) }
attributes #15 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !16, !17, !18, !19, !20, !21, !23, !24, !26, !27, !29, !30, !32, !34, !35, !36, !37, !39, !41, !42, !43, !45, !47, !48, !49, !51, !52, !53, !55, !56, !57, !59, !60, !61, !63, !64, !65, !66, !67, !69, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !100, !102, !103, !104, !105, !107, !108, !109, !111, !112, !113, !114, !116, !117, !118, !119, !121, !123, !125, !127, !129, !131}
!llvm.module.flags = !{!133, !134, !135, !136, !137, !138, !139, !140}
!llvm.ident = !{!141}

!0 = !{ptr @__initcall__kmod_omap_dma__240_1942_omap_dma_init4, !1, !"__initcall__kmod_omap_dma__240_1942_omap_dma_init4", i1 false, i1 false}
!1 = !{!"../drivers/dma/ti/omap-dma.c", i32 1942, i32 1}
!2 = !{ptr @__exitcall_omap_dma_exit, !3, !"__exitcall_omap_dma_exit", i1 false, i1 false}
!3 = !{!"../drivers/dma/ti/omap-dma.c", i32 1948, i32 1}
!4 = !{ptr @__UNIQUE_ID_author241, !5, !"__UNIQUE_ID_author241", i1 false, i1 false}
!5 = !{!"../drivers/dma/ti/omap-dma.c", i32 1950, i32 1}
!6 = !{ptr @__UNIQUE_ID_file242, !7, !"__UNIQUE_ID_file242", i1 false, i1 false}
!7 = !{!"../drivers/dma/ti/omap-dma.c", i32 1951, i32 1}
!8 = !{ptr @__UNIQUE_ID_license243, !7, !"__UNIQUE_ID_license243", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/dma/ti/omap-dma.c", i32 1918, i32 11}
!11 = !{ptr @omap_dma_driver, !12, !"omap_dma_driver", i1 false, i1 false}
!12 = !{!"../drivers/dma/ti/omap-dma.c", i32 1914, i32 31}
!13 = !{ptr @.str.1, !14, !"<string literal>", i1 false, i1 false}
!14 = !{!"../drivers/dma/ti/omap-dma.c", i32 1674, i32 4}
!15 = !{ptr @.str.2, !14, !"<string literal>", i1 false, i1 false}
!16 = !{ptr @.str.3, !14, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.4, !14, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.5, !14, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @omap_dma_probe._entry, !14, !"_entry", i1 false, i1 false}
!20 = !{ptr @omap_dma_probe._entry_ptr, !14, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @omap_dma_probe.__key, !22, !"__key", i1 false, i1 false}
!22 = !{!"../drivers/dma/ti/omap-dma.c", i32 1715, i32 2}
!23 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @omap_dma_probe.__key.7, !25, !"__key", i1 false, i1 false}
!25 = !{!"../drivers/dma/ti/omap-dma.c", i32 1716, i32 2}
!26 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @omap_dma_probe.__key.9, !28, !"__key", i1 false, i1 false}
!28 = !{!"../drivers/dma/ti/omap-dma.c", i32 1717, i32 2}
!29 = !{ptr @.str.10, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/ti/omap-dma.c", i32 1722, i32 13}
!32 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/ti/omap-dma.c", i32 1724, i32 3}
!34 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @omap_dma_probe._entry.12, !33, !"_entry", i1 false, i1 false}
!36 = !{ptr @omap_dma_probe._entry_ptr.15, !33, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/ti/omap-dma.c", i32 1734, i32 53}
!39 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/ti/omap-dma.c", i32 1736, i32 3}
!41 = !{ptr @omap_dma_probe._entry.17, !40, !"_entry", i1 false, i1 false}
!42 = !{ptr @omap_dma_probe._entry_ptr.19, !40, !"_entry_ptr", i1 false, i1 false}
!43 = !{ptr @.str.20, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/ti/omap-dma.c", i32 1744, i32 14}
!45 = !{ptr @.str.22, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/ti/omap-dma.c", i32 1769, i32 3}
!47 = !{ptr @omap_dma_probe._entry.21, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @omap_dma_probe._entry_ptr.23, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.25, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma/ti/omap-dma.c", i32 1797, i32 4}
!51 = !{ptr @omap_dma_probe._entry.24, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @omap_dma_probe._entry_ptr.26, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @.str.28, !54, !"<string literal>", i1 false, i1 false}
!54 = !{!"../drivers/dma/ti/omap-dma.c", i32 1805, i32 3}
!55 = !{ptr @omap_dma_probe._entry.27, !54, !"_entry", i1 false, i1 false}
!56 = !{ptr @omap_dma_probe._entry_ptr.29, !54, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.31, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/ti/omap-dma.c", i32 1820, i32 4}
!59 = !{ptr @omap_dma_probe._entry.30, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @omap_dma_probe._entry_ptr.32, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.34, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/ti/omap-dma.c", i32 1836, i32 2}
!63 = !{ptr @omap_dma_probe._entry.33, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @omap_dma_probe._entry_ptr.35, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.36, !62, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @.str.37, !62, !"<string literal>", i1 false, i1 false}
!67 = !{ptr @default_cfg, !68, !"default_cfg", i1 false, i1 false}
!68 = !{!"../drivers/dma/ti/omap-dma.c", i32 1650, i32 37}
!69 = !{ptr @.str.38, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/ti/omap-dma.c", i32 710, i32 38}
!71 = !{ptr @.str.39, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma/ti/omap-dma.c", i32 716, i32 2}
!73 = !{ptr @.str.40, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @.str.41, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @omap_dma_alloc_chan_resources.__UNIQUE_ID_ddebug238, !72, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!76 = !{ptr @.str.42, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/dma/ti/../virt-dma.h", i32 101, i32 2}
!78 = !{ptr @.str.43, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @.str.44, !77, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug236, !77, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!81 = !{ptr @.str.45, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/dma/ti/omap-dma.c", i32 776, i32 2}
!83 = !{ptr @.str.46, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @omap_dma_free_chan_resources.__UNIQUE_ID_ddebug239, !82, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!85 = !{ptr @es_bytes, !86, !"es_bytes", i1 false, i1 false}
!86 = !{!"../drivers/dma/ti/omap-dma.c", i32 222, i32 23}
!87 = !{ptr @.str.47, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/ti/omap-dma.c", i32 980, i32 3}
!89 = !{ptr @.str.48, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @omap_dma_prep_slave_sg._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @omap_dma_prep_slave_sg._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.50, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/dma/ti/omap-dma.c", i32 1107, i32 5}
!94 = !{ptr @omap_dma_prep_slave_sg._entry.49, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @omap_dma_prep_slave_sg._entry_ptr.51, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @.str.52, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma/ti/omap-dma.c", i32 1157, i32 3}
!98 = !{ptr @omap_dma_prep_dma_cyclic._entry, !97, !"_entry", i1 false, i1 false}
!99 = !{ptr @omap_dma_prep_dma_cyclic._entry_ptr, !97, !"_entry_ptr", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/dma/ti/omap-dma.c", i32 1328, i32 3}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @omap_dma_prep_dma_interleaved._entry, !101, !"_entry", i1 false, i1 false}
!104 = !{ptr @omap_dma_prep_dma_interleaved._entry_ptr, !101, !"_entry_ptr", i1 false, i1 false}
!105 = !{ptr @.str.56, !106, !"<string literal>", i1 false, i1 false}
!106 = !{!"../drivers/dma/ti/omap-dma.c", i32 1343, i32 3}
!107 = !{ptr @omap_dma_prep_dma_interleaved._entry.55, !106, !"_entry", i1 false, i1 false}
!108 = !{ptr @omap_dma_prep_dma_interleaved._entry_ptr.57, !106, !"_entry_ptr", i1 false, i1 false}
!109 = !{ptr @.str.58, !110, !"<string literal>", i1 false, i1 false}
!110 = !{!"../drivers/dma/ti/omap-dma.c", i32 480, i32 3}
!111 = !{ptr @.str.59, !110, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @omap_dma_drain_chan._entry, !110, !"_entry", i1 false, i1 false}
!113 = !{ptr @omap_dma_drain_chan._entry_ptr, !110, !"_entry_ptr", i1 false, i1 false}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/dma/ti/omap-dma.c", i32 656, i32 4}
!116 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @omap_dma_irq._entry, !115, !"_entry", i1 false, i1 false}
!118 = !{ptr @omap_dma_irq._entry_ptr, !115, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @omap_dma_info, !120, !"omap_dma_info", i1 false, i1 false}
!120 = !{!"../drivers/dma/ti/omap-dma.c", i32 229, i32 34}
!121 = !{ptr @omap_dma_match, !122, !"omap_dma_match", i1 false, i1 false}
!122 = !{!"../drivers/dma/ti/omap-dma.c", i32 1904, i32 34}
!123 = !{ptr @omap2420_data, !124, !"omap2420_data", i1 false, i1 false}
!124 = !{!"../drivers/dma/ti/omap-dma.c", i32 1871, i32 37}
!125 = !{ptr @omap2430_data, !126, !"omap2430_data", i1 false, i1 false}
!126 = !{!"../drivers/dma/ti/omap-dma.c", i32 1878, i32 37}
!127 = !{ptr @omap3430_data, !128, !"omap3430_data", i1 false, i1 false}
!128 = !{!"../drivers/dma/ti/omap-dma.c", i32 1884, i32 37}
!129 = !{ptr @omap3630_data, !130, !"omap3630_data", i1 false, i1 false}
!130 = !{!"../drivers/dma/ti/omap-dma.c", i32 1891, i32 37}
!131 = !{ptr @omap4_data, !132, !"omap4_data", i1 false, i1 false}
!132 = !{!"../drivers/dma/ti/omap-dma.c", i32 1898, i32 37}
!133 = !{i32 1, !"wchar_size", i32 2}
!134 = !{i32 1, !"min_enum_size", i32 4}
!135 = !{i32 8, !"branch-target-enforcement", i32 0}
!136 = !{i32 8, !"sign-return-address", i32 0}
!137 = !{i32 8, !"sign-return-address-all", i32 0}
!138 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!139 = !{i32 7, !"uwtable", i32 1}
!140 = !{i32 7, !"frame-pointer", i32 2}
!141 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!142 = !{!"auto-init"}
!143 = !{!"branch_weights", i32 1, i32 2000}
!144 = !{!"branch_weights", i32 2000, i32 1}
!145 = !{i64 6322827}
!146 = !{i64 6323447}
!147 = !{i8 0, i8 2}
!148 = !{i64 2148740076, i64 2148740081, i64 2148740094, i64 2148740138, i64 2148740172, i64 2148740193}
!149 = !{i64 6323027}
!150 = !{i64 6323865}
!151 = !{i64 2154410876}
!152 = !{i64 2154409370, i64 2154409863, i64 2154409407, i64 2154409463, i64 2154409497, i64 2154409521, i64 2154409562, i64 2154409583, i64 2154409611, i64 2154409645}
!153 = !{i32 0, i32 33}
!154 = !{i64 2154495459}
!155 = !{i64 2154474574}
!156 = !{i64 2154474222}
