; ModuleID = '/llk/IR_all_yes/drivers/dma/sh/rcar-dmac.c_pt.bc'
source_filename = "../drivers/dma/sh/rcar-dmac.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.rcar_dmac_of_data = type { i32, i32 }
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
%struct.rcar_dmac = type { %struct.dma_device, ptr, ptr, ptr, i32, ptr, i32, [8 x i32] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.rcar_dmac_chan = type { %struct.dma_chan, ptr, i32, i32, %struct.rcar_dmac_chan_slave, %struct.rcar_dmac_chan_slave, %struct.rcar_dmac_chan_map, i32, %struct.spinlock, %struct.anon.74 }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.rcar_dmac_chan_slave = type { i32, i32 }
%struct.rcar_dmac_chan_map = type { i32, i32, %struct.rcar_dmac_chan_slave }
%struct.anon.74 = type { %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr, %struct.list_head, %struct.list_head }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.page = type { i32, %union.anon.2, %union.anon.66, %struct.atomic_t, i32 }
%union.anon.2 = type { %struct.anon.3 }
%struct.anon.3 = type { %struct.list_head, ptr, i32, i32 }
%union.anon.66 = type { %struct.atomic_t }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.rcar_dmac_desc = type { %struct.dma_async_tx_descriptor, i32, i32, i32, %struct.list_head, %struct.list_head, ptr, i32, %struct.anon.75, i32, i8 }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.anon.75 = type { i8, ptr, i32, i32 }
%struct.rcar_dmac_xfer_chunk = type { %struct.list_head, i32, i32, i32 }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.rcar_dmac_desc_page = type { %struct.list_head, %union.anon.76 }
%union.anon.76 = type { [0 x %struct.rcar_dmac_desc] }
%struct.rcar_dmac_hw_desc = type { i32, i32, i32, i32 }
%struct.dmaengine_result = type { i32, i32 }

@__initcall__kmod_rcar_dmac__244_2048_rcar_dmac_driver_init6 = internal global ptr @rcar_dmac_driver_init, section ".initcall6.init", align 4
@rcar_dmac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @rcar_dmac_probe, ptr @rcar_dmac_remove, ptr @rcar_dmac_shutdown, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @rcar_dmac_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @rcar_dmac_pm, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_rcar_dmac_driver_exit = internal global ptr @rcar_dmac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description245 = internal constant [55 x i8] c"rcar_dmac.description=R-Car Gen2 DMA Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [70 x i8] c"rcar_dmac.author=Laurent Pinchart <laurent.pinchart@ideasonboard.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [40 x i8] c"rcar_dmac.file=drivers/dma/sh/rcar-dmac\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [25 x i8] c"rcar_dmac.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rcar-dmac\00", [22 x i8] zeroinitializer }, align 32
@rcar_dmac_of_ids = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-dmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_dmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,rcar-gen4-dmac\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen4_dmac_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"renesas,dmac-r8a779a0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @rcar_gen4_dmac_data }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@rcar_dmac_pm = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @rcar_dmac_runtime_suspend, ptr @rcar_dmac_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@rcar_dmac_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1923, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"runtime PM get sync failed (%d)\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"rcar_dmac_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"drivers/dma/sh/rcar-dmac.c\00", [37 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@rcar_dmac_probe._entry_ptr = internal global ptr @rcar_dmac_probe._entry, section ".printk_index", align 4
@rcar_dmac_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 1931, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"failed to reset device\0A\00", [40 x i8] zeroinitializer }, align 32
@rcar_dmac_probe._entry_ptr.8 = internal global ptr @rcar_dmac_probe._entry.6, section ".printk_index", align 4
@.str.9 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@rcar_dmac_parse_of._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 1822, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"unable to read dma-channels property\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"rcar_dmac_parse_of\00", [45 x i8] zeroinitializer }, align 32
@rcar_dmac_parse_of._entry_ptr = internal global ptr @rcar_dmac_parse_of._entry, section ".printk_index", align 4
@rcar_dmac_parse_of._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.11, ptr @.str.3, i32 1830, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"invalid number of channels %u\0A\00", [33 x i8] zeroinitializer }, align 32
@rcar_dmac_parse_of._entry_ptr.14 = internal global ptr @rcar_dmac_parse_of._entry.12, section ".printk_index", align 4
@.str.15 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma-channel-mask\00", [47 x i8] zeroinitializer }, align 32
@rcar_dmac_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 487, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"DMAOR initialization failed.\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"rcar_dmac_init\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@rcar_dmac_init._entry_ptr = internal global ptr @rcar_dmac_init._entry, section ".printk_index", align 4
@rcar_dmac_tx_submit.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.20, ptr @.str.3, ptr @.str.21, i8 0, i8 127, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.19 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"rcar_dmac\00", [22 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"rcar_dmac_tx_submit\00", [44 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"chan%u: submit #%d@%p\0A\00", [41 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@rcar_dmac_chcr_de_barrier._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 800, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"CHCR DE check error\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rcar_dmac_chcr_de_barrier\00", [38 x i8] zeroinitializer }, align 32
@rcar_dmac_chcr_de_barrier._entry_ptr = internal global ptr @rcar_dmac_chcr_de_barrier._entry, section ".printk_index", align 4
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@rcar_dmac_chan_prep_sg.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 -2, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.24 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"rcar_dmac_chan_prep_sg\00", [41 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [51 x i8], [45 x i8] } { [51 x i8] c"chan%u: chunk %p/%p sgl %u@%p, %u/%u %pad -> %pad\0A\00", [45 x i8] zeroinitializer }, align 32
@rcar_dmac_chan_configure_desc.chcr_ts = internal constant { [7 x i32], [36 x i8] } { [7 x i32] [i32 0, i32 8, i32 16, i32 1048600, i32 24, i32 1048576, i32 1048584], [36 x i8] zeroinitializer }, align 32
@rcar_dmac_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 1210, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"%s: bad parameter: len=%d, id=%d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"rcar_dmac_prep_slave_sg\00", [40 x i8] zeroinitializer }, align 32
@rcar_dmac_prep_slave_sg._entry_ptr = internal global ptr @rcar_dmac_prep_slave_sg._entry, section ".printk_index", align 4
@rcar_dmac_map_slave_addr._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.29, ptr @.str.3, i32 1184, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"chan%u: failed to map %zx@%pap\00", [33 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"rcar_dmac_map_slave_addr\00", [39 x i8] zeroinitializer }, align 32
@rcar_dmac_map_slave_addr._entry_ptr = internal global ptr @rcar_dmac_map_slave_addr._entry, section ".printk_index", align 4
@rcar_dmac_map_slave_addr.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.29, ptr @.str.3, ptr @.str.30, i8 1, i8 41, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.30 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"chan%u: map %zx@%pap to %pad dir: %s\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"DMA_TO_DEVICE\00", [18 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"DMA_FROM_DEVICE\00", [16 x i8] zeroinitializer }, align 32
@rcar_dmac_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 1238, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"%s: bad parameter: buf_len=%zu, period_len=%zu, id=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rcar_dmac_prep_dma_cyclic\00", [38 x i8] zeroinitializer }, align 32
@rcar_dmac_prep_dma_cyclic._entry_ptr = internal global ptr @rcar_dmac_prep_dma_cyclic._entry, section ".printk_index", align 4
@rcar_dmac_prep_dma_cyclic._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.34, ptr @.str.3, i32 1249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"chan%u: sg length %d exceeds limit %d\00", [58 x i8] zeroinitializer }, align 32
@rcar_dmac_prep_dma_cyclic._entry_ptr.37 = internal global ptr @rcar_dmac_prep_dma_cyclic._entry.35, section ".printk_index", align 4
@.str.38 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"No descriptor for cookie!\00", [38 x i8] zeroinitializer }, align 32
@rcar_dmac_chan_get_residue.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"residue might be not continuous!\00", [63 x i8] zeroinitializer }, align 32
@rcar_dmac_chan_start_xfer.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcar_dmac_chan_start_xfer.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.40, ptr @.str.3, ptr @.str.41, i8 0, i8 98, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.40 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"rcar_dmac_chan_start_xfer\00", [38 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"chan%u: queue desc %p: %u@%pad\0A\00", [32 x i8] zeroinitializer }, align 32
@rcar_dmac_chan_start_xfer.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.19, ptr @.str.40, ptr @.str.3, ptr @.str.42, i8 0, i8 113, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"chan%u: queue chunk %p: %u@%pad -> %pad\0A\00", [55 x i8] zeroinitializer }, align 32
@rcar_dmac_chan_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.43 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&rchan->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ch%u\00", [27 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"%s:%u\00", [26 x i8] zeroinitializer }, align 32
@rcar_dmac_chan_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.47, ptr @.str.3, i32 1806, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"failed to request IRQ %u (%d)\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"rcar_dmac_chan_probe\00", [43 x i8] zeroinitializer }, align 32
@rcar_dmac_chan_probe._entry_ptr = internal global ptr @rcar_dmac_chan_probe._entry, section ".printk_index", align 4
@rcar_dmac_isr_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.48, ptr @.str.49, ptr @.str.3, i32 1618, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Channel Address Error\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"rcar_dmac_isr_channel\00", [42 x i8] zeroinitializer }, align 32
@rcar_dmac_isr_channel._entry_ptr = internal global ptr @rcar_dmac_isr_channel._entry, section ".printk_index", align 4
@rcar_dmac_isr_transfer_end.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@rcar_dmac_data = internal constant { %struct.rcar_dmac_of_data, [24 x i8] } { %struct.rcar_dmac_of_data { i32 32768, i32 128 }, [24 x i8] zeroinitializer }, align 32
@rcar_gen4_dmac_data = internal constant { %struct.rcar_dmac_of_data, [24 x i8] } { %struct.rcar_dmac_of_data { i32 0, i32 4096 }, [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.50 = private unnamed_addr constant [17 x i8] c"rcar_dmac_driver\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2037, i32 31 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2040, i32 11 }
@___asan_gen_.56 = private unnamed_addr constant [17 x i8] c"rcar_dmac_of_ids\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2022, i32 34 }
@___asan_gen_.59 = private unnamed_addr constant [13 x i8] c"rcar_dmac_pm\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1745, i32 32 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1923, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1931, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1820, i32 33 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1822, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1829, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1839, i32 27 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 487, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 509, i32 2 }
@___asan_gen_.136 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 800, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1014, i32 4 }
@___asan_gen_.143 = private unnamed_addr constant [8 x i8] c"chcr_ts\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 882, i32 19 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1208, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1182, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1188, i32 2 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1236, i32 3 }
@___asan_gen_.187 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1247, i32 3 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1370, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1390, i32 2 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 392, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 451, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1772, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1781, i32 24 }
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1786, i32 50 }
@___asan_gen_.223 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1805, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.230 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.232 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 1618, i32 3 }
@___asan_gen_.233 = private unnamed_addr constant [15 x i8] c"rcar_dmac_data\00", align 1
@___asan_gen_.235 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2012, i32 39 }
@___asan_gen_.236 = private unnamed_addr constant [20 x i8] c"rcar_gen4_dmac_data\00", align 1
@___asan_gen_.237 = private constant [30 x i8] c"../drivers/dma/sh/rcar-dmac.c\00", align 1
@___asan_gen_.238 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.237, i32 2017, i32 39 }
@llvm.compiler.used = appending global [82 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_rcar_dmac_driver_exit, ptr @__initcall__kmod_rcar_dmac__244_2048_rcar_dmac_driver_init6, ptr @rcar_dmac_chan_probe._entry, ptr @rcar_dmac_chan_probe._entry_ptr, ptr @rcar_dmac_chcr_de_barrier._entry, ptr @rcar_dmac_chcr_de_barrier._entry_ptr, ptr @rcar_dmac_driver_exit, ptr @rcar_dmac_init._entry, ptr @rcar_dmac_init._entry_ptr, ptr @rcar_dmac_isr_channel._entry, ptr @rcar_dmac_isr_channel._entry_ptr, ptr @rcar_dmac_map_slave_addr._entry, ptr @rcar_dmac_map_slave_addr._entry_ptr, ptr @rcar_dmac_parse_of._entry, ptr @rcar_dmac_parse_of._entry.12, ptr @rcar_dmac_parse_of._entry_ptr, ptr @rcar_dmac_parse_of._entry_ptr.14, ptr @rcar_dmac_prep_dma_cyclic._entry, ptr @rcar_dmac_prep_dma_cyclic._entry.35, ptr @rcar_dmac_prep_dma_cyclic._entry_ptr, ptr @rcar_dmac_prep_dma_cyclic._entry_ptr.37, ptr @rcar_dmac_prep_slave_sg._entry, ptr @rcar_dmac_prep_slave_sg._entry_ptr, ptr @rcar_dmac_probe._entry, ptr @rcar_dmac_probe._entry.6, ptr @rcar_dmac_probe._entry_ptr, ptr @rcar_dmac_probe._entry_ptr.8, ptr @rcar_dmac_driver, ptr @.str, ptr @rcar_dmac_of_ids, ptr @rcar_dmac_pm, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @rcar_dmac_chan_configure_desc.chcr_ts, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.36, ptr @.str.38, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @rcar_dmac_chan_probe.__key, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @rcar_dmac_data, ptr @rcar_gen4_dmac_data], section "llvm.metadata"
@0 = internal global [63 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_of_ids to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_pm to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_parse_of._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_parse_of._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_chcr_de_barrier._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 51, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_chan_configure_desc.chcr_ts to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_map_slave_addr._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_prep_dma_cyclic._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.187 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_chan_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_chan_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.223 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_isr_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.232 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_dmac_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.235 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @rcar_gen4_dmac_data to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 ptrtoint (ptr @___asan_gen_.237 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.238 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_dmac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @rcar_dmac_driver, ptr noundef null) #12
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @rcar_dmac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @platform_driver_unregister(ptr noundef nonnull @rcar_dmac_driver) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_dmac_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %pdev_irqname.i = alloca [5 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 420, i32 noundef 3520) #12
  %tobool3.not = icmp eq ptr %call.i, null
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dev7 = getelementptr inbounds %struct.rcar_dmac, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %dev7 to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %dev, ptr %dev7, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %1 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %2 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %3, null
  br i1 %tobool.not.i, label %if.end5.cleanup_crit_edge, label %if.end12

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end12:                                         ; preds = %if.end5
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 16777215, ptr %3, align 4
  %5 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev7, align 4
  %call.i214 = tail call i32 @dma_set_mask(ptr noundef %6, i64 noundef 1099511627775) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i214)
  %cmp.i = icmp eq i32 %call.i214, 0
  br i1 %cmp.i, label %if.end17, label %if.end12.cleanup_crit_edge

if.end12.cleanup_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end17:                                         ; preds = %if.end12
  %call1.i = tail call i32 @dma_set_coherent_mask(ptr noundef %6, i64 noundef 1099511627775) #12
  %of_node.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %7 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node.i, align 8
  %n_channels.i = getelementptr inbounds %struct.rcar_dmac, ptr %call.i, i32 0, i32 4
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.9, ptr noundef %n_channels.i, i32 noundef 1, i32 noundef 0) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i.i)
  %cmp.i216 = icmp slt i32 %call.i.i.i, 0
  br i1 %cmp.i216, label %do.end.i, label %if.end.i

do.end.i:                                         ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #15
  br label %cleanup

if.end.i:                                         ; preds = %if.end17
  %9 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %n_channels.i, align 4
  %11 = add i32 %10, -32
  call void @__sanitizer_cov_trace_const_cmp4(i32 -31, i32 %11)
  %12 = icmp ult i32 %11, -31
  br i1 %12, label %do.end8.i, label %if.end21

do.end8.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.13, i32 noundef %10) #15
  br label %cleanup

if.end21:                                         ; preds = %if.end.i
  %sub12.i = sub nuw nsw i32 32, %10
  %shr.i = lshr i32 -1, %sub12.i
  %channels_mask.i = getelementptr inbounds %struct.rcar_dmac, ptr %call.i, i32 0, i32 6
  %13 = ptrtoint ptr %channels_mask.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %shr.i, ptr %channels_mask.i, align 4
  %call.i.i36.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef %8, ptr noundef nonnull @.str.15, ptr noundef %channels_mask.i, i32 noundef 1, i32 noundef 0) #12
  %14 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %n_channels.i, align 4
  %sub17.i = sub i32 32, %15
  %shr18.i = lshr i32 -1, %sub17.i
  %16 = ptrtoint ptr %channels_mask.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %channels_mask.i, align 4
  %and22.i = and i32 %shr18.i, %17
  store i32 %and22.i, ptr %channels_mask.i, align 4
  %iommu_group.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 36
  %18 = ptrtoint ptr %iommu_group.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %iommu_group.i, align 8
  %cmp.i218.not = icmp eq ptr %19, null
  br i1 %cmp.i218.not, label %if.end21.if.end25_crit_edge, label %if.then24

if.end21.if.end25_crit_edge:                      ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end25

if.then24:                                        ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %channels_mask.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %channels_mask.i, align 4
  %and = and i32 %21, -2
  store i32 %and, ptr %channels_mask.i, align 4
  br label %if.end25

if.end25:                                         ; preds = %if.then24, %if.end21.if.end25_crit_edge
  %22 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %n_channels.i, align 4
  %24 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %23, i32 216) #12
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !135

devm_kcalloc.exit.thread:                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #14
  %channels234 = getelementptr inbounds %struct.rcar_dmac, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %channels234 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %channels234, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end25
  %27 = extractvalue { i32, i1 } %24, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %27, i32 noundef 3520) #12
  %channels = getelementptr inbounds %struct.rcar_dmac, ptr %call.i, i32 0, i32 5
  %28 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %call5.i.i, ptr %channels, align 4
  %tobool29.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool29.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end31

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end31:                                         ; preds = %devm_kcalloc.exit
  %call32 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #12
  %dmac_base = getelementptr inbounds %struct.rcar_dmac, ptr %call.i, i32 0, i32 2
  %29 = ptrtoint ptr %dmac_base to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %call32, ptr %dmac_base, align 4
  %cmp.i219 = icmp ugt ptr %call32, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i219, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #14
  %30 = ptrtoint ptr %call32 to i32
  br label %cleanup

if.end38:                                         ; preds = %if.end31
  %31 = ptrtoint ptr %call to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %call, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %32)
  %tobool39.not = icmp eq i32 %32, 0
  br i1 %tobool39.not, label %if.then40, label %if.else

if.then40:                                        ; preds = %if.end38
  %call41 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 1) #12
  %chan_base42 = getelementptr inbounds %struct.rcar_dmac, ptr %call.i, i32 0, i32 3
  %33 = ptrtoint ptr %chan_base42 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call41, ptr %chan_base42, align 4
  %cmp.i220 = icmp ugt ptr %call41, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i220, label %if.then45, label %if.then40.if.end52_crit_edge

if.then40.if.end52_crit_edge:                     ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end52

if.then45:                                        ; preds = %if.then40
  call void @__sanitizer_cov_trace_pc() #14
  %34 = ptrtoint ptr %call41 to i32
  br label %cleanup

if.else:                                          ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr = getelementptr i8, ptr %call32, i32 %32
  br label %if.end52

if.end52:                                         ; preds = %if.else, %if.then40.if.end52_crit_edge
  %chan_base.0 = phi ptr [ %add.ptr, %if.else ], [ %call41, %if.then40.if.end52_crit_edge ]
  %35 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %36)
  %cmp55241.not = icmp eq i32 %36, 0
  br i1 %cmp55241.not, label %if.end52.for.end_crit_edge, label %for.body.lr.ph

if.end52.for.end_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end52
  %37 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %channels, align 4
  %chan_offset_stride = getelementptr inbounds %struct.rcar_dmac_of_data, ptr %call, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0243 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %chan.0242 = phi ptr [ %38, %for.body.lr.ph ], [ %incdec.ptr, %for.inc.for.body_crit_edge ]
  %39 = ptrtoint ptr %channels_mask.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %channels_mask.i, align 4
  %shl = shl nuw i32 1, %i.0243
  %and57 = and i32 %40, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and57)
  %tobool58.not = icmp eq i32 %and57, 0
  br i1 %tobool58.not, label %for.body.for.inc_crit_edge, label %if.else60

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.else60:                                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %index = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.0242, i32 0, i32 2
  %41 = ptrtoint ptr %index to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %i.0243, ptr %index, align 4
  %42 = ptrtoint ptr %chan_offset_stride to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %chan_offset_stride, align 4
  %mul = mul i32 %43, %i.0243
  %add.ptr61 = getelementptr i8, ptr %chan_base.0, i32 %mul
  %iomem = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.0242, i32 0, i32 1
  %44 = ptrtoint ptr %iomem to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %add.ptr61, ptr %iomem, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.else60, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.0243, 1
  %incdec.ptr = getelementptr %struct.rcar_dmac_chan, ptr %chan.0242, i32 1
  %45 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %n_channels.i, align 4
  %cmp55 = icmp ult i32 %inc, %46
  br i1 %cmp55, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end52.for.end_crit_edge
  tail call void @pm_runtime_enable(ptr noundef %dev) #12
  %call65 = tail call fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call65)
  %cmp66 = icmp slt i32 %call65, 0
  br i1 %cmp66, label %do.end, label %if.end69

do.end:                                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef %call65) #15
  br label %err_pm_disable

if.end69:                                         ; preds = %for.end
  %call70 = tail call fastcc i32 @rcar_dmac_init(ptr noundef nonnull %call.i)
  %call.i221 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call70)
  %tobool73.not = icmp eq i32 %call70, 0
  br i1 %tobool73.not, label %if.end79, label %do.end77

do.end77:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #15
  br label %err_pm_disable

if.end79:                                         ; preds = %if.end69
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #12
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #12
  %dev83 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %47 = ptrtoint ptr %dev83 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %dev, ptr %dev83, align 4
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 10
  %48 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 2, ptr %copy_align, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %49 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 127, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %50 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 127, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %51 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %52 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %residue_granularity, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %53 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @rcar_dmac_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %54 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @rcar_dmac_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %55 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @rcar_dmac_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %56 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr @rcar_dmac_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 40
  %57 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr @rcar_dmac_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %58 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @rcar_dmac_device_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 45
  %59 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @rcar_dmac_chan_pause, ptr %device_pause, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %60 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @rcar_dmac_chan_terminate_all, ptr %device_terminate_all, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %61 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @rcar_dmac_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %62 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr @rcar_dmac_issue_pending, ptr %device_issue_pending, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 48
  %63 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr @rcar_dmac_device_synchronize, ptr %device_synchronize, align 4
  %channels84 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %64 = ptrtoint ptr %channels84 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %channels84, ptr %channels84, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %65 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %channels84, ptr %prev.i, align 4
  %66 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %cmp89245.not = icmp eq i32 %67, 0
  br i1 %cmp89245.not, label %if.end79.for.end105_crit_edge, label %for.body90.lr.ph

if.end79.for.end105_crit_edge:                    ; preds = %if.end79
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end105

for.body90.lr.ph:                                 ; preds = %if.end79
  %68 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %channels, align 4
  br label %for.body90

for.body90:                                       ; preds = %for.inc102.for.body90_crit_edge, %for.body90.lr.ph
  %i.1249 = phi i32 [ 0, %for.body90.lr.ph ], [ %inc103, %for.inc102.for.body90_crit_edge ]
  %chan.1246 = phi ptr [ %69, %for.body90.lr.ph ], [ %incdec.ptr104, %for.inc102.for.body90_crit_edge ]
  %70 = ptrtoint ptr %channels_mask.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %channels_mask.i, align 4
  %shl92 = shl nuw i32 1, %i.1249
  %and93 = and i32 %71, %shl92
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and93)
  %tobool94.not = icmp eq i32 %and93, 0
  br i1 %tobool94.not, label %for.body90.for.inc102_crit_edge, label %if.else96

for.body90.for.inc102_crit_edge:                  ; preds = %for.body90
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc102

