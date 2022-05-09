; ModuleID = '/llk/IR_all_yes/drivers/dma/ep93xx_dma.c_pt.bc'
source_filename = "../drivers/dma/ep93xx_dma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_device_id = type { [20 x i8], i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
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
%struct.ep93xx_dma_platform_data = type { ptr, i32 }
%struct.ep93xx_dma_engine = type { %struct.dma_device, i8, ptr, ptr, ptr, ptr, ptr, i32, [0 x %struct.ep93xx_dma_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.ep93xx_dma_chan = type { %struct.dma_chan, ptr, ptr, i32, ptr, %struct.tasklet_struct, %struct.spinlock, i32, i32, %struct.list_head, %struct.list_head, %struct.list_head, i32, i32, %struct.dma_slave_config }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.ep93xx_dma_chan_data = type { ptr, ptr, i32 }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.ep93xx_dma_data = type { i32, i32, ptr }
%struct.ep93xx_dma_desc = type { i32, i32, i32, i8, %struct.dma_async_tx_descriptor, %struct.list_head, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__initcall__kmod_ep93xx_dma__239_1430_ep93xx_dma_module_init4 = internal global ptr @ep93xx_dma_module_init, section ".initcall4.init", align 4
@__UNIQUE_ID_author240 = internal constant [59 x i8] c"ep93xx_dma.author=Mika Westerberg <mika.westerberg@iki.fi>\00", section ".modinfo", align 1
@__UNIQUE_ID_description241 = internal constant [41 x i8] c"ep93xx_dma.description=EP93xx DMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [39 x i8] c"ep93xx_dma.file=drivers/dma/ep93xx_dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [23 x i8] c"ep93xx_dma.license=GPL\00", section ".modinfo", align 1
@ep93xx_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr null, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr @ep93xx_dma_driver_ids, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ep93xx-dma\00", [21 x i8] zeroinitializer }, align 32
@ep93xx_dma_driver_ids = internal constant { [3 x %struct.platform_device_id], [56 x i8] } { [3 x %struct.platform_device_id] [%struct.platform_device_id { [20 x i8] c"ep93xx-dma-m2p\00\00\00\00\00\00", i32 0 }, %struct.platform_device_id { [20 x i8] c"ep93xx-dma-m2m\00\00\00\00\00\00", i32 1 }, %struct.platform_device_id zeroinitializer], [56 x i8] zeroinitializer }, align 32
@ep93xx_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1348, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get clock for %s\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"ep93xx_dma_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"drivers/dma/ep93xx_dma.c\00", [39 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ep93xx_dma_probe._entry_ptr = internal global ptr @ep93xx_dma_probe._entry, section ".printk_index", align 4
@ep93xx_dma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.6 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&edmac->lock\00", [19 x i8] zeroinitializer }, align 32
@ep93xx_dma_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1407, ptr @.str.9, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"EP93xx M2%s DMA ready\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ep93xx_dma_probe._entry_ptr.10 = internal global ptr @ep93xx_dma_probe._entry.7, section ".printk_index", align 4
@.str.11 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"M\00", [30 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [2 x i8], [30 x i8] } { [2 x i8] c"P\00", [30 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ep93xx_dma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.14, ptr @.str.3, i32 921, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"not enough descriptors\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ep93xx_dma_alloc_chan_resources\00", [32 x i8] zeroinitializer }, align 32
@ep93xx_dma_alloc_chan_resources._entry_ptr = internal global ptr @ep93xx_dma_alloc_chan_resources._entry, section ".printk_index", align 4
@.str.15 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"ep93xx-dma-m2p\00", [17 x i8] zeroinitializer }, align 32
@ep93xx_dma_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.3, i32 797, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"got interrupt while active list is empty\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ep93xx_dma_interrupt\00", [43 x i8] zeroinitializer }, align 32
@ep93xx_dma_interrupt._entry_ptr = internal global ptr @ep93xx_dma_interrupt._entry, section ".printk_index", align 4
@ep93xx_dma_interrupt._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.17, ptr @.str.3, i32 814, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"unknown interrupt!\0A\00", [44 x i8] zeroinitializer }, align 32
@ep93xx_dma_interrupt._entry_ptr.20 = internal global ptr @ep93xx_dma_interrupt._entry.18, section ".printk_index", align 4
@ep93xx_dma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.22, ptr @.str.3, i32 1046, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"channel was configured with different direction\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"ep93xx_dma_prep_slave_sg\00", [39 x i8] zeroinitializer }, align 32
@ep93xx_dma_prep_slave_sg._entry_ptr = internal global ptr @ep93xx_dma_prep_slave_sg._entry, section ".printk_index", align 4
@ep93xx_dma_prep_slave_sg._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.22, ptr @.str.3, i32 1052, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"channel is already used for cyclic transfers\0A\00", [50 x i8] zeroinitializer }, align 32
@ep93xx_dma_prep_slave_sg._entry_ptr.25 = internal global ptr @ep93xx_dma_prep_slave_sg._entry.23, section ".printk_index", align 4
@ep93xx_dma_prep_slave_sg._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.22, ptr @.str.3, i32 1064, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"too big transfer size %zu\0A\00", [37 x i8] zeroinitializer }, align 32
@ep93xx_dma_prep_slave_sg._entry_ptr.28 = internal global ptr @ep93xx_dma_prep_slave_sg._entry.26, section ".printk_index", align 4
@ep93xx_dma_prep_slave_sg._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.22, ptr @.str.3, i32 1070, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"couldn't get descriptor\0A\00", [39 x i8] zeroinitializer }, align 32
@ep93xx_dma_prep_slave_sg._entry_ptr.31 = internal global ptr @ep93xx_dma_prep_slave_sg._entry.29, section ".printk_index", align 4
@ep93xx_dma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.32, ptr @.str.3, i32 1127, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ep93xx_dma_prep_dma_cyclic\00", [37 x i8] zeroinitializer }, align 32
@ep93xx_dma_prep_dma_cyclic._entry_ptr = internal global ptr @ep93xx_dma_prep_dma_cyclic._entry, section ".printk_index", align 4
@ep93xx_dma_prep_dma_cyclic._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.32, ptr @.str.3, i32 1133, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ep93xx_dma_prep_dma_cyclic._entry_ptr.34 = internal global ptr @ep93xx_dma_prep_dma_cyclic._entry.33, section ".printk_index", align 4
@ep93xx_dma_prep_dma_cyclic._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.32, ptr @.str.3, i32 1139, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"too big period length %zu\0A\00", [37 x i8] zeroinitializer }, align 32
@ep93xx_dma_prep_dma_cyclic._entry_ptr.37 = internal global ptr @ep93xx_dma_prep_dma_cyclic._entry.35, section ".printk_index", align 4
@ep93xx_dma_prep_dma_cyclic._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.32, ptr @.str.3, i32 1150, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ep93xx_dma_prep_dma_cyclic._entry_ptr.39 = internal global ptr @ep93xx_dma_prep_dma_cyclic._entry.38, section ".printk_index", align 4
@ep93xx_dma_prep_dma_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.40, ptr @.str.3, i32 998, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"ep93xx_dma_prep_dma_memcpy\00", [37 x i8] zeroinitializer }, align 32
@ep93xx_dma_prep_dma_memcpy._entry_ptr = internal global ptr @ep93xx_dma_prep_dma_memcpy._entry, section ".printk_index", align 4
@m2m_fill_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.3, i32 532, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"M2M: empty descriptor list\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"m2m_fill_desc\00", [18 x i8] zeroinitializer }, align 32
@m2m_fill_desc._entry_ptr = internal global ptr @m2m_fill_desc._entry, section ".printk_index", align 4
@m2p_hw_shutdown._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 360, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"M2P: Not yet IDLE\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"m2p_hw_shutdown\00", [16 x i8] zeroinitializer }, align 32
@m2p_hw_shutdown._entry_ptr = internal global ptr @m2p_hw_shutdown._entry, section ".printk_index", align 4
@m2p_fill_desc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 370, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"M2P: empty descriptor list\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"m2p_fill_desc\00", [18 x i8] zeroinitializer }, align 32
@m2p_fill_desc._entry_ptr = internal global ptr @m2p_fill_desc._entry, section ".printk_index", align 4
@m2p_hw_interrupt._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 431, ptr @.str.49, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [95 x i8], [33 x i8] } { [95 x i8] c"DMA transfer failed! Details:\0A\09cookie\09: %d\0A\09src_addr\09: 0x%08x\0A\09dst_addr\09: 0x%08x\0A\09size\09\09: %zu\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"m2p_hw_interrupt\00", [47 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@m2p_hw_interrupt._entry_ptr = internal global ptr @m2p_hw_interrupt._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.50 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [5 x i64] [i64 3, i64 32, i64 1, i64 2, i64 4]
@__sancov_gen_cov_switch_values.53 = internal global [4 x i64] [i64 2, i64 32, i64 10, i64 11]
@__sancov_gen_cov_switch_values.54 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 16]
@__sancov_gen_cov_switch_values.55 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.56 = private unnamed_addr constant [18 x i8] c"ep93xx_dma_driver\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1419, i32 31 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1421, i32 11 }
@___asan_gen_.62 = private unnamed_addr constant [22 x i8] c"ep93xx_dma_driver_ids\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1413, i32 40 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1347, i32 4 }
@___asan_gen_.83 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1352, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1406, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 921, i32 4 }
@___asan_gen_.114 = private unnamed_addr constant [44 x i8] c"../include/linux/platform_data/dma-ep93xx.h\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 73, i32 46 }
@___asan_gen_.124 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 796, i32 3 }
@___asan_gen_.130 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 814, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1045, i32 3 }
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1051, i32 3 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1063, i32 4 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1070, i32 4 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1126, i32 3 }
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1132, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1138, i32 3 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 1150, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 998, i32 4 }
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 532, i32 3 }
@___asan_gen_.199 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 360, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 370, i32 3 }
@___asan_gen_.209 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.218 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.219 = private constant [28 x i8] c"../drivers/dma/ep93xx_dma.c\00", align 1
@___asan_gen_.220 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.219, i32 424, i32 3 }
@llvm.compiler.used = appending global [78 x ptr] [ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_description241, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__initcall__kmod_ep93xx_dma__239_1430_ep93xx_dma_module_init4, ptr @ep93xx_dma_alloc_chan_resources._entry, ptr @ep93xx_dma_alloc_chan_resources._entry_ptr, ptr @ep93xx_dma_interrupt._entry, ptr @ep93xx_dma_interrupt._entry.18, ptr @ep93xx_dma_interrupt._entry_ptr, ptr @ep93xx_dma_interrupt._entry_ptr.20, ptr @ep93xx_dma_prep_dma_cyclic._entry, ptr @ep93xx_dma_prep_dma_cyclic._entry.33, ptr @ep93xx_dma_prep_dma_cyclic._entry.35, ptr @ep93xx_dma_prep_dma_cyclic._entry.38, ptr @ep93xx_dma_prep_dma_cyclic._entry_ptr, ptr @ep93xx_dma_prep_dma_cyclic._entry_ptr.34, ptr @ep93xx_dma_prep_dma_cyclic._entry_ptr.37, ptr @ep93xx_dma_prep_dma_cyclic._entry_ptr.39, ptr @ep93xx_dma_prep_dma_memcpy._entry, ptr @ep93xx_dma_prep_dma_memcpy._entry_ptr, ptr @ep93xx_dma_prep_slave_sg._entry, ptr @ep93xx_dma_prep_slave_sg._entry.23, ptr @ep93xx_dma_prep_slave_sg._entry.26, ptr @ep93xx_dma_prep_slave_sg._entry.29, ptr @ep93xx_dma_prep_slave_sg._entry_ptr, ptr @ep93xx_dma_prep_slave_sg._entry_ptr.25, ptr @ep93xx_dma_prep_slave_sg._entry_ptr.28, ptr @ep93xx_dma_prep_slave_sg._entry_ptr.31, ptr @ep93xx_dma_probe._entry, ptr @ep93xx_dma_probe._entry.7, ptr @ep93xx_dma_probe._entry_ptr, ptr @ep93xx_dma_probe._entry_ptr.10, ptr @m2m_fill_desc._entry, ptr @m2m_fill_desc._entry_ptr, ptr @m2p_fill_desc._entry, ptr @m2p_fill_desc._entry_ptr, ptr @m2p_hw_interrupt._entry, ptr @m2p_hw_interrupt._entry_ptr, ptr @m2p_hw_shutdown._entry, ptr @m2p_hw_shutdown._entry_ptr, ptr @ep93xx_dma_driver, ptr @.str, ptr @ep93xx_dma_driver_ids, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @ep93xx_dma_probe.__key, ptr @.str.6, ptr @.str.8, ptr @.str.9, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.36, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49], section "llvm.metadata"
@0 = internal global [55 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_driver_ids to i32), i32 72, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 2, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_interrupt._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_prep_slave_sg._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_prep_slave_sg._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_prep_slave_sg._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_prep_dma_cyclic._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_prep_dma_cyclic._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_prep_dma_cyclic._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ep93xx_dma_prep_dma_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2m_fill_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2p_hw_shutdown._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.199 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2p_fill_desc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @m2p_hw_interrupt._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.209 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 95, i32 128, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.219 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.220 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_dma_module_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_probe(ptr noundef nonnull @ep93xx_dma_driver, ptr noundef nonnull @ep93xx_dma_probe, ptr noundef null) #10
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_dma_probe(ptr noundef %pdev) #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data.i, align 8
  %num_channels = getelementptr inbounds %struct.ep93xx_dma_platform_data, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels, align 4
  %mul = mul i32 %3, 236
  %add = add i32 %mul, 392
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %add, i32 noundef 3520) #13
  %tobool.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool.not, label %entry.cleanup70_crit_edge, label %if.end

entry.cleanup70_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup70

if.end:                                           ; preds = %entry
  %id_entry = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 8
  %4 = ptrtoint ptr %id_entry to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %id_entry, align 4
  %driver_data = getelementptr inbounds %struct.platform_device_id, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %driver_data to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %driver_data, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool3 = icmp ne i32 %7, 0
  %m2m = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 1
  %frombool = zext i1 %tobool3 to i8
  %8 = ptrtoint ptr %m2m to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 %frombool, ptr %m2m, align 4
  %9 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %num_channels, align 4
  %num_channels5 = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 7
  %11 = ptrtoint ptr %num_channels5 to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %num_channels5, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 3
  %12 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 3, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %channels, ptr %prev.i, align 16
  %14 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp154.not = icmp eq i32 %14, 0
  br i1 %cmp154.not, label %if.end.for.end_crit_edge, label %if.end.for.body_crit_edge

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %if.end.for.body_crit_edge
  %i.0155 = phi i32 [ %inc, %cleanup.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %arrayidx = getelementptr %struct.ep93xx_dma_chan_data, ptr %16, i32 %i.0155
  %arrayidx9 = getelementptr %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 8, i32 %i.0155
  %17 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call9.i.i, ptr %arrayidx9, align 4
  %base = getelementptr %struct.ep93xx_dma_chan_data, ptr %16, i32 %i.0155, i32 1
  %18 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base, align 4
  %regs = getelementptr %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 8, i32 %i.0155, i32 2
  %20 = ptrtoint ptr %regs to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %regs, align 4
  %irq = getelementptr %struct.ep93xx_dma_chan_data, ptr %16, i32 %i.0155, i32 2
  %21 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %irq, align 4
  %irq10 = getelementptr %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 8, i32 %i.0155, i32 3
  %23 = ptrtoint ptr %irq10 to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %22, ptr %irq10, align 4
  %edma11 = getelementptr %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 8, i32 %i.0155, i32 1
  %24 = ptrtoint ptr %edma11 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call9.i.i, ptr %edma11, align 4
  %25 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %arrayidx, align 4
  %call12 = tail call ptr @clk_get(ptr noundef null, ptr noundef %26) #10
  %clk = getelementptr %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 8, i32 %i.0155, i32 4
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call12, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call12, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %do.body19

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.1, ptr noundef %29) #14
  br label %cleanup

do.body19:                                        ; preds = %for.body
  %lock = getelementptr %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 8, i32 %i.0155, i32 6
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.6, ptr noundef nonnull @ep93xx_dma_probe.__key, i16 noundef signext 3) #10
  %active = getelementptr %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 8, i32 %i.0155, i32 9
  %30 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %active, ptr %active, align 4
  %prev.i144 = getelementptr %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 8, i32 %i.0155, i32 9, i32 1
  %31 = ptrtoint ptr %prev.i144 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %active, ptr %prev.i144, align 4
  %queue = getelementptr %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 8, i32 %i.0155, i32 10
  %32 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %queue, ptr %queue, align 4
  %prev.i145 = getelementptr %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 8, i32 %i.0155, i32 10, i32 1
  %33 = ptrtoint ptr %prev.i145 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %queue, ptr %prev.i145, align 4
  %free_list = getelementptr %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 8, i32 %i.0155, i32 11
  %34 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %free_list, ptr %free_list, align 4
  %prev.i146 = getelementptr %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 8, i32 %i.0155, i32 11, i32 1
  %35 = ptrtoint ptr %prev.i146 to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %free_list, ptr %prev.i146, align 4
  %tasklet = getelementptr %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 8, i32 %i.0155, i32 5
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @ep93xx_dma_tasklet) #10
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %arrayidx9, i32 0, i32 8
  %36 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i, align 16
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %device_node, ptr noundef %37, ptr noundef %channels) #10
  br i1 %call.i.i, label %if.end.i.i148, label %do.body19.cleanup_crit_edge

do.body19.cleanup_crit_edge:                      ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end.i.i148:                                    ; preds = %do.body19
  call void @__sanitizer_cov_trace_pc() #12
  %38 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %device_node, ptr %prev.i, align 16
  %39 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %channels, ptr %device_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx9, i32 0, i32 8, i32 1
  %40 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev3.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %device_node, ptr %37, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i148, %do.body19.cleanup_crit_edge, %do.end
  %inc = add nuw i32 %i.0155, 1
  %42 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc, %43
  br i1 %cmp, label %cleanup.for.body_crit_edge, label %cleanup.for.end_crit_edge

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %if.end.for.end_crit_edge
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 6
  %44 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %cap_mask, align 8
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #10
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #10
  %dev29 = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 15
  %45 = ptrtoint ptr %dev29 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %dev, ptr %dev29, align 8
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 27
  %46 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @ep93xx_dma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 128
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 29
  %47 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @ep93xx_dma_free_chan_resources, ptr %device_free_chan_resources, align 8
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 39
  %48 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @ep93xx_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 16
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 40
  %49 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr @ep93xx_dma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 44
  %50 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr @ep93xx_dma_slave_config, ptr %device_config, align 4
  %device_synchronize = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 48
  %51 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ep93xx_dma_synchronize, ptr %device_synchronize, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 47
  %52 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr @ep93xx_dma_terminate_all, ptr %device_terminate_all, align 16
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 50
  %53 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr @ep93xx_dma_issue_pending, ptr %device_issue_pending, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 49
  %54 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @ep93xx_dma_tx_status, ptr %device_tx_status, align 8
  %dma_parms.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 22
  %55 = ptrtoint ptr %dma_parms.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %dma_parms.i, align 4
  %tobool.not.i = icmp eq ptr %56, null
  br i1 %tobool.not.i, label %for.end.dma_set_max_seg_size.exit_crit_edge, label %if.then.i

