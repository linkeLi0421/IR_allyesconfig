; ModuleID = '/llk/IR_all_yes/drivers/dma/mmp_pdma.c_pt.bc'
source_filename = "../drivers/dma/mmp_pdma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.mmp_pdma_device = type { i32, ptr, ptr, %struct.dma_device, ptr, %struct.spinlock }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mmp_pdma_phy = type { i32, ptr, ptr }
%struct.mmp_pdma_chan = type { ptr, %struct.dma_chan, %struct.dma_async_tx_descriptor, ptr, i32, %struct.dma_slave_config, ptr, %struct.tasklet_struct, i32, i32, i32, %struct.spinlock, %struct.list_head, %struct.list_head, i8, i8, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.mmp_pdma_desc_sw = type { %struct.mmp_pdma_desc_hw, %struct.list_head, %struct.list_head, %struct.dma_async_tx_descriptor, [12 x i8] }
%struct.mmp_pdma_desc_hw = type { i32, i32, i32, i32, [16 x i8] }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.dmaengine_result = type { i32, i32 }

@__initcall__kmod_mmp_pdma__244_1145_mmp_pdma_driver_init6 = internal global ptr @mmp_pdma_driver_init, section ".initcall6.init", align 4
@mmp_pdma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mmp_pdma_probe, ptr @mmp_pdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mmp_pdma_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @mmp_pdma_id_table, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mmp_pdma_driver_exit = internal global ptr @mmp_pdma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description245 = internal constant [55 x i8] c"mmp_pdma.description=MARVELL MMP Peripheral DMA Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author246 = internal constant [43 x i8] c"mmp_pdma.author=Marvell International Ltd.\00", section ".modinfo", align 1
@__UNIQUE_ID_file247 = internal constant [35 x i8] c"mmp_pdma.file=drivers/dma/mmp_pdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license248 = internal constant [24 x i8] c"mmp_pdma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmp-pdma\00", [23 x i8] zeroinitializer }, align 32
@mmp_pdma_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"marvell,pdma-1.0\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mmp_pdma_id_table = internal constant { [2 x %struct.platform_device_id], [48 x i8] } { [2 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"mmp-pdma\00\00\00\00\00\00\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id zeroinitializer], [48 x i8] zeroinitializer }, align 32
@mmp_pdma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"&pdev->phy_lock\00", [16 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"#dma-channels\00", [18 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"pdma\00", [27 x i8] zeroinitializer }, align 32
@mmp_pdma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 1110, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unable to register\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mmp_pdma_probe\00", [17 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/mmp_pdma.c\00", [41 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mmp_pdma_probe._entry_ptr = internal global ptr @mmp_pdma_probe._entry, section ".printk_index", align 4
@mmp_pdma_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 1119, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"of_dma_controller_register failed\0A\00", [61 x i8] zeroinitializer }, align 32
@mmp_pdma_probe._entry_ptr.11 = internal global ptr @mmp_pdma_probe._entry.9, section ".printk_index", align 4
@mmp_pdma_probe._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 1126, ptr @.str.14, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"initialized %d channels\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mmp_pdma_probe._entry_ptr.15 = internal global ptr @mmp_pdma_probe._entry.12, section ".printk_index", align 4
@clear_chan_irq._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.6, i32 196, ptr @.str.18, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"DCSR_BUSERR\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"clear_chan_irq\00", [17 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@clear_chan_irq._entry_ptr = internal global ptr @clear_chan_irq._entry, section ".printk_index", align 4
@mmp_pdma_chan_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.6, i32 981, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"channel request irq fail!\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"mmp_pdma_chan_init\00", [45 x i8] zeroinitializer }, align 32
@mmp_pdma_chan_init._entry_ptr = internal global ptr @mmp_pdma_chan_init._entry, section ".printk_index", align 4
@mmp_pdma_chan_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.21 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"&chan->desc_lock\00", [47 x i8] zeroinitializer }, align 32
@dma_do_tasklet.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.23, ptr @.str.6, ptr @.str.24, i8 0, i8 -30, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.22 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"mmp_pdma\00", [23 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dma_do_tasklet\00", [17 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"completed_cookie=%d\0A\00", [43 x i8] zeroinitializer }, align 32
@start_pending_queue.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.25, ptr @.str.6, ptr @.str.26, i8 0, i8 75, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.25 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"start_pending_queue\00", [44 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMA controller still busy\0A\00", [37 x i8] zeroinitializer }, align 32
@start_pending_queue.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.25, ptr @.str.6, ptr @.str.27, i8 0, i8 77, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.27 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"no pending list\0A\00", [47 x i8] zeroinitializer }, align 32
@start_pending_queue.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.22, ptr @.str.25, ptr @.str.6, ptr @.str.28, i8 0, i8 79, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.28 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"no free dma channel\0A\00", [43 x i8] zeroinitializer }, align 32
@mmp_pdma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.6, i32 404, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to allocate descriptor pool\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mmp_pdma_alloc_chan_resources\00", [34 x i8] zeroinitializer }, align 32
@mmp_pdma_alloc_chan_resources._entry_ptr = internal global ptr @mmp_pdma_alloc_chan_resources._entry, section ".printk_index", align 4
@mmp_pdma_prep_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.6, i32 471, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"no memory for desc\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"mmp_pdma_prep_memcpy\00", [43 x i8] zeroinitializer }, align 32
@mmp_pdma_prep_memcpy._entry_ptr = internal global ptr @mmp_pdma_prep_memcpy._entry, section ".printk_index", align 4
@mmp_pdma_alloc_descriptor._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.6, i32 370, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"out of memory for link descriptor\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"mmp_pdma_alloc_descriptor\00", [38 x i8] zeroinitializer }, align 32
@mmp_pdma_alloc_descriptor._entry_ptr = internal global ptr @mmp_pdma_alloc_descriptor._entry, section ".printk_index", align 4
@mmp_pdma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.35, ptr @.str.6, i32 555, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"mmp_pdma_prep_slave_sg\00", [41 x i8] zeroinitializer }, align 32
@mmp_pdma_prep_slave_sg._entry_ptr = internal global ptr @mmp_pdma_prep_slave_sg._entry, section ".printk_index", align 4
@mmp_pdma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.37, ptr @.str.6, i32 637, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Unsupported direction for cyclic DMA\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"mmp_pdma_prep_dma_cyclic\00", [39 x i8] zeroinitializer }, align 32
@mmp_pdma_prep_dma_cyclic._entry_ptr = internal global ptr @mmp_pdma_prep_dma_cyclic._entry, section ".printk_index", align 4
@mmp_pdma_prep_dma_cyclic._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.37, ptr @.str.6, i32 647, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@mmp_pdma_prep_dma_cyclic._entry_ptr.39 = internal global ptr @mmp_pdma_prep_dma_cyclic._entry.38, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@__sancov_gen_cov_switch_values.40 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.41 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.42 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.43 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.44 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.45 = internal global [5 x i64] [i64 3, i64 32, i64 8, i64 16, i64 32]
@__sancov_gen_cov_switch_values.46 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.47 = private unnamed_addr constant [16 x i8] c"mmp_pdma_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1135, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1137, i32 11 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"mmp_pdma_dt_ids\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 999, i32 34 }
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"mmp_pdma_id_table\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1130, i32 40 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1038, i32 2 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1047, i32 44 }
@___asan_gen_.70 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1071, i32 25 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1110, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1119, i32 4 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 1126, i32 2 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 196, i32 3 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 981, i32 4 }
@___asan_gen_.125 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 986, i32 2 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 906, i32 4 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 302, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 309, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 316, i32 4 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 404, i32 3 }
@___asan_gen_.169 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 471, i32 4 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 370, i32 3 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 555, i32 5 }
@___asan_gen_.191 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 637, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.195 = private constant [26 x i8] c"../drivers/dma/mmp_pdma.c\00", align 1
@___asan_gen_.196 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.195, i32 647, i32 4 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author246, ptr @__UNIQUE_ID_description245, ptr @__UNIQUE_ID_file247, ptr @__UNIQUE_ID_license248, ptr @__exitcall_mmp_pdma_driver_exit, ptr @__initcall__kmod_mmp_pdma__244_1145_mmp_pdma_driver_init6, ptr @clear_chan_irq._entry, ptr @clear_chan_irq._entry_ptr, ptr @mmp_pdma_alloc_chan_resources._entry, ptr @mmp_pdma_alloc_chan_resources._entry_ptr, ptr @mmp_pdma_alloc_descriptor._entry, ptr @mmp_pdma_alloc_descriptor._entry_ptr, ptr @mmp_pdma_chan_init._entry, ptr @mmp_pdma_chan_init._entry_ptr, ptr @mmp_pdma_driver_exit, ptr @mmp_pdma_prep_dma_cyclic._entry, ptr @mmp_pdma_prep_dma_cyclic._entry.38, ptr @mmp_pdma_prep_dma_cyclic._entry_ptr, ptr @mmp_pdma_prep_dma_cyclic._entry_ptr.39, ptr @mmp_pdma_prep_memcpy._entry, ptr @mmp_pdma_prep_memcpy._entry_ptr, ptr @mmp_pdma_prep_slave_sg._entry, ptr @mmp_pdma_prep_slave_sg._entry_ptr, ptr @mmp_pdma_probe._entry, ptr @mmp_pdma_probe._entry.12, ptr @mmp_pdma_probe._entry.9, ptr @mmp_pdma_probe._entry_ptr, ptr @mmp_pdma_probe._entry_ptr.11, ptr @mmp_pdma_probe._entry_ptr.15, ptr @mmp_pdma_driver, ptr @.str, ptr @mmp_pdma_dt_ids, ptr @mmp_pdma_id_table, ptr @mmp_pdma_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @mmp_pdma_chan_init.__key, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.37], section "llvm.metadata"
@0 = internal global [50 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_id_table to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.70 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_probe._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @clear_chan_irq._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_chan_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_chan_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_prep_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.169 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_alloc_descriptor._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mmp_pdma_prep_dma_cyclic._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pdma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mmp_pdma_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mmp_pdma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @mmp_pdma_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pdma_probe(ptr noundef %op) #2 align 64 {
entry:
  %dma_channels = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dma_channels) #7
  %2 = ptrtoint ptr %dma_channels to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 0, ptr %dma_channels, align 4
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 424, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev4 = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %dev4 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %dev, ptr %dev4, align 4
  %phy_lock = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %phy_lock, ptr noundef nonnull @.str.1, ptr noundef nonnull @mmp_pdma_probe.__key, i16 noundef signext 3) #7
  %call6 = tail call ptr @platform_get_resource(ptr noundef %op, i32 noundef 512, i32 noundef 0) #7
  %4 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev4, align 4
  %call8 = tail call ptr @devm_ioremap_resource(ptr noundef %5, ptr noundef %call6) #7
  %base = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call8, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call8, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then11, label %if.end14

if.then11:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call8 to i32
  br label %cleanup

if.end14:                                         ; preds = %if.end
  %8 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev4, align 4
  %call16 = tail call ptr @of_match_device(ptr noundef nonnull @mmp_pdma_dt_ids, ptr noundef %9) #7
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %if.else, label %if.then18

if.then18:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %10 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev4, align 4
  %of_node = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 27
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %call.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef %13, ptr noundef nonnull @.str.2, ptr noundef nonnull %dma_channels, i32 noundef 1, i32 noundef 0) #7
  %14 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %.pr = load i32, ptr %dma_channels, align 4
  br label %if.end28

if.else:                                          ; preds = %if.end14
  %tobool21.not = icmp eq ptr %1, null
  br i1 %tobool21.not, label %if.else.if.end28.thread_crit_edge, label %land.lhs.true

if.else.if.end28.thread_crit_edge:                ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.thread

land.lhs.true:                                    ; preds = %if.else
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool23.not = icmp eq i32 %16, 0
  br i1 %tobool23.not, label %land.lhs.true.if.end28.thread_crit_edge, label %if.then24

land.lhs.true.if.end28.thread_crit_edge:          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end28.thread

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %17 = ptrtoint ptr %dma_channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dma_channels, align 4
  br label %if.end28

if.end28.thread:                                  ; preds = %land.lhs.true.if.end28.thread_crit_edge, %if.else.if.end28.thread_crit_edge
  %18 = ptrtoint ptr %dma_channels to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 32, ptr %dma_channels, align 4
  %19 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 32, ptr %call.i, align 4
  br label %for.body.preheader

if.end28:                                         ; preds = %if.then24, %if.then18
  %20 = phi i32 [ %16, %if.then24 ], [ %.pr, %if.then18 ]
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %call.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp223 = icmp sgt i32 %20, 0
  br i1 %cmp223, label %if.end28.for.body.preheader_crit_edge, label %if.end28.for.end_crit_edge

if.end28.for.end_crit_edge:                       ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end28.for.body.preheader_crit_edge:            ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.preheader

for.body.preheader:                               ; preds = %if.end28.for.body.preheader_crit_edge, %if.end28.thread
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.preheader
  %irq_num.0225 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %i.0224 = phi i32 [ %inc34, %for.body.for.body_crit_edge ], [ 0, %for.body.preheader ]
  %call30 = call i32 @platform_get_irq_optional(ptr noundef %op, i32 noundef %i.0224) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call30)
  %cmp31 = icmp sgt i32 %call30, 0
  %inc = zext i1 %cmp31 to i32
  %spec.select = add i32 %irq_num.0225, %inc
  %inc34 = add nuw nsw i32 %i.0224, 1
  %22 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %dma_channels, align 4
  %cmp = icmp slt i32 %inc34, %23
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end28.for.end_crit_edge
  %irq_num.0.lcssa = phi i32 [ 0, %if.end28.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %.lcssa = phi i32 [ %20, %if.end28.for.end_crit_edge ], [ %23, %for.body.for.end_crit_edge ]
  %24 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %.lcssa, i32 12) #7
  %25 = extractvalue { i32, i1 } %24, 1
  br i1 %25, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !107

devm_kcalloc.exit.thread:                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %phy219 = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 4
  %26 = ptrtoint ptr %phy219 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr null, ptr %phy219, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %for.end
  %27 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %dev4, align 4
  %29 = extractvalue { i32, i1 } %24, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %28, i32 noundef %29, i32 noundef 3520) #7
  %phy = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 4
  %30 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %call5.i.i, ptr %phy, align 4
  %cmp38 = icmp eq ptr %call5.i.i, null
  br i1 %cmp38, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end40

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end40:                                         ; preds = %devm_kcalloc.exit
  %device = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3
  %channels = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 3
  %31 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 3, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %channels, ptr %prev.i, align 4
  %33 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dma_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %irq_num.0.lcssa, i32 %34)
  %cmp41.not = icmp eq i32 %irq_num.0.lcssa, %34
  br i1 %cmp41.not, label %if.end40.if.end49_crit_edge, label %if.then42

if.end40.if.end49_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end49

if.then42:                                        ; preds = %if.end40
  %call43 = call i32 @platform_get_irq(ptr noundef %op, i32 noundef 0) #7
  %35 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %dev4, align 4
  %call.i215 = call i32 @devm_request_threaded_irq(ptr noundef %36, i32 noundef %call43, ptr noundef nonnull @mmp_pdma_int_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i215)
  %tobool46.not = icmp eq i32 %call.i215, 0
  br i1 %tobool46.not, label %if.end49thread-pre-split, label %if.then42.cleanup_crit_edge

if.then42.cleanup_crit_edge:                      ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end49thread-pre-split:                         ; preds = %if.then42
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr231 = load i32, ptr %dma_channels, align 4
  br label %if.end49

if.end49:                                         ; preds = %if.end49thread-pre-split, %if.end40.if.end49_crit_edge
  %38 = phi i32 [ %.pr231, %if.end49thread-pre-split ], [ %34, %if.end40.if.end49_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %cmp51227 = icmp sgt i32 %38, 0
  br i1 %cmp51227, label %if.end49.for.body52_crit_edge, label %if.end49.for.end61_crit_edge

if.end49.for.end61_crit_edge:                     ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end61

if.end49.for.body52_crit_edge:                    ; preds = %if.end49
  br label %for.body52

for.body52:                                       ; preds = %for.inc59.for.body52_crit_edge, %if.end49.for.body52_crit_edge
  %39 = phi i32 [ %67, %for.inc59.for.body52_crit_edge ], [ %38, %if.end49.for.body52_crit_edge ]
  %i.1228 = phi i32 [ %inc60, %for.inc59.for.body52_crit_edge ], [ 0, %if.end49.for.body52_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %irq_num.0.lcssa, i32 %39)
  %cmp53.not = icmp eq i32 %irq_num.0.lcssa, %39
  br i1 %cmp53.not, label %cond.false, label %for.body52.cond.end_crit_edge

for.body52.cond.end_crit_edge:                    ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #9
  br label %cond.end

cond.false:                                       ; preds = %for.body52
  call void @__sanitizer_cov_trace_pc() #9
  %call54 = call i32 @platform_get_irq(ptr noundef %op, i32 noundef %i.1228) #7
  br label %cond.end

cond.end:                                         ; preds = %cond.false, %for.body52.cond.end_crit_edge
  %cond = phi i32 [ %call54, %cond.false ], [ 0, %for.body52.cond.end_crit_edge ]
  %40 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %phy, align 4
  %arrayidx.i = getelementptr %struct.mmp_pdma_phy, ptr %41, i32 %i.1228
  %42 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev4, align 4
  %call.i.i216 = call noalias ptr @devm_kmalloc(ptr noundef %43, i32 noundef 332, i32 noundef 3520) #7
  %cmp.i217 = icmp eq ptr %call.i.i216, null
  br i1 %cmp.i217, label %cond.end.cleanup_crit_edge, label %if.end.i

cond.end.cleanup_crit_edge:                       ; preds = %cond.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %cond.end
  %44 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %i.1228, ptr %arrayidx.i, align 4
  %45 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base, align 4
  %base3.i = getelementptr %struct.mmp_pdma_phy, ptr %41, i32 %i.1228, i32 1
  %47 = ptrtoint ptr %base3.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %46, ptr %base3.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %cond)
  %tobool.not.i = icmp eq i32 %cond, 0
  br i1 %tobool.not.i, label %if.end.i.do.body12.i_crit_edge, label %if.then4.i

if.end.i.do.body12.i_crit_edge:                   ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