if.else96:                                        ; preds = %for.body90
  %72 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %dev7, align 4
  %add.ptr.i = getelementptr i8, ptr %73, i32 -16
  call void @llvm.lifetime.start.p0(i64 5, ptr nonnull %pdev_irqname.i) #12
  %mid_rid.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.1246, i32 0, i32 7
  %74 = call ptr @memset(ptr %pdev_irqname.i, i32 255, i32 5)
  %75 = ptrtoint ptr %mid_rid.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store i32 -22, ptr %mid_rid.i, align 4
  %lock.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.1246, i32 0, i32 8
  call void @__raw_spin_lock_init(ptr noundef %lock.i, ptr noundef nonnull @.str.43, ptr noundef nonnull @rcar_dmac_chan_probe.__key, i16 noundef signext 3) #12
  %desc.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.1246, i32 0, i32 9
  %76 = ptrtoint ptr %desc.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %desc.i, ptr %desc.i, align 4
  %prev.i.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.1246, i32 0, i32 9, i32 0, i32 1
  %77 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %desc.i, ptr %prev.i.i, align 4
  %pending.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.1246, i32 0, i32 9, i32 1
  %78 = ptrtoint ptr %pending.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %pending.i, ptr %pending.i, align 4
  %prev.i58.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.1246, i32 0, i32 9, i32 1, i32 1
  %79 = ptrtoint ptr %prev.i58.i to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %pending.i, ptr %prev.i58.i, align 4
  %active.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.1246, i32 0, i32 9, i32 2
  %80 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store volatile ptr %active.i, ptr %active.i, align 4
  %prev.i59.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.1246, i32 0, i32 9, i32 2, i32 1
  %81 = ptrtoint ptr %prev.i59.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %active.i, ptr %prev.i59.i, align 4
  %done.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.1246, i32 0, i32 9, i32 3
  %82 = ptrtoint ptr %done.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store volatile ptr %done.i, ptr %done.i, align 4
  %prev.i60.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.1246, i32 0, i32 9, i32 3, i32 1
  %83 = ptrtoint ptr %prev.i60.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %done.i, ptr %prev.i60.i, align 4
  %wait.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.1246, i32 0, i32 9, i32 4
  %84 = ptrtoint ptr %wait.i to i32
  call void @__asan_store4_noabort(i32 %84)
  store volatile ptr %wait.i, ptr %wait.i, align 4
  %prev.i61.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.1246, i32 0, i32 9, i32 4, i32 1
  %85 = ptrtoint ptr %prev.i61.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %wait.i, ptr %prev.i61.i, align 4
  %index.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.1246, i32 0, i32 2
  %86 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %index.i, align 4
  %call6.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %pdev_irqname.i, ptr noundef nonnull @.str.44, i32 noundef %87) #12
  %call8.i = call i32 @platform_get_irq_byname(ptr noundef %add.ptr.i, ptr noundef nonnull %pdev_irqname.i) #12
  %irq.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.1246, i32 0, i32 3
  %88 = ptrtoint ptr %irq.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 %call8.i, ptr %irq.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp.i222 = icmp slt i32 %call8.i, 0
  br i1 %cmp.i222, label %if.else96.rcar_dmac_chan_probe.exit.thread_crit_edge, label %if.end.i223

if.else96.rcar_dmac_chan_probe.exit.thread_crit_edge: ; preds = %if.else96
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_chan_probe.exit.thread

if.end.i223:                                      ; preds = %if.else96
  %89 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %dev7, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %90, i32 0, i32 3
  %91 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %92, null
  br i1 %tobool.not.i.i, label %if.end.i.i224, label %if.end.i223.dev_name.exit.i_crit_edge

if.end.i223.dev_name.exit.i_crit_edge:            ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #14
  br label %dev_name.exit.i

if.end.i.i224:                                    ; preds = %if.end.i223
  call void @__sanitizer_cov_trace_pc() #14
  %93 = ptrtoint ptr %90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %90, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i224, %if.end.i223.dev_name.exit.i_crit_edge
  %retval.0.i.i225 = phi ptr [ %94, %if.end.i.i224 ], [ %92, %if.end.i223.dev_name.exit.i_crit_edge ]
  %95 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %index.i, align 4
  %call14.i = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %90, i32 noundef 3264, ptr noundef nonnull @.str.45, ptr noundef %retval.0.i.i225, i32 noundef %96) #12
  %tobool.not.i226 = icmp eq ptr %call14.i, null
  br i1 %tobool.not.i226, label %dev_name.exit.i.rcar_dmac_chan_probe.exit.thread_crit_edge, label %if.end16.i

dev_name.exit.i.rcar_dmac_chan_probe.exit.thread_crit_edge: ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_chan_probe.exit.thread

if.end16.i:                                       ; preds = %dev_name.exit.i
  %97 = ptrtoint ptr %chan.1246 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %call.i, ptr %chan.1246, align 4
  %cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan.1246, i32 0, i32 2
  %98 = ptrtoint ptr %cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 1, ptr %cookie.i.i, align 4
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan.1246, i32 0, i32 3
  %99 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 1, ptr %completed_cookie.i.i, align 4
  %device_node.i = getelementptr inbounds %struct.dma_chan, ptr %chan.1246, i32 0, i32 8
  %100 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %prev.i, align 4
  %call.i.i.i227 = call zeroext i1 @__list_add_valid(ptr noundef %device_node.i, ptr noundef %101, ptr noundef %channels84) #12
  br i1 %call.i.i.i227, label %if.end.i.i.i, label %if.end16.i.list_add_tail.exit.i_crit_edge

if.end16.i.list_add_tail.exit.i_crit_edge:        ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end16.i
  call void @__sanitizer_cov_trace_pc() #14
  %102 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr %device_node.i, ptr %prev.i, align 4
  %103 = ptrtoint ptr %device_node.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %channels84, ptr %device_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan.1246, i32 0, i32 8, i32 1
  %104 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %101, ptr %prev3.i.i.i, align 4
  %105 = ptrtoint ptr %101 to i32
  call void @__asan_store4_noabort(i32 %105)
  store volatile ptr %device_node.i, ptr %101, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end16.i.list_add_tail.exit.i_crit_edge
  %106 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev7, align 4
  %108 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %irq.i, align 4
  %call20.i = call i32 @devm_request_threaded_irq(ptr noundef %107, i32 noundef %109, ptr noundef nonnull @rcar_dmac_isr_channel, ptr noundef nonnull @rcar_dmac_isr_channel_thread, i32 noundef 0, ptr noundef nonnull %call14.i, ptr noundef %chan.1246) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %tobool21.not.i = icmp eq i32 %call20.i, 0
  br i1 %tobool21.not.i, label %rcar_dmac_chan_probe.exit.thread238, label %rcar_dmac_chan_probe.exit

rcar_dmac_chan_probe.exit.thread238:              ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pdev_irqname.i) #12
  br label %for.inc102

rcar_dmac_chan_probe.exit.thread:                 ; preds = %dev_name.exit.i.rcar_dmac_chan_probe.exit.thread_crit_edge, %if.else96.rcar_dmac_chan_probe.exit.thread_crit_edge
  %retval.0.i228.ph = phi i32 [ -12, %dev_name.exit.i.rcar_dmac_chan_probe.exit.thread_crit_edge ], [ -19, %if.else96.rcar_dmac_chan_probe.exit.thread_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pdev_irqname.i) #12
  br label %err_pm_disable

rcar_dmac_chan_probe.exit:                        ; preds = %list_add_tail.exit.i
  %110 = ptrtoint ptr %dev7 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load ptr, ptr %dev7, align 4
  %112 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %irq.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %111, ptr noundef nonnull @.str.46, i32 noundef %113, i32 noundef %call20.i) #15
  call void @llvm.lifetime.end.p0(i64 5, ptr nonnull %pdev_irqname.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call20.i)
  %cmp98 = icmp slt i32 %call20.i, 0
  br i1 %cmp98, label %rcar_dmac_chan_probe.exit.err_pm_disable_crit_edge, label %rcar_dmac_chan_probe.exit.for.inc102_crit_edge

rcar_dmac_chan_probe.exit.for.inc102_crit_edge:   ; preds = %rcar_dmac_chan_probe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc102

rcar_dmac_chan_probe.exit.err_pm_disable_crit_edge: ; preds = %rcar_dmac_chan_probe.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_pm_disable

for.inc102:                                       ; preds = %rcar_dmac_chan_probe.exit.for.inc102_crit_edge, %rcar_dmac_chan_probe.exit.thread238, %for.body90.for.inc102_crit_edge
  %inc103 = add nuw i32 %i.1249, 1
  %incdec.ptr104 = getelementptr %struct.rcar_dmac_chan, ptr %chan.1246, i32 1
  %114 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load i32, ptr %n_channels.i, align 4
  %cmp89 = icmp ult i32 %inc103, %115
  br i1 %cmp89, label %for.inc102.for.body90_crit_edge, label %for.inc102.for.end105_crit_edge

for.inc102.for.end105_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end105

for.inc102.for.body90_crit_edge:                  ; preds = %for.inc102
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body90

for.end105:                                       ; preds = %for.inc102.for.end105_crit_edge, %if.end79.for.end105_crit_edge
  %116 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %of_node.i, align 8
  %call107 = call i32 @of_dma_controller_register(ptr noundef %117, ptr noundef nonnull @rcar_dmac_of_xlate, ptr noundef null) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call107)
  %cmp108 = icmp slt i32 %call107, 0
  br i1 %cmp108, label %for.end105.err_pm_disable_crit_edge, label %if.end110

for.end105.err_pm_disable_crit_edge:              ; preds = %for.end105
  call void @__sanitizer_cov_trace_pc() #14
  br label %err_pm_disable

if.end110:                                        ; preds = %for.end105
  %call111 = call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call111)
  %cmp112 = icmp slt i32 %call111, 0
  br i1 %cmp112, label %err_dma_free, label %if.end110.cleanup_crit_edge

if.end110.cleanup_crit_edge:                      ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

err_dma_free:                                     ; preds = %if.end110
  call void @__sanitizer_cov_trace_pc() #14
  %118 = ptrtoint ptr %of_node.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %of_node.i, align 8
  call void @of_dma_controller_free(ptr noundef %119) #12
  br label %err_pm_disable

err_pm_disable:                                   ; preds = %err_dma_free, %for.end105.err_pm_disable_crit_edge, %rcar_dmac_chan_probe.exit.err_pm_disable_crit_edge, %rcar_dmac_chan_probe.exit.thread, %do.end77, %do.end
  %ret.0 = phi i32 [ %call65, %do.end ], [ %call70, %do.end77 ], [ %call107, %for.end105.err_pm_disable_crit_edge ], [ %call111, %err_dma_free ], [ %retval.0.i228.ph, %rcar_dmac_chan_probe.exit.thread ], [ %call20.i, %rcar_dmac_chan_probe.exit.err_pm_disable_crit_edge ]
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  br label %cleanup

cleanup:                                          ; preds = %err_pm_disable, %if.end110.cleanup_crit_edge, %if.then45, %if.then35, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end8.i, %do.end.i, %if.end12.cleanup_crit_edge, %if.end5.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %30, %if.then35 ], [ %ret.0, %err_pm_disable ], [ %34, %if.then45 ], [ -22, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ 0, %if.end110.cleanup_crit_edge ], [ -5, %if.end5.cleanup_crit_edge ], [ %call.i214, %if.end12.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -22, %do.end8.i ], [ %call.i.i.i, %do.end.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_dmac_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %3) #12
  tail call void @dma_async_device_unregister(ptr noundef %1) #12
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_dmac_shutdown(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %n_channels.i = getelementptr inbounds %struct.rcar_dmac, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp9.not.i = icmp eq i32 %3, 0
  br i1 %cmp9.not.i, label %entry.rcar_dmac_stop_all_chan.exit_crit_edge, label %for.body.lr.ph.i

entry.rcar_dmac_stop_all_chan.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_stop_all_chan.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %channels.i = getelementptr inbounds %struct.rcar_dmac, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels.i, align 4
  %channels_mask.i = getelementptr inbounds %struct.rcar_dmac, ptr %1, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.013.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %chan.010.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %channels_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels_mask.i, align 4
  %shl.i = shl nuw i32 1, %i.013.i
  %and.i = and i32 %7, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  %lock.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.010.i, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock.i) #12
  %iomem4.i.i.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.010.i, i32 0, i32 1
  %8 = ptrtoint ptr %iomem4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem4.i.i.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %9, i32 12
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %11 = and i32 %10, -117443777
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %12 = ptrtoint ptr %iomem4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %iomem4.i.i.i, align 4
  %add.ptr4.i.i.i = getelementptr i8, ptr %13, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i.i, i32 %11) #12, !srcloc !138
  br label %for.body.i.i.i

for.body.i.i.i:                                   ; preds = %if.end.i.i.i.for.body.i.i.i_crit_edge, %if.else.i
  %i.05.i.i.i = phi i32 [ 0, %if.else.i ], [ %inc.i.i.i, %if.end.i.i.i.for.body.i.i.i_crit_edge ]
  %14 = ptrtoint ptr %iomem4.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %iomem4.i.i.i, align 4
  %add.ptr5.i.i.i.i = getelementptr i8, ptr %15, i32 12
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %17 = and i32 %16, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool.not.i.i.i = icmp eq i32 %17, 0
  br i1 %tobool.not.i.i.i, label %for.body.i.i.i.rcar_dmac_chan_halt.exit.i_crit_edge, label %if.end.i.i.i

for.body.i.i.i.rcar_dmac_chan_halt.exit.i_crit_edge: ; preds = %for.body.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_chan_halt.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %18 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %18(i32 noundef 214748) #12
  %inc.i.i.i = add nuw nsw i32 %i.05.i.i.i, 1
  %exitcond.not.i.i.i = icmp eq i32 %inc.i.i.i, 1024
  br i1 %exitcond.not.i.i.i, label %do.end.i.i.i, label %if.end.i.i.i.for.body.i.i.i_crit_edge

if.end.i.i.i.for.body.i.i.i_crit_edge:            ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i.i

do.end.i.i.i:                                     ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %chan.010.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chan.010.i, align 4
  %dev.i.i.i = getelementptr inbounds %struct.dma_device, ptr %20, i32 0, i32 15
  %21 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %22, ptr noundef nonnull @.str.22) #15
  br label %rcar_dmac_chan_halt.exit.i

rcar_dmac_chan_halt.exit.i:                       ; preds = %do.end.i.i.i, %for.body.i.i.i.rcar_dmac_chan_halt.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock.i) #12
  br label %for.inc.i

for.inc.i:                                        ; preds = %rcar_dmac_chan_halt.exit.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.013.i, 1
  %incdec.ptr.i = getelementptr %struct.rcar_dmac_chan, ptr %chan.010.i, i32 1
  %23 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %n_channels.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %24
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.rcar_dmac_stop_all_chan.exit_crit_edge

for.inc.i.rcar_dmac_stop_all_chan.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_stop_all_chan.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

rcar_dmac_stop_all_chan.exit:                     ; preds = %for.inc.i.rcar_dmac_stop_all_chan.exit_crit_edge, %entry.rcar_dmac_stop_all_chan.exit_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @pm_runtime_resume_and_get(ptr noundef %dev) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  %call = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %if.then, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.then:                                          ; preds = %entry
  %usage_count.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 13
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i, i32 noundef 4) #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !139
  tail call void @llvm.prefetch.p0(ptr %usage_count.i, i32 1, i32 3, i32 1) #12
  %0 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i, ptr %usage_count.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i) #12, !srcloc !140
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %0, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.cleanup_crit_edge, label %do.end11.i.i.i.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end11.i.i.i.i:                                 ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #12, !srcloc !141
  br label %cleanup

cleanup:                                          ; preds = %do.end11.i.i.i.i, %if.then.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %call, %if.then.cleanup_crit_edge ], [ %call, %do.end11.i.i.i.i ]
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_dmac_init(ptr nocapture noundef readonly %dmac) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chan_base.i = getelementptr inbounds %struct.rcar_dmac, ptr %dmac, i32 0, i32 3
  %0 = ptrtoint ptr %chan_base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_base.i, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.else3.i, label %if.then.i

if.then.i:                                        ; preds = %entry
  %n_channels.i = getelementptr inbounds %struct.rcar_dmac, ptr %dmac, i32 0, i32 4
  %2 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %n_channels.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15.not.i = icmp eq i32 %3, 0
  br i1 %cmp15.not.i, label %if.then.i.rcar_dmac_chan_clear_all.exit_crit_edge, label %for.body.lr.ph.i

if.then.i.rcar_dmac_chan_clear_all.exit_crit_edge: ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_chan_clear_all.exit

for.body.lr.ph.i:                                 ; preds = %if.then.i
  %channels.i = getelementptr inbounds %struct.rcar_dmac, ptr %dmac, i32 0, i32 5
  %4 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels.i, align 4
  %channels_mask.i = getelementptr inbounds %struct.rcar_dmac, ptr %dmac, i32 0, i32 6
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.018.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %for.inc.i.for.body.i_crit_edge ]
  %chan.016.i = phi ptr [ %5, %for.body.lr.ph.i ], [ %incdec.ptr.i, %for.inc.i.for.body.i_crit_edge ]
  %6 = ptrtoint ptr %channels_mask.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %channels_mask.i, align 4
  %shl.i = shl nuw i32 1, %i.018.i
  %and.i = and i32 %7, %shl.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool1.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool1.not.i, label %for.body.i.for.inc.i_crit_edge, label %if.else.i

for.body.i.for.inc.i_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc.i

if.else.i:                                        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %iomem3.i.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan.016.i, i32 0, i32 1
  %8 = ptrtoint ptr %iomem3.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem3.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %9, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 16777216) #12, !srcloc !138
  br label %for.inc.i

for.inc.i:                                        ; preds = %if.else.i, %for.body.i.for.inc.i_crit_edge
  %inc.i = add nuw i32 %i.018.i, 1
  %incdec.ptr.i = getelementptr %struct.rcar_dmac_chan, ptr %chan.016.i, i32 1
  %10 = ptrtoint ptr %n_channels.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %n_channels.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %11
  br i1 %cmp.i, label %for.inc.i.for.body.i_crit_edge, label %for.inc.i.rcar_dmac_chan_clear_all.exit_crit_edge

for.inc.i.rcar_dmac_chan_clear_all.exit_crit_edge: ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_chan_clear_all.exit

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

if.else3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %channels_mask4.i = getelementptr inbounds %struct.rcar_dmac, ptr %dmac, i32 0, i32 6
  %12 = ptrtoint ptr %channels_mask4.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %channels_mask4.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %14 = tail call i32 @llvm.bswap.i32(i32 %13) #12
  %dmac_base3.i.i = getelementptr inbounds %struct.rcar_dmac, ptr %dmac, i32 0, i32 2
  %15 = ptrtoint ptr %dmac_base3.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dmac_base3.i.i, align 4
  %add.ptr4.i14.i = getelementptr i8, ptr %16, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i14.i, i32 %14) #12, !srcloc !138
  br label %rcar_dmac_chan_clear_all.exit

rcar_dmac_chan_clear_all.exit:                    ; preds = %if.else3.i, %for.inc.i.rcar_dmac_chan_clear_all.exit_crit_edge, %if.then.i.rcar_dmac_chan_clear_all.exit_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %dmac_base.i = getelementptr inbounds %struct.rcar_dmac, ptr %dmac, i32 0, i32 2
  %17 = ptrtoint ptr %dmac_base.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dmac_base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %18, i32 96
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 256) #12, !srcloc !142
  %19 = ptrtoint ptr %dmac_base.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dmac_base.i, align 4
  %add.ptr.i7 = getelementptr i8, ptr %20, i32 96
  %21 = tail call i16 asm sideeffect "ldrh $0, $1", "=r,*Q"(ptr elementtype(i16) %add.ptr.i7) #12, !srcloc !143
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !144
  %22 = and i16 %21, 1280
  call void @__sanitizer_cov_trace_const_cmp2(i16 256, i16 %22)
  %cmp.not = icmp eq i16 %22, 256
  br i1 %cmp.not, label %rcar_dmac_chan_clear_all.exit.cleanup_crit_edge, label %do.end

rcar_dmac_chan_clear_all.exit.cleanup_crit_edge:  ; preds = %rcar_dmac_chan_clear_all.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %rcar_dmac_chan_clear_all.exit
  call void @__sanitizer_cov_trace_pc() #14
  %dev = getelementptr inbounds %struct.rcar_dmac, ptr %dmac, i32 0, i32 1
  %23 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %24, ptr noundef nonnull @.str.16) #15
  br label %cleanup

cleanup:                                          ; preds = %do.end, %rcar_dmac_chan_clear_all.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %rcar_dmac_chan_clear_all.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_dmac_alloc_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chunks_free = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 6
  %0 = ptrtoint ptr %chunks_free to i32
  call void @__asan_store4_noabort(i32 %0)
  store volatile ptr %chunks_free, ptr %chunks_free, align 4
  %prev.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 6, i32 1
  %1 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %chunks_free, ptr %prev.i, align 4
  %pages = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 7
  %2 = ptrtoint ptr %pages to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %pages, ptr %pages, align 4
  %prev.i13 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 7, i32 1
  %3 = ptrtoint ptr %prev.i13 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pages, ptr %prev.i13, align 4
  %call = tail call fastcc i32 @rcar_dmac_xfer_chunk_alloc(ptr noundef %chan, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %cmp = icmp slt i32 %call, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call fastcc i32 @rcar_dmac_desc_alloc(ptr noundef %chan, i32 noundef 3264)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %cmp3 = icmp slt i32 %call2, 0
  br i1 %cmp3, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end5:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %7, i32 noundef 4) #12
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call.i, %if.end5 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_dmac_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %map4 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #12
  %2 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %3 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %list, ptr %list, align 4
  %4 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %list, ptr %2, align 4
  %lock = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 8
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %iomem4.i.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 1
  %5 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %6, i32 12
  %7 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #12, !srcloc !136
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %8 = and i32 %7, -117443777
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  call void @arm_heavy_mb() #12
  %9 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %10, i32 12
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %8) #12, !srcloc !138
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry
  %i.05.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %11 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %12, i32 12
  %13 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #12, !srcloc !136
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %14 = and i32 %13, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool.not.i.i = icmp eq i32 %14, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.rcar_dmac_chan_halt.exit_crit_edge, label %if.end.i.i

for.body.i.i.rcar_dmac_chan_halt.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_chan_halt.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %15(i32 noundef 214748) #12
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %16 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %chan, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %17, i32 0, i32 15
  %18 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.22) #15
  br label %rcar_dmac_chan_halt.exit

rcar_dmac_chan_halt.exit:                         ; preds = %do.end.i.i, %for.body.i.i.rcar_dmac_chan_halt.exit_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  %irq = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 3
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %irq, align 4
  call void @synchronize_irq(i32 noundef %21) #12
  %mid_rid = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 7
  %22 = ptrtoint ptr %mid_rid to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %mid_rid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %23)
  %cmp = icmp sgt i32 %23, -1
  br i1 %cmp, label %if.then, label %rcar_dmac_chan_halt.exit.if.end_crit_edge

rcar_dmac_chan_halt.exit.if.end_crit_edge:        ; preds = %rcar_dmac_chan_halt.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end

if.then:                                          ; preds = %rcar_dmac_chan_halt.exit
  call void @__sanitizer_cov_trace_pc() #14
  %modules = getelementptr inbounds %struct.rcar_dmac, ptr %1, i32 0, i32 7
  call void @_clear_bit(i32 noundef %23, ptr noundef %modules) #12
  %24 = ptrtoint ptr %mid_rid to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 -22, ptr %mid_rid, align 4
  br label %if.end

if.end:                                           ; preds = %if.then, %rcar_dmac_chan_halt.exit.if.end_crit_edge
  %desc8 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9
  %25 = ptrtoint ptr %desc8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %desc8, align 4
  %cmp.i.not.i = icmp eq ptr %26, %desc8
  br i1 %cmp.i.not.i, label %if.end.list_splice_init.exit_crit_edge, label %if.then.i