for.end.dma_set_max_seg_size.exit_crit_edge:      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_set_max_seg_size.exit

if.then.i:                                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 65535, ptr %56, align 4
  br label %dma_set_max_seg_size.exit

dma_set_max_seg_size.exit:                        ; preds = %if.then.i, %for.end.dma_set_max_seg_size.exit_crit_edge
  %58 = ptrtoint ptr %m2m to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %m2m, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool33.not = icmp eq i8 %59, 0
  br i1 %tobool33.not, label %if.else, label %if.then34

if.then34:                                        ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #10
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call9.i.i, i32 0, i32 30
  %60 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @ep93xx_dma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  br label %if.end41

if.else:                                          ; preds = %dma_set_max_seg_size.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #10
  %hw_synchronize = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 3
  %61 = ptrtoint ptr %hw_synchronize to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @m2p_hw_synchronize, ptr %hw_synchronize, align 4
  br label %if.end41

if.end41:                                         ; preds = %if.else, %if.then34
  %m2m_hw_setup.sink = phi ptr [ @m2p_hw_setup, %if.else ], [ @m2m_hw_setup, %if.then34 ]
  %m2m_hw_shutdown.sink = phi ptr [ @m2p_hw_shutdown, %if.else ], [ @m2m_hw_shutdown, %if.then34 ]
  %m2m_hw_submit.sink = phi ptr [ @m2p_hw_submit, %if.else ], [ @m2m_hw_submit, %if.then34 ]
  %m2m_hw_interrupt.sink = phi ptr [ @m2p_hw_interrupt, %if.else ], [ @m2m_hw_interrupt, %if.then34 ]
  %62 = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 2
  %63 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %m2m_hw_setup.sink, ptr %62, align 16
  %64 = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %m2m_hw_shutdown.sink, ptr %64, align 8
  %66 = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 5
  %67 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %m2m_hw_submit.sink, ptr %66, align 4
  %68 = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 6
  %69 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %m2m_hw_interrupt.sink, ptr %68, align 128
  %call42 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call9.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call42)
  %tobool43.not = icmp eq i32 %call42, 0
  br i1 %tobool43.not, label %do.end65, label %for.cond47.preheader, !prof !115

for.cond47.preheader:                             ; preds = %if.end41
  %70 = ptrtoint ptr %num_channels5 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_channels5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp49157.not = icmp eq i32 %71, 0
  br i1 %cmp49157.not, label %for.cond47.preheader.for.end61_crit_edge, label %for.cond47.preheader.for.body50_crit_edge

for.cond47.preheader.for.body50_crit_edge:        ; preds = %for.cond47.preheader
  br label %for.body50

for.cond47.preheader.for.end61_crit_edge:         ; preds = %for.cond47.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end61

for.body50:                                       ; preds = %if.end58.for.body50_crit_edge, %for.cond47.preheader.for.body50_crit_edge
  %i.1158 = phi i32 [ %inc60, %if.end58.for.body50_crit_edge ], [ 0, %for.cond47.preheader.for.body50_crit_edge ]
  %clk54 = getelementptr %struct.ep93xx_dma_engine, ptr %call9.i.i, i32 0, i32 8, i32 %i.1158, i32 4
  %72 = ptrtoint ptr %clk54 to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clk54, align 4
  %tobool.not.i149 = icmp eq ptr %73, null
  %cmp.i150 = icmp ugt ptr %73, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i149, %cmp.i150
  br i1 %spec.select.i, label %for.body50.if.end58_crit_edge, label %if.then56

for.body50.if.end58_crit_edge:                    ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end58

if.then56:                                        ; preds = %for.body50
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_put(ptr noundef nonnull %73) #10
  br label %if.end58

if.end58:                                         ; preds = %if.then56, %for.body50.if.end58_crit_edge
  %inc60 = add nuw i32 %i.1158, 1
  %74 = ptrtoint ptr %num_channels5 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_channels5, align 4
  %cmp49 = icmp ult i32 %inc60, %75
  br i1 %cmp49, label %if.end58.for.body50_crit_edge, label %if.end58.for.end61_crit_edge

if.end58.for.end61_crit_edge:                     ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end61

if.end58.for.body50_crit_edge:                    ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body50

for.end61:                                        ; preds = %if.end58.for.end61_crit_edge, %for.cond47.preheader.for.end61_crit_edge
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup70

do.end65:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %dev29 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %dev29, align 8
  %78 = ptrtoint ptr %m2m to i32
  call void @__asan_load1_noabort(i32 %78)
  %79 = load i8, ptr %m2m, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %79)
  %tobool68.not = icmp eq i8 %79, 0
  %cond = select i1 %tobool68.not, ptr @.str.12, ptr @.str.11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %77, ptr noundef nonnull @.str.8, ptr noundef nonnull %cond) #14
  br label %cleanup70

cleanup70:                                        ; preds = %do.end65, %for.end61, %entry.cleanup70_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup70_crit_edge ], [ 0, %do.end65 ], [ %call42, %for.end61 ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep93xx_dma_tasklet(ptr noundef %t) #4 align 64 {
entry:
  %dummy_result.i = alloca %struct.dmaengine_result, align 8
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -80
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %lock = getelementptr i8, ptr %t, i32 24
  call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %active.i = getelementptr i8, ptr %t, i32 76
  %3 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %active.i, align 4
  %cmp.not.i = icmp eq ptr %4, %active.i
  %add.ptr.i = getelementptr i8, ptr %4, i32 -124
  %tobool.not56 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not56
  br i1 %tobool.not, label %entry.if.end8_crit_edge, label %if.then

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8

if.then:                                          ; preds = %entry
  %complete = getelementptr i8, ptr %4, i32 -112
  %5 = ptrtoint ptr %complete to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %complete, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool1.not = icmp eq i8 %6, 0
  br i1 %tobool1.not, label %if.then.if.end6_crit_edge, label %if.then2

if.then.if.end6_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then2:                                         ; preds = %if.then
  %flags = getelementptr i8, ptr %t, i32 68
  %7 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %8, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool4.not = icmp eq i32 %and1.i, 0
  br i1 %tobool4.not, label %if.then5, label %if.then2.if.end_crit_edge

if.then2.if.end_crit_edge:                        ; preds = %if.then2
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then5:                                         ; preds = %if.then2
  %txd = getelementptr i8, ptr %4, i32 -108
  %9 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %txd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp.i = icmp slt i32 %10, 1
  br i1 %cmp.i, label %do.body2.i, label %dma_cookie_complete.exit, !prof !116

do.body2.i:                                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !117
  unreachable

dma_cookie_complete.exit:                         ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %chan.i = getelementptr i8, ptr %4, i32 -96
  %11 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %12, i32 0, i32 3
  %13 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %10, ptr %completed_cookie.i, align 4
  %14 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %txd, align 4
  br label %if.end

if.end:                                           ; preds = %dma_cookie_complete.exit, %if.then2.if.end_crit_edge
  %15 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %active.i, align 4
  %cmp.i.not.i = icmp eq ptr %16, %active.i
  br i1 %cmp.i.not.i, label %if.end.if.end6_crit_edge, label %if.then.i

if.end.if.end6_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end6

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr i8, ptr %t, i32 80
  %19 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %16, ptr %list, align 4
  %22 = ptrtoint ptr %20 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %18, ptr %20, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %20, ptr %prev6.i.i, align 4
  %24 = ptrtoint ptr %active.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %active.i, ptr %active.i, align 4
  store ptr %active.i, ptr %prev2.i.i, align 4
  br label %if.end6

if.end6:                                          ; preds = %if.then.i, %if.end.if.end6_crit_edge, %if.then.if.end6_crit_edge
  %callback.i = getelementptr i8, ptr %4, i32 -84
  %25 = ptrtoint ptr %callback.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %callback.i, align 4
  %callback_result.i = getelementptr i8, ptr %4, i32 -80
  %27 = ptrtoint ptr %callback_result.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %callback_result.i, align 4
  %callback_param.i = getelementptr i8, ptr %4, i32 -76
  %29 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %callback_param.i, align 4
  br label %if.end8

if.end8:                                          ; preds = %if.end6, %entry.if.end8_crit_edge
  %cb.sroa.0.0 = phi ptr [ null, %entry.if.end8_crit_edge ], [ %26, %if.end6 ]
  %cb.sroa.6.0 = phi ptr [ null, %entry.if.end8_crit_edge ], [ %28, %if.end6 ]
  %cb.sroa.9.0 = phi ptr [ null, %entry.if.end8_crit_edge ], [ %30, %if.end6 ]
  call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %31 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %active.i, align 4
  %cmp.i.not.i41 = icmp eq ptr %32, %active.i
  br i1 %cmp.i.not.i41, label %lor.lhs.false.i, label %if.end8.ep93xx_dma_advance_work.exit_crit_edge

if.end8.ep93xx_dma_advance_work.exit_crit_edge:   ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_advance_work.exit

lor.lhs.false.i:                                  ; preds = %if.end8
  %queue.i = getelementptr i8, ptr %t, i32 84
  %33 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i23.not.i = icmp eq ptr %34, %queue.i
  br i1 %cmp.i23.not.i, label %lor.lhs.false.i.ep93xx_dma_advance_work.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ep93xx_dma_advance_work.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_advance_work.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr.i42 = getelementptr i8, ptr %34, i32 -124
  %call.i.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %34) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i.i, align 4
  %37 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %34, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %38, i32 0, i32 1
  %39 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev1.i.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %38, ptr %36, align 4
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %41 = ptrtoint ptr %34 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %34, ptr %34, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %34, ptr %prev.i3.i.i, align 4
  call fastcc void @ep93xx_dma_set_active(ptr noundef %add.ptr, ptr noundef %add.ptr.i42) #10
  %edma.i = getelementptr i8, ptr %t, i32 -16
  %43 = ptrtoint ptr %edma.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %edma.i, align 4
  %hw_submit.i = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %44, i32 0, i32 5
  %45 = ptrtoint ptr %hw_submit.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_submit.i, align 4
  call void %46(ptr noundef %add.ptr) #10
  br label %ep93xx_dma_advance_work.exit

ep93xx_dma_advance_work.exit:                     ; preds = %list_del_init.exit.i, %lor.lhs.false.i.ep93xx_dma_advance_work.exit_crit_edge, %if.end8.ep93xx_dma_advance_work.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #10
  %47 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %list, align 4
  %cmp.not57 = icmp eq ptr %48, %list
  br i1 %cmp.not57, label %ep93xx_dma_advance_work.exit.for.end_crit_edge, label %for.body.lr.ph

ep93xx_dma_advance_work.exit.for.end_crit_edge:   ; preds = %ep93xx_dma_advance_work.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %ep93xx_dma_advance_work.exit
  %free_list.i = getelementptr i8, ptr %t, i32 92
  br label %for.body

for.body:                                         ; preds = %ep93xx_dma_desc_put.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in58 = phi ptr [ %48, %for.body.lr.ph ], [ %.pn, %ep93xx_dma_desc_put.exit.for.body_crit_edge ]
  %desc.0 = getelementptr i8, ptr %.pn.in58, i32 -124
  %49 = ptrtoint ptr %.pn.in58 to i32
  call void @__asan_load4_noabort(i32 %49)
  %.pn = load ptr, ptr %.pn.in58, align 4
  %unmap.i = getelementptr i8, ptr %.pn.in58, i32 -72
  %50 = ptrtoint ptr %unmap.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %unmap.i, align 4
  %tobool.not.i = icmp eq ptr %51, null
  br i1 %tobool.not.i, label %for.body.dma_descriptor_unmap.exit_crit_edge, label %if.end.i43

for.body.dma_descriptor_unmap.exit_crit_edge:     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_descriptor_unmap.exit

if.end.i43:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  call void @dmaengine_unmap_put(ptr noundef nonnull %51) #10
  %52 = ptrtoint ptr %unmap.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %unmap.i, align 4
  br label %dma_descriptor_unmap.exit

dma_descriptor_unmap.exit:                        ; preds = %if.end.i43, %for.body.dma_descriptor_unmap.exit_crit_edge
  %tobool.not.i44 = icmp eq ptr %desc.0, null
  br i1 %tobool.not.i44, label %dma_descriptor_unmap.exit.ep93xx_dma_desc_put.exit_crit_edge, label %if.then.i47

dma_descriptor_unmap.exit.ep93xx_dma_desc_put.exit_crit_edge: ; preds = %dma_descriptor_unmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_desc_put.exit

if.then.i47:                                      ; preds = %dma_descriptor_unmap.exit
  %call2.i46 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %tx_list.i = getelementptr i8, ptr %.pn.in58, i32 -8
  %53 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %tx_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %54, %tx_list.i
  br i1 %cmp.i.not.i.i, label %if.then.i47.list_splice_init.exit.i_crit_edge, label %if.then.i.i

if.then.i47.list_splice_init.exit.i_crit_edge:    ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %if.then.i47
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %free_list.i, align 4
  %prev2.i.i.i = getelementptr i8, ptr %.pn.in58, i32 -4
  %57 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %free_list.i, ptr %prev3.i.i.i, align 4
  store ptr %54, ptr %free_list.i, align 4
  %60 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %56, ptr %58, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev6.i.i.i, align 4
  %62 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  store ptr %tx_list.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %if.then.i47.list_splice_init.exit.i_crit_edge
  %63 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i48 = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in58, ptr noundef %free_list.i, ptr noundef %64) #10
  br i1 %call.i.i.i48, label %if.end.i.i.i49, label %list_splice_init.exit.i.list_add.exit.i_crit_edge

list_splice_init.exit.i.list_add.exit.i_crit_edge: ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i

if.end.i.i.i49:                                   ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %64, i32 0, i32 1
  %65 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %.pn.in58, ptr %prev1.i.i.i, align 4
  %66 = ptrtoint ptr %.pn.in58 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %64, ptr %.pn.in58, align 4
  %prev3.i.i12.i = getelementptr i8, ptr %.pn.in58, i32 4
  %67 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %free_list.i, ptr %prev3.i.i12.i, align 4
  %68 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %.pn.in58, ptr %free_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i49, %list_splice_init.exit.i.list_add.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i46) #10
  br label %ep93xx_dma_desc_put.exit

ep93xx_dma_desc_put.exit:                         ; preds = %list_add.exit.i, %dma_descriptor_unmap.exit.ep93xx_dma_desc_put.exit_crit_edge
  %cmp.not = icmp eq ptr %.pn, %list
  br i1 %cmp.not, label %ep93xx_dma_desc_put.exit.for.end_crit_edge, label %ep93xx_dma_desc_put.exit.for.body_crit_edge

ep93xx_dma_desc_put.exit.for.body_crit_edge:      ; preds = %ep93xx_dma_desc_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

ep93xx_dma_desc_put.exit.for.end_crit_edge:       ; preds = %ep93xx_dma_desc_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %ep93xx_dma_desc_put.exit.for.end_crit_edge, %ep93xx_dma_advance_work.exit.for.end_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %dummy_result.i) #10
  %69 = ptrtoint ptr %dummy_result.i to i32
  call void @__asan_store8_noabort(i32 %69)
  store i64 0, ptr %dummy_result.i, align 8
  %tobool.not.i52 = icmp eq ptr %cb.sroa.6.0, null
  br i1 %tobool.not.i52, label %if.else.i, label %if.then.i54

if.then.i54:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  call void %cb.sroa.6.0(ptr noundef %cb.sroa.9.0, ptr noundef nonnull %dummy_result.i) #10
  br label %dmaengine_desc_callback_invoke.exit

if.else.i:                                        ; preds = %for.end
  %tobool4.not.i = icmp eq ptr %cb.sroa.0.0, null
  br i1 %tobool4.not.i, label %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, label %if.then5.i

if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge: ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dmaengine_desc_callback_invoke.exit

if.then5.i:                                       ; preds = %if.else.i
  call void @__sanitizer_cov_trace_pc() #12
  call void %cb.sroa.0.0(ptr noundef %cb.sroa.9.0) #10
  br label %dmaengine_desc_callback_invoke.exit

dmaengine_desc_callback_invoke.exit:              ; preds = %if.then5.i, %if.else.i.dmaengine_desc_callback_invoke.exit_crit_edge, %if.then.i54
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %dummy_result.i) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #10
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_dma_alloc_chan_resources(ptr noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 14
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1, i32 3
  %4 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i = icmp eq ptr %5, null
  br i1 %tobool.not.i.i, label %if.end.i.i, label %entry.dma_chan_name.exit_crit_edge

entry.dma_chan_name.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %entry.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.dma_chan_name.exit_crit_edge ]
  %edma = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 1
  %8 = ptrtoint ptr %edma to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edma, align 4
  %m2m = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %m2m to i32
  call void @__asan_load1_noabort(i32 %10)
  %11 = load i8, ptr %m2m, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %11)
  %tobool.not = icmp eq i8 %11, 0
  %tobool2.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %dma_chan_name.exit
  br i1 %tobool2.not, label %if.then.cleanup53_crit_edge, label %if.end

if.then.cleanup53_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

if.end:                                           ; preds = %if.then
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %1, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %13)
  %14 = icmp ugt i32 %13, 9
  br i1 %14, label %if.end.cleanup53_crit_edge, label %if.end7

if.end.cleanup53_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

if.end7:                                          ; preds = %if.end
  %direction = getelementptr inbounds %struct.ep93xx_dma_data, ptr %1, i32 0, i32 1
  %15 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %direction, align 4
  %17 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %18, i32 0, i32 15
  %19 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %20, i32 0, i32 3
  %21 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %22, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end7.ep93xx_dma_chan_is_m2p.exit.i_crit_edge

if.end7.ep93xx_dma_chan_is_m2p.exit.i_crit_edge:  ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_chan_is_m2p.exit.i

if.end.i.i.i:                                     ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %23 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %20, align 4
  br label %ep93xx_dma_chan_is_m2p.exit.i