if.then4.i:                                       ; preds = %if.end.i
  %48 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev4, align 4
  %call.i43.i = call i32 @devm_request_threaded_irq(ptr noundef %49, i32 noundef %cond, ptr noundef nonnull @mmp_pdma_chan_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.3, ptr noundef %arrayidx.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i43.i)
  %tobool7.not.i = icmp eq i32 %call.i43.i, 0
  br i1 %tobool7.not.i, label %if.then4.i.do.body12.i_crit_edge, label %do.end.i

if.then4.i.do.body12.i_crit_edge:                 ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body12.i

do.end.i:                                         ; preds = %if.then4.i
  call void @__sanitizer_cov_trace_pc() #9
  %50 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %dev4, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %51, ptr noundef nonnull @.str.19) #10
  br label %cleanup

do.body12.i:                                      ; preds = %if.then4.i.do.body12.i_crit_edge, %if.end.i.do.body12.i_crit_edge
  %desc_lock.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %call.i.i216, i32 0, i32 11
  call void @__raw_spin_lock_init(ptr noundef %desc_lock.i, ptr noundef nonnull @.str.21, ptr noundef nonnull @mmp_pdma_chan_init.__key, i16 noundef signext 3) #7
  %52 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev4, align 4
  %54 = ptrtoint ptr %call.i.i216 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %53, ptr %call.i.i216, align 4
  %chan18.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %call.i.i216, i32 0, i32 1
  %55 = ptrtoint ptr %chan18.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %device, ptr %chan18.i, align 4
  %tasklet.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %call.i.i216, i32 0, i32 7
  call void @tasklet_setup(ptr noundef %tasklet.i, ptr noundef nonnull @dma_do_tasklet) #7
  %chain_pending.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %call.i.i216, i32 0, i32 12
  %56 = ptrtoint ptr %chain_pending.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %chain_pending.i, ptr %chain_pending.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %call.i.i216, i32 0, i32 12, i32 1
  %57 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %chain_pending.i, ptr %prev.i.i, align 4
  %chain_running.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %call.i.i216, i32 0, i32 13
  %58 = ptrtoint ptr %chain_running.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store volatile ptr %chain_running.i, ptr %chain_running.i, align 4
  %prev.i44.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %call.i.i216, i32 0, i32 13, i32 1
  %59 = ptrtoint ptr %prev.i44.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %chain_running.i, ptr %prev.i44.i, align 4
  %device_node.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %call.i.i216, i32 0, i32 1, i32 8
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %device_node.i, ptr noundef %61, ptr noundef %channels) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.body12.i.for.inc59_crit_edge

do.body12.i.for.inc59_crit_edge:                  ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc59

if.end.i.i.i:                                     ; preds = %do.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %device_node.i, ptr %prev.i, align 4
  %63 = ptrtoint ptr %device_node.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %channels, ptr %device_node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %call.i.i216, i32 0, i32 1, i32 8, i32 1
  %64 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev3.i.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %device_node.i, ptr %61, align 4
  br label %for.inc59

for.inc59:                                        ; preds = %if.end.i.i.i, %do.body12.i.for.inc59_crit_edge
  %inc60 = add nuw nsw i32 %i.1228, 1
  %66 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %dma_channels, align 4
  %cmp51 = icmp slt i32 %inc60, %67
  br i1 %cmp51, label %for.inc59.for.body52_crit_edge, label %for.inc59.for.end61_crit_edge

for.inc59.for.end61_crit_edge:                    ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end61

for.inc59.for.body52_crit_edge:                   ; preds = %for.inc59
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body52

for.end61:                                        ; preds = %for.inc59.for.end61_crit_edge, %if.end49.for.end61_crit_edge
  %cap_mask = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 6
  call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #7
  call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #7
  call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #7
  call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #7
  %dev71 = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 15
  %68 = ptrtoint ptr %dev71 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %dev, ptr %dev71, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 27
  %69 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr @mmp_pdma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 29
  %70 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @mmp_pdma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 49
  %71 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr @mmp_pdma_tx_status, ptr %device_tx_status, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 30
  %72 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr @mmp_pdma_prep_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 39
  %73 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr @mmp_pdma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 40
  %74 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr @mmp_pdma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_issue_pending = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 50
  %75 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr @mmp_pdma_issue_pending, ptr %device_issue_pending, align 4
  %device_config = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 44
  %76 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr @mmp_pdma_config, ptr %device_config, align 4
  %device_terminate_all = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 47
  %77 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr @mmp_pdma_terminate_all, ptr %device_terminate_all, align 4
  %copy_align = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 10
  %78 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 3, ptr %copy_align, align 4
  %src_addr_widths = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 19
  %79 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 7, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 20
  %80 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %80)
  store i32 7, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 21
  %81 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %81)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.mmp_pdma_device, ptr %call.i, i32 0, i32 3, i32 26
  %82 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %82)
  store i32 0, ptr %residue_granularity, align 4
  %83 = ptrtoint ptr %dev4 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev4, align 4
  %coherent_dma_mask = getelementptr inbounds %struct.device, ptr %84, i32 0, i32 19
  %85 = ptrtoint ptr %coherent_dma_mask to i32
  call void @__asan_load8_noabort(i32 %85)
  %86 = load i64, ptr %coherent_dma_mask, align 8
  call void @__sanitizer_cov_trace_const_cmp8(i64 0, i64 %86)
  %tobool87.not = icmp eq i64 %86, 0
  %. = select i1 %tobool87.not, i64 -1, i64 %86
  %call95 = call i32 @dma_set_mask(ptr noundef %84, i64 noundef %.) #7
  %call98 = call i32 @dma_async_device_register(ptr noundef %device) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call98)
  %tobool99.not = icmp eq i32 %call98, 0
  br i1 %tobool99.not, label %if.end106, label %do.end103

do.end103:                                        ; preds = %for.end61
  call void @__sanitizer_cov_trace_pc() #9
  %87 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev71, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %88, ptr noundef nonnull @.str.4) #10
  br label %cleanup

if.end106:                                        ; preds = %for.end61
  %of_node108 = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 27
  %89 = ptrtoint ptr %of_node108 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %of_node108, align 8
  %tobool109.not = icmp eq ptr %90, null
  br i1 %tobool109.not, label %if.end106.if.end122_crit_edge, label %if.then110

if.end106.if.end122_crit_edge:                    ; preds = %if.end106
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

if.then110:                                       ; preds = %if.end106
  %call113 = call i32 @of_dma_controller_register(ptr noundef nonnull %90, ptr noundef nonnull @mmp_pdma_dma_xlate, ptr noundef nonnull %call.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call113)
  %cmp114 = icmp slt i32 %call113, 0
  br i1 %cmp114, label %do.end118, label %if.then110.if.end122_crit_edge

if.then110.if.end122_crit_edge:                   ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end122

do.end118:                                        ; preds = %if.then110
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  call void @dma_async_device_unregister(ptr noundef %device) #7
  br label %cleanup

if.end122:                                        ; preds = %if.then110.if.end122_crit_edge, %if.end106.if.end122_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 8
  %91 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %92 = ptrtoint ptr %dev71 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %dev71, align 4
  %94 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dma_channels, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %93, ptr noundef nonnull @.str.13, i32 noundef %95) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end122, %do.end118, %do.end103, %do.end.i, %cond.end.cleanup_crit_edge, %if.then42.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.then11, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %if.then11 ], [ %call98, %do.end103 ], [ %call113, %do.end118 ], [ 0, %if.end122 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call.i215, %if.then42.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ %call.i43.i, %do.end.i ], [ -12, %cond.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dma_channels) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pdma_remove(ptr noundef %op) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %op, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @of_dma_controller_free(ptr noundef nonnull %3) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp45 = icmp sgt i32 %5, 0
  br i1 %cmp45, label %if.end.for.body_crit_edge, label %if.end.for.end_crit_edge

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end.for.body_crit_edge
  %irq_num.047 = phi i32 [ %spec.select, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %i.046 = phi i32 [ %inc7, %for.body.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %call3 = tail call i32 @platform_get_irq(ptr noundef %op, i32 noundef %i.046) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call3)
  %cmp4 = icmp sgt i32 %call3, 0
  %inc = zext i1 %cmp4 to i32
  %spec.select = add i32 %irq_num.047, %inc
  %inc7 = add nuw nsw i32 %i.046, 1
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %1, align 4
  %cmp = icmp slt i32 %inc7, %7
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %if.end.for.end_crit_edge
  %irq_num.0.lcssa = phi i32 [ 0, %if.end.for.end_crit_edge ], [ %spec.select, %for.body.for.end_crit_edge ]
  %.lcssa = phi i32 [ %5, %if.end.for.end_crit_edge ], [ %7, %for.body.for.end_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %irq_num.0.lcssa, i32 %.lcssa)
  %cmp9.not = icmp eq i32 %irq_num.0.lcssa, %.lcssa
  br i1 %cmp9.not, label %for.cond13.preheader, label %if.then10

for.cond13.preheader:                             ; preds = %for.end
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %cmp1549 = icmp sgt i32 %9, 0
  br i1 %cmp1549, label %for.body16.lr.ph, label %for.cond13.preheader.if.end23_crit_edge

for.cond13.preheader.if.end23_crit_edge:          ; preds = %for.cond13.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

for.body16.lr.ph:                                 ; preds = %for.cond13.preheader
  %phy17 = getelementptr inbounds %struct.mmp_pdma_device, ptr %1, i32 0, i32 4
  br label %for.body16

if.then10:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %call11 = tail call i32 @platform_get_irq(ptr noundef %op, i32 noundef 0) #7
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %call11, ptr noundef %1) #7
  br label %if.end23

for.body16:                                       ; preds = %for.body16.for.body16_crit_edge, %for.body16.lr.ph
  %i.150 = phi i32 [ 0, %for.body16.lr.ph ], [ %inc21, %for.body16.for.body16_crit_edge ]
  %10 = ptrtoint ptr %phy17 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy17, align 4
  %arrayidx = getelementptr %struct.mmp_pdma_phy, ptr %11, i32 %i.150
  %call18 = tail call i32 @platform_get_irq(ptr noundef %op, i32 noundef %i.150) #7
  tail call void @devm_free_irq(ptr noundef %dev, i32 noundef %call18, ptr noundef %arrayidx) #7
  %inc21 = add nuw nsw i32 %i.150, 1
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  %cmp15 = icmp slt i32 %inc21, %13
  br i1 %cmp15, label %for.body16.for.body16_crit_edge, label %for.body16.if.end23_crit_edge

for.body16.if.end23_crit_edge:                    ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end23

for.body16.for.body16_crit_edge:                  ; preds = %for.body16
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body16

if.end23:                                         ; preds = %for.body16.if.end23_crit_edge, %if.then10, %for.cond13.preheader.if.end23_crit_edge
  %device = getelementptr inbounds %struct.mmp_pdma_device, ptr %1, i32 0, i32 3
  tail call void @dma_async_device_unregister(ptr noundef %device) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_device(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_optional(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pdma_int_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base = getelementptr inbounds %struct.mmp_pdma_device, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 240
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !109
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool.not23 = icmp eq i32 %2, 0
  br i1 %tobool.not23, label %entry.while.end_crit_edge, label %while.body.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.body.lr.ph:                                 ; preds = %entry
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  %phy3 = getelementptr inbounds %struct.mmp_pdma_device, ptr %dev_id, i32 0, i32 4
  br label %while.body

while.body:                                       ; preds = %if.end.while.body_crit_edge, %while.body.lr.ph
  %irq_num.025 = phi i32 [ 0, %while.body.lr.ph ], [ %spec.select, %if.end.while.body_crit_edge ]
  %dint.024 = phi i32 [ %3, %while.body.lr.ph ], [ %and, %if.end.while.body_crit_edge ]
  %4 = tail call i32 @llvm.cttz.i32(i32 %dint.024, i1 true) #7, !range !110
  %5 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %dev_id, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %4, i32 %6)
  %cmp.not = icmp slt i32 %4, %6
  br i1 %cmp.not, label %if.end, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

if.end:                                           ; preds = %while.body
  %sub = add i32 %dint.024, -1
  %and = and i32 %sub, %dint.024
  %7 = ptrtoint ptr %phy3 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %phy3, align 4
  %arrayidx = getelementptr %struct.mmp_pdma_phy, ptr %8, i32 %4
  %call4 = tail call i32 @mmp_pdma_chan_handler(i32 noundef %irq, ptr noundef %arrayidx)
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call4)
  %cmp5 = icmp eq i32 %call4, 1
  %inc = zext i1 %cmp5 to i32
  %spec.select = add i32 %irq_num.025, %inc
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end.while.end_crit_edge, label %if.end.while.body_crit_edge

if.end.while.body_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.body

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %while.end

while.end:                                        ; preds = %if.end.while.end_crit_edge, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %irq_num.0.lcssa = phi i32 [ 0, %entry.while.end_crit_edge ], [ %irq_num.025, %while.body.while.end_crit_edge ], [ %spec.select, %if.end.while.end_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %irq_num.0.lcssa)
  %tobool8.not = icmp ne i32 %irq_num.0.lcssa, 0
  %. = zext i1 %tobool8.not to i32
  ret i32 %.
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pdma_alloc_chan_resources(ptr nocapture noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -4
  %desc_pool = getelementptr i8, ptr %dchan, i32 324
  %0 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc_pool, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %dev = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 5
  %2 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev, align 4
  %init_name.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %device = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %device to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %if.end.dev_name.exit_crit_edge ]
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call2 = tail call ptr @dma_pool_create(ptr noundef %retval.0.i, ptr noundef %9, i32 noundef 160, i32 noundef 32, i32 noundef 0) #7
  %10 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call2, ptr %desc_pool, align 4
  %tobool5.not = icmp eq ptr %call2, null
  br i1 %tobool5.not, label %do.end, label %if.end8

do.end:                                           ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %12, ptr noundef nonnull @.str.29) #10
  br label %cleanup

if.end8:                                          ; preds = %dev_name.exit
  %phy.i = getelementptr i8, ptr %dchan, i32 164
  %13 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy.i, align 4
  %tobool.not.i17 = icmp eq ptr %14, null
  br i1 %tobool.not.i17, label %if.end8.mmp_pdma_free_phy.exit_crit_edge, label %if.end.i18

if.end8.mmp_pdma_free_phy.exit_crit_edge:         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_free_phy.exit

if.end.i18:                                       ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dchan, align 4
  %drcmr.i = getelementptr i8, ptr %dchan, i32 252
  %17 = ptrtoint ptr %drcmr.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %drcmr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %18)
  %cmp.i = icmp ult i32 %18, 64
  %cond.i = select i1 %cmp.i, i32 256, i32 4352
  %and.i = shl i32 %18, 2
  %shl.i = and i32 %and.i, 252
  %add.i = or i32 %cond.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %19 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy.i, align 4
  %base.i = getelementptr inbounds %struct.mmp_pdma_phy, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %22, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #7, !srcloc !112
  %phy_lock.i = getelementptr i8, ptr %16, i32 368
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %phy_lock.i) #7
  %23 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy.i, align 4
  %vchan.i = getelementptr inbounds %struct.mmp_pdma_phy, ptr %24, i32 0, i32 2
  %25 = ptrtoint ptr %vchan.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr null, ptr %vchan.i, align 4
  store ptr null, ptr %phy.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %phy_lock.i, i32 noundef %call8.i) #7
  br label %mmp_pdma_free_phy.exit

mmp_pdma_free_phy.exit:                           ; preds = %if.end.i18, %if.end8.mmp_pdma_free_phy.exit_crit_edge
  %idle = getelementptr i8, ptr %dchan, i32 320
  %26 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %26)
  store i8 1, ptr %idle, align 4
  %dev_addr = getelementptr i8, ptr %dchan, i32 256
  %27 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %dev_addr, align 4
  br label %cleanup

cleanup:                                          ; preds = %mmp_pdma_free_phy.exit, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %mmp_pdma_free_phy.exit ], [ -12, %do.end ], [ 1, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmp_pdma_free_chan_resources(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %desc_lock = getelementptr i8, ptr %dchan, i32 260
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %desc_lock) #7
  %chain_pending = getelementptr i8, ptr %dchan, i32 304
  %0 = ptrtoint ptr %chain_pending to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chain_pending, align 4
  %cmp.not19.i = icmp eq ptr %1, %chain_pending
  br i1 %cmp.not19.i, label %entry.mmp_pdma_free_desc_list.exit_crit_edge, label %for.body.lr.ph.i

entry.mmp_pdma_free_desc_list.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_free_desc_list.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %desc_pool.i = getelementptr i8, ptr %dchan, i32 324
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in20.i = phi ptr [ %1, %for.body.lr.ph.i ], [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ]
  %desc.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -32
  %2 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 32
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %9 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc_pool.i, align 4
  %phys.i = getelementptr i8, ptr %.pn.in20.i, i32 24
  %13 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phys.i, align 8
  tail call void @dma_pool_free(ptr noundef %12, ptr noundef %desc.0.i, i32 noundef %14) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %chain_pending
  br i1 %cmp.not.i, label %list_del.exit.i.mmp_pdma_free_desc_list.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.mmp_pdma_free_desc_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_free_desc_list.exit

mmp_pdma_free_desc_list.exit:                     ; preds = %list_del.exit.i.mmp_pdma_free_desc_list.exit_crit_edge, %entry.mmp_pdma_free_desc_list.exit_crit_edge
  %chain_running = getelementptr i8, ptr %dchan, i32 312
  %15 = ptrtoint ptr %chain_running to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chain_running, align 4
  %cmp.not19.i18 = icmp eq ptr %16, %chain_running
  br i1 %cmp.not19.i18, label %mmp_pdma_free_desc_list.exit.mmp_pdma_free_desc_list.exit33_crit_edge, label %for.body.lr.ph.i20

mmp_pdma_free_desc_list.exit.mmp_pdma_free_desc_list.exit33_crit_edge: ; preds = %mmp_pdma_free_desc_list.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_free_desc_list.exit33

for.body.lr.ph.i20:                               ; preds = %mmp_pdma_free_desc_list.exit
  %desc_pool.i19 = getelementptr i8, ptr %dchan, i32 324
  br label %for.body.i25

for.body.i25:                                     ; preds = %list_del.exit.i32.for.body.i25_crit_edge, %for.body.lr.ph.i20
  %.pn.in20.i21 = phi ptr [ %16, %for.body.lr.ph.i20 ], [ %.pn.i23, %list_del.exit.i32.for.body.i25_crit_edge ]
  %desc.0.i22 = getelementptr i8, ptr %.pn.in20.i21, i32 -32
  %17 = ptrtoint ptr %.pn.in20.i21 to i32
  call void @__asan_load4_noabort(i32 %17)
  %.pn.i23 = load ptr, ptr %.pn.in20.i21, align 32
  %call.i.i.i24 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i21) #7
  br i1 %call.i.i.i24, label %if.end.i.i.i28, label %for.body.i25.list_del.exit.i32_crit_edge