if.end.list_splice_init.exit_crit_edge:           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %27 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 0, i32 1
  %29 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %26, ptr %list, align 4
  %32 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %28, ptr %30, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %33 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %30, ptr %prev6.i.i, align 4
  %34 = ptrtoint ptr %desc8 to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %desc8, ptr %desc8, align 4
  store ptr %desc8, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %if.end.list_splice_init.exit_crit_edge
  %pending = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 1
  %35 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not.i88 = icmp eq ptr %36, %pending
  br i1 %cmp.i.not.i88, label %list_splice_init.exit.list_splice_init.exit93_crit_edge, label %if.then.i92

list_splice_init.exit.list_splice_init.exit93_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit93

if.then.i92:                                      ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %list, align 4
  %prev2.i.i89 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 1, i32 1
  %39 = ptrtoint ptr %prev2.i.i89 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev2.i.i89, align 4
  %prev3.i.i90 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i90 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %list, ptr %prev3.i.i90, align 4
  store ptr %36, ptr %list, align 4
  %42 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %38, ptr %40, align 4
  %prev6.i.i91 = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %43 = ptrtoint ptr %prev6.i.i91 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %40, ptr %prev6.i.i91, align 4
  %44 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %pending, ptr %pending, align 4
  store ptr %pending, ptr %prev2.i.i89, align 4
  br label %list_splice_init.exit93

list_splice_init.exit93:                          ; preds = %if.then.i92, %list_splice_init.exit.list_splice_init.exit93_crit_edge
  %active = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 2
  %45 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %active, align 4
  %cmp.i.not.i94 = icmp eq ptr %46, %active
  br i1 %cmp.i.not.i94, label %list_splice_init.exit93.list_splice_init.exit99_crit_edge, label %if.then.i98

list_splice_init.exit93.list_splice_init.exit99_crit_edge: ; preds = %list_splice_init.exit93
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit99

if.then.i98:                                      ; preds = %list_splice_init.exit93
  call void @__sanitizer_cov_trace_pc() #14
  %47 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %list, align 4
  %prev2.i.i95 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 2, i32 1
  %49 = ptrtoint ptr %prev2.i.i95 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev2.i.i95, align 4
  %prev3.i.i96 = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i96 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %list, ptr %prev3.i.i96, align 4
  store ptr %46, ptr %list, align 4
  %52 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %48, ptr %50, align 4
  %prev6.i.i97 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %53 = ptrtoint ptr %prev6.i.i97 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev6.i.i97, align 4
  %54 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %active, ptr %active, align 4
  store ptr %active, ptr %prev2.i.i95, align 4
  br label %list_splice_init.exit99

list_splice_init.exit99:                          ; preds = %if.then.i98, %list_splice_init.exit93.list_splice_init.exit99_crit_edge
  %done = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 3
  %55 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %done, align 4
  %cmp.i.not.i100 = icmp eq ptr %56, %done
  br i1 %cmp.i.not.i100, label %list_splice_init.exit99.list_splice_init.exit105_crit_edge, label %if.then.i104

list_splice_init.exit99.list_splice_init.exit105_crit_edge: ; preds = %list_splice_init.exit99
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit105

if.then.i104:                                     ; preds = %list_splice_init.exit99
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %list, align 4
  %prev2.i.i101 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 3, i32 1
  %59 = ptrtoint ptr %prev2.i.i101 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev2.i.i101, align 4
  %prev3.i.i102 = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i102 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %list, ptr %prev3.i.i102, align 4
  store ptr %56, ptr %list, align 4
  %62 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %58, ptr %60, align 4
  %prev6.i.i103 = getelementptr inbounds %struct.list_head, ptr %58, i32 0, i32 1
  %63 = ptrtoint ptr %prev6.i.i103 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev6.i.i103, align 4
  %64 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %done, ptr %done, align 4
  store ptr %done, ptr %prev2.i.i101, align 4
  br label %list_splice_init.exit105

list_splice_init.exit105:                         ; preds = %if.then.i104, %list_splice_init.exit99.list_splice_init.exit105_crit_edge
  %wait = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 4
  %65 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %wait, align 4
  %cmp.i.not.i106 = icmp eq ptr %66, %wait
  br i1 %cmp.i.not.i106, label %list_splice_init.exit105.list_splice_init.exit111_crit_edge, label %if.then.i110

list_splice_init.exit105.list_splice_init.exit111_crit_edge: ; preds = %list_splice_init.exit105
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit111

if.then.i110:                                     ; preds = %list_splice_init.exit105
  call void @__sanitizer_cov_trace_pc() #14
  %67 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %list, align 4
  %prev2.i.i107 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 4, i32 1
  %69 = ptrtoint ptr %prev2.i.i107 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev2.i.i107, align 4
  %prev3.i.i108 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %71 = ptrtoint ptr %prev3.i.i108 to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %list, ptr %prev3.i.i108, align 4
  store ptr %66, ptr %list, align 4
  %72 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %68, ptr %70, align 4
  %prev6.i.i109 = getelementptr inbounds %struct.list_head, ptr %68, i32 0, i32 1
  %73 = ptrtoint ptr %prev6.i.i109 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev6.i.i109, align 4
  %74 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %wait, ptr %wait, align 4
  store ptr %wait, ptr %prev2.i.i107, align 4
  br label %list_splice_init.exit111

list_splice_init.exit111:                         ; preds = %if.then.i110, %list_splice_init.exit105.list_splice_init.exit111_crit_edge
  %running = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 5
  %75 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %running, align 4
  %76 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %76)
  %.pn113 = load ptr, ptr %list, align 4
  %cmp18.not114 = icmp eq ptr %.pn113, %list
  br i1 %cmp18.not114, label %list_splice_init.exit111.for.end_crit_edge, label %list_splice_init.exit111.for.body_crit_edge

list_splice_init.exit111.for.body_crit_edge:      ; preds = %list_splice_init.exit111
  br label %for.body

list_splice_init.exit111.for.end_crit_edge:       ; preds = %list_splice_init.exit111
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body:                                         ; preds = %rcar_dmac_realloc_hwdesc.exit.for.body_crit_edge, %list_splice_init.exit111.for.body_crit_edge
  %.pn115 = phi ptr [ %.pn, %rcar_dmac_realloc_hwdesc.exit.for.body_crit_edge ], [ %.pn113, %list_splice_init.exit111.for.body_crit_edge ]
  %size1.i = getelementptr i8, ptr %.pn115, i32 36
  %77 = ptrtoint ptr %size1.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size1.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %78)
  %cmp.i = icmp eq i32 %78, 0
  br i1 %cmp.i, label %for.body.rcar_dmac_realloc_hwdesc.exit_crit_edge, label %if.end.i

for.body.rcar_dmac_realloc_hwdesc.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_realloc_hwdesc.exit

if.end.i:                                         ; preds = %for.body
  %mem.i = getelementptr i8, ptr %.pn115, i32 28
  %79 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %mem.i, align 4
  %tobool.not.i = icmp eq ptr %80, null
  br i1 %tobool.not.i, label %if.end.i.rcar_dmac_realloc_hwdesc.exit_crit_edge, label %if.then3.i

if.end.i.rcar_dmac_realloc_hwdesc.exit_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_realloc_hwdesc.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %81 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %chan, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %82, i32 0, i32 15
  %83 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev.i, align 4
  %dma.i = getelementptr i8, ptr %.pn115, i32 32
  %85 = ptrtoint ptr %dma.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dma.i, align 4
  call void @dma_free_attrs(ptr noundef %84, i32 noundef %78, ptr noundef nonnull %80, i32 noundef %86, i32 noundef 0) #12
  %87 = ptrtoint ptr %mem.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr null, ptr %mem.i, align 4
  %88 = ptrtoint ptr %size1.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %size1.i, align 4
  br label %rcar_dmac_realloc_hwdesc.exit

rcar_dmac_realloc_hwdesc.exit:                    ; preds = %if.then3.i, %if.end.i.rcar_dmac_realloc_hwdesc.exit_crit_edge, %for.body.rcar_dmac_realloc_hwdesc.exit_crit_edge
  %89 = ptrtoint ptr %.pn115 to i32
  call void @__asan_load4_noabort(i32 %89)
  %.pn = load ptr, ptr %.pn115, align 4
  %cmp18.not = icmp eq ptr %.pn, %list
  br i1 %cmp18.not, label %rcar_dmac_realloc_hwdesc.exit.for.end_crit_edge, label %rcar_dmac_realloc_hwdesc.exit.for.body_crit_edge

rcar_dmac_realloc_hwdesc.exit.for.body_crit_edge: ; preds = %rcar_dmac_realloc_hwdesc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

rcar_dmac_realloc_hwdesc.exit.for.end_crit_edge:  ; preds = %rcar_dmac_realloc_hwdesc.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %rcar_dmac_realloc_hwdesc.exit.for.end_crit_edge, %list_splice_init.exit111.for.end_crit_edge
  %pages = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 7
  %90 = ptrtoint ptr %pages to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %pages, align 4
  %cmp38.not116 = icmp eq ptr %91, %pages
  br i1 %cmp38.not116, label %for.end.for.end48_crit_edge, label %for.end.for.body40_crit_edge

for.end.for.body40_crit_edge:                     ; preds = %for.end
  br label %for.body40

for.end.for.end48_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end48

for.body40:                                       ; preds = %list_del.exit.for.body40_crit_edge, %for.end.for.body40_crit_edge
  %page.0117 = phi ptr [ %_page.0, %list_del.exit.for.body40_crit_edge ], [ %91, %for.end.for.body40_crit_edge ]
  %92 = ptrtoint ptr %page.0117 to i32
  call void @__asan_load4_noabort(i32 %92)
  %_page.0 = load ptr, ptr %page.0117, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %page.0117) #12
  br i1 %call.i.i, label %if.end.i.i112, label %for.body40.list_del.exit_crit_edge

for.body40.list_del.exit_crit_edge:               ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i112:                                    ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %page.0117, i32 0, i32 1
  %93 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev.i.i, align 4
  %95 = ptrtoint ptr %page.0117 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %page.0117, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %96, i32 0, i32 1
  %97 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %94, ptr %prev1.i.i.i, align 4
  %98 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %96, ptr %94, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i112, %for.body40.list_del.exit_crit_edge
  %99 = ptrtoint ptr %page.0117 to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr inttoptr (i32 256 to ptr), ptr %page.0117, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %page.0117, i32 0, i32 1
  %100 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %100)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %101 = ptrtoint ptr %page.0117 to i32
  call void @free_pages(i32 noundef %101, i32 noundef 0) #12
  %cmp38.not = icmp eq ptr %_page.0, %pages
  br i1 %cmp38.not, label %list_del.exit.for.end48_crit_edge, label %list_del.exit.for.body40_crit_edge

list_del.exit.for.body40_crit_edge:               ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body40

list_del.exit.for.end48_crit_edge:                ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end48

for.end48:                                        ; preds = %list_del.exit.for.end48_crit_edge, %for.end.for.end48_crit_edge
  %xfer_size = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 6, i32 2, i32 1
  %102 = ptrtoint ptr %xfer_size to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %xfer_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %103)
  %tobool.not = icmp eq i32 %103, 0
  br i1 %tobool.not, label %for.end48.if.end55_crit_edge, label %if.then49

for.end48.if.end55_crit_edge:                     ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end55

if.then49:                                        ; preds = %for.end48
  call void @__sanitizer_cov_trace_pc() #14
  %104 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %105, i32 0, i32 15
  %106 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %dev, align 4
  %108 = ptrtoint ptr %map4 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %map4, align 4
  %dir = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 6, i32 1
  %110 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dir, align 4
  call void @dma_unmap_resource(ptr noundef %107, i32 noundef %109, i32 noundef %103, i32 noundef %111, i32 noundef 0) #12
  %112 = ptrtoint ptr %xfer_size to i32
  call void @__asan_store4_noabort(i32 %112)
  store i32 0, ptr %xfer_size, align 4
  br label %if.end55

if.end55:                                         ; preds = %if.then49, %for.end48.if.end55_crit_edge
  %113 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %chan, align 4
  %dev57 = getelementptr inbounds %struct.dma_device, ptr %114, i32 0, i32 15
  %115 = ptrtoint ptr %dev57 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %dev57, align 4
  %call.i = call i32 @__pm_runtime_idle(ptr noundef %116, i32 noundef 5) #12
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rcar_dmac_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dma_dest, i32 noundef %dma_src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %sgl = alloca %struct.scatterlist, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %sgl) #12
  %0 = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 1
  %1 = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 2
  %2 = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 3
  %3 = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool.not = icmp eq i32 %len, 0
  %4 = call ptr @memset(ptr %sgl, i32 255, i32 20)
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @sg_init_table(ptr noundef nonnull %sgl, i32 noundef 1) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %5 = load ptr, ptr @mem_map, align 4
  %shr = lshr i32 %dma_src, 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %6 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %sub = sub i32 %shr, %6
  %add.ptr1 = getelementptr %struct.page, ptr %5, i32 %sub
  %and = and i32 %dma_src, 4095
  %7 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %sgl, align 4
  %9 = ptrtoint ptr %add.ptr1 to i32
  %and2.i.i = and i32 %9, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !145

do.body5.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !146
  unreachable

do.body11.i.i:                                    ; preds = %if.end
  %and.i.i.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !145

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !147
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %and.i.i = and i32 %8, 3
  %or.i.i = or i32 %and.i.i, %9
  %10 = ptrtoint ptr %sgl to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %or.i.i, ptr %sgl, align 4
  %11 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %and, ptr %0, align 4
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %len, ptr %1, align 4
  %13 = ptrtoint ptr %2 to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %dma_src, ptr %2, align 4
  %14 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %len, ptr %3, align 4
  %call = call fastcc ptr @rcar_dmac_chan_prep_sg(ptr noundef %chan, ptr noundef nonnull %sgl, i32 noundef 1, i32 noundef %dma_dest, i32 noundef 0, i32 noundef %flags, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %sg_set_page.exit, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %sg_set_page.exit ], [ null, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %sgl) #12
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rcar_dmac_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %dir, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mid_rid = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 7
  %0 = ptrtoint ptr %mid_rid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mid_rid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %tobool.not = icmp eq i32 %sg_len, 0
  %or.cond = or i1 %tobool.not, %cmp
  br i1 %or.cond, label %entry.do.end_crit_edge, label %lor.lhs.false1

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

lor.lhs.false1:                                   ; preds = %entry
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 4
  %2 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool2.not = icmp eq i32 %3, 0
  br i1 %tobool2.not, label %lor.lhs.false1.do.end_crit_edge, label %if.end

lor.lhs.false1.do.end_crit_edge:                  ; preds = %lor.lhs.false1
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end

do.end:                                           ; preds = %lor.lhs.false1.do.end_crit_edge, %entry.do.end_crit_edge
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %7, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %sg_len, i32 noundef %1) #15
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false1
  %call = tail call fastcc i32 @rcar_dmac_map_slave_addr(ptr noundef %chan, i32 noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool4.not = icmp eq i32 %call, 0
  br i1 %tobool4.not, label %if.end6, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %map = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 6
  %8 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %map, align 4
  %call7 = tail call fastcc ptr @rcar_dmac_chan_prep_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %9, i32 noundef %dir, i32 noundef %flags, i1 noundef zeroext false)
  br label %cleanup

cleanup:                                          ; preds = %if.end6, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ %call7, %if.end6 ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rcar_dmac_prep_dma_cyclic(ptr noundef %chan, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %dir, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %mid_rid = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 7
  %0 = ptrtoint ptr %mid_rid to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %mid_rid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  call void @__sanitizer_cov_trace_cmp4(i32 %buf_len, i32 %period_len)
  %cmp1 = icmp ult i32 %buf_len, %period_len
  %or.cond = or i1 %cmp1, %cmp
  br i1 %or.cond, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %5, ptr noundef nonnull @.str.33, ptr noundef nonnull @.str.34, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %1) #15
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call fastcc i32 @rcar_dmac_map_slave_addr(ptr noundef %chan, i32 noundef %dir)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end4, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %div = udiv i32 %buf_len, %period_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %div)
  %cmp5 = icmp ugt i32 %div, 32
  br i1 %cmp5, label %do.end9, label %if.end7.i

do.end9:                                          ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #14
  %6 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan, align 4
  %dev11 = getelementptr inbounds %struct.dma_device, ptr %7, i32 0, i32 15
  %8 = ptrtoint ptr %dev11 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev11, align 4
  %index = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 2
  %10 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.36, i32 noundef %11, i32 noundef %div, i32 noundef 32) #15
  br label %cleanup

if.end7.i:                                        ; preds = %if.end4
  %12 = mul nuw nsw i32 %div, 20
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %12, i32 noundef 2048) #16
  %tobool14.not = icmp eq ptr %call8.i, null
  br i1 %tobool14.not, label %if.end7.i.cleanup_crit_edge, label %for.body.preheader

if.end7.i.cleanup_crit_edge:                      ; preds = %if.end7.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.body.preheader:                               ; preds = %if.end7.i
  tail call void @sg_init_table(ptr noundef nonnull %call8.i, i32 noundef %div) #12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %13 = load ptr, ptr @mem_map, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %14 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %sg_set_page.exit.for.body_crit_edge, %for.body.preheader
  %i.066 = phi i32 [ %inc, %sg_set_page.exit.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %mul = mul i32 %i.066, %period_len
  %add = add i32 %mul, %buf_addr
  %arrayidx = getelementptr %struct.scatterlist, ptr %call8.i, i32 %i.066
  %shr = lshr i32 %add, 12
  %sub = sub i32 %shr, %14
  %add.ptr18 = getelementptr %struct.page, ptr %13, i32 %sub
  %and = and i32 %add, 4095
  %15 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %arrayidx, align 4
  %17 = ptrtoint ptr %add.ptr18 to i32
  %and2.i.i = and i32 %17, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2.i.i)
  %tobool.not.i.i = icmp eq i32 %and2.i.i, 0
  br i1 %tobool.not.i.i, label %do.body11.i.i, label %do.body5.i.i, !prof !145

do.body5.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 112, 0\0A.popsection", ""() #12, !srcloc !146
  unreachable

do.body11.i.i:                                    ; preds = %for.body
  %and.i.i.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i.i)
  %tobool.i.not.i.i = icmp eq i32 %and.i.i.i, 0
  br i1 %tobool.i.not.i.i, label %sg_set_page.exit, label %do.body19.i.i, !prof !145

do.body19.i.i:                                    ; preds = %do.body11.i.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22include/linux/scatterlist.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 114, 0\0A.popsection", ""() #12, !srcloc !147
  unreachable

sg_set_page.exit:                                 ; preds = %do.body11.i.i
  %and.i.i = and i32 %16, 3
  %or.i.i = or i32 %and.i.i, %17
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or.i.i, ptr %arrayidx, align 4
  %offset1.i = getelementptr %struct.scatterlist, ptr %call8.i, i32 %i.066, i32 1
  %19 = ptrtoint ptr %offset1.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %and, ptr %offset1.i, align 4
  %length.i = getelementptr %struct.scatterlist, ptr %call8.i, i32 %i.066, i32 2
  %20 = ptrtoint ptr %length.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %period_len, ptr %length.i, align 4
  %dma_address = getelementptr %struct.scatterlist, ptr %call8.i, i32 %i.066, i32 3
  %21 = ptrtoint ptr %dma_address to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %add, ptr %dma_address, align 4
  %dma_length = getelementptr %struct.scatterlist, ptr %call8.i, i32 %i.066, i32 4
  %22 = ptrtoint ptr %dma_length to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %period_len, ptr %dma_length, align 4
  %inc = add nuw i32 %i.066, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %for.end, label %sg_set_page.exit.for.body_crit_edge

sg_set_page.exit.for.body_crit_edge:              ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %sg_set_page.exit
  call void @__sanitizer_cov_trace_pc() #14
  %map = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 6
  %23 = ptrtoint ptr %map to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %map, align 4
  %call21 = tail call fastcc ptr @rcar_dmac_chan_prep_sg(ptr noundef %chan, ptr noundef nonnull %call8.i, i32 noundef %div, i32 noundef %24, i32 noundef %dir, i32 noundef %flags, i1 noundef zeroext true)
  tail call void @kfree(ptr noundef nonnull %call8.i) #12
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.end7.i.cleanup_crit_edge, %do.end9, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end9 ], [ %call21, %for.end ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end7.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcar_dmac_device_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %cfg) #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %src_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 1
  %0 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_addr, align 4
  %src = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 4
  %2 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %src, align 4
  %dst_addr = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 2
  %3 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dst_addr, align 4
  %dst = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 5
  %5 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dst, align 4
  %src_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 3
  %6 = ptrtoint ptr %src_addr_width to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %src_addr_width, align 4
  %xfer_size = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 4, i32 1
  %8 = ptrtoint ptr %xfer_size to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %xfer_size, align 4
  %dst_addr_width = getelementptr inbounds %struct.dma_slave_config, ptr %cfg, i32 0, i32 4
  %9 = ptrtoint ptr %dst_addr_width to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dst_addr_width, align 4
  %xfer_size4 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 5, i32 1
  %11 = ptrtoint ptr %xfer_size4 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %xfer_size4, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_dmac_chan_pause(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %iomem4.i.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %3 = and i32 %2, -16777217
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %3) #12, !srcloc !138
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry
  %i.05.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.rcar_dmac_clear_chcr_de.exit_crit_edge, label %if.end.i.i

for.body.i.i.rcar_dmac_clear_chcr_de.exit_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_clear_chcr_de.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #12
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.22) #15
  br label %rcar_dmac_clear_chcr_de.exit

rcar_dmac_clear_chcr_de.exit:                     ; preds = %do.end.i.i, %for.body.i.i.rcar_dmac_clear_chcr_de.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_dmac_chan_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %iomem4.i.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %3 = and i32 %2, -117443777
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %4 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %3) #12, !srcloc !138
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %if.end.i.i.for.body.i.i_crit_edge, %entry
  %i.05.i.i = phi i32 [ 0, %entry ], [ %inc.i.i, %if.end.i.i.for.body.i.i_crit_edge ]
  %6 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i.i.i = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %9 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not.i.i = icmp eq i32 %9, 0
  br i1 %tobool.not.i.i, label %for.body.i.i.rcar_dmac_chan_halt.exit_crit_edge, label %if.end.i.i

for.body.i.i.rcar_dmac_chan_halt.exit_crit_edge:  ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_chan_halt.exit

if.end.i.i:                                       ; preds = %for.body.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %10 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %10(i32 noundef 214748) #12
  %inc.i.i = add nuw nsw i32 %i.05.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, 1024
  br i1 %exitcond.not.i.i, label %do.end.i.i, label %if.end.i.i.for.body.i.i_crit_edge

if.end.i.i.for.body.i.i_crit_edge:                ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %11 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %12, i32 0, i32 15
  %13 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.22) #15
  br label %rcar_dmac_chan_halt.exit

rcar_dmac_chan_halt.exit:                         ; preds = %do.end.i.i, %for.body.i.i.rcar_dmac_chan_halt.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  tail call fastcc void @rcar_dmac_chan_reinit(ptr noundef %chan)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_dmac_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !148
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
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
  %brmerge = or i1 %tobool.not.i, %or.cond.i.i
  %not.or.cond.i.i = xor i1 %or.cond.i.i, true
  br i1 %brmerge, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body1_crit_edge

if.then.i.i.do.body1_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge48 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge48, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body1_crit_edge

if.else.i.i.do.body1_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.body1

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body1:                                         ; preds = %if.else.i.i.do.body1_crit_edge, %if.then.i.i.do.body1_crit_edge
  %lock = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 8
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %running.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 5
  %8 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %running.i, align 4
  %tobool.not.i37 = icmp eq ptr %9, null
  br i1 %tobool.not.i37, label %do.body1.cond.end_crit_edge, label %if.end.i38

do.body1.cond.end_crit_edge:                      ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