ep93xx_dma_chan_is_m2p.exit.i:                    ; preds = %if.end.i.i.i, %if.end7.ep93xx_dma_chan_is_m2p.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %24, %if.end.i.i.i ], [ %22, %if.end7.ep93xx_dma_chan_is_m2p.exit.i_crit_edge ]
  %call1.i.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i.i, ptr noundef nonnull dereferenceable(15) @.str.15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i98 = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i98, label %if.end.i, label %ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit_crit_edge

ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit_crit_edge: ; preds = %ep93xx_dma_chan_is_m2p.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_chan_direction.exit

if.end.i:                                         ; preds = %ep93xx_dma_chan_is_m2p.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %25 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %chan_id.i, align 4
  %27 = and i32 %26, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp.i = icmp eq i32 %27, 0
  %cond.i = select i1 %cmp.i, i32 1, i32 2
  br label %ep93xx_dma_chan_direction.exit

ep93xx_dma_chan_direction.exit:                   ; preds = %if.end.i, %ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end.i ], [ 4, %ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %16, i32 %retval.0.i)
  %cmp9.not = icmp eq i32 %16, %retval.0.i
  br i1 %cmp9.not, label %ep93xx_dma_chan_direction.exit.land.lhs.true_crit_edge, label %ep93xx_dma_chan_direction.exit.cleanup53_crit_edge

ep93xx_dma_chan_direction.exit.cleanup53_crit_edge: ; preds = %ep93xx_dma_chan_direction.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

ep93xx_dma_chan_direction.exit.land.lhs.true_crit_edge: ; preds = %ep93xx_dma_chan_direction.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

if.else:                                          ; preds = %dma_chan_name.exit
  br i1 %tobool2.not, label %if.else.if.end26_crit_edge, label %if.then13

if.else.if.end26_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end26

if.then13:                                        ; preds = %if.else
  %28 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %1, align 4
  %30 = and i32 %29, -2
  call void @__sanitizer_cov_trace_const_cmp4(i32 10, i32 %30)
  %switch = icmp eq i32 %30, 10
  br i1 %switch, label %sw.bb, label %if.then13.cleanup53_crit_edge

if.then13.cleanup53_crit_edge:                    ; preds = %if.then13
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

sw.bb:                                            ; preds = %if.then13
  %direction15 = getelementptr inbounds %struct.ep93xx_dma_data, ptr %1, i32 0, i32 1
  %31 = ptrtoint ptr %direction15 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %direction15, align 4
  %33 = add i32 %32, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %33)
  %34 = icmp ult i32 %33, 2
  br i1 %34, label %sw.bb.land.lhs.true_crit_edge, label %sw.bb.cleanup53_crit_edge

sw.bb.cleanup53_crit_edge:                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

sw.bb.land.lhs.true_crit_edge:                    ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %sw.bb.land.lhs.true_crit_edge, %ep93xx_dma_chan_direction.exit.land.lhs.true_crit_edge
  %name22 = getelementptr inbounds %struct.ep93xx_dma_data, ptr %1, i32 0, i32 2
  %35 = ptrtoint ptr %name22 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %name22, align 4
  %tobool23.not = icmp eq ptr %36, null
  %spec.select = select i1 %tobool23.not, ptr %retval.0.i.i, ptr %36
  br label %if.end26

if.end26:                                         ; preds = %land.lhs.true, %if.else.if.end26_crit_edge
  %name.0 = phi ptr [ %retval.0.i.i, %if.else.if.end26_crit_edge ], [ %spec.select, %land.lhs.true ]
  %clk = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 4
  %37 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i99, label %if.end26.cleanup53_crit_edge

if.end26.cleanup53_crit_edge:                     ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

if.end.i99:                                       ; preds = %if.end26
  %call1.i = tail call i32 @clk_enable(ptr noundef %38) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end30, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i99
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @clk_unprepare(ptr noundef %38) #10
  br label %cleanup53

if.end30:                                         ; preds = %if.end.i99
  %irq = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 3
  %39 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %irq, align 4
  %call.i101 = tail call i32 @request_threaded_irq(i32 noundef %40, ptr noundef nonnull @ep93xx_dma_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %name.0, ptr noundef %chan) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i101)
  %tobool32.not = icmp eq i32 %call.i101, 0
  br i1 %tobool32.not, label %if.end34, label %if.end30.fail_clk_disable_crit_edge

if.end30.fail_clk_disable_crit_edge:              ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #12
  br label %fail_clk_disable

if.end34:                                         ; preds = %if.end30
  %lock = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 6
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #10
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %41 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %42 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 1, ptr %completed_cookie.i, align 4
  %43 = ptrtoint ptr %edma to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %edma, align 4
  %hw_setup = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %44, i32 0, i32 2
  %45 = ptrtoint ptr %hw_setup to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %hw_setup, align 4
  %call37 = tail call i32 %46(ptr noundef %chan) #10
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call37)
  %tobool39.not = icmp eq i32 %call37, 0
  br i1 %tobool39.not, label %for.cond.preheader, label %fail_free_irq

for.cond.preheader:                               ; preds = %if.end34
  %free_list.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader
  %i.0115 = phi i32 [ 0, %for.cond.preheader ], [ %inc, %for.inc.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %47 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %47, i32 noundef 3520, i32 noundef 132) #16
  %tobool44.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool44.not, label %cleanup, label %if.then.i

if.then.i:                                        ; preds = %for.body
  %tx_list = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %call7.i.i, i32 0, i32 5
  %48 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %48)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  %prev.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %call7.i.i, i32 0, i32 5, i32 1
  %49 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %tx_list, ptr %prev.i, align 8
  %txd = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %call7.i.i, i32 0, i32 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef %txd, ptr noundef %chan) #10
  %flags = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %call7.i.i, i32 0, i32 4, i32 1
  %50 = ptrtoint ptr %flags to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 2, ptr %flags, align 4
  %tx_submit = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %call7.i.i, i32 0, i32 4, i32 4
  %51 = ptrtoint ptr %tx_submit to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr @ep93xx_dma_tx_submit, ptr %tx_submit, align 8
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %52 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i.not.i.i = icmp eq ptr %53, %tx_list
  br i1 %cmp.i.not.i.i, label %if.then.i.list_splice_init.exit.i_crit_edge, label %if.then.i.i

if.then.i.list_splice_init.exit.i_crit_edge:      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %free_list.i, align 4
  %56 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %prev.i, align 8
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %53, i32 0, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %free_list.i, ptr %prev3.i.i.i, align 4
  store ptr %53, ptr %free_list.i, align 4
  %59 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %55, ptr %57, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %55, i32 0, i32 1
  %60 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %57, ptr %prev6.i.i.i, align 4
  %61 = ptrtoint ptr %tx_list to i32
  call void @__asan_store4_noabort(i32 %61)
  store volatile ptr %tx_list, ptr %tx_list, align 4
  store ptr %tx_list, ptr %prev.i, align 8
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %if.then.i.list_splice_init.exit.i_crit_edge
  %node.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %call7.i.i, i32 0, i32 6
  %62 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %free_list.i, ptr noundef %63) #10
  br i1 %call.i.i.i, label %if.end.i.i.i107, label %list_splice_init.exit.i.for.inc_crit_edge

list_splice_init.exit.i.for.inc_crit_edge:        ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i.i107:                                  ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %63, i32 0, i32 1
  %64 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %node.i, ptr %prev1.i.i.i, align 4
  %65 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %63, ptr %node.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %call7.i.i, i32 0, i32 6, i32 1
  %66 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %free_list.i, ptr %prev3.i.i12.i, align 8
  %67 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %node.i, ptr %free_list.i, align 4
  br label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %68 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i, align 4
  %device.i105 = getelementptr inbounds %struct.dma_chan_dev, ptr %69, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i105, ptr noundef nonnull @.str.13) #14
  br label %cleanup53

for.inc:                                          ; preds = %if.end.i.i.i107, %list_splice_init.exit.i.for.inc_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #10
  %inc = add nuw nsw i32 %i.0115, 1
  %exitcond.not = icmp eq i32 %inc, 32
  br i1 %exitcond.not, label %for.inc.cleanup53_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup53_crit_edge:                      ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup53

fail_free_irq:                                    ; preds = %if.end34
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq, align 4
  %call51 = tail call ptr @free_irq(i32 noundef %71, ptr noundef %chan) #10
  br label %fail_clk_disable

fail_clk_disable:                                 ; preds = %fail_free_irq, %if.end30.fail_clk_disable_crit_edge
  %ret.0 = phi i32 [ %call.i101, %if.end30.fail_clk_disable_crit_edge ], [ %call37, %fail_free_irq ]
  %72 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %73) #10
  tail call void @clk_unprepare(ptr noundef %73) #10
  br label %cleanup53

cleanup53:                                        ; preds = %fail_clk_disable, %for.inc.cleanup53_crit_edge, %cleanup, %if.then3.i, %if.end26.cleanup53_crit_edge, %sw.bb.cleanup53_crit_edge, %if.then13.cleanup53_crit_edge, %ep93xx_dma_chan_direction.exit.cleanup53_crit_edge, %if.end.cleanup53_crit_edge, %if.then.cleanup53_crit_edge
  %retval.0 = phi i32 [ %ret.0, %fail_clk_disable ], [ -22, %if.then.cleanup53_crit_edge ], [ -22, %if.end.cleanup53_crit_edge ], [ -22, %ep93xx_dma_chan_direction.exit.cleanup53_crit_edge ], [ -22, %sw.bb.cleanup53_crit_edge ], [ -22, %if.then13.cleanup53_crit_edge ], [ %i.0115, %cleanup ], [ %call1.i, %if.then3.i ], [ %call.i, %if.end26.cleanup53_crit_edge ], [ 32, %for.inc.cleanup53_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep93xx_dma_free_chan_resources(ptr noundef %chan) #4 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %active = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 9
  %3 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %active, align 4
  %cmp.i.not = icmp eq ptr %4, %active
  br i1 %cmp.i.not, label %do.body11, label %do.body5, !prof !115

do.body5:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ep93xx_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 958, 0\0A.popsection", ""() #10, !srcloc !118
  unreachable

do.body11:                                        ; preds = %entry
  %queue = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 10
  %5 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %queue, align 4
  %cmp.i74.not = icmp eq ptr %6, %queue
  br i1 %cmp.i74.not, label %do.body33, label %do.body23, !prof !115

do.body23:                                        ; preds = %do.body11
  call void @__sanitizer_cov_trace_pc() #12
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ep93xx_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 959, 0\0A.popsection", ""() #10, !srcloc !119
  unreachable

do.body33:                                        ; preds = %do.body11
  %lock = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 6
  %call35 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %edma = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 1
  %7 = ptrtoint ptr %edma to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %edma, align 4
  %hw_shutdown = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %8, i32 0, i32 4
  %9 = ptrtoint ptr %hw_shutdown to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %hw_shutdown, align 4
  call void %10(ptr noundef %chan) #10
  %runtime_addr = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 12
  %11 = ptrtoint ptr %runtime_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %runtime_addr, align 4
  %runtime_ctrl = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 13
  %12 = ptrtoint ptr %runtime_ctrl to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %runtime_ctrl, align 4
  %buffer = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 8
  %13 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 0, ptr %buffer, align 4
  %free_list = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 11
  %14 = ptrtoint ptr %free_list to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %free_list, align 4
  %cmp.i.not.i = icmp eq ptr %15, %free_list
  br i1 %cmp.i.not.i, label %do.body33.list_splice_init.exit_crit_edge, label %if.then.i

do.body33.list_splice_init.exit_crit_edge:        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %do.body33
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 11, i32 1
  %18 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %20 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %15, ptr %list, align 4
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %17, ptr %19, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %17, i32 0, i32 1
  %22 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev6.i.i, align 4
  %23 = ptrtoint ptr %free_list to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %free_list, ptr %free_list, align 4
  store ptr %free_list, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %do.body33.list_splice_init.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call35) #10
  %24 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %list, align 4
  %cmp48.not76 = icmp eq ptr %25, %list
  br i1 %cmp48.not76, label %list_splice_init.exit.for.end_crit_edge, label %list_splice_init.exit.for.body_crit_edge

list_splice_init.exit.for.body_crit_edge:         ; preds = %list_splice_init.exit
  br label %for.body

list_splice_init.exit.for.end_crit_edge:          ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %list_splice_init.exit.for.body_crit_edge
  %.pn.in77 = phi ptr [ %.pn, %for.body.for.body_crit_edge ], [ %25, %list_splice_init.exit.for.body_crit_edge ]
  %desc.0 = getelementptr i8, ptr %.pn.in77, i32 -124
  %26 = ptrtoint ptr %.pn.in77 to i32
  call void @__asan_load4_noabort(i32 %26)
  %.pn = load ptr, ptr %.pn.in77, align 4
  call void @kfree(ptr noundef %desc.0) #10
  %cmp48.not = icmp eq ptr %.pn, %list
  br i1 %cmp48.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %list_splice_init.exit.for.end_crit_edge
  %clk = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 4
  %27 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %clk, align 4
  call void @clk_disable(ptr noundef %28) #10
  call void @clk_unprepare(ptr noundef %28) #10
  %irq = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 3
  %29 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %irq, align 4
  %call57 = call ptr @free_irq(i32 noundef %30, ptr noundef %chan) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ep93xx_dma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %dir, i32 noundef %flags, ptr nocapture noundef readnone %context) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %edma = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %edma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edma, align 4
  %m2m = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %m2m to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %m2m, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %if.end.thread

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %land.lhs.true.ep93xx_dma_chan_is_m2p.exit.i_crit_edge

land.lhs.true.ep93xx_dma_chan_is_m2p.exit.i_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_chan_is_m2p.exit.i

if.end.i.i.i:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %ep93xx_dma_chan_is_m2p.exit.i

ep93xx_dma_chan_is_m2p.exit.i:                    ; preds = %if.end.i.i.i, %land.lhs.true.ep93xx_dma_chan_is_m2p.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %11, %if.end.i.i.i ], [ %9, %land.lhs.true.ep93xx_dma_chan_is_m2p.exit.i_crit_edge ]
  %call1.i.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i.i, ptr noundef nonnull dereferenceable(15) @.str.15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit_crit_edge

ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit_crit_edge: ; preds = %ep93xx_dma_chan_is_m2p.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_chan_direction.exit

if.end.i:                                         ; preds = %ep93xx_dma_chan_is_m2p.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %12 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_id.i, align 4
  %14 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  %cond.i = select i1 %cmp.i, i32 1, i32 2
  br label %ep93xx_dma_chan_direction.exit

ep93xx_dma_chan_direction.exit:                   ; preds = %if.end.i, %ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end.i ], [ 4, %ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %dir)
  %cmp.not = icmp eq i32 %retval.0.i, %dir
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %ep93xx_dma_chan_direction.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i, ptr noundef nonnull @.str.21) #14
  br label %cleanup44

if.end:                                           ; preds = %ep93xx_dma_chan_direction.exit
  %flags3 = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 7
  %17 = ptrtoint ptr %flags3 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile i32, ptr %flags3, align 4
  %and1.i = and i32 %18, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool5.not = icmp eq i32 %and1.i, 0
  br i1 %tobool5.not, label %if.end.ep93xx_dma_slave_config_write.exit_crit_edge, label %if.end.do.end9_crit_edge

if.end.do.end9_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

if.end.ep93xx_dma_slave_config_write.exit_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_slave_config_write.exit

if.end.thread:                                    ; preds = %entry
  %flags398 = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 7
  %19 = ptrtoint ptr %flags398 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags398, align 4
  %and1.i99 = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i99)
  %tobool5.not100 = icmp eq i32 %and1.i99, 0
  br i1 %tobool5.not100, label %if.end.i83, label %if.end.thread.do.end9_crit_edge

if.end.thread.do.end9_crit_edge:                  ; preds = %if.end.thread
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end9

do.end9:                                          ; preds = %if.end.thread.do.end9_crit_edge, %if.end.do.end9_crit_edge
  %dev.i81 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %21 = ptrtoint ptr %dev.i81 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %dev.i81, align 4
  %device.i82 = getelementptr inbounds %struct.dma_chan_dev, ptr %22, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i82, ptr noundef nonnull @.str.24) #14
  br label %cleanup44

if.end.i83:                                       ; preds = %if.end.thread
  %23 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %23, ptr @__sancov_gen_cov_switch_values)
  switch i32 %dir, label %if.end.i83.ep93xx_dma_slave_config_write.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.i83.ep93xx_dma_slave_config_write.exit_crit_edge: ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_slave_config_write.exit

sw.bb.i:                                          ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #12
  %src_addr_width.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 14, i32 3
  %src_addr.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 14, i32 1
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end.i83
  call void @__sanitizer_cov_trace_pc() #12
  %dst_addr_width.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 14, i32 4
  %dst_addr.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 14, i32 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %width.0.in.i = phi ptr [ %dst_addr_width.i, %sw.bb1.i ], [ %src_addr_width.i, %sw.bb.i ]
  %addr.0.in.i = phi ptr [ %dst_addr.i, %sw.bb1.i ], [ %src_addr.i, %sw.bb.i ]
  %24 = ptrtoint ptr %addr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %addr.0.i = load i32, ptr %addr.0.in.i, align 4
  %25 = ptrtoint ptr %width.0.in.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %width.0.i = load i32, ptr %width.0.in.i, align 4
  %26 = zext i32 %width.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %26, ptr @__sancov_gen_cov_switch_values.50)
  switch i32 %width.0.i, label %sw.epilog.i.ep93xx_dma_slave_config_write.exit_crit_edge [
    i32 1, label %sw.epilog.i.do.body7.i_crit_edge
    i32 2, label %sw.bb3.i
    i32 4, label %sw.bb4.i
  ]

sw.epilog.i.do.body7.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7.i

sw.epilog.i.ep93xx_dma_slave_config_write.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_slave_config_write.exit

sw.bb3.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7.i

sw.bb4.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7.i

do.body7.i:                                       ; preds = %sw.bb4.i, %sw.bb3.i, %sw.epilog.i.do.body7.i_crit_edge
  %ctrl.0.i = phi i32 [ 1024, %sw.bb4.i ], [ 512, %sw.bb3.i ], [ 0, %sw.epilog.i.do.body7.i_crit_edge ]
  %lock.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 6
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %runtime_addr.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 12
  %27 = ptrtoint ptr %runtime_addr.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %addr.0.i, ptr %runtime_addr.i, align 4
  %runtime_ctrl.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 13
  %28 = ptrtoint ptr %runtime_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %ctrl.0.i, ptr %runtime_ctrl.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call9.i) #10
  br label %ep93xx_dma_slave_config_write.exit