for.body.i25.list_del.exit.i32_crit_edge:         ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i32

if.end.i.i.i28:                                   ; preds = %for.body.i25
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i26 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i21, i32 0, i32 1
  %18 = ptrtoint ptr %prev.i.i.i26 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i.i.i26, align 4
  %20 = ptrtoint ptr %.pn.in20.i21 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %.pn.in20.i21, align 4
  %prev1.i.i.i.i27 = getelementptr inbounds %struct.list_head, ptr %21, i32 0, i32 1
  %22 = ptrtoint ptr %prev1.i.i.i.i27 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev1.i.i.i.i27, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %21, ptr %19, align 4
  br label %list_del.exit.i32

list_del.exit.i32:                                ; preds = %if.end.i.i.i28, %for.body.i25.list_del.exit.i32_crit_edge
  %24 = ptrtoint ptr %.pn.in20.i21 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i21, align 4
  %prev.i.i29 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i21, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i29 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i29, align 4
  %26 = ptrtoint ptr %desc_pool.i19 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %desc_pool.i19, align 4
  %phys.i30 = getelementptr i8, ptr %.pn.in20.i21, i32 24
  %28 = ptrtoint ptr %phys.i30 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %phys.i30, align 8
  tail call void @dma_pool_free(ptr noundef %27, ptr noundef %desc.0.i22, i32 noundef %29) #7
  %cmp.not.i31 = icmp eq ptr %.pn.i23, %chain_running
  br i1 %cmp.not.i31, label %list_del.exit.i32.mmp_pdma_free_desc_list.exit33_crit_edge, label %list_del.exit.i32.for.body.i25_crit_edge

list_del.exit.i32.for.body.i25_crit_edge:         ; preds = %list_del.exit.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i25

list_del.exit.i32.mmp_pdma_free_desc_list.exit33_crit_edge: ; preds = %list_del.exit.i32
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_free_desc_list.exit33

mmp_pdma_free_desc_list.exit33:                   ; preds = %list_del.exit.i32.mmp_pdma_free_desc_list.exit33_crit_edge, %mmp_pdma_free_desc_list.exit.mmp_pdma_free_desc_list.exit33_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %desc_lock, i32 noundef %call3) #7
  %desc_pool = getelementptr i8, ptr %dchan, i32 324
  %30 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc_pool, align 4
  tail call void @dma_pool_destroy(ptr noundef %31) #7
  %32 = ptrtoint ptr %desc_pool to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %desc_pool, align 4
  %idle = getelementptr i8, ptr %dchan, i32 320
  %33 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 1, ptr %idle, align 4
  %dev_addr = getelementptr i8, ptr %dchan, i32 256
  %34 = ptrtoint ptr %dev_addr to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 0, ptr %dev_addr, align 4
  %phy.i = getelementptr i8, ptr %dchan, i32 164
  %35 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %phy.i, align 4
  %tobool.not.i = icmp eq ptr %36, null
  br i1 %tobool.not.i, label %mmp_pdma_free_desc_list.exit33.mmp_pdma_free_phy.exit_crit_edge, label %if.end.i

mmp_pdma_free_desc_list.exit33.mmp_pdma_free_phy.exit_crit_edge: ; preds = %mmp_pdma_free_desc_list.exit33
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_free_phy.exit

if.end.i:                                         ; preds = %mmp_pdma_free_desc_list.exit33
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %dchan, align 4
  %drcmr.i = getelementptr i8, ptr %dchan, i32 252
  %39 = ptrtoint ptr %drcmr.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %drcmr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %40)
  %cmp.i = icmp ult i32 %40, 64
  %cond.i = select i1 %cmp.i, i32 256, i32 4352
  %and.i = shl i32 %40, 2
  %shl.i = and i32 %and.i, 252
  %add.i = or i32 %cond.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %41 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %phy.i, align 4
  %base.i = getelementptr inbounds %struct.mmp_pdma_phy, ptr %42, i32 0, i32 1
  %43 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %44, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #7, !srcloc !112
  %phy_lock.i = getelementptr i8, ptr %38, i32 368
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %phy_lock.i) #7
  %45 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %phy.i, align 4
  %vchan.i = getelementptr inbounds %struct.mmp_pdma_phy, ptr %46, i32 0, i32 2
  %47 = ptrtoint ptr %vchan.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr null, ptr %vchan.i, align 4
  store ptr null, ptr %phy.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %phy_lock.i, i32 noundef %call8.i) #7
  br label %mmp_pdma_free_phy.exit

mmp_pdma_free_phy.exit:                           ; preds = %if.end.i, %mmp_pdma_free_desc_list.exit33.mmp_pdma_free_phy.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pdma_tx_status(ptr noundef readonly %dchan, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dchan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #7, !srcloc !113
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
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
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.then.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_cookie_status.exit

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.dma_cookie_status.exit_crit_edge, label %if.else.i.i.if.end8.i.i_crit_edge

if.else.i.i.if.end8.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8.i.i

if.else.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_cookie_status.exit

if.end8.i.i:                                      ; preds = %if.else.i.i.if.end8.i.i_crit_edge, %if.then.i.i.if.end8.i.i_crit_edge
  br label %dma_cookie_status.exit

dma_cookie_status.exit:                           ; preds = %if.end8.i.i, %if.else.i.i.dma_cookie_status.exit_crit_edge, %if.then.i.i.dma_cookie_status.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end8.i.i ], [ 0, %if.then.i.i.dma_cookie_status.exit_crit_edge ], [ 0, %if.else.i.i.dma_cookie_status.exit_crit_edge ]
  %cyclic_first.i = getelementptr i8, ptr %dchan, i32 220
  %8 = ptrtoint ptr %cyclic_first.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %cyclic_first.i, align 4
  %cmp.not.i = icmp ne ptr %9, null
  %phy.i = getelementptr i8, ptr %dchan, i32 164
  %10 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %phy.i, align 4
  %tobool.not.i7 = icmp eq ptr %11, null
  br i1 %tobool.not.i7, label %dma_cookie_status.exit.mmp_pdma_residue.exit_crit_edge, label %if.end.i8

dma_cookie_status.exit.mmp_pdma_residue.exit_crit_edge: ; preds = %dma_cookie_status.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_residue.exit

if.end.i8:                                        ; preds = %dma_cookie_status.exit
  %dir.i = getelementptr i8, ptr %dchan, i32 168
  %12 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %13)
  %cmp1.i = icmp eq i32 %13, 2
  %base.i = getelementptr inbounds %struct.mmp_pdma_phy, ptr %11, i32 0, i32 1
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %16 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %11, align 4
  %shl.i = shl i32 %17, 4
  br i1 %cmp1.i, label %if.then2.i, label %if.else.i

if.then2.i:                                       ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #9
  %add.i = add i32 %shl.i, 520
  %add.ptr.i = getelementptr i8, ptr %15, i32 %add.i
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !108
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !114
  br label %if.end18.i

if.else.i:                                        ; preds = %if.end.i8
  call void @__sanitizer_cov_trace_pc() #9
  %add13.i = add i32 %shl.i, 516
  %add.ptr14.i = getelementptr i8, ptr %15, i32 %add13.i
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr14.i) #7, !srcloc !108
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !115
  br label %if.end18.i

if.end18.i:                                       ; preds = %if.else.i, %if.then2.i
  %curr.0.i = phi i32 [ %19, %if.then2.i ], [ %21, %if.else.i ]
  %chain_running.i = getelementptr i8, ptr %dchan, i32 312
  %22 = ptrtoint ptr %chain_running.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %.pn101.i = load ptr, ptr %chain_running.i, align 4
  %cmp22.not102.i = icmp eq ptr %.pn101.i, %chain_running.i
  br i1 %cmp22.not102.i, label %if.end18.i.mmp_pdma_residue.exit_crit_edge, label %for.body.lr.ph.i

if.end18.i.mmp_pdma_residue.exit_crit_edge:       ; preds = %if.end18.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_residue.exit

for.body.lr.ph.i:                                 ; preds = %if.end18.i
  %23 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %24)
  %cmp24.i = icmp eq i32 %24, 2
  %start.0.in.v.i = select i1 %cmp24.i, i32 -24, i32 -28
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn105.i = phi ptr [ %.pn101.i, %for.body.lr.ph.i ], [ %.pn.i, %for.inc.i.for.body.i_crit_edge ]
  %residue.0104.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %residue.2.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %passed.0.off0103.i = phi i1 [ false, %for.body.lr.ph.i ], [ %passed.2.off0.ph.i, %for.inc.i.for.body.i_crit_edge ]
  %start.0.in.i = getelementptr i8, ptr %.pn105.i, i32 %start.0.in.v.i
  %25 = ptrtoint ptr %start.0.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %start.0.i = load i32, ptr %start.0.in.i, align 4
  %dcmd.i = getelementptr i8, ptr %.pn105.i, i32 -20
  %26 = ptrtoint ptr %dcmd.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %dcmd.i, align 4
  %and.i = and i32 %27, 8191
  %add30.i = add i32 %and.i, %start.0.i
  br i1 %passed.0.off0103.i, label %if.then32.i, label %if.else34.i

if.then32.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %add33.i = add i32 %and.i, %residue.0104.i
  br label %if.end40.i

if.else34.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %curr.0.i, i32 %start.0.i)
  %cmp35.not.i = icmp ult i32 %curr.0.i, %start.0.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add30.i, i32 %curr.0.i)
  %cmp36.not.i = icmp ult i32 %add30.i, %curr.0.i
  %or.cond.i = select i1 %cmp35.not.i, i1 true, i1 %cmp36.not.i
  br i1 %or.cond.i, label %if.else34.i.if.end40.i_crit_edge, label %if.then37.i

if.else34.i.if.end40.i_crit_edge:                 ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end40.i

if.then37.i:                                      ; preds = %if.else34.i
  call void @__sanitizer_cov_trace_pc() #9
  %sub.i = sub i32 %residue.0104.i, %curr.0.i
  %add38.i = add i32 %sub.i, %add30.i
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then37.i, %if.else34.i.if.end40.i_crit_edge, %if.then32.i
  %passed.1.off0.i = phi i1 [ true, %if.then32.i ], [ true, %if.then37.i ], [ false, %if.else34.i.if.end40.i_crit_edge ]
  %residue.1.i = phi i32 [ %add33.i, %if.then32.i ], [ %add38.i, %if.then37.i ], [ %residue.0104.i, %if.else34.i.if.end40.i_crit_edge ]
  %and44.i = and i32 %27, 2097152
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and44.i)
  %tobool45.not.i = icmp eq i32 %and44.i, 0
  %or.cond100.i = select i1 %cmp.not.i, i1 true, i1 %tobool45.not.i
  br i1 %or.cond100.i, label %if.end40.i.for.inc.i_crit_edge, label %if.end47.i

if.end40.i.for.inc.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end47.i:                                       ; preds = %if.end40.i
  %async_tx.i = getelementptr i8, ptr %.pn105.i, i32 16
  %28 = ptrtoint ptr %async_tx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %async_tx.i, align 16
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %cookie)
  %cmp49.i = icmp eq i32 %29, %cookie
  br i1 %cmp49.i, label %if.end47.i.mmp_pdma_residue.exit_crit_edge, label %if.end47.i.for.inc.i_crit_edge

if.end47.i.for.inc.i_crit_edge:                   ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end47.i.mmp_pdma_residue.exit_crit_edge:       ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_residue.exit

for.inc.i:                                        ; preds = %if.end47.i.for.inc.i_crit_edge, %if.end40.i.for.inc.i_crit_edge
  %passed.2.off0.ph.i = phi i1 [ false, %if.end47.i.for.inc.i_crit_edge ], [ %passed.1.off0.i, %if.end40.i.for.inc.i_crit_edge ]
  %residue.2.ph.i = phi i32 [ 0, %if.end47.i.for.inc.i_crit_edge ], [ %residue.1.i, %if.end40.i.for.inc.i_crit_edge ]
  %30 = ptrtoint ptr %.pn105.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %.pn.i = load ptr, ptr %.pn105.i, align 4
  %cmp22.not.i = icmp eq ptr %.pn.i, %chain_running.i
  br i1 %cmp22.not.i, label %for.inc.i.mmp_pdma_residue.exit_crit_edge, label %for.inc.i.for.body.i_crit_edge

for.inc.i.for.body.i_crit_edge:                   ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

for.inc.i.mmp_pdma_residue.exit_crit_edge:        ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_residue.exit

mmp_pdma_residue.exit:                            ; preds = %for.inc.i.mmp_pdma_residue.exit_crit_edge, %if.end47.i.mmp_pdma_residue.exit_crit_edge, %if.end18.i.mmp_pdma_residue.exit_crit_edge, %dma_cookie_status.exit.mmp_pdma_residue.exit_crit_edge
  %retval.2.i = phi i32 [ 0, %dma_cookie_status.exit.mmp_pdma_residue.exit_crit_edge ], [ 0, %if.end18.i.mmp_pdma_residue.exit_crit_edge ], [ %residue.1.i, %if.end47.i.mmp_pdma_residue.exit_crit_edge ], [ %residue.2.ph.i, %for.inc.i.mmp_pdma_residue.exit_crit_edge ]
  br i1 %tobool.not.i, label %mmp_pdma_residue.exit.dma_set_residue.exit_crit_edge, label %if.then.i10

mmp_pdma_residue.exit.dma_set_residue.exit_crit_edge: ; preds = %mmp_pdma_residue.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %dma_set_residue.exit

if.then.i10:                                      ; preds = %mmp_pdma_residue.exit
  call void @__sanitizer_cov_trace_pc() #9
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %31 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %retval.2.i, ptr %residue1.i, align 4
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.then.i10, %mmp_pdma_residue.exit.dma_set_residue.exit_crit_edge
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mmp_pdma_prep_memcpy(ptr noundef %dchan, i32 noundef %dma_dst, i32 noundef %dma_src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %pdesc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dchan, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond117 = or i1 %tobool.not, %tobool1.not
  br i1 %or.cond117, label %entry.cleanup_crit_edge, label %if.end3

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end3:                                          ; preds = %entry
  %add.ptr = getelementptr i8, ptr %dchan, i32 -4
  %byte_align = getelementptr i8, ptr %dchan, i32 321
  %0 = ptrtoint ptr %byte_align to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %byte_align, align 1
  %dir = getelementptr i8, ptr %dchan, i32 168
  %1 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %dir, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %2)
  %tobool4.not = icmp eq i32 %2, 0
  br i1 %tobool4.not, label %if.then5, label %if.end3.if.end8_crit_edge

if.end3.if.end8_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end8

if.then5:                                         ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #9
  %3 = ptrtoint ptr %dir to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 0, ptr %dir, align 4
  %dcmd = getelementptr i8, ptr %dchan, i32 248
  %4 = ptrtoint ptr %dcmd to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1073545216, ptr %dcmd, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.then5, %if.end3.if.end8_crit_edge
  %desc_pool.i = getelementptr i8, ptr %dchan, i32 324
  %dcmd20 = getelementptr i8, ptr %dchan, i32 248
  br label %do.body

do.body:                                          ; preds = %list_add_tail.exit.do.body_crit_edge, %if.end8
  %len.addr.0 = phi i32 [ %len, %if.end8 ], [ %sub, %list_add_tail.exit.do.body_crit_edge ]
  %first.0 = phi ptr [ null, %if.end8 ], [ %first.1, %list_add_tail.exit.do.body_crit_edge ]
  %prev.0 = phi ptr [ null, %if.end8 ], [ %call.i.i, %list_add_tail.exit.do.body_crit_edge ]
  %dma_src.addr.0 = phi i32 [ %dma_src, %if.end8 ], [ %dma_src.addr.1, %list_add_tail.exit.do.body_crit_edge ]
  %dma_dst.addr.0 = phi i32 [ %dma_dst, %if.end8 ], [ %dma_dst.addr.1, %list_add_tail.exit.do.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pdesc.i) #7
  %5 = ptrtoint ptr %pdesc.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 -1, ptr %pdesc.i, align 4, !annotation !116
  %6 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc_pool.i, align 4
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %7, i32 noundef 2848, ptr noundef nonnull %pdesc.i) #7
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %do.end, label %if.end12

do.end:                                           ; preds = %do.body
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str.33) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdesc.i) #7
  %10 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.31) #10
  %tobool62.not = icmp eq ptr %first.0, null
  br i1 %tobool62.not, label %do.end.cleanup_crit_edge, label %if.then63

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %do.body
  %tx_list.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 2
  %12 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %tx_list.i, ptr %prev.i.i, align 4
  %async_tx.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 3
  call void @dma_async_tx_descriptor_init(ptr noundef %async_tx.i, ptr noundef %dchan) #7
  %tx_submit.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 3, i32 4
  %14 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mmp_pdma_tx_submit, ptr %tx_submit.i, align 16
  %15 = ptrtoint ptr %pdesc.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %pdesc.i, align 4
  %phys.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 3, i32 2
  %17 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %phys.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdesc.i) #7
  %18 = call i32 @llvm.umin.i32(i32 %len.addr.0, i32 8191)
  %and = and i32 %dma_src.addr.0, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  %and15 = and i32 %dma_dst.addr.0, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and15)
  %tobool16.not = icmp eq i32 %and15, 0
  %or.cond = select i1 %tobool14.not, i1 %tobool16.not, i1 false
  br i1 %or.cond, label %if.end12.if.end19_crit_edge, label %if.then17

if.end12.if.end19_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then17:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %byte_align to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %byte_align, align 1
  br label %if.end19

if.end19:                                         ; preds = %if.then17, %if.end12.if.end19_crit_edge
  %20 = ptrtoint ptr %dcmd20 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dcmd20, align 4
  %or22 = or i32 %21, %18
  %dcmd23 = getelementptr inbounds %struct.mmp_pdma_desc_hw, ptr %call.i.i, i32 0, i32 3
  %22 = ptrtoint ptr %dcmd23 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %or22, ptr %dcmd23, align 4
  %dsadr = getelementptr inbounds %struct.mmp_pdma_desc_hw, ptr %call.i.i, i32 0, i32 1
  %23 = ptrtoint ptr %dsadr to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %dma_src.addr.0, ptr %dsadr, align 4
  %dtadr = getelementptr inbounds %struct.mmp_pdma_desc_hw, ptr %call.i.i, i32 0, i32 2
  %24 = ptrtoint ptr %dtadr to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %dma_dst.addr.0, ptr %dtadr, align 8
  %tobool26.not = icmp eq ptr %first.0, null
  br i1 %tobool26.not, label %if.end19.if.end29_crit_edge, label %if.else