if.end.i38:                                       ; preds = %do.body1
  %10 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %cookie1.i, align 4
  %12 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #12, !srcloc !148
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %11)
  %cmp.not.i.i.i = icmp sgt i32 %13, %11
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cookie)
  %cmp4.not.i.i.i = icmp sge i32 %13, %cookie
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp5.i.i.i = icmp slt i32 %11, %cookie
  br i1 %cmp.not.i.i.i, label %if.else.i.i.i, label %if.then.i.i.i

if.then.i.i.i:                                    ; preds = %if.end.i38
  %or.cond.i.i.i = or i1 %cmp5.i.i.i, %cmp4.not.i.i.i
  br i1 %or.cond.i.i.i, label %if.then.i.i.i.rcar_dmac_chan_get_residue.exit_crit_edge, label %if.then.i.i.i.if.end5.i_crit_edge

if.then.i.i.i.if.end5.i_crit_edge:                ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.then.i.i.i.rcar_dmac_chan_get_residue.exit_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_chan_get_residue.exit

if.else.i.i.i:                                    ; preds = %if.end.i38
  %or.cond16.i.i.i = and i1 %cmp5.i.i.i, %cmp4.not.i.i.i
  br i1 %or.cond16.i.i.i, label %if.else.i.i.i.rcar_dmac_chan_get_residue.exit_crit_edge, label %if.else.i.i.i.if.end5.i_crit_edge

if.else.i.i.i.if.end5.i_crit_edge:                ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end5.i

if.else.i.i.i.rcar_dmac_chan_get_residue.exit_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_chan_get_residue.exit

if.end5.i:                                        ; preds = %if.else.i.i.i.if.end5.i_crit_edge, %if.then.i.i.i.if.end5.i_crit_edge
  %14 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %15, i32 %cookie)
  %cmp7.not.i = icmp eq i32 %15, %cookie
  br i1 %cmp7.not.i, label %for.cond92.preheader.i, label %if.then8.i

for.cond92.preheader.i:                           ; preds = %if.end5.i
  %iomem4.i.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 1
  %16 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %17, i32 28
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %19 = shl i32 %18, 8
  %and.i = and i32 %19, 16711680
  %20 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i279.i = getelementptr i8, ptr %21, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i279.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #12
  %24 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i281.i = getelementptr i8, ptr %25, i32 28
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i281.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %27 = shl i32 %26, 8
  %and98.i = and i32 %27, 16711680
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %and98.i)
  %cmp99.i = icmp eq i32 %and.i, %and98.i
  br i1 %cmp99.i, label %for.cond92.preheader.i.if.end146.i_crit_edge, label %for.cond92.i

for.cond92.preheader.i.if.end146.i_crit_edge:     ; preds = %for.cond92.preheader.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.i

if.then8.i:                                       ; preds = %if.end5.i
  %done.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.then8.i
  %.pn.in.i = phi ptr [ %done.i, %if.then8.i ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %28 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp12.not.i = icmp eq ptr %.pn.i, %done.i
  br i1 %cmp12.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %desc.0.i = getelementptr i8, ptr %.pn.i, i32 -112
  %29 = ptrtoint ptr %desc.0.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %desc.0.i, align 4
  %cmp15.i = icmp eq i32 %30, %cookie
  br i1 %cmp15.i, label %for.body.i.rcar_dmac_chan_get_residue.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond.i

for.body.i.rcar_dmac_chan_get_residue.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_chan_get_residue.exit

for.end.i:                                        ; preds = %for.cond.i
  %pending.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 1
  br label %for.cond28.i

for.cond28.i:                                     ; preds = %for.body34.i.for.cond28.i_crit_edge, %for.end.i
  %.pn276.in.i = phi ptr [ %pending.i, %for.end.i ], [ %.pn276.i, %for.body34.i.for.cond28.i_crit_edge ]
  %31 = ptrtoint ptr %.pn276.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn276.i = load ptr, ptr %.pn276.in.i, align 4
  %cmp32.not.i = icmp eq ptr %.pn276.i, %pending.i
  br i1 %cmp32.not.i, label %for.end46.i, label %for.body34.i

for.body34.i:                                     ; preds = %for.cond28.i
  %desc.1.i = getelementptr i8, ptr %.pn276.i, i32 -112
  %32 = ptrtoint ptr %desc.1.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %desc.1.i, align 4
  %cmp37.i = icmp eq i32 %33, %cookie
  br i1 %cmp37.i, label %if.then38.i, label %for.body34.i.for.cond28.i_crit_edge

for.body34.i.for.cond28.i_crit_edge:              ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond28.i

if.then38.i:                                      ; preds = %for.body34.i
  call void @__sanitizer_cov_trace_pc() #14
  %size.i = getelementptr i8, ptr %.pn276.i, i32 40
  %34 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %size.i, align 4
  br label %rcar_dmac_chan_get_residue.exit

for.end46.i:                                      ; preds = %for.cond28.i
  %active.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 2
  br label %for.cond52.i

for.cond52.i:                                     ; preds = %for.body58.i.for.cond52.i_crit_edge, %for.end46.i
  %.pn277.in.i = phi ptr [ %active.i, %for.end46.i ], [ %.pn277.i, %for.body58.i.for.cond52.i_crit_edge ]
  %36 = ptrtoint ptr %.pn277.in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %.pn277.i = load ptr, ptr %.pn277.in.i, align 4
  %cmp56.not.i = icmp eq ptr %.pn277.i, %active.i
  br i1 %cmp56.not.i, label %do.end.i, label %for.body58.i

for.body58.i:                                     ; preds = %for.cond52.i
  %desc.2.i = getelementptr i8, ptr %.pn277.i, i32 -112
  %37 = ptrtoint ptr %desc.2.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %desc.2.i, align 4
  %cmp61.i = icmp eq i32 %38, %cookie
  br i1 %cmp61.i, label %if.then62.i, label %for.body58.i.for.cond52.i_crit_edge

for.body58.i.for.cond52.i_crit_edge:              ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.cond52.i

if.then62.i:                                      ; preds = %for.body58.i
  call void @__sanitizer_cov_trace_pc() #14
  %size63.i = getelementptr i8, ptr %.pn277.i, i32 40
  %39 = ptrtoint ptr %size63.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %size63.i, align 4
  br label %rcar_dmac_chan_get_residue.exit

do.end.i:                                         ; preds = %for.cond52.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1370, i32 noundef 9, ptr noundef nonnull @.str.38) #12
  br label %rcar_dmac_chan_get_residue.exit

for.cond92.i:                                     ; preds = %for.cond92.preheader.i
  %41 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i.1.i = getelementptr i8, ptr %42, i32 28
  %43 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.1.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %44 = shl i32 %43, 8
  %and.1.i = and i32 %44, 16711680
  %45 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i279.1.i = getelementptr i8, ptr %46, i32 24
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i279.1.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #12
  %49 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i281.1.i = getelementptr i8, ptr %50, i32 28
  %51 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i281.1.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %52 = shl i32 %51, 8
  %and98.1.i = and i32 %52, 16711680
  call void @__sanitizer_cov_trace_cmp4(i32 %and.1.i, i32 %and98.1.i)
  %cmp99.1.i = icmp eq i32 %and.1.i, %and98.1.i
  br i1 %cmp99.1.i, label %for.cond92.i.if.end146.i_crit_edge, label %for.cond92.1.i

for.cond92.i.if.end146.i_crit_edge:               ; preds = %for.cond92.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.i

for.cond92.1.i:                                   ; preds = %for.cond92.i
  %53 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i.2.i = getelementptr i8, ptr %54, i32 28
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.2.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %56 = shl i32 %55, 8
  %and.2.i = and i32 %56, 16711680
  %57 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i279.2.i = getelementptr i8, ptr %58, i32 24
  %59 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i279.2.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %60 = tail call i32 @llvm.bswap.i32(i32 %59) #12
  %61 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i281.2.i = getelementptr i8, ptr %62, i32 28
  %63 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i281.2.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %64 = shl i32 %63, 8
  %and98.2.i = and i32 %64, 16711680
  call void @__sanitizer_cov_trace_cmp4(i32 %and.2.i, i32 %and98.2.i)
  %cmp99.2.i = icmp eq i32 %and.2.i, %and98.2.i
  br i1 %cmp99.2.i, label %for.cond92.1.i.if.end146.i_crit_edge, label %for.cond92.2.i

for.cond92.1.i.if.end146.i_crit_edge:             ; preds = %for.cond92.1.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.i

for.cond92.2.i:                                   ; preds = %for.cond92.1.i
  %.b275.i = load i1, ptr @rcar_dmac_chan_get_residue.__already_done, align 1
  br i1 %.b275.i, label %for.cond92.2.i.if.end146.i_crit_edge, label %if.then119.i, !prof !145

for.cond92.2.i.if.end146.i_crit_edge:             ; preds = %for.cond92.2.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end146.i

if.then119.i:                                     ; preds = %for.cond92.2.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcar_dmac_chan_get_residue.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1390, i32 noundef 9, ptr noundef nonnull @.str.39) #12
  br label %if.end146.i

if.end146.i:                                      ; preds = %if.then119.i, %for.cond92.2.i.if.end146.i_crit_edge, %for.cond92.1.i.if.end146.i_crit_edge, %for.cond92.i.if.end146.i_crit_edge, %for.cond92.preheader.i.if.end146.i_crit_edge
  %and306.i = phi i32 [ %and.2.i, %if.then119.i ], [ %and.2.i, %for.cond92.2.i.if.end146.i_crit_edge ], [ %and.i, %for.cond92.preheader.i.if.end146.i_crit_edge ], [ %and.1.i, %for.cond92.i.if.end146.i_crit_edge ], [ %and.2.i, %for.cond92.1.i.if.end146.i_crit_edge ]
  %65 = phi i32 [ %60, %if.then119.i ], [ %60, %for.cond92.2.i.if.end146.i_crit_edge ], [ %23, %for.cond92.preheader.i.if.end146.i_crit_edge ], [ %48, %for.cond92.i.if.end146.i_crit_edge ], [ %60, %for.cond92.1.i.if.end146.i_crit_edge ]
  %hwdescs.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %9, i32 0, i32 8
  %66 = ptrtoint ptr %hwdescs.i to i32
  call void @__asan_load1_noabort(i32 %66)
  %67 = load i8, ptr %hwdescs.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %67)
  %tobool154.not.i = icmp eq i8 %67, 0
  br i1 %tobool154.not.i, label %if.else.i, label %if.then155.i

if.then155.i:                                     ; preds = %if.end146.i
  %shr.i = lshr exact i32 %and306.i, 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and306.i)
  %cmp156.i = icmp eq i32 %and306.i, 0
  br i1 %cmp156.i, label %if.then157.i, label %if.then155.i.if.end158.i_crit_edge

if.then155.i.if.end158.i_crit_edge:               ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end158.i

if.then157.i:                                     ; preds = %if.then155.i
  call void @__sanitizer_cov_trace_pc() #14
  %nchunks.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %9, i32 0, i32 7
  %68 = ptrtoint ptr %nchunks.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %nchunks.i, align 4
  br label %if.end158.i

if.end158.i:                                      ; preds = %if.then157.i, %if.then155.i.if.end158.i_crit_edge
  %dptr.0.i = phi i32 [ %69, %if.then157.i ], [ %shr.i, %if.then155.i.if.end158.i_crit_edge ]
  %dec.i = add i32 %dptr.0.i, -1
  %nchunks160.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %9, i32 0, i32 7
  %70 = ptrtoint ptr %nchunks160.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %nchunks160.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dec.i, i32 %71)
  %cmp161.not.i = icmp ult i32 %dec.i, %71
  br i1 %cmp161.not.i, label %if.end158.i.if.end192.i_crit_edge, label %do.end177.i, !prof !145

if.end158.i.if.end192.i_crit_edge:                ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end192.i

do.end177.i:                                      ; preds = %if.end158.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1403, i32 noundef 9, ptr noundef null) #12
  br label %if.end192.i

if.else.i:                                        ; preds = %if.end146.i
  call void @__sanitizer_cov_trace_pc() #14
  %running191.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %9, i32 0, i32 6
  %72 = ptrtoint ptr %running191.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %running191.i, align 4
  br label %if.end192.i

if.end192.i:                                      ; preds = %if.else.i, %do.end177.i, %if.end158.i.if.end192.i_crit_edge
  %dptr.1.i = phi i32 [ 0, %if.else.i ], [ %dec.i, %do.end177.i ], [ %dec.i, %if.end158.i.if.end192.i_crit_edge ]
  %running2.0.i = phi ptr [ %73, %if.else.i ], [ null, %do.end177.i ], [ null, %if.end158.i.if.end192.i_crit_edge ]
  %chunks.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %9, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %9, i32 0, i32 5, i32 1
  %74 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %chunk.0296.i = load ptr, ptr %prev.i, align 4
  %cmp199.not297.i = icmp eq ptr %chunk.0296.i, %chunks.i
  %cmp203298.i = icmp eq ptr %chunk.0296.i, %running2.0.i
  %or.cond299.i = select i1 %cmp199.not297.i, i1 true, i1 %cmp203298.i
  br i1 %or.cond299.i, label %if.end192.i.for.end216.i_crit_edge, label %lor.lhs.false.lr.ph.i

if.end192.i.for.end216.i_crit_edge:               ; preds = %if.end192.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end216.i

lor.lhs.false.lr.ph.i:                            ; preds = %if.end192.i
  %nchunks205.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %9, i32 0, i32 7
  %75 = ptrtoint ptr %nchunks205.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %nchunks205.i, align 4
  br label %lor.lhs.false.i

lor.lhs.false.i:                                  ; preds = %if.end208.i.lor.lhs.false.i_crit_edge, %lor.lhs.false.lr.ph.i
  %chunk.0302.i = phi ptr [ %chunk.0296.i, %lor.lhs.false.lr.ph.i ], [ %chunk.0.i, %if.end208.i.lor.lhs.false.i_crit_edge ]
  %residue.0301.i = phi i32 [ 0, %lor.lhs.false.lr.ph.i ], [ %add.i, %if.end208.i.lor.lhs.false.i_crit_edge ]
  %dptr.2300.i = phi i32 [ %dptr.1.i, %lor.lhs.false.lr.ph.i ], [ %inc204.i, %if.end208.i.lor.lhs.false.i_crit_edge ]
  %inc204.i = add i32 %dptr.2300.i, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %inc204.i, i32 %76)
  %cmp206.i = icmp eq i32 %inc204.i, %76
  br i1 %cmp206.i, label %lor.lhs.false.i.for.end216.i_crit_edge, label %if.end208.i

lor.lhs.false.i.for.end216.i_crit_edge:           ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end216.i

if.end208.i:                                      ; preds = %lor.lhs.false.i
  %size209.i = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %chunk.0302.i, i32 0, i32 3
  %77 = ptrtoint ptr %size209.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %size209.i, align 4
  %add.i = add i32 %78, %residue.0301.i
  %prev213.i = getelementptr inbounds %struct.list_head, ptr %chunk.0302.i, i32 0, i32 1
  %79 = ptrtoint ptr %prev213.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %chunk.0.i = load ptr, ptr %prev213.i, align 4
  %cmp199.not.i = icmp eq ptr %chunk.0.i, %chunks.i
  %cmp203.i = icmp eq ptr %chunk.0.i, %running2.0.i
  %or.cond.i = select i1 %cmp199.not.i, i1 true, i1 %cmp203.i
  br i1 %or.cond.i, label %if.end208.i.for.end216.i_crit_edge, label %if.end208.i.lor.lhs.false.i_crit_edge

if.end208.i.lor.lhs.false.i_crit_edge:            ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %lor.lhs.false.i

if.end208.i.for.end216.i_crit_edge:               ; preds = %if.end208.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end216.i

for.end216.i:                                     ; preds = %if.end208.i.for.end216.i_crit_edge, %lor.lhs.false.i.for.end216.i_crit_edge, %if.end192.i.for.end216.i_crit_edge
  %residue.0.lcssa.i = phi i32 [ 0, %if.end192.i.for.end216.i_crit_edge ], [ %add.i, %if.end208.i.for.end216.i_crit_edge ], [ %residue.0301.i, %lor.lhs.false.i.for.end216.i_crit_edge ]
  %xfer_shift.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %9, i32 0, i32 2
  %80 = ptrtoint ptr %xfer_shift.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %xfer_shift.i, align 4
  %shl.i = shl i32 %65, %81
  %add217.i = add i32 %shl.i, %residue.0.lcssa.i
  br label %rcar_dmac_chan_get_residue.exit

rcar_dmac_chan_get_residue.exit:                  ; preds = %for.end216.i, %do.end.i, %if.then62.i, %if.then38.i, %for.body.i.rcar_dmac_chan_get_residue.exit_crit_edge, %if.else.i.i.i.rcar_dmac_chan_get_residue.exit_crit_edge, %if.then.i.i.i.rcar_dmac_chan_get_residue.exit_crit_edge
  %retval.0.i.ph = phi i32 [ 0, %if.else.i.i.i.rcar_dmac_chan_get_residue.exit_crit_edge ], [ 0, %if.then.i.i.i.rcar_dmac_chan_get_residue.exit_crit_edge ], [ %add217.i, %for.end216.i ], [ 0, %do.end.i ], [ %40, %if.then62.i ], [ %35, %if.then38.i ], [ 0, %for.body.i.rcar_dmac_chan_get_residue.exit_crit_edge ]
  %82 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %.pr = load ptr, ptr %running.i, align 4
  %tobool9.not = icmp eq ptr %.pr, null
  br i1 %tobool9.not, label %rcar_dmac_chan_get_residue.exit.cond.end_crit_edge, label %cond.true

rcar_dmac_chan_get_residue.exit.cond.end_crit_edge: ; preds = %rcar_dmac_chan_get_residue.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cond.end

cond.true:                                        ; preds = %rcar_dmac_chan_get_residue.exit
  call void @__sanitizer_cov_trace_pc() #14
  %cyclic12 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %.pr, i32 0, i32 10
  %83 = ptrtoint ptr %cyclic12 to i32
  call void @__asan_load1_noabort(i32 %83)
  %84 = load i8, ptr %cyclic12, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %84)
  %phi.cmp = icmp eq i8 %84, 0
  br label %cond.end

cond.end:                                         ; preds = %cond.true, %rcar_dmac_chan_get_residue.exit.cond.end_crit_edge, %do.body1.cond.end_crit_edge
  %retval.0.i47 = phi i32 [ %retval.0.i.ph, %cond.true ], [ %retval.0.i.ph, %rcar_dmac_chan_get_residue.exit.cond.end_crit_edge ], [ 0, %do.body1.cond.end_crit_edge ]
  %cond = phi i1 [ %phi.cmp, %cond.true ], [ true, %rcar_dmac_chan_get_residue.exit.cond.end_crit_edge ], [ true, %do.body1.cond.end_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %retval.0.i47)
  %tobool17.not = icmp eq i32 %retval.0.i47, 0
  %or.cond36 = select i1 %tobool17.not, i1 %cond, i1 false
  br i1 %or.cond36, label %cond.end.cleanup_crit_edge, label %dma_set_residue.exit

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

dma_set_residue.exit:                             ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #14
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %85 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %retval.0.i47, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %cond.end.cleanup_crit_edge, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.shrunk = phi i1 [ true, %dma_set_residue.exit ], [ false, %cond.end.cleanup_crit_edge ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0 = zext i1 %retval.0.shrunk to i32
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_dmac_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 8
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %pending = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 1
  %0 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not = icmp eq ptr %1, %pending
  br i1 %cmp.i.not, label %entry.done_crit_edge, label %if.end

entry.done_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.end:                                           ; preds = %entry
  %active = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 2
  %2 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not.i = icmp eq ptr %3, %pending
  br i1 %cmp.i.not.i, label %if.end.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.end.list_splice_tail_init.exit_crit_edge:      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 2, i32 1
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 1, i32 1
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
  store ptr %active, ptr %7, align 4
  store ptr %7, ptr %prev.i, align 4
  %11 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %pending, ptr %pending, align 4
  store ptr %pending, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.end.list_splice_tail_init.exit_crit_edge
  %running = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 5
  %12 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %running, align 4
  %tobool11.not = icmp eq ptr %13, null
  br i1 %tobool11.not, label %if.then12, label %list_splice_tail_init.exit.done_crit_edge

list_splice_tail_init.exit.done_crit_edge:        ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %done

if.then12:                                        ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %14 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %active, align 4
  %add.ptr18 = getelementptr i8, ptr %15, i32 -112
  %16 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %add.ptr18, ptr %running, align 4
  tail call fastcc void @rcar_dmac_chan_start_xfer(ptr noundef %chan)
  br label %done

done:                                             ; preds = %if.then12, %list_splice_tail_init.exit.done_crit_edge, %entry.done_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #12
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @rcar_dmac_device_synchronize(ptr nocapture noundef readonly %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 3
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %1) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @rcar_dmac_of_xlate(ptr noundef %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  %mask = alloca %struct.dma_cap_mask_t, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask) #12
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %0 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %1)
  %cmp.not = icmp eq i32 %1, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %2 = ptrtoint ptr %mask to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %mask, align 4
  call void @_set_bit(i32 noundef 11, ptr noundef nonnull %mask) #12
  %of_node = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 1
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 4
  %call = call ptr @__dma_request_channel(ptr noundef nonnull %mask, ptr noundef nonnull @rcar_dmac_chan_filter, ptr noundef %dma_spec, ptr noundef %4) #12
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end2

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end2:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %5 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %args, align 4
  %mid_rid = getelementptr inbounds %struct.rcar_dmac_chan, ptr %call, i32 0, i32 7
  %7 = ptrtoint ptr %mid_rid to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %mid_rid, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end2, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end2 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask) #12
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #8

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_dmac_xfer_chunk_alloc(ptr noundef %chan, i32 noundef %gfp) unnamed_addr #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %call = call i32 @get_zeroed_page(i32 noundef %gfp) #12
  %3 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = getelementptr inbounds %struct.rcar_dmac_desc_page, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.cond.preheader
  %i.027 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.rcar_dmac_xfer_chunk], ptr %4, i32 0, i32 %i.027
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %arrayidx, ptr noundef %6, ptr noundef nonnull %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %7 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %arrayidx, ptr %0, align 4
  %8 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %list, ptr %arrayidx, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %arrayidx, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %arrayidx, ptr %6, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.027, 1
  %exitcond.not = icmp eq i32 %inc, 204
  br i1 %exitcond.not, label %do.body1, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body1:                                         ; preds = %list_add_tail.exit
  %lock = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 8
  %call4 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %11 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %12, %list
  br i1 %cmp.i.not.i, label %do.body1.list_splice_tail.exit_crit_edge, label %if.then.i

do.body1.list_splice_tail.exit_crit_edge:         ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail.exit

if.then.i:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #14
  %chunks_free = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 6
  %prev.i20 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 6, i32 1
  %13 = ptrtoint ptr %prev.i20 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i20, align 4
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %prev3.i.i21 = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i21 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i21, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %14, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %chunks_free, ptr %16, align 4
  store ptr %16, ptr %prev.i20, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i, %do.body1.list_splice_tail.exit_crit_edge
  %pages = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 7
  %prev.i22 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 7, i32 1
  %20 = ptrtoint ptr %prev.i22 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i22, align 4
  %call.i.i23 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %3, ptr noundef %21, ptr noundef %pages) #12
  br i1 %call.i.i23, label %if.end.i.i25, label %list_splice_tail.exit.list_add_tail.exit26_crit_edge

list_splice_tail.exit.list_add_tail.exit26_crit_edge: ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit26

if.end.i.i25:                                     ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %22 = ptrtoint ptr %prev.i22 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %3, ptr %prev.i22, align 4
  %23 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %pages, ptr %3, align 4
  %prev3.i.i24 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %24 = ptrtoint ptr %prev3.i.i24 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i24, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %3, ptr %21, align 4
  br label %list_add_tail.exit26