ep93xx_dma_slave_config_write.exit:               ; preds = %do.body7.i, %sw.epilog.i.ep93xx_dma_slave_config_write.exit_crit_edge, %if.end.i83.ep93xx_dma_slave_config_write.exit_crit_edge, %if.end.ep93xx_dma_slave_config_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp13120.not = icmp eq i32 %sg_len, 0
  br i1 %cmp13120.not, label %ep93xx_dma_slave_config_write.exit.for.end_crit_edge, label %for.body.lr.ph

ep93xx_dma_slave_config_write.exit.for.end_crit_edge: ; preds = %ep93xx_dma_slave_config_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %ep93xx_dma_slave_config_write.exit
  %lock.i86 = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 6
  %free_list.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp29 = icmp eq i32 %dir, 1
  %runtime_addr31 = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0124 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %sg.0122 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call40, %for.inc.for.body_crit_edge ]
  %first.0121 = phi ptr [ null, %for.body.lr.ph ], [ %first.2.ph, %for.inc.for.body_crit_edge ]
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0122, i32 0, i32 4
  %29 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %dma_length, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %30)
  %cmp14 = icmp ugt i32 %30, 65535
  br i1 %cmp14, label %do.end18, label %if.end20

do.end18:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i84 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %31 = ptrtoint ptr %dev.i84 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i84, align 4
  %device.i85 = getelementptr inbounds %struct.dma_chan_dev, ptr %32, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i85, ptr noundef nonnull @.str.27, i32 noundef %30) #14
  br label %fail

if.end20:                                         ; preds = %for.body
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i86) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %if.end20
  %.pn.in.in.i = phi ptr [ %free_list.i, %if.end20 ], [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ]
  %33 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp12.not.i = icmp eq ptr %.pn.in.i, %free_list.i
  br i1 %cmp12.not.i, label %ep93xx_dma_desc_get.exit.thread, label %for.body.i

ep93xx_dma_desc_get.exit.thread:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i86, i32 noundef %call2.i) #10
  br label %do.end26

for.body.i:                                       ; preds = %for.cond.i
  %flags.i.i = getelementptr i8, ptr %.pn.in.i, i32 -104
  %34 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %35, 2
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.then.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %desc.0.le.i = getelementptr i8, ptr %.pn.in.i, i32 -124
  %txd.le.i = getelementptr i8, ptr %.pn.in.i, i32 -108
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i87, label %if.then.i.ep93xx_dma_desc_get.exit_crit_edge

if.then.i.ep93xx_dma_desc_get.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_desc_get.exit

if.end.i.i.i87:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %36 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %prev.i.i.i, align 4
  %38 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %37, ptr %prev1.i.i.i.i, align 4
  %41 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %41)
  store volatile ptr %39, ptr %37, align 4
  br label %ep93xx_dma_desc_get.exit

ep93xx_dma_desc_get.exit:                         ; preds = %if.end.i.i.i87, %if.then.i.ep93xx_dma_desc_get.exit_crit_edge
  %42 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %.pn.in.i, ptr %.pn.in.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %43 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %.pn.in.i, ptr %prev.i3.i.i, align 4
  %44 = ptrtoint ptr %txd.le.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 0, ptr %txd.le.i, align 4
  %callback.i = getelementptr i8, ptr %.pn.in.i, i32 -84
  %45 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr null, ptr %callback.i, align 4
  %callback_param.i = getelementptr i8, ptr %.pn.in.i, i32 -76
  %46 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr null, ptr %callback_param.i, align 4
  %47 = call ptr @memset(ptr %desc.0.le.i, i32 0, i32 13)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i86, i32 noundef %call2.i) #10
  %tobool22.not = icmp eq ptr %desc.0.le.i, null
  br i1 %tobool22.not, label %ep93xx_dma_desc_get.exit.do.end26_crit_edge, label %if.end28

ep93xx_dma_desc_get.exit.do.end26_crit_edge:      ; preds = %ep93xx_dma_desc_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

do.end26:                                         ; preds = %ep93xx_dma_desc_get.exit.do.end26_crit_edge, %ep93xx_dma_desc_get.exit.thread
  %dev.i88 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %48 = ptrtoint ptr %dev.i88 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %dev.i88, align 4
  %device.i89 = getelementptr inbounds %struct.dma_chan_dev, ptr %49, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i89, ptr noundef nonnull @.str.30) #14
  br label %fail

if.end28:                                         ; preds = %ep93xx_dma_desc_get.exit
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0122, i32 0, i32 3
  %50 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %dma_address, align 4
  %52 = ptrtoint ptr %desc.0.le.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 %51, ptr %desc.0.le.i, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %runtime_addr31 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %runtime_addr31, align 4
  %55 = ptrtoint ptr %desc.0.le.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %54, ptr %desc.0.le.i, align 4
  %dma_address33 = getelementptr inbounds %struct.scatterlist, ptr %sg.0122, i32 0, i32 3
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then30
  %.sink.in = phi ptr [ %runtime_addr31, %if.then30 ], [ %dma_address33, %if.else ]
  %56 = ptrtoint ptr %.sink.in to i32
  call void @__asan_load4_noabort(i32 %56)
  %.sink = load i32, ptr %.sink.in, align 4
  %57 = getelementptr i8, ptr %.pn.in.i, i32 -120
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %.sink, ptr %57, align 4
  %size = getelementptr i8, ptr %.pn.in.i, i32 -116
  %59 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %30, ptr %size, align 4
  %tobool36.not = icmp eq ptr %first.0121, null
  br i1 %tobool36.not, label %if.end35.for.inc_crit_edge, label %if.else38

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else38:                                        ; preds = %if.end35
  %tx_list = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0121, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0121, i32 0, i32 5, i32 1
  %60 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in.i, ptr noundef %61, ptr noundef %tx_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else38.for.inc_crit_edge

if.else38.for.inc_crit_edge:                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i:                                       ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #12
  %62 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %.pn.in.i, ptr %prev.i, align 4
  %63 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %tx_list, ptr %.pn.in.i, align 4
  %64 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %61, ptr %prev.i3.i.i, align 4
  %65 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %.pn.in.i, ptr %61, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.else38.for.inc_crit_edge, %if.end35.for.inc_crit_edge
  %first.2.ph = phi ptr [ %first.0121, %if.end.i.i ], [ %first.0121, %if.else38.for.inc_crit_edge ], [ %desc.0.le.i, %if.end35.for.inc_crit_edge ]
  %inc = add nuw i32 %i.0124, 1
  %call40 = tail call ptr @sg_next(ptr noundef %sg.0122) #10
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ep93xx_dma_slave_config_write.exit.for.end_crit_edge
  %first.0.lcssa = phi ptr [ null, %ep93xx_dma_slave_config_write.exit.for.end_crit_edge ], [ %first.2.ph, %for.inc.for.end_crit_edge ]
  %txd = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0.lcssa, i32 0, i32 4
  %66 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 -16, ptr %txd, align 4
  %flags42 = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0.lcssa, i32 0, i32 4, i32 1
  %67 = ptrtoint ptr %flags42 to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %flags, ptr %flags42, align 4
  br label %cleanup44

fail:                                             ; preds = %do.end26, %do.end18
  %tobool.not.i90 = icmp eq ptr %first.0121, null
  br i1 %tobool.not.i90, label %fail.cleanup44_crit_edge, label %if.then.i94

fail.cleanup44_crit_edge:                         ; preds = %fail
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup44

if.then.i94:                                      ; preds = %fail
  %call2.i92 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i86) #10
  %tx_list.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0121, i32 0, i32 5
  %68 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load volatile ptr, ptr %tx_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %69, %tx_list.i
  br i1 %cmp.i.not.i.i, label %if.then.i94.list_splice_init.exit.i_crit_edge, label %if.then.i.i

if.then.i94.list_splice_init.exit.i_crit_edge:    ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %if.then.i94
  call void @__sanitizer_cov_trace_pc() #12
  %70 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %free_list.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0121, i32 0, i32 5, i32 1
  %72 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %69, i32 0, i32 1
  %74 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %free_list.i, ptr %prev3.i.i.i, align 4
  store ptr %69, ptr %free_list.i, align 4
  %75 = ptrtoint ptr %73 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %71, ptr %73, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %71, i32 0, i32 1
  %76 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %73, ptr %prev6.i.i.i, align 4
  %77 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  store ptr %tx_list.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %if.then.i94.list_splice_init.exit.i_crit_edge
  %node.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0121, i32 0, i32 6
  %78 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i95 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %free_list.i, ptr noundef %79) #10
  br i1 %call.i.i.i95, label %if.end.i.i.i96, label %list_splice_init.exit.i.list_add.exit.i_crit_edge

list_splice_init.exit.i.list_add.exit.i_crit_edge: ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i

if.end.i.i.i96:                                   ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %79, i32 0, i32 1
  %80 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %node.i, ptr %prev1.i.i.i, align 4
  %81 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %79, ptr %node.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0121, i32 0, i32 6, i32 1
  %82 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr %free_list.i, ptr %prev3.i.i12.i, align 4
  %83 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %83)
  store volatile ptr %node.i, ptr %free_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i96, %list_splice_init.exit.i.list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i86, i32 noundef %call2.i92) #10
  br label %cleanup44

cleanup44:                                        ; preds = %list_add.exit.i, %fail.cleanup44_crit_edge, %for.end, %do.end9, %do.end
  %retval.0 = phi ptr [ null, %do.end9 ], [ %txd, %for.end ], [ null, %do.end ], [ null, %fail.cleanup44_crit_edge ], [ null, %list_add.exit.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ep93xx_dma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %dma_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %dir, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %edma = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %edma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edma, align 4
  %m2m = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %m2m to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %m2m, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %land.lhs.true, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %entry
  %4 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %land.lhs.true.ep93xx_dma_chan_is_m2p.exit.i_crit_edge

land.lhs.true.ep93xx_dma_chan_is_m2p.exit.i_crit_edge: ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_chan_is_m2p.exit.i

if.end.i.i.i:                                     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %ep93xx_dma_chan_is_m2p.exit.i

ep93xx_dma_chan_is_m2p.exit.i:                    ; preds = %if.end.i.i.i, %land.lhs.true.ep93xx_dma_chan_is_m2p.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %11, %if.end.i.i.i ], [ %9, %land.lhs.true.ep93xx_dma_chan_is_m2p.exit.i_crit_edge ]
  %call1.i.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i.i, ptr noundef nonnull dereferenceable(15) @.str.15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit_crit_edge

ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit_crit_edge: ; preds = %ep93xx_dma_chan_is_m2p.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_chan_direction.exit

if.end.i:                                         ; preds = %ep93xx_dma_chan_is_m2p.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %12 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_id.i, align 4
  %14 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  %cond.i = select i1 %cmp.i, i32 1, i32 2
  br label %ep93xx_dma_chan_direction.exit

ep93xx_dma_chan_direction.exit:                   ; preds = %if.end.i, %ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit_crit_edge
  %retval.0.i = phi i32 [ %cond.i, %if.end.i ], [ 4, %ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %retval.0.i, i32 %dir)
  %cmp.not = icmp eq i32 %retval.0.i, %dir
  br i1 %cmp.not, label %ep93xx_dma_chan_direction.exit.if.end_crit_edge, label %do.end

ep93xx_dma_chan_direction.exit.if.end_crit_edge:  ; preds = %ep93xx_dma_chan_direction.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %ep93xx_dma_chan_direction.exit
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i, ptr noundef nonnull @.str.21) #14
  br label %cleanup

if.end:                                           ; preds = %ep93xx_dma_chan_direction.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %flags3 = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 7
  %call4 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %flags3) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call4)
  %tobool5.not = icmp eq i32 %call4, 0
  br i1 %tobool5.not, label %if.end11, label %do.end9

do.end9:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i77 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %17 = ptrtoint ptr %dev.i77 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i77, align 4
  %device.i78 = getelementptr inbounds %struct.dma_chan_dev, ptr %18, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i78, ptr noundef nonnull @.str.24) #14
  br label %cleanup

if.end11:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %period_len)
  %cmp12 = icmp ugt i32 %period_len, 65535
  br i1 %cmp12, label %do.end16, label %if.end18

do.end16:                                         ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i79 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %19 = ptrtoint ptr %dev.i79 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dev.i79, align 4
  %device.i80 = getelementptr inbounds %struct.dma_chan_dev, ptr %20, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i80, ptr noundef nonnull @.str.36, i32 noundef %period_len) #14
  br label %cleanup

if.end18:                                         ; preds = %if.end11
  %21 = ptrtoint ptr %edma to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %edma, align 4
  %m2m.i = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %m2m.i to i32
  call void @__asan_load1_noabort(i32 %23)
  %24 = load i8, ptr %m2m.i, align 4, !range !114
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %24)
  %tobool.not.i = icmp eq i8 %24, 0
  br i1 %tobool.not.i, label %if.end18.ep93xx_dma_slave_config_write.exit_crit_edge, label %if.end.i81

if.end18.ep93xx_dma_slave_config_write.exit_crit_edge: ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_slave_config_write.exit

if.end.i81:                                       ; preds = %if.end18
  %25 = zext i32 %dir to i64
  call void @__sanitizer_cov_trace_switch(i64 %25, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %dir, label %if.end.i81.ep93xx_dma_slave_config_write.exit_crit_edge [
    i32 2, label %sw.bb.i
    i32 1, label %sw.bb1.i
  ]

if.end.i81.ep93xx_dma_slave_config_write.exit_crit_edge: ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_slave_config_write.exit

sw.bb.i:                                          ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #12
  %src_addr_width.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 14, i32 3
  %src_addr.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 14, i32 1
  br label %sw.epilog.i

sw.bb1.i:                                         ; preds = %if.end.i81
  call void @__sanitizer_cov_trace_pc() #12
  %dst_addr_width.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 14, i32 4
  %dst_addr.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 14, i32 2
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb1.i, %sw.bb.i
  %width.0.in.i = phi ptr [ %dst_addr_width.i, %sw.bb1.i ], [ %src_addr_width.i, %sw.bb.i ]
  %addr.0.in.i = phi ptr [ %dst_addr.i, %sw.bb1.i ], [ %src_addr.i, %sw.bb.i ]
  %26 = ptrtoint ptr %addr.0.in.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %addr.0.i = load i32, ptr %addr.0.in.i, align 4
  %27 = ptrtoint ptr %width.0.in.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %width.0.i = load i32, ptr %width.0.in.i, align 4
  %28 = zext i32 %width.0.i to i64
  call void @__sanitizer_cov_trace_switch(i64 %28, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %width.0.i, label %sw.epilog.i.ep93xx_dma_slave_config_write.exit_crit_edge [
    i32 1, label %sw.epilog.i.do.body7.i_crit_edge
    i32 2, label %sw.bb3.i
    i32 4, label %sw.bb4.i
  ]

sw.epilog.i.do.body7.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7.i

sw.epilog.i.ep93xx_dma_slave_config_write.exit_crit_edge: ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_slave_config_write.exit

sw.bb3.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7.i

sw.bb4.i:                                         ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body7.i

do.body7.i:                                       ; preds = %sw.bb4.i, %sw.bb3.i, %sw.epilog.i.do.body7.i_crit_edge
  %ctrl.0.i = phi i32 [ 1024, %sw.bb4.i ], [ 512, %sw.bb3.i ], [ 0, %sw.epilog.i.do.body7.i_crit_edge ]
  %lock.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 6
  %call9.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %runtime_addr.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 12
  %29 = ptrtoint ptr %runtime_addr.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %addr.0.i, ptr %runtime_addr.i, align 4
  %runtime_ctrl.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 13
  %30 = ptrtoint ptr %runtime_ctrl.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %ctrl.0.i, ptr %runtime_ctrl.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call9.i) #10
  br label %ep93xx_dma_slave_config_write.exit

ep93xx_dma_slave_config_write.exit:               ; preds = %do.body7.i, %sw.epilog.i.ep93xx_dma_slave_config_write.exit_crit_edge, %if.end.i81.ep93xx_dma_slave_config_write.exit_crit_edge, %if.end18.ep93xx_dma_slave_config_write.exit_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %cmp20107.not = icmp eq i32 %buf_len, 0
  br i1 %cmp20107.not, label %ep93xx_dma_slave_config_write.exit.for.end_crit_edge, label %for.body.lr.ph

ep93xx_dma_slave_config_write.exit.for.end_crit_edge: ; preds = %ep93xx_dma_slave_config_write.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %ep93xx_dma_slave_config_write.exit
  %lock.i82 = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 6
  %free_list.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 11
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp29 = icmp eq i32 %dir, 1
  %runtime_addr31 = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %offset.0109 = phi i32 [ 0, %for.body.lr.ph ], [ %add40, %for.inc.for.body_crit_edge ]
  %first.0108 = phi ptr [ null, %for.body.lr.ph ], [ %first.1, %for.inc.for.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i82) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %.pn.in.in.i = phi ptr [ %free_list.i, %for.body ], [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ]
  %31 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp12.not.i = icmp eq ptr %.pn.in.i, %free_list.i
  br i1 %cmp12.not.i, label %ep93xx_dma_desc_get.exit.thread, label %for.body.i

ep93xx_dma_desc_get.exit.thread:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i82, i32 noundef %call2.i) #10
  br label %do.end26

for.body.i:                                       ; preds = %for.cond.i
  %flags.i.i = getelementptr i8, ptr %.pn.in.i, i32 -104
  %32 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %33, 2
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.then.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %desc.0.le.i = getelementptr i8, ptr %.pn.in.i, i32 -124
  %txd.le.i = getelementptr i8, ptr %.pn.in.i, i32 -108
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i83, label %if.then.i.ep93xx_dma_desc_get.exit_crit_edge

if.then.i.ep93xx_dma_desc_get.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_desc_get.exit

if.end.i.i.i83:                                   ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %34 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i.i, align 4
  %36 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %ep93xx_dma_desc_get.exit

ep93xx_dma_desc_get.exit:                         ; preds = %if.end.i.i.i83, %if.then.i.ep93xx_dma_desc_get.exit_crit_edge
  %40 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %.pn.in.i, ptr %.pn.in.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %41 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %.pn.in.i, ptr %prev.i3.i.i, align 4
  %42 = ptrtoint ptr %txd.le.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 0, ptr %txd.le.i, align 4
  %callback.i = getelementptr i8, ptr %.pn.in.i, i32 -84
  %43 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr null, ptr %callback.i, align 4
  %callback_param.i = getelementptr i8, ptr %.pn.in.i, i32 -76
  %44 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr null, ptr %callback_param.i, align 4
  %45 = call ptr @memset(ptr %desc.0.le.i, i32 0, i32 13)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i82, i32 noundef %call2.i) #10
  %tobool22.not = icmp eq ptr %desc.0.le.i, null
  br i1 %tobool22.not, label %ep93xx_dma_desc_get.exit.do.end26_crit_edge, label %if.end28