if.end19.if.end29_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %25 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %phys.i, align 8
  %27 = ptrtoint ptr %prev.0 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %prev.0, align 32
  br label %if.end29

if.end29:                                         ; preds = %if.else, %if.end19.if.end29_crit_edge
  %first.1 = phi ptr [ %first.0, %if.else ], [ %call.i.i, %if.end19.if.end29_crit_edge ]
  %28 = ptrtoint ptr %async_tx.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 0, ptr %async_tx.i, align 16
  %flags.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 3, i32 1
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %30, 2
  store i32 %or.i, ptr %flags.i, align 4
  %sub = sub i32 %len.addr.0, %18
  %31 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %dir, align 4
  %33 = zext i32 %32 to i64
  call void @__sanitizer_cov_trace_switch(i64 %33, ptr @__sancov_gen_cov_switch_values)
  switch i32 %32, label %if.end29.if.end48_crit_edge [
    i32 1, label %if.then34
    i32 2, label %if.then38
    i32 0, label %if.then43
  ]

if.end29.if.end48_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end48

if.then34:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %add = add i32 %dma_src.addr.0, %18
  br label %if.end48

if.then38:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %add39 = add i32 %dma_dst.addr.0, %18
  br label %if.end48

if.then43:                                        ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %add44 = add i32 %dma_src.addr.0, %18
  %add45 = add i32 %dma_dst.addr.0, %18
  br label %if.end48

if.end48:                                         ; preds = %if.then43, %if.then38, %if.then34, %if.end29.if.end48_crit_edge
  %dma_src.addr.1 = phi i32 [ %add, %if.then34 ], [ %dma_src.addr.0, %if.then38 ], [ %add44, %if.then43 ], [ %dma_src.addr.0, %if.end29.if.end48_crit_edge ]
  %dma_dst.addr.1 = phi i32 [ %dma_dst.addr.0, %if.then34 ], [ %add39, %if.then38 ], [ %add45, %if.then43 ], [ %dma_dst.addr.0, %if.end29.if.end48_crit_edge ]
  %node = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 1
  %tx_list = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.1, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.1, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i, align 4
  %call.i.i118 = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %35, ptr noundef %tx_list) #7
  br i1 %call.i.i118, label %if.end.i.i, label %if.end48.list_add_tail.exit_crit_edge

if.end48.list_add_tail.exit_crit_edge:            ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end48
  call void @__sanitizer_cov_trace_pc() #9
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %node, ptr %prev.i, align 4
  %37 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %tx_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 1, i32 1
  %38 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev3.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %node, ptr %35, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end48.list_add_tail.exit_crit_edge
  %tobool50.not = icmp eq i32 %sub, 0
  br i1 %tobool50.not, label %do.end51, label %list_add_tail.exit.do.body_crit_edge

list_add_tail.exit.do.body_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

do.end51:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %dcmd23.le = getelementptr inbounds %struct.mmp_pdma_desc_hw, ptr %call.i.i, i32 0, i32 3
  %async_tx52 = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.1, i32 0, i32 3
  %flags53 = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.1, i32 0, i32 3, i32 1
  %40 = ptrtoint ptr %flags53 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %flags, ptr %flags53, align 4
  %41 = ptrtoint ptr %async_tx52 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 -16, ptr %async_tx52, align 16
  %42 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %call.i.i, align 32
  %43 = ptrtoint ptr %dcmd23.le to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %dcmd23.le, align 4
  %or60 = or i32 %44, 2097152
  store i32 %or60, ptr %dcmd23.le, align 4
  %cyclic_first = getelementptr i8, ptr %dchan, i32 220
  %45 = ptrtoint ptr %cyclic_first to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %cyclic_first, align 4
  br label %cleanup

if.then63:                                        ; preds = %do.end
  %tx_list64 = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.0, i32 0, i32 2
  %46 = ptrtoint ptr %tx_list64 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %tx_list64, align 4
  %cmp.not19.i = icmp eq ptr %47, %tx_list64
  br i1 %cmp.not19.i, label %if.then63.cleanup_crit_edge, label %if.then63.for.body.i_crit_edge

if.then63.for.body.i_crit_edge:                   ; preds = %if.then63
  br label %for.body.i

if.then63.cleanup_crit_edge:                      ; preds = %if.then63
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then63.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %47, %if.then63.for.body.i_crit_edge ]
  %desc.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -32
  %48 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 32
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i.i, align 4
  %51 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %.pn.in20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev1.i.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %52, ptr %50, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %55 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i, align 4
  %prev.i.i120 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %56 = ptrtoint ptr %prev.i.i120 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i120, align 4
  %57 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %desc_pool.i, align 4
  %phys.i121 = getelementptr i8, ptr %.pn.in20.i, i32 24
  %59 = ptrtoint ptr %phys.i121 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %phys.i121, align 8
  call void @dma_pool_free(ptr noundef %58, ptr noundef %desc.0.i, i32 noundef %60) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %tx_list64
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %if.then63.cleanup_crit_edge, %do.end51, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %async_tx52, %do.end51 ], [ null, %entry.cleanup_crit_edge ], [ null, %do.end.cleanup_crit_edge ], [ null, %if.then63.cleanup_crit_edge ], [ null, %list_del.exit.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mmp_pdma_prep_slave_sg(ptr noundef %dchan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %dir, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  %pdesc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -4
  %cmp = icmp eq ptr %sgl, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp1 = icmp eq i32 %sg_len, 0
  %or.cond = or i1 %cmp, %cmp1
  br i1 %or.cond, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %byte_align = getelementptr i8, ptr %dchan, i32 321
  %0 = ptrtoint ptr %byte_align to i32
  call void @__asan_store1_noabort(i32 %0)
  store i8 0, ptr %byte_align, align 1
  %tobool.not.i = icmp eq ptr %dchan, null
  br i1 %tobool.not.i, label %if.end.for.body.lr.ph_crit_edge, label %if.end.i

if.end.for.body.lr.ph_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.lr.ph

if.end.i:                                         ; preds = %if.end
  %1 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %1, ptr @__sancov_gen_cov_switch_values.40)
  switch i32 %dir, label %if.end.i.if.end39.i_crit_edge [
    i32 2, label %if.end.i.if.end6.i_crit_edge
    i32 1, label %if.then3.i
  ]

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.end.i.if.end39.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %.sink128 = phi i32 [ -1879048192, %if.then3.i ], [ 1610612736, %if.end.i.if.end6.i_crit_edge ]
  %.sink127 = phi i32 [ 196, %if.then3.i ], [ 192, %if.end.i.if.end6.i_crit_edge ]
  %.sink126 = phi i32 [ 188, %if.then3.i ], [ 184, %if.end.i.if.end6.i_crit_edge ]
  %.sink = phi i32 [ 180, %if.then3.i ], [ 176, %if.end.i.if.end6.i_crit_edge ]
  %dcmd4.i = getelementptr i8, ptr %dchan, i32 248
  %2 = ptrtoint ptr %dcmd4.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %.sink128, ptr %dcmd4.i, align 4
  %dst_maxburst.i = getelementptr i8, ptr %dchan, i32 %.sink127
  %dst_addr_width.i = getelementptr i8, ptr %dchan, i32 %.sink126
  %dst_addr.i = getelementptr i8, ptr %dchan, i32 %.sink
  %3 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %width.0.i = load i32, ptr %dst_addr_width.i, align 4
  %4 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %addr.0.i = load i32, ptr %dst_addr.i, align 4
  %5 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %maxburst.0.i = load i32, ptr %dst_maxburst.i, align 4
  %6 = zext i32 %width.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.41)
  switch i32 %width.0.i, label %if.end6.i.if.end22.i_crit_edge [
    i32 1, label %if.end6.i.if.end22.sink.split.i_crit_edge
    i32 2, label %if.then12.i
    i32 4, label %if.then17.i
  ]

if.end6.i.if.end22.sink.split.i_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.sink.split.i

if.end6.i.if.end22.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.sink.split.i

if.then17.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.sink.split.i

if.end22.sink.split.i:                            ; preds = %if.then17.i, %if.then12.i, %if.end6.i.if.end22.sink.split.i_crit_edge
  %.sink9.i = phi i32 [ 32768, %if.then12.i ], [ 49152, %if.then17.i ], [ 16384, %if.end6.i.if.end22.sink.split.i_crit_edge ]
  %dcmd9.i = getelementptr i8, ptr %dchan, i32 248
  %7 = ptrtoint ptr %dcmd9.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %dcmd9.i, align 4
  %or14.i = or i32 %8, %.sink9.i
  store i32 %or14.i, ptr %dcmd9.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end22.sink.split.i, %if.end6.i.if.end22.i_crit_edge
  %9 = zext i32 %maxburst.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values.42)
  switch i32 %maxburst.0.i, label %if.end22.i.if.end39.i_crit_edge [
    i32 8, label %if.end22.i.if.end39.sink.split.i_crit_edge
    i32 16, label %if.then29.i
    i32 32, label %if.then34.i
  ]

if.end22.i.if.end39.sink.split.i_crit_edge:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.sink.split.i

if.end22.i.if.end39.i_crit_edge:                  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.i

if.then29.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.sink.split.i

if.then34.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.sink.split.i

if.end39.sink.split.i:                            ; preds = %if.then34.i, %if.then29.i, %if.end22.i.if.end39.sink.split.i_crit_edge
  %.sink11.i = phi i32 [ 131072, %if.then29.i ], [ 196608, %if.then34.i ], [ 65536, %if.end22.i.if.end39.sink.split.i_crit_edge ]
  %dcmd25.i = getelementptr i8, ptr %dchan, i32 248
  %10 = ptrtoint ptr %dcmd25.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %dcmd25.i, align 4
  %or31.i = or i32 %11, %.sink11.i
  store i32 %or31.i, ptr %dcmd25.i, align 4
  br label %if.end39.i

if.end39.i:                                       ; preds = %if.end39.sink.split.i, %if.end22.i.if.end39.i_crit_edge, %if.end.i.if.end39.i_crit_edge
  %addr.058.i = phi i32 [ %addr.0.i, %if.end22.i.if.end39.i_crit_edge ], [ 0, %if.end.i.if.end39.i_crit_edge ], [ %addr.0.i, %if.end39.sink.split.i ]
  %dir.i = getelementptr i8, ptr %dchan, i32 168
  %12 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %dir, ptr %dir.i, align 4
  %dev_addr.i = getelementptr i8, ptr %dchan, i32 256
  %13 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %addr.058.i, ptr %dev_addr.i, align 4
  br label %for.body.lr.ph

for.body.lr.ph:                                   ; preds = %if.end39.i, %if.end.for.body.lr.ph_crit_edge
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sgl, i32 0, i32 4
  %desc_pool.i = getelementptr i8, ptr %dchan, i32 324
  %dcmd = getelementptr i8, ptr %dchan, i32 248
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp15 = icmp eq i32 %dir, 1
  %dev_addr19 = getelementptr i8, ptr %dchan, i32 256
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0120 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sg.0119 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call35, %for.inc.for.body_crit_edge ]
  %new.0118 = phi ptr [ null, %for.body.lr.ph ], [ %call.i.i, %for.inc.for.body_crit_edge ]
  %first.0117 = phi ptr [ null, %for.body.lr.ph ], [ %first.2, %for.inc.for.body_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0119, i32 0, i32 3
  %14 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_address, align 4
  %16 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_length, align 4
  br label %do.body

do.body:                                          ; preds = %list_add_tail.exit.do.body_crit_edge, %for.body
  %first.1 = phi ptr [ %first.0117, %for.body ], [ %first.2, %list_add_tail.exit.do.body_crit_edge ]
  %prev.1 = phi ptr [ %new.0118, %for.body ], [ %call.i.i, %list_add_tail.exit.do.body_crit_edge ]
  %avail.0 = phi i32 [ %17, %for.body ], [ %sub, %list_add_tail.exit.do.body_crit_edge ]
  %addr.0 = phi i32 [ %15, %for.body ], [ %add, %list_add_tail.exit.do.body_crit_edge ]
  %18 = call i32 @llvm.umin.i32(i32 %avail.0, i32 8191)
  %and = and i32 %addr.0, 7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %do.body.if.end7_crit_edge, label %if.then5

do.body.if.end7_crit_edge:                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end7

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %byte_align to i32
  call void @__asan_store1_noabort(i32 %19)
  store i8 1, ptr %byte_align, align 1
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %do.body.if.end7_crit_edge
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pdesc.i) #7
  %20 = ptrtoint ptr %pdesc.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %pdesc.i, align 4, !annotation !116
  %21 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc_pool.i, align 4
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %22, i32 noundef 2848, ptr noundef nonnull %pdesc.i) #7
  %tobool.not.i105 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i105, label %do.end, label %if.end12

do.end:                                           ; preds = %if.end7
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.33) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdesc.i) #7
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.31) #10
  %tobool47.not = icmp eq ptr %first.1, null
  br i1 %tobool47.not, label %do.end.cleanup_crit_edge, label %if.then48

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %if.end7
  %tx_list.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tx_list.i, ptr %prev.i.i, align 4
  %async_tx.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 3
  call void @dma_async_tx_descriptor_init(ptr noundef %async_tx.i, ptr noundef %dchan) #7
  %tx_submit.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 3, i32 4
  %29 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mmp_pdma_tx_submit, ptr %tx_submit.i, align 16
  %30 = ptrtoint ptr %pdesc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pdesc.i, align 4
  %phys.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %phys.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdesc.i) #7
  %33 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dcmd, align 4
  %or = or i32 %34, %18
  %dcmd14 = getelementptr inbounds %struct.mmp_pdma_desc_hw, ptr %call.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %dcmd14 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or, ptr %dcmd14, align 4
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %dsadr = getelementptr inbounds %struct.mmp_pdma_desc_hw, ptr %call.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %dsadr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %addr.0, ptr %dsadr, align 4
  %37 = ptrtoint ptr %dev_addr19 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dev_addr19, align 4
  br label %if.end24

if.else:                                          ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  %39 = ptrtoint ptr %dev_addr19 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %dev_addr19, align 4
  %dsadr21 = getelementptr inbounds %struct.mmp_pdma_desc_hw, ptr %call.i.i, i32 0, i32 1
  %41 = ptrtoint ptr %dsadr21 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %40, ptr %dsadr21, align 4
  br label %if.end24

if.end24:                                         ; preds = %if.else, %if.then16
  %addr.0.sink = phi i32 [ %38, %if.then16 ], [ %addr.0, %if.else ]
  %42 = getelementptr inbounds %struct.mmp_pdma_desc_hw, ptr %call.i.i, i32 0, i32 2
  %43 = ptrtoint ptr %42 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %addr.0.sink, ptr %42, align 8
  %tobool25.not = icmp eq ptr %first.1, null
  br i1 %tobool25.not, label %if.end24.if.end29_crit_edge, label %if.else27

if.end24.if.end29_crit_edge:                      ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end29

if.else27:                                        ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #9
  %44 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phys.i, align 8
  %46 = ptrtoint ptr %prev.1 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %prev.1, align 32
  br label %if.end29

if.end29:                                         ; preds = %if.else27, %if.end24.if.end29_crit_edge
  %first.2 = phi ptr [ %first.1, %if.else27 ], [ %call.i.i, %if.end24.if.end29_crit_edge ]
  %47 = ptrtoint ptr %async_tx.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %async_tx.i, align 16
  %flags.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 3, i32 1
  %48 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %49, 2
  store i32 %or.i, ptr %flags.i, align 4
  %node = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 1
  %tx_list = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.2, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.2, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev.i, align 4
  %call.i.i107 = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %51, ptr noundef %tx_list) #7
  br i1 %call.i.i107, label %if.end.i.i, label %if.end29.list_add_tail.exit_crit_edge

if.end29.list_add_tail.exit_crit_edge:            ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %node, ptr %prev.i, align 4
  %53 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %tx_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 1, i32 1
  %54 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %node, ptr %51, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end29.list_add_tail.exit_crit_edge
  %add = add i32 %addr.0, %18
  %sub = sub i32 %avail.0, %18
  %tobool33.not = icmp eq i32 %sub, 0
  br i1 %tobool33.not, label %for.inc, label %list_add_tail.exit.do.body_crit_edge

list_add_tail.exit.do.body_crit_edge:             ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

for.inc:                                          ; preds = %list_add_tail.exit
  %inc = add nuw i32 %i.0120, 1
  %call35 = call ptr @sg_next(ptr noundef %sg.0119) #7
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.end:                                          ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #9
  %async_tx36 = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.2, i32 0, i32 3
  %56 = ptrtoint ptr %async_tx36 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 -16, ptr %async_tx36, align 16
  %flags39 = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.2, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %flags39 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %flags, ptr %flags39, align 4
  %58 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 1, ptr %call.i.i, align 32
  %dcmd43 = getelementptr inbounds %struct.mmp_pdma_desc_hw, ptr %call.i.i, i32 0, i32 3
  %59 = ptrtoint ptr %dcmd43 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dcmd43, align 4
  %or44 = or i32 %60, 2097152
  store i32 %or44, ptr %dcmd43, align 4
  %dir45 = getelementptr i8, ptr %dchan, i32 168
  %61 = ptrtoint ptr %dir45 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %dir, ptr %dir45, align 4
  %cyclic_first = getelementptr i8, ptr %dchan, i32 220
  %62 = ptrtoint ptr %cyclic_first to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr null, ptr %cyclic_first, align 4
  br label %cleanup

if.then48:                                        ; preds = %do.end
  %tx_list49 = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.1, i32 0, i32 2
  %63 = ptrtoint ptr %tx_list49 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %tx_list49, align 4
  %cmp.not19.i = icmp eq ptr %64, %tx_list49
  br i1 %cmp.not19.i, label %if.then48.cleanup_crit_edge, label %if.then48.for.body.i_crit_edge

if.then48.for.body.i_crit_edge:                   ; preds = %if.then48
  br label %for.body.i