list_add_tail.exit26:                             ; preds = %if.end.i.i25, %list_splice_tail.exit.list_add_tail.exit26_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit26, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit26 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #12
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_dmac_desc_alloc(ptr noundef %chan, i32 noundef %gfp) unnamed_addr #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %call = call i32 @get_zeroed_page(i32 noundef %gfp) #12
  %3 = inttoptr i32 %call to ptr
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  %4 = getelementptr inbounds %struct.rcar_dmac_desc_page, ptr %3, i32 0, i32 1
  br label %for.body

for.body:                                         ; preds = %list_add_tail.exit.for.body_crit_edge, %for.cond.preheader
  %i.035 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %list_add_tail.exit.for.body_crit_edge ]
  %arrayidx = getelementptr [0 x %struct.rcar_dmac_desc], ptr %4, i32 0, i32 %i.035
  call void @dma_async_tx_descriptor_init(ptr noundef %arrayidx, ptr noundef %chan) #12
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %arrayidx, i32 0, i32 4
  %5 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr @rcar_dmac_tx_submit, ptr %tx_submit, align 4
  %chunks = getelementptr [0 x %struct.rcar_dmac_desc], ptr %4, i32 0, i32 %i.035, i32 5
  %6 = ptrtoint ptr %chunks to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %chunks, ptr %chunks, align 4
  %prev.i = getelementptr [0 x %struct.rcar_dmac_desc], ptr %4, i32 0, i32 %i.035, i32 5, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %chunks, ptr %prev.i, align 4
  %node = getelementptr [0 x %struct.rcar_dmac_desc], ptr %4, i32 0, i32 %i.035, i32 4
  %8 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %0, align 4
  %call.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %9, ptr noundef nonnull %list) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_add_tail.exit_crit_edge

for.body.list_add_tail.exit_crit_edge:            ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %10 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %node, ptr %0, align 4
  %11 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %list, ptr %node, align 4
  %prev3.i.i = getelementptr [0 x %struct.rcar_dmac_desc], ptr %4, i32 0, i32 %i.035, i32 4, i32 1
  %12 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev3.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %node, ptr %9, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %for.body.list_add_tail.exit_crit_edge
  %inc = add nuw nsw i32 %i.035, 1
  %exitcond.not = icmp eq i32 %inc, 25
  br i1 %exitcond.not, label %do.body3, label %list_add_tail.exit.for.body_crit_edge

list_add_tail.exit.for.body_crit_edge:            ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

do.body3:                                         ; preds = %list_add_tail.exit
  %lock = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 8
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %14 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i = icmp eq ptr %15, %list
  br i1 %cmp.i.not.i, label %do.body3.list_splice_tail.exit_crit_edge, label %if.then.i

do.body3.list_splice_tail.exit_crit_edge:         ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail.exit

if.then.i:                                        ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #14
  %desc9 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9
  %prev.i28 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i28 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i28, align 4
  %18 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %0, align 4
  %prev3.i.i29 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i29 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i29, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %15, ptr %17, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %desc9, ptr %19, align 4
  store ptr %19, ptr %prev.i28, align 4
  br label %list_splice_tail.exit

list_splice_tail.exit:                            ; preds = %if.then.i, %do.body3.list_splice_tail.exit_crit_edge
  %pages = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 7
  %prev.i30 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 7, i32 1
  %23 = ptrtoint ptr %prev.i30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i30, align 4
  %call.i.i31 = call zeroext i1 @__list_add_valid(ptr noundef nonnull %3, ptr noundef %24, ptr noundef %pages) #12
  br i1 %call.i.i31, label %if.end.i.i33, label %list_splice_tail.exit.list_add_tail.exit34_crit_edge

list_splice_tail.exit.list_add_tail.exit34_crit_edge: ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit34

if.end.i.i33:                                     ; preds = %list_splice_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %prev.i30 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %3, ptr %prev.i30, align 4
  %26 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %pages, ptr %3, align 4
  %prev3.i.i32 = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i32 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i32, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %3, ptr %24, align 4
  br label %list_add_tail.exit34

list_add_tail.exit34:                             ; preds = %if.end.i.i33, %list_splice_tail.exit.list_add_tail.exit34_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call6) #12
  br label %cleanup

cleanup:                                          ; preds = %list_add_tail.exit34, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %list_add_tail.exit34 ], [ -12, %entry.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @get_zeroed_page(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_dmac_tx_submit(ptr noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %lock = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 8
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %2 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan1, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %5, 1
  %6 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #12
  %7 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cookie2.i, align 4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %tx, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_dmac_tx_submit.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_dmac_tx_submit, %do.end20)) #12
          to label %if.then [label %do.end20], !srcloc !150

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %10, i32 0, i32 15
  %11 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dev, align 4
  %index = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %index, align 4
  %15 = ptrtoint ptr %tx to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %tx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_dmac_tx_submit.__UNIQUE_ID_ddebug239, ptr noundef %12, ptr noundef nonnull @.str.21, i32 noundef %14, i32 noundef %16, ptr noundef %tx) #12
  br label %do.end20

do.end20:                                         ; preds = %if.then, %entry
  %node = getelementptr inbounds %struct.rcar_dmac_desc, ptr %tx, i32 0, i32 4
  %pending = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 9, i32 1
  %prev.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %1, i32 0, i32 9, i32 1, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %18, ptr noundef %pending) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end20.list_add_tail.exit_crit_edge

do.end20.list_add_tail.exit_crit_edge:            ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end20
  call void @__sanitizer_cov_trace_pc() #14
  %19 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %node, ptr %prev.i, align 4
  %20 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %pending, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %tx, i32 0, i32 4, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %node, ptr %18, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end20.list_add_tail.exit_crit_edge
  %chunks = getelementptr inbounds %struct.rcar_dmac_desc, ptr %tx, i32 0, i32 5
  %23 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chunks, align 4
  %running = getelementptr inbounds %struct.rcar_dmac_desc, ptr %tx, i32 0, i32 6
  %25 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %24, ptr %running, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #12
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @free_pages(i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_unmap_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @sg_init_table(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @rcar_dmac_chan_prep_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %dev_addr, i32 noundef %dir, i32 noundef %dma_flags, i1 noundef zeroext %cyclic) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  tail call fastcc void @rcar_dmac_desc_recycle_acked(ptr noundef %chan) #12
  %lock.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %desc5.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %desc5.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc5.i, align 4
  %cmp.i.not42.i = icmp eq ptr %1, %desc5.i
  br i1 %cmp.i.not42.i, label %entry.while.body.i_crit_edge, label %entry.while.end.i_crit_edge

entry.while.end.i_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

entry.while.body.i_crit_edge:                     ; preds = %entry
  br label %while.body.i

while.body.i:                                     ; preds = %do.body12.i.while.body.i_crit_edge, %entry.while.body.i_crit_edge
  %flags.043.i = phi i32 [ %call20.i, %do.body12.i.while.body.i_crit_edge ], [ %call2.i, %entry.while.body.i_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.043.i) #12
  %call8.i = tail call fastcc i32 @rcar_dmac_desc_alloc(ptr noundef %chan, i32 noundef 2048) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %while.body.i.cleanup57_crit_edge, label %do.body12.i

while.body.i.cleanup57_crit_edge:                 ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup57

do.body12.i:                                      ; preds = %while.body.i
  %call20.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %2 = ptrtoint ptr %desc5.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc5.i, align 4
  %cmp.i.not.i = icmp eq ptr %3, %desc5.i
  br i1 %cmp.i.not.i, label %do.body12.i.while.body.i_crit_edge, label %do.body12.i.while.end.i_crit_edge

do.body12.i.while.end.i_crit_edge:                ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i

do.body12.i.while.body.i_crit_edge:               ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i

while.end.i:                                      ; preds = %do.body12.i.while.end.i_crit_edge, %entry.while.end.i_crit_edge
  %flags.0.lcssa.i = phi i32 [ %call2.i, %entry.while.end.i_crit_edge ], [ %call20.i, %do.body12.i.while.end.i_crit_edge ]
  %.lcssa.i = phi ptr [ %1, %entry.while.end.i_crit_edge ], [ %3, %do.body12.i.while.end.i_crit_edge ]
  %add.ptr.i = getelementptr i8, ptr %.lcssa.i, i32 -112
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.lcssa.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %while.end.i.rcar_dmac_desc_get.exit_crit_edge

while.end.i.rcar_dmac_desc_get.exit_crit_edge:    ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_desc_get.exit

if.end.i.i.i:                                     ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.lcssa.i, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i.i, align 4
  %6 = ptrtoint ptr %.lcssa.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %.lcssa.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %rcar_dmac_desc_get.exit

rcar_dmac_desc_get.exit:                          ; preds = %if.end.i.i.i, %while.end.i.rcar_dmac_desc_get.exit_crit_edge
  %10 = ptrtoint ptr %.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %.lcssa.i, align 4
  %prev.i.i = getelementptr %struct.list_head, ptr %.lcssa.i, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.0.lcssa.i) #12
  %tobool.not = icmp eq ptr %add.ptr.i, null
  br i1 %tobool.not, label %rcar_dmac_desc_get.exit.cleanup57_crit_edge, label %if.end

rcar_dmac_desc_get.exit.cleanup57_crit_edge:      ; preds = %rcar_dmac_desc_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup57

if.end:                                           ; preds = %rcar_dmac_desc_get.exit
  %frombool = zext i1 %cyclic to i8
  %flags = getelementptr i8, ptr %.lcssa.i, i32 -108
  %12 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dma_flags, ptr %flags, align 4
  %13 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 -16, ptr %add.ptr.i, align 4
  %cyclic3 = getelementptr i8, ptr %.lcssa.i, i32 44
  %14 = ptrtoint ptr %cyclic3 to i32
  call void @__asan_store1_noabort(i32 %14)
  store i8 %frombool, ptr %cyclic3, align 4
  %direction = getelementptr i8, ptr %.lcssa.i, i32 -12
  %15 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %dir, ptr %direction, align 4
  %16 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %16, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dir, label %if.end.rcar_dmac_chan_configure_desc.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb2.i
  ]

if.end.rcar_dmac_chan_configure_desc.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_chan_configure_desc.exit

sw.bb.i:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %xfer_size1.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 4, i32 1
  br label %sw.epilog.sink.split.i

sw.bb2.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  %xfer_size3.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 5, i32 1
  br label %sw.epilog.sink.split.i

sw.epilog.sink.split.i:                           ; preds = %sw.bb2.i, %sw.bb.i
  %xfer_size3.sink.i = phi ptr [ %xfer_size3.i, %sw.bb2.i ], [ %xfer_size1.i, %sw.bb.i ]
  %chcr.0.ph.i = phi i32 [ 6144, %sw.bb2.i ], [ 18432, %sw.bb.i ]
  %17 = ptrtoint ptr %xfer_size3.sink.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %xfer_size3.sink.i, align 4
  br label %rcar_dmac_chan_configure_desc.exit

rcar_dmac_chan_configure_desc.exit:               ; preds = %sw.epilog.sink.split.i, %if.end.rcar_dmac_chan_configure_desc.exit_crit_edge
  %xfer_size.0.i = phi i32 [ 4, %if.end.rcar_dmac_chan_configure_desc.exit_crit_edge ], [ %18, %sw.epilog.sink.split.i ]
  %chcr.0.i = phi i32 [ 21504, %if.end.rcar_dmac_chan_configure_desc.exit_crit_edge ], [ %chcr.0.ph.i, %sw.epilog.sink.split.i ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %xfer_size.0.i)
  %tobool.not.i.i.i = icmp eq i32 %xfer_size.0.i, 0
  %19 = tail call i32 @llvm.ctlz.i32(i32 %xfer_size.0.i, i1 true) #12, !range !151
  %sub.i.op.i.i = xor i32 %19, 31
  %sub.i.i = select i1 %tobool.not.i.i.i, i32 -1, i32 %sub.i.op.i.i
  %xfer_shift.i = getelementptr i8, ptr %.lcssa.i, i32 -8
  %20 = ptrtoint ptr %xfer_shift.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %sub.i.i, ptr %xfer_shift.i, align 4
  %arrayidx.i = getelementptr [7 x i32], ptr @rcar_dmac_chan_configure_desc.chcr_ts, i32 0, i32 %sub.i.i
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %arrayidx.i, align 4
  %or.i = or i32 %22, %chcr.0.i
  %chcr10.i = getelementptr i8, ptr %.lcssa.i, i32 -4
  %23 = ptrtoint ptr %chcr10.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or.i, ptr %chcr10.i, align 4
  %shl = shl i32 16777215, %sub.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp198.not = icmp eq i32 %sg_len, 0
  br i1 %cmp198.not, label %for.end.thread, label %for.body.lr.ph

for.end.thread:                                   ; preds = %rcar_dmac_chan_configure_desc.exit
  call void @__sanitizer_cov_trace_pc() #14
  %nchunks40225 = getelementptr i8, ptr %.lcssa.i, i32 20
  %24 = ptrtoint ptr %nchunks40225 to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %nchunks40225, align 4
  %size41226 = getelementptr i8, ptr %.lcssa.i, i32 40
  %25 = ptrtoint ptr %size41226 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %size41226, align 4
  %hwdescs228 = getelementptr i8, ptr %.lcssa.i, i32 24
  %26 = ptrtoint ptr %hwdescs228 to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 0, ptr %hwdescs228, align 4
  br label %cleanup57

for.body.lr.ph:                                   ; preds = %rcar_dmac_chan_configure_desc.exit
  %chunks_free.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp11 = icmp eq i32 %dir, 2
  %index = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir)
  %cmp30 = icmp eq i32 %dir, 0
  %chunks = getelementptr i8, ptr %.lcssa.i, i32 8
  %prev.i = getelementptr i8, ptr %.lcssa.i, i32 12
  %prev.i.i142 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 6, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %dev_addr.addr.0206 = phi i32 [ %dev_addr, %for.body.lr.ph ], [ %dev_addr.addr.1178, %for.inc.for.body_crit_edge ]
  %i.0202 = phi i32 [ 0, %for.body.lr.ph ], [ %inc38, %for.inc.for.body_crit_edge ]
  %full_size.0201 = phi i32 [ 0, %for.body.lr.ph ], [ %add, %for.inc.for.body_crit_edge ]
  %nchunks.0200 = phi i32 [ 0, %for.body.lr.ph ], [ %nchunks.1182, %for.inc.for.body_crit_edge ]
  %sg.0199 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call39, %for.inc.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0199, i32 0, i32 4
  %27 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_length, align 4
  %add = add i32 %28, %full_size.0201
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool5.not189 = icmp eq i32 %28, 0
  br i1 %tobool5.not189, label %for.body.for.inc_crit_edge, label %while.body.preheader

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

while.body.preheader:                             ; preds = %for.body
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0199, i32 0, i32 3
  %29 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_address, align 4
  br label %while.body

while.body:                                       ; preds = %cleanup.while.body_crit_edge, %while.body.preheader
  %dev_addr.addr.1195 = phi i32 [ %spec.select, %cleanup.while.body_crit_edge ], [ %dev_addr.addr.0206, %while.body.preheader ]
  %len.0193 = phi i32 [ %sub, %cleanup.while.body_crit_edge ], [ %28, %while.body.preheader ]
  %mem_addr.0191 = phi i32 [ %add29, %cleanup.while.body_crit_edge ], [ %30, %while.body.preheader ]
  %nchunks.1190 = phi i32 [ %inc, %cleanup.while.body_crit_edge ], [ %nchunks.0200, %while.body.preheader ]
  %31 = tail call i32 @llvm.umin.i32(i32 %len.0193, i32 %shl)
  %call2.i125 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %32 = ptrtoint ptr %chunks_free.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile ptr, ptr %chunks_free.i, align 4
  %cmp.i.not40.i = icmp eq ptr %33, %chunks_free.i
  br i1 %cmp.i.not40.i, label %while.body.while.body.i126_crit_edge, label %while.body.while.end.i131_crit_edge

while.body.while.end.i131_crit_edge:              ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i131

while.body.while.body.i126_crit_edge:             ; preds = %while.body
  br label %while.body.i126

while.body.i126:                                  ; preds = %do.body11.i.while.body.i126_crit_edge, %while.body.while.body.i126_crit_edge
  %flags.041.i = phi i32 [ %call19.i, %do.body11.i.while.body.i126_crit_edge ], [ %call2.i125, %while.body.while.body.i126_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.041.i) #12
  %call7.i = tail call fastcc i32 @rcar_dmac_xfer_chunk_alloc(ptr noundef %chan, i32 noundef 2048) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call7.i)
  %cmp8.i = icmp slt i32 %call7.i, 0
  br i1 %cmp8.i, label %while.body.i126.if.then9_crit_edge, label %do.body11.i

while.body.i126.if.then9_crit_edge:               ; preds = %while.body.i126
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

do.body11.i:                                      ; preds = %while.body.i126
  %call19.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %34 = ptrtoint ptr %chunks_free.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %chunks_free.i, align 4
  %cmp.i.not.i127 = icmp eq ptr %35, %chunks_free.i
  br i1 %cmp.i.not.i127, label %do.body11.i.while.body.i126_crit_edge, label %do.body11.i.while.end.i131_crit_edge

do.body11.i.while.end.i131_crit_edge:             ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end.i131

do.body11.i.while.body.i126_crit_edge:            ; preds = %do.body11.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body.i126

while.end.i131:                                   ; preds = %do.body11.i.while.end.i131_crit_edge, %while.body.while.end.i131_crit_edge
  %flags.0.lcssa.i128 = phi i32 [ %call2.i125, %while.body.while.end.i131_crit_edge ], [ %call19.i, %do.body11.i.while.end.i131_crit_edge ]
  %.lcssa.i129 = phi ptr [ %33, %while.body.while.end.i131_crit_edge ], [ %35, %do.body11.i.while.end.i131_crit_edge ]
  %call.i.i.i130 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.lcssa.i129) #12
  br i1 %call.i.i.i130, label %if.end.i.i.i134, label %while.end.i131.rcar_dmac_xfer_chunk_get.exit_crit_edge

while.end.i131.rcar_dmac_xfer_chunk_get.exit_crit_edge: ; preds = %while.end.i131
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_xfer_chunk_get.exit

if.end.i.i.i134:                                  ; preds = %while.end.i131
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i132 = getelementptr inbounds %struct.list_head, ptr %.lcssa.i129, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i132 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i132, align 4
  %38 = ptrtoint ptr %.lcssa.i129 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %.lcssa.i129, align 4
  %prev1.i.i.i.i133 = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i133 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i133, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %rcar_dmac_xfer_chunk_get.exit

rcar_dmac_xfer_chunk_get.exit:                    ; preds = %if.end.i.i.i134, %while.end.i131.rcar_dmac_xfer_chunk_get.exit_crit_edge
  %42 = ptrtoint ptr %.lcssa.i129 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr inttoptr (i32 256 to ptr), ptr %.lcssa.i129, align 4
  %prev.i.i135 = getelementptr inbounds %struct.list_head, ptr %.lcssa.i129, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i.i135 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i135, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %flags.0.lcssa.i128) #12
  %tobool8.not = icmp eq ptr %.lcssa.i129, null
  br i1 %tobool8.not, label %rcar_dmac_xfer_chunk_get.exit.if.then9_crit_edge, label %if.end10

rcar_dmac_xfer_chunk_get.exit.if.then9_crit_edge: ; preds = %rcar_dmac_xfer_chunk_get.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then9

if.then9:                                         ; preds = %rcar_dmac_xfer_chunk_get.exit.if.then9_crit_edge, %while.body.i126.if.then9_crit_edge
  %call2.i139 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #12
  %44 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %chunks, align 4
  %cmp.i.not.i.i = icmp eq ptr %45, %chunks
  br i1 %cmp.i.not.i.i, label %if.then9.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.then9.list_splice_tail_init.exit.i_crit_edge:  ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %prev.i.i142 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i142, align 4
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %prev.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %45, ptr %47, align 4
  %52 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %chunks_free.i, ptr %49, align 4
  store ptr %49, ptr %prev.i.i142, align 4
  %53 = ptrtoint ptr %chunks to i32
  call void @__asan_store4_noabort(i32 %53)
  store volatile ptr %chunks, ptr %chunks, align 4
  store ptr %chunks, ptr %prev.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.then9.list_splice_tail_init.exit.i_crit_edge
  %54 = ptrtoint ptr %desc5.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %desc5.i, align 4
  %call.i.i.i143 = tail call zeroext i1 @__list_add_valid(ptr noundef %.lcssa.i, ptr noundef %desc5.i, ptr noundef %55) #12
  br i1 %call.i.i.i143, label %if.end.i.i.i144, label %list_splice_tail_init.exit.i.cleanup57.loopexit210_crit_edge

list_splice_tail_init.exit.i.cleanup57.loopexit210_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup57.loopexit210

if.end.i.i.i144:                                  ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %.lcssa.i, ptr %prev1.i.i.i, align 4
  %57 = ptrtoint ptr %.lcssa.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %55, ptr %.lcssa.i, align 4
  %58 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %desc5.i, ptr %prev.i.i, align 4
  %59 = ptrtoint ptr %desc5.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %.lcssa.i, ptr %desc5.i, align 4
  br label %cleanup57.loopexit210

if.end10:                                         ; preds = %rcar_dmac_xfer_chunk_get.exit
  %spec.select235 = select i1 %cmp11, i32 %dev_addr.addr.1195, i32 %mem_addr.0191
  %spec.select236 = select i1 %cmp11, i32 %mem_addr.0191, i32 %dev_addr.addr.1195
  %60 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %.lcssa.i129, i32 0, i32 1
  %61 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %spec.select235, ptr %60, align 4
  %62 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %.lcssa.i129, i32 0, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 %spec.select236, ptr %62, align 4
  %size16 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %.lcssa.i129, i32 0, i32 3
  %64 = ptrtoint ptr %size16 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %31, ptr %size16, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_dmac_chan_prep_sg.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_dmac_chan_prep_sg, %do.end)) #12
          to label %if.then24 [label %do.end], !srcloc !150

if.then24:                                        ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  %65 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %66, i32 0, i32 15
  %67 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %dev, align 4
  %69 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %index, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_dmac_chan_prep_sg.__UNIQUE_ID_ddebug242, ptr noundef %68, ptr noundef nonnull @.str.25, i32 noundef %70, ptr noundef nonnull %.lcssa.i129, ptr noundef nonnull %add.ptr.i, i32 noundef %i.0202, ptr noundef %sg.0199, i32 noundef %31, i32 noundef %len.0193, ptr noundef %60, ptr noundef %62) #12
  br label %do.end

do.end:                                           ; preds = %if.then24, %if.end10
  %add29 = add i32 %31, %mem_addr.0191
  %add32 = select i1 %cmp30, i32 %31, i32 0
  %spec.select = add i32 %add32, %dev_addr.addr.1195
  %sub = sub i32 %len.0193, %31
  %71 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %.lcssa.i129, ptr noundef %72, ptr noundef %chunks) #12
  br i1 %call.i.i, label %if.end.i.i, label %do.end.cleanup_crit_edge

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end.i.i:                                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #14
  %73 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %.lcssa.i129, ptr %prev.i, align 4
  %74 = ptrtoint ptr %.lcssa.i129 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %chunks, ptr %.lcssa.i129, align 4
  %75 = ptrtoint ptr %prev.i.i135 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev.i.i135, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %.lcssa.i129, ptr %72, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i, %do.end.cleanup_crit_edge
  %inc = add i32 %nchunks.1190, 1
  %tobool5.not = icmp eq i32 %sub, 0
  br i1 %tobool5.not, label %cleanup.for.inc_crit_edge, label %cleanup.while.body_crit_edge

cleanup.while.body_crit_edge:                     ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

cleanup.for.inc_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