ep93xx_dma_desc_get.exit.do.end26_crit_edge:      ; preds = %ep93xx_dma_desc_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end26

do.end26:                                         ; preds = %ep93xx_dma_desc_get.exit.do.end26_crit_edge, %ep93xx_dma_desc_get.exit.thread
  %dev.i84 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %46 = ptrtoint ptr %dev.i84 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i84, align 4
  %device.i85 = getelementptr inbounds %struct.dma_chan_dev, ptr %47, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i85, ptr noundef nonnull @.str.30) #14
  %tobool.not.i86 = icmp eq ptr %first.0108, null
  br i1 %tobool.not.i86, label %do.end26.cleanup_crit_edge, label %if.then.i90

do.end26.cleanup_crit_edge:                       ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i90:                                      ; preds = %do.end26
  %call2.i88 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i82) #10
  %tx_list.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0108, i32 0, i32 5
  %48 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %tx_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %49, %tx_list.i
  br i1 %cmp.i.not.i.i, label %if.then.i90.list_splice_init.exit.i_crit_edge, label %if.then.i.i

if.then.i90.list_splice_init.exit.i_crit_edge:    ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %if.then.i90
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %free_list.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0108, i32 0, i32 5, i32 1
  %52 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %free_list.i, ptr %prev3.i.i.i, align 4
  store ptr %49, ptr %free_list.i, align 4
  %55 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %51, ptr %53, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %51, i32 0, i32 1
  %56 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %53, ptr %prev6.i.i.i, align 4
  %57 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  store ptr %tx_list.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %if.then.i90.list_splice_init.exit.i_crit_edge
  %node.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0108, i32 0, i32 6
  %58 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i91 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %free_list.i, ptr noundef %59) #10
  br i1 %call.i.i.i91, label %if.end.i.i.i92, label %list_splice_init.exit.i.list_add.exit.i_crit_edge

list_splice_init.exit.i.list_add.exit.i_crit_edge: ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i

if.end.i.i.i92:                                   ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %59, i32 0, i32 1
  %60 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %node.i, ptr %prev1.i.i.i, align 4
  %61 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %59, ptr %node.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0108, i32 0, i32 6, i32 1
  %62 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %free_list.i, ptr %prev3.i.i12.i, align 4
  %63 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %node.i, ptr %free_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i92, %list_splice_init.exit.i.list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i82, i32 noundef %call2.i88) #10
  br label %cleanup

if.end28:                                         ; preds = %ep93xx_dma_desc_get.exit
  br i1 %cmp29, label %if.then30, label %if.else

if.then30:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %add = add i32 %offset.0109, %dma_addr
  %64 = ptrtoint ptr %desc.0.le.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %add, ptr %desc.0.le.i, align 4
  %65 = ptrtoint ptr %runtime_addr31 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %runtime_addr31, align 4
  br label %if.end35

if.else:                                          ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %runtime_addr31 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load i32, ptr %runtime_addr31, align 4
  %69 = ptrtoint ptr %desc.0.le.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store i32 %68, ptr %desc.0.le.i, align 4
  %add33 = add i32 %offset.0109, %dma_addr
  br label %if.end35

if.end35:                                         ; preds = %if.else, %if.then30
  %add33.sink = phi i32 [ %66, %if.then30 ], [ %add33, %if.else ]
  %70 = getelementptr i8, ptr %.pn.in.i, i32 -120
  %71 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %add33.sink, ptr %70, align 4
  %size = getelementptr i8, ptr %.pn.in.i, i32 -116
  %72 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %period_len, ptr %size, align 4
  %tobool36.not = icmp eq ptr %first.0108, null
  br i1 %tobool36.not, label %if.end35.for.inc_crit_edge, label %if.else38

if.end35.for.inc_crit_edge:                       ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else38:                                        ; preds = %if.end35
  %tx_list = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0108, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0108, i32 0, i32 5, i32 1
  %73 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in.i, ptr noundef %74, ptr noundef %tx_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else38.for.inc_crit_edge

if.else38.for.inc_crit_edge:                      ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i:                                       ; preds = %if.else38
  call void @__sanitizer_cov_trace_pc() #12
  %75 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %.pn.in.i, ptr %prev.i, align 4
  %76 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %tx_list, ptr %.pn.in.i, align 4
  %77 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %74, ptr %prev.i3.i.i, align 4
  %78 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %.pn.in.i, ptr %74, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.else38.for.inc_crit_edge, %if.end35.for.inc_crit_edge
  %first.1 = phi ptr [ %desc.0.le.i, %if.end35.for.inc_crit_edge ], [ %first.0108, %if.else38.for.inc_crit_edge ], [ %first.0108, %if.end.i.i ]
  %add40 = add i32 %offset.0109, %period_len
  %cmp20 = icmp ult i32 %add40, %buf_len
  br i1 %cmp20, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %ep93xx_dma_slave_config_write.exit.for.end_crit_edge
  %first.0.lcssa = phi ptr [ null, %ep93xx_dma_slave_config_write.exit.for.end_crit_edge ], [ %first.1, %for.inc.for.end_crit_edge ]
  %txd = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0.lcssa, i32 0, i32 4
  %79 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %79)
  store i32 -16, ptr %txd, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %list_add.exit.i, %do.end26.cleanup_crit_edge, %do.end16, %do.end9, %do.end
  %retval.0 = phi ptr [ null, %do.end9 ], [ null, %do.end16 ], [ %txd, %for.end ], [ null, %do.end ], [ null, %do.end26.cleanup_crit_edge ], [ null, %list_add.exit.i ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @ep93xx_dma_slave_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %config) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %slave_config = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 14
  %0 = call ptr @memcpy(ptr %slave_config, ptr %config, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep93xx_dma_synchronize(ptr noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %edma = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 1
  %0 = ptrtoint ptr %edma to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edma, align 4
  %hw_synchronize = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %hw_synchronize to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %hw_synchronize, align 4
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void %3(ptr noundef %chan) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_dma_terminate_all(ptr noundef %chan) #4 align 64 {
entry:
  %list = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %list) #10
  %0 = getelementptr inbounds %struct.list_head, ptr %list, i32 0, i32 1
  %1 = ptrtoint ptr %list to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %list, ptr %list, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %list, ptr %0, align 4
  %lock = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 6
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %edma = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 1
  %3 = ptrtoint ptr %edma to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %edma, align 4
  %hw_shutdown = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %4, i32 0, i32 4
  %5 = ptrtoint ptr %hw_shutdown to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %hw_shutdown, align 4
  call void %6(ptr noundef %chan) #10
  %flags6 = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 7
  call void @_clear_bit(i32 noundef 0, ptr noundef %flags6) #10
  %active = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 9
  %7 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load volatile ptr, ptr %active, align 4
  %cmp.i.not.i = icmp eq ptr %8, %active
  br i1 %cmp.i.not.i, label %entry.list_splice_init.exit_crit_edge, label %if.then.i

entry.list_splice_init.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %9 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %list, align 4
  %prev2.i.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 9, i32 1
  %11 = ptrtoint ptr %prev2.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev2.i.i, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %8, i32 0, i32 1
  %13 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %list, ptr %prev3.i.i, align 4
  store ptr %8, ptr %list, align 4
  %14 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %10, ptr %12, align 4
  %prev6.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %15 = ptrtoint ptr %prev6.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev6.i.i, align 4
  %16 = ptrtoint ptr %active to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %active, ptr %active, align 4
  store ptr %active, ptr %prev2.i.i, align 4
  br label %list_splice_init.exit

list_splice_init.exit:                            ; preds = %if.then.i, %entry.list_splice_init.exit_crit_edge
  %queue = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 10
  %17 = ptrtoint ptr %queue to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %queue, align 4
  %cmp.i.not.i37 = icmp eq ptr %18, %queue
  br i1 %cmp.i.not.i37, label %list_splice_init.exit.list_splice_init.exit42_crit_edge, label %if.then.i41

list_splice_init.exit.list_splice_init.exit42_crit_edge: ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit42

if.then.i41:                                      ; preds = %list_splice_init.exit
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %list, align 4
  %prev2.i.i38 = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 10, i32 1
  %21 = ptrtoint ptr %prev2.i.i38 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev2.i.i38, align 4
  %prev3.i.i39 = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i39 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %list, ptr %prev3.i.i39, align 4
  store ptr %18, ptr %list, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %20, ptr %22, align 4
  %prev6.i.i40 = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %prev6.i.i40 to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev6.i.i40, align 4
  %26 = ptrtoint ptr %queue to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %queue, ptr %queue, align 4
  store ptr %queue, ptr %prev2.i.i38, align 4
  br label %list_splice_init.exit42

list_splice_init.exit42:                          ; preds = %if.then.i41, %list_splice_init.exit.list_splice_init.exit42_crit_edge
  %27 = ptrtoint ptr %edma to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %edma, align 4
  %hw_setup = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %28, i32 0, i32 2
  %29 = ptrtoint ptr %hw_setup to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %hw_setup, align 4
  %call8 = call i32 %30(ptr noundef %chan) #10
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  %31 = ptrtoint ptr %list to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %list, align 4
  %cmp17.not44 = icmp eq ptr %32, %list
  br i1 %cmp17.not44, label %list_splice_init.exit42.for.end_crit_edge, label %for.body.lr.ph

list_splice_init.exit42.for.end_crit_edge:        ; preds = %list_splice_init.exit42
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %list_splice_init.exit42
  %free_list.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %ep93xx_dma_desc_put.exit.for.body_crit_edge, %for.body.lr.ph
  %.pn.in45 = phi ptr [ %32, %for.body.lr.ph ], [ %.pn, %ep93xx_dma_desc_put.exit.for.body_crit_edge ]
  %desc.0 = getelementptr i8, ptr %.pn.in45, i32 -124
  %33 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_load4_noabort(i32 %33)
  %.pn = load ptr, ptr %.pn.in45, align 4
  %tobool.not.i = icmp eq ptr %desc.0, null
  br i1 %tobool.not.i, label %for.body.ep93xx_dma_desc_put.exit_crit_edge, label %if.then.i43

for.body.ep93xx_dma_desc_put.exit_crit_edge:      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_desc_put.exit

if.then.i43:                                      ; preds = %for.body
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %tx_list.i = getelementptr i8, ptr %.pn.in45, i32 -8
  %34 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %tx_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %35, %tx_list.i
  br i1 %cmp.i.not.i.i, label %if.then.i43.list_splice_init.exit.i_crit_edge, label %if.then.i.i

if.then.i43.list_splice_init.exit.i_crit_edge:    ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %if.then.i43
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %free_list.i, align 4
  %prev2.i.i.i = getelementptr i8, ptr %.pn.in45, i32 -4
  %38 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %35, i32 0, i32 1
  %40 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %free_list.i, ptr %prev3.i.i.i, align 4
  store ptr %35, ptr %free_list.i, align 4
  %41 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %37, ptr %39, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev6.i.i.i, align 4
  %43 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  store ptr %tx_list.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %if.then.i43.list_splice_init.exit.i_crit_edge
  %44 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %.pn.in45, ptr noundef %free_list.i, ptr noundef %45) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %list_splice_init.exit.i.list_add.exit.i_crit_edge

list_splice_init.exit.i.list_add.exit.i_crit_edge: ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i

if.end.i.i.i:                                     ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %.pn.in45, ptr %prev1.i.i.i, align 4
  %47 = ptrtoint ptr %.pn.in45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %45, ptr %.pn.in45, align 4
  %prev3.i.i12.i = getelementptr i8, ptr %.pn.in45, i32 4
  %48 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %free_list.i, ptr %prev3.i.i12.i, align 4
  %49 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store volatile ptr %.pn.in45, ptr %free_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i, %list_splice_init.exit.i.list_add.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2.i) #10
  br label %ep93xx_dma_desc_put.exit

ep93xx_dma_desc_put.exit:                         ; preds = %list_add.exit.i, %for.body.ep93xx_dma_desc_put.exit_crit_edge
  %cmp17.not = icmp eq ptr %.pn, %list
  br i1 %cmp17.not, label %ep93xx_dma_desc_put.exit.for.end_crit_edge, label %ep93xx_dma_desc_put.exit.for.body_crit_edge

ep93xx_dma_desc_put.exit.for.body_crit_edge:      ; preds = %ep93xx_dma_desc_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

ep93xx_dma_desc_put.exit.for.end_crit_edge:       ; preds = %ep93xx_dma_desc_put.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %ep93xx_dma_desc_put.exit.for.end_crit_edge, %list_splice_init.exit42.for.end_crit_edge
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %list) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ep93xx_dma_issue_pending(ptr noundef %chan) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 6
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %active.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 9
  %0 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %active.i, align 4
  %cmp.i.not.i = icmp eq ptr %1, %active.i
  br i1 %cmp.i.not.i, label %lor.lhs.false.i, label %entry.ep93xx_dma_advance_work.exit_crit_edge

entry.ep93xx_dma_advance_work.exit_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_advance_work.exit

lor.lhs.false.i:                                  ; preds = %entry
  %queue.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 10
  %2 = ptrtoint ptr %queue.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %queue.i, align 4
  %cmp.i23.not.i = icmp eq ptr %3, %queue.i
  br i1 %cmp.i23.not.i, label %lor.lhs.false.i.ep93xx_dma_advance_work.exit_crit_edge, label %if.end.i

lor.lhs.false.i.ep93xx_dma_advance_work.exit_crit_edge: ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_advance_work.exit

if.end.i:                                         ; preds = %lor.lhs.false.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -124
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %3) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.list_del_init.exit.i_crit_edge

if.end.i.list_del_init.exit.i_crit_edge:          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del_init.exit.i

if.end.i.i.i:                                     ; preds = %if.end.i
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
  br label %list_del_init.exit.i

list_del_init.exit.i:                             ; preds = %if.end.i.i.i, %if.end.i.list_del_init.exit.i_crit_edge
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %10)
  store volatile ptr %3, ptr %3, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %3, ptr %prev.i3.i.i, align 4
  tail call fastcc void @ep93xx_dma_set_active(ptr noundef %chan, ptr noundef %add.ptr.i) #10
  %edma.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 1
  %12 = ptrtoint ptr %edma.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edma.i, align 4
  %hw_submit.i = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %hw_submit.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %hw_submit.i, align 4
  tail call void %15(ptr noundef %chan) #10
  br label %ep93xx_dma_advance_work.exit

ep93xx_dma_advance_work.exit:                     ; preds = %list_del_init.exit.i, %lor.lhs.false.i.ep93xx_dma_advance_work.exit_crit_edge, %entry.ep93xx_dma_advance_work.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_dma_tx_status(ptr nocapture noundef readonly %chan, i32 noundef %cookie, ptr noundef writeonly %state) #4 align 64 {
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
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !120
  %tobool.not.i = icmp eq ptr %state, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %3, ptr %state, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 1
  %5 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %1, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %6 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 3
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
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.then.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_cookie_status.exit

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.dma_cookie_status.exit_crit_edge, label %if.else.i.i.if.end8.i.i_crit_edge

if.else.i.i.if.end8.i.i_crit_edge:                ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.else.i.i.dma_cookie_status.exit_crit_edge:     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %dma_cookie_status.exit

if.end8.i.i:                                      ; preds = %if.else.i.i.if.end8.i.i_crit_edge, %if.then.i.i.if.end8.i.i_crit_edge
  br label %dma_cookie_status.exit

dma_cookie_status.exit:                           ; preds = %if.end8.i.i, %if.else.i.i.dma_cookie_status.exit_crit_edge, %if.then.i.i.dma_cookie_status.exit_crit_edge
  %retval.0.i.i = phi i32 [ 1, %if.end8.i.i ], [ 0, %if.then.i.i.dma_cookie_status.exit_crit_edge ], [ 0, %if.else.i.i.dma_cookie_status.exit_crit_edge ]
  ret i32 %retval.0.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ep93xx_dma_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %cmp54.not = icmp eq i32 %len, 0
  br i1 %cmp54.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %lock.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 6
  %free_list.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %chan, i32 0, i32 11
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %offset.056 = phi i32 [ 0, %for.body.lr.ph ], [ %add8, %for.inc.for.body_crit_edge ]
  %first.055 = phi ptr [ null, %for.body.lr.ph ], [ %first.1, %for.inc.for.body_crit_edge ]
  %call2.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %for.body
  %.pn.in.in.i = phi ptr [ %free_list.i, %for.body ], [ %.pn.in.i, %for.body.i.for.cond.i_crit_edge ]
  %0 = ptrtoint ptr %.pn.in.in.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn.in.i = load ptr, ptr %.pn.in.in.i, align 4
  %cmp12.not.i = icmp eq ptr %.pn.in.i, %free_list.i
  br i1 %cmp12.not.i, label %ep93xx_dma_desc_get.exit.thread, label %for.body.i

ep93xx_dma_desc_get.exit.thread:                  ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  br label %do.end

for.body.i:                                       ; preds = %for.cond.i
  %flags.i.i = getelementptr i8, ptr %.pn.in.i, i32 -104
  %1 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %2, 2
  %cmp.i.not.i = icmp eq i32 %and.i.i, 0
  br i1 %cmp.i.not.i, label %for.body.i.for.cond.i_crit_edge, label %if.then.i

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.then.i:                                        ; preds = %for.body.i
  %desc.0.le.i = getelementptr i8, ptr %.pn.in.i, i32 -124
  %txd.le.i = getelementptr i8, ptr %.pn.in.i, i32 -108
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.then.i.ep93xx_dma_desc_get.exit_crit_edge

if.then.i.ep93xx_dma_desc_get.exit_crit_edge:     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_desc_get.exit

if.end.i.i.i:                                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %3 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %prev.i.i.i, align 4
  %5 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %.pn.in.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %4, ptr %prev1.i.i.i.i, align 4
  %8 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %6, ptr %4, align 4
  br label %ep93xx_dma_desc_get.exit

ep93xx_dma_desc_get.exit:                         ; preds = %if.end.i.i.i, %if.then.i.ep93xx_dma_desc_get.exit_crit_edge
  %9 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %.pn.in.i, ptr %.pn.in.i, align 4
  %prev.i3.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in.i, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %.pn.in.i, ptr %prev.i3.i.i, align 4
  %11 = ptrtoint ptr %txd.le.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 0, ptr %txd.le.i, align 4
  %callback.i = getelementptr i8, ptr %.pn.in.i, i32 -84
  %12 = ptrtoint ptr %callback.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr null, ptr %callback.i, align 4
  %callback_param.i = getelementptr i8, ptr %.pn.in.i, i32 -76
  %13 = ptrtoint ptr %callback_param.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr null, ptr %callback_param.i, align 4
  %14 = call ptr @memset(ptr %desc.0.le.i, i32 0, i32 13)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #10
  %tobool.not = icmp eq ptr %desc.0.le.i, null
  br i1 %tobool.not, label %ep93xx_dma_desc_get.exit.do.end_crit_edge, label %if.end