if.then48.cleanup_crit_edge:                      ; preds = %if.then48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %if.then48.for.body.i_crit_edge
  %.pn.in20.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %64, %if.then48.for.body.i_crit_edge ]
  %desc.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -32
  %65 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 32
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %66 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %prev.i.i.i, align 4
  %68 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %.pn.in20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr %67, ptr %prev1.i.i.i.i, align 4
  %71 = ptrtoint ptr %67 to i32
  call void @__asan_store4_noabort(i32 %71)
  store volatile ptr %69, ptr %67, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %72 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i, align 4
  %prev.i.i109 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %73 = ptrtoint ptr %prev.i.i109 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i109, align 4
  %74 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %desc_pool.i, align 4
  %phys.i110 = getelementptr i8, ptr %.pn.in20.i, i32 24
  %76 = ptrtoint ptr %phys.i110 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %phys.i110, align 8
  call void @dma_pool_free(ptr noundef %75, ptr noundef %desc.0.i, i32 noundef %77) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %tx_list49
  br i1 %cmp.not.i, label %list_del.exit.i.cleanup_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.cleanup_crit_edge:                ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %list_del.exit.i.cleanup_crit_edge, %if.then48.cleanup_crit_edge, %for.end, %do.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %async_tx36, %for.end ], [ null, %entry.cleanup_crit_edge ], [ null, %do.end.cleanup_crit_edge ], [ null, %if.then48.cleanup_crit_edge ], [ null, %list_del.exit.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mmp_pdma_prep_dma_cyclic(ptr noundef %dchan, i32 noundef %buf_addr, i32 noundef %len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #2 align 64 {
entry:
  %pdesc.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dchan, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool1.not = icmp eq i32 %len, 0
  %or.cond = or i1 %tobool.not, %tobool1.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_len)
  %tobool3.not = icmp eq i32 %period_len, 0
  %or.cond101 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond101, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %rem = urem i32 %len, %period_len
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp.not = icmp ne i32 %rem, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 8191, i32 %period_len)
  %cmp6 = icmp ugt i32 %period_len, 8191
  %or.cond102 = or i1 %cmp6, %cmp.not
  br i1 %or.cond102, label %if.end.cleanup_crit_edge, label %if.end.i

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %if.end
  %add.ptr = getelementptr i8, ptr %dchan, i32 -4
  %0 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.43)
  switch i32 %direction, label %if.end.i.mmp_pdma_config_write.exit_crit_edge [
    i32 2, label %if.end.i.if.end6.i_crit_edge
    i32 1, label %if.then3.i
  ]

if.end.i.if.end6.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.end.i.mmp_pdma_config_write.exit_crit_edge:    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_config_write.exit

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.then3.i, %if.end.i.if.end6.i_crit_edge
  %.sink114 = phi i32 [ -1879048192, %if.then3.i ], [ 1610612736, %if.end.i.if.end6.i_crit_edge ]
  %.sink113 = phi i32 [ 196, %if.then3.i ], [ 192, %if.end.i.if.end6.i_crit_edge ]
  %.sink112 = phi i32 [ 188, %if.then3.i ], [ 184, %if.end.i.if.end6.i_crit_edge ]
  %.sink = phi i32 [ 180, %if.then3.i ], [ 176, %if.end.i.if.end6.i_crit_edge ]
  %dcmd4.i = getelementptr i8, ptr %dchan, i32 248
  %1 = ptrtoint ptr %dcmd4.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %.sink114, ptr %dcmd4.i, align 4
  %dst_maxburst.i = getelementptr i8, ptr %dchan, i32 %.sink113
  %dst_addr_width.i = getelementptr i8, ptr %dchan, i32 %.sink112
  %dst_addr.i = getelementptr i8, ptr %dchan, i32 %.sink
  %2 = ptrtoint ptr %dst_addr_width.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %width.0.i = load i32, ptr %dst_addr_width.i, align 4
  %3 = ptrtoint ptr %dst_addr.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %addr.0.i = load i32, ptr %dst_addr.i, align 4
  %4 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %maxburst.0.i = load i32, ptr %dst_maxburst.i, align 4
  %5 = zext i32 %width.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %5, ptr @__sancov_gen_cov_switch_values.44)
  switch i32 %width.0.i, label %if.end6.i.if.end22.i_crit_edge [
    i32 1, label %if.end6.i.if.end22.sink.split.i_crit_edge
    i32 2, label %if.then12.i
    i32 4, label %if.then17.i
  ]

if.end6.i.if.end22.sink.split.i_crit_edge:        ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.sink.split.i

if.end6.i.if.end22.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.i

if.then12.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.sink.split.i

if.then17.i:                                      ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end22.sink.split.i

if.end22.sink.split.i:                            ; preds = %if.then17.i, %if.then12.i, %if.end6.i.if.end22.sink.split.i_crit_edge
  %.sink9.i = phi i32 [ 32768, %if.then12.i ], [ 49152, %if.then17.i ], [ 16384, %if.end6.i.if.end22.sink.split.i_crit_edge ]
  %dcmd9.i = getelementptr i8, ptr %dchan, i32 248
  %6 = ptrtoint ptr %dcmd9.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dcmd9.i, align 4
  %or14.i = or i32 %7, %.sink9.i
  store i32 %or14.i, ptr %dcmd9.i, align 4
  br label %if.end22.i

if.end22.i:                                       ; preds = %if.end22.sink.split.i, %if.end6.i.if.end22.i_crit_edge
  %8 = zext i32 %maxburst.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.45)
  switch i32 %maxburst.0.i, label %if.end22.i.mmp_pdma_config_write.exit_crit_edge [
    i32 8, label %if.end22.i.if.end39.sink.split.i_crit_edge
    i32 16, label %if.then29.i
    i32 32, label %if.then34.i
  ]

if.end22.i.if.end39.sink.split.i_crit_edge:       ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.sink.split.i

if.end22.i.mmp_pdma_config_write.exit_crit_edge:  ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_config_write.exit

if.then29.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.sink.split.i

if.then34.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end39.sink.split.i

if.end39.sink.split.i:                            ; preds = %if.then34.i, %if.then29.i, %if.end22.i.if.end39.sink.split.i_crit_edge
  %.sink11.i = phi i32 [ 131072, %if.then29.i ], [ 196608, %if.then34.i ], [ 65536, %if.end22.i.if.end39.sink.split.i_crit_edge ]
  %dcmd25.i = getelementptr i8, ptr %dchan, i32 248
  %9 = ptrtoint ptr %dcmd25.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dcmd25.i, align 4
  %or31.i = or i32 %10, %.sink11.i
  store i32 %or31.i, ptr %dcmd25.i, align 4
  br label %mmp_pdma_config_write.exit

mmp_pdma_config_write.exit:                       ; preds = %if.end39.sink.split.i, %if.end22.i.mmp_pdma_config_write.exit_crit_edge, %if.end.i.mmp_pdma_config_write.exit_crit_edge
  %addr.058.i = phi i32 [ %addr.0.i, %if.end22.i.mmp_pdma_config_write.exit_crit_edge ], [ 0, %if.end.i.mmp_pdma_config_write.exit_crit_edge ], [ %addr.0.i, %if.end39.sink.split.i ]
  %dir.i = getelementptr i8, ptr %dchan, i32 168
  %11 = ptrtoint ptr %dir.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %direction, ptr %dir.i, align 4
  %dev_addr.i = getelementptr i8, ptr %dchan, i32 256
  %12 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %addr.058.i, ptr %dev_addr.i, align 4
  %13 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %13, ptr @__sancov_gen_cov_switch_values.46)
  switch i32 %direction, label %do.end [
    i32 1, label %sw.bb
    i32 2, label %sw.bb9
  ]

sw.bb:                                            ; preds = %mmp_pdma_config_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dev_addr.i, align 4
  br label %sw.epilog

sw.bb9:                                           ; preds = %mmp_pdma_config_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dev_addr.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dev_addr.i, align 4
  br label %sw.epilog

do.end:                                           ; preds = %mmp_pdma_config_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %add.ptr, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.36) #10
  br label %cleanup

sw.epilog:                                        ; preds = %sw.bb9, %sw.bb
  %dma_src.0 = phi i32 [ %17, %sw.bb9 ], [ %buf_addr, %sw.bb ]
  %dma_dst.0 = phi i32 [ %buf_addr, %sw.bb9 ], [ %15, %sw.bb ]
  %desc_pool.i = getelementptr i8, ptr %dchan, i32 324
  %dcmd = getelementptr i8, ptr %dchan, i32 248
  br label %do.body11

do.body11:                                        ; preds = %list_add_tail.exit.do.body11_crit_edge, %sw.epilog
  %first.0 = phi ptr [ null, %sw.epilog ], [ %first.1, %list_add_tail.exit.do.body11_crit_edge ]
  %prev.0 = phi ptr [ null, %sw.epilog ], [ %call.i.i, %list_add_tail.exit.do.body11_crit_edge ]
  %dma_src.1 = phi i32 [ %dma_src.0, %sw.epilog ], [ %dma_src.2, %list_add_tail.exit.do.body11_crit_edge ]
  %dma_dst.1 = phi i32 [ %dma_dst.0, %sw.epilog ], [ %dma_dst.2, %list_add_tail.exit.do.body11_crit_edge ]
  %len.addr.0 = phi i32 [ %len, %sw.epilog ], [ %sub, %list_add_tail.exit.do.body11_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %pdesc.i) #7
  %20 = ptrtoint ptr %pdesc.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %pdesc.i, align 4, !annotation !116
  %21 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %desc_pool.i, align 4
  %call.i.i = call ptr @dma_pool_alloc(ptr noundef %22, i32 noundef 2848, ptr noundef nonnull %pdesc.i) #7
  %tobool.not.i103 = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i103, label %do.end17, label %if.end19

do.end17:                                         ; preds = %do.body11
  %23 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %24, ptr noundef nonnull @.str.33) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdesc.i) #7
  %25 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %26, ptr noundef nonnull @.str.31) #10
  %tobool48.not = icmp eq ptr %first.0, null
  br i1 %tobool48.not, label %do.end17.cleanup_crit_edge, label %if.then49

do.end17.cleanup_crit_edge:                       ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end19:                                         ; preds = %do.body11
  %tx_list.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 2
  %27 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  %prev.i.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 2, i32 1
  %28 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %tx_list.i, ptr %prev.i.i, align 4
  %async_tx.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 3
  call void @dma_async_tx_descriptor_init(ptr noundef %async_tx.i, ptr noundef %dchan) #7
  %tx_submit.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 3, i32 4
  %29 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr @mmp_pdma_tx_submit, ptr %tx_submit.i, align 16
  %30 = ptrtoint ptr %pdesc.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %pdesc.i, align 4
  %phys.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 3, i32 2
  %32 = ptrtoint ptr %phys.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %phys.i, align 8
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %pdesc.i) #7
  %33 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %dcmd, align 4
  %or = or i32 %34, %period_len
  %or20 = or i32 %or, 2097152
  %dcmd21 = getelementptr inbounds %struct.mmp_pdma_desc_hw, ptr %call.i.i, i32 0, i32 3
  %35 = ptrtoint ptr %dcmd21 to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %or20, ptr %dcmd21, align 4
  %dsadr = getelementptr inbounds %struct.mmp_pdma_desc_hw, ptr %call.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %dsadr to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %dma_src.1, ptr %dsadr, align 4
  %dtadr = getelementptr inbounds %struct.mmp_pdma_desc_hw, ptr %call.i.i, i32 0, i32 2
  %37 = ptrtoint ptr %dtadr to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %dma_dst.1, ptr %dtadr, align 8
  %tobool24.not = icmp eq ptr %first.0, null
  br i1 %tobool24.not, label %if.end19.if.end27_crit_edge, label %if.else

if.end19.if.end27_crit_edge:                      ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end27

if.else:                                          ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  %38 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %phys.i, align 8
  %40 = ptrtoint ptr %prev.0 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %prev.0, align 32
  br label %if.end27

if.end27:                                         ; preds = %if.else, %if.end19.if.end27_crit_edge
  %first.1 = phi ptr [ %first.0, %if.else ], [ %call.i.i, %if.end19.if.end27_crit_edge ]
  %41 = ptrtoint ptr %async_tx.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %async_tx.i, align 16
  %flags.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 3, i32 1
  %42 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %flags.i, align 4
  %or.i = or i32 %43, 2
  store i32 %or.i, ptr %flags.i, align 4
  %sub = sub i32 %len.addr.0, %period_len
  %44 = ptrtoint ptr %dir.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dir.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %45)
  %cmp31 = icmp eq i32 %45, 1
  %add = select i1 %cmp31, i32 %period_len, i32 0
  %dma_src.2 = add i32 %add, %dma_src.1
  %add34 = select i1 %cmp31, i32 0, i32 %period_len
  %dma_dst.2 = add i32 %add34, %dma_dst.1
  %node = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 1
  %tx_list = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.1, i32 0, i32 2
  %prev.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.1, i32 0, i32 2, i32 1
  %46 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i, align 4
  %call.i.i105 = call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %47, ptr noundef %tx_list) #7
  br i1 %call.i.i105, label %if.end.i.i, label %if.end27.list_add_tail.exit_crit_edge

if.end27.list_add_tail.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  %48 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %node, ptr %prev.i, align 4
  %49 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %tx_list, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %call.i.i, i32 0, i32 1, i32 1
  %50 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %node, ptr %47, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.end27.list_add_tail.exit_crit_edge
  %tobool37.not = icmp eq i32 %sub, 0
  br i1 %tobool37.not, label %do.end38, label %list_add_tail.exit.do.body11_crit_edge

list_add_tail.exit.do.body11_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body11

do.end38:                                         ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #9
  %async_tx39 = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.1, i32 0, i32 3
  %flags40 = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.1, i32 0, i32 3, i32 1
  %52 = ptrtoint ptr %flags40 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %flags, ptr %flags40, align 4
  %53 = ptrtoint ptr %async_tx39 to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -16, ptr %async_tx39, align 16
  %phys44 = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.1, i32 0, i32 3, i32 2
  %54 = ptrtoint ptr %phys44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %phys44, align 8
  %56 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %call.i.i, align 32
  %cyclic_first = getelementptr i8, ptr %dchan, i32 220
  %57 = ptrtoint ptr %cyclic_first to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %first.1, ptr %cyclic_first, align 4
  br label %cleanup

if.then49:                                        ; preds = %do.end17
  call void @__sanitizer_cov_trace_pc() #9
  %tx_list50 = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %first.0, i32 0, i32 2
  call fastcc void @mmp_pdma_free_desc_list(ptr noundef %add.ptr, ptr noundef %tx_list50)
  br label %cleanup

cleanup:                                          ; preds = %if.then49, %do.end38, %do.end17.cleanup_crit_edge, %do.end, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ %async_tx39, %do.end38 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.then49 ], [ null, %do.end17.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mmp_pdma_issue_pending(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %dchan, i32 -4
  %desc_lock = getelementptr i8, ptr %dchan, i32 260
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %desc_lock) #7
  tail call fastcc void @start_pending_queue(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %desc_lock, i32 noundef %call3) #7
  ret void
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @mmp_pdma_config(ptr nocapture noundef writeonly %dchan, ptr nocapture noundef readonly %cfg) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_config = getelementptr i8, ptr %dchan, i32 172
  %0 = call ptr @memcpy(ptr %slave_config, ptr %cfg, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pdma_terminate_all(ptr noundef %dchan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %tobool.not = icmp eq ptr %dchan, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %phy = getelementptr i8, ptr %dchan, i32 164
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %if.end.mmp_pdma_free_phy.exit_crit_edge, label %disable_chan.exit

if.end.mmp_pdma_free_phy.exit_crit_edge:          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_free_phy.exit

disable_chan.exit:                                ; preds = %if.end
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %shl.i = shl i32 %3, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !117
  tail call void @arm_heavy_mb() #7
  %base.i = getelementptr inbounds %struct.mmp_pdma_phy, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %5, i32 %shl.i
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !118
  %7 = and i32 %6, -129
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %9, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 %7) #7, !srcloc !112
  %10 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pr = load ptr, ptr %phy, align 4
  %tobool.not.i17 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i17, label %disable_chan.exit.mmp_pdma_free_phy.exit_crit_edge, label %if.end.i21

disable_chan.exit.mmp_pdma_free_phy.exit_crit_edge: ; preds = %disable_chan.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_free_phy.exit

if.end.i21:                                       ; preds = %disable_chan.exit
  call void @__sanitizer_cov_trace_pc() #9
  %11 = ptrtoint ptr %dchan to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %dchan, align 4
  %drcmr.i = getelementptr i8, ptr %dchan, i32 252
  %13 = ptrtoint ptr %drcmr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %drcmr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %14)
  %cmp.i = icmp ult i32 %14, 64
  %cond.i = select i1 %cmp.i, i32 256, i32 4352
  %and.i = shl i32 %14, 2
  %shl.i18 = and i32 %and.i, 252
  %add.i = or i32 %cond.i, %shl.i18
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %15 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy, align 4
  %base.i19 = getelementptr inbounds %struct.mmp_pdma_phy, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %base.i19 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i19, align 4
  %add.ptr3.i20 = getelementptr i8, ptr %18, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i20, i32 0) #7, !srcloc !112
  %phy_lock.i = getelementptr i8, ptr %12, i32 368
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %phy_lock.i) #7
  %19 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %phy, align 4
  %vchan.i = getelementptr inbounds %struct.mmp_pdma_phy, ptr %20, i32 0, i32 2
  %21 = ptrtoint ptr %vchan.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr null, ptr %vchan.i, align 4
  store ptr null, ptr %phy, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %phy_lock.i, i32 noundef %call8.i) #7
  br label %mmp_pdma_free_phy.exit

mmp_pdma_free_phy.exit:                           ; preds = %if.end.i21, %disable_chan.exit.mmp_pdma_free_phy.exit_crit_edge, %if.end.mmp_pdma_free_phy.exit_crit_edge
  %desc_lock = getelementptr i8, ptr %dchan, i32 260
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %desc_lock) #7
  %chain_pending = getelementptr i8, ptr %dchan, i32 304
  %22 = ptrtoint ptr %chain_pending to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chain_pending, align 4
  %cmp.not19.i = icmp eq ptr %23, %chain_pending
  br i1 %cmp.not19.i, label %mmp_pdma_free_phy.exit.mmp_pdma_free_desc_list.exit_crit_edge, label %for.body.lr.ph.i

mmp_pdma_free_phy.exit.mmp_pdma_free_desc_list.exit_crit_edge: ; preds = %mmp_pdma_free_phy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_free_desc_list.exit