for.inc:                                          ; preds = %cleanup.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %nchunks.1182 = phi i32 [ %nchunks.0200, %for.body.for.inc_crit_edge ], [ %inc, %cleanup.for.inc_crit_edge ]
  %dev_addr.addr.1178 = phi i32 [ %dev_addr.addr.0206, %for.body.for.inc_crit_edge ], [ %spec.select, %cleanup.for.inc_crit_edge ]
  %inc38 = add nuw i32 %i.0202, 1
  %call39 = tail call ptr @sg_next(ptr noundef %sg.0199) #12
  %exitcond.not = icmp eq i32 %inc38, %sg_len
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.end:                                          ; preds = %for.inc
  %nchunks40 = getelementptr i8, ptr %.lcssa.i, i32 20
  %77 = ptrtoint ptr %nchunks40 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 %nchunks.1182, ptr %nchunks40, align 4
  %size41 = getelementptr i8, ptr %.lcssa.i, i32 40
  %78 = ptrtoint ptr %size41 to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add, ptr %size41, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %nchunks.1182)
  %cmp43 = icmp ugt i32 %nchunks.1182, 1
  %hwdescs = getelementptr i8, ptr %.lcssa.i, i32 24
  %frombool44 = zext i1 %cmp43 to i8
  %79 = ptrtoint ptr %hwdescs to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %frombool44, ptr %hwdescs, align 4
  br i1 %cmp43, label %if.then48, label %for.end.cleanup57_crit_edge

for.end.cleanup57_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup57

if.then48:                                        ; preds = %for.end
  %mul.i = shl i32 %nchunks.1182, 4
  %add.i.i = add i32 %mul.i, 4095
  %and.i.i = and i32 %add.i.i, -4096
  %size1.i.i = getelementptr i8, ptr %.lcssa.i, i32 36
  %80 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %size1.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %81, i32 %and.i.i)
  %cmp.i.i = icmp eq i32 %81, %and.i.i
  br i1 %cmp.i.i, label %if.then48.rcar_dmac_realloc_hwdesc.exit.i_crit_edge, label %if.end.i.i145

if.then48.rcar_dmac_realloc_hwdesc.exit.i_crit_edge: ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_realloc_hwdesc.exit.i

if.end.i.i145:                                    ; preds = %if.then48
  %mem.i.i = getelementptr i8, ptr %.lcssa.i, i32 28
  %82 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %mem.i.i, align 4
  %tobool.not.i.i = icmp eq ptr %83, null
  br i1 %tobool.not.i.i, label %if.end.i.i145.if.end14.i.i_crit_edge, label %if.then3.i.i

if.end.i.i145.if.end14.i.i_crit_edge:             ; preds = %if.end.i.i145
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end14.i.i

if.then3.i.i:                                     ; preds = %if.end.i.i145
  call void @__sanitizer_cov_trace_pc() #14
  %84 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %chan, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %85, i32 0, i32 15
  %86 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %dev.i.i, align 4
  %dma.i.i = getelementptr i8, ptr %.lcssa.i, i32 32
  %88 = ptrtoint ptr %dma.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %dma.i.i, align 4
  tail call void @dma_free_attrs(ptr noundef %87, i32 noundef %81, ptr noundef nonnull %83, i32 noundef %89, i32 noundef 0) #12
  %90 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %mem.i.i, align 4
  %91 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store i32 0, ptr %size1.i.i, align 4
  br label %if.end14.i.i

if.end14.i.i:                                     ; preds = %if.then3.i.i, %if.end.i.i145.if.end14.i.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool15.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool15.not.i.i, label %if.end14.i.i.rcar_dmac_realloc_hwdesc.exit.i_crit_edge, label %if.end17.i.i

if.end14.i.i.rcar_dmac_realloc_hwdesc.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_realloc_hwdesc.exit.i

if.end17.i.i:                                     ; preds = %if.end14.i.i
  %92 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %chan, align 4
  %dev20.i.i = getelementptr inbounds %struct.dma_device, ptr %93, i32 0, i32 15
  %94 = ptrtoint ptr %dev20.i.i to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %dev20.i.i, align 4
  %dma22.i.i = getelementptr i8, ptr %.lcssa.i, i32 32
  %call.i.i.i146 = tail call ptr @dma_alloc_attrs(ptr noundef %95, i32 noundef %and.i.i, ptr noundef %dma22.i.i, i32 noundef 2048, i32 noundef 0) #12
  %96 = ptrtoint ptr %mem.i.i to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %call.i.i.i146, ptr %mem.i.i, align 4
  %tobool27.not.i.i = icmp eq ptr %call.i.i.i146, null
  br i1 %tobool27.not.i.i, label %if.end17.i.i.rcar_dmac_realloc_hwdesc.exit.i_crit_edge, label %if.end29.i.i

if.end17.i.i.rcar_dmac_realloc_hwdesc.exit.i_crit_edge: ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_realloc_hwdesc.exit.i

if.end29.i.i:                                     ; preds = %if.end17.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %97 = ptrtoint ptr %size1.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 %and.i.i, ptr %size1.i.i, align 4
  br label %rcar_dmac_realloc_hwdesc.exit.i

rcar_dmac_realloc_hwdesc.exit.i:                  ; preds = %if.end29.i.i, %if.end17.i.i.rcar_dmac_realloc_hwdesc.exit.i_crit_edge, %if.end14.i.i.rcar_dmac_realloc_hwdesc.exit.i_crit_edge, %if.then48.rcar_dmac_realloc_hwdesc.exit.i_crit_edge
  %mem.i = getelementptr i8, ptr %.lcssa.i, i32 28
  %98 = ptrtoint ptr %mem.i to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %mem.i, align 4
  %tobool.not.i = icmp eq ptr %99, null
  br i1 %tobool.not.i, label %if.then51, label %if.end.i

if.end.i:                                         ; preds = %rcar_dmac_realloc_hwdesc.exit.i
  %chunks.i147 = getelementptr i8, ptr %.lcssa.i, i32 8
  %100 = ptrtoint ptr %chunks.i147 to i32
  call void @__asan_load4_noabort(i32 %100)
  %chunk.021.i = load ptr, ptr %chunks.i147, align 4
  %cmp.not22.i = icmp eq ptr %chunk.021.i, %chunks.i147
  br i1 %cmp.not22.i, label %if.end.i.cleanup57_crit_edge, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  br label %for.body.i

if.end.i.cleanup57_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup57

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %if.end.i.for.body.i_crit_edge
  %chunk.024.i = phi ptr [ %chunk.0.i, %for.body.i.for.body.i_crit_edge ], [ %chunk.021.i, %if.end.i.for.body.i_crit_edge ]
  %hwdesc.023.i = phi ptr [ %incdec.ptr.i, %for.body.i.for.body.i_crit_edge ], [ %99, %if.end.i.for.body.i_crit_edge ]
  %src_addr.i = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %chunk.024.i, i32 0, i32 1
  %101 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load i32, ptr %src_addr.i, align 4
  %103 = ptrtoint ptr %hwdesc.023.i to i32
  call void @__asan_storeN_noabort(i32 %103, i32 4)
  store i32 %102, ptr %hwdesc.023.i, align 1
  %dst_addr.i = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %chunk.024.i, i32 0, i32 2
  %104 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dst_addr.i, align 4
  %dar.i = getelementptr inbounds %struct.rcar_dmac_hw_desc, ptr %hwdesc.023.i, i32 0, i32 1
  %106 = ptrtoint ptr %dar.i to i32
  call void @__asan_storeN_noabort(i32 %106, i32 4)
  store i32 %105, ptr %dar.i, align 1
  %size.i = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %chunk.024.i, i32 0, i32 3
  %107 = ptrtoint ptr %size.i to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %size.i, align 4
  %109 = ptrtoint ptr %xfer_shift.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load i32, ptr %xfer_shift.i, align 4
  %shr.i = lshr i32 %108, %110
  %tcr.i = getelementptr inbounds %struct.rcar_dmac_hw_desc, ptr %hwdesc.023.i, i32 0, i32 2
  %111 = ptrtoint ptr %tcr.i to i32
  call void @__asan_storeN_noabort(i32 %111, i32 4)
  store i32 %shr.i, ptr %tcr.i, align 1
  %incdec.ptr.i = getelementptr %struct.rcar_dmac_hw_desc, ptr %hwdesc.023.i, i32 1
  %112 = ptrtoint ptr %chunk.024.i to i32
  call void @__asan_load4_noabort(i32 %112)
  %chunk.0.i = load ptr, ptr %chunk.024.i, align 4
  %cmp.not.i = icmp eq ptr %chunk.0.i, %chunks.i147
  br i1 %cmp.not.i, label %for.body.i.cleanup57_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

for.body.i.cleanup57_crit_edge:                   ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup57

if.then51:                                        ; preds = %rcar_dmac_realloc_hwdesc.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %113 = ptrtoint ptr %hwdescs to i32
  call void @__asan_store1_noabort(i32 %113)
  store i8 0, ptr %hwdescs, align 4
  br label %cleanup57

cleanup57.loopexit210:                            ; preds = %if.end.i.i.i144, %list_splice_tail_init.exit.i.cleanup57.loopexit210_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i139) #12
  br label %cleanup57

cleanup57:                                        ; preds = %cleanup57.loopexit210, %if.then51, %for.body.i.cleanup57_crit_edge, %if.end.i.cleanup57_crit_edge, %for.end.cleanup57_crit_edge, %for.end.thread, %rcar_dmac_desc_get.exit.cleanup57_crit_edge, %while.body.i.cleanup57_crit_edge
  %retval.4 = phi ptr [ null, %rcar_dmac_desc_get.exit.cleanup57_crit_edge ], [ %add.ptr.i, %if.then51 ], [ %add.ptr.i, %for.end.cleanup57_crit_edge ], [ %add.ptr.i, %if.end.i.cleanup57_crit_edge ], [ null, %cleanup57.loopexit210 ], [ %add.ptr.i, %for.end.thread ], [ %add.ptr.i, %for.body.i.cleanup57_crit_edge ], [ null, %while.body.i.cleanup57_crit_edge ]
  ret ptr %retval.4
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_dmac_desc_recycle_acked(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %lock = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 8
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %wait = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 4
  %3 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %wait, align 4
  %cmp.i.not.i = icmp eq ptr %4, %wait
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 4, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %4, ptr %list, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %wait, ptr %wait, align 4
  store ptr %wait, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  %13 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %list, align 4
  %cmp14.not68 = icmp eq ptr %14, %list
  br i1 %cmp14.not68, label %list_splice_init.exit.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit
  %desc5.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9
  %chunks_free.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 6
  %prev.i.i59 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 6, i32 1
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %.pn.in69 = phi ptr [ %14, %for.body.lr.ph ], [ %.pn70, %for.inc.for.body_crit_edge ]
  %15 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn70 = load ptr, ptr %.pn.in69, align 4
  %flags.i = getelementptr i8, ptr %.pn.in69, i32 -108
  %16 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %flags.i, align 4
  %and.i = and i32 %17, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %cmp.i.not = icmp eq i32 %and.i, 0
  br i1 %cmp.i.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.inc

if.then:                                          ; preds = %for.body
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in69) #12
  br i1 %call.i.i, label %if.end.i.i, label %if.then.list_del.exit_crit_edge

if.then.list_del.exit_crit_edge:                  ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in69, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i, align 4
  %20 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn.in69, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then.list_del.exit_crit_edge
  %24 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in69, align 4
  %prev.i = getelementptr %struct.list_head, ptr %.pn.in69, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %chunks.i = getelementptr i8, ptr %.pn.in69, i32 8
  %26 = ptrtoint ptr %chunks.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %chunks.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %27, %chunks.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

list_del.exit.list_splice_tail_init.exit.i_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %28 = ptrtoint ptr %prev.i.i59 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i59, align 4
  %prev2.i.i.i = getelementptr i8, ptr %.pn.in69, i32 12
  %30 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %27, i32 0, i32 1
  %32 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev3.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %27, ptr %29, align 4
  %34 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %chunks_free.i, ptr %31, align 4
  store ptr %31, ptr %prev.i.i59, align 4
  %35 = ptrtoint ptr %chunks.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %chunks.i, ptr %chunks.i, align 4
  store ptr %chunks.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %list_del.exit.list_splice_tail_init.exit.i_crit_edge
  %36 = ptrtoint ptr %desc5.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %desc5.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in69, ptr noundef %desc5.i, ptr noundef %37) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_splice_tail_init.exit.i.rcar_dmac_desc_put.exit_crit_edge

list_splice_tail_init.exit.i.rcar_dmac_desc_put.exit_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_desc_put.exit

if.end.i.i.i:                                     ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i60 = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i60 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %.pn.in69, ptr %prev1.i.i.i60, align 4
  %39 = ptrtoint ptr %.pn.in69 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %37, ptr %.pn.in69, align 4
  %40 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %desc5.i, ptr %prev.i, align 4
  %41 = ptrtoint ptr %desc5.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %.pn.in69, ptr %desc5.i, align 4
  br label %rcar_dmac_desc_put.exit

rcar_dmac_desc_put.exit:                          ; preds = %if.end.i.i.i, %list_splice_tail_init.exit.i.rcar_dmac_desc_put.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #12
  br label %for.inc

for.inc:                                          ; preds = %rcar_dmac_desc_put.exit, %for.body.for.inc_crit_edge
  %cmp14.not = icmp eq ptr %.pn70, %list
  br i1 %cmp14.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  %42 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load volatile ptr, ptr %list, align 4
  %cmp.i61.not = icmp eq ptr %43, %list
  br i1 %cmp.i61.not, label %for.end.cleanup_crit_edge, label %do.body27

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.body27:                                        ; preds = %for.end
  %call35 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %44 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile ptr, ptr %list, align 4
  %cmp.i.not.i62 = icmp eq ptr %45, %list
  br i1 %cmp.i.not.i62, label %do.body27.list_splice.exit_crit_edge, label %if.then.i66

do.body27.list_splice.exit_crit_edge:             ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice.exit

if.then.i66:                                      ; preds = %do.body27
  call void @__sanitizer_cov_trace_pc() #14
  %46 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %wait, align 4
  %48 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %0, align 4
  %prev3.i.i64 = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %50 = ptrtoint ptr %prev3.i.i64 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %wait, ptr %prev3.i.i64, align 4
  store ptr %45, ptr %wait, align 4
  %51 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %47, ptr %49, align 4
  %prev6.i.i65 = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %prev6.i.i65 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev6.i.i65, align 4
  br label %list_splice.exit

list_splice.exit:                                 ; preds = %if.then.i66, %do.body27.list_splice.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call35) #12
  br label %cleanup

cleanup:                                          ; preds = %list_splice.exit, %for.end.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #12
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @rcar_dmac_map_slave_addr(ptr noundef %chan, i32 noundef %dir) unnamed_addr #2 align 64 {
entry:
  %dev_addr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %map1 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 6
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dev_addr) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %dir)
  %cmp = icmp eq i32 %dir, 2
  br i1 %cmp, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %src = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 4
  %0 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src, align 4
  %2 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %1, ptr %dev_addr, align 4
  %xfer_size = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 4, i32 1
  br label %if.end

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %dst = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 5
  %3 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %dst, align 4
  %5 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %4, ptr %dev_addr, align 4
  %xfer_size5 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 5, i32 1
  br label %if.end

if.end:                                           ; preds = %if.else, %if.then
  %dev_size.0.in = phi ptr [ %xfer_size, %if.then ], [ %xfer_size5, %if.else ]
  %dev_dir.0 = phi i32 [ 1, %if.then ], [ 2, %if.else ]
  %6 = ptrtoint ptr %dev_size.0.in to i32
  call void @__asan_load4_noabort(i32 %6)
  %dev_size.0 = load i32, ptr %dev_size.0.in, align 4
  %7 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dev_addr, align 4
  %slave = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 6, i32 2
  %9 = ptrtoint ptr %slave to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %slave, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %8, i32 %10)
  %cmp7 = icmp eq i32 %8, %10
  br i1 %cmp7, label %land.lhs.true, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true:                                    ; preds = %if.end
  %xfer_size9 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 6, i32 2, i32 1
  %11 = ptrtoint ptr %xfer_size9 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %xfer_size9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dev_size.0, i32 %12)
  %cmp10 = icmp eq i32 %dev_size.0, %12
  br i1 %cmp10, label %land.lhs.true11, label %land.lhs.true.if.end15_crit_edge

land.lhs.true.if.end15_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true11:                                  ; preds = %land.lhs.true
  %dir12 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 6, i32 1
  %13 = ptrtoint ptr %dir12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dir12, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %dev_dir.0, i32 %14)
  %cmp13 = icmp eq i32 %dev_dir.0, %14
  br i1 %cmp13, label %land.lhs.true11.cleanup_crit_edge, label %land.lhs.true11.if.end15_crit_edge

land.lhs.true11.if.end15_crit_edge:               ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end15

land.lhs.true11.cleanup_crit_edge:                ; preds = %land.lhs.true11
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end15:                                         ; preds = %land.lhs.true11.if.end15_crit_edge, %land.lhs.true.if.end15_crit_edge, %if.end.if.end15_crit_edge
  %xfer_size17 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 6, i32 2, i32 1
  %15 = ptrtoint ptr %xfer_size17 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %xfer_size17, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not = icmp eq i32 %16, 0
  br i1 %tobool.not, label %if.end15.if.end22_crit_edge, label %if.then18

if.end15.if.end22_crit_edge:                      ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then18:                                        ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %21 = ptrtoint ptr %map1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %map1, align 4
  %dir21 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %dir21 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dir21, align 4
  tail call void @dma_unmap_resource(ptr noundef %20, i32 noundef %22, i32 noundef %16, i32 noundef %24, i32 noundef 0) #12
  br label %if.end22

if.end22:                                         ; preds = %if.then18, %if.end15.if.end22_crit_edge
  %25 = ptrtoint ptr %xfer_size17 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %xfer_size17, align 4
  %26 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %chan, align 4
  %dev26 = getelementptr inbounds %struct.dma_device, ptr %27, i32 0, i32 15
  %28 = ptrtoint ptr %dev26 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev26, align 4
  %30 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dev_addr, align 4
  %call = tail call i32 @dma_map_resource(ptr noundef %29, i32 noundef %31, i32 noundef %dev_size.0, i32 noundef %dev_dir.0, i32 noundef 0) #12
  %32 = ptrtoint ptr %map1 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call, ptr %map1, align 4
  %33 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan, align 4
  %dev29 = getelementptr inbounds %struct.dma_device, ptr %34, i32 0, i32 15
  %35 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev29, align 4
  tail call void @debug_dma_mapping_error(ptr noundef %36, i32 noundef %call) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call)
  %cmp.i.not = icmp eq i32 %call, -1
  br i1 %cmp.i.not, label %do.end, label %do.body37

do.end:                                           ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %37 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chan, align 4
  %dev35 = getelementptr inbounds %struct.dma_device, ptr %38, i32 0, i32 15
  %39 = ptrtoint ptr %dev35 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %dev35, align 4
  %index = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 2
  %41 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %index, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %40, ptr noundef nonnull @.str.28, i32 noundef %42, i32 noundef %dev_size.0, ptr noundef nonnull %dev_addr) #15
  br label %cleanup

do.body37:                                        ; preds = %if.end22
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_dmac_map_slave_addr.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_dmac_map_slave_addr, %do.end52)) #12
          to label %if.then44 [label %do.end52], !srcloc !150

if.then44:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #14
  %43 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan, align 4
  %dev46 = getelementptr inbounds %struct.dma_device, ptr %44, i32 0, i32 15
  %45 = ptrtoint ptr %dev46 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev46, align 4
  %index47 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 2
  %47 = ptrtoint ptr %index47 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %index47, align 4
  %cond = select i1 %cmp, ptr @.str.31, ptr @.str.32
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_dmac_map_slave_addr.__UNIQUE_ID_ddebug243, ptr noundef %46, ptr noundef nonnull @.str.30, i32 noundef %48, i32 noundef %dev_size.0, ptr noundef nonnull %dev_addr, ptr noundef %map1, ptr noundef nonnull %cond) #12
  br label %do.end52

do.end52:                                         ; preds = %if.then44, %do.body37
  %49 = ptrtoint ptr %dev_addr to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dev_addr, align 4
  %51 = ptrtoint ptr %slave to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %50, ptr %slave, align 4
  %52 = ptrtoint ptr %xfer_size17 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %dev_size.0, ptr %xfer_size17, align 4
  %dir57 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 6, i32 1
  %53 = ptrtoint ptr %dir57 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %dev_dir.0, ptr %dir57, align 4
  br label %cleanup

cleanup:                                          ; preds = %do.end52, %do.end, %land.lhs.true11.cleanup_crit_edge
  %retval.0 = phi i32 [ -5, %do.end ], [ 0, %do.end52 ], [ 0, %land.lhs.true11.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dev_addr) #12
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_map_resource(ptr noundef, i32 noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @debug_dma_mapping_error(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_dmac_chan_reinit(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  %descs = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %descs) #12
  %0 = getelementptr inbounds %struct.list_head, ptr %descs, i32 0, i32 1
  %1 = ptrtoint ptr %descs to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %descs, ptr %descs, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %descs, ptr %0, align 4
  %lock = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 8
  %call2 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %pending = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 1
  %3 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not.i = icmp eq ptr %4, %pending
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %5 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %descs, align 4
  %prev2.i.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 1, i32 1
  %7 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %descs, ptr %prev3.i.i, align 4
  store ptr %4, ptr %descs, align 4
  %10 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %6, ptr %8, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %11 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev6.i.i, align 4
  %12 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %pending, ptr %pending, align 4
  store ptr %pending, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %active = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 2
  %13 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %active, align 4
  %cmp.i.not.i38 = icmp eq ptr %14, %active
  br i1 %cmp.i.not.i38, label %list_splice_init.exit.list_splice_init.exit43_crit_edge, label %if.then.i42

list_splice_init.exit.list_splice_init.exit43_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit43

if.then.i42:                                      ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #14
  %15 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %descs, align 4
  %prev2.i.i39 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 2, i32 1
  %17 = ptrtoint ptr %prev2.i.i39 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i39, align 4
  %prev3.i.i40 = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i40 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %descs, ptr %prev3.i.i40, align 4
  store ptr %14, ptr %descs, align 4
  %20 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %16, ptr %18, align 4
  %prev6.i.i41 = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev6.i.i41 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev6.i.i41, align 4
  %22 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %active, ptr %active, align 4
  store ptr %active, ptr %prev2.i.i39, align 4
  br label %list_splice_init.exit43

list_splice_init.exit43:                          ; preds = %if.then.i42, %list_splice_init.exit.list_splice_init.exit43_crit_edge
  %done = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 3
  %23 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %done, align 4
  %cmp.i.not.i44 = icmp eq ptr %24, %done
  br i1 %cmp.i.not.i44, label %list_splice_init.exit43.list_splice_init.exit49_crit_edge, label %if.then.i48

list_splice_init.exit43.list_splice_init.exit49_crit_edge: ; preds = %list_splice_init.exit43
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit49

if.then.i48:                                      ; preds = %list_splice_init.exit43
  call void @__sanitizer_cov_trace_pc() #14
  %25 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %descs, align 4
  %prev2.i.i45 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 3, i32 1
  %27 = ptrtoint ptr %prev2.i.i45 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i45, align 4
  %prev3.i.i46 = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i46 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %descs, ptr %prev3.i.i46, align 4
  store ptr %24, ptr %descs, align 4
  %30 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %26, ptr %28, align 4
  %prev6.i.i47 = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev6.i.i47 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev6.i.i47, align 4
  %32 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %done, ptr %done, align 4
  store ptr %done, ptr %prev2.i.i45, align 4
  br label %list_splice_init.exit49

list_splice_init.exit49:                          ; preds = %if.then.i48, %list_splice_init.exit43.list_splice_init.exit49_crit_edge
  %wait = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 4
  %33 = ptrtoint ptr %wait to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %wait, align 4
  %cmp.i.not.i50 = icmp eq ptr %34, %wait
  br i1 %cmp.i.not.i50, label %list_splice_init.exit49.list_splice_init.exit55_crit_edge, label %if.then.i54

list_splice_init.exit49.list_splice_init.exit55_crit_edge: ; preds = %list_splice_init.exit49
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_init.exit55

if.then.i54:                                      ; preds = %list_splice_init.exit49
  call void @__sanitizer_cov_trace_pc() #14
  %35 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %descs, align 4
  %prev2.i.i51 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 4, i32 1
  %37 = ptrtoint ptr %prev2.i.i51 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i51, align 4
  %prev3.i.i52 = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i52 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %descs, ptr %prev3.i.i52, align 4
  store ptr %34, ptr %descs, align 4
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %36, ptr %38, align 4
  %prev6.i.i53 = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev6.i.i53 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev6.i.i53, align 4
  %42 = ptrtoint ptr %wait to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %wait, ptr %wait, align 4
  store ptr %wait, ptr %prev2.i.i51, align 4
  br label %list_splice_init.exit55

list_splice_init.exit55:                          ; preds = %if.then.i54, %list_splice_init.exit49.list_splice_init.exit55_crit_edge
  %running = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 5
  %43 = ptrtoint ptr %running to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %running, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #12
  %44 = ptrtoint ptr %descs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %descs, align 4
  %cmp18.not58 = icmp eq ptr %45, %descs
  br i1 %cmp18.not58, label %list_splice_init.exit55.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit55.for.end_crit_edge:        ; preds = %list_splice_init.exit55
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit55
  %desc5.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9
  %chunks_free.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 6
  %prev.i.i56 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 6, i32 1
  br label %for.body

for.body:                                         ; preds = %rcar_dmac_desc_put.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in59 = phi ptr [ %45, %for.body.lr.ph ], [ %.pn, %rcar_dmac_desc_put.exit.for.body_crit_edge ]
  %46 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %46)
  %.pn = load ptr, ptr %.pn.in59, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in59) #12
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in59, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev.i.i, align 4
  %49 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %.pn.in59, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev1.i.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %50, ptr %48, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %53 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in59, align 4
  %prev.i = getelementptr %struct.list_head, ptr %.pn.in59, i32 0, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #12
  %chunks.i = getelementptr i8, ptr %.pn.in59, i32 8
  %55 = ptrtoint ptr %chunks.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %chunks.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %56, %chunks.i
  br i1 %cmp.i.not.i.i, label %list_del.exit.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