ep93xx_dma_desc_get.exit.do.end_crit_edge:        ; preds = %ep93xx_dma_desc_get.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end:                                           ; preds = %ep93xx_dma_desc_get.exit.do.end_crit_edge, %ep93xx_dma_desc_get.exit.thread
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %15 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %16, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i, ptr noundef nonnull @.str.30) #14
  %tobool.not.i = icmp eq ptr %first.055, null
  br i1 %tobool.not.i, label %do.end.cleanup_crit_edge, label %if.then.i39

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i39:                                      ; preds = %do.end
  %call2.i37 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %tx_list.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.055, i32 0, i32 5
  %17 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load volatile ptr, ptr %tx_list.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %18, %tx_list.i
  br i1 %cmp.i.not.i.i, label %if.then.i39.list_splice_init.exit.i_crit_edge, label %if.then.i.i

if.then.i39.list_splice_init.exit.i_crit_edge:    ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_init.exit.i

if.then.i.i:                                      ; preds = %if.then.i39
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %free_list.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.055, i32 0, i32 5, i32 1
  %21 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %18, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %free_list.i, ptr %prev3.i.i.i, align 4
  store ptr %18, ptr %free_list.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %20, ptr %22, align 4
  %prev6.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %25 = ptrtoint ptr %prev6.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %22, ptr %prev6.i.i.i, align 4
  %26 = ptrtoint ptr %tx_list.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %tx_list.i, ptr %tx_list.i, align 4
  store ptr %tx_list.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_init.exit.i

list_splice_init.exit.i:                          ; preds = %if.then.i.i, %if.then.i39.list_splice_init.exit.i_crit_edge
  %node.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.055, i32 0, i32 6
  %27 = ptrtoint ptr %free_list.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %free_list.i, align 4
  %call.i.i.i40 = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %free_list.i, ptr noundef %28) #10
  br i1 %call.i.i.i40, label %if.end.i.i.i41, label %list_splice_init.exit.i.list_add.exit.i_crit_edge

list_splice_init.exit.i.list_add.exit.i_crit_edge: ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add.exit.i

if.end.i.i.i41:                                   ; preds = %list_splice_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %28, i32 0, i32 1
  %29 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %node.i, ptr %prev1.i.i.i, align 4
  %30 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %28, ptr %node.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.055, i32 0, i32 6, i32 1
  %31 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %free_list.i, ptr %prev3.i.i12.i, align 4
  %32 = ptrtoint ptr %free_list.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %node.i, ptr %free_list.i, align 4
  br label %list_add.exit.i

list_add.exit.i:                                  ; preds = %if.end.i.i.i41, %list_splice_init.exit.i.list_add.exit.i_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i37) #10
  br label %cleanup

if.end:                                           ; preds = %ep93xx_dma_desc_get.exit
  %sub = sub i32 %len, %offset.056
  %33 = tail call i32 @llvm.umin.i32(i32 %sub, i32 65535)
  %add = add i32 %offset.056, %src
  %34 = ptrtoint ptr %desc.0.le.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add, ptr %desc.0.le.i, align 4
  %add4 = add i32 %offset.056, %dest
  %dst_addr = getelementptr i8, ptr %.pn.in.i, i32 -120
  %35 = ptrtoint ptr %dst_addr to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %add4, ptr %dst_addr, align 4
  %size = getelementptr i8, ptr %.pn.in.i, i32 -116
  %36 = ptrtoint ptr %size to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %33, ptr %size, align 4
  %tobool5.not = icmp eq ptr %first.055, null
  br i1 %tobool5.not, label %if.end.for.inc_crit_edge, label %if.else

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.else:                                          ; preds = %if.end
  %tx_list = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.055, i32 0, i32 5
  %prev.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.055, i32 0, i32 5, i32 1
  %37 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in.i, ptr noundef %38, ptr noundef %tx_list) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else.for.inc_crit_edge

if.else.for.inc_crit_edge:                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %.pn.in.i, ptr %prev.i, align 4
  %40 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %tx_list, ptr %.pn.in.i, align 4
  %41 = ptrtoint ptr %prev.i3.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev.i3.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %.pn.in.i, ptr %38, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i, %if.else.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %first.1 = phi ptr [ %desc.0.le.i, %if.end.for.inc_crit_edge ], [ %first.055, %if.else.for.inc_crit_edge ], [ %first.055, %if.end.i.i ]
  %add8 = add i32 %33, %offset.056
  %cmp = icmp ult i32 %add8, %len
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %first.0.lcssa = phi ptr [ null, %entry.for.end_crit_edge ], [ %first.1, %for.inc.for.end_crit_edge ]
  %txd = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0.lcssa, i32 0, i32 4
  %43 = ptrtoint ptr %txd to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 -16, ptr %txd, align 4
  %flags10 = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %first.0.lcssa, i32 0, i32 4, i32 1
  %44 = ptrtoint ptr %flags10 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %flags, ptr %flags10, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %list_add.exit.i, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %txd, %for.end ], [ null, %do.end.cleanup_crit_edge ], [ null, %list_add.exit.i ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m2m_hw_setup(ptr nocapture noundef readonly %edmac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dma_chan, ptr %edmac, i32 0, i32 14
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %do.body, label %if.end

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !121
  tail call void @arm_heavy_mb() #10
  %regs = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %3, i32 0) #10, !srcloc !122
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %1, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.53)
  switch i32 %5, label %if.end.cleanup_crit_edge [
    i32 10, label %sw.bb
    i32 11, label %sw.bb9
  ]

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

sw.bb:                                            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %direction = getelementptr inbounds %struct.ep93xx_dma_data, ptr %1, i32 0, i32 1
  %7 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %8)
  %cmp = icmp eq i32 %8, 1
  %. = select i1 %cmp, i32 192948224, i32 188764160
  br label %do.body22

sw.bb9:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %direction10 = getelementptr inbounds %struct.ep93xx_dma_data, ptr %1, i32 0, i32 1
  %9 = ptrtoint ptr %direction10 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %direction10, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %10)
  %cmp11 = icmp eq i32 %10, 1
  %.48 = select i1 %cmp11, i32 130034176, i32 96489984
  br label %do.body22

do.body22:                                        ; preds = %sw.bb9, %sw.bb
  %control.1 = phi i32 [ %.48, %sw.bb9 ], [ %., %sw.bb ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !123
  tail call void @arm_heavy_mb() #10
  %11 = tail call i32 @llvm.bswap.i32(i32 %control.1)
  %regs25 = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 2
  %12 = ptrtoint ptr %regs25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regs25, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #10, !srcloc !122
  br label %cleanup

cleanup:                                          ; preds = %do.body22, %if.end.cleanup_crit_edge, %do.body
  %retval.0 = phi i32 [ 0, %do.body22 ], [ 0, %do.body ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m2m_hw_shutdown(ptr nocapture noundef readonly %edmac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !124
  tail call void @arm_heavy_mb() #10
  %regs = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #10, !srcloc !122
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m2m_hw_submit(ptr noundef %edmac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dma_chan, ptr %edmac, i32 0, i32 14
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  %regs = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 2
  %2 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !126
  %5 = and i32 %4, -393217
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %runtime_ctrl = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 13
  %7 = ptrtoint ptr %runtime_ctrl to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %runtime_ctrl, align 4
  %or = or i32 %6, %8
  tail call fastcc void @m2m_fill_desc(ptr noundef %edmac)
  %or2 = or i32 %or, 4
  %active.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 9
  %9 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %active.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %10, %active.i
  br i1 %cmp.i.not.i.i, label %entry.list_rotate_left.exit.i_crit_edge, label %if.then.i.i

entry.list_rotate_left.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_rotate_left.exit.i

if.then.i.i:                                      ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %prev.i.i.i.i, align 4
  %13 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %10, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %12, ptr %prev1.i.i.i.i.i, align 4
  %16 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %16)
  store volatile ptr %14, ptr %12, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %prev.i2.i.i.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 9, i32 1
  %17 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef %18, ptr noundef %active.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.list_rotate_left.exit.i_crit_edge

__list_del_entry.exit.i.i.i.list_rotate_left.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_rotate_left.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %10, ptr %prev.i2.i.i.i, align 4
  %20 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %active.i, ptr %10, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %21 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev3.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %10, ptr %18, align 4
  br label %list_rotate_left.exit.i

list_rotate_left.exit.i:                          ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.list_rotate_left.exit.i_crit_edge, %entry.list_rotate_left.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 7
  %23 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %24, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %list_rotate_left.exit.i.if.then_crit_edge

list_rotate_left.exit.i.if.then_crit_edge:        ; preds = %list_rotate_left.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %list_rotate_left.exit.i
  %25 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %active.i, align 4
  %cmp.not.i.i = icmp eq ptr %26, %active.i
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 -124
  %tobool2.not9.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not.i = or i1 %cmp.not.i.i, %tobool2.not9.i
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %ep93xx_dma_advance_active.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

ep93xx_dma_advance_active.exit:                   ; preds = %if.end.i
  %txd.i = getelementptr i8, ptr %26, i32 -108
  %27 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %txd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool5.not.i = icmp eq i32 %28, 0
  br i1 %tobool5.not.i, label %ep93xx_dma_advance_active.exit.if.then_crit_edge, label %ep93xx_dma_advance_active.exit.if.end_crit_edge

ep93xx_dma_advance_active.exit.if.end_crit_edge:  ; preds = %ep93xx_dma_advance_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

ep93xx_dma_advance_active.exit.if.then_crit_edge: ; preds = %ep93xx_dma_advance_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %ep93xx_dma_advance_active.exit.if.then_crit_edge, %list_rotate_left.exit.i.if.then_crit_edge
  tail call fastcc void @m2m_fill_desc(ptr noundef %edmac)
  %or4 = or i32 %or, 2097156
  br label %if.end

if.end:                                           ; preds = %if.then, %ep93xx_dma_advance_active.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %control.0 = phi i32 [ %or4, %if.then ], [ %or2, %ep93xx_dma_advance_active.exit.if.end_crit_edge ], [ %or2, %if.end.i.if.end_crit_edge ]
  %or5 = or i32 %control.0, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !127
  tail call void @arm_heavy_mb() #10
  %29 = tail call i32 @llvm.bswap.i32(i32 %or5)
  %30 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %31, i32 %29) #10, !srcloc !122
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %if.then8, label %if.end.if.end15_crit_edge

if.end.if.end15_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

if.then8:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %or9 = or i32 %control.0, 24
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !128
  tail call void @arm_heavy_mb() #10
  %32 = tail call i32 @llvm.bswap.i32(i32 %or9)
  %33 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %34, i32 %32) #10, !srcloc !122
  br label %if.end15

if.end15:                                         ; preds = %if.then8, %if.end.if.end15_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m2m_hw_interrupt(ptr noundef %edmac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !125
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !129
  %and2 = and i32 %3, 48
  %and3 = and i32 %3, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and3)
  %tobool.not = icmp eq i32 %and3, 0
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  %add.ptr7 = getelementptr i8, ptr %5, i32 4
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr7) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !130
  %7 = and i32 %6, 100663296
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool12.not = icmp eq i32 %7, 0
  br i1 %tobool12.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  br i1 %tobool.not, label %if.end.if.end17_crit_edge, label %do.body

if.end.if.end17_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end17

do.body:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !131
  tail call void @arm_heavy_mb() #10
  %8 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regs, align 4
  %add.ptr16 = getelementptr i8, ptr %9, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr16, i32 0) #10, !srcloc !122
  br label %if.end17

if.end17:                                         ; preds = %do.body, %if.end.if.end17_crit_edge
  %active.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 9
  %10 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile ptr, ptr %active.i, align 4
  %cmp.not.i = icmp eq ptr %11, %active.i
  %add.ptr.i = getelementptr i8, ptr %11, i32 -124
  %tobool19.not97 = icmp eq ptr %add.ptr.i, null
  %tobool19.not = or i1 %cmp.not.i, %tobool19.not97
  br i1 %tobool19.not, label %if.end17.land.lhs.true47_crit_edge, label %lor.rhs

if.end17.land.lhs.true47_crit_edge:               ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true47

lor.rhs:                                          ; preds = %if.end17
  %txd = getelementptr i8, ptr %11, i32 -108
  %12 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %txd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool20.not = icmp eq i32 %13, 0
  br i1 %tobool20.not, label %land.lhs.true, label %lor.rhs.land.lhs.true47_crit_edge

lor.rhs.land.lhs.true47_crit_edge:                ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true47

land.lhs.true:                                    ; preds = %lor.rhs
  %14 = zext i32 %and2 to i64
  call void @__sanitizer_cov_trace_switch(i64 %14, ptr @__sancov_gen_cov_switch_values.54)
  switch i32 %and2, label %land.lhs.true.cleanup_crit_edge [
    i32 0, label %land.lhs.true.if.then24_crit_edge
    i32 16, label %land.lhs.true.if.then24_crit_edge98
  ]

land.lhs.true.if.then24_crit_edge98:              ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

land.lhs.true.if.then24_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then24

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then24:                                        ; preds = %land.lhs.true.if.then24_crit_edge, %land.lhs.true.if.then24_crit_edge98
  %15 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load volatile ptr, ptr %active.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %16, %active.i
  br i1 %cmp.i.not.i.i, label %if.then24.list_rotate_left.exit.i_crit_edge, label %if.then.i.i

if.then24.list_rotate_left.exit.i_crit_edge:      ; preds = %if.then24
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_rotate_left.exit.i

if.then.i.i:                                      ; preds = %if.then24
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %16) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i.i.i, align 4
  %19 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %16, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %prev.i2.i.i.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 9, i32 1
  %23 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %16, ptr noundef %24, ptr noundef %active.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.list_rotate_left.exit.i_crit_edge

__list_del_entry.exit.i.i.i.list_rotate_left.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_rotate_left.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %16, ptr %prev.i2.i.i.i, align 4
  %26 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %active.i, ptr %16, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %16, ptr %24, align 4
  br label %list_rotate_left.exit.i

list_rotate_left.exit.i:                          ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.list_rotate_left.exit.i_crit_edge, %if.then24.list_rotate_left.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 7
  %29 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %30, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %list_rotate_left.exit.i.if.then26_crit_edge

list_rotate_left.exit.i.if.then26_crit_edge:      ; preds = %list_rotate_left.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.end.i:                                         ; preds = %list_rotate_left.exit.i
  %31 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load volatile ptr, ptr %active.i, align 4
  %cmp.not.i.i = icmp eq ptr %32, %active.i
  %add.ptr.i.i = getelementptr i8, ptr %32, i32 -124
  %tobool2.not9.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not.i = or i1 %cmp.not.i.i, %tobool2.not9.i
  br i1 %tobool2.not.i, label %if.end.i.land.lhs.true47_crit_edge, label %ep93xx_dma_advance_active.exit

if.end.i.land.lhs.true47_crit_edge:               ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true47

ep93xx_dma_advance_active.exit:                   ; preds = %if.end.i
  %txd.i = getelementptr i8, ptr %32, i32 -108
  %33 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %txd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %34)
  %tobool5.not.i = icmp eq i32 %34, 0
  br i1 %tobool5.not.i, label %ep93xx_dma_advance_active.exit.if.then26_crit_edge, label %ep93xx_dma_advance_active.exit.land.lhs.true47_crit_edge

ep93xx_dma_advance_active.exit.land.lhs.true47_crit_edge: ; preds = %ep93xx_dma_advance_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true47

ep93xx_dma_advance_active.exit.if.then26_crit_edge: ; preds = %ep93xx_dma_advance_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then26

if.then26:                                        ; preds = %ep93xx_dma_advance_active.exit.if.then26_crit_edge, %list_rotate_left.exit.i.if.then26_crit_edge
  tail call fastcc void @m2m_fill_desc(ptr noundef %edmac)
  br i1 %tobool.not, label %if.then26.cleanup_crit_edge, label %land.lhs.true28

if.then26.cleanup_crit_edge:                      ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true28:                                  ; preds = %if.then26
  %private = getelementptr inbounds %struct.dma_chan, ptr %edmac, i32 0, i32 14
  %35 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %private, align 4
  %tobool29.not = icmp eq ptr %36, null
  br i1 %tobool29.not, label %if.then30, label %land.lhs.true28.cleanup_crit_edge

land.lhs.true28.cleanup_crit_edge:                ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then30:                                        ; preds = %land.lhs.true28
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %regs, align 4
  %39 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %38) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !132
  %40 = or i32 %39, 268435456
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !133
  tail call void @arm_heavy_mb() #10
  %41 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %42, i32 %40) #10, !srcloc !122
  br label %cleanup

land.lhs.true47:                                  ; preds = %ep93xx_dma_advance_active.exit.land.lhs.true47_crit_edge, %if.end.i.land.lhs.true47_crit_edge, %lor.rhs.land.lhs.true47_crit_edge, %if.end17.land.lhs.true47_crit_edge
  %43 = and i32 %3, 62
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %43)
  %44 = icmp eq i32 %43, 2
  br i1 %44, label %if.then51, label %land.lhs.true47.cleanup_crit_edge

land.lhs.true47.cleanup_crit_edge:                ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then51:                                        ; preds = %land.lhs.true47
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %regs, align 4
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %46) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !134
  %48 = and i32 %47, -201334785
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !135
  tail call void @arm_heavy_mb() #10
  %49 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %50, i32 %48) #10, !srcloc !122
  br label %cleanup