for.body.lr.ph.i:                                 ; preds = %mmp_pdma_free_phy.exit
  %desc_pool.i = getelementptr i8, ptr %dchan, i32 324
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in20.i = phi ptr [ %23, %for.body.lr.ph.i ], [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ]
  %desc.0.i = getelementptr i8, ptr %.pn.in20.i, i32 -32
  %24 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %.pn.i = load ptr, ptr %.pn.in20.i, align 32
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %25 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %prev.i.i.i, align 4
  %27 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %.pn.in20.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev1.i.i.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %28, ptr %26, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %31 = ptrtoint ptr %.pn.in20.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i, i32 0, i32 1
  %32 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %33 = ptrtoint ptr %desc_pool.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %desc_pool.i, align 4
  %phys.i = getelementptr i8, ptr %.pn.in20.i, i32 24
  %35 = ptrtoint ptr %phys.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %phys.i, align 8
  tail call void @dma_pool_free(ptr noundef %34, ptr noundef %desc.0.i, i32 noundef %36) #7
  %cmp.not.i = icmp eq ptr %.pn.i, %chain_pending
  br i1 %cmp.not.i, label %list_del.exit.i.mmp_pdma_free_desc_list.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

list_del.exit.i.mmp_pdma_free_desc_list.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_free_desc_list.exit

mmp_pdma_free_desc_list.exit:                     ; preds = %list_del.exit.i.mmp_pdma_free_desc_list.exit_crit_edge, %mmp_pdma_free_phy.exit.mmp_pdma_free_desc_list.exit_crit_edge
  %chain_running = getelementptr i8, ptr %dchan, i32 312
  %37 = ptrtoint ptr %chain_running to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chain_running, align 4
  %cmp.not19.i22 = icmp eq ptr %38, %chain_running
  br i1 %cmp.not19.i22, label %mmp_pdma_free_desc_list.exit.mmp_pdma_free_desc_list.exit37_crit_edge, label %for.body.lr.ph.i24

mmp_pdma_free_desc_list.exit.mmp_pdma_free_desc_list.exit37_crit_edge: ; preds = %mmp_pdma_free_desc_list.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_free_desc_list.exit37

for.body.lr.ph.i24:                               ; preds = %mmp_pdma_free_desc_list.exit
  %desc_pool.i23 = getelementptr i8, ptr %dchan, i32 324
  br label %for.body.i29

for.body.i29:                                     ; preds = %list_del.exit.i36.for.body.i29_crit_edge, %for.body.lr.ph.i24
  %.pn.in20.i25 = phi ptr [ %38, %for.body.lr.ph.i24 ], [ %.pn.i27, %list_del.exit.i36.for.body.i29_crit_edge ]
  %desc.0.i26 = getelementptr i8, ptr %.pn.in20.i25, i32 -32
  %39 = ptrtoint ptr %.pn.in20.i25 to i32
  call void @__asan_load4_noabort(i32 %39)
  %.pn.i27 = load ptr, ptr %.pn.in20.i25, align 32
  %call.i.i.i28 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20.i25) #7
  br i1 %call.i.i.i28, label %if.end.i.i.i32, label %for.body.i29.list_del.exit.i36_crit_edge

for.body.i29.list_del.exit.i36_crit_edge:         ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit.i36

if.end.i.i.i32:                                   ; preds = %for.body.i29
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i.i30 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i25, i32 0, i32 1
  %40 = ptrtoint ptr %prev.i.i.i30 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev.i.i.i30, align 4
  %42 = ptrtoint ptr %.pn.in20.i25 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %.pn.in20.i25, align 4
  %prev1.i.i.i.i31 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %prev1.i.i.i.i31 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %41, ptr %prev1.i.i.i.i31, align 4
  %45 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %43, ptr %41, align 4
  br label %list_del.exit.i36

list_del.exit.i36:                                ; preds = %if.end.i.i.i32, %for.body.i29.list_del.exit.i36_crit_edge
  %46 = ptrtoint ptr %.pn.in20.i25 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20.i25, align 4
  %prev.i.i33 = getelementptr inbounds %struct.list_head, ptr %.pn.in20.i25, i32 0, i32 1
  %47 = ptrtoint ptr %prev.i.i33 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i33, align 4
  %48 = ptrtoint ptr %desc_pool.i23 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %desc_pool.i23, align 4
  %phys.i34 = getelementptr i8, ptr %.pn.in20.i25, i32 24
  %50 = ptrtoint ptr %phys.i34 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %phys.i34, align 8
  tail call void @dma_pool_free(ptr noundef %49, ptr noundef %desc.0.i26, i32 noundef %51) #7
  %cmp.not.i35 = icmp eq ptr %.pn.i27, %chain_running
  br i1 %cmp.not.i35, label %list_del.exit.i36.mmp_pdma_free_desc_list.exit37_crit_edge, label %list_del.exit.i36.for.body.i29_crit_edge

list_del.exit.i36.for.body.i29_crit_edge:         ; preds = %list_del.exit.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i29

list_del.exit.i36.mmp_pdma_free_desc_list.exit37_crit_edge: ; preds = %list_del.exit.i36
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_free_desc_list.exit37

mmp_pdma_free_desc_list.exit37:                   ; preds = %list_del.exit.i36.mmp_pdma_free_desc_list.exit37_crit_edge, %mmp_pdma_free_desc_list.exit.mmp_pdma_free_desc_list.exit37_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %desc_lock, i32 noundef %call3) #7
  %idle = getelementptr i8, ptr %dchan, i32 320
  %52 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %idle, align 4
  br label %cleanup

cleanup:                                          ; preds = %mmp_pdma_free_desc_list.exit37, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %mmp_pdma_free_desc_list.exit37 ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mmp_pdma_dma_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %device = getelementptr inbounds %struct.mmp_pdma_device, ptr %1, i32 0, i32 3
  %call = tail call ptr @dma_get_any_slave_channel(ptr noundef %device) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %drcmr = getelementptr i8, ptr %call, i32 252
  %4 = ptrtoint ptr %drcmr to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %drcmr, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret ptr %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pdma_chan_handler(i32 noundef %irq, ptr nocapture noundef readonly %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.mmp_pdma_phy, ptr %dev_id, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 240
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #7, !srcloc !108
  %3 = tail call i32 @llvm.bswap.i32(i32 %2) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !119
  %4 = ptrtoint ptr %dev_id to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dev_id, align 4
  %shl3.i = shl nuw i32 1, %5
  %and.i = and i32 %shl3.i, %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %if.end.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %shl.i = shl i32 %5, 2
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr7.i = getelementptr i8, ptr %7, i32 %shl.i
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !120
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !121
  tail call void @arm_heavy_mb() #7
  %9 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %10, i32 %shl.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr12.i, i32 %8) #7, !srcloc !112
  %11 = and i32 %8, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool14.not.i = icmp eq i32 %11, 0
  br i1 %tobool14.not.i, label %if.end.i.if.end_crit_edge, label %land.lhs.true.i

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

land.lhs.true.i:                                  ; preds = %if.end.i
  %vchan.i = getelementptr inbounds %struct.mmp_pdma_phy, ptr %dev_id, i32 0, i32 2
  %12 = ptrtoint ptr %vchan.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vchan.i, align 4
  %tobool15.not.i = icmp eq ptr %13, null
  br i1 %tobool15.not.i, label %land.lhs.true.i.if.end_crit_edge, label %do.end19.i

land.lhs.true.i.if.end_crit_edge:                 ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

do.end19.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %13, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %15, ptr noundef nonnull @.str.16) #10
  br label %if.end

if.end:                                           ; preds = %do.end19.i, %land.lhs.true.i.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %vchan = getelementptr inbounds %struct.mmp_pdma_phy, ptr %dev_id, i32 0, i32 2
  %16 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vchan, align 4
  %state.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %17, i32 0, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i2 = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i2, label %if.then.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %tasklet = getelementptr inbounds %struct.mmp_pdma_chan, ptr %17, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @dma_do_tasklet(ptr noundef %t) #2 align 64 {
entry:
  %dummy_result.i138 = alloca %struct.dmaengine_result, align 8
  %dummy_result.i = alloca %struct.dmaengine_result, align 8
  %chain_cleanup = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -228
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %chain_cleanup) #7
  %0 = getelementptr inbounds %struct.list_head, ptr %chain_cleanup, i32 0, i32 1
  %1 = ptrtoint ptr %chain_cleanup to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %chain_cleanup, ptr %chain_cleanup, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %chain_cleanup, ptr %0, align 4
  %cyclic_first = getelementptr i8, ptr %t, i32 -4
  %3 = ptrtoint ptr %cyclic_first to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %cyclic_first, align 4
  %tobool.not = icmp eq ptr %4, null
  %desc_lock15 = getelementptr i8, ptr %t, i32 36
  %call17 = call i32 @_raw_spin_lock_irqsave(ptr noundef %desc_lock15) #7
  br i1 %tobool.not, label %do.body9, label %do.body1

do.body1:                                         ; preds = %entry
  %5 = ptrtoint ptr %cyclic_first to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %cyclic_first, align 4
  %callback.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %6, i32 0, i32 3, i32 6
  %7 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %6, i32 0, i32 3, i32 7
  %9 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr inbounds %struct.mmp_pdma_desc_sw, ptr %6, i32 0, i32 3, i32 8
  %11 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %callback_param.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %desc_lock15, i32 noundef %call17) #7
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #7
  %13 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %13)
  store i64 0, ptr %dummy_result.i, align 8
  %tobool.not.i = icmp eq ptr %10, null
  br i1 %tobool.not.i, label %if.else.i, label %if.then.i

if.then.i:                                        ; preds = %do.body1
  call void @__sanitizer_cov_trace_pc() #9
  call void %10(ptr noundef %12, ptr noundef nonnull %dummy_result.i) #7
  br label %dmaengine_desc_callback_invoke.exit

if.else.i:                                        ; preds = %do.body1
  %tobool4.not.i = icmp eq ptr %8, null
  br i1 %tobool4.not.i, label %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, label %if.then5.i

if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_desc_callback_invoke.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #9
  call void %8(ptr noundef %12) #7
  br label %dmaengine_desc_callback_invoke.exit

dmaengine_desc_callback_invoke.exit:              ; preds = %if.then5.i, %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, %if.then.i
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i) #7
  br label %cleanup

do.body9:                                         ; preds = %entry
  %chain_running = getelementptr i8, ptr %t, i32 88
  %14 = ptrtoint ptr %chain_running to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chain_running, align 4
  br label %for.cond

for.cond:                                         ; preds = %list_move.exit.for.cond_crit_edge, %do.body9
  %.pn.in = phi ptr [ %15, %do.body9 ], [ %.pn, %list_move.exit.for.cond_crit_edge ]
  %16 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %16)
  %.pn = load ptr, ptr %.pn.in, align 32
  %cmp32.not = icmp eq ptr %.pn.in, %chain_running
  br i1 %cmp32.not, label %for.cond.for.end_crit_edge, label %for.body

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.cond
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.__list_del_entry.exit.i_crit_edge

for.body.__list_del_entry.exit.i_crit_edge:       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %.pn.in to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %.pn.in, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %for.body.__list_del_entry.exit.i_crit_edge
  %23 = ptrtoint ptr %chain_cleanup to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chain_cleanup, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in, ptr noundef nonnull %chain_cleanup, ptr noundef %24) #7
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move.exit_crit_edge

__list_del_entry.exit.i.list_move.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_move.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  %prev1.i.i2.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %25 = ptrtoint ptr %prev1.i.i2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %.pn.in, ptr %prev1.i.i2.i, align 4
  %26 = ptrtoint ptr %.pn.in to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %24, ptr %.pn.in, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %chain_cleanup, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %chain_cleanup to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %.pn.in, ptr %chain_cleanup, align 4
  br label %list_move.exit

list_move.exit:                                   ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move.exit_crit_edge
  %dcmd = getelementptr i8, ptr %.pn.in, i32 -20
  %29 = ptrtoint ptr %dcmd to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dcmd, align 4
  %and = and i32 %30, 2097152
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %list_move.exit.for.cond_crit_edge, label %if.then37

list_move.exit.for.cond_crit_edge:                ; preds = %list_move.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.cond

if.then37:                                        ; preds = %list_move.exit
  %async_tx38 = getelementptr i8, ptr %.pn.in, i32 16
  %31 = ptrtoint ptr %async_tx38 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %async_tx38, align 16
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %32)
  %cmp.i = icmp slt i32 %32, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !107

do.body2.i:                                       ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #7, !srcloc !122
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #9
  %chan.i = getelementptr i8, ptr %.pn.in, i32 28
  %33 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %34, i32 0, i32 3
  %35 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %32, ptr %completed_cookie.i, align 4
  %36 = ptrtoint ptr %async_tx38 to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 0, ptr %async_tx38, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_do_tasklet.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_do_tasklet, %for.end)) #7
          to label %if.then49 [label %for.end], !srcloc !123

if.then49:                                        ; preds = %dma_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #9
  %37 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %add.ptr, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_do_tasklet.__UNIQUE_ID_ddebug243, ptr noundef %38, ptr noundef nonnull @.str.24, i32 noundef %32) #7
  br label %for.end

for.end:                                          ; preds = %if.then49, %dma_cookie_complete.exit, %for.cond.for.end_crit_edge
  %39 = ptrtoint ptr %chain_running to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load volatile ptr, ptr %chain_running, align 4
  %cmp.i127 = icmp eq ptr %40, %chain_running
  %idle = getelementptr i8, ptr %t, i32 96
  %frombool62 = zext i1 %cmp.i127 to i8
  %41 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %41)
  store i8 %frombool62, ptr %idle, align 4
  call fastcc void @start_pending_queue(ptr noundef %add.ptr)
  call void @_raw_spin_unlock_irqrestore(ptr noundef %desc_lock15, i32 noundef %call17) #7
  %42 = ptrtoint ptr %chain_cleanup to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chain_cleanup, align 4
  %cmp75.not155 = icmp eq ptr %43, %chain_cleanup
  br i1 %cmp75.not155, label %for.end.cleanup_crit_edge, label %for.body79.lr.ph

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body79.lr.ph:                                 ; preds = %for.end
  %desc_pool = getelementptr i8, ptr %t, i32 100
  br label %for.body79

for.body79:                                       ; preds = %dmaengine_desc_callback_invoke.exit147.for.body79_crit_edge, %for.body79.lr.ph
  %.pn122.in156 = phi ptr [ %43, %for.body79.lr.ph ], [ %.pn122, %dmaengine_desc_callback_invoke.exit147.for.body79_crit_edge ]
  %desc.1 = getelementptr i8, ptr %.pn122.in156, i32 -32
  %44 = ptrtoint ptr %.pn122.in156 to i32
  call void @__asan_load4_noabort(i32 %44)
  %.pn122 = load ptr, ptr %.pn122.in156, align 32
  %call.i.i128 = call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn122.in156) #7
  br i1 %call.i.i128, label %if.end.i.i131, label %for.body79.list_del.exit_crit_edge

for.body79.list_del.exit_crit_edge:               ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i131:                                    ; preds = %for.body79
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i129 = getelementptr inbounds %struct.list_head, ptr %.pn122.in156, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i.i129 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev.i.i129, align 4
  %47 = ptrtoint ptr %.pn122.in156 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %.pn122.in156, align 4
  %prev1.i.i.i130 = getelementptr inbounds %struct.list_head, ptr %48, i32 0, i32 1
  %49 = ptrtoint ptr %prev1.i.i.i130 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev1.i.i.i130, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %48, ptr %46, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i131, %for.body79.list_del.exit_crit_edge
  %51 = ptrtoint ptr %.pn122.in156 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn122.in156, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn122.in156, i32 0, i32 1
  %52 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %callback.i133 = getelementptr i8, ptr %.pn122.in156, i32 40
  %53 = ptrtoint ptr %callback.i133 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %callback.i133, align 4
  %callback_result.i134 = getelementptr i8, ptr %.pn122.in156, i32 44
  %55 = ptrtoint ptr %callback_result.i134 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %callback_result.i134, align 4
  %callback_param.i136 = getelementptr i8, ptr %.pn122.in156, i32 48
  %57 = ptrtoint ptr %callback_param.i136 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %callback_param.i136, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i138) #7
  %59 = ptrtoint ptr %dummy_result.i138 to i32
  call void @__asan_store8_noabort(i32 %59)
  store i64 0, ptr %dummy_result.i138, align 8
  %tobool.not.i140 = icmp eq ptr %56, null
  br i1 %tobool.not.i140, label %if.else.i144, label %if.then.i142

if.then.i142:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  call void %56(ptr noundef %58, ptr noundef nonnull %dummy_result.i138) #7
  br label %dmaengine_desc_callback_invoke.exit147

if.else.i144:                                     ; preds = %list_del.exit
  %tobool4.not.i143 = icmp eq ptr %54, null
  br i1 %tobool4.not.i143, label %if.else.i144.dmaengine_desc_callback_invoke.exit147_crit_edge, label %if.then5.i146

if.else.i144.dmaengine_desc_callback_invoke.exit147_crit_edge: ; preds = %if.else.i144
  call void @__sanitizer_cov_trace_pc() #9
  br label %dmaengine_desc_callback_invoke.exit147

if.then5.i146:                                    ; preds = %if.else.i144
  call void @__sanitizer_cov_trace_pc() #9
  call void %54(ptr noundef %58) #7
  br label %dmaengine_desc_callback_invoke.exit147

dmaengine_desc_callback_invoke.exit147:           ; preds = %if.then5.i146, %if.else.i144.dmaengine_desc_callback_invoke.exit147_crit_edge, %if.then.i142
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i138) #7
  %60 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %desc_pool, align 4
  %phys = getelementptr i8, ptr %.pn122.in156, i32 24
  %62 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %phys, align 4
  call void @dma_pool_free(ptr noundef %61, ptr noundef %desc.1, i32 noundef %63) #7
  %cmp75.not = icmp eq ptr %.pn122, %chain_cleanup
  br i1 %cmp75.not, label %dmaengine_desc_callback_invoke.exit147.cleanup_crit_edge, label %dmaengine_desc_callback_invoke.exit147.for.body79_crit_edge

dmaengine_desc_callback_invoke.exit147.for.body79_crit_edge: ; preds = %dmaengine_desc_callback_invoke.exit147
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body79

dmaengine_desc_callback_invoke.exit147.cleanup_crit_edge: ; preds = %dmaengine_desc_callback_invoke.exit147
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