list_del.exit.list_splice_tail_init.exit.i_crit_edge: ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #14
  %57 = ptrtoint ptr %prev.i.i56 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev.i.i56, align 4
  %prev2.i.i.i = getelementptr i8, ptr %.pn.in59, i32 12
  %59 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %56, ptr %58, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %chunks_free.i, ptr %60, align 4
  store ptr %60, ptr %prev.i.i56, align 4
  %64 = ptrtoint ptr %chunks.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %chunks.i, ptr %chunks.i, align 4
  store ptr %chunks.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %list_del.exit.list_splice_tail_init.exit.i_crit_edge
  %65 = ptrtoint ptr %desc5.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %desc5.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in59, ptr noundef %desc5.i, ptr noundef %66) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_splice_tail_init.exit.i.rcar_dmac_desc_put.exit_crit_edge

list_splice_tail_init.exit.i.rcar_dmac_desc_put.exit_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_desc_put.exit

if.end.i.i.i:                                     ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev1.i.i.i57 = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %67 = ptrtoint ptr %prev1.i.i.i57 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %.pn.in59, ptr %prev1.i.i.i57, align 4
  %68 = ptrtoint ptr %.pn.in59 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %66, ptr %.pn.in59, align 4
  %69 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %desc5.i, ptr %prev.i, align 4
  %70 = ptrtoint ptr %desc5.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %.pn.in59, ptr %desc5.i, align 4
  br label %rcar_dmac_desc_put.exit

rcar_dmac_desc_put.exit:                          ; preds = %if.end.i.i.i, %list_splice_tail_init.exit.i.rcar_dmac_desc_put.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #12
  %cmp18.not = icmp eq ptr %.pn, %descs
  br i1 %cmp18.not, label %rcar_dmac_desc_put.exit.for.end_crit_edge, label %rcar_dmac_desc_put.exit.for.body_crit_edge

rcar_dmac_desc_put.exit.for.body_crit_edge:       ; preds = %rcar_dmac_desc_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body

rcar_dmac_desc_put.exit.for.end_crit_edge:        ; preds = %rcar_dmac_desc_put.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.end

for.end:                                          ; preds = %rcar_dmac_desc_put.exit.for.end_crit_edge, %list_splice_init.exit55.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %descs) #12
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @rcar_dmac_chan_start_xfer(ptr nocapture noundef readonly %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %running = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %running, align 4
  %chcr2 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %chcr2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %chcr2, align 4
  %iomem4.i.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 1
  %4 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %5, i32 12
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %7 = and i32 %6, 50331648
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool.i.not = icmp eq i32 %7, 0
  br i1 %tobool.i.not, label %entry.if.end29_crit_edge, label %land.rhs

entry.if.end29_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

land.rhs:                                         ; preds = %entry
  %.b153 = load i1, ptr @rcar_dmac_chan_start_xfer.__already_done, align 1
  br i1 %.b153, label %land.rhs.if.end29_crit_edge, label %if.then, !prof !145

land.rhs.if.end29_crit_edge:                      ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end29

if.then:                                          ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcar_dmac_chan_start_xfer.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 382, i32 noundef 9, ptr noundef null) #12
  br label %if.end29

if.end29:                                         ; preds = %if.then, %land.rhs.if.end29_crit_edge, %entry.if.end29_crit_edge
  %mid_rid = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 7
  %8 = ptrtoint ptr %mid_rid to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %mid_rid, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %9)
  %cmp = icmp sgt i32 %9, -1
  br i1 %cmp, label %if.then37, label %if.end29.if.end39_crit_edge

if.end29.if.end39_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end39

if.then37:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %conv.i = trunc i32 %9 to i16
  %10 = tail call i16 @llvm.bswap.i16(i16 %conv.i) #12
  %11 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 64
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %10) #12, !srcloc !142
  br label %if.end39

if.end39:                                         ; preds = %if.then37, %if.end29.if.end39_crit_edge
  %hwdescs = getelementptr inbounds %struct.rcar_dmac_desc, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %hwdescs to i32
  call void @__asan_load1_noabort(i32 %13)
  %14 = load i8, ptr %hwdescs, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %14)
  %tobool40.not = icmp eq i8 %14, 0
  br i1 %tobool40.not, label %if.else78, label %if.then41

if.then41:                                        ; preds = %if.end39
  %chunks = getelementptr inbounds %struct.rcar_dmac_desc, ptr %1, i32 0, i32 5
  %15 = ptrtoint ptr %chunks to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chunks, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_dmac_chan_start_xfer.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_dmac_chan_start_xfer, %do.end61)) #12
          to label %if.then56 [label %do.end61], !srcloc !150

if.then56:                                        ; preds = %if.then41
  call void @__sanitizer_cov_trace_pc() #14
  %17 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev, align 4
  %index = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 2
  %21 = ptrtoint ptr %index to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %index, align 4
  %nchunks = getelementptr inbounds %struct.rcar_dmac_desc, ptr %1, i32 0, i32 7
  %23 = ptrtoint ptr %nchunks to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %nchunks, align 4
  %dma = getelementptr inbounds %struct.rcar_dmac_desc, ptr %1, i32 0, i32 8, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_dmac_chan_start_xfer.__UNIQUE_ID_ddebug237, ptr noundef %20, ptr noundef nonnull @.str.41, i32 noundef %22, ptr noundef %1, i32 noundef %24, ptr noundef %dma) #12
  br label %do.end61

do.end61:                                         ; preds = %if.then56, %if.then41
  %dma63 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %1, i32 0, i32 8, i32 2
  %25 = ptrtoint ptr %dma63 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dma63, align 4
  %and = and i32 %26, -16
  %or = or i32 %and, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %27 = tail call i32 @llvm.bswap.i32(i32 %or) #12
  %28 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %29, i32 80
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %27) #12, !srcloc !138
  %nchunks64 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %1, i32 0, i32 7
  %30 = ptrtoint ptr %nchunks64 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %nchunks64, align 4
  %sub = shl i32 %31, 24
  %or65 = add i32 %sub, -16744448
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %32 = tail call i32 @llvm.bswap.i32(i32 %or65) #12
  %33 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr4.i158 = getelementptr i8, ptr %34, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i158, i32 %32) #12, !srcloc !138
  %dst_addr = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %16, i32 0, i32 2
  %35 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %dst_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %37 = tail call i32 @llvm.bswap.i32(i32 %36) #12
  %38 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr4.i160 = getelementptr i8, ptr %39, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i160, i32 %37) #12, !srcloc !138
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %40 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr4.i162 = getelementptr i8, ptr %41, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i162, i32 1) #12, !srcloc !138
  %cyclic = getelementptr inbounds %struct.rcar_dmac_desc, ptr %1, i32 0, i32 10
  %42 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %cyclic, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %43)
  %tobool68.not = icmp eq i8 %43, 0
  br i1 %tobool68.not, label %do.end61.if.end110_crit_edge, label %if.else

do.end61.if.end110_crit_edge:                     ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end110

if.else:                                          ; preds = %do.end61
  call void @__sanitizer_cov_trace_pc() #14
  %callback = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 6
  %44 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %callback, align 4
  %tobool71.not = icmp eq ptr %45, null
  %. = select i1 %tobool71.not, i32 1044381696, i32 1044643840
  br label %if.end110

if.else78:                                        ; preds = %if.end39
  %running80 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %1, i32 0, i32 6
  %46 = ptrtoint ptr %running80 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %running80, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @rcar_dmac_chan_start_xfer.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@rcar_dmac_chan_start_xfer, %do.end103)) #12
          to label %if.then95 [label %do.end103], !srcloc !150

if.then95:                                        ; preds = %if.else78
  call void @__sanitizer_cov_trace_pc() #14
  %48 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %chan, align 4
  %dev98 = getelementptr inbounds %struct.dma_device, ptr %49, i32 0, i32 15
  %50 = ptrtoint ptr %dev98 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev98, align 4
  %index99 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %chan, i32 0, i32 2
  %52 = ptrtoint ptr %index99 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %index99, align 4
  %size = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %47, i32 0, i32 3
  %54 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %size, align 4
  %src_addr = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %47, i32 0, i32 1
  %dst_addr100 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %47, i32 0, i32 2
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @rcar_dmac_chan_start_xfer.__UNIQUE_ID_ddebug238, ptr noundef %51, ptr noundef nonnull @.str.42, i32 noundef %53, ptr noundef %47, i32 noundef %55, ptr noundef %src_addr, ptr noundef %dst_addr100) #12
  br label %do.end103

do.end103:                                        ; preds = %if.then95, %if.else78
  %src_addr104 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %47, i32 0, i32 1
  %56 = ptrtoint ptr %src_addr104 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %src_addr104, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %58 = tail call i32 @llvm.bswap.i32(i32 %57) #12
  %59 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %iomem4.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %60, i32 %58) #12, !srcloc !138
  %dst_addr106 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %47, i32 0, i32 2
  %61 = ptrtoint ptr %dst_addr106 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dst_addr106, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #12
  %64 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr4.i165 = getelementptr i8, ptr %65, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i165, i32 %63) #12, !srcloc !138
  %size108 = getelementptr inbounds %struct.rcar_dmac_xfer_chunk, ptr %47, i32 0, i32 3
  %66 = ptrtoint ptr %size108 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %size108, align 4
  %xfer_shift = getelementptr inbounds %struct.rcar_dmac_desc, ptr %1, i32 0, i32 2
  %68 = ptrtoint ptr %xfer_shift to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %xfer_shift, align 4
  %shr = lshr i32 %67, %69
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %70 = tail call i32 @llvm.bswap.i32(i32 %shr) #12
  %71 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr4.i167 = getelementptr i8, ptr %72, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i167, i32 %70) #12, !srcloc !138
  br label %if.end110

if.end110:                                        ; preds = %do.end103, %if.else, %do.end61.if.end110_crit_edge
  %.sink = phi i32 [ 4, %do.end103 ], [ 507510788, %do.end61.if.end110_crit_edge ], [ %., %if.else ]
  %or70 = or i32 %3, %.sink
  %or112 = or i32 %or70, 1073741825
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %73 = tail call i32 @llvm.bswap.i32(i32 %or112) #12
  %74 = ptrtoint ptr %iomem4.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %iomem4.i.i, align 4
  %add.ptr4.i169 = getelementptr i8, ptr %75, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i169, i32 %73) #12, !srcloc !138
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_dmac_isr_channel(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rcar_dmac_chan, ptr %dev, i32 0, i32 8
  tail call void @_raw_spin_lock(ptr noundef %lock) #12
  %iomem4.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %dev, i32 0, i32 1
  %0 = ptrtoint ptr %iomem4.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %iomem4.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %3)
  %tobool.not = icmp sgt i32 %3, -1
  br i1 %tobool.not, label %if.end, label %if.then

if.then:                                          ; preds = %entry
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %chan_base.i = getelementptr inbounds %struct.rcar_dmac, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %chan_base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %chan_base.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %8 = ptrtoint ptr %iomem4.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %iomem4.i, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %9, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 16777216) #12, !srcloc !138
  br label %for.body.i.preheader

if.else.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #14
  %index.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %dev, i32 0, i32 2
  %10 = ptrtoint ptr %index.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %index.i, align 4
  %shl.i = shl nuw i32 1, %11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %12 = tail call i32 @llvm.bswap.i32(i32 %shl.i) #12
  %dmac_base3.i.i = getelementptr inbounds %struct.rcar_dmac, ptr %5, i32 0, i32 2
  %13 = ptrtoint ptr %dmac_base3.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dmac_base3.i.i, align 4
  %add.ptr4.i3.i = getelementptr i8, ptr %14, i32 128
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i3.i, i32 %12) #12, !srcloc !138
  br label %for.body.i.preheader

for.body.i.preheader:                             ; preds = %if.else.i, %if.then.i
  br label %for.body.i

for.body.i:                                       ; preds = %if.end.i.for.body.i_crit_edge, %for.body.i.preheader
  %i.05.i = phi i32 [ %inc.i, %if.end.i.for.body.i_crit_edge ], [ 0, %for.body.i.preheader ]
  %15 = ptrtoint ptr %iomem4.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %iomem4.i, align 4
  %add.ptr5.i.i = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.not.i53 = icmp eq i32 %18, 0
  br i1 %tobool.not.i53, label %for.body.i.spin_lock_end_crit_edge, label %if.end.i

for.body.i.spin_lock_end_crit_edge:               ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %spin_lock_end

if.end.i:                                         ; preds = %for.body.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 214748) #12
  %inc.i = add nuw nsw i32 %i.05.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, 1024
  br i1 %exitcond.not.i, label %do.end.i, label %if.end.i.for.body.i_crit_edge

if.end.i.for.body.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #14
  %20 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %dev, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %21, i32 0, i32 15
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.22) #15
  br label %spin_lock_end

if.end:                                           ; preds = %entry
  %and2 = and i32 %3, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  %spec.select = select i1 %tobool3.not, i32 524290, i32 524291
  %neg = xor i32 %spec.select, -1
  %and6 = and i32 %3, %neg
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %24 = tail call i32 @llvm.bswap.i32(i32 %and6) #12
  %25 = ptrtoint ptr %iomem4.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %iomem4.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %26, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %24) #12, !srcloc !138
  %and7 = and i32 %spec.select, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and7)
  %tobool8.not = icmp eq i32 %and7, 0
  br i1 %tobool8.not, label %if.end.if.end10_crit_edge, label %if.end.for.body.i59_crit_edge

if.end.for.body.i59_crit_edge:                    ; preds = %if.end
  br label %for.body.i59

if.end.if.end10_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

for.body.i59:                                     ; preds = %if.end.i62.for.body.i59_crit_edge, %if.end.for.body.i59_crit_edge
  %i.05.i56 = phi i32 [ %inc.i60, %if.end.i62.for.body.i59_crit_edge ], [ 0, %if.end.for.body.i59_crit_edge ]
  %27 = ptrtoint ptr %iomem4.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %iomem4.i, align 4
  %add.ptr5.i.i57 = getelementptr i8, ptr %28, i32 12
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i57) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  %30 = and i32 %29, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool.not.i58 = icmp eq i32 %30, 0
  br i1 %tobool.not.i58, label %for.body.i59.if.end10_crit_edge, label %if.end.i62

for.body.i59.if.end10_crit_edge:                  ; preds = %for.body.i59
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.end.i62:                                       ; preds = %for.body.i59
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %31 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %31(i32 noundef 214748) #12
  %inc.i60 = add nuw nsw i32 %i.05.i56, 1
  %exitcond.not.i61 = icmp eq i32 %inc.i60, 1024
  br i1 %exitcond.not.i61, label %do.end.i64, label %if.end.i62.for.body.i59_crit_edge

if.end.i62.for.body.i59_crit_edge:                ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #14
  br label %for.body.i59

do.end.i64:                                       ; preds = %if.end.i62
  call void @__sanitizer_cov_trace_pc() #14
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  %dev.i63 = getelementptr inbounds %struct.dma_device, ptr %33, i32 0, i32 15
  %34 = ptrtoint ptr %dev.i63 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %dev.i63, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.22) #15
  br label %if.end10

if.end10:                                         ; preds = %do.end.i64, %for.body.i59.if.end10_crit_edge, %if.end.if.end10_crit_edge
  %and11 = and i32 %3, 524288
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %if.end10.if.end16_crit_edge, label %if.then13

if.end10.if.end16_crit_edge:                      ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end16

if.then13:                                        ; preds = %if.end10
  %running.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %dev, i32 0, i32 9, i32 5
  %36 = ptrtoint ptr %running.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %running.i, align 4
  %tobool.not.i66 = icmp eq ptr %37, null
  br i1 %tobool.not.i66, label %if.then13.do.end.i67_crit_edge, label %lor.rhs.i

if.then13.do.end.i67_crit_edge:                   ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i67

lor.rhs.i:                                        ; preds = %if.then13
  %cyclic.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %37, i32 0, i32 10
  %38 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cyclic.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool2.not.i = icmp eq i8 %39, 0
  br i1 %tobool2.not.i, label %lor.rhs.i.do.end.i67_crit_edge, label %if.end25.i, !prof !135

lor.rhs.i.do.end.i67_crit_edge:                   ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %do.end.i67

do.end.i67:                                       ; preds = %lor.rhs.i.do.end.i67_crit_edge, %if.then13.do.end.i67_crit_edge
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1497, i32 noundef 9, ptr noundef null) #12
  br label %if.end16

if.end25.i:                                       ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  %40 = ptrtoint ptr %iomem4.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %iomem4.i, align 4
  %add.ptr5.i.i69 = getelementptr i8, ptr %41, i32 28
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i.i69) #12, !srcloc !136
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12, !srcloc !137
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #12
  tail call void @arm_heavy_mb() #12
  %43 = lshr i32 %42, 8
  %shl.i70 = and i32 %43, 255
  %44 = ptrtoint ptr %iomem4.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %iomem4.i, align 4
  %add.ptr4.i.i71 = getelementptr i8, ptr %45, i32 84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i71, i32 %shl.i70) #12, !srcloc !138
  br label %if.end16

if.end16:                                         ; preds = %if.end25.i, %do.end.i67, %if.end10.if.end16_crit_edge
  %ret.0 = phi i32 [ 0, %if.end10.if.end16_crit_edge ], [ 0, %do.end.i67 ], [ 2, %if.end25.i ]
  br i1 %tobool3.not, label %if.end16.spin_lock_end_crit_edge, label %if.then19

if.end16.spin_lock_end_crit_edge:                 ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #14
  br label %spin_lock_end

if.then19:                                        ; preds = %if.end16
  %running.i72 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %dev, i32 0, i32 9, i32 5
  %46 = ptrtoint ptr %running.i72 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %running.i72, align 4
  %tobool.not.i73 = icmp eq ptr %47, null
  br i1 %tobool.not.i73, label %land.rhs.i, label %if.end40.i

land.rhs.i:                                       ; preds = %if.then19
  %.b108.i = load i1, ptr @rcar_dmac_isr_transfer_end.__already_done, align 1
  br i1 %.b108.i, label %land.rhs.i.rcar_dmac_isr_transfer_end.exit_crit_edge, label %if.then.i74, !prof !145

land.rhs.i.rcar_dmac_isr_transfer_end.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_isr_transfer_end.exit

if.then.i74:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #14
  store i1 true, ptr @rcar_dmac_isr_transfer_end.__already_done, align 1
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 1519, i32 noundef 9, ptr noundef null) #12
  br label %rcar_dmac_isr_transfer_end.exit

if.end40.i:                                       ; preds = %if.then19
  %hwdescs.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %47, i32 0, i32 8
  %48 = ptrtoint ptr %hwdescs.i to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %hwdescs.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool41.not.i = icmp eq i8 %49, 0
  br i1 %tobool41.not.i, label %if.then42.i, label %if.end40.i.if.end64.i_crit_edge

if.end40.i.if.end64.i_crit_edge:                  ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64.i

if.then42.i:                                      ; preds = %if.end40.i
  %running43.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %47, i32 0, i32 6
  %50 = ptrtoint ptr %running43.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %running43.i, align 4
  %chunks.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %47, i32 0, i32 5
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %51, align 4
  %cmp.i.not.i = icmp eq ptr %53, %chunks.i
  br i1 %cmp.i.not.i, label %if.end53.i, label %if.then45.i

if.then45.i:                                      ; preds = %if.then42.i
  call void @__sanitizer_cov_trace_pc() #14
  %54 = ptrtoint ptr %running43.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %running43.i, align 4
  %cyclic.i75 = getelementptr inbounds %struct.rcar_dmac_desc, ptr %47, i32 0, i32 10
  %55 = ptrtoint ptr %cyclic.i75 to i32
  call void @__asan_load1_noabort(i32 %55)
  %56 = load i8, ptr %cyclic.i75, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %56)
  %tobool50.not.i = icmp eq i8 %56, 0
  %spec.select.i = select i1 %tobool50.not.i, i32 1, i32 2
  br label %done82thread-pre-split.i

if.end53.i:                                       ; preds = %if.then42.i
  %cyclic54.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %47, i32 0, i32 10
  %57 = ptrtoint ptr %cyclic54.i to i32
  call void @__asan_load1_noabort(i32 %57)
  %58 = load i8, ptr %cyclic54.i, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %58)
  %tobool55.not.i = icmp eq i8 %58, 0
  br i1 %tobool55.not.i, label %if.end53.i.if.end64.i_crit_edge, label %if.then56.i

if.end53.i.if.end64.i_crit_edge:                  ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end64.i

if.then56.i:                                      ; preds = %if.end53.i
  call void @__sanitizer_cov_trace_pc() #14
  %59 = ptrtoint ptr %chunks.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %chunks.i, align 4
  %61 = ptrtoint ptr %running43.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %60, ptr %running43.i, align 4
  br label %done82thread-pre-split.i

if.end64.i:                                       ; preds = %if.end53.i.if.end64.i_crit_edge, %if.end40.i.if.end64.i_crit_edge
  %node65.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %47, i32 0, i32 4
  %done.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %dev, i32 0, i32 9, i32 3
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node65.i) #12
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end64.i.__list_del_entry.exit.i.i_crit_edge

if.end64.i.__list_del_entry.exit.i.i_crit_edge:   ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %__list_del_entry.exit.i.i

if.end.i.i.i:                                     ; preds = %if.end64.i
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %47, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i.i, align 4
  %64 = ptrtoint ptr %node65.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %node65.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %65, i32 0, i32 1
  %66 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev1.i.i.i.i, align 4
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %65, ptr %63, align 4
  br label %__list_del_entry.exit.i.i

__list_del_entry.exit.i.i:                        ; preds = %if.end.i.i.i, %if.end64.i.__list_del_entry.exit.i.i_crit_edge
  %prev.i2.i.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %dev, i32 0, i32 9, i32 3, i32 1
  %68 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %prev.i2.i.i, align 4
  %call.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node65.i, ptr noundef %69, ptr noundef %done.i) #12
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge

__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_move_tail.exit.i

if.end.i.i.i.i:                                   ; preds = %__list_del_entry.exit.i.i
  call void @__sanitizer_cov_trace_pc() #14
  %70 = ptrtoint ptr %prev.i2.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %node65.i, ptr %prev.i2.i.i, align 4
  %71 = ptrtoint ptr %node65.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %done.i, ptr %node65.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.rcar_dmac_desc, ptr %47, i32 0, i32 4, i32 1
  %72 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i.i.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store volatile ptr %node65.i, ptr %69, align 4
  br label %list_move_tail.exit.i

list_move_tail.exit.i:                            ; preds = %if.end.i.i.i.i, %__list_del_entry.exit.i.i.list_move_tail.exit.i_crit_edge
  %active.i = getelementptr inbounds %struct.rcar_dmac_chan, ptr %dev, i32 0, i32 9, i32 2
  %74 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load volatile ptr, ptr %active.i, align 4
  %cmp.i110.not.i = icmp eq ptr %75, %active.i
  br i1 %cmp.i110.not.i, label %done82.thread.i, label %if.then70.i

if.then70.i:                                      ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %add.ptr76.i = getelementptr i8, ptr %75, i32 -112
  %76 = ptrtoint ptr %running.i72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %add.ptr76.i, ptr %running.i72, align 4
  br label %done82.i

done82.thread.i:                                  ; preds = %list_move_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #14
  %77 = ptrtoint ptr %running.i72 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr null, ptr %running.i72, align 4
  br label %rcar_dmac_isr_transfer_end.exit

done82thread-pre-split.i:                         ; preds = %if.then56.i, %if.then45.i
  %ret.0.ph.i = phi i32 [ %spec.select.i, %if.then45.i ], [ 2, %if.then56.i ]
  %78 = ptrtoint ptr %running.i72 to i32
  call void @__asan_load4_noabort(i32 %78)
  %.pr.i = load ptr, ptr %running.i72, align 4
  br label %done82.i

done82.i:                                         ; preds = %done82thread-pre-split.i, %if.then70.i
  %79 = phi ptr [ %.pr.i, %done82thread-pre-split.i ], [ %add.ptr76.i, %if.then70.i ]
  %ret.0.i = phi i32 [ %ret.0.ph.i, %done82thread-pre-split.i ], [ 2, %if.then70.i ]
  %tobool85.not.i = icmp eq ptr %79, null
  br i1 %tobool85.not.i, label %done82.i.rcar_dmac_isr_transfer_end.exit_crit_edge, label %if.then86.i

done82.i.rcar_dmac_isr_transfer_end.exit_crit_edge: ; preds = %done82.i
  call void @__sanitizer_cov_trace_pc() #14
  br label %rcar_dmac_isr_transfer_end.exit

if.then86.i:                                      ; preds = %done82.i
  call void @__sanitizer_cov_trace_pc() #14
  tail call fastcc void @rcar_dmac_chan_start_xfer(ptr noundef %dev) #12
  br label %rcar_dmac_isr_transfer_end.exit

rcar_dmac_isr_transfer_end.exit:                  ; preds = %if.then86.i, %done82.i.rcar_dmac_isr_transfer_end.exit_crit_edge, %done82.thread.i, %if.then.i74, %land.rhs.i.rcar_dmac_isr_transfer_end.exit_crit_edge
  %retval.0.i76 = phi i32 [ 0, %if.then.i74 ], [ %ret.0.i, %if.then86.i ], [ %ret.0.i, %done82.i.rcar_dmac_isr_transfer_end.exit_crit_edge ], [ 0, %land.rhs.i.rcar_dmac_isr_transfer_end.exit_crit_edge ], [ 2, %done82.thread.i ]
  %or21 = or i32 %retval.0.i76, %ret.0
  br label %spin_lock_end

spin_lock_end:                                    ; preds = %rcar_dmac_isr_transfer_end.exit, %if.end16.spin_lock_end_crit_edge, %do.end.i, %for.body.i.spin_lock_end_crit_edge
  %ret.1 = phi i32 [ %or21, %rcar_dmac_isr_transfer_end.exit ], [ %ret.0, %if.end16.spin_lock_end_crit_edge ], [ 0, %do.end.i ], [ 0, %for.body.i.spin_lock_end_crit_edge ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #12
  br i1 %tobool.not, label %spin_lock_end.cleanup_crit_edge, label %do.end

spin_lock_end.cleanup_crit_edge:                  ; preds = %spin_lock_end
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

do.end:                                           ; preds = %spin_lock_end
  call void @__sanitizer_cov_trace_pc() #14
  %80 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %dev, align 4
  %dev28 = getelementptr inbounds %struct.dma_device, ptr %81, i32 0, i32 15
  %82 = ptrtoint ptr %dev28 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %dev28, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %83, ptr noundef nonnull @.str.48) #15
  tail call fastcc void @rcar_dmac_chan_reinit(ptr noundef %dev)
  br label %cleanup

cleanup:                                          ; preds = %do.end, %spin_lock_end.cleanup_crit_edge
  %ret.2 = phi i32 [ 1, %do.end ], [ %ret.1, %spin_lock_end.cleanup_crit_edge ]
  ret i32 %ret.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_dmac_isr_channel_thread(i32 noundef %irq, ptr noundef %dev) #2 align 64 {
entry:
  %dummy_result.i57 = alloca %struct.dmaengine_result, align 8
  %dummy_result.i = alloca %struct.dmaengine_result, align 8
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.rcar_dmac_chan, ptr %dev, i32 0, i32 8
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  %running = getelementptr inbounds %struct.rcar_dmac_chan, ptr %dev, i32 0, i32 9, i32 5
  %0 = ptrtoint ptr %running to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %running, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.if.end10_crit_edge, label %land.lhs.true

entry.if.end10_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

land.lhs.true:                                    ; preds = %entry
  %cyclic = getelementptr inbounds %struct.rcar_dmac_desc, ptr %1, i32 0, i32 10
  %2 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %cyclic, align 4, !range !149
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool4.not = icmp eq i8 %3, 0
  br i1 %tobool4.not, label %land.lhs.true.if.end10_crit_edge, label %if.then

land.lhs.true.if.end10_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then:                                          ; preds = %land.lhs.true
  %callback.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 7
  %6 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %1, i32 0, i32 8
  %8 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %callback_param.i, align 4
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %dmaengine_desc_callback_valid.exit, label %if.then7

dmaengine_desc_callback_valid.exit:               ; preds = %if.then
  %tobool1.i.not = icmp eq ptr %7, null
  br i1 %tobool1.i.not, label %dmaengine_desc_callback_valid.exit.if.end10_crit_edge, label %if.then7.thread

dmaengine_desc_callback_valid.exit.if.end10_crit_edge: ; preds = %dmaengine_desc_callback_valid.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end10

if.then7.thread:                                  ; preds = %dmaengine_desc_callback_valid.exit
  call void @__sanitizer_cov_trace_pc() #14
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #12
  %10 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %10)
  store i64 0, ptr %dummy_result.i, align 8
  br label %if.then.i

if.then7:                                         ; preds = %if.then
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #12
  %11 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %11)
  store i64 0, ptr %dummy_result.i, align 8
  %tobool.not.i44 = icmp eq ptr %7, null
  br i1 %tobool.not.i44, label %if.then5.i, label %if.then7.if.then.i_crit_edge

if.then7.if.then.i_crit_edge:                     ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i

if.then.i:                                        ; preds = %if.then7.if.then.i_crit_edge, %if.then7.thread
  call void %7(ptr noundef %9, ptr noundef nonnull %dummy_result.i) #12
  br label %dmaengine_desc_callback_invoke.exit

if.then5.i:                                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #14
  tail call void %5(ptr noundef %9) #12
  br label %dmaengine_desc_callback_invoke.exit

dmaengine_desc_callback_invoke.exit:              ; preds = %if.then5.i, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i) #12
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  br label %if.end10

if.end10:                                         ; preds = %dmaengine_desc_callback_invoke.exit, %dmaengine_desc_callback_valid.exit.if.end10_crit_edge, %land.lhs.true.if.end10_crit_edge, %entry.if.end10_crit_edge
  %done = getelementptr inbounds %struct.rcar_dmac_chan, ptr %dev, i32 0, i32 9, i32 3
  %12 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %done, align 4
  %cmp.i.not81 = icmp eq ptr %13, %done
  br i1 %cmp.i.not81, label %if.end10.while.end_crit_edge, label %while.body.lr.ph

if.end10.while.end_crit_edge:                     ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end10
  %wait = getelementptr inbounds %struct.rcar_dmac_chan, ptr %dev, i32 0, i32 9, i32 4
  %prev.i67 = getelementptr inbounds %struct.rcar_dmac_chan, ptr %dev, i32 0, i32 9, i32 4, i32 1
  br label %while.body

while.body:                                       ; preds = %list_add_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %14 = phi ptr [ %13, %while.body.lr.ph ], [ %44, %list_add_tail.exit.while.body_crit_edge ]
  %add.ptr = getelementptr i8, ptr %14, i32 -112
  %15 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %add.ptr, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %16)
  %cmp.i46 = icmp slt i32 %16, 1
  br i1 %cmp.i46, label %do.body2.i, label %dma_cookie_complete.exit, !prof !135

do.body2.i:                                       ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #14
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/sh/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #12, !srcloc !152
  unreachable

dma_cookie_complete.exit:                         ; preds = %while.body
  %chan.i = getelementptr i8, ptr %14, i32 -100
  %17 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %18, i32 0, i32 3
  %19 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %16, ptr %completed_cookie.i, align 4
  %20 = ptrtoint ptr %add.ptr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 0, ptr %add.ptr, align 4
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %14) #12
  br i1 %call.i.i, label %if.end.i.i, label %dma_cookie_complete.exit.list_del.exit_crit_edge

dma_cookie_complete.exit.list_del.exit_crit_edge: ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_del.exit

if.end.i.i:                                       ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #14
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %21 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev.i.i, align 4
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %14, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev1.i.i.i, align 4
  %26 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %24, ptr %22, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %dma_cookie_complete.exit.list_del.exit_crit_edge
  %27 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr inttoptr (i32 256 to ptr), ptr %14, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %callback.i47 = getelementptr i8, ptr %14, i32 -88
  %29 = ptrtoint ptr %callback.i47 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %callback.i47, align 4
  %callback_result.i48 = getelementptr i8, ptr %14, i32 -84
  %31 = ptrtoint ptr %callback_result.i48 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %callback_result.i48, align 4
  %callback_param.i50 = getelementptr i8, ptr %14, i32 -80
  %33 = ptrtoint ptr %callback_param.i50 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %callback_param.i50, align 4
  %tobool.not.i52 = icmp eq ptr %30, null
  br i1 %tobool.not.i52, label %dmaengine_desc_callback_valid.exit56, label %if.then19

dmaengine_desc_callback_valid.exit56:             ; preds = %list_del.exit
  %tobool1.i54.not = icmp eq ptr %32, null
  br i1 %tobool1.i54.not, label %dmaengine_desc_callback_valid.exit56.if.end22_crit_edge, label %if.then19.thread

dmaengine_desc_callback_valid.exit56.if.end22_crit_edge: ; preds = %dmaengine_desc_callback_valid.exit56
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.end22

if.then19.thread:                                 ; preds = %dmaengine_desc_callback_valid.exit56
  call void @__sanitizer_cov_trace_pc() #14
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i57) #12
  %35 = ptrtoint ptr %dummy_result.i57 to i32
  call void @__asan_store8_noabort(i32 %35)
  store i64 0, ptr %dummy_result.i57, align 8
  br label %if.then.i61

if.then19:                                        ; preds = %list_del.exit
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i57) #12
  %36 = ptrtoint ptr %dummy_result.i57 to i32
  call void @__asan_store8_noabort(i32 %36)
  store i64 0, ptr %dummy_result.i57, align 8
  %tobool.not.i59 = icmp eq ptr %32, null
  br i1 %tobool.not.i59, label %if.then5.i65, label %if.then19.if.then.i61_crit_edge

if.then19.if.then.i61_crit_edge:                  ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  br label %if.then.i61

if.then.i61:                                      ; preds = %if.then19.if.then.i61_crit_edge, %if.then19.thread
  call void %32(ptr noundef %34, ptr noundef nonnull %dummy_result.i57) #12
  br label %dmaengine_desc_callback_invoke.exit66

if.then5.i65:                                     ; preds = %if.then19
  call void @__sanitizer_cov_trace_pc() #14
  call void %30(ptr noundef %34) #12
  br label %dmaengine_desc_callback_invoke.exit66

dmaengine_desc_callback_invoke.exit66:            ; preds = %if.then5.i65, %if.then.i61
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i57) #12
  call void @_raw_spin_lock_irq(ptr noundef %lock) #12
  br label %if.end22

if.end22:                                         ; preds = %dmaengine_desc_callback_invoke.exit66, %dmaengine_desc_callback_valid.exit56.if.end22_crit_edge
  %37 = ptrtoint ptr %prev.i67 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i67, align 4
  %call.i.i68 = call zeroext i1 @__list_add_valid(ptr noundef %14, ptr noundef %38, ptr noundef %wait) #12
  br i1 %call.i.i68, label %if.end.i.i69, label %if.end22.list_add_tail.exit_crit_edge

if.end22.list_add_tail.exit_crit_edge:            ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  br label %list_add_tail.exit

if.end.i.i69:                                     ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #14
  %39 = ptrtoint ptr %prev.i67 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %14, ptr %prev.i67, align 4
  %40 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %wait, ptr %14, align 4
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %14, ptr %38, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i69, %if.end22.list_add_tail.exit_crit_edge
  %43 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %done, align 4
  %cmp.i.not = icmp eq ptr %44, %done
  br i1 %cmp.i.not, label %list_add_tail.exit.while.end_crit_edge, label %list_add_tail.exit.while.body_crit_edge

list_add_tail.exit.while.body_crit_edge:          ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.body

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #14
  br label %while.end

while.end:                                        ; preds = %list_add_tail.exit.while.end_crit_edge, %if.end10.while.end_crit_edge
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #12
  call fastcc void @rcar_dmac_desc_recycle_acked(ptr noundef %dev)
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal zeroext i1 @rcar_dmac_chan_filter(ptr nocapture noundef readonly %chan, ptr nocapture noundef readonly %arg) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 44
  %2 = ptrtoint ptr %device_config to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %device_config, align 4
  %cmp.not = icmp eq ptr %3, @rcar_dmac_device_config
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #14
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %arg, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %modules = getelementptr inbounds %struct.rcar_dmac, ptr %1, i32 0, i32 7
  %call = tail call i32 @_test_and_set_bit(i32 noundef %5, ptr noundef %modules) #12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i1 [ %tobool.not, %if.end ], [ false, %entry.cleanup_crit_edge ]
  ret i1 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @rcar_dmac_runtime_suspend(ptr nocapture noundef readnone %dev) #11 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @rcar_dmac_runtime_resume(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #14
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call fastcc i32 @rcar_dmac_init(ptr noundef %1)
  ret i32 %call1
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #12

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_storeN_noabort(i32, i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #13 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #13 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 63)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #9 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #12 = { nounwind }
attributes #13 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #14 = { nomerge }
attributes #15 = { cold nounwind }
attributes #16 = { nounwind allocsize(0) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !25, !26, !28, !30, !31, !32, !33, !35, !36, !37, !39, !41, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !57, !58, !59, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !76, !78, !79, !80, !81, !83, !84, !85, !87, !89, !90, !92, !94, !95, !96, !98, !99, !101, !102, !104, !106, !108, !109, !110, !111, !113, !114, !115, !116, !118, !120, !122, !124}
!llvm.module.flags = !{!126, !127, !128, !129, !130, !131, !132, !133}
!llvm.ident = !{!134}

!0 = !{ptr @__initcall__kmod_rcar_dmac__244_2048_rcar_dmac_driver_init6, !1, !"__initcall__kmod_rcar_dmac__244_2048_rcar_dmac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 2048, i32 1}
!2 = !{ptr @__exitcall_rcar_dmac_driver_exit, !1, !"__exitcall_rcar_dmac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description245, !4, !"__UNIQUE_ID_description245", i1 false, i1 false}
!4 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 2050, i32 1}
!5 = !{ptr @__UNIQUE_ID_author246, !6, !"__UNIQUE_ID_author246", i1 false, i1 false}
!6 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 2051, i32 1}
!7 = !{ptr @__UNIQUE_ID_file247, !8, !"__UNIQUE_ID_file247", i1 false, i1 false}
!8 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 2052, i32 1}
!9 = !{ptr @__UNIQUE_ID_license248, !8, !"__UNIQUE_ID_license248", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 2040, i32 11}
!12 = !{ptr @rcar_dmac_driver, !13, !"rcar_dmac_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 2037, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1923, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @rcar_dmac_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @rcar_dmac_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.7, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1931, i32 3}
!24 = !{ptr @rcar_dmac_probe._entry.6, !23, !"_entry", i1 false, i1 false}
!25 = !{ptr @rcar_dmac_probe._entry_ptr.8, !23, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1820, i32 33}
!28 = !{ptr @.str.10, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1822, i32 3}
!30 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @rcar_dmac_parse_of._entry, !29, !"_entry", i1 false, i1 false}
!32 = !{ptr @rcar_dmac_parse_of._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1829, i32 3}
!35 = !{ptr @rcar_dmac_parse_of._entry.12, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @rcar_dmac_parse_of._entry_ptr.14, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.15, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1839, i32 27}
!39 = !{ptr @.str.16, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 487, i32 3}
!41 = !{ptr @.str.17, !40, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.18, !40, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @rcar_dmac_init._entry, !40, !"_entry", i1 false, i1 false}
!44 = !{ptr @rcar_dmac_init._entry_ptr, !40, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 509, i32 2}
!47 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @rcar_dmac_tx_submit.__UNIQUE_ID_ddebug239, !46, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 800, i32 2}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @rcar_dmac_chcr_de_barrier._entry, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @rcar_dmac_chcr_de_barrier._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @.str.24, !56, !"<string literal>", i1 false, i1 false}
!56 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1014, i32 4}
!57 = !{ptr @.str.25, !56, !"<string literal>", i1 false, i1 false}
!58 = !{ptr @rcar_dmac_chan_prep_sg.__UNIQUE_ID_ddebug242, !56, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!59 = !{ptr @rcar_dmac_chan_configure_desc.chcr_ts, !60, !"chcr_ts", i1 false, i1 false}
!60 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 882, i32 19}
!61 = !{ptr @.str.26, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1208, i32 3}
!63 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @rcar_dmac_prep_slave_sg._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @rcar_dmac_prep_slave_sg._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.28, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1182, i32 3}
!68 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @rcar_dmac_map_slave_addr._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @rcar_dmac_map_slave_addr._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.30, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1188, i32 2}
!73 = !{ptr @rcar_dmac_map_slave_addr.__UNIQUE_ID_ddebug243, !72, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!74 = !{ptr @.str.31, !72, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!76 = !{ptr @.str.33, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1236, i32 3}
!78 = !{ptr @.str.34, !77, !"<string literal>", i1 false, i1 false}
!79 = !{ptr @rcar_dmac_prep_dma_cyclic._entry, !77, !"_entry", i1 false, i1 false}
!80 = !{ptr @rcar_dmac_prep_dma_cyclic._entry_ptr, !77, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @.str.36, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1247, i32 3}
!83 = !{ptr @rcar_dmac_prep_dma_cyclic._entry.35, !82, !"_entry", i1 false, i1 false}
!84 = !{ptr @rcar_dmac_prep_dma_cyclic._entry_ptr.37, !82, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.38, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1370, i32 3}
!87 = distinct !{null, !88, !"__already_done", i1 false, i1 false}
!88 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1390, i32 2}
!89 = !{ptr @.str.39, !88, !"<string literal>", i1 false, i1 false}
!90 = distinct !{null, !91, !"__already_done", i1 false, i1 false}
!91 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 382, i32 2}
!92 = !{ptr @.str.40, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 392, i32 3}
!94 = !{ptr @.str.41, !93, !"<string literal>", i1 false, i1 false}
!95 = !{ptr @rcar_dmac_chan_start_xfer.__UNIQUE_ID_ddebug237, !93, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!96 = !{ptr @.str.42, !97, !"<string literal>", i1 false, i1 false}
!97 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 451, i32 3}
!98 = !{ptr @rcar_dmac_chan_start_xfer.__UNIQUE_ID_ddebug238, !97, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!99 = !{ptr @rcar_dmac_chan_probe.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1772, i32 2}
!101 = !{ptr @.str.43, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.44, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1781, i32 24}
!104 = !{ptr @.str.45, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1786, i32 50}
!106 = !{ptr @.str.46, !107, !"<string literal>", i1 false, i1 false}
!107 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1805, i32 3}
!108 = !{ptr @.str.47, !107, !"<string literal>", i1 false, i1 false}
!109 = !{ptr @rcar_dmac_chan_probe._entry, !107, !"_entry", i1 false, i1 false}
!110 = !{ptr @rcar_dmac_chan_probe._entry_ptr, !107, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.48, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1618, i32 3}
!113 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @rcar_dmac_isr_channel._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @rcar_dmac_isr_channel._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = distinct !{null, !117, !"__already_done", i1 false, i1 false}
!117 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1519, i32 6}
!118 = !{ptr @rcar_dmac_of_ids, !119, !"rcar_dmac_of_ids", i1 false, i1 false}
!119 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 2022, i32 34}
!120 = !{ptr @rcar_dmac_data, !121, !"rcar_dmac_data", i1 false, i1 false}
!121 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 2012, i32 39}
!122 = !{ptr @rcar_gen4_dmac_data, !123, !"rcar_gen4_dmac_data", i1 false, i1 false}
!123 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 2017, i32 39}
!124 = !{ptr @rcar_dmac_pm, !125, !"rcar_dmac_pm", i1 false, i1 false}
!125 = !{!"../drivers/dma/sh/rcar-dmac.c", i32 1745, i32 32}
!126 = !{i32 1, !"wchar_size", i32 2}
!127 = !{i32 1, !"min_enum_size", i32 4}
!128 = !{i32 8, !"branch-target-enforcement", i32 0}
!129 = !{i32 8, !"sign-return-address", i32 0}
!130 = !{i32 8, !"sign-return-address-all", i32 0}
!131 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!132 = !{i32 7, !"uwtable", i32 1}
!133 = !{i32 7, !"frame-pointer", i32 2}
!134 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!135 = !{!"branch_weights", i32 1, i32 2000}
!136 = !{i64 6279234}
!137 = !{i64 2154465178}
!138 = !{i64 6278816}
!139 = !{i64 2148242774}
!140 = !{i64 727597, i64 727622, i64 727644, i64 727660, i64 727672, i64 727692, i64 727716, i64 727732, i64 727744}
!141 = !{i64 2148242962}
!142 = !{i64 6278196}
!143 = !{i64 6278396}
!144 = !{i64 2154463697}
!145 = !{!"branch_weights", i32 2000, i32 1}
!146 = !{i64 2153836942, i64 2153837434, i64 2153836979, i64 2153837035, i64 2153837069, i64 2153837093, i64 2153837134, i64 2153837155, i64 2153837183, i64 2153837217}
!147 = !{i64 2153838552, i64 2153839044, i64 2153838589, i64 2153838645, i64 2153838679, i64 2153838703, i64 2153838744, i64 2153838765, i64 2153838793, i64 2153838827}
!148 = !{i64 2154426604}
!149 = !{i8 0, i8 2}
!150 = !{i64 2148811020, i64 2148811025, i64 2148811038, i64 2148811082, i64 2148811116, i64 2148811137}
!151 = !{i32 0, i32 33}
!152 = !{i64 2154425098, i64 2154425591, i64 2154425135, i64 2154425191, i64 2154425225, i64 2154425249, i64 2154425290, i64 2154425311, i64 2154425339, i64 2154425373}