cleanup:                                          ; preds = %if.then51, %land.lhs.true47.cleanup_crit_edge, %if.then30, %land.lhs.true28.cleanup_crit_edge, %if.then26.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %if.then51 ], [ 0, %entry.cleanup_crit_edge ], [ 2, %if.then30 ], [ 2, %land.lhs.true28.cleanup_crit_edge ], [ 2, %if.then26.cleanup_crit_edge ], [ 2, %land.lhs.true.cleanup_crit_edge ], [ 2, %land.lhs.true47.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m2p_hw_synchronize(ptr noundef %edmac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 6
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %regs = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !136
  %3 = and i32 %2, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  tail call void @arm_heavy_mb() #10
  %4 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 %3) #10, !srcloc !122
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %7) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call2) #10
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %add.ptr.i18 = getelementptr i8, ptr %10, i32 12
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i18) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %12 = and i32 %11, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp10.not19 = icmp eq i32 %12, 0
  br i1 %cmp10.not19, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %while.body.while.body_crit_edge, %entry.while.body_crit_edge
  tail call void @schedule() #10
  %13 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %regs, align 4
  %add.ptr.i = getelementptr i8, ptr %14, i32 12
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %16 = and i32 %15, 536870912
  %cmp10.not = icmp eq i32 %16, 0
  br i1 %cmp10.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m2p_hw_setup(ptr nocapture noundef %edmac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %private = getelementptr inbounds %struct.dma_chan, ptr %edmac, i32 0, i32 14
  %0 = ptrtoint ptr %private to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %private, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !140
  tail call void @arm_heavy_mb() #10
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %1, align 4
  %and = shl i32 %3, 24
  %4 = and i32 %and, 251658240
  %regs = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 2
  %5 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %6, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %4) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  tail call void @arm_heavy_mb() #10
  %7 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %8, i32 1476395008) #10, !srcloc !122
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %10) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  %buffer = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 8
  %12 = ptrtoint ptr %buffer to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 0, ptr %buffer, align 4
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m2p_hw_shutdown(ptr nocapture noundef readonly %edmac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  tail call void @arm_heavy_mb() #10
  %regs.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 2
  %0 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #10, !srcloc !122
  %2 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %regs.i, align 4
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  %5 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %regs.i, align 4
  %add.ptr.i5 = getelementptr i8, ptr %6, i32 12
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i5) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %8 = and i32 %7, 805306368
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %cmp.not6 = icmp eq i32 %8, 0
  br i1 %cmp.not6, label %entry.while.end_crit_edge, label %do.end.lr.ph

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

do.end.lr.ph:                                     ; preds = %entry
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %edmac, i32 0, i32 5
  br label %do.end

do.end:                                           ; preds = %do.end.do.end_crit_edge, %do.end.lr.ph
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %10, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i, ptr noundef nonnull @.str.43) #14
  %11 = ptrtoint ptr %regs.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regs.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 12
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !139
  %14 = and i32 %13, 805306368
  %cmp.not = icmp eq i32 %14, 0
  br i1 %cmp.not, label %do.end.while.end_crit_edge, label %do.end.do.end_crit_edge

do.end.do.end_crit_edge:                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end

do.end.while.end_crit_edge:                       ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end.while.end_crit_edge, %entry.while.end_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @m2p_hw_submit(ptr noundef %edmac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %1) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !141
  tail call fastcc void @m2p_fill_desc(ptr noundef %edmac)
  %3 = or i32 %2, 16777216
  %4 = tail call i32 @llvm.bswap.i32(i32 %3)
  %active.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 9
  %5 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load volatile ptr, ptr %active.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %6, %active.i
  br i1 %cmp.i.not.i.i, label %entry.list_rotate_left.exit.i_crit_edge, label %if.then.i.i

entry.list_rotate_left.exit.i_crit_edge:          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_rotate_left.exit.i

if.then.i.i:                                      ; preds = %entry
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %6) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i.i.i, align 4
  %9 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %6, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %prev.i2.i.i.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 9, i32 1
  %13 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %6, ptr noundef %14, ptr noundef %active.i) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.list_rotate_left.exit.i_crit_edge

__list_del_entry.exit.i.i.i.list_rotate_left.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_rotate_left.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %6, ptr %prev.i2.i.i.i, align 4
  %16 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %active.i, ptr %6, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %6, i32 0, i32 1
  %17 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev3.i.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %6, ptr %14, align 4
  br label %list_rotate_left.exit.i

list_rotate_left.exit.i:                          ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.list_rotate_left.exit.i_crit_edge, %entry.list_rotate_left.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 7
  %19 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %20, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %list_rotate_left.exit.i.if.then_crit_edge

list_rotate_left.exit.i.if.then_crit_edge:        ; preds = %list_rotate_left.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.end.i:                                         ; preds = %list_rotate_left.exit.i
  %21 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load volatile ptr, ptr %active.i, align 4
  %cmp.not.i.i = icmp eq ptr %22, %active.i
  %add.ptr.i.i = getelementptr i8, ptr %22, i32 -124
  %tobool2.not9.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not.i = or i1 %cmp.not.i.i, %tobool2.not9.i
  br i1 %tobool2.not.i, label %if.end.i.if.end_crit_edge, label %ep93xx_dma_advance_active.exit

if.end.i.if.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

ep93xx_dma_advance_active.exit:                   ; preds = %if.end.i
  %txd.i = getelementptr i8, ptr %22, i32 -108
  %23 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %txd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool5.not.i = icmp eq i32 %24, 0
  br i1 %tobool5.not.i, label %ep93xx_dma_advance_active.exit.if.then_crit_edge, label %ep93xx_dma_advance_active.exit.if.end_crit_edge

ep93xx_dma_advance_active.exit.if.end_crit_edge:  ; preds = %ep93xx_dma_advance_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

ep93xx_dma_advance_active.exit.if.then_crit_edge: ; preds = %ep93xx_dma_advance_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then

if.then:                                          ; preds = %ep93xx_dma_advance_active.exit.if.then_crit_edge, %list_rotate_left.exit.i.if.then_crit_edge
  tail call fastcc void @m2p_fill_desc(ptr noundef %edmac)
  %or3 = or i32 %4, 2
  br label %if.end

if.end:                                           ; preds = %if.then, %ep93xx_dma_advance_active.exit.if.end_crit_edge, %if.end.i.if.end_crit_edge
  %control.0 = phi i32 [ %or3, %if.then ], [ %4, %ep93xx_dma_advance_active.exit.if.end_crit_edge ], [ %4, %if.end.i.if.end_crit_edge ]
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %control.0) #10
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %27, i32 %25) #10, !srcloc !122
  %28 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regs, align 4
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %29) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @m2p_hw_interrupt(ptr noundef %edmac) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %regs = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 2
  %0 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regs, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #10, !srcloc !125
  %3 = tail call i32 @llvm.bswap.i32(i32 %2)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !142
  %and = and i32 %3, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %active.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 9
  %4 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load volatile ptr, ptr %active.i, align 4
  %cmp.not.i = icmp eq ptr %5, %active.i
  %add.ptr.i = getelementptr i8, ptr %5, i32 -124
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !143
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %regs, align 4
  %add.ptr4 = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 16777216) #10, !srcloc !122
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %edmac, i32 0, i32 5
  %8 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %9, i32 0, i32 1
  %txd = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %spec.select.i, i32 0, i32 4
  %10 = ptrtoint ptr %txd to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %txd, align 4
  %12 = ptrtoint ptr %spec.select.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %spec.select.i, align 4
  %dst_addr = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %spec.select.i, i32 0, i32 1
  %14 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dst_addr, align 4
  %size = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %spec.select.i, i32 0, i32 2
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.47, i32 noundef %11, i32 noundef %13, i32 noundef %15, i32 noundef %17) #14
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  %and9 = and i32 %3, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and9)
  %tobool10.not = icmp eq i32 %and9, 0
  br i1 %tobool10.not, label %if.end.cleanup_crit_edge, label %if.end12

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.end
  %active.i37 = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 9
  %18 = ptrtoint ptr %active.i37 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %active.i37, align 4
  %cmp.i.not.i.i = icmp eq ptr %19, %active.i37
  br i1 %cmp.i.not.i.i, label %if.end12.list_rotate_left.exit.i_crit_edge, label %if.then.i.i

if.end12.list_rotate_left.exit.i_crit_edge:       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_rotate_left.exit.i

if.then.i.i:                                      ; preds = %if.end12
  %call.i.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #10
  br i1 %call.i.i.i.i, label %if.end.i.i.i.i, label %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge

if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge: ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i.i.i

if.end.i.i.i.i:                                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %__list_del_entry.exit.i.i.i

__list_del_entry.exit.i.i.i:                      ; preds = %if.end.i.i.i.i, %if.then.i.i.__list_del_entry.exit.i.i.i_crit_edge
  %prev.i2.i.i.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 9, i32 1
  %26 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %prev.i2.i.i.i, align 4
  %call.i.i.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %19, ptr noundef %27, ptr noundef %active.i37) #10
  br i1 %call.i.i.i.i.i, label %if.end.i.i.i.i.i, label %__list_del_entry.exit.i.i.i.list_rotate_left.exit.i_crit_edge

__list_del_entry.exit.i.i.i.list_rotate_left.exit.i_crit_edge: ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_rotate_left.exit.i

if.end.i.i.i.i.i:                                 ; preds = %__list_del_entry.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %28 = ptrtoint ptr %prev.i2.i.i.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %19, ptr %prev.i2.i.i.i, align 4
  %29 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %active.i37, ptr %19, align 4
  %prev3.i.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %30 = ptrtoint ptr %prev3.i.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %prev3.i.i.i.i.i, align 4
  %31 = ptrtoint ptr %27 to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %19, ptr %27, align 4
  br label %list_rotate_left.exit.i

list_rotate_left.exit.i:                          ; preds = %if.end.i.i.i.i.i, %__list_del_entry.exit.i.i.i.list_rotate_left.exit.i_crit_edge, %if.end12.list_rotate_left.exit.i_crit_edge
  %flags.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 7
  %32 = ptrtoint ptr %flags.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load volatile i32, ptr %flags.i, align 4
  %and1.i.i = and i32 %33, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i.i)
  %tobool.not.i = icmp eq i32 %and1.i.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %list_rotate_left.exit.i.if.then14_crit_edge

list_rotate_left.exit.i.if.then14_crit_edge:      ; preds = %list_rotate_left.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.end.i:                                         ; preds = %list_rotate_left.exit.i
  %34 = ptrtoint ptr %active.i37 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load volatile ptr, ptr %active.i37, align 4
  %cmp.not.i.i = icmp eq ptr %35, %active.i37
  %add.ptr.i.i = getelementptr i8, ptr %35, i32 -124
  %tobool2.not9.i = icmp eq ptr %add.ptr.i.i, null
  %tobool2.not.i = or i1 %cmp.not.i.i, %tobool2.not9.i
  br i1 %tobool2.not.i, label %if.end.i.if.end15_crit_edge, label %ep93xx_dma_advance_active.exit

if.end.i.if.end15_crit_edge:                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

ep93xx_dma_advance_active.exit:                   ; preds = %if.end.i
  %txd.i = getelementptr i8, ptr %35, i32 -108
  %36 = ptrtoint ptr %txd.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %txd.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool5.not.i = icmp eq i32 %37, 0
  br i1 %tobool5.not.i, label %ep93xx_dma_advance_active.exit.if.then14_crit_edge, label %ep93xx_dma_advance_active.exit.if.end15_crit_edge

ep93xx_dma_advance_active.exit.if.end15_crit_edge: ; preds = %ep93xx_dma_advance_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end15

ep93xx_dma_advance_active.exit.if.then14_crit_edge: ; preds = %ep93xx_dma_advance_active.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then14

if.then14:                                        ; preds = %ep93xx_dma_advance_active.exit.if.then14_crit_edge, %list_rotate_left.exit.i.if.then14_crit_edge
  tail call fastcc void @m2p_fill_desc(ptr noundef %edmac)
  br label %cleanup

if.end15:                                         ; preds = %ep93xx_dma_advance_active.exit.if.end15_crit_edge, %if.end.i.if.end15_crit_edge
  %38 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %regs, align 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %39) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !144
  %41 = and i32 %40, -50331649
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !137
  tail call void @arm_heavy_mb() #10
  %42 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %regs, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %43, i32 %41) #10, !srcloc !122
  %44 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %regs, align 4
  %46 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %45) #10, !srcloc !125
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !138
  br label %cleanup

cleanup:                                          ; preds = %if.end15, %if.then14, %if.end.cleanup_crit_edge
  %retval.0 = phi i32 [ 2, %if.then14 ], [ 1, %if.end15 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @ep93xx_dma_set_active(ptr noundef %edmac, ptr noundef %desc) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %active = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 9
  %0 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %active, align 4
  %cmp.i.not = icmp eq ptr %1, %active
  br i1 %cmp.i.not, label %do.end7, label %do.body4, !prof !115

do.body4:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ep93xx_dma.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 243, 0\0A.popsection", ""() #10, !srcloc !145
  unreachable

do.end7:                                          ; preds = %entry
  %node = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %desc, i32 0, i32 6
  %prev.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 9, i32 1
  %2 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %3, ptr noundef %active) #10
  br i1 %call.i.i, label %if.end.i.i, label %do.end7.list_add_tail.exit_crit_edge

do.end7.list_add_tail.exit_crit_edge:             ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %do.end7
  call void @__sanitizer_cov_trace_pc() #12
  %4 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %node, ptr %prev.i, align 4
  %5 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %active, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %desc, i32 0, i32 6, i32 1
  %6 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev3.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %node, ptr %3, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %do.end7.list_add_tail.exit_crit_edge
  %tx_list = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %desc, i32 0, i32 5
  %8 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i29.not33 = icmp eq ptr %9, %tx_list
  br i1 %cmp.i29.not33, label %list_add_tail.exit.while.end_crit_edge, label %while.body.lr.ph

list_add_tail.exit.while.end_crit_edge:           ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body.lr.ph:                                 ; preds = %list_add_tail.exit
  %callback = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %desc, i32 0, i32 4, i32 6
  %callback_param = getelementptr inbounds %struct.ep93xx_dma_desc, ptr %desc, i32 0, i32 4, i32 8
  br label %while.body

while.body:                                       ; preds = %list_move_tail.exit.while.body_crit_edge, %while.body.lr.ph
  %10 = phi ptr [ %9, %while.body.lr.ph ], [ %30, %list_move_tail.exit.while.body_crit_edge ]
  %11 = ptrtoint ptr %callback to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %callback, align 4
  %callback15 = getelementptr i8, ptr %10, i32 -84
  %13 = ptrtoint ptr %callback15 to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %12, ptr %callback15, align 4
  %14 = ptrtoint ptr %callback_param to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %callback_param, align 4
  %callback_param18 = getelementptr i8, ptr %10, i32 -76
  %16 = ptrtoint ptr %callback_param18 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %15, ptr %callback_param18, align 4
  %call.i.i31 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %10) #10
  br i1 %call.i.i31, label %if.end.i.i32, label %while.body.__list_del_entry.exit.i_crit_edge

while.body.__list_del_entry.exit.i_crit_edge:     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %__list_del_entry.exit.i

if.end.i.i32:                                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %10, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %18, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %20, ptr %18, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i32, %while.body.__list_del_entry.exit.i_crit_edge
  %23 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %10, ptr noundef %24, ptr noundef %active) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %__list_del_entry.exit.i.list_move_tail.exit_crit_edge

__list_del_entry.exit.i.list_move_tail.exit_crit_edge: ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_move_tail.exit

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %25 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %10, ptr %prev.i, align 4
  %26 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %active, ptr %10, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %27 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev3.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %10, ptr %24, align 4
  br label %list_move_tail.exit

list_move_tail.exit:                              ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.list_move_tail.exit_crit_edge
  %29 = ptrtoint ptr %tx_list to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load volatile ptr, ptr %tx_list, align 4
  %cmp.i29.not = icmp eq ptr %30, %tx_list
  br i1 %cmp.i29.not, label %list_move_tail.exit.while.end_crit_edge, label %list_move_tail.exit.while.body_crit_edge

list_move_tail.exit.while.body_crit_edge:         ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

list_move_tail.exit.while.end_crit_edge:          ; preds = %list_move_tail.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %list_move_tail.exit.while.end_crit_edge, %list_add_tail.exit.while.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dmaengine_unmap_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_dma_interrupt(i32 noundef %irq, ptr noundef %dev_id) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %dev_id, i32 0, i32 6
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %active.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %dev_id, i32 0, i32 9
  %0 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %active.i, align 4
  %cmp.not.i = icmp eq ptr %1, %active.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -124
  %tobool.not35 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not35
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dev_id, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i, ptr noundef nonnull @.str.16) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %edma = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %dev_id, i32 0, i32 1
  %4 = ptrtoint ptr %edma to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edma, align 4
  %hw_interrupt = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %5, i32 0, i32 6
  %6 = ptrtoint ptr %hw_interrupt to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %hw_interrupt, align 4
  %call3 = tail call i32 %7(ptr noundef %dev_id) #10
  %8 = zext i32 %call3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values.55)
  switch i32 %call3, label %do.end12 [
    i32 1, label %sw.bb
    i32 2, label %sw.bb4
  ]

sw.bb:                                            ; preds = %if.end
  %complete = getelementptr i8, ptr %1, i32 -112
  %9 = ptrtoint ptr %complete to i32
  call void @__asan_store1_noabort(i32 %9)
  store i8 1, ptr %complete, align 4
  %state.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %dev_id, i32 0, i32 5, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %sw.bb.cleanup_crit_edge

sw.bb.cleanup_crit_edge:                          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i:                                        ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %dev_id, i32 0, i32 5
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #10
  br label %cleanup

sw.bb4:                                           ; preds = %if.end
  %flags = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %dev_id, i32 0, i32 7
  %10 = ptrtoint ptr %flags to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load volatile i32, ptr %flags, align 4
  %and1.i = and i32 %11, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and1.i)
  %tobool6.not = icmp eq i32 %and1.i, 0
  br i1 %tobool6.not, label %sw.bb4.cleanup_crit_edge, label %if.then7

sw.bb4.cleanup_crit_edge:                         ; preds = %sw.bb4
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then7:                                         ; preds = %sw.bb4
  %state.i28 = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %dev_id, i32 0, i32 5, i32 1
  %call.i29 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i28) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i29)
  %tobool.not.i30 = icmp eq i32 %call.i29, 0
  br i1 %tobool.not.i30, label %if.then.i31, label %if.then7.cleanup_crit_edge

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i31:                                      ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #12
  %tasklet8 = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %dev_id, i32 0, i32 5
  tail call void @__tasklet_schedule(ptr noundef %tasklet8) #10
  br label %cleanup