cleanup:                                          ; preds = %dmaengine_desc_callback_invoke.exit147.cleanup_crit_edge, %for.end.cleanup_crit_edge, %dmaengine_desc_callback_invoke.exit
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %chain_cleanup) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @start_pending_queue(ptr noundef %chan) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %idle = getelementptr inbounds %struct.mmp_pdma_chan, ptr %chan, i32 0, i32 14
  %0 = ptrtoint ptr %idle to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %idle, align 4, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body, label %if.end6

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_pending_queue.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@start_pending_queue, %cleanup)) #7
          to label %if.then5 [label %cleanup], !srcloc !123

if.then5:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_pending_queue.__UNIQUE_ID_ddebug236, ptr noundef %3, ptr noundef nonnull @.str.26) #7
  br label %cleanup

if.end6:                                          ; preds = %entry
  %chain_pending = getelementptr inbounds %struct.mmp_pdma_chan, ptr %chan, i32 0, i32 12
  %4 = ptrtoint ptr %chain_pending to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %chain_pending, align 4
  %cmp.i.not = icmp eq ptr %5, %chain_pending
  %phy.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %chan, i32 0, i32 3
  %6 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy.i, align 4
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %cmp.i.not, label %if.then9, label %if.end29

if.then9:                                         ; preds = %if.end6
  br i1 %tobool.not.i, label %if.then9.mmp_pdma_free_phy.exit_crit_edge, label %if.end.i

if.then9.mmp_pdma_free_phy.exit_crit_edge:        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  br label %mmp_pdma_free_phy.exit

if.end.i:                                         ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #9
  %chan.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan.i, align 4
  %drcmr.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %chan, i32 0, i32 9
  %10 = ptrtoint ptr %drcmr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %drcmr.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %11)
  %cmp.i85 = icmp ult i32 %11, 64
  %cond.i = select i1 %cmp.i85, i32 256, i32 4352
  %and.i = shl i32 %11, 2
  %shl.i = and i32 %and.i, 252
  %add.i = or i32 %cond.i, %shl.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !111
  tail call void @arm_heavy_mb() #7
  %12 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy.i, align 4
  %base.i = getelementptr inbounds %struct.mmp_pdma_phy, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i, align 4
  %add.ptr3.i = getelementptr i8, ptr %15, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr3.i, i32 0) #7, !srcloc !112
  %phy_lock.i = getelementptr i8, ptr %9, i32 368
  %call8.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %phy_lock.i) #7
  %16 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %phy.i, align 4
  %vchan.i = getelementptr inbounds %struct.mmp_pdma_phy, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %vchan.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr null, ptr %vchan.i, align 4
  store ptr null, ptr %phy.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %phy_lock.i, i32 noundef %call8.i) #7
  br label %mmp_pdma_free_phy.exit

mmp_pdma_free_phy.exit:                           ; preds = %if.end.i, %if.then9.mmp_pdma_free_phy.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_pending_queue.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@start_pending_queue, %cleanup)) #7
          to label %if.then24 [label %cleanup], !srcloc !123

if.then24:                                        ; preds = %mmp_pdma_free_phy.exit
  call void @__sanitizer_cov_trace_pc() #9
  %19 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %chan, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_pending_queue.__UNIQUE_ID_ddebug237, ptr noundef %20, ptr noundef nonnull @.str.27) #7
  br label %cleanup

if.end29:                                         ; preds = %if.end6
  br i1 %tobool.not.i, label %if.then31, label %if.end29.if.end57_crit_edge

if.end29.if.end57_crit_edge:                      ; preds = %if.end29
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

if.then31:                                        ; preds = %if.end29
  %chan.i86 = getelementptr inbounds %struct.mmp_pdma_chan, ptr %chan, i32 0, i32 1
  %21 = ptrtoint ptr %chan.i86 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %chan.i86, align 4
  %add.ptr.i = getelementptr i8, ptr %22, i32 -12
  %phy_lock.i87 = getelementptr i8, ptr %22, i32 368
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %phy_lock.i87) #7
  %23 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %add.ptr.i, align 4
  %sub.i = add i32 %24, 15
  %and.i88 = lshr i32 %sub.i, 2
  %25 = and i32 %and.i88, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %cmp1038.i = icmp sgt i32 %24, 0
  %phy17.i = getelementptr i8, ptr %22, i32 364
  br i1 %cmp1038.i, label %if.then31.for.body12.i_crit_edge, label %if.then31.for.inc21.i_crit_edge

if.then31.for.inc21.i_crit_edge:                  ; preds = %if.then31
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i

if.then31.for.body12.i_crit_edge:                 ; preds = %if.then31
  br label %for.body12.i

for.body12.i:                                     ; preds = %for.inc.i.for.body12.i_crit_edge, %if.then31.for.body12.i_crit_edge
  %i.039.i = phi i32 [ %inc.i, %for.inc.i.for.body12.i_crit_edge ], [ 0, %if.then31.for.body12.i_crit_edge ]
  %26 = and i32 %i.039.i, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %26)
  %cmp15.not.i = icmp eq i32 %26, 0
  br i1 %cmp15.not.i, label %if.end.i91, label %for.body12.i.for.inc.i_crit_edge

for.body12.i.for.inc.i_crit_edge:                 ; preds = %for.body12.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i91:                                       ; preds = %for.body12.i
  %27 = ptrtoint ptr %phy17.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %phy17.i, align 4
  %vchan.i89 = getelementptr %struct.mmp_pdma_phy, ptr %28, i32 %i.039.i, i32 2
  %29 = ptrtoint ptr %vchan.i89 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %vchan.i89, align 4
  %tobool.not.i90 = icmp eq ptr %30, null
  br i1 %tobool.not.i90, label %if.end.i91.lookup_phy.exit_crit_edge, label %if.end.i91.for.inc.i_crit_edge

if.end.i91.for.inc.i_crit_edge:                   ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i

if.end.i91.lookup_phy.exit_crit_edge:             ; preds = %if.end.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %lookup_phy.exit

for.inc.i:                                        ; preds = %if.end.i91.for.inc.i_crit_edge, %for.body12.i.for.inc.i_crit_edge
  %inc.i = add nuw nsw i32 %i.039.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %24
  br i1 %exitcond.not.i, label %for.inc.i.for.inc21.i_crit_edge, label %for.inc.i.for.body12.i_crit_edge

for.inc.i.for.body12.i_crit_edge:                 ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.i

for.inc.i.for.inc21.i_crit_edge:                  ; preds = %for.inc.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i

for.inc21.i:                                      ; preds = %for.inc.i.for.inc21.i_crit_edge, %if.then31.for.inc21.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %exitcond44.i = icmp eq i32 %25, 0
  br i1 %exitcond44.i, label %for.inc21.i.lookup_phy.exit.thread_crit_edge, label %for.cond8.preheader.i.1

for.inc21.i.lookup_phy.exit.thread_crit_edge:     ; preds = %for.inc21.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %lookup_phy.exit.thread

for.cond8.preheader.i.1:                          ; preds = %for.inc21.i
  br i1 %cmp1038.i, label %for.cond8.preheader.i.1.for.body12.i.1_crit_edge, label %for.cond8.preheader.i.1.for.inc21.i.1_crit_edge

for.cond8.preheader.i.1.for.inc21.i.1_crit_edge:  ; preds = %for.cond8.preheader.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.1

for.cond8.preheader.i.1.for.body12.i.1_crit_edge: ; preds = %for.cond8.preheader.i.1
  br label %for.body12.i.1

for.body12.i.1:                                   ; preds = %for.inc.i.1.for.body12.i.1_crit_edge, %for.cond8.preheader.i.1.for.body12.i.1_crit_edge
  %i.039.i.1 = phi i32 [ %inc.i.1, %for.inc.i.1.for.body12.i.1_crit_edge ], [ 0, %for.cond8.preheader.i.1.for.body12.i.1_crit_edge ]
  %31 = and i32 %i.039.i.1, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %31)
  %cmp15.not.i.1 = icmp eq i32 %31, 4
  br i1 %cmp15.not.i.1, label %if.end.i91.1, label %for.body12.i.1.for.inc.i.1_crit_edge

for.body12.i.1.for.inc.i.1_crit_edge:             ; preds = %for.body12.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1

if.end.i91.1:                                     ; preds = %for.body12.i.1
  %32 = ptrtoint ptr %phy17.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %phy17.i, align 4
  %vchan.i89.1 = getelementptr %struct.mmp_pdma_phy, ptr %33, i32 %i.039.i.1, i32 2
  %34 = ptrtoint ptr %vchan.i89.1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %vchan.i89.1, align 4
  %tobool.not.i90.1 = icmp eq ptr %35, null
  br i1 %tobool.not.i90.1, label %if.end.i91.1.lookup_phy.exit_crit_edge, label %if.end.i91.1.for.inc.i.1_crit_edge

if.end.i91.1.for.inc.i.1_crit_edge:               ; preds = %if.end.i91.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.1

if.end.i91.1.lookup_phy.exit_crit_edge:           ; preds = %if.end.i91.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %lookup_phy.exit

for.inc.i.1:                                      ; preds = %if.end.i91.1.for.inc.i.1_crit_edge, %for.body12.i.1.for.inc.i.1_crit_edge
  %inc.i.1 = add nuw nsw i32 %i.039.i.1, 1
  %exitcond.not.i.1 = icmp eq i32 %inc.i.1, %24
  br i1 %exitcond.not.i.1, label %for.inc.i.1.for.inc21.i.1_crit_edge, label %for.inc.i.1.for.body12.i.1_crit_edge

for.inc.i.1.for.body12.i.1_crit_edge:             ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.i.1

for.inc.i.1.for.inc21.i.1_crit_edge:              ; preds = %for.inc.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.1

for.inc21.i.1:                                    ; preds = %for.inc.i.1.for.inc21.i.1_crit_edge, %for.cond8.preheader.i.1.for.inc21.i.1_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %exitcond44.i.1 = icmp eq i32 %25, 1
  br i1 %exitcond44.i.1, label %for.inc21.i.1.lookup_phy.exit.thread_crit_edge, label %for.cond8.preheader.i.2

for.inc21.i.1.lookup_phy.exit.thread_crit_edge:   ; preds = %for.inc21.i.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %lookup_phy.exit.thread

for.cond8.preheader.i.2:                          ; preds = %for.inc21.i.1
  br i1 %cmp1038.i, label %for.cond8.preheader.i.2.for.body12.i.2_crit_edge, label %for.cond8.preheader.i.2.for.inc21.i.2_crit_edge

for.cond8.preheader.i.2.for.inc21.i.2_crit_edge:  ; preds = %for.cond8.preheader.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.2

for.cond8.preheader.i.2.for.body12.i.2_crit_edge: ; preds = %for.cond8.preheader.i.2
  br label %for.body12.i.2

for.body12.i.2:                                   ; preds = %for.inc.i.2.for.body12.i.2_crit_edge, %for.cond8.preheader.i.2.for.body12.i.2_crit_edge
  %i.039.i.2 = phi i32 [ %inc.i.2, %for.inc.i.2.for.body12.i.2_crit_edge ], [ 0, %for.cond8.preheader.i.2.for.body12.i.2_crit_edge ]
  %36 = and i32 %i.039.i.2, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %36)
  %cmp15.not.i.2 = icmp eq i32 %36, 8
  br i1 %cmp15.not.i.2, label %if.end.i91.2, label %for.body12.i.2.for.inc.i.2_crit_edge

for.body12.i.2.for.inc.i.2_crit_edge:             ; preds = %for.body12.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.2

if.end.i91.2:                                     ; preds = %for.body12.i.2
  %37 = ptrtoint ptr %phy17.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %phy17.i, align 4
  %vchan.i89.2 = getelementptr %struct.mmp_pdma_phy, ptr %38, i32 %i.039.i.2, i32 2
  %39 = ptrtoint ptr %vchan.i89.2 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %vchan.i89.2, align 4
  %tobool.not.i90.2 = icmp eq ptr %40, null
  br i1 %tobool.not.i90.2, label %if.end.i91.2.lookup_phy.exit_crit_edge, label %if.end.i91.2.for.inc.i.2_crit_edge

if.end.i91.2.for.inc.i.2_crit_edge:               ; preds = %if.end.i91.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.2

if.end.i91.2.lookup_phy.exit_crit_edge:           ; preds = %if.end.i91.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %lookup_phy.exit

for.inc.i.2:                                      ; preds = %if.end.i91.2.for.inc.i.2_crit_edge, %for.body12.i.2.for.inc.i.2_crit_edge
  %inc.i.2 = add nuw nsw i32 %i.039.i.2, 1
  %exitcond.not.i.2 = icmp eq i32 %inc.i.2, %24
  br i1 %exitcond.not.i.2, label %for.inc.i.2.for.inc21.i.2_crit_edge, label %for.inc.i.2.for.body12.i.2_crit_edge

for.inc.i.2.for.body12.i.2_crit_edge:             ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.i.2

for.inc.i.2.for.inc21.i.2_crit_edge:              ; preds = %for.inc.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc21.i.2

for.inc21.i.2:                                    ; preds = %for.inc.i.2.for.inc21.i.2_crit_edge, %for.cond8.preheader.i.2.for.inc21.i.2_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %25)
  %exitcond44.i.2 = icmp eq i32 %25, 2
  %cmp1038.i.not = xor i1 %cmp1038.i, true
  %brmerge = select i1 %exitcond44.i.2, i1 true, i1 %cmp1038.i.not
  br i1 %brmerge, label %for.inc21.i.2.lookup_phy.exit.thread_crit_edge, label %for.inc21.i.2.for.body12.i.3_crit_edge

for.inc21.i.2.for.body12.i.3_crit_edge:           ; preds = %for.inc21.i.2
  br label %for.body12.i.3

for.inc21.i.2.lookup_phy.exit.thread_crit_edge:   ; preds = %for.inc21.i.2
  call void @__sanitizer_cov_trace_pc() #9
  br label %lookup_phy.exit.thread

for.body12.i.3:                                   ; preds = %for.inc.i.3.for.body12.i.3_crit_edge, %for.inc21.i.2.for.body12.i.3_crit_edge
  %i.039.i.3 = phi i32 [ %inc.i.3, %for.inc.i.3.for.body12.i.3_crit_edge ], [ 0, %for.inc21.i.2.for.body12.i.3_crit_edge ]
  %41 = and i32 %i.039.i.3, 12
  call void @__sanitizer_cov_trace_const_cmp4(i32 12, i32 %41)
  %cmp15.not.i.3 = icmp eq i32 %41, 12
  br i1 %cmp15.not.i.3, label %if.end.i91.3, label %for.body12.i.3.for.inc.i.3_crit_edge

for.body12.i.3.for.inc.i.3_crit_edge:             ; preds = %for.body12.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.3

if.end.i91.3:                                     ; preds = %for.body12.i.3
  %42 = ptrtoint ptr %phy17.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy17.i, align 4
  %vchan.i89.3 = getelementptr %struct.mmp_pdma_phy, ptr %43, i32 %i.039.i.3, i32 2
  %44 = ptrtoint ptr %vchan.i89.3 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %vchan.i89.3, align 4
  %tobool.not.i90.3 = icmp eq ptr %45, null
  br i1 %tobool.not.i90.3, label %if.end.i91.3.lookup_phy.exit_crit_edge, label %if.end.i91.3.for.inc.i.3_crit_edge

if.end.i91.3.for.inc.i.3_crit_edge:               ; preds = %if.end.i91.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc.i.3

if.end.i91.3.lookup_phy.exit_crit_edge:           ; preds = %if.end.i91.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %lookup_phy.exit

for.inc.i.3:                                      ; preds = %if.end.i91.3.for.inc.i.3_crit_edge, %for.body12.i.3.for.inc.i.3_crit_edge
  %inc.i.3 = add nuw nsw i32 %i.039.i.3, 1
  %exitcond.not.i.3 = icmp eq i32 %inc.i.3, %24
  br i1 %exitcond.not.i.3, label %for.inc.i.3.lookup_phy.exit.thread_crit_edge, label %for.inc.i.3.for.body12.i.3_crit_edge

for.inc.i.3.for.body12.i.3_crit_edge:             ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body12.i.3

for.inc.i.3.lookup_phy.exit.thread_crit_edge:     ; preds = %for.inc.i.3
  call void @__sanitizer_cov_trace_pc() #9
  br label %lookup_phy.exit.thread

lookup_phy.exit.thread:                           ; preds = %for.inc.i.3.lookup_phy.exit.thread_crit_edge, %for.inc21.i.2.lookup_phy.exit.thread_crit_edge, %for.inc21.i.1.lookup_phy.exit.thread_crit_edge, %for.inc21.i.lookup_phy.exit.thread_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %phy_lock.i87, i32 noundef %call3.i) #7
  %46 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %phy.i, align 4
  br label %do.body37

lookup_phy.exit:                                  ; preds = %if.end.i91.3.lookup_phy.exit_crit_edge, %if.end.i91.2.lookup_phy.exit_crit_edge, %if.end.i91.1.lookup_phy.exit_crit_edge, %if.end.i91.lookup_phy.exit_crit_edge
  %i.039.i.lcssa = phi i32 [ %i.039.i, %if.end.i91.lookup_phy.exit_crit_edge ], [ %i.039.i.1, %if.end.i91.1.lookup_phy.exit_crit_edge ], [ %i.039.i.2, %if.end.i91.2.lookup_phy.exit_crit_edge ], [ %i.039.i.3, %if.end.i91.3.lookup_phy.exit_crit_edge ]
  %.lcssa = phi ptr [ %28, %if.end.i91.lookup_phy.exit_crit_edge ], [ %33, %if.end.i91.1.lookup_phy.exit_crit_edge ], [ %38, %if.end.i91.2.lookup_phy.exit_crit_edge ], [ %43, %if.end.i91.3.lookup_phy.exit_crit_edge ]
  %vchan.i89.lcssa = phi ptr [ %vchan.i89, %if.end.i91.lookup_phy.exit_crit_edge ], [ %vchan.i89.1, %if.end.i91.1.lookup_phy.exit_crit_edge ], [ %vchan.i89.2, %if.end.i91.2.lookup_phy.exit_crit_edge ], [ %vchan.i89.3, %if.end.i91.3.lookup_phy.exit_crit_edge ]
  %arrayidx.i = getelementptr %struct.mmp_pdma_phy, ptr %.lcssa, i32 %i.039.i.lcssa
  %47 = ptrtoint ptr %vchan.i89.lcssa to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %chan, ptr %vchan.i89.lcssa, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %phy_lock.i87, i32 noundef %call3.i) #7
  %48 = ptrtoint ptr %phy.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %arrayidx.i, ptr %phy.i, align 4
  %tobool35.not = icmp eq ptr %arrayidx.i, null
  br i1 %tobool35.not, label %lookup_phy.exit.do.body37_crit_edge, label %lookup_phy.exit.if.end57_crit_edge

lookup_phy.exit.if.end57_crit_edge:               ; preds = %lookup_phy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end57

lookup_phy.exit.do.body37_crit_edge:              ; preds = %lookup_phy.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body37

do.body37:                                        ; preds = %lookup_phy.exit.do.body37_crit_edge, %lookup_phy.exit.thread
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @start_pending_queue.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@start_pending_queue, %cleanup)) #7
          to label %if.then51 [label %cleanup], !srcloc !123

if.then51:                                        ; preds = %do.body37
  call void @__sanitizer_cov_trace_pc() #9
  %49 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chan, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @start_pending_queue.__UNIQUE_ID_ddebug238, ptr noundef %50, ptr noundef nonnull @.str.28) #7
  br label %cleanup

if.end57:                                         ; preds = %lookup_phy.exit.if.end57_crit_edge, %if.end29.if.end57_crit_edge
  %51 = ptrtoint ptr %chain_pending to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %chain_pending, align 4
  %53 = load volatile ptr, ptr %chain_pending, align 4
  %cmp.i.not.i = icmp eq ptr %53, %chain_pending
  br i1 %cmp.i.not.i, label %if.end57.list_splice_tail_init.exit_crit_edge, label %if.then.i

if.end57.list_splice_tail_init.exit_crit_edge:    ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #9
  %chain_running = getelementptr inbounds %struct.mmp_pdma_chan, ptr %chan, i32 0, i32 13
  %prev.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %chan, i32 0, i32 13, i32 1
  %54 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %chan, i32 0, i32 12, i32 1
  %56 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %53, ptr %55, align 4
  %60 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %chain_running, ptr %57, align 4
  store ptr %57, ptr %prev.i, align 4
  %61 = ptrtoint ptr %chain_pending to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %chain_pending, ptr %chain_pending, align 4
  store ptr %chain_pending, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %if.end57.list_splice_tail_init.exit_crit_edge
  %62 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %phy.i, align 4
  %phys = getelementptr i8, ptr %52, i32 24
  %64 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %phys, align 8
  %66 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %63, align 4
  %shl.i93 = shl i32 %67, 4
  %add.i94 = add i32 %shl.i93, 512
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !125
  tail call void @arm_heavy_mb() #7
  %68 = tail call i32 @llvm.bswap.i32(i32 %65) #7
  %base.i95 = getelementptr inbounds %struct.mmp_pdma_phy, ptr %63, i32 0, i32 1
  %69 = ptrtoint ptr %base.i95 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i95, align 4
  %add.ptr.i96 = getelementptr i8, ptr %70, i32 %add.i94
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i96, i32 %68) #7, !srcloc !112
  %71 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %phy.i, align 4
  %vchan.i97 = getelementptr inbounds %struct.mmp_pdma_phy, ptr %72, i32 0, i32 2
  %73 = ptrtoint ptr %vchan.i97 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %vchan.i97, align 4
  %tobool.not.i98 = icmp eq ptr %74, null
  br i1 %tobool.not.i98, label %list_splice_tail_init.exit.enable_chan.exit_crit_edge, label %if.end.i107

list_splice_tail_init.exit.enable_chan.exit_crit_edge: ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %enable_chan.exit

if.end.i107:                                      ; preds = %list_splice_tail_init.exit
  call void @__sanitizer_cov_trace_pc() #9
  %drcmr.i99 = getelementptr inbounds %struct.mmp_pdma_chan, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %drcmr.i99 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %drcmr.i99, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 64, i32 %76)
  %cmp.i100 = icmp ult i32 %76, 64
  %cond.i101 = select i1 %cmp.i100, i32 256, i32 4352
  %and.i102 = shl i32 %76, 2
  %shl.i103 = and i32 %and.i102, 252
  %add.i104 = or i32 %cond.i101, %shl.i103
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !126
  tail call void @arm_heavy_mb() #7
  %77 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %72, align 4
  %or.i = or i32 %78, 128
  %79 = tail call i32 @llvm.bswap.i32(i32 %or.i) #7
  %base.i105 = getelementptr inbounds %struct.mmp_pdma_phy, ptr %72, i32 0, i32 1
  %80 = ptrtoint ptr %base.i105 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i105, align 4
  %add.ptr.i106 = getelementptr i8, ptr %81, i32 %add.i104
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i106, i32 %79) #7, !srcloc !112
  %82 = ptrtoint ptr %base.i105 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i105, align 4
  %add.ptr5.i = getelementptr i8, ptr %83, i32 160
  %84 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #7, !srcloc !108
  %85 = tail call i32 @llvm.bswap.i32(i32 %84) #7
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !127
  %86 = ptrtoint ptr %vchan.i97 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %vchan.i97, align 4
  %byte_align.i = getelementptr inbounds %struct.mmp_pdma_chan, ptr %87, i32 0, i32 15
  %88 = ptrtoint ptr %byte_align.i to i32
  call void @__asan_load1_noabort(i32 %88)
  %89 = load i8, ptr %byte_align.i, align 1, !range !124
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %89)
  %tobool8.not.i = icmp eq i8 %89, 0
  %90 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %72, align 4
  %shl14.i = shl nuw i32 1, %91
  %or12.i = or i32 %shl14.i, %85
  %neg.i = xor i32 %shl14.i, -1
  %and15.i = and i32 %85, %neg.i
  %dalgn.0.i = select i1 %tobool8.not.i, i32 %and15.i, i32 %or12.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !128
  tail call void @arm_heavy_mb() #7
  %92 = tail call i32 @llvm.bswap.i32(i32 %dalgn.0.i) #7
  %93 = ptrtoint ptr %base.i105 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %base.i105, align 4
  %add.ptr21.i = getelementptr i8, ptr %94, i32 160
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21.i, i32 %92) #7, !srcloc !112
  %95 = ptrtoint ptr %72 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %72, align 4
  %shl23.i = shl i32 %96, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !129
  tail call void @arm_heavy_mb() #7
  %97 = ptrtoint ptr %base.i105 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %base.i105, align 4
  %add.ptr31.i = getelementptr i8, ptr %98, i32 %shl23.i
  %99 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #7, !srcloc !108
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !130
  %100 = or i32 %99, 128
  %101 = ptrtoint ptr %base.i105 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %base.i105, align 4
  %add.ptr37.i = getelementptr i8, ptr %102, i32 %shl23.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr37.i, i32 %100) #7, !srcloc !112
  br label %enable_chan.exit

enable_chan.exit:                                 ; preds = %if.end.i107, %list_splice_tail_init.exit.enable_chan.exit_crit_edge
  %103 = ptrtoint ptr %idle to i32
  call void @__asan_store1_noabort(i32 %103)
  store i8 0, ptr %idle, align 4
  br label %cleanup

cleanup:                                          ; preds = %enable_chan.exit, %if.then51, %do.body37, %if.then24, %mmp_pdma_free_phy.exit, %if.then5, %do.body
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mmp_pdma_free_desc_list(ptr nocapture noundef readonly %chan, ptr noundef readonly %list) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %list, align 4
  %cmp.not19 = icmp eq ptr %1, %list
  br i1 %cmp.not19, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %desc_pool = getelementptr inbounds %struct.mmp_pdma_chan, ptr %chan, i32 0, i32 16
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in20 = phi ptr [ %1, %for.body.lr.ph ], [ %.pn, %list_del.exit.for.body_crit_edge ]
  %desc.0 = getelementptr i8, ptr %.pn.in20, i32 -32
  %2 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn = load ptr, ptr %.pn.in20, align 32
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in20) #7
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i, align 4
  %5 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in20, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in20 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in20, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %.pn.in20, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %11 = ptrtoint ptr %desc_pool to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %desc_pool, align 4
  %phys = getelementptr i8, ptr %.pn.in20, i32 24
  %13 = ptrtoint ptr %phys to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %phys, align 8
  tail call void @dma_pool_free(ptr noundef %12, ptr noundef %desc.0, i32 noundef %14) #7
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_destroy(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mmp_pdma_tx_submit(ptr noundef %tx) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %chan1 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan1, align 4
  %desc_lock = getelementptr i8, ptr %1, i32 260
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %desc_lock) #7
  %tx_list = getelementptr i8, ptr %tx, i32 -8
  %2 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %2)
  %.pn31 = load ptr, ptr %tx_list, align 8
  %cmp14.not32 = icmp eq ptr %.pn31, %tx_list
  br i1 %cmp14.not32, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %.pn33 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %.pn31, %entry.for.body_crit_edge ]
  %async_tx = getelementptr i8, ptr %.pn33, i32 16
  %chan1.i = getelementptr i8, ptr %.pn33, i32 28
  %3 = ptrtoint ptr %chan1.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %chan1.i, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %6, 1
  %7 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #7
  %8 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %cookie2.i, align 4
  %9 = ptrtoint ptr %async_tx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %7, ptr %async_tx, align 4
  %10 = ptrtoint ptr %.pn33 to i32
  call void @__asan_load4_noabort(i32 %10)
  %.pn = load ptr, ptr %.pn33, align 8
  %cmp14.not = icmp eq ptr %.pn, %tx_list
  br i1 %cmp14.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %cookie.0.lcssa = phi i32 [ -16, %entry.for.end_crit_edge ], [ %7, %for.body.for.end_crit_edge ]
  %11 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i = icmp eq ptr %12, %tx_list
  br i1 %cmp.i.not.i, label %for.end.list_splice_tail_init.exit_crit_edge, label %if.then.i

for.end.list_splice_tail_init.exit_crit_edge:     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %list_splice_tail_init.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #9
  %chain_pending = getelementptr i8, ptr %1, i32 304
  %prev.i = getelementptr i8, ptr %1, i32 308
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i, align 4
  %prev2.i.i = getelementptr i8, ptr %tx, i32 -4
  %15 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %12, ptr %14, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %chain_pending, ptr %16, align 4
  store ptr %16, ptr %prev.i, align 4
  %20 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  store ptr %tx_list, ptr %prev2.i.i, align 4
  br label %list_splice_tail_init.exit

list_splice_tail_init.exit:                       ; preds = %if.then.i, %for.end.list_splice_tail_init.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %desc_lock, i32 noundef %call7) #7
  ret i32 %cookie.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_load8_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_store8_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 50)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !33, !35, !36, !37, !38, !40, !41, !42, !43, !44, !46, !47, !48, !49, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !66, !67, !69, !70, !71, !72, !74, !75, !76, !77, !79, !80, !81, !82, !84, !85, !86, !88, !89, !90, !91, !93, !94, !96}
!llvm.module.flags = !{!98, !99, !100, !101, !102, !103, !104, !105}
!llvm.ident = !{!106}

!0 = !{ptr @__initcall__kmod_mmp_pdma__244_1145_mmp_pdma_driver_init6, !1, !"__initcall__kmod_mmp_pdma__244_1145_mmp_pdma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/mmp_pdma.c", i32 1145, i32 1}
!2 = !{ptr @__exitcall_mmp_pdma_driver_exit, !1, !"__exitcall_mmp_pdma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description245, !4, !"__UNIQUE_ID_description245", i1 false, i1 false}
!4 = !{!"../drivers/dma/mmp_pdma.c", i32 1147, i32 1}
!5 = !{ptr @__UNIQUE_ID_author246, !6, !"__UNIQUE_ID_author246", i1 false, i1 false}
!6 = !{!"../drivers/dma/mmp_pdma.c", i32 1148, i32 1}
!7 = !{ptr @__UNIQUE_ID_file247, !8, !"__UNIQUE_ID_file247", i1 false, i1 false}
!8 = !{!"../drivers/dma/mmp_pdma.c", i32 1149, i32 1}
!9 = !{ptr @__UNIQUE_ID_license248, !8, !"__UNIQUE_ID_license248", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/mmp_pdma.c", i32 1137, i32 11}
!12 = !{ptr @mmp_pdma_driver, !13, !"mmp_pdma_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/mmp_pdma.c", i32 1135, i32 31}
!14 = !{ptr @mmp_pdma_probe.__key, !15, !"__key", i1 false, i1 false}
!15 = !{!"../drivers/dma/mmp_pdma.c", i32 1038, i32 2}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/dma/mmp_pdma.c", i32 1047, i32 44}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/dma/mmp_pdma.c", i32 1071, i32 25}
!21 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/dma/mmp_pdma.c", i32 1110, i32 3}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @mmp_pdma_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @mmp_pdma_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.10, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/dma/mmp_pdma.c", i32 1119, i32 4}
!31 = !{ptr @mmp_pdma_probe._entry.9, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @mmp_pdma_probe._entry_ptr.11, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/mmp_pdma.c", i32 1126, i32 2}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @mmp_pdma_probe._entry.12, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @mmp_pdma_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/mmp_pdma.c", i32 196, i32 3}
!40 = !{ptr @.str.17, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.18, !39, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @clear_chan_irq._entry, !39, !"_entry", i1 false, i1 false}
!43 = !{ptr @clear_chan_irq._entry_ptr, !39, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/mmp_pdma.c", i32 981, i32 4}
!46 = !{ptr @.str.20, !45, !"<string literal>", i1 false, i1 false}
!47 = !{ptr @mmp_pdma_chan_init._entry, !45, !"_entry", i1 false, i1 false}
!48 = !{ptr @mmp_pdma_chan_init._entry_ptr, !45, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @mmp_pdma_chan_init.__key, !50, !"__key", i1 false, i1 false}
!50 = !{!"../drivers/dma/mmp_pdma.c", i32 986, i32 2}
!51 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @.str.22, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/mmp_pdma.c", i32 906, i32 4}
!54 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @.str.24, !53, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @dma_do_tasklet.__UNIQUE_ID_ddebug243, !53, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!57 = !{ptr @.str.25, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/mmp_pdma.c", i32 302, i32 3}
!59 = !{ptr @.str.26, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @start_pending_queue.__UNIQUE_ID_ddebug236, !58, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/mmp_pdma.c", i32 309, i32 3}
!63 = !{ptr @start_pending_queue.__UNIQUE_ID_ddebug237, !62, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!64 = !{ptr @.str.28, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/dma/mmp_pdma.c", i32 316, i32 4}
!66 = !{ptr @start_pending_queue.__UNIQUE_ID_ddebug238, !65, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!67 = !{ptr @.str.29, !68, !"<string literal>", i1 false, i1 false}
!68 = !{!"../drivers/dma/mmp_pdma.c", i32 404, i32 3}
!69 = !{ptr @.str.30, !68, !"<string literal>", i1 false, i1 false}
!70 = !{ptr @mmp_pdma_alloc_chan_resources._entry, !68, !"_entry", i1 false, i1 false}
!71 = !{ptr @mmp_pdma_alloc_chan_resources._entry_ptr, !68, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.31, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/dma/mmp_pdma.c", i32 471, i32 4}
!74 = !{ptr @.str.32, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mmp_pdma_prep_memcpy._entry, !73, !"_entry", i1 false, i1 false}
!76 = !{ptr @mmp_pdma_prep_memcpy._entry_ptr, !73, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.33, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/dma/mmp_pdma.c", i32 370, i32 3}
!79 = !{ptr @.str.34, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @mmp_pdma_alloc_descriptor._entry, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @mmp_pdma_alloc_descriptor._entry_ptr, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.35, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/dma/mmp_pdma.c", i32 555, i32 5}
!84 = !{ptr @mmp_pdma_prep_slave_sg._entry, !83, !"_entry", i1 false, i1 false}
!85 = !{ptr @mmp_pdma_prep_slave_sg._entry_ptr, !83, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.36, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/dma/mmp_pdma.c", i32 637, i32 3}
!88 = !{ptr @.str.37, !87, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @mmp_pdma_prep_dma_cyclic._entry, !87, !"_entry", i1 false, i1 false}
!90 = !{ptr @mmp_pdma_prep_dma_cyclic._entry_ptr, !87, !"_entry_ptr", i1 false, i1 false}
!91 = !{ptr @mmp_pdma_prep_dma_cyclic._entry.38, !92, !"_entry", i1 false, i1 false}
!92 = !{!"../drivers/dma/mmp_pdma.c", i32 647, i32 4}
!93 = !{ptr @mmp_pdma_prep_dma_cyclic._entry_ptr.39, !92, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @mmp_pdma_dt_ids, !95, !"mmp_pdma_dt_ids", i1 false, i1 false}
!95 = !{!"../drivers/dma/mmp_pdma.c", i32 999, i32 34}
!96 = !{ptr @mmp_pdma_id_table, !97, !"mmp_pdma_id_table", i1 false, i1 false}
!97 = !{!"../drivers/dma/mmp_pdma.c", i32 1130, i32 40}
!98 = !{i32 1, !"wchar_size", i32 2}
!99 = !{i32 1, !"min_enum_size", i32 4}
!100 = !{i32 8, !"branch-target-enforcement", i32 0}
!101 = !{i32 8, !"sign-return-address", i32 0}
!102 = !{i32 8, !"sign-return-address-all", i32 0}
!103 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!104 = !{i32 7, !"uwtable", i32 1}
!105 = !{i32 7, !"frame-pointer", i32 2}
!106 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!107 = !{!"branch_weights", i32 1, i32 2000}
!108 = !{i64 4644324}
!109 = !{i64 2154411133}
!110 = !{i32 0, i32 33}
!111 = !{i64 2154414693}
!112 = !{i64 4643906}
!113 = !{i64 2154365893}
!114 = !{i64 2154464805}
!115 = !{i64 2154465476}
!116 = !{!"auto-init"}
!117 = !{i64 2154406589}
!118 = !{i64 2154407542}
!119 = !{i64 2154408084}
!120 = !{i64 2154408654}
!121 = !{i64 2154408867}
!122 = !{i64 2154364393, i64 2154364880, i64 2154364430, i64 2154364486, i64 2154364520, i64 2154364544, i64 2154364585, i64 2154364606, i64 2154364634, i64 2154364668}
!123 = !{i64 2148981401, i64 2148981406, i64 2148981419, i64 2148981463, i64 2148981497, i64 2148981518}
!124 = !{i8 0, i8 2}
!125 = !{i64 2154401710}
!126 = !{i64 2154402306}
!127 = !{i64 2154403081}
!128 = !{i64 2154403305}
!129 = !{i64 2154404541}
!130 = !{i64 2154405490}