do.end12:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i33 = getelementptr inbounds %struct.dma_chan, ptr %dev_id, i32 0, i32 5
  %12 = ptrtoint ptr %dev.i33 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i33, align 4
  %device.i34 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i34, ptr noundef nonnull @.str.19) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end12, %if.then.i31, %if.then7.cleanup_crit_edge, %sw.bb4.cleanup_crit_edge, %if.then.i, %sw.bb.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ 0, %do.end ], [ 0, %do.end12 ], [ 1, %sw.bb4.cleanup_crit_edge ], [ 1, %sw.bb.cleanup_crit_edge ], [ 1, %if.then.i ], [ 1, %if.then7.cleanup_crit_edge ], [ 1, %if.then.i31 ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ep93xx_dma_tx_submit(ptr noundef %tx) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %tx, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %1, i32 0, i32 6
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  %cookie2.i = getelementptr inbounds %struct.dma_chan, ptr %3, i32 0, i32 2
  %4 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cookie2.i, align 4
  %add.i = add i32 %5, 1
  %6 = tail call i32 @llvm.smax.i32(i32 %add.i, i32 1) #10
  %7 = ptrtoint ptr %cookie2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %cookie2.i, align 4
  %8 = ptrtoint ptr %tx to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %6, ptr %tx, align 4
  %active = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %1, i32 0, i32 9
  %9 = ptrtoint ptr %active to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load volatile ptr, ptr %active, align 4
  %cmp.i.not = icmp eq ptr %10, %active
  br i1 %cmp.i.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %tx, i32 -16
  tail call fastcc void @ep93xx_dma_set_active(ptr noundef %1, ptr noundef %add.ptr)
  %edma = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %1, i32 0, i32 1
  %11 = ptrtoint ptr %edma to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %edma, align 4
  %hw_submit = getelementptr inbounds %struct.ep93xx_dma_engine, ptr %12, i32 0, i32 5
  %13 = ptrtoint ptr %hw_submit to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %hw_submit, align 4
  tail call void %14(ptr noundef %1) #10
  br label %if.end

if.else:                                          ; preds = %entry
  %node = getelementptr i8, ptr %tx, i32 108
  %queue = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %1, i32 0, i32 10
  %prev.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %1, i32 0, i32 10, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %16, ptr noundef %queue) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.else.if.end_crit_edge

if.else.if.end_crit_edge:                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %node, ptr %prev.i, align 4
  %18 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %queue, ptr %node, align 4
  %prev3.i.i = getelementptr i8, ptr %tx, i32 112
  %19 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %node, ptr %16, align 4
  br label %if.end

if.end:                                           ; preds = %if.end.i.i, %if.else.if.end_crit_edge, %if.then
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret i32 %6
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strcmp(ptr nocapture noundef, ptr nocapture noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #9

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @m2m_fill_desc(ptr noundef %edmac) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %active.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 9
  %0 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %active.i, align 4
  %cmp.not.i = icmp eq ptr %1, %active.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -124
  %tobool.not51 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not51
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %edmac, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i, ptr noundef nonnull @.str.41) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %buffer = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 8
  %4 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp = icmp eq i32 %5, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %6 = ptrtoint ptr %add.ptr.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %add.ptr.i, align 4
  %8 = tail call i32 @llvm.bswap.i32(i32 %7)
  %regs = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 2
  %9 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %regs, align 4
  br i1 %cmp, label %do.body3, label %do.body16

do.body3:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %10, i32 24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %8) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !146
  tail call void @arm_heavy_mb() #10
  %dst_addr = getelementptr i8, ptr %1, i32 -120
  %11 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dst_addr, align 4
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  %14 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %regs, align 4
  %add.ptr10 = getelementptr i8, ptr %15, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr10, i32 %13) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !147
  tail call void @arm_heavy_mb() #10
  %size = getelementptr i8, ptr %1, i32 -116
  %16 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %size, align 4
  %18 = tail call i32 @llvm.bswap.i32(i32 %17)
  %19 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %regs, align 4
  %add.ptr15 = getelementptr i8, ptr %20, i32 16
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr15, i32 %18) #10, !srcloc !122
  br label %if.end34

do.body16:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr21 = getelementptr i8, ptr %10, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %8) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !148
  tail call void @arm_heavy_mb() #10
  %dst_addr25 = getelementptr i8, ptr %1, i32 -120
  %21 = ptrtoint ptr %dst_addr25 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dst_addr25, align 4
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  %24 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regs, align 4
  %add.ptr27 = getelementptr i8, ptr %25, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr27, i32 %23) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !149
  tail call void @arm_heavy_mb() #10
  %size31 = getelementptr i8, ptr %1, i32 -116
  %26 = ptrtoint ptr %size31 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %size31, align 4
  %28 = tail call i32 @llvm.bswap.i32(i32 %27)
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr33 = getelementptr i8, ptr %30, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr33, i32 %28) #10, !srcloc !122
  br label %if.end34

if.end34:                                         ; preds = %do.body16, %do.body3
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buffer, align 4
  %xor = xor i32 %32, 1
  store i32 %xor, ptr %buffer, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end34, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @m2p_fill_desc(ptr noundef %edmac) unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %active.i = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 9
  %0 = ptrtoint ptr %active.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %active.i, align 4
  %cmp.not.i = icmp eq ptr %1, %active.i
  %add.ptr.i = getelementptr i8, ptr %1, i32 -124
  %tobool.not46 = icmp eq ptr %add.ptr.i, null
  %tobool.not = or i1 %cmp.not.i, %tobool.not46
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %edmac, i32 0, i32 5
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %device.i, ptr noundef nonnull @.str.45) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %edmac to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edmac, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %5, i32 0, i32 15
  %6 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %9, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %if.end.ep93xx_dma_chan_is_m2p.exit.i_crit_edge

if.end.ep93xx_dma_chan_is_m2p.exit.i_crit_edge:   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_chan_is_m2p.exit.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %7, align 4
  br label %ep93xx_dma_chan_is_m2p.exit.i

ep93xx_dma_chan_is_m2p.exit.i:                    ; preds = %if.end.i.i.i, %if.end.ep93xx_dma_chan_is_m2p.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %11, %if.end.i.i.i ], [ %9, %if.end.ep93xx_dma_chan_is_m2p.exit.i_crit_edge ]
  %call1.i.i = tail call i32 @strcmp(ptr noundef %retval.0.i.i.i, ptr noundef nonnull dereferenceable(15) @.str.15) #15
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool.not.i.i, label %if.end.i, label %ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit.thread_crit_edge

ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit.thread_crit_edge: ; preds = %ep93xx_dma_chan_is_m2p.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_chan_direction.exit.thread

if.end.i:                                         ; preds = %ep93xx_dma_chan_is_m2p.exit.i
  %chan_id.i = getelementptr inbounds %struct.dma_chan, ptr %edmac, i32 0, i32 4
  %12 = ptrtoint ptr %chan_id.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %chan_id.i, align 4
  %14 = and i32 %13, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp.i = icmp eq i32 %14, 0
  br i1 %cmp.i, label %if.end.i._crit_edge, label %if.end.i.ep93xx_dma_chan_direction.exit.thread_crit_edge

if.end.i.ep93xx_dma_chan_direction.exit.thread_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %ep93xx_dma_chan_direction.exit.thread

if.end.i._crit_edge:                              ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %15

ep93xx_dma_chan_direction.exit.thread:            ; preds = %if.end.i.ep93xx_dma_chan_direction.exit.thread_crit_edge, %ep93xx_dma_chan_is_m2p.exit.i.ep93xx_dma_chan_direction.exit.thread_crit_edge
  %dst_addr45 = getelementptr i8, ptr %1, i32 -120
  br label %15

15:                                               ; preds = %ep93xx_dma_chan_direction.exit.thread, %if.end.i._crit_edge
  %16 = phi ptr [ %dst_addr45, %ep93xx_dma_chan_direction.exit.thread ], [ %add.ptr.i, %if.end.i._crit_edge ]
  %17 = ptrtoint ptr %16 to i32
  call void @__asan_load4_noabort(i32 %17)
  %bus_addr.0 = load i32, ptr %16, align 4
  %buffer = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 8
  %18 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %buffer, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp5 = icmp eq i32 %19, 0
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10
  tail call void @arm_heavy_mb() #10
  %size = getelementptr i8, ptr %1, i32 -116
  %20 = ptrtoint ptr %size to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %size, align 4
  %22 = tail call i32 @llvm.bswap.i32(i32 %21)
  %regs = getelementptr inbounds %struct.ep93xx_dma_chan, ptr %edmac, i32 0, i32 2
  %23 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %regs, align 4
  br i1 %cmp5, label %do.body7, label %do.body16

do.body7:                                         ; preds = %15
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr = getelementptr i8, ptr %24, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %22) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !150
  tail call void @arm_heavy_mb() #10
  %25 = tail call i32 @llvm.bswap.i32(i32 %bus_addr.0)
  %26 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %regs, align 4
  %add.ptr14 = getelementptr i8, ptr %27, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr14, i32 %25) #10, !srcloc !122
  br label %if.end27

do.body16:                                        ; preds = %15
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr21 = getelementptr i8, ptr %24, i32 48
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr21, i32 %22) #10, !srcloc !122
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !151
  tail call void @arm_heavy_mb() #10
  %28 = tail call i32 @llvm.bswap.i32(i32 %bus_addr.0)
  %29 = ptrtoint ptr %regs to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %regs, align 4
  %add.ptr26 = getelementptr i8, ptr %30, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr26, i32 %28) #10, !srcloc !122
  br label %if.end27

if.end27:                                         ; preds = %do.body16, %do.body7
  %31 = ptrtoint ptr %buffer to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %buffer, align 4
  %xor = xor i32 %32, 1
  store i32 %xor, ptr %buffer, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end27, %do.end
  ret void
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #9

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #9

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #10

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
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 55)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nobuiltin nounwind }
attributes #16 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !26, !28, !29, !30, !31, !32, !33, !35, !36, !37, !38, !40, !42, !43, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !75, !76, !77, !79, !80, !82, !83, !84, !86, !87, !88, !89, !91, !92, !93, !94, !96, !97, !98, !99, !101, !102, !103, !104}
!llvm.module.flags = !{!105, !106, !107, !108, !109, !110, !111, !112}
!llvm.ident = !{!113}

!0 = !{ptr @__initcall__kmod_ep93xx_dma__239_1430_ep93xx_dma_module_init4, !1, !"__initcall__kmod_ep93xx_dma__239_1430_ep93xx_dma_module_init4", i1 false, i1 false}
!1 = !{!"../drivers/dma/ep93xx_dma.c", i32 1430, i32 1}
!2 = !{ptr @__UNIQUE_ID_author240, !3, !"__UNIQUE_ID_author240", i1 false, i1 false}
!3 = !{!"../drivers/dma/ep93xx_dma.c", i32 1432, i32 1}
!4 = !{ptr @__UNIQUE_ID_description241, !5, !"__UNIQUE_ID_description241", i1 false, i1 false}
!5 = !{!"../drivers/dma/ep93xx_dma.c", i32 1433, i32 1}
!6 = !{ptr @__UNIQUE_ID_file242, !7, !"__UNIQUE_ID_file242", i1 false, i1 false}
!7 = !{!"../drivers/dma/ep93xx_dma.c", i32 1434, i32 1}
!8 = !{ptr @__UNIQUE_ID_license243, !7, !"__UNIQUE_ID_license243", i1 false, i1 false}
!9 = !{ptr @.str, !10, !"<string literal>", i1 false, i1 false}
!10 = !{!"../drivers/dma/ep93xx_dma.c", i32 1421, i32 11}
!11 = !{ptr @ep93xx_dma_driver, !12, !"ep93xx_dma_driver", i1 false, i1 false}
!12 = !{!"../drivers/dma/ep93xx_dma.c", i32 1419, i32 31}
!13 = !{ptr @ep93xx_dma_driver_ids, !14, !"ep93xx_dma_driver_ids", i1 false, i1 false}
!14 = !{!"../drivers/dma/ep93xx_dma.c", i32 1413, i32 40}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/dma/ep93xx_dma.c", i32 1347, i32 4}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @ep93xx_dma_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @ep93xx_dma_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @ep93xx_dma_probe.__key, !24, !"__key", i1 false, i1 false}
!24 = !{!"../drivers/dma/ep93xx_dma.c", i32 1352, i32 3}
!25 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/ep93xx_dma.c", i32 1406, i32 3}
!28 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @ep93xx_dma_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @ep93xx_dma_probe._entry_ptr.10, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.11, !27, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.12, !27, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.13, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/ep93xx_dma.c", i32 921, i32 4}
!35 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @ep93xx_dma_alloc_chan_resources._entry, !34, !"_entry", i1 false, i1 false}
!37 = !{ptr @ep93xx_dma_alloc_chan_resources._entry_ptr, !34, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../include/linux/platform_data/dma-ep93xx.h", i32 73, i32 46}
!40 = !{ptr @.str.16, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma/ep93xx_dma.c", i32 796, i32 3}
!42 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ep93xx_dma_interrupt._entry, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @ep93xx_dma_interrupt._entry_ptr, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.19, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/ep93xx_dma.c", i32 814, i32 3}
!47 = !{ptr @ep93xx_dma_interrupt._entry.18, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @ep93xx_dma_interrupt._entry_ptr.20, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.21, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma/ep93xx_dma.c", i32 1045, i32 3}
!51 = !{ptr @.str.22, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @ep93xx_dma_prep_slave_sg._entry, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @ep93xx_dma_prep_slave_sg._entry_ptr, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.24, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma/ep93xx_dma.c", i32 1051, i32 3}
!56 = !{ptr @ep93xx_dma_prep_slave_sg._entry.23, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @ep93xx_dma_prep_slave_sg._entry_ptr.25, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/dma/ep93xx_dma.c", i32 1063, i32 4}
!60 = !{ptr @ep93xx_dma_prep_slave_sg._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @ep93xx_dma_prep_slave_sg._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/dma/ep93xx_dma.c", i32 1070, i32 4}
!64 = !{ptr @ep93xx_dma_prep_slave_sg._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @ep93xx_dma_prep_slave_sg._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.32, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/ep93xx_dma.c", i32 1126, i32 3}
!68 = !{ptr @ep93xx_dma_prep_dma_cyclic._entry, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @ep93xx_dma_prep_dma_cyclic._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @ep93xx_dma_prep_dma_cyclic._entry.33, !71, !"_entry", i1 false, i1 false}
!71 = !{!"../drivers/dma/ep93xx_dma.c", i32 1132, i32 3}
!72 = !{ptr @ep93xx_dma_prep_dma_cyclic._entry_ptr.34, !71, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.36, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dma/ep93xx_dma.c", i32 1138, i32 3}
!75 = !{ptr @ep93xx_dma_prep_dma_cyclic._entry.35, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @ep93xx_dma_prep_dma_cyclic._entry_ptr.37, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @ep93xx_dma_prep_dma_cyclic._entry.38, !78, !"_entry", i1 false, i1 false}
!78 = !{!"../drivers/dma/ep93xx_dma.c", i32 1150, i32 4}
!79 = !{ptr @ep93xx_dma_prep_dma_cyclic._entry_ptr.39, !78, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @.str.40, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/dma/ep93xx_dma.c", i32 998, i32 4}
!82 = !{ptr @ep93xx_dma_prep_dma_memcpy._entry, !81, !"_entry", i1 false, i1 false}
!83 = !{ptr @ep93xx_dma_prep_dma_memcpy._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!84 = !{ptr @.str.41, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/dma/ep93xx_dma.c", i32 532, i32 3}
!86 = !{ptr @.str.42, !85, !"<string literal>", i1 false, i1 false}
!87 = !{ptr @m2m_fill_desc._entry, !85, !"_entry", i1 false, i1 false}
!88 = !{ptr @m2m_fill_desc._entry_ptr, !85, !"_entry_ptr", i1 false, i1 false}
!89 = !{ptr @.str.43, !90, !"<string literal>", i1 false, i1 false}
!90 = !{!"../drivers/dma/ep93xx_dma.c", i32 360, i32 3}
!91 = !{ptr @.str.44, !90, !"<string literal>", i1 false, i1 false}
!92 = !{ptr @m2p_hw_shutdown._entry, !90, !"_entry", i1 false, i1 false}
!93 = !{ptr @m2p_hw_shutdown._entry_ptr, !90, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @.str.45, !95, !"<string literal>", i1 false, i1 false}
!95 = !{!"../drivers/dma/ep93xx_dma.c", i32 370, i32 3}
!96 = !{ptr @.str.46, !95, !"<string literal>", i1 false, i1 false}
!97 = !{ptr @m2p_fill_desc._entry, !95, !"_entry", i1 false, i1 false}
!98 = !{ptr @m2p_fill_desc._entry_ptr, !95, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.47, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/dma/ep93xx_dma.c", i32 424, i32 3}
!101 = !{ptr @.str.48, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.49, !100, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @m2p_hw_interrupt._entry, !100, !"_entry", i1 false, i1 false}
!104 = !{ptr @m2p_hw_interrupt._entry_ptr, !100, !"_entry_ptr", i1 false, i1 false}
!105 = !{i32 1, !"wchar_size", i32 2}
!106 = !{i32 1, !"min_enum_size", i32 4}
!107 = !{i32 8, !"branch-target-enforcement", i32 0}
!108 = !{i32 8, !"sign-return-address", i32 0}
!109 = !{i32 8, !"sign-return-address-all", i32 0}
!110 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!111 = !{i32 7, !"uwtable", i32 1}
!112 = !{i32 7, !"frame-pointer", i32 2}
!113 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!114 = !{i8 0, i8 2}
!115 = !{!"branch_weights", i32 2000, i32 1}
!116 = !{!"branch_weights", i32 1, i32 2000}
!117 = !{i64 2154281009, i64 2154281496, i64 2154281046, i64 2154281102, i64 2154281136, i64 2154281160, i64 2154281201, i64 2154281222, i64 2154281250, i64 2154281284}
!118 = !{i64 2154372870, i64 2154373359, i64 2154372907, i64 2154372963, i64 2154372997, i64 2154373021, i64 2154373062, i64 2154373083, i64 2154373111, i64 2154373145}
!119 = !{i64 2154374493, i64 2154374982, i64 2154374530, i64 2154374586, i64 2154374620, i64 2154374644, i64 2154374685, i64 2154374706, i64 2154374734, i64 2154374768}
!120 = !{i64 2154282509}
!121 = !{i64 2154340594}
!122 = !{i64 4267414}
!123 = !{i64 2154341784}
!124 = !{i64 2154342196}
!125 = !{i64 4267832}
!126 = !{i64 2154347161}
!127 = !{i64 2154347667}
!128 = !{i64 2154348167}
!129 = !{i64 2154348862}
!130 = !{i64 2154349509}
!131 = !{i64 2154349735}
!132 = !{i64 2154350472}
!133 = !{i64 2154350782}
!134 = !{i64 2154351539}
!135 = !{i64 2154352015}
!136 = !{i64 2154330141}
!137 = !{i64 2154327211}
!138 = !{i64 2154327906}
!139 = !{i64 2154329280}
!140 = !{i64 2154328143}
!141 = !{i64 2154335725}
!142 = !{i64 2154336394}
!143 = !{i64 2154336698}
!144 = !{i64 2154340200}
!145 = !{i64 2154319818, i64 2154320307, i64 2154319855, i64 2154319911, i64 2154319945, i64 2154319969, i64 2154320010, i64 2154320031, i64 2154320059, i64 2154320093}
!146 = !{i64 2154344693}
!147 = !{i64 2154345135}
!148 = !{i64 2154346015}
!149 = !{i64 2154346457}
!150 = !{i64 2154334175}
!151 = !{i64 2154335027}
