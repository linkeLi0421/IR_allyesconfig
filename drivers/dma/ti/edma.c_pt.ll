; ModuleID = '/llk/IR_all_yes/drivers/dma/ti/edma.c_pt.bc'
source_filename = "../drivers/dma/ti/edma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.edmacc_param = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.ratelimit_state = type { %struct.raw_spinlock, i32, i32, i32, i32, i32, i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.resource = type { i32, i32, ptr, i32, i32, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.hlist_node = type { ptr, ptr }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.edma_soc_info = type { i32, ptr, ptr, ptr, ptr, ptr, i32 }
%struct.edma_rsv_info = type { ptr, ptr }
%struct.edma_cc = type { ptr, ptr, ptr, i32, i8, i32, i32, i32, i32, i32, i8, i32, i32, i32, ptr, ptr, %struct.dma_device, ptr, ptr, ptr, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.edma_tc = type { ptr, i16 }
%struct.edma_chan = type { %struct.virt_dma_chan, %struct.list_head, ptr, ptr, ptr, i32, i8, i8, [20 x i32], i32, %struct.dma_slave_config }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.edma_desc = type { %struct.virt_dma_desc, %struct.list_head, i32, i32, i8, i32, i32, ptr, i32, i32, i32, i32, i32, [0 x %struct.edma_pset] }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.edma_pset = type { i32, i32, %struct.edmacc_param }
%struct.dma_interleaved_template = type { i32, i32, i32, i8, i8, i8, i8, i32, i32, [0 x %struct.data_chunk] }
%struct.data_chunk = type { i32, i32, i32, i32 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }

@__initcall__kmod_edma__274_2736_edma_init4 = internal global ptr @edma_init, section ".initcall4.init", align 4
@edma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @edma_probe, ptr @edma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @edma_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @edma_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@edma_tptc_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @edma_tptc_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.143, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @edma_tptc_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_edma_exit = internal global ptr @edma_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author275 = internal constant [49 x i8] c"edma.author=Matt Porter <matt.porter@linaro.org>\00", section ".modinfo", align 1
@__UNIQUE_ID_description276 = internal constant [43 x i8] c"edma.description=TI EDMA DMA engine driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file277 = internal constant [30 x i8] c"edma.file=drivers/dma/ti/edma\00", section ".modinfo", align 1
@__UNIQUE_ID_license278 = internal constant [20 x i8] c"edma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"edma\00", [27 x i8] zeroinitializer }, align 32
@edma_of_ids = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,edma3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @edma_binding_type }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,edma3-tpcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @edma_binding_type, i64 4) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@edma_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @edma_pm_suspend, ptr @edma_pm_resume, ptr @edma_pm_suspend, ptr @edma_pm_resume, ptr @edma_pm_suspend, ptr @edma_pm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@edma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 2362, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"failed to get DT data\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edma_probe\00", [21 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"drivers/dma/ti/edma.c\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@edma_probe._entry_ptr = internal global ptr @edma_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"edma3_cc\00", [23 x i8] zeroinitializer }, align 32
@edma_probe.__UNIQUE_ID_ddebug273 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.2, ptr @.str.3, ptr @.str.7, i8 2, i8 84, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.7 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"mem resource not found, using index 0\0A\00", [57 x i8] zeroinitializer }, align 32
@edma_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.2, ptr @.str.3, i32 2390, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"no mem resource?\0A\00", [46 x i8] zeroinitializer }, align 32
@edma_probe._entry_ptr.10 = internal global ptr @edma_probe._entry.8, section ".printk_index", align 4
@edma_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.2, ptr @.str.3, i32 2403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"pm_runtime_get_sync() failed\0A\00", [34 x i8] zeroinitializer }, align 32
@edma_probe._entry_ptr.13 = internal global ptr @edma_probe._entry.11, section ".printk_index", align 4
@dummy_paramset = internal constant { %struct.edmacc_param, [32 x i8] } { %struct.edmacc_param { i32 0, i32 0, i32 0, i32 0, i32 0, i32 65535, i32 0, i32 1 }, [32 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"edma3_ccint\00", [20 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%s_ccint\00", [23 x i8] zeroinitializer }, align 32
@edma_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 2467, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"CCINT (%d) failed --> %d\0A\00", [38 x i8] zeroinitializer }, align 32
@edma_probe._entry_ptr.18 = internal global ptr @edma_probe._entry.16, section ".printk_index", align 4
@.str.19 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"edma3_ccerrint\00", [17 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"%s_ccerrint\00", [20 x i8] zeroinitializer }, align 32
@edma_probe._entry.21 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.2, ptr @.str.3, i32 2483, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"CCERRINT (%d) failed --> %d\0A\00", [35 x i8] zeroinitializer }, align 32
@edma_probe._entry_ptr.23 = internal global ptr @edma_probe._entry.21, section ".printk_index", align 4
@edma_probe._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.2, ptr @.str.3, i32 2491, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Can't allocate PaRAM dummy slot\0A\00", [63 x i8] zeroinitializer }, align 32
@edma_probe._entry_ptr.26 = internal global ptr @edma_probe._entry.24, section ".printk_index", align 4
@.str.27 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ti,tptcs\00", [23 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma-channel-mask\00", [47 x i8] zeroinitializer }, align 32
@edma_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 2532, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"dma-channel-mask is not complete.\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@edma_probe._entry_ptr.32 = internal global ptr @edma_probe._entry.29, section ".printk_index", align 4
@edma_probe._entry.33 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.2, ptr @.str.3, i32 2535, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"dma-channel-mask is out of range or empty\0A\00", [53 x i8] zeroinitializer }, align 32
@edma_probe._entry_ptr.35 = internal global ptr @edma_probe._entry.33, section ".printk_index", align 4
@edma_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.2, ptr @.str.3, i32 2570, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"slave ddev registration failed (%d)\0A\00", [59 x i8] zeroinitializer }, align 32
@edma_probe._entry_ptr.38 = internal global ptr @edma_probe._entry.36, section ".printk_index", align 4
@edma_probe._entry.39 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.2, ptr @.str.3, i32 2578, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"memcpy ddev registration failed (%d)\0A\00", [58 x i8] zeroinitializer }, align 32
@edma_probe._entry_ptr.41 = internal global ptr @edma_probe._entry.39, section ".printk_index", align 4
@edma_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.3, i32 2587, ptr @.str.44, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"TI EDMA DMA engine driver\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@edma_probe._entry_ptr.45 = internal global ptr @edma_probe._entry.42, section ".printk_index", align 4
@.str.46 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"ti,edma-xbar-event-map\00", [41 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"ti,edma-memcpy-channels\00", [40 x i8] zeroinitializer }, align 32
@__const.edma_setup_info_from_dt.pname = private unnamed_addr constant [24 x i8] c"ti,edma-memcpy-channels\00", align 1
@.str.48 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"ti,edma-reserved-slot-ranges\00", [35 x i8] zeroinitializer }, align 32
@__const.edma_setup_info_from_dt.pname.49 = private unnamed_addr constant [29 x i8] c"ti,edma-reserved-slot-ranges\00", align 1
@__const.edma_xbar_event_map.pname = private unnamed_addr constant [23 x i8] c"ti,edma-xbar-event-map\00", align 1
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@edma_setup_from_hw.__UNIQUE_ID_ddebug266 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 2, i8 13, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.50 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"edma_setup_from_hw\00", [45 x i8] zeroinitializer }, align 32
@.str.51 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"eDMA3 CC HW configuration (cccfg: 0x%08x):\0A\00", [52 x i8] zeroinitializer }, align 32
@edma_setup_from_hw.__UNIQUE_ID_ddebug267 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.52, i8 2, i8 13, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"num_region: %u\0A\00", [16 x i8] zeroinitializer }, align 32
@edma_setup_from_hw.__UNIQUE_ID_ddebug268 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.53, i8 2, i8 14, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"num_channels: %u\0A\00", [46 x i8] zeroinitializer }, align 32
@edma_setup_from_hw.__UNIQUE_ID_ddebug269 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.54, i8 2, i8 14, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.54 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"num_qchannels: %u\0A\00", [45 x i8] zeroinitializer }, align 32
@edma_setup_from_hw.__UNIQUE_ID_ddebug270 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.55, i8 2, i8 14, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"num_slots: %u\0A\00", [17 x i8] zeroinitializer }, align 32
@edma_setup_from_hw.__UNIQUE_ID_ddebug271 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.56, i8 2, i8 14, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.56 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"num_tc: %u\0A\00", [20 x i8] zeroinitializer }, align 32
@edma_setup_from_hw.__UNIQUE_ID_ddebug272 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.50, ptr @.str.3, ptr @.str.57, i8 2, i8 15, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.57 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"chmap_exist: %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"yes\00", [28 x i8] zeroinitializer }, align 32
@.str.59 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"no\00", [29 x i8] zeroinitializer }, align 32
@dma_irq_handler.__UNIQUE_ID_ddebug258 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.60, ptr @.str.3, ptr @.str.61, i8 1, i8 -122, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.60 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"dma_irq_handler\00", [16 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"dma_irq_handler\0A\00", [47 x i8] zeroinitializer }, align 32
@edma_completion_handler.__UNIQUE_ID_ddebug256 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.3, ptr @.str.63, i8 1, i8 126, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.62 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"edma_completion_handler\00", [40 x i8] zeroinitializer }, align 32
@.str.63 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Transfer completed on channel %d\0A\00", [62 x i8] zeroinitializer }, align 32
@edma_completion_handler.__UNIQUE_ID_ddebug257 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.62, ptr @.str.3, ptr @.str.64, i8 1, i8 127, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.64 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Sub transfer completed on channel %d\0A\00", [58 x i8] zeroinitializer }, align 32
@edma_stop.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 -96, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"edma_stop\00", [22 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EER%d %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@vchan_cookie_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.67, ptr @.str.68, ptr @.str.69, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.68 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"drivers/dma/ti/../virt-dma.h\00", [35 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@edma_execute.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 0, i8 -50, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"edma_execute\00", [19 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [129 x i8], [63 x i8] } { [129 x i8] c"\0A pset[%d]:\0A  chnum\09%d\0A  slot\09%d\0A  opt\09%08x\0A  src\09%08x\0A  dst\09%08x\0A  abcnt\09%08x\0A  ccnt\09%08x\0A  bidx\09%08x\0A  cidx\09%08x\0A  lkrld\09%08x\0A\00", [63 x i8] zeroinitializer }, align 32
@edma_execute.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.3, ptr @.str.72, i8 0, i8 -44, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"missed event on channel %d\0A\00", [36 x i8] zeroinitializer }, align 32
@edma_execute.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.3, ptr @.str.73, i8 0, i8 -42, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.73 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"first transfer starting on channel %d\0A\00", [57 x i8] zeroinitializer }, align 32
@edma_execute.__UNIQUE_ID_ddebug250 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.70, ptr @.str.3, ptr @.str.74, i8 0, i8 -41, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.74 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"chan: %d: completed %d elements, resuming\0A\00", [53 x i8] zeroinitializer }, align 32
@edma_link._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.75, ptr @.str.76, ptr @.str.3, i32 561, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Ignoring eDMA instance for linking\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.76 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"edma_link\00", [22 x i8] zeroinitializer }, align 32
@edma_link._entry_ptr = internal global ptr @edma_link._entry, section ".printk_index", align 4
@edma_clean_channel.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.77, ptr @.str.3, ptr @.str.78, i8 0, i8 -83, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.77 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"edma_clean_channel\00", [45 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"EMR%d %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@edma_start.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.3, ptr @.str.80, i8 0, i8 -104, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.79 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edma_start\00", [21 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"ESR%d %08x\0A\00", [20 x i8] zeroinitializer }, align 32
@edma_start.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.3, ptr @.str.81, i8 0, i8 -103, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.81 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"ER%d %08x\0A\00", [21 x i8] zeroinitializer }, align 32
@edma_start.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.79, ptr @.str.3, ptr @.str.66, i8 0, i8 -101, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@edma_trigger_channel.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.82, ptr @.str.3, ptr @.str.80, i8 0, i8 -86, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.82 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"edma_trigger_channel\00", [43 x i8] zeroinitializer }, align 32
@dma_ccerr_handler.__UNIQUE_ID_ddebug261 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.3, ptr @.str.84, i8 1, i8 -98, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.83 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"dma_ccerr_handler\00", [46 x i8] zeroinitializer }, align 32
@.str.84 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"dma_ccerr_handler\0A\00", [45 x i8] zeroinitializer }, align 32
@dma_ccerr_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.83, ptr @.str.3, i32 1668, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: Error interrupt without error event!\0A\00", [54 x i8] zeroinitializer }, align 32
@dma_ccerr_handler._entry_ptr = internal global ptr @dma_ccerr_handler._entry, section ".printk_index", align 4
@dma_ccerr_handler.__UNIQUE_ID_ddebug262 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.3, ptr @.str.86, i8 1, i8 -92, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.86 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"EMR%d 0x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@dma_ccerr_handler.__UNIQUE_ID_ddebug263 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.83, ptr @.str.3, ptr @.str.87, i8 1, i8 -88, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.87 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"QEMR 0x%02x\0A\00", [19 x i8] zeroinitializer }, align 32
@dma_ccerr_handler._entry.88 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.89, ptr @.str.83, ptr @.str.3, i32 1706, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.89 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"CCERR 0x%08x\0A\00", [18 x i8] zeroinitializer }, align 32
@dma_ccerr_handler._entry_ptr.90 = internal global ptr @dma_ccerr_handler._entry.88, section ".printk_index", align 4
@edma_error_handler.__UNIQUE_ID_ddebug259 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.3, ptr @.str.92, i8 1, i8 -107, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.91 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"edma_error_handler\00", [45 x i8] zeroinitializer }, align 32
@.str.92 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Error on null slot, setting miss\0A\00", [62 x i8] zeroinitializer }, align 32
@edma_error_handler.__UNIQUE_ID_ddebug260 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.91, ptr @.str.3, ptr @.str.93, i8 1, i8 -106, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.93 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Missed event, TRIGGERING\0A\00", [38 x i8] zeroinitializer }, align 32
@edma_dma_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.94, ptr @.str.95, ptr @.str.3, i32 1991, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.94 = internal constant { [49 x i8], [47 x i8] } { [49 x i8] c"Legacy memcpy is enabled, things might not work\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.95 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"edma_dma_init\00", [18 x i8] zeroinitializer }, align 32
@edma_dma_init._entry_ptr = internal global ptr @edma_dma_init._entry, section ".printk_index", align 4
@edma_dma_init._entry.96 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.97, ptr @.str.95, ptr @.str.3, i32 2024, ptr @.str.31, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.97 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"memcpy is disabled due to OoM\0A\00", [33 x i8] zeroinitializer }, align 32
@edma_dma_init._entry_ptr.98 = internal global ptr @edma_dma_init._entry.96, section ".printk_index", align 4
@edma_dma_init._entry.99 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.100, ptr @.str.95, ptr @.str.3, i32 2054, ptr @.str.44, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.100 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"memcpy is disabled\0A\00", [44 x i8] zeroinitializer }, align 32
@edma_dma_init._entry_ptr.101 = internal global ptr @edma_dma_init._entry.99, section ".printk_index", align 4
@edma_prep_dma_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.103, ptr @.str.3, i32 1251, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.102 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"%s: Failed to allocate slot\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.103 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"edma_prep_dma_memcpy\00", [43 x i8] zeroinitializer }, align 32
@edma_prep_dma_memcpy._entry_ptr = internal global ptr @edma_prep_dma_memcpy._entry, section ".printk_index", align 4
@edma_config_pset._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.104, ptr @.str.105, ptr @.str.3, i32 1012, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.104 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Exceeded max SG segment size\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.105 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"edma_config_pset\00", [47 x i8] zeroinitializer }, align 32
@edma_config_pset._entry_ptr = internal global ptr @edma_config_pset._entry, section ".printk_index", align 4
@edma_config_pset._entry.106 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.107, ptr @.str.105, ptr @.str.3, i32 1039, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.107 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"%s: direction not implemented yet\0A\00", [61 x i8] zeroinitializer }, align 32
@edma_config_pset._entry_ptr.108 = internal global ptr @edma_config_pset._entry.106, section ".printk_index", align 4
@edma_prep_dma_interleaved._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.109, ptr @.str.110, ptr @.str.3, i32 1307, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.109 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: SRC constant addressing is not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@.str.110 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"edma_prep_dma_interleaved\00", [38 x i8] zeroinitializer }, align 32
@edma_prep_dma_interleaved._entry_ptr = internal global ptr @edma_prep_dma_interleaved._entry, section ".printk_index", align 4
@edma_prep_dma_interleaved._entry.111 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.112, ptr @.str.110, ptr @.str.3, i32 1318, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.112 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"%s: DST constant addressing is not supported\0A\00", [50 x i8] zeroinitializer }, align 32
@edma_prep_dma_interleaved._entry_ptr.113 = internal global ptr @edma_prep_dma_interleaved._entry.111, section ".printk_index", align 4
@edma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.115, ptr @.str.3, i32 1092, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.114 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"%s: bad direction: %d\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.115 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"edma_prep_slave_sg\00", [45 x i8] zeroinitializer }, align 32
@edma_prep_slave_sg._entry_ptr = internal global ptr @edma_prep_slave_sg._entry, section ".printk_index", align 4
@edma_prep_slave_sg._entry.116 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.115, ptr @.str.3, i32 1097, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.117 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"%s: Undefined slave buswidth\0A\00", [34 x i8] zeroinitializer }, align 32
@edma_prep_slave_sg._entry_ptr.118 = internal global ptr @edma_prep_slave_sg._entry.116, section ".printk_index", align 4
@edma_prep_slave_sg._entry.119 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.115, ptr @.str.3, i32 1120, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@edma_prep_slave_sg._entry_ptr.120 = internal global ptr @edma_prep_slave_sg._entry.119, section ".printk_index", align 4
@edma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.114, ptr @.str.121, ptr @.str.3, i32 1381, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.121 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"edma_prep_dma_cyclic\00", [43 x i8] zeroinitializer }, align 32
@edma_prep_dma_cyclic._entry_ptr = internal global ptr @edma_prep_dma_cyclic._entry, section ".printk_index", align 4
@edma_prep_dma_cyclic._entry.122 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.117, ptr @.str.121, ptr @.str.3, i32 1386, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@edma_prep_dma_cyclic._entry_ptr.123 = internal global ptr @edma_prep_dma_cyclic._entry.122, section ".printk_index", align 4
@edma_prep_dma_cyclic._entry.124 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.125, ptr @.str.121, ptr @.str.3, i32 1391, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.125 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Period should be multiple of Buffer length\0A\00", [52 x i8] zeroinitializer }, align 32
@edma_prep_dma_cyclic._entry_ptr.126 = internal global ptr @edma_prep_dma_cyclic._entry.124, section ".printk_index", align 4
@edma_prep_dma_cyclic.__UNIQUE_ID_ddebug253 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.3, ptr @.str.127, i8 1, i8 102, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.127 = internal constant { [53 x i8], [43 x i8] } { [53 x i8] c"%s: channel=%d nslots=%d period_len=%zu buf_len=%zu\0A\00", [43 x i8] zeroinitializer }, align 32
@edma_prep_dma_cyclic._entry.128 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.102, ptr @.str.121, ptr @.str.3, i32 1442, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@edma_prep_dma_cyclic._entry_ptr.129 = internal global ptr @edma_prep_dma_cyclic._entry.128, section ".printk_index", align 4
@edma_prep_dma_cyclic.__UNIQUE_ID_ddebug254 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.3, ptr @.str.130, i8 1, i8 110, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.130 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"%s: Configure period %d of buf:\0A\00", [63 x i8] zeroinitializer }, align 32
@edma_prep_dma_cyclic.__UNIQUE_ID_ddebug255 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.121, ptr @.str.3, ptr @.str.71, i8 1, i8 115, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@edma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.131, ptr @.str.132, ptr @.str.3, i32 1745, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.131 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Entry slot allocation failed for channel %u\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.132 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"edma_alloc_chan_resources\00", [38 x i8] zeroinitializer }, align 32
@edma_alloc_chan_resources._entry_ptr = internal global ptr @edma_alloc_chan_resources._entry, section ".printk_index", align 4
@edma_alloc_chan_resources.__UNIQUE_ID_ddebug264 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.132, ptr @.str.3, ptr @.str.133, i8 1, i8 -73, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.133 = internal constant { [54 x i8], [42 x i8] } { [54 x i8] c"Got eDMA channel %d for virt channel %d (%s trigger)\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.134 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"HW\00", [29 x i8] zeroinitializer }, align 32
@.str.135 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"SW\00", [29 x i8] zeroinitializer }, align 32
@edma_alloc_channel._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.136, ptr @.str.137, ptr @.str.3, i32 728, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.136 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Channel%d is reserved, can not be used!\0A\00", [55 x i8] zeroinitializer }, align 32
@.str.137 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"edma_alloc_channel\00", [45 x i8] zeroinitializer }, align 32
@edma_alloc_channel._entry_ptr = internal global ptr @edma_alloc_channel._entry, section ".printk_index", align 4
@edma_free_chan_resources.__UNIQUE_ID_ddebug265 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.138, ptr @.str.3, ptr @.str.139, i8 1, i8 -63, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.138 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"edma_free_chan_resources\00", [39 x i8] zeroinitializer }, align 32
@.str.139 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"Free eDMA channel %d for virt channel %d\0A\00", [54 x i8] zeroinitializer }, align 32
@edma_residue._rs = internal global { %struct.ratelimit_state, [60 x i8] } { %struct.ratelimit_state { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.140, i8 0, i8 2, i8 0, i32 0, i32 0 } }, i32 500, i32 10, i32 0, i32 0, i32 0, i32 0 }, [60 x i8] zeroinitializer }, align 32
@.str.140 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"_rs.lock\00", [23 x i8] zeroinitializer }, align 32
@edma_residue.descriptor = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.141, ptr @.str.3, ptr @.str.142, i8 1, i8 -47, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.141 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"edma_residue\00", [19 x i8] zeroinitializer }, align 32
@.str.142 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"%s: timeout waiting for PaRAM update\0A\00", [58 x i8] zeroinitializer }, align 32
@edma_binding_type = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@.str.143 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"edma3-tptc\00", [21 x i8] zeroinitializer }, align 32
@edma_tptc_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,edma3-tptc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 4294967221, i64 4294967235]
@__sancov_gen_cov_switch_values.144 = internal global [5 x i64] [i64 3, i64 32, i64 0, i64 1, i64 2]
@___asan_gen_.145 = private unnamed_addr constant [12 x i8] c"edma_driver\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2686, i32 31 }
@___asan_gen_.148 = private unnamed_addr constant [17 x i8] c"edma_tptc_driver\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2702, i32 31 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2690, i32 11 }
@___asan_gen_.154 = private unnamed_addr constant [12 x i8] c"edma_of_ids\00", align 1
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 290, i32 34 }
@___asan_gen_.157 = private unnamed_addr constant [12 x i8] c"edma_pm_ops\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2682, i32 32 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2362, i32 4 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2385, i32 59 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2387, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2390, i32 4 }
@___asan_gen_.195 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2403, i32 3 }
@___asan_gen_.196 = private unnamed_addr constant [15 x i8] c"dummy_paramset\00", align 1
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 278, i32 34 }
@___asan_gen_.201 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2457, i32 38 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2462, i32 46 }
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2467, i32 4 }
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2473, i32 38 }
@___asan_gen_.216 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2478, i32 46 }
@___asan_gen_.222 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2483, i32 4 }
@___asan_gen_.228 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2491, i32 3 }
@___asan_gen_.231 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2511, i32 49 }
@___asan_gen_.234 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2528, i32 7 }
@___asan_gen_.243 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2532, i32 4 }
@___asan_gen_.249 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2534, i32 4 }
@___asan_gen_.255 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2570, i32 3 }
@___asan_gen_.261 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2577, i32 4 }
@___asan_gen_.270 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2587, i32 2 }
@___asan_gen_.273 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2202, i32 41 }
@___asan_gen_.276 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2213, i32 40 }
@___asan_gen_.279 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2233, i32 40 }
@___asan_gen_.285 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2102, i32 2 }
@___asan_gen_.288 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2103, i32 2 }
@___asan_gen_.291 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2104, i32 2 }
@___asan_gen_.294 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2105, i32 2 }
@___asan_gen_.297 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2106, i32 2 }
@___asan_gen_.300 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2107, i32 2 }
@___asan_gen_.309 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2108, i32 2 }
@___asan_gen_.315 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1560, i32 2 }
@___asan_gen_.321 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1528, i32 4 }
@___asan_gen_.324 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1531, i32 4 }
@___asan_gen_.330 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 640, i32 2 }
@___asan_gen_.338 = private unnamed_addr constant [32 x i8] c"../drivers/dma/ti/../virt-dma.h\00", align 1
@___asan_gen_.339 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.338, i32 101, i32 2 }
@___asan_gen_.345 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 804, i32 3 }
@___asan_gen_.348 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 851, i32 3 }
@___asan_gen_.351 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 858, i32 3 }
@___asan_gen_.354 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 862, i32 3 }
@___asan_gen_.363 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 561, i32 3 }
@___asan_gen_.369 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 691, i32 2 }
@___asan_gen_.375 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 607, i32 3 }
@___asan_gen_.378 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 612, i32 3 }
@___asan_gen_.381 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 680, i32 2 }
@___asan_gen_.387 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1659, i32 2 }
@___asan_gen_.393 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1667, i32 3 }
@___asan_gen_.396 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1682, i32 4 }
@___asan_gen_.399 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1698, i32 4 }
@___asan_gen_.405 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1706, i32 4 }
@___asan_gen_.411 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1620, i32 3 }
@___asan_gen_.414 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1627, i32 3 }
@___asan_gen_.423 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1990, i32 3 }
@___asan_gen_.429 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2024, i32 4 }
@___asan_gen_.435 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2054, i32 3 }
@___asan_gen_.444 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1250, i32 5 }
@___asan_gen_.453 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1012, i32 4 }
@___asan_gen_.459 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1039, i32 3 }
@___asan_gen_.468 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1306, i32 3 }
@___asan_gen_.474 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1317, i32 3 }
@___asan_gen_.483 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1092, i32 3 }
@___asan_gen_.489 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1097, i32 3 }
@___asan_gen_.492 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1119, i32 5 }
@___asan_gen_.498 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1381, i32 3 }
@___asan_gen_.501 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1386, i32 3 }
@___asan_gen_.507 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1391, i32 3 }
@___asan_gen_.510 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1431, i32 2 }
@___asan_gen_.513 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1441, i32 5 }
@___asan_gen_.516 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1466, i32 3 }
@___asan_gen_.525 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1744, i32 3 }
@___asan_gen_.534 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1754, i32 2 }
@___asan_gen_.535 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.543 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 727, i32 3 }
@___asan_gen_.549 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1797, i32 2 }
@___asan_gen_.550 = private unnamed_addr constant [4 x i8] c"_rs\00", align 1
@___asan_gen_.561 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 1861, i32 4 }
@___asan_gen_.562 = private unnamed_addr constant [18 x i8] c"edma_binding_type\00", align 1
@___asan_gen_.564 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 285, i32 18 }
@___asan_gen_.565 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.567 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 2705, i32 11 }
@___asan_gen_.568 = private unnamed_addr constant [17 x i8] c"edma_tptc_of_ids\00", align 1
@___asan_gen_.569 = private constant [25 x i8] c"../drivers/dma/ti/edma.c\00", align 1
@___asan_gen_.570 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.569, i32 303, i32 34 }
@llvm.compiler.used = appending global [180 x ptr] [ptr @__UNIQUE_ID_author275, ptr @__UNIQUE_ID_description276, ptr @__UNIQUE_ID_file277, ptr @__UNIQUE_ID_license278, ptr @__exitcall_edma_exit, ptr @__initcall__kmod_edma__274_2736_edma_init4, ptr @dma_ccerr_handler._entry, ptr @dma_ccerr_handler._entry.88, ptr @dma_ccerr_handler._entry_ptr, ptr @dma_ccerr_handler._entry_ptr.90, ptr @edma_alloc_chan_resources._entry, ptr @edma_alloc_chan_resources._entry_ptr, ptr @edma_alloc_channel._entry, ptr @edma_alloc_channel._entry_ptr, ptr @edma_config_pset._entry, ptr @edma_config_pset._entry.106, ptr @edma_config_pset._entry_ptr, ptr @edma_config_pset._entry_ptr.108, ptr @edma_dma_init._entry, ptr @edma_dma_init._entry.96, ptr @edma_dma_init._entry.99, ptr @edma_dma_init._entry_ptr, ptr @edma_dma_init._entry_ptr.101, ptr @edma_dma_init._entry_ptr.98, ptr @edma_exit, ptr @edma_link._entry, ptr @edma_link._entry_ptr, ptr @edma_prep_dma_cyclic._entry, ptr @edma_prep_dma_cyclic._entry.122, ptr @edma_prep_dma_cyclic._entry.124, ptr @edma_prep_dma_cyclic._entry.128, ptr @edma_prep_dma_cyclic._entry_ptr, ptr @edma_prep_dma_cyclic._entry_ptr.123, ptr @edma_prep_dma_cyclic._entry_ptr.126, ptr @edma_prep_dma_cyclic._entry_ptr.129, ptr @edma_prep_dma_interleaved._entry, ptr @edma_prep_dma_interleaved._entry.111, ptr @edma_prep_dma_interleaved._entry_ptr, ptr @edma_prep_dma_interleaved._entry_ptr.113, ptr @edma_prep_dma_memcpy._entry, ptr @edma_prep_dma_memcpy._entry_ptr, ptr @edma_prep_slave_sg._entry, ptr @edma_prep_slave_sg._entry.116, ptr @edma_prep_slave_sg._entry.119, ptr @edma_prep_slave_sg._entry_ptr, ptr @edma_prep_slave_sg._entry_ptr.118, ptr @edma_prep_slave_sg._entry_ptr.120, ptr @edma_probe._entry, ptr @edma_probe._entry.11, ptr @edma_probe._entry.16, ptr @edma_probe._entry.21, ptr @edma_probe._entry.24, ptr @edma_probe._entry.29, ptr @edma_probe._entry.33, ptr @edma_probe._entry.36, ptr @edma_probe._entry.39, ptr @edma_probe._entry.42, ptr @edma_probe._entry.8, ptr @edma_probe._entry_ptr, ptr @edma_probe._entry_ptr.10, ptr @edma_probe._entry_ptr.13, ptr @edma_probe._entry_ptr.18, ptr @edma_probe._entry_ptr.23, ptr @edma_probe._entry_ptr.26, ptr @edma_probe._entry_ptr.32, ptr @edma_probe._entry_ptr.35, ptr @edma_probe._entry_ptr.38, ptr @edma_probe._entry_ptr.41, ptr @edma_probe._entry_ptr.45, ptr @edma_driver, ptr @edma_tptc_driver, ptr @.str, ptr @edma_of_ids, ptr @edma_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @dummy_paramset, ptr @.str.14, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @.str.20, ptr @.str.22, ptr @.str.25, ptr @.str.27, ptr @.str.28, ptr @.str.30, ptr @.str.31, ptr @.str.34, ptr @.str.37, ptr @.str.40, ptr @.str.43, ptr @.str.44, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.59, ptr @.str.60, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @.str.79, ptr @.str.80, ptr @.str.81, ptr @.str.82, ptr @.str.83, ptr @.str.84, ptr @.str.85, ptr @.str.86, ptr @.str.87, ptr @.str.89, ptr @.str.91, ptr @.str.92, ptr @.str.93, ptr @.str.94, ptr @.str.95, ptr @.str.97, ptr @.str.100, ptr @.str.102, ptr @.str.103, ptr @.str.104, ptr @.str.105, ptr @.str.107, ptr @.str.109, ptr @.str.110, ptr @.str.112, ptr @.str.114, ptr @.str.115, ptr @.str.117, ptr @.str.121, ptr @.str.125, ptr @.str.127, ptr @.str.130, ptr @.str.131, ptr @.str.132, ptr @.str.133, ptr @.str.134, ptr @.str.135, ptr @.str.136, ptr @.str.137, ptr @.str.138, ptr @.str.139, ptr @edma_residue._rs, ptr @.str.140, ptr @.str.141, ptr @.str.142, ptr @edma_binding_type, ptr @.str.143, ptr @edma_tptc_of_ids], section "llvm.metadata"
@0 = internal global [142 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_tptc_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_of_ids to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.195 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dummy_paramset to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.196 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.201 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.216 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_probe._entry.21 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.222 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_probe._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.228 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.231 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.234 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.243 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_probe._entry.33 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.249 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.255 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_probe._entry.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.261 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.270 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.273 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.276 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.279 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.285 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.288 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.291 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.294 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.297 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.59 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.60 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.330 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.339 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 129, i32 192, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.345 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_link._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.363 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.369 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.79 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.375 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.81 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.378 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.381 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.83 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.387 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_ccerr_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.393 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.396 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.87 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.399 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dma_ccerr_handler._entry.88 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.89 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.405 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.91 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.92 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.411 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.93 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.414 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_dma_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.94 to i32), i32 49, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.95 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.423 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_dma_init._entry.96 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.97 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.429 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_dma_init._entry.99 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.100 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.435 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_prep_dma_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.102 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.103 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.444 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_config_pset._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.104 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.105 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.453 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_config_pset._entry.106 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.107 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.459 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_prep_dma_interleaved._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.109 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.110 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.468 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_prep_dma_interleaved._entry.111 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.112 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.474 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.114 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.115 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.483 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_prep_slave_sg._entry.116 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.117 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.489 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_prep_slave_sg._entry.119 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.492 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.121 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.498 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_prep_dma_cyclic._entry.122 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.501 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_prep_dma_cyclic._entry.124 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.125 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.507 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.127 to i32), i32 53, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.510 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_prep_dma_cyclic._entry.128 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.513 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.130 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.516 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.131 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.132 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.525 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.133 to i32), i32 54, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.134 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.135 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.534 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_alloc_channel._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.535 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.136 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.137 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.543 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.138 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.139 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.549 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_residue._rs to i32), i32 68, i32 128, i32 ptrtoint (ptr @___asan_gen_.550 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.140 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.141 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.142 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.561 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_binding_type to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.562 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.564 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.143 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.565 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.567 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @edma_tptc_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.568 to i32), i32 ptrtoint (ptr @___asan_gen_.569 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.570 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edma_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @edma_tptc_driver, ptr noundef null) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %call1 = tail call i32 @__platform_driver_register(ptr noundef nonnull @edma_driver, ptr noundef null) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %call1, %if.end ], [ %call, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @edma_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @platform_driver_unregister(ptr noundef nonnull @edma_driver) #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @edma_tptc_driver) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edma_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %pname.i.i = alloca [23 x i8], align 1
  %res.i.i = alloca %struct.resource, align 4
  %sz.i = alloca i32, align 4
  %pname.i = alloca [24 x i8], align 1
  %pname36.i = alloca [29 x i8], align 1
  %tc_args = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %platform_data = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 7
  %0 = ptrtoint ptr %platform_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %platform_data, align 8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %3, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %entry
  %call = tail call ptr @of_match_node(ptr noundef nonnull @edma_of_ids, ptr noundef nonnull %3) #10
  %tobool4.not = icmp eq ptr %call, null
  br i1 %tobool4.not, label %if.then.if.end_crit_edge, label %land.lhs.true

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %4 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %data, align 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %7)
  %cmp = icmp ne i32 %7, 1
  br label %if.end

if.end:                                           ; preds = %land.lhs.true, %if.then.if.end_crit_edge
  %legacy_mode.0 = phi i1 [ true, %if.then.if.end_crit_edge ], [ %cmp, %land.lhs.true ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.i) #10
  %8 = ptrtoint ptr %sz.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 -1, ptr %sz.i, align 4, !annotation !309
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 28, i32 noundef 3520) #10
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.end.edma_setup_info_from_dt.exit.thread_crit_edge, label %if.end.i

if.end.edma_setup_info_from_dt.exit.thread_crit_edge: ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_setup_info_from_dt.exit.thread

if.end.i:                                         ; preds = %if.end
  %9 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %of_node, align 8
  br i1 %legacy_mode.0, label %if.then3.i, label %if.end13.i

if.then3.i:                                       ; preds = %if.end.i
  %call4.i = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.46, ptr noundef nonnull %sz.i) #10
  %tobool5.not.i = icmp eq ptr %call4.i, null
  br i1 %tobool5.not.i, label %if.then3.i.edma_setup_info_from_dt.exit_crit_edge, label %if.then6.i

if.then3.i.edma_setup_info_from_dt.exit_crit_edge: ; preds = %if.then3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_setup_info_from_dt.exit

if.then6.i:                                       ; preds = %if.then3.i
  %11 = ptrtoint ptr %sz.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %sz.i, align 4
  call void @llvm.lifetime.start.p0(i64 23, ptr nonnull %pname.i.i) #10
  %13 = call ptr @memcpy(ptr %pname.i.i, ptr @__const.edma_xbar_event_map.pname, i32 23)
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %res.i.i) #10
  %14 = getelementptr inbounds %struct.resource, ptr %res.i.i, i32 0, i32 1
  %div69.i.i = lshr i32 %12, 1
  %add.i.i = add nuw i32 %div69.i.i, 2
  %15 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i.i, i32 2) #10
  %16 = extractvalue { i32, i1 } %15, 1
  %17 = call ptr @memset(ptr %res.i.i, i32 255, i32 32)
  br i1 %16, label %if.then6.i.if.then9.i594_crit_edge, label %devm_kcalloc.exit.i.i, !prof !310

if.then6.i.if.then9.i594_crit_edge:               ; preds = %if.then6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i594

devm_kcalloc.exit.i.i:                            ; preds = %if.then6.i
  %18 = extractvalue { i32, i1 } %15, 0
  %call5.i.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %18, i32 noundef 3520) #10
  %tobool.not.i.i = icmp eq ptr %call5.i.i.i.i, null
  br i1 %tobool.not.i.i, label %devm_kcalloc.exit.i.i.if.then9.i594_crit_edge, label %if.end.i.i

devm_kcalloc.exit.i.i.if.then9.i594_crit_edge:    ; preds = %devm_kcalloc.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i594

if.end.i.i:                                       ; preds = %devm_kcalloc.exit.i.i
  %19 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %of_node, align 8
  %call1.i.i = call i32 @of_address_to_resource(ptr noundef %20, i32 noundef 1, ptr noundef nonnull %res.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i.i)
  %tobool2.not.i.i = icmp eq i32 %call1.i.i, 0
  br i1 %tobool2.not.i.i, label %if.end4.i.i, label %if.end.i.i.if.then9.i594_crit_edge

if.end.i.i.if.then9.i594_crit_edge:               ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i594

if.end4.i.i:                                      ; preds = %if.end.i.i
  %21 = ptrtoint ptr %res.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %res.i.i, align 4
  %23 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %14, align 4
  %sub.i.i.i = sub i32 1, %22
  %add.i.i.i = add i32 %sub.i.i.i, %24
  %call6.i.i = call ptr @devm_ioremap(ptr noundef %dev, i32 noundef %22, i32 noundef %add.i.i.i) #10
  %tobool7.not.i.i = icmp eq ptr %call6.i.i, null
  br i1 %tobool7.not.i.i, label %if.end4.i.i.if.then9.i594_crit_edge, label %if.end9.i.i

if.end4.i.i.if.then9.i594_crit_edge:              ; preds = %if.end4.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i594

if.end9.i.i:                                      ; preds = %if.end4.i.i
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %of_node, align 8
  %call.i.i.i = call i32 @of_property_read_variable_u16_array(ptr noundef %26, ptr noundef nonnull %pname.i.i, ptr noundef nonnull %call5.i.i.i.i, i32 noundef %div69.i.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool12.not.i.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool12.not.i.i, label %if.end14.i.i, label %if.end9.i.i.if.then9.i594_crit_edge

if.end9.i.i.if.then9.i594_crit_edge:              ; preds = %if.end9.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then9.i594

if.end14.i.i:                                     ; preds = %if.end9.i.i
  %shr.i.i = lshr i32 %12, 2
  %arrayidx.i.i = getelementptr [2 x i16], ptr %call5.i.i.i.i, i32 %shr.i.i
  %27 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_store2_noabort(i32 %27)
  store i16 -1, ptr %arrayidx.i.i, align 2
  %arrayidx17.i.i = getelementptr [2 x i16], ptr %call5.i.i.i.i, i32 %shr.i.i, i32 1
  %28 = ptrtoint ptr %arrayidx17.i.i to i32
  call void @__asan_store2_noabort(i32 %28)
  store i16 -1, ptr %arrayidx17.i.i, align 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %12)
  %cmp72.not.i.i = icmp ult i32 %12, 4
  br i1 %cmp72.not.i.i, label %if.end14.i.i.edma_xbar_event_map.exit.i_crit_edge, label %for.body.preheader.i.i

if.end14.i.i.edma_xbar_event_map.exit.i_crit_edge: ; preds = %if.end14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_xbar_event_map.exit.i

for.body.preheader.i.i:                           ; preds = %if.end14.i.i
  %umax.i.i = call i32 @llvm.umax.i32(i32 %shr.i.i, i32 1) #10
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.preheader.i.i
  %i.073.i.i = phi i32 [ %inc.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ 0, %for.body.preheader.i.i ]
  %arrayidx18.i.i = getelementptr [2 x i16], ptr %call5.i.i.i.i, i32 %i.073.i.i
  %arrayidx19.i.i = getelementptr [2 x i16], ptr %call5.i.i.i.i, i32 %i.073.i.i, i32 1
  %29 = ptrtoint ptr %arrayidx19.i.i to i32
  call void @__asan_load2_noabort(i32 %29)
  %30 = load i16, ptr %arrayidx19.i.i, align 2
  %conv.i.i = sext i16 %30 to i32
  %and.i.i589 = shl nsw i32 %conv.i.i, 3
  %shl.i.i590 = and i32 %and.i.i589, 24
  %and23.i.i = and i32 %conv.i.i, -4
  %add.ptr.i.i591 = getelementptr i8, ptr %call6.i.i, i32 %and23.i.i
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i591) #10, !srcloc !311
  %32 = call i32 @llvm.bswap.i32(i32 %31) #10
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !312
  %shl26.i.i = shl nuw i32 255, %shl.i.i590
  %neg.i.i592 = xor i32 %shl26.i.i, -1
  %and27.i.i = and i32 %32, %neg.i.i592
  %33 = ptrtoint ptr %arrayidx18.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %arrayidx18.i.i, align 2
  %conv30.i.i = sext i16 %34 to i32
  %shl31.i.i = shl i32 %conv30.i.i, %shl.i.i590
  %or.i.i593 = or i32 %and27.i.i, %shl31.i.i
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #10, !srcloc !313
  call void @arm_heavy_mb() #10
  %35 = call i32 @llvm.bswap.i32(i32 %or.i.i593) #10
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i591, i32 %35) #10, !srcloc !314
  %inc.i.i = add nuw nsw i32 %i.073.i.i, 1
  %exitcond.not.i.i = icmp eq i32 %inc.i.i, %umax.i.i
  br i1 %exitcond.not.i.i, label %for.body.i.i.edma_xbar_event_map.exit.i_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i.i

for.body.i.i.edma_xbar_event_map.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_xbar_event_map.exit.i

edma_xbar_event_map.exit.i:                       ; preds = %for.body.i.i.edma_xbar_event_map.exit.i_crit_edge, %if.end14.i.i.edma_xbar_event_map.exit.i_crit_edge
  %xbar_chans33.i.i = getelementptr inbounds %struct.edma_soc_info, ptr %call.i.i, i32 0, i32 4
  %36 = ptrtoint ptr %xbar_chans33.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call5.i.i.i.i, ptr %xbar_chans33.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i.i) #10
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %pname.i.i) #10
  br label %edma_setup_info_from_dt.exit

if.then9.i594:                                    ; preds = %if.end9.i.i.if.then9.i594_crit_edge, %if.end4.i.i.if.then9.i594_crit_edge, %if.end.i.i.if.then9.i594_crit_edge, %devm_kcalloc.exit.i.i.if.then9.i594_crit_edge, %if.then6.i.if.then9.i594_crit_edge
  %retval.0.i.ph.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.then6.i.if.then9.i594_crit_edge ], [ inttoptr (i32 -5 to ptr), %if.end9.i.i.if.then9.i594_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end4.i.i.if.then9.i594_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.end.i.i.if.then9.i594_crit_edge ], [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.i.if.then9.i594_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %res.i.i) #10
  call void @llvm.lifetime.end.p0(i64 23, ptr nonnull %pname.i.i) #10
  br label %edma_setup_info_from_dt.exit.thread

if.end13.i:                                       ; preds = %if.end.i
  %call15.i = call ptr @of_find_property(ptr noundef %10, ptr noundef nonnull @.str.47, ptr noundef nonnull %sz.i) #10
  %tobool16.not.i = icmp eq ptr %call15.i, null
  br i1 %tobool16.not.i, label %if.end13.i.if.end31.i_crit_edge, label %if.then17.i

if.end13.i.if.end31.i_crit_edge:                  ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31.i

if.then17.i:                                      ; preds = %if.end13.i
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %pname.i) #10
  %37 = call ptr @memcpy(ptr %pname.i, ptr @__const.edma_setup_info_from_dt.pname, i32 24)
  %38 = ptrtoint ptr %sz.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sz.i, align 4
  %div148.i = lshr i32 %39, 2
  %add.i = add nuw nsw i32 %div148.i, 1
  %40 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add.i, i32 4) #10
  %41 = extractvalue { i32, i1 } %40, 1
  br i1 %41, label %if.then17.i.cleanup.thread.i_crit_edge, label %devm_kcalloc.exit.i, !prof !310

if.then17.i.cleanup.thread.i_crit_edge:           ; preds = %if.then17.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

devm_kcalloc.exit.i:                              ; preds = %if.then17.i
  %42 = extractvalue { i32, i1 } %40, 0
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %42, i32 noundef 3520) #10
  %tobool19.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool19.not.i, label %devm_kcalloc.exit.i.cleanup.thread.i_crit_edge, label %if.end22.i

devm_kcalloc.exit.i.cleanup.thread.i_crit_edge:   ; preds = %devm_kcalloc.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread.i

if.end22.i:                                       ; preds = %devm_kcalloc.exit.i
  %43 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %of_node, align 8
  %call.i149.i = call i32 @of_property_read_variable_u32_array(ptr noundef %44, ptr noundef nonnull %pname.i, ptr noundef nonnull %call5.i.i.i, i32 noundef %div148.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i149.i)
  %tobool25.not.i = icmp sgt i32 %call.i149.i, -1
  br i1 %tobool25.not.i, label %cleanup.i, label %if.then26.i

if.then26.i:                                      ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %45 = inttoptr i32 %call.i149.i to ptr
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %if.then26.i, %devm_kcalloc.exit.i.cleanup.thread.i_crit_edge, %if.then17.i.cleanup.thread.i_crit_edge
  %retval.0.ph.i = phi ptr [ inttoptr (i32 -12 to ptr), %devm_kcalloc.exit.i.cleanup.thread.i_crit_edge ], [ %45, %if.then26.i ], [ inttoptr (i32 -12 to ptr), %if.then17.i.cleanup.thread.i_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pname.i) #10
  br label %edma_setup_info_from_dt.exit

cleanup.i:                                        ; preds = %if.end22.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx.i595 = getelementptr i32, ptr %call5.i.i.i, i32 %div148.i
  %46 = ptrtoint ptr %arrayidx.i595 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 -1, ptr %arrayidx.i595, align 4
  %memcpy_channels.i = getelementptr inbounds %struct.edma_soc_info, ptr %call.i.i, i32 0, i32 2
  %47 = ptrtoint ptr %memcpy_channels.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %call5.i.i.i, ptr %memcpy_channels.i, align 4
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %pname.i) #10
  br label %if.end31.i

if.end31.i:                                       ; preds = %cleanup.i, %if.end13.i.if.end31.i_crit_edge
  %48 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %of_node, align 8
  %call33.i = call ptr @of_find_property(ptr noundef %49, ptr noundef nonnull @.str.48, ptr noundef nonnull %sz.i) #10
  %tobool34.not.i = icmp eq ptr %call33.i, null
  br i1 %tobool34.not.i, label %if.end31.i.edma_setup_info_from_dt.exit_crit_edge, label %if.then35.i

if.end31.i.edma_setup_info_from_dt.exit_crit_edge: ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_setup_info_from_dt.exit

if.then35.i:                                      ; preds = %if.end31.i
  call void @llvm.lifetime.start.p0(i64 29, ptr nonnull %pname36.i) #10
  %50 = call ptr @memcpy(ptr %pname36.i, ptr @__const.edma_setup_info_from_dt.pname.49, i32 29)
  %51 = ptrtoint ptr %sz.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %sz.i, align 4
  %div38147.i = lshr i32 %52, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %52)
  %tobool39.not.i = icmp ult i32 %52, 8
  br i1 %tobool39.not.i, label %if.then35.i.cleanup80.thread.i_crit_edge, label %if.end7.i.i.i

if.then35.i.cleanup80.thread.i_crit_edge:         ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup80.thread.i

if.end7.i.i.i:                                    ; preds = %if.then35.i
  %53 = and i32 %52, -8
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %53, i32 noundef 3520) #13
  %tobool43.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool43.not.i, label %if.end7.i.i.i.cleanup80.thread.i_crit_edge, label %if.end46.i

if.end7.i.i.i.cleanup80.thread.i_crit_edge:       ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup80.thread.i

if.end46.i:                                       ; preds = %if.end7.i.i.i
  %call.i152.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 8, i32 noundef 3520) #10
  %tobool48.not.i = icmp eq ptr %call.i152.i, null
  br i1 %tobool48.not.i, label %if.then49.i, label %devm_kcalloc.exit156.i

if.then49.i:                                      ; preds = %if.end46.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %cleanup80.thread.i

devm_kcalloc.exit156.i:                           ; preds = %if.end46.i
  %add52.i = shl nuw nsw i32 %div38147.i, 2
  %54 = add nuw i32 %add52.i, 4
  %call5.i.i153.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %54, i32 noundef 3520) #10
  %tobool54.not.i = icmp eq ptr %call5.i.i153.i, null
  br i1 %tobool54.not.i, label %if.then55.i, label %if.end57.i

if.then55.i:                                      ; preds = %devm_kcalloc.exit156.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  br label %cleanup80.thread.i

if.end57.i:                                       ; preds = %devm_kcalloc.exit156.i
  %55 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %of_node, align 8
  %mul.i = shl nuw nsw i32 %div38147.i, 1
  %call.i157.i = call i32 @of_property_read_variable_u32_array(ptr noundef %56, ptr noundef nonnull %pname36.i, ptr noundef nonnull %call8.i.i.i, i32 noundef %mul.i, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i157.i)
  %tobool61.not.i = icmp sgt i32 %call.i157.i, -1
  br i1 %tobool61.not.i, label %for.body.preheader.i, label %if.then62.i

for.body.preheader.i:                             ; preds = %if.end57.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div38147.i, i32 1) #10
  br label %for.body.i

if.then62.i:                                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #12
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  %57 = inttoptr i32 %call.i157.i to ptr
  br label %cleanup80.thread.i

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %for.body.preheader.i
  %i.0176.i = phi i32 [ %inc.i, %for.body.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx65.i = getelementptr [2 x i32], ptr %call8.i.i.i, i32 %i.0176.i
  %58 = ptrtoint ptr %arrayidx65.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %arrayidx65.i, align 8
  %conv.i = trunc i32 %59 to i16
  %arrayidx67.i = getelementptr [2 x i16], ptr %call5.i.i153.i, i32 %i.0176.i
  %60 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_store2_noabort(i32 %60)
  store i16 %conv.i, ptr %arrayidx67.i, align 2
  %arrayidx70.i = getelementptr [2 x i32], ptr %call8.i.i.i, i32 %i.0176.i, i32 1
  %61 = ptrtoint ptr %arrayidx70.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx70.i, align 4
  %conv71.i = trunc i32 %62 to i16
  %arrayidx73.i = getelementptr [2 x i16], ptr %call5.i.i153.i, i32 %i.0176.i, i32 1
  %63 = ptrtoint ptr %arrayidx73.i to i32
  call void @__asan_store2_noabort(i32 %63)
  store i16 %conv71.i, ptr %arrayidx73.i, align 2
  %inc.i = add nuw nsw i32 %i.0176.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %cleanup80.i, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

cleanup80.thread.i:                               ; preds = %if.then62.i, %if.then55.i, %if.then49.i, %if.end7.i.i.i.cleanup80.thread.i_crit_edge, %if.then35.i.cleanup80.thread.i_crit_edge
  %retval.2.ph.i = phi ptr [ inttoptr (i32 -12 to ptr), %if.end7.i.i.i.cleanup80.thread.i_crit_edge ], [ %call.i.i, %if.then35.i.cleanup80.thread.i_crit_edge ], [ inttoptr (i32 -12 to ptr), %if.then49.i ], [ inttoptr (i32 -12 to ptr), %if.then55.i ], [ %57, %if.then62.i ]
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %pname36.i) #10
  br label %edma_setup_info_from_dt.exit

cleanup80.i:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %arrayidx74.i = getelementptr [2 x i16], ptr %call5.i.i153.i, i32 %div38147.i
  %64 = ptrtoint ptr %arrayidx74.i to i32
  call void @__asan_store2_noabort(i32 %64)
  store i16 -1, ptr %arrayidx74.i, align 2
  %arrayidx77.i = getelementptr [2 x i16], ptr %call5.i.i153.i, i32 %div38147.i, i32 1
  %65 = ptrtoint ptr %arrayidx77.i to i32
  call void @__asan_store2_noabort(i32 %65)
  store i16 -1, ptr %arrayidx77.i, align 2
  %rsv.i = getelementptr inbounds %struct.edma_soc_info, ptr %call.i.i, i32 0, i32 1
  %66 = ptrtoint ptr %rsv.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %call.i152.i, ptr %rsv.i, align 4
  %rsv_slots79.i = getelementptr inbounds %struct.edma_rsv_info, ptr %call.i152.i, i32 0, i32 1
  %67 = ptrtoint ptr %rsv_slots79.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call5.i.i153.i, ptr %rsv_slots79.i, align 4
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #10
  call void @llvm.lifetime.end.p0(i64 29, ptr nonnull %pname36.i) #10
  br label %edma_setup_info_from_dt.exit

edma_setup_info_from_dt.exit.thread:              ; preds = %if.then9.i594, %if.end.edma_setup_info_from_dt.exit.thread_crit_edge
  %retval.3.i.ph = phi ptr [ inttoptr (i32 -12 to ptr), %if.end.edma_setup_info_from_dt.exit.thread_crit_edge ], [ %retval.0.i.ph.i, %if.then9.i594 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i) #10
  br label %cleanup.thread

edma_setup_info_from_dt.exit:                     ; preds = %cleanup80.i, %cleanup80.thread.i, %if.end31.i.edma_setup_info_from_dt.exit_crit_edge, %cleanup.thread.i, %edma_xbar_event_map.exit.i, %if.then3.i.edma_setup_info_from_dt.exit_crit_edge
  %retval.3.i = phi ptr [ %call.i.i, %edma_xbar_event_map.exit.i ], [ %call.i.i, %if.then3.i.edma_setup_info_from_dt.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.thread.i ], [ %retval.2.ph.i, %cleanup80.thread.i ], [ %call.i.i, %cleanup80.i ], [ %call.i.i, %if.end31.i.edma_setup_info_from_dt.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i) #10
  %cmp.i596 = icmp ugt ptr %retval.3.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i596, label %edma_setup_info_from_dt.exit.cleanup.thread_crit_edge, label %edma_setup_info_from_dt.exit.if.end12_crit_edge

edma_setup_info_from_dt.exit.if.end12_crit_edge:  ; preds = %edma_setup_info_from_dt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

edma_setup_info_from_dt.exit.cleanup.thread_crit_edge: ; preds = %edma_setup_info_from_dt.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup.thread

cleanup.thread:                                   ; preds = %edma_setup_info_from_dt.exit.cleanup.thread_crit_edge, %edma_setup_info_from_dt.exit.thread
  %retval.3.i665 = phi ptr [ %retval.3.i.ph, %edma_setup_info_from_dt.exit.thread ], [ %retval.3.i, %edma_setup_info_from_dt.exit.cleanup.thread_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  %68 = ptrtoint ptr %retval.3.i665 to i32
  br label %cleanup340

if.end12:                                         ; preds = %edma_setup_info_from_dt.exit.if.end12_crit_edge, %entry.if.end12_crit_edge
  %legacy_mode.1.off0 = phi i1 [ true, %entry.if.end12_crit_edge ], [ %legacy_mode.0, %edma_setup_info_from_dt.exit.if.end12_crit_edge ]
  %info.0 = phi ptr [ %1, %entry.if.end12_crit_edge ], [ %retval.3.i, %edma_setup_info_from_dt.exit.if.end12_crit_edge ]
  %tobool13.not = icmp eq ptr %info.0, null
  br i1 %tobool13.not, label %if.end12.cleanup340_crit_edge, label %if.end15

if.end12.cleanup340_crit_edge:                    ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup340

if.end15:                                         ; preds = %if.end12
  %call.i = call i32 @dma_set_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i597 = icmp eq i32 %call.i, 0
  br i1 %cmp.i597, label %if.end19, label %if.end15.cleanup340_crit_edge

if.end15.cleanup340_crit_edge:                    ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup340

if.end19:                                         ; preds = %if.end15
  %call1.i = call i32 @dma_set_coherent_mask(ptr noundef %dev, i64 noundef 4294967295) #10
  %call.i600 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 444, i32 noundef 3520) #10
  %tobool21.not = icmp eq ptr %call.i600, null
  br i1 %tobool21.not, label %if.end19.cleanup340_crit_edge, label %if.end23

if.end19.cleanup340_crit_edge:                    ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup340

if.end23:                                         ; preds = %if.end19
  %69 = ptrtoint ptr %call.i600 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %dev, ptr %call.i600, align 4
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %70 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %id, align 4
  %id25 = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 3
  %72 = ptrtoint ptr %id25 to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %71, ptr %id25, align 4
  %legacy_mode27 = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 4
  %frombool = zext i1 %legacy_mode.1.off0 to i8
  %73 = ptrtoint ptr %legacy_mode27 to i32
  call void @__asan_store1_noabort(i32 %73)
  store i8 %frombool, ptr %legacy_mode27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp29 = icmp slt i32 %71, 0
  br i1 %cmp29, label %if.then30, label %if.end23.if.end32_crit_edge

if.end23.if.end32_crit_edge:                      ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end32

if.then30:                                        ; preds = %if.end23
  call void @__sanitizer_cov_trace_pc() #12
  %74 = ptrtoint ptr %id25 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 0, ptr %id25, align 4
  br label %if.end32

if.end32:                                         ; preds = %if.then30, %if.end23.if.end32_crit_edge
  %call33 = call ptr @platform_get_resource_byname(ptr noundef %pdev, i32 noundef 512, ptr noundef nonnull @.str.6) #10
  %tobool34.not = icmp eq ptr %call33, null
  br i1 %tobool34.not, label %do.body36, label %if.end32.if.end54_crit_edge

if.end32.if.end54_crit_edge:                      ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.body36:                                        ; preds = %if.end32
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_probe.__UNIQUE_ID_ddebug273, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_probe, %do.end46)) #10
          to label %if.then43 [label %do.end46], !srcloc !315

if.then43:                                        ; preds = %do.body36
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_probe.__UNIQUE_ID_ddebug273, ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %do.end46

do.end46:                                         ; preds = %if.then43, %do.body36
  %call47 = call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #10
  %tobool48.not = icmp eq ptr %call47, null
  br i1 %tobool48.not, label %do.end52, label %do.end46.if.end54_crit_edge

do.end46.if.end54_crit_edge:                      ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

do.end52:                                         ; preds = %do.end46
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #14
  br label %cleanup340

if.end54:                                         ; preds = %do.end46.if.end54_crit_edge, %if.end32.if.end54_crit_edge
  %mem.0 = phi ptr [ %call33, %if.end32.if.end54_crit_edge ], [ %call47, %do.end46.if.end54_crit_edge ]
  %call55 = call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef nonnull %mem.0) #10
  %base = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 2
  %75 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %call55, ptr %base, align 4
  %cmp.i601 = icmp ugt ptr %call55, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i601, label %if.then58, label %if.end61

if.then58:                                        ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #12
  %76 = ptrtoint ptr %call55 to i32
  br label %cleanup340

if.end61:                                         ; preds = %if.end54
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %77 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %call.i600, ptr %driver_data.i.i, align 4
  call void @pm_runtime_enable(ptr noundef %dev) #10
  %call.i602 = call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i602)
  %cmp63 = icmp slt i32 %call.i602, 0
  br i1 %cmp63, label %do.end67, label %if.end68

do.end67:                                         ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #14
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %cleanup340

if.end68:                                         ; preds = %if.end61
  %call69 = call fastcc i32 @edma_setup_from_hw(ptr noundef %dev, ptr noundef nonnull %info.0, ptr noundef nonnull %call.i600)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call69)
  %tobool70.not = icmp eq i32 %call69, 0
  br i1 %tobool70.not, label %if.end72, label %if.end68.err_disable_pm_crit_edge

if.end68.err_disable_pm_crit_edge:                ; preds = %if.end68
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_disable_pm

if.end72:                                         ; preds = %if.end68
  %num_channels = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 5
  %78 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %num_channels, align 4
  %80 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %79, i32 340) #10
  %81 = extractvalue { i32, i1 } %80, 1
  br i1 %81, label %if.end72.devm_kcalloc.exit_crit_edge, label %if.end.i.i603, !prof !310

if.end72.devm_kcalloc.exit_crit_edge:             ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  br label %devm_kcalloc.exit

if.end.i.i603:                                    ; preds = %if.end72
  call void @__sanitizer_cov_trace_pc() #12
  %82 = extractvalue { i32, i1 } %80, 0
  %call5.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %82, i32 noundef 3520) #10
  br label %devm_kcalloc.exit

devm_kcalloc.exit:                                ; preds = %if.end.i.i603, %if.end72.devm_kcalloc.exit_crit_edge
  %retval.0.i.i = phi ptr [ %call5.i.i, %if.end.i.i603 ], [ null, %if.end72.devm_kcalloc.exit_crit_edge ]
  %slave_chans = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 18
  %83 = ptrtoint ptr %slave_chans to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %retval.0.i.i, ptr %slave_chans, align 4
  %num_slots = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 8
  %84 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_slots, align 4
  %sub = add i32 %85, 31
  %86 = lshr i32 %sub, 3
  %87 = and i32 %86, 536870908
  %call5.i.i604 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %87, i32 noundef 3520) #10
  %slot_inuse = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 14
  %88 = ptrtoint ptr %slot_inuse to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %call5.i.i604, ptr %slot_inuse, align 4
  %89 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load i32, ptr %num_channels, align 4
  %sub77 = add i32 %90, 31
  %91 = lshr i32 %sub77, 3
  %92 = and i32 %91, 536870908
  %call5.i.i608 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %92, i32 noundef 3520) #10
  %channels_mask = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 15
  %93 = ptrtoint ptr %channels_mask to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %call5.i.i608, ptr %channels_mask, align 4
  %94 = ptrtoint ptr %slave_chans to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %slave_chans, align 4
  %tobool81.not = icmp eq ptr %95, null
  br i1 %tobool81.not, label %devm_kcalloc.exit.err_disable_pm_crit_edge, label %lor.lhs.false

devm_kcalloc.exit.err_disable_pm_crit_edge:       ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_disable_pm

lor.lhs.false:                                    ; preds = %devm_kcalloc.exit
  %96 = ptrtoint ptr %slot_inuse to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %slot_inuse, align 4
  %tobool83.not = icmp eq ptr %97, null
  %tobool86.not = icmp eq ptr %call5.i.i608, null
  %or.cond = select i1 %tobool83.not, i1 true, i1 %tobool86.not
  br i1 %or.cond, label %lor.lhs.false.err_disable_pm_crit_edge, label %if.end88

lor.lhs.false.err_disable_pm_crit_edge:           ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %err_disable_pm

if.end88:                                         ; preds = %lor.lhs.false
  %98 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_channels, align 4
  %sub.i = add i32 %99, 31
  %100 = lshr i32 %sub.i, 3
  %mul.i612 = and i32 %100, 536870908
  %101 = call ptr @memset(ptr %call5.i.i608, i32 255, i32 %mul.i612)
  %102 = ptrtoint ptr %info.0 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %info.0, align 4
  %default_queue91 = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 11
  %104 = ptrtoint ptr %default_queue91 to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 %103, ptr %default_queue91, align 4
  %rsv = getelementptr inbounds %struct.edma_soc_info, ptr %info.0, i32 0, i32 1
  %105 = ptrtoint ptr %rsv to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %rsv, align 4
  %tobool92.not = icmp eq ptr %106, null
  br i1 %tobool92.not, label %if.end88.if.end129_crit_edge, label %if.then93

if.end88.if.end129_crit_edge:                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.then93:                                        ; preds = %if.end88
  %rsv_slots = getelementptr inbounds %struct.edma_rsv_info, ptr %106, i32 0, i32 1
  %107 = ptrtoint ptr %rsv_slots to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rsv_slots, align 4
  %tobool95.not = icmp eq ptr %108, null
  br i1 %tobool95.not, label %if.then93.if.end107_crit_edge, label %for.cond.preheader

if.then93.if.end107_crit_edge:                    ; preds = %if.then93
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

for.cond.preheader:                               ; preds = %if.then93
  %109 = ptrtoint ptr %108 to i32
  call void @__asan_load2_noabort(i32 %109)
  %110 = load i16, ptr %108, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %110)
  %cmp98.not678 = icmp eq i16 %110, -1
  br i1 %cmp98.not678, label %for.cond.preheader.if.end107_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.if.end107_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %111 = phi i16 [ %117, %for.body.for.body_crit_edge ], [ %110, %for.cond.preheader.for.body_crit_edge ]
  %i.0679 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv = sext i16 %111 to i32
  %112 = ptrtoint ptr %slot_inuse to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load ptr, ptr %slot_inuse, align 4
  %arrayidx105 = getelementptr [2 x i16], ptr %108, i32 %i.0679, i32 1
  %114 = ptrtoint ptr %arrayidx105 to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %arrayidx105, align 2
  %conv106 = sext i16 %115 to i32
  call void @__bitmap_set(ptr noundef %113, i32 noundef %conv, i32 noundef %conv106) #10
  %inc = add i32 %i.0679, 1
  %arrayidx = getelementptr [2 x i16], ptr %108, i32 %inc
  %116 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load2_noabort(i32 %116)
  %117 = load i16, ptr %arrayidx, align 2
  %cmp98.not = icmp eq i16 %117, -1
  br i1 %cmp98.not, label %for.body.if.end107_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.if.end107_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end107

if.end107:                                        ; preds = %for.body.if.end107_crit_edge, %for.cond.preheader.if.end107_crit_edge, %if.then93.if.end107_crit_edge
  %118 = ptrtoint ptr %rsv to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %rsv, align 4
  %120 = ptrtoint ptr %119 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %119, align 4
  %tobool109.not = icmp eq ptr %121, null
  br i1 %tobool109.not, label %if.end107.if.end129_crit_edge, label %for.cond111.preheader

if.end107.if.end129_crit_edge:                    ; preds = %if.end107
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

for.cond111.preheader:                            ; preds = %if.end107
  %122 = ptrtoint ptr %121 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %121, align 2
  call void @__sanitizer_cov_trace_const_cmp2(i16 -1, i16 %123)
  %cmp115.not680 = icmp eq i16 %123, -1
  br i1 %cmp115.not680, label %for.cond111.preheader.if.end129_crit_edge, label %for.cond111.preheader.for.body117_crit_edge

for.cond111.preheader.for.body117_crit_edge:      ; preds = %for.cond111.preheader
  br label %for.body117

for.cond111.preheader.if.end129_crit_edge:        ; preds = %for.cond111.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

for.body117:                                      ; preds = %for.body117.for.body117_crit_edge, %for.cond111.preheader.for.body117_crit_edge
  %124 = phi i16 [ %130, %for.body117.for.body117_crit_edge ], [ %123, %for.cond111.preheader.for.body117_crit_edge ]
  %i.1681 = phi i32 [ %inc126, %for.body117.for.body117_crit_edge ], [ 0, %for.cond111.preheader.for.body117_crit_edge ]
  %conv114 = sext i16 %124 to i32
  %125 = ptrtoint ptr %channels_mask to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %channels_mask, align 4
  %arrayidx123 = getelementptr [2 x i16], ptr %121, i32 %i.1681, i32 1
  %127 = ptrtoint ptr %arrayidx123 to i32
  call void @__asan_load2_noabort(i32 %127)
  %128 = load i16, ptr %arrayidx123, align 2
  %conv124 = sext i16 %128 to i32
  call void @__bitmap_clear(ptr noundef %126, i32 noundef %conv114, i32 noundef %conv124) #10
  %inc126 = add i32 %i.1681, 1
  %arrayidx112 = getelementptr [2 x i16], ptr %121, i32 %inc126
  %129 = ptrtoint ptr %arrayidx112 to i32
  call void @__asan_load2_noabort(i32 %129)
  %130 = load i16, ptr %arrayidx112, align 2
  %cmp115.not = icmp eq i16 %130, -1
  br i1 %cmp115.not, label %for.body117.if.end129_crit_edge, label %for.body117.for.body117_crit_edge

for.body117.for.body117_crit_edge:                ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body117

for.body117.if.end129_crit_edge:                  ; preds = %for.body117
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end129

if.end129:                                        ; preds = %for.body117.if.end129_crit_edge, %for.cond111.preheader.if.end129_crit_edge, %if.end107.if.end129_crit_edge, %if.end88.if.end129_crit_edge
  %131 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %132)
  %cmp132682.not = icmp eq i32 %132, 0
  br i1 %cmp132682.not, label %if.end129.for.end142_crit_edge, label %if.end129.for.body134_crit_edge

if.end129.for.body134_crit_edge:                  ; preds = %if.end129
  br label %for.body134

if.end129.for.end142_crit_edge:                   ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end142

for.body134:                                      ; preds = %for.inc140.for.body134_crit_edge, %if.end129.for.body134_crit_edge
  %133 = phi i32 [ %143, %for.inc140.for.body134_crit_edge ], [ %132, %if.end129.for.body134_crit_edge ]
  %i.2683 = phi i32 [ %inc141, %for.inc140.for.body134_crit_edge ], [ 0, %if.end129.for.body134_crit_edge ]
  %134 = ptrtoint ptr %slot_inuse to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %slot_inuse, align 4
  %div3.i = lshr i32 %i.2683, 5
  %arrayidx.i = getelementptr i32, ptr %135, i32 %div3.i
  %136 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %i.2683, 31
  %138 = shl nuw i32 1, %and.i
  %139 = and i32 %137, %138
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %139)
  %tobool137.not = icmp eq i32 %139, 0
  br i1 %tobool137.not, label %if.then138, label %for.body134.for.inc140_crit_edge

for.body134.for.inc140_crit_edge:                 ; preds = %for.body134
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc140

if.then138:                                       ; preds = %for.body134
  %and.i613 = and i32 %i.2683, 65535
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i613, i32 %133)
  %cmp.not.i = icmp ult i32 %and.i613, %133
  br i1 %cmp.not.i, label %if.end.i616, label %if.then138.for.inc140_crit_edge

if.then138.for.inc140_crit_edge:                  ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc140

if.end.i616:                                      ; preds = %if.then138
  call void @__sanitizer_cov_trace_pc() #12
  %140 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %base, align 4
  %shl.i = shl nuw nsw i32 %and.i613, 5
  %add.i614 = add nuw nsw i32 %shl.i, 16384
  %add.ptr.i615 = getelementptr i8, ptr %141, i32 %add.i614
  call void @mmiocpy(ptr noundef %add.ptr.i615, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #10
  br label %for.inc140

for.inc140:                                       ; preds = %if.end.i616, %if.then138.for.inc140_crit_edge, %for.body134.for.inc140_crit_edge
  %inc141 = add nuw i32 %i.2683, 1
  %142 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %num_slots, align 4
  %cmp132 = icmp ult i32 %inc141, %143
  br i1 %cmp132, label %for.inc140.for.body134_crit_edge, label %for.inc140.for.end142_crit_edge

for.inc140.for.end142_crit_edge:                  ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end142

for.inc140.for.body134_crit_edge:                 ; preds = %for.inc140
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body134

for.end142:                                       ; preds = %for.inc140.for.end142_crit_edge, %if.end129.for.end142_crit_edge
  %call143 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.14) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call143)
  %cmp144 = icmp sgt i32 %call143, -1
  %brmerge = select i1 %cmp144, i1 true, i1 %tobool.not
  br i1 %brmerge, label %for.end142.if.end150_crit_edge, label %if.then148

for.end142.if.end150_crit_edge:                   ; preds = %for.end142
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end150

if.then148:                                       ; preds = %for.end142
  call void @__sanitizer_cov_trace_pc() #12
  %call149 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %3, i32 noundef 0) #10
  br label %if.end150

if.end150:                                        ; preds = %if.then148, %for.end142.if.end150_crit_edge
  %irq.0 = phi i32 [ %call149, %if.then148 ], [ %call143, %for.end142.if.end150_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %irq.0)
  %cmp151 = icmp sgt i32 %irq.0, -1
  br i1 %cmp151, label %if.then153, label %if.end150.if.end163_crit_edge

if.end150.if.end163_crit_edge:                    ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end163

if.then153:                                       ; preds = %if.end150
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %144 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i617 = icmp eq ptr %145, null
  br i1 %tobool.not.i617, label %if.end.i618, label %if.then153.dev_name.exit_crit_edge

if.then153.dev_name.exit_crit_edge:               ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit

if.end.i618:                                      ; preds = %if.then153
  call void @__sanitizer_cov_trace_pc() #12
  %146 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i618, %if.then153.dev_name.exit_crit_edge
  %retval.0.i619 = phi ptr [ %147, %if.end.i618 ], [ %145, %if.then153.dev_name.exit_crit_edge ]
  %call155 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.15, ptr noundef %retval.0.i619) #10
  %call.i620 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq.0, ptr noundef nonnull @dma_irq_handler, ptr noundef null, i32 noundef 0, ptr noundef %call155, ptr noundef %call.i600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i620)
  %tobool157.not = icmp eq i32 %call.i620, 0
  br i1 %tobool157.not, label %if.end162, label %do.end161

do.end161:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %irq.0, i32 noundef %call.i620) #14
  br label %err_disable_pm

if.end162:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #12
  %ccint = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 12
  %148 = ptrtoint ptr %ccint to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 %irq.0, ptr %ccint, align 4
  br label %if.end163

if.end163:                                        ; preds = %if.end162, %if.end150.if.end163_crit_edge
  %call164 = call i32 @platform_get_irq_byname(ptr noundef %pdev, ptr noundef nonnull @.str.19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call164)
  %cmp165 = icmp sgt i32 %call164, -1
  %brmerge563 = select i1 %cmp165, i1 true, i1 %tobool.not
  br i1 %brmerge563, label %if.end163.if.end171_crit_edge, label %if.then169

if.end163.if.end171_crit_edge:                    ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end171

if.then169:                                       ; preds = %if.end163
  call void @__sanitizer_cov_trace_pc() #12
  %call170 = call i32 @irq_of_parse_and_map(ptr noundef nonnull %3, i32 noundef 2) #10
  br label %if.end171

if.end171:                                        ; preds = %if.then169, %if.end163.if.end171_crit_edge
  %irq.1 = phi i32 [ %call170, %if.then169 ], [ %call164, %if.end163.if.end171_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %irq.1)
  %cmp172 = icmp sgt i32 %irq.1, -1
  br i1 %cmp172, label %if.then174, label %if.end171.if.end184_crit_edge

if.end171.if.end184_crit_edge:                    ; preds = %if.end171
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end184

if.then174:                                       ; preds = %if.end171
  %init_name.i621 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %149 = ptrtoint ptr %init_name.i621 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %init_name.i621, align 8
  %tobool.not.i622 = icmp eq ptr %150, null
  br i1 %tobool.not.i622, label %if.end.i623, label %if.then174.dev_name.exit625_crit_edge

if.then174.dev_name.exit625_crit_edge:            ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  br label %dev_name.exit625

if.end.i623:                                      ; preds = %if.then174
  call void @__sanitizer_cov_trace_pc() #12
  %151 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %dev, align 4
  br label %dev_name.exit625

dev_name.exit625:                                 ; preds = %if.end.i623, %if.then174.dev_name.exit625_crit_edge
  %retval.0.i624 = phi ptr [ %152, %if.end.i623 ], [ %150, %if.then174.dev_name.exit625_crit_edge ]
  %call176 = call noalias ptr (ptr, i32, ptr, ...) @devm_kasprintf(ptr noundef %dev, i32 noundef 3264, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i624) #10
  %call.i626 = call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %irq.1, ptr noundef nonnull @dma_ccerr_handler, ptr noundef null, i32 noundef 0, ptr noundef %call176, ptr noundef %call.i600) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i626)
  %tobool178.not = icmp eq i32 %call.i626, 0
  br i1 %tobool178.not, label %if.end183, label %do.end182

do.end182:                                        ; preds = %dev_name.exit625
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.22, i32 noundef %irq.1, i32 noundef %call.i626) #14
  br label %err_disable_pm

if.end183:                                        ; preds = %dev_name.exit625
  call void @__sanitizer_cov_trace_pc() #12
  %ccerrint = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 13
  %153 = ptrtoint ptr %ccerrint to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 %irq.1, ptr %ccerrint, align 4
  br label %if.end184

if.end184:                                        ; preds = %if.end183, %if.end171.if.end184_crit_edge
  %call185 = call fastcc i32 @edma_alloc_slot(ptr noundef nonnull %call.i600, i32 noundef -1)
  %dummy_slot = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 20
  %154 = ptrtoint ptr %dummy_slot to i32
  call void @__asan_store4_noabort(i32 %154)
  store i32 %call185, ptr %dummy_slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call185)
  %cmp187 = icmp slt i32 %call185, 0
  br i1 %cmp187, label %do.end192, label %if.end194

do.end192:                                        ; preds = %if.end184
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.25) #14
  %155 = ptrtoint ptr %dummy_slot to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load i32, ptr %dummy_slot, align 4
  br label %err_disable_pm

if.end194:                                        ; preds = %if.end184
  %queue_priority_mapping195 = getelementptr inbounds %struct.edma_soc_info, ptr %info.0, i32 0, i32 3
  %157 = ptrtoint ptr %queue_priority_mapping195 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load ptr, ptr %queue_priority_mapping195, align 4
  %159 = ptrtoint ptr %legacy_mode27 to i32
  call void @__asan_load1_noabort(i32 %159)
  %160 = load i8, ptr %legacy_mode27, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %160)
  %tobool197.not = icmp eq i8 %160, 0
  br i1 %tobool197.not, label %if.then198, label %if.end194.if.end269_crit_edge

if.end194.if.end269_crit_edge:                    ; preds = %if.end194
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end269

if.then198:                                       ; preds = %if.end194
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %tc_args) #10
  %161 = call ptr @memset(ptr %tc_args, i32 255, i32 72)
  %num_tc = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 9
  %162 = ptrtoint ptr %num_tc to i32
  call void @__asan_load4_noabort(i32 %162)
  %163 = load i32, ptr %num_tc, align 4
  %164 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %163, i32 8) #10
  %165 = extractvalue { i32, i1 } %164, 1
  br i1 %165, label %devm_kcalloc.exit630.thread, label %devm_kcalloc.exit630, !prof !310

devm_kcalloc.exit630.thread:                      ; preds = %if.then198
  call void @__sanitizer_cov_trace_pc() #12
  %tc_list673 = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 19
  %166 = ptrtoint ptr %tc_list673 to i32
  call void @__asan_store4_noabort(i32 %166)
  store ptr null, ptr %tc_list673, align 4
  br label %cleanup264

devm_kcalloc.exit630:                             ; preds = %if.then198
  %167 = extractvalue { i32, i1 } %164, 0
  %call5.i.i627 = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %167, i32 noundef 3520) #10
  %tc_list = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 19
  %168 = ptrtoint ptr %tc_list to i32
  call void @__asan_store4_noabort(i32 %168)
  store ptr %call5.i.i627, ptr %tc_list, align 4
  %tobool201.not = icmp eq ptr %call5.i.i627, null
  br i1 %tobool201.not, label %devm_kcalloc.exit630.cleanup264_crit_edge, label %for.cond204.preheader

devm_kcalloc.exit630.cleanup264_crit_edge:        ; preds = %devm_kcalloc.exit630
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup264

for.cond204.preheader:                            ; preds = %devm_kcalloc.exit630
  %call.i631685 = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef null, i32 noundef 1, i32 noundef 0, ptr noundef nonnull %tc_args) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i631685)
  %tobool206.not686 = icmp eq i32 %call.i631685, 0
  br i1 %tobool206.not686, label %lor.lhs.false207.lr.ph, label %for.cond204.preheader.for.end237_crit_edge

for.cond204.preheader.for.end237_crit_edge:       ; preds = %for.cond204.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end237

lor.lhs.false207.lr.ph:                           ; preds = %for.cond204.preheader
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %tc_args, i32 0, i32 2
  br label %lor.lhs.false207

lor.lhs.false207:                                 ; preds = %for.inc235.lor.lhs.false207_crit_edge, %lor.lhs.false207.lr.ph
  %lowest_priority.0689 = phi i32 [ 0, %lor.lhs.false207.lr.ph ], [ %lowest_priority.1, %for.inc235.lor.lhs.false207_crit_edge ]
  %i.3687 = phi i32 [ 0, %lor.lhs.false207.lr.ph ], [ %inc236, %for.inc235.lor.lhs.false207_crit_edge ]
  %169 = ptrtoint ptr %num_tc to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load i32, ptr %num_tc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %i.3687, i32 %170)
  %cmp209 = icmp eq i32 %i.3687, %170
  br i1 %cmp209, label %lor.lhs.false207.for.end237_crit_edge, label %if.end212

lor.lhs.false207.for.end237_crit_edge:            ; preds = %lor.lhs.false207
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end237

if.end212:                                        ; preds = %lor.lhs.false207
  %171 = ptrtoint ptr %tc_args to i32
  call void @__asan_load4_noabort(i32 %171)
  %172 = load ptr, ptr %tc_args, align 4
  %173 = ptrtoint ptr %tc_list to i32
  call void @__asan_load4_noabort(i32 %173)
  %174 = load ptr, ptr %tc_list, align 4
  %arrayidx214 = getelementptr %struct.edma_tc, ptr %174, i32 %i.3687
  %175 = ptrtoint ptr %arrayidx214 to i32
  call void @__asan_store4_noabort(i32 %175)
  store ptr %172, ptr %arrayidx214, align 4
  %conv216 = trunc i32 %i.3687 to i16
  %176 = load ptr, ptr %tc_list, align 4
  %id219 = getelementptr %struct.edma_tc, ptr %176, i32 %i.3687, i32 1
  %177 = ptrtoint ptr %id219 to i32
  call void @__asan_store2_noabort(i32 %177)
  store i16 %conv216, ptr %id219, align 4
  %178 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %178)
  %179 = load i32, ptr %args, align 4
  %conv221 = trunc i32 %179 to i8
  %arrayidx223 = getelementptr [2 x i8], ptr %158, i32 %i.3687, i32 1
  %180 = ptrtoint ptr %arrayidx223 to i32
  call void @__asan_store1_noabort(i32 %180)
  store i8 %conv221, ptr %arrayidx223, align 1
  %sext = shl i32 %179, 24
  %conv226 = ashr exact i32 %sext, 24
  call void @__sanitizer_cov_trace_cmp4(i32 %conv226, i32 %lowest_priority.0689)
  %cmp227 = icmp sgt i32 %conv226, %lowest_priority.0689
  br i1 %cmp227, label %if.then229, label %if.end212.for.inc235_crit_edge

if.end212.for.inc235_crit_edge:                   ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc235

if.then229:                                       ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #12
  %181 = ptrtoint ptr %info.0 to i32
  call void @__asan_store4_noabort(i32 %181)
  store i32 %i.3687, ptr %info.0, align 4
  br label %for.inc235

for.inc235:                                       ; preds = %if.then229, %if.end212.for.inc235_crit_edge
  %lowest_priority.1 = phi i32 [ %conv226, %if.then229 ], [ %lowest_priority.0689, %if.end212.for.inc235_crit_edge ]
  %inc236 = add i32 %i.3687, 1
  %call.i631 = call i32 @__of_parse_phandle_with_args(ptr noundef %3, ptr noundef nonnull @.str.27, ptr noundef null, i32 noundef 1, i32 noundef %inc236, ptr noundef nonnull %tc_args) #10
  %tobool206.not = icmp eq i32 %call.i631, 0
  br i1 %tobool206.not, label %for.inc235.lor.lhs.false207_crit_edge, label %for.inc235.for.end237_crit_edge

for.inc235.for.end237_crit_edge:                  ; preds = %for.inc235
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end237

for.inc235.lor.lhs.false207_crit_edge:            ; preds = %for.inc235
  call void @__sanitizer_cov_trace_pc() #12
  br label %lor.lhs.false207

for.end237:                                       ; preds = %for.inc235.for.end237_crit_edge, %lor.lhs.false207.for.end237_crit_edge, %for.cond204.preheader.for.end237_crit_edge
  %182 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %182)
  %183 = load i32, ptr %num_channels, align 4
  %sub240 = add i32 %183, 31
  %div241562 = lshr i32 %sub240, 5
  %184 = ptrtoint ptr %channels_mask to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load ptr, ptr %channels_mask, align 4
  %call243 = call i32 @of_property_read_variable_u32_array(ptr noundef %3, ptr noundef nonnull @.str.28, ptr noundef %185, i32 noundef 1, i32 noundef %div241562) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call243)
  %cmp244 = icmp slt i32 %call243, 1
  call void @__sanitizer_cov_trace_cmp4(i32 %call243, i32 %div241562)
  %cmp247.not = icmp eq i32 %call243, %div241562
  %or.cond564 = or i1 %cmp244, %cmp247.not
  br i1 %or.cond564, label %if.else, label %for.end237.cleanup264.thread.sink.split_crit_edge

for.end237.cleanup264.thread.sink.split_crit_edge: ; preds = %for.end237
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup264.thread.sink.split

if.else:                                          ; preds = %for.end237
  %186 = zext i32 %call243 to i64
  call void @__sanitizer_cov_trace_switch(i64 %186, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call243, label %if.else.cleanup264.thread_crit_edge [
    i32 -75, label %if.else.cleanup264.thread.sink.split_crit_edge
    i32 -61, label %if.else.cleanup264.thread.sink.split_crit_edge695
  ]

if.else.cleanup264.thread.sink.split_crit_edge695: ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup264.thread.sink.split

if.else.cleanup264.thread.sink.split_crit_edge:   ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup264.thread.sink.split

if.else.cleanup264.thread_crit_edge:              ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup264.thread

cleanup264.thread.sink.split:                     ; preds = %if.else.cleanup264.thread.sink.split_crit_edge, %if.else.cleanup264.thread.sink.split_crit_edge695, %for.end237.cleanup264.thread.sink.split_crit_edge
  %.str.34.sink = phi ptr [ @.str.30, %for.end237.cleanup264.thread.sink.split_crit_edge ], [ @.str.34, %if.else.cleanup264.thread.sink.split_crit_edge ], [ @.str.34, %if.else.cleanup264.thread.sink.split_crit_edge695 ]
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull %.str.34.sink) #14
  br label %cleanup264.thread

cleanup264.thread:                                ; preds = %cleanup264.thread.sink.split, %if.else.cleanup264.thread_crit_edge
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %tc_args) #10
  br label %if.end269

cleanup264:                                       ; preds = %devm_kcalloc.exit630.cleanup264_crit_edge, %devm_kcalloc.exit630.thread
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %tc_args) #10
  br label %err_reg1

if.end269:                                        ; preds = %cleanup264.thread, %if.end194.if.end269_crit_edge
  %187 = ptrtoint ptr %158 to i32
  call void @__asan_load1_noabort(i32 %187)
  %188 = load i8, ptr %158, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %188)
  %cmp274.not690 = icmp eq i8 %188, -1
  br i1 %cmp274.not690, label %if.end269.for.end285_crit_edge, label %if.end269.for.body276_crit_edge

if.end269.for.body276_crit_edge:                  ; preds = %if.end269
  br label %for.body276

if.end269.for.end285_crit_edge:                   ; preds = %if.end269
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end285

for.body276:                                      ; preds = %for.body276.for.body276_crit_edge, %if.end269.for.body276_crit_edge
  %189 = phi i8 [ %199, %for.body276.for.body276_crit_edge ], [ %188, %if.end269.for.body276_crit_edge ]
  %i.4691 = phi i32 [ %inc284, %for.body276.for.body276_crit_edge ], [ 0, %if.end269.for.body276_crit_edge ]
  %conv273 = sext i8 %189 to i32
  %arrayidx281 = getelementptr [2 x i8], ptr %158, i32 %i.4691, i32 1
  %190 = ptrtoint ptr %arrayidx281 to i32
  call void @__asan_load1_noabort(i32 %190)
  %191 = load i8, ptr %arrayidx281, align 1
  %mul.i632 = shl nsw i32 %conv273, 2
  %shl.i633 = shl i32 7, %mul.i632
  %neg.i = xor i32 %shl.i633, -1
  %192 = and i8 %191, 7
  %and.i634 = zext i8 %192 to i32
  %shl1.i = shl i32 %and.i634, %mul.i632
  %193 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %base, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %194, i32 644
  %195 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !311
  %and1.i.i = and i32 %195, %neg.i
  %or2.i.i = or i32 %and1.i.i, %shl1.i
  %196 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %196)
  %197 = load ptr, ptr %base, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %197, i32 644
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %or2.i.i) #10, !srcloc !314
  %inc284 = add i32 %i.4691, 1
  %arrayidx271 = getelementptr [2 x i8], ptr %158, i32 %inc284
  %198 = ptrtoint ptr %arrayidx271 to i32
  call void @__asan_load1_noabort(i32 %198)
  %199 = load i8, ptr %arrayidx271, align 1
  %cmp274.not = icmp eq i8 %199, -1
  br i1 %cmp274.not, label %for.body276.for.end285_crit_edge, label %for.body276.for.body276_crit_edge

for.body276.for.body276_crit_edge:                ; preds = %for.body276
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body276

for.body276.for.end285_crit_edge:                 ; preds = %for.body276
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end285

for.end285:                                       ; preds = %for.body276.for.end285_crit_edge, %if.end269.for.end285_crit_edge
  %200 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %200)
  %201 = load ptr, ptr %base, align 4
  %add.ptr.i.i635 = getelementptr i8, ptr %201, i32 832
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i635, i32 0) #10, !srcloc !314
  %202 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %202)
  %203 = load ptr, ptr %base, align 4
  %add.ptr.i.i637 = getelementptr i8, ptr %203, i32 836
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i637, i32 0) #10, !srcloc !314
  %204 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %204)
  %205 = load ptr, ptr %base, align 4
  %add.ptr.i.i639 = getelementptr i8, ptr %205, i32 896
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i639, i32 0) #10, !srcloc !314
  %info286 = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 1
  %206 = ptrtoint ptr %info286 to i32
  call void @__asan_store4_noabort(i32 %206)
  store ptr %info.0, ptr %info286, align 4
  call fastcc void @edma_dma_init(ptr noundef nonnull %call.i600)
  %207 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %207)
  %208 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %208)
  %cmp290692.not = icmp eq i32 %208, 0
  br i1 %cmp290692.not, label %for.end285.for.end306_crit_edge, label %for.end285.for.body292_crit_edge

for.end285.for.body292_crit_edge:                 ; preds = %for.end285
  br label %for.body292

for.end285.for.end306_crit_edge:                  ; preds = %for.end285
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end306

for.body292:                                      ; preds = %for.inc304.for.body292_crit_edge, %for.end285.for.body292_crit_edge
  %i.5693 = phi i32 [ %inc305, %for.inc304.for.body292_crit_edge ], [ 0, %for.end285.for.body292_crit_edge ]
  %209 = ptrtoint ptr %channels_mask to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %channels_mask, align 4
  %div3.i584 = lshr i32 %i.5693, 5
  %arrayidx.i585 = getelementptr i32, ptr %210, i32 %div3.i584
  %211 = ptrtoint ptr %arrayidx.i585 to i32
  call void @__asan_load4_noabort(i32 %211)
  %212 = load volatile i32, ptr %arrayidx.i585, align 4
  %and.i586 = and i32 %i.5693, 31
  %213 = shl nuw i32 1, %and.i586
  %214 = and i32 %212, %213
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %214)
  %tobool295.not = icmp eq i32 %214, 0
  br i1 %tobool295.not, label %for.body292.for.inc304_crit_edge, label %if.end297

for.body292.for.inc304_crit_edge:                 ; preds = %for.body292
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc304

if.end297:                                        ; preds = %for.body292
  %215 = ptrtoint ptr %slave_chans to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %slave_chans, align 4
  %217 = ptrtoint ptr %info.0 to i32
  call void @__asan_load4_noabort(i32 %217)
  %218 = load i32, ptr %info.0, align 4
  %ecc1.i = getelementptr %struct.edma_chan, ptr %216, i32 %i.5693, i32 3
  %219 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %ecc1.i, align 4
  %ch_num.i = getelementptr %struct.edma_chan, ptr %216, i32 %i.5693, i32 5
  %221 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load i32, ptr %ch_num.i, align 4
  %and2.i = shl i32 %222, 2
  %mul.i640 = and i32 %and2.i, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %218)
  %cmp.i641 = icmp eq i32 %218, -1
  br i1 %cmp.i641, label %if.then.i642, label %if.end297.if.end.i643_crit_edge

if.end297.if.end.i643_crit_edge:                  ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i643

if.then.i642:                                     ; preds = %if.end297
  call void @__sanitizer_cov_trace_pc() #12
  %default_queue.i = getelementptr inbounds %struct.edma_cc, ptr %220, i32 0, i32 11
  %223 = ptrtoint ptr %default_queue.i to i32
  call void @__asan_load4_noabort(i32 %223)
  %224 = load i32, ptr %default_queue.i, align 4
  br label %if.end.i643

if.end.i643:                                      ; preds = %if.then.i642, %if.end297.if.end.i643_crit_edge
  %eventq_no.addr.0.i = phi i32 [ %224, %if.then.i642 ], [ %218, %if.end297.if.end.i643_crit_edge ]
  %num_tc.i = getelementptr inbounds %struct.edma_cc, ptr %220, i32 0, i32 9
  %225 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load i32, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %eventq_no.addr.0.i, i32 %226)
  %cmp3.not.i = icmp ult i32 %eventq_no.addr.0.i, %226
  br i1 %cmp3.not.i, label %if.end5.i, label %if.end.i643.edma_assign_channel_eventq.exit_crit_edge

if.end.i643.edma_assign_channel_eventq.exit_crit_edge: ; preds = %if.end.i643
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_assign_channel_eventq.exit

if.end5.i:                                        ; preds = %if.end.i643
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i = and i32 %eventq_no.addr.0.i, 7
  %shl.i644 = shl nuw nsw i32 7, %mul.i640
  %neg.i645 = xor i32 %shl.i644, -1
  %shl7.i = shl nuw nsw i32 %and6.i, %mul.i640
  %227 = lshr i32 %222, 1
  %shl.i.i646 = and i32 %227, 32764
  %add.i.i647 = add nuw nsw i32 %shl.i.i646, 576
  %base.i.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %220, i32 0, i32 2
  %228 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %228)
  %229 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %229, i32 %add.i.i647
  %230 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !311
  %and1.i.i.i = and i32 %230, %neg.i645
  %or2.i.i.i = or i32 %and1.i.i.i, %shl7.i
  %231 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i8.i.i.i = getelementptr i8, ptr %232, i32 %add.i.i647
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i.i, i32 %or2.i.i.i) #10, !srcloc !314
  br label %edma_assign_channel_eventq.exit

edma_assign_channel_eventq.exit:                  ; preds = %if.end5.i, %if.end.i643.edma_assign_channel_eventq.exit_crit_edge
  %233 = ptrtoint ptr %slave_chans to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %slave_chans, align 4
  %ecc1.i649 = getelementptr %struct.edma_chan, ptr %234, i32 %i.5693, i32 3
  %235 = ptrtoint ptr %ecc1.i649 to i32
  call void @__asan_load4_noabort(i32 %235)
  %236 = load ptr, ptr %ecc1.i649, align 4
  %chmap_exist.i = getelementptr inbounds %struct.edma_cc, ptr %236, i32 0, i32 10
  %237 = ptrtoint ptr %chmap_exist.i to i32
  call void @__asan_load1_noabort(i32 %237)
  %238 = load i8, ptr %chmap_exist.i, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %238)
  %tobool.not.i650 = icmp eq i8 %238, 0
  br i1 %tobool.not.i650, label %edma_assign_channel_eventq.exit.for.inc304_crit_edge, label %if.then.i659

edma_assign_channel_eventq.exit.for.inc304_crit_edge: ; preds = %edma_assign_channel_eventq.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc304

if.then.i659:                                     ; preds = %edma_assign_channel_eventq.exit
  call void @__sanitizer_cov_trace_pc() #12
  %239 = ptrtoint ptr %dummy_slot to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load i32, ptr %dummy_slot, align 4
  %ch_num.i651 = getelementptr %struct.edma_chan, ptr %234, i32 %i.5693, i32 5
  %241 = ptrtoint ptr %ch_num.i651 to i32
  call void @__asan_load4_noabort(i32 %241)
  %242 = load i32, ptr %ch_num.i651, align 4
  %and2.i652 = shl i32 %240, 5
  %shl.i653 = and i32 %and2.i652, 2097120
  %and.i654 = shl i32 %242, 2
  %shl.i.i655 = and i32 %and.i654, 262140
  %add.i.i656 = add nuw nsw i32 %shl.i.i655, 256
  %base.i.i.i657 = getelementptr inbounds %struct.edma_cc, ptr %236, i32 0, i32 2
  %243 = ptrtoint ptr %base.i.i.i657 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %base.i.i.i657, align 4
  %add.ptr.i.i.i658 = getelementptr i8, ptr %244, i32 %add.i.i656
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i658, i32 %shl.i653) #10, !srcloc !314
  br label %for.inc304

for.inc304:                                       ; preds = %if.then.i659, %edma_assign_channel_eventq.exit.for.inc304_crit_edge, %for.body292.for.inc304_crit_edge
  %inc305 = add nuw i32 %i.5693, 1
  %245 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load i32, ptr %num_channels, align 4
  %cmp290 = icmp ult i32 %inc305, %246
  br i1 %cmp290, label %for.inc304.for.body292_crit_edge, label %for.inc304.for.end306_crit_edge

for.inc304.for.end306_crit_edge:                  ; preds = %for.inc304
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end306

for.inc304.for.body292_crit_edge:                 ; preds = %for.inc304
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body292

for.end306:                                       ; preds = %for.inc304.for.end306_crit_edge, %for.end285.for.end306_crit_edge
  %slave_map = getelementptr inbounds %struct.edma_soc_info, ptr %info.0, i32 0, i32 5
  %247 = ptrtoint ptr %slave_map to i32
  call void @__asan_load4_noabort(i32 %247)
  %248 = load ptr, ptr %slave_map, align 4
  %dma_slave = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 16
  %filter = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 16, i32 5
  %map = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 16, i32 5, i32 2
  %249 = ptrtoint ptr %map to i32
  call void @__asan_store4_noabort(i32 %249)
  store ptr %248, ptr %map, align 4
  %slavecnt = getelementptr inbounds %struct.edma_soc_info, ptr %info.0, i32 0, i32 6
  %250 = ptrtoint ptr %slavecnt to i32
  call void @__asan_load4_noabort(i32 %250)
  %251 = load i32, ptr %slavecnt, align 4
  %mapcnt = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 16, i32 5, i32 1
  %252 = ptrtoint ptr %mapcnt to i32
  call void @__asan_store4_noabort(i32 %252)
  store i32 %251, ptr %mapcnt, align 4
  %253 = ptrtoint ptr %filter to i32
  call void @__asan_store4_noabort(i32 %253)
  store ptr @edma_filter_fn, ptr %filter, align 4
  %call312 = call i32 @dma_async_device_register(ptr noundef %dma_slave) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call312)
  %tobool313.not = icmp eq i32 %call312, 0
  br i1 %tobool313.not, label %if.end318, label %do.end317

do.end317:                                        ; preds = %for.end306
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.37, i32 noundef %call312) #14
  br label %err_reg1

if.end318:                                        ; preds = %for.end306
  %dma_memcpy = getelementptr inbounds %struct.edma_cc, ptr %call.i600, i32 0, i32 17
  %254 = ptrtoint ptr %dma_memcpy to i32
  call void @__asan_load4_noabort(i32 %254)
  %255 = load ptr, ptr %dma_memcpy, align 4
  %tobool319.not = icmp eq ptr %255, null
  br i1 %tobool319.not, label %if.end318.if.end330_crit_edge, label %if.then320

if.end318.if.end330_crit_edge:                    ; preds = %if.end318
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end330

if.then320:                                       ; preds = %if.end318
  %call322 = call i32 @dma_async_device_register(ptr noundef nonnull %255) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call322)
  %tobool323.not = icmp eq i32 %call322, 0
  br i1 %tobool323.not, label %if.then320.if.end330_crit_edge, label %do.end327

if.then320.if.end330_crit_edge:                   ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end330

do.end327:                                        ; preds = %if.then320
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.40, i32 noundef %call322) #14
  call void @dma_async_device_unregister(ptr noundef %dma_slave) #10
  br label %err_reg1

if.end330:                                        ; preds = %if.then320.if.end330_crit_edge, %if.end318.if.end330_crit_edge
  br i1 %tobool.not, label %if.end330.do.end337_crit_edge, label %if.then332

if.end330.do.end337_crit_edge:                    ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.end337

if.then332:                                       ; preds = %if.end330
  call void @__sanitizer_cov_trace_pc() #12
  %call333 = call i32 @of_dma_controller_register(ptr noundef nonnull %3, ptr noundef nonnull @of_edma_xlate, ptr noundef nonnull %call.i600) #10
  br label %do.end337

do.end337:                                        ; preds = %if.then332, %if.end330.do.end337_crit_edge
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.43) #14
  br label %cleanup340

err_reg1:                                         ; preds = %do.end327, %do.end317, %cleanup264
  %ret.1 = phi i32 [ %call312, %do.end317 ], [ %call322, %do.end327 ], [ -12, %cleanup264 ]
  %256 = ptrtoint ptr %dummy_slot to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load i32, ptr %dummy_slot, align 4
  call fastcc void @edma_free_slot(ptr noundef nonnull %call.i600, i32 noundef %257)
  br label %err_disable_pm

err_disable_pm:                                   ; preds = %err_reg1, %do.end192, %do.end182, %do.end161, %lor.lhs.false.err_disable_pm_crit_edge, %devm_kcalloc.exit.err_disable_pm_crit_edge, %if.end68.err_disable_pm_crit_edge
  %ret.2 = phi i32 [ %call69, %if.end68.err_disable_pm_crit_edge ], [ %call.i620, %do.end161 ], [ %call.i626, %do.end182 ], [ %156, %do.end192 ], [ %ret.1, %err_reg1 ], [ -12, %lor.lhs.false.err_disable_pm_crit_edge ], [ -12, %devm_kcalloc.exit.err_disable_pm_crit_edge ]
  %call.i661 = call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #10
  call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #10
  br label %cleanup340

cleanup340:                                       ; preds = %err_disable_pm, %do.end337, %do.end67, %if.then58, %do.end52, %if.end19.cleanup340_crit_edge, %if.end15.cleanup340_crit_edge, %if.end12.cleanup340_crit_edge, %cleanup.thread
  %retval.2 = phi i32 [ %76, %if.then58 ], [ %call.i602, %do.end67 ], [ %ret.2, %err_disable_pm ], [ 0, %do.end337 ], [ -19, %do.end52 ], [ -19, %if.end12.cleanup340_crit_edge ], [ -12, %if.end19.cleanup340_crit_edge ], [ %68, %cleanup.thread ], [ %call.i, %if.end15.cleanup340_crit_edge ]
  ret i32 %retval.2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edma_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ccint = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 12
  %2 = ptrtoint ptr %ccint to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ccint, align 4
  tail call void @devm_free_irq(ptr noundef %dev1, i32 noundef %3, ptr noundef %1) #10
  %ccerrint = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %ccerrint to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ccerrint, align 4
  tail call void @devm_free_irq(ptr noundef %dev1, i32 noundef %5, ptr noundef %1) #10
  %dma_slave = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 16
  %channels.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 16, i32 3
  %6 = ptrtoint ptr %channels.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %channels.i, align 4
  %cmp.not26.i = icmp eq ptr %7, %channels.i
  br i1 %cmp.not26.i, label %entry.edma_cleanupp_vchan.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.edma_cleanupp_vchan.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_cleanupp_vchan.exit

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %.pn.in27.i = phi ptr [ %.pn.i, %list_del.exit.i.for.body.i_crit_edge ], [ %7, %entry.for.body.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in27.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in27.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in27.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in27.i, i32 0, i32 1
  %9 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %prev.i.i.i, align 4
  %11 = ptrtoint ptr %.pn.in27.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %.pn.in27.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %10, ptr %prev1.i.i.i.i, align 4
  %14 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %12, ptr %10, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %15 = ptrtoint ptr %.pn.in27.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in27.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in27.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %task.i = getelementptr i8, ptr %.pn.in27.i, i32 32
  tail call void @tasklet_kill(ptr noundef %task.i) #10
  %cmp.not.i = icmp eq ptr %.pn.i, %channels.i
  br i1 %cmp.not.i, label %list_del.exit.i.edma_cleanupp_vchan.exit_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body.i

list_del.exit.i.edma_cleanupp_vchan.exit_crit_edge: ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_cleanupp_vchan.exit

edma_cleanupp_vchan.exit:                         ; preds = %list_del.exit.i.edma_cleanupp_vchan.exit_crit_edge, %entry.edma_cleanupp_vchan.exit_crit_edge
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %17 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %18, null
  br i1 %tobool.not, label %edma_cleanupp_vchan.exit.if.end_crit_edge, label %if.then

edma_cleanupp_vchan.exit.if.end_crit_edge:        ; preds = %edma_cleanupp_vchan.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %edma_cleanupp_vchan.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @of_dma_controller_free(ptr noundef nonnull %18) #10
  br label %if.end

if.end:                                           ; preds = %if.then, %edma_cleanupp_vchan.exit.if.end_crit_edge
  tail call void @dma_async_device_unregister(ptr noundef %dma_slave) #10
  %dma_memcpy = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 17
  %19 = ptrtoint ptr %dma_memcpy to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %dma_memcpy, align 4
  %tobool4.not = icmp eq ptr %20, null
  br i1 %tobool4.not, label %if.end.if.end7_crit_edge, label %if.then5

if.end.if.end7_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end7

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @dma_async_device_unregister(ptr noundef nonnull %20) #10
  br label %if.end7

if.end7:                                          ; preds = %if.then5, %if.end.if.end7_crit_edge
  %dummy_slot = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 20
  %21 = ptrtoint ptr %dummy_slot to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %dummy_slot, align 4
  %and.i = and i32 %22, 65535
  %num_slots.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 8
  %23 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %24)
  %cmp.not.i25 = icmp ult i32 %and.i, %24
  br i1 %cmp.not.i25, label %edma_write_slot.exit.i, label %if.end7.edma_free_slot.exit_crit_edge

if.end7.edma_free_slot.exit_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_free_slot.exit

edma_write_slot.exit.i:                           ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %25 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i, align 4
  %shl.i.i = shl nuw nsw i32 %and.i, 5
  %add.i.i = add nuw nsw i32 %shl.i.i, 16384
  %add.ptr.i.i = getelementptr i8, ptr %26, i32 %add.i.i
  tail call void @mmiocpy(ptr noundef %add.ptr.i.i, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #10
  %slot_inuse.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 14
  %27 = ptrtoint ptr %slot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %slot_inuse.i, align 4
  tail call void @_clear_bit(i32 noundef %and.i, ptr noundef %28) #10
  br label %edma_free_slot.exit

edma_free_slot.exit:                              ; preds = %edma_write_slot.exit.i, %if.end7.edma_free_slot.exit_crit_edge
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %dev1, i32 noundef 4) #10
  tail call void @__pm_runtime_disable(ptr noundef %dev1, i1 noundef zeroext true) #10
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource_byname(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @edma_setup_from_hw(ptr noundef %dev, ptr nocapture noundef %pdata, ptr nocapture noundef %ecc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 2
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 4
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #10, !srcloc !311
  %and = lshr i32 %2, 20
  %shr = and i32 %and, 3
  %shl = shl nuw nsw i32 1, %shr
  %num_region = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 7
  %3 = ptrtoint ptr %num_region to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %shl, ptr %num_region, align 4
  %and1 = and i32 %2, 7
  %shl2 = shl nuw nsw i32 2, %and1
  %num_channels = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 5
  %4 = ptrtoint ptr %num_channels to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %shl2, ptr %num_channels, align 4
  %5 = lshr i32 %2, 3
  %mul = and i32 %5, 14
  %num_qchannels = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 6
  %6 = ptrtoint ptr %num_qchannels to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %mul, ptr %num_qchannels, align 4
  %and5 = lshr i32 %2, 12
  %shr6 = and i32 %and5, 7
  %shl8 = shl nuw nsw i32 16, %shr6
  %num_slots = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 8
  %7 = ptrtoint ptr %num_slots to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %shl8, ptr %num_slots, align 4
  %and9 = lshr i32 %2, 16
  %shr10 = and i32 %and9, 7
  %add11 = add nuw nsw i32 %shr10, 1
  %num_tc = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 9
  %8 = ptrtoint ptr %num_tc to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %add11, ptr %num_tc, align 4
  %chmap_exist = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 10
  %and12 = lshr i32 %2, 24
  %9 = trunc i32 %and12 to i8
  %10 = and i8 %9, 1
  %11 = ptrtoint ptr %chmap_exist to i32
  call void @__asan_store1_noabort(i32 %11)
  store i8 %10, ptr %chmap_exist, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_setup_from_hw.__UNIQUE_ID_ddebug266, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_setup_from_hw, %do.body20)) #10
          to label %if.then [label %do.body20], !srcloc !315

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_setup_from_hw.__UNIQUE_ID_ddebug266, ptr noundef %dev, ptr noundef nonnull @.str.51, i32 noundef %2) #10
  br label %do.body20

do.body20:                                        ; preds = %if.then, %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_setup_from_hw.__UNIQUE_ID_ddebug267, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_setup_from_hw, %do.body39)) #10
          to label %if.then34 [label %do.body39], !srcloc !315

if.then34:                                        ; preds = %do.body20
  call void @__sanitizer_cov_trace_pc() #12
  %12 = ptrtoint ptr %num_region to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_region, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_setup_from_hw.__UNIQUE_ID_ddebug267, ptr noundef %dev, ptr noundef nonnull @.str.52, i32 noundef %13) #10
  br label %do.body39

do.body39:                                        ; preds = %if.then34, %do.body20
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_setup_from_hw.__UNIQUE_ID_ddebug268, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_setup_from_hw, %do.body58)) #10
          to label %if.then53 [label %do.body58], !srcloc !315

if.then53:                                        ; preds = %do.body39
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %num_channels, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_setup_from_hw.__UNIQUE_ID_ddebug268, ptr noundef %dev, ptr noundef nonnull @.str.53, i32 noundef %15) #10
  br label %do.body58

do.body58:                                        ; preds = %if.then53, %do.body39
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_setup_from_hw.__UNIQUE_ID_ddebug269, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_setup_from_hw, %do.body77)) #10
          to label %if.then72 [label %do.body77], !srcloc !315

if.then72:                                        ; preds = %do.body58
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %num_qchannels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_qchannels, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_setup_from_hw.__UNIQUE_ID_ddebug269, ptr noundef %dev, ptr noundef nonnull @.str.54, i32 noundef %17) #10
  br label %do.body77

do.body77:                                        ; preds = %if.then72, %do.body58
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_setup_from_hw.__UNIQUE_ID_ddebug270, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_setup_from_hw, %do.body96)) #10
          to label %if.then91 [label %do.body96], !srcloc !315

if.then91:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_slots, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_setup_from_hw.__UNIQUE_ID_ddebug270, ptr noundef %dev, ptr noundef nonnull @.str.55, i32 noundef %19) #10
  br label %do.body96

do.body96:                                        ; preds = %if.then91, %do.body77
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_setup_from_hw.__UNIQUE_ID_ddebug271, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_setup_from_hw, %do.body115)) #10
          to label %if.then110 [label %do.body115], !srcloc !315

if.then110:                                       ; preds = %do.body96
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %num_tc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_tc, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_setup_from_hw.__UNIQUE_ID_ddebug271, ptr noundef %dev, ptr noundef nonnull @.str.56, i32 noundef %21) #10
  br label %do.body115

do.body115:                                       ; preds = %if.then110, %do.body96
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_setup_from_hw.__UNIQUE_ID_ddebug272, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_setup_from_hw, %do.end135)) #10
          to label %if.then129 [label %do.end135], !srcloc !315

if.then129:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #12
  %22 = ptrtoint ptr %chmap_exist to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chmap_exist, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool131.not = icmp eq i8 %23, 0
  %cond132 = select i1 %tobool131.not, ptr @.str.59, ptr @.str.58
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_setup_from_hw.__UNIQUE_ID_ddebug272, ptr noundef %dev, ptr noundef nonnull @.str.57, ptr noundef nonnull %cond132) #10
  br label %do.end135

do.end135:                                        ; preds = %if.then129, %do.body115
  %queue_priority_mapping = getelementptr inbounds %struct.edma_soc_info, ptr %pdata, i32 0, i32 3
  %24 = ptrtoint ptr %queue_priority_mapping to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %queue_priority_mapping, align 4
  %tobool136.not = icmp eq ptr %25, null
  br i1 %tobool136.not, label %devm_kcalloc.exit, label %do.end135.cleanup_crit_edge

do.end135.cleanup_crit_edge:                      ; preds = %do.end135
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %do.end135
  %26 = ptrtoint ptr %num_tc to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_tc, align 4
  %add140 = add i32 %27, 1
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %add140, i32 noundef 3520) #10
  %tobool142.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool142.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %28 = ptrtoint ptr %num_tc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_tc, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp231.not = icmp eq i32 %29, 0
  br i1 %cmp231.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0232 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %conv = trunc i32 %i.0232 to i8
  %arrayidx = getelementptr [2 x i8], ptr %call5.i.i, i32 %i.0232
  %30 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 %conv, ptr %arrayidx, align 1
  %arrayidx149 = getelementptr [2 x i8], ptr %call5.i.i, i32 %i.0232, i32 1
  %31 = ptrtoint ptr %arrayidx149 to i32
  call void @__asan_store1_noabort(i32 %31)
  store i8 %conv, ptr %arrayidx149, align 1
  %inc = add nuw i32 %i.0232, 1
  %exitcond.not = icmp eq i32 %inc, %29
  br i1 %exitcond.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %arrayidx150 = getelementptr [2 x i8], ptr %call5.i.i, i32 %29
  %32 = ptrtoint ptr %arrayidx150 to i32
  call void @__asan_store1_noabort(i32 %32)
  store i8 -1, ptr %arrayidx150, align 1
  %arrayidx153 = getelementptr [2 x i8], ptr %call5.i.i, i32 %29, i32 1
  %33 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_store1_noabort(i32 %33)
  store i8 -1, ptr %arrayidx153, align 1
  %34 = ptrtoint ptr %queue_priority_mapping to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %call5.i.i, ptr %queue_priority_mapping, align 4
  %sub = add i32 %29, -1
  %35 = ptrtoint ptr %pdata to i32
  call void @__asan_store4_noabort(i32 %35)
  store i32 %sub, ptr %pdata, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %devm_kcalloc.exit.cleanup_crit_edge, %do.end135.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.end ], [ 0, %do.end135.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq_byname(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kasprintf(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_irq_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.edma_cc, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_irq_handler.__UNIQUE_ID_ddebug258, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_irq_handler, %do.end)) #10
          to label %if.then4 [label %do.end], !srcloc !315

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_irq_handler.__UNIQUE_ID_ddebug258, ptr noundef %3, ptr noundef nonnull @.str.61) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %base.i.i = getelementptr inbounds %struct.edma_cc, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 8296
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool7.not = icmp eq i32 %6, 0
  %7 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i, align 4
  br i1 %tobool7.not, label %if.then8, label %if.else

if.then8:                                         ; preds = %do.end
  %add.ptr.i.i49 = getelementptr i8, ptr %8, i32 8300
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i49) #10, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool10.not = icmp eq i32 %9, 0
  br i1 %tobool10.not, label %if.then8.cleanup_crit_edge, label %if.end12

if.then8.cleanup_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end12:                                         ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i51 = getelementptr i8, ptr %11, i32 8276
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i51) #10, !srcloc !311
  br label %if.end15

if.else:                                          ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %add.ptr.i.i53 = getelementptr i8, ptr %8, i32 8272
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i53) #10, !srcloc !311
  br label %if.end15

if.end15:                                         ; preds = %if.else, %if.end12
  %sh_ier.0 = phi i32 [ %13, %if.else ], [ %12, %if.end12 ]
  %sh_ipr.0 = phi i32 [ %6, %if.else ], [ %9, %if.end12 ]
  %bank.0 = phi i32 [ 0, %if.else ], [ 1, %if.end12 ]
  %shl22 = shl nuw nsw i32 %bank.0, 5
  %shl.i = shl nuw nsw i32 %bank.0, 2
  %add1.i = or i32 %shl.i, 8304
  %slave_chans = getelementptr inbounds %struct.edma_cc, ptr %data, i32 0, i32 18
  br label %do.body16

do.body16:                                        ; preds = %if.end24.do.body16_crit_edge, %if.end15
  %sh_ipr.1 = phi i32 [ %sh_ipr.0, %if.end15 ], [ %and, %if.end24.do.body16_crit_edge ]
  %14 = tail call i32 @llvm.cttz.i32(i32 %sh_ipr.1, i1 false) #10, !range !317
  %shl = shl nuw i32 1, %14
  %neg = xor i32 %shl, -1
  %and = and i32 %sh_ipr.1, %neg
  %and19 = and i32 %shl, %sh_ier.0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %do.body16.if.end24_crit_edge, label %if.then21

do.body16.if.end24_crit_edge:                     ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end24

if.then21:                                        ; preds = %do.body16
  call void @__sanitizer_cov_trace_pc() #12
  %or = or i32 %14, %shl22
  %15 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i55 = getelementptr i8, ptr %16, i32 %add1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i55, i32 %shl) #10, !srcloc !314
  %17 = ptrtoint ptr %slave_chans to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %slave_chans, align 4
  %arrayidx = getelementptr %struct.edma_chan, ptr %18, i32 %or
  tail call fastcc void @edma_completion_handler(ptr noundef %arrayidx)
  br label %if.end24

if.end24:                                         ; preds = %if.then21, %do.body16.if.end24_crit_edge
  %tobool26.not = icmp eq i32 %and, 0
  br i1 %tobool26.not, label %do.end27, label %if.end24.do.body16_crit_edge

if.end24.do.body16_crit_edge:                     ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body16

do.end27:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #12
  %19 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i57 = getelementptr i8, ptr %20, i32 8312
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i57, i32 1) #10, !srcloc !314
  br label %cleanup

cleanup:                                          ; preds = %do.end27, %if.then8.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 1, %do.end27 ], [ 0, %entry.cleanup_crit_edge ], [ 0, %if.then8.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @dma_ccerr_handler(i32 noundef %irq, ptr nocapture noundef readonly %data) #0 align 64 {
entry:
  %emr = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %id = getelementptr inbounds %struct.edma_cc, ptr %data, i32 0, i32 3
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp slt i32 %1, 0
  br i1 %cmp, label %entry.cleanup85_crit_edge, label %do.body

entry.cleanup85_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup85

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_ccerr_handler.__UNIQUE_ID_ddebug261, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_ccerr_handler, %do.end)) #10
          to label %if.then4 [label %do.end], !srcloc !315

if.then4:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_ccerr_handler.__UNIQUE_ID_ddebug261, ptr noundef %3, ptr noundef nonnull @.str.84) #10
  br label %do.end

do.end:                                           ; preds = %if.then4, %do.body
  %base.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %data, i32 0, i32 2
  %4 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %5, i32 768
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool.not.i = icmp eq i32 %6, 0
  br i1 %tobool.not.i, label %lor.lhs.false.i, label %do.end.while.cond.preheader_crit_edge

do.end.while.cond.preheader_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

lor.lhs.false.i:                                  ; preds = %do.end
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i13.i = getelementptr i8, ptr %8, i32 772
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13.i) #10, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool2.not.i = icmp eq i32 %9, 0
  br i1 %tobool2.not.i, label %lor.lhs.false3.i, label %lor.lhs.false.i.while.cond.preheader_crit_edge

lor.lhs.false.i.while.cond.preheader_crit_edge:   ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

lor.lhs.false3.i:                                 ; preds = %lor.lhs.false.i
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 784
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool5.not.i = icmp eq i32 %12, 0
  br i1 %tobool5.not.i, label %lor.lhs.false6.i, label %lor.lhs.false3.i.while.cond.preheader_crit_edge

lor.lhs.false3.i.while.cond.preheader_crit_edge:  ; preds = %lor.lhs.false3.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

lor.lhs.false6.i:                                 ; preds = %lor.lhs.false3.i
  %13 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i15.i = getelementptr i8, ptr %14, i32 792
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i) #10, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool8.not.i.not = icmp eq i32 %15, 0
  br i1 %tobool8.not.i.not, label %do.end10, label %lor.lhs.false6.i.while.cond.preheader_crit_edge

lor.lhs.false6.i.while.cond.preheader_crit_edge:  ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond.preheader

while.cond.preheader:                             ; preds = %lor.lhs.false6.i.while.cond.preheader_crit_edge, %lor.lhs.false3.i.while.cond.preheader_crit_edge, %lor.lhs.false.i.while.cond.preheader_crit_edge, %do.end.while.cond.preheader_crit_edge
  %slave_chans = getelementptr inbounds %struct.edma_cc, ptr %data, i32 0, i32 18
  br label %while.cond

do.end10:                                         ; preds = %lor.lhs.false6.i
  call void @__sanitizer_cov_trace_pc() #12
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.85, ptr noundef nonnull @.str.83) #14
  %18 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %19, i32 800
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 1) #10, !srcloc !314
  br label %cleanup85

while.cond:                                       ; preds = %edma_error_pending.exit167.while.cond_crit_edge, %while.cond.preheader
  %cnt.0 = phi i32 [ %inc81, %edma_error_pending.exit167.while.cond_crit_edge ], [ 0, %while.cond.preheader ]
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %while.cond
  %j.0175 = phi i32 [ 0, %while.cond ], [ %inc, %cleanup.for.body_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %emr) #10
  %20 = ptrtoint ptr %emr to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 -1, ptr %emr, align 4, !annotation !309
  %shl.i = shl i32 %j.0175, 2
  %add.i = add nuw nsw i32 %shl.i, 768
  %21 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i136 = getelementptr i8, ptr %22, i32 %add.i
  %23 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i136) #10, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool15.not = icmp eq i32 %23, 0
  br i1 %tobool15.not, label %for.body.cleanup_crit_edge, label %do.body18

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.body18:                                        ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_ccerr_handler.__UNIQUE_ID_ddebug262, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_ccerr_handler, %do.end36)) #10
          to label %if.then32 [label %do.end36], !srcloc !315

if.then32:                                        ; preds = %do.body18
  call void @__sanitizer_cov_trace_pc() #12
  %24 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_ccerr_handler.__UNIQUE_ID_ddebug262, ptr noundef %25, ptr noundef nonnull @.str.86, i32 noundef %j.0175, i32 noundef %23) #10
  br label %do.end36

do.end36:                                         ; preds = %if.then32, %do.body18
  %26 = ptrtoint ptr %emr to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %23, ptr %emr, align 4
  %call37 = call i32 @_find_next_bit_be(ptr noundef nonnull %emr, i32 noundef 32, i32 noundef 0) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 32, i32 %call37)
  %cmp39173 = icmp slt i32 %call37, 32
  br i1 %cmp39173, label %for.body40.lr.ph, label %do.end36.cleanup_crit_edge

do.end36.cleanup_crit_edge:                       ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body40.lr.ph:                                 ; preds = %do.end36
  %shl = shl i32 %j.0175, 5
  %add.i138 = add nuw nsw i32 %shl.i, 776
  %add1.i = add nuw nsw i32 %shl.i, 8256
  br label %for.body40

for.body40:                                       ; preds = %for.body40.for.body40_crit_edge, %for.body40.lr.ph
  %i.0174 = phi i32 [ %call37, %for.body40.lr.ph ], [ %call44, %for.body40.for.body40_crit_edge ]
  %add = add i32 %i.0174, %shl
  %shl41 = shl nuw i32 1, %i.0174
  %27 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i140 = getelementptr i8, ptr %28, i32 %add.i138
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i140, i32 %shl41) #10, !srcloc !314
  %29 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i143 = getelementptr i8, ptr %30, i32 %add1.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i143, i32 %shl41) #10, !srcloc !314
  %31 = ptrtoint ptr %slave_chans to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %slave_chans, align 4
  %arrayidx = getelementptr %struct.edma_chan, ptr %32, i32 %add
  call fastcc void @edma_error_handler(ptr noundef %arrayidx)
  %add43 = add nsw i32 %i.0174, 1
  %call44 = call i32 @_find_next_bit_be(ptr noundef nonnull %emr, i32 noundef 32, i32 noundef %add43) #10
  %cmp39 = icmp slt i32 %call44, 32
  br i1 %cmp39, label %for.body40.for.body40_crit_edge, label %for.body40.cleanup_crit_edge

for.body40.cleanup_crit_edge:                     ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body40.for.body40_crit_edge:                  ; preds = %for.body40
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body40

cleanup:                                          ; preds = %for.body40.cleanup_crit_edge, %do.end36.cleanup_crit_edge, %for.body.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %emr) #10
  %inc = add nuw nsw i32 %j.0175, 1
  %exitcond.not = icmp eq i32 %inc, 2
  br i1 %exitcond.not, label %for.end46, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end46:                                        ; preds = %cleanup
  %33 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i145 = getelementptr i8, ptr %34, i32 784
  %35 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i145) #10, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %tobool48.not = icmp eq i32 %35, 0
  br i1 %tobool48.not, label %for.end46.if.end69_crit_edge, label %do.body50

for.end46.if.end69_crit_edge:                     ; preds = %for.end46
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

do.body50:                                        ; preds = %for.end46
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @dma_ccerr_handler.__UNIQUE_ID_ddebug263, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@dma_ccerr_handler, %do.end68)) #10
          to label %if.then64 [label %do.end68], !srcloc !315

if.then64:                                        ; preds = %do.body50
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @dma_ccerr_handler.__UNIQUE_ID_ddebug263, ptr noundef %37, ptr noundef nonnull @.str.87, i32 noundef %35) #10
  br label %do.end68

do.end68:                                         ; preds = %if.then64, %do.body50
  %38 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i147 = getelementptr i8, ptr %39, i32 788
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i147, i32 %35) #10, !srcloc !314
  %40 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i149 = getelementptr i8, ptr %41, i32 8340
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i149, i32 %35) #10, !srcloc !314
  br label %if.end69

if.end69:                                         ; preds = %do.end68, %for.end46.if.end69_crit_edge
  %42 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i151 = getelementptr i8, ptr %43, i32 792
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #10, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %44)
  %tobool71.not = icmp eq i32 %44, 0
  br i1 %tobool71.not, label %if.end69.if.end77_crit_edge, label %do.end75

if.end69.if.end77_crit_edge:                      ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end77

do.end75:                                         ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %45 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %data, align 4
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %46, ptr noundef nonnull @.str.89, i32 noundef %44) #14
  %47 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i153 = getelementptr i8, ptr %48, i32 796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i153, i32 %44) #10, !srcloc !314
  br label %if.end77

if.end77:                                         ; preds = %do.end75, %if.end69.if.end77_crit_edge
  %49 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i155 = getelementptr i8, ptr %50, i32 768
  %51 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i155) #10, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool.not.i156 = icmp eq i32 %51, 0
  br i1 %tobool.not.i156, label %lor.lhs.false.i159, label %if.end77.edma_error_pending.exit167_crit_edge

if.end77.edma_error_pending.exit167_crit_edge:    ; preds = %if.end77
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_error_pending.exit167

lor.lhs.false.i159:                               ; preds = %if.end77
  %52 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i13.i157 = getelementptr i8, ptr %53, i32 772
  %54 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i13.i157) #10, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %54)
  %tobool2.not.i158 = icmp eq i32 %54, 0
  br i1 %tobool2.not.i158, label %lor.lhs.false3.i162, label %lor.lhs.false.i159.edma_error_pending.exit167_crit_edge

lor.lhs.false.i159.edma_error_pending.exit167_crit_edge: ; preds = %lor.lhs.false.i159
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_error_pending.exit167

lor.lhs.false3.i162:                              ; preds = %lor.lhs.false.i159
  %55 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i160 = getelementptr i8, ptr %56, i32 784
  %57 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i160) #10, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %57)
  %tobool5.not.i161 = icmp eq i32 %57, 0
  br i1 %tobool5.not.i161, label %lor.lhs.false6.i165, label %lor.lhs.false3.i162.edma_error_pending.exit167_crit_edge

lor.lhs.false3.i162.edma_error_pending.exit167_crit_edge: ; preds = %lor.lhs.false3.i162
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_error_pending.exit167

lor.lhs.false6.i165:                              ; preds = %lor.lhs.false3.i162
  call void @__sanitizer_cov_trace_pc() #12
  %58 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i15.i163 = getelementptr i8, ptr %59, i32 792
  %60 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i15.i163) #10, !srcloc !311
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %tobool8.not.i164 = icmp ne i32 %60, 0
  br label %edma_error_pending.exit167

edma_error_pending.exit167:                       ; preds = %lor.lhs.false6.i165, %lor.lhs.false3.i162.edma_error_pending.exit167_crit_edge, %lor.lhs.false.i159.edma_error_pending.exit167_crit_edge, %if.end77.edma_error_pending.exit167_crit_edge
  %retval.0.i166 = phi i1 [ true, %lor.lhs.false3.i162.edma_error_pending.exit167_crit_edge ], [ true, %lor.lhs.false.i159.edma_error_pending.exit167_crit_edge ], [ true, %if.end77.edma_error_pending.exit167_crit_edge ], [ %tobool8.not.i164, %lor.lhs.false6.i165 ]
  %call78.not = xor i1 %retval.0.i166, true
  %inc81 = add nuw nsw i32 %cnt.0, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 9, i32 %cnt.0)
  %cmp82 = icmp ugt i32 %cnt.0, 9
  %or.cond = select i1 %call78.not, i1 true, i1 %cmp82
  br i1 %or.cond, label %while.end, label %edma_error_pending.exit167.while.cond_crit_edge

edma_error_pending.exit167.while.cond_crit_edge:  ; preds = %edma_error_pending.exit167
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.cond

while.end:                                        ; preds = %edma_error_pending.exit167
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i169 = getelementptr i8, ptr %62, i32 800
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i169, i32 1) #10, !srcloc !314
  br label %cleanup85

cleanup85:                                        ; preds = %while.end, %do.end10, %entry.cleanup85_crit_edge
  %retval.0 = phi i32 [ 1, %while.end ], [ 0, %do.end10 ], [ 0, %entry.cleanup85_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @edma_alloc_slot(ptr nocapture noundef readonly %ecc, i32 noundef %slot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %slot)
  %cmp = icmp sgt i32 %slot, -1
  br i1 %cmp, label %if.then, label %entry.if.then5_crit_edge

entry.if.then5_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then:                                          ; preds = %entry
  %and = and i32 %slot, 65535
  %chmap_exist = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 10
  %0 = ptrtoint ptr %chmap_exist to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %chmap_exist, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.then.if.else20_crit_edge, label %land.lhs.true

if.then.if.else20_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else20

land.lhs.true:                                    ; preds = %if.then
  %num_channels = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 5
  %2 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %3)
  %cmp1 = icmp ult i32 %and, %3
  br i1 %cmp1, label %land.lhs.true.if.then5_crit_edge, label %land.lhs.true.if.else20_crit_edge

land.lhs.true.if.else20_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else20

land.lhs.true.if.then5_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then5

if.then5:                                         ; preds = %land.lhs.true.if.then5_crit_edge, %entry.if.then5_crit_edge
  %chmap_exist6 = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 10
  %4 = ptrtoint ptr %chmap_exist6 to i32
  call void @__asan_load1_noabort(i32 %4)
  %5 = load i8, ptr %chmap_exist6, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %5)
  %tobool7.not = icmp eq i8 %5, 0
  br i1 %tobool7.not, label %if.else, label %if.then5.if.end10_crit_edge

if.then5.if.end10_crit_edge:                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10

if.else:                                          ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %num_channels9 = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 5
  %6 = ptrtoint ptr %num_channels9 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_channels9, align 4
  br label %if.end10

if.end10:                                         ; preds = %if.else, %if.then5.if.end10_crit_edge
  %slot.addr.1 = phi i32 [ %7, %if.else ], [ 0, %if.then5.if.end10_crit_edge ]
  %slot_inuse = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 14
  %num_slots = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 8
  br label %for.cond

for.cond:                                         ; preds = %if.end14.for.cond_crit_edge, %if.end10
  %slot.addr.2 = phi i32 [ %slot.addr.1, %if.end10 ], [ %call, %if.end14.for.cond_crit_edge ]
  %8 = ptrtoint ptr %slot_inuse to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %slot_inuse, align 4
  %10 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_slots, align 4
  %call = tail call i32 @_find_next_zero_bit_be(ptr noundef %9, i32 noundef %11, i32 noundef %slot.addr.2) #10
  %12 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call, i32 %13)
  %cmp12 = icmp eq i32 %call, %13
  br i1 %cmp12, label %for.cond.return_crit_edge, label %if.end14

for.cond.return_crit_edge:                        ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.end14:                                         ; preds = %for.cond
  %14 = ptrtoint ptr %slot_inuse to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %slot_inuse, align 4
  %call16 = tail call i32 @_test_and_set_bit(i32 noundef %call, ptr noundef %15) #10
  %tobool17.not = icmp eq i32 %call16, 0
  br i1 %tobool17.not, label %if.end14.if.end31_crit_edge, label %if.end14.for.cond_crit_edge

if.end14.for.cond_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond

if.end14.if.end31_crit_edge:                      ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.else20:                                        ; preds = %land.lhs.true.if.else20_crit_edge, %if.then.if.else20_crit_edge
  %num_slots21 = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 8
  %16 = ptrtoint ptr %num_slots21 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_slots21, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %17)
  %cmp22.not = icmp ult i32 %and, %17
  br i1 %cmp22.not, label %if.else24, label %if.else20.return_crit_edge

if.else20.return_crit_edge:                       ; preds = %if.else20
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.else24:                                        ; preds = %if.else20
  %slot_inuse25 = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 14
  %18 = ptrtoint ptr %slot_inuse25 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %slot_inuse25, align 4
  %call26 = tail call i32 @_test_and_set_bit(i32 noundef %and, ptr noundef %19) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %if.else24.if.end31_crit_edge, label %if.else24.return_crit_edge

if.else24.return_crit_edge:                       ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

if.else24.if.end31_crit_edge:                     ; preds = %if.else24
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end31

if.end31:                                         ; preds = %if.else24.if.end31_crit_edge, %if.end14.if.end31_crit_edge
  %slot.addr.3 = phi i32 [ %and, %if.else24.if.end31_crit_edge ], [ %call, %if.end14.if.end31_crit_edge ]
  %and.i = and i32 %slot.addr.3, 65535
  %num_slots.i = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 8
  %20 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %21)
  %cmp.not.i = icmp ult i32 %and.i, %21
  br i1 %cmp.not.i, label %if.end.i, label %if.end31.edma_write_slot.exit_crit_edge

if.end31.edma_write_slot.exit_crit_edge:          ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_write_slot.exit

if.end.i:                                         ; preds = %if.end31
  call void @__sanitizer_cov_trace_pc() #12
  %base.i = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 2
  %22 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i, align 4
  %shl.i = shl nuw nsw i32 %and.i, 5
  %add.i = add nuw nsw i32 %shl.i, 16384
  %add.ptr.i = getelementptr i8, ptr %23, i32 %add.i
  tail call void @mmiocpy(ptr noundef %add.ptr.i, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #10
  br label %edma_write_slot.exit

edma_write_slot.exit:                             ; preds = %if.end.i, %if.end31.edma_write_slot.exit_crit_edge
  %id = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 3
  %24 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %id, align 4
  %shl = shl i32 %25, 16
  %or = or i32 %shl, %slot.addr.3
  br label %return

return:                                           ; preds = %edma_write_slot.exit, %if.else24.return_crit_edge, %if.else20.return_crit_edge, %for.cond.return_crit_edge
  %retval.0 = phi i32 [ %or, %edma_write_slot.exit ], [ -22, %if.else20.return_crit_edge ], [ -16, %if.else24.return_crit_edge ], [ -12, %for.cond.return_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @edma_dma_init(ptr noundef %ecc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_slave = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16
  %info = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 1
  %0 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %info, align 4
  %memcpy_channels1 = getelementptr inbounds %struct.edma_soc_info, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %memcpy_channels1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %memcpy_channels1, align 4
  %cap_mask = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 6
  %4 = ptrtoint ptr %cap_mask to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %cap_mask, align 4
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #10
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #10
  %legacy_mode4 = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 4
  %5 = ptrtoint ptr %legacy_mode4 to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %legacy_mode4, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp ne i8 %6, 0
  %tobool5.not = icmp eq ptr %3, null
  %or.cond = select i1 %tobool.not, i1 %tobool5.not, i1 false
  br i1 %or.cond, label %do.end, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %ecc, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %8, ptr noundef nonnull @.str.94) #14
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #10
  tail call void @_set_bit(i32 noundef 13, ptr noundef %cap_mask) #10
  %device_prep_dma_memcpy = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 30
  %9 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @edma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_interleaved_dma = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 41
  %10 = ptrtoint ptr %device_prep_interleaved_dma to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @edma_prep_dma_interleaved, ptr %device_prep_interleaved_dma, align 4
  %directions = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 21
  %11 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 1, ptr %directions, align 4
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  %device_prep_slave_sg = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 39
  %12 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @edma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 40
  %13 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @edma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 27
  %14 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @edma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 29
  %15 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @edma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_issue_pending = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 50
  %16 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @edma_issue_pending, ptr %device_issue_pending, align 4
  %device_tx_status = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 49
  %17 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr @edma_tx_status, ptr %device_tx_status, align 4
  %device_config = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 44
  %18 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr @edma_slave_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 45
  %19 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr @edma_dma_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 46
  %20 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @edma_dma_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 47
  %21 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @edma_terminate_all, ptr %device_terminate_all, align 4
  %device_synchronize = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 48
  %22 = ptrtoint ptr %device_synchronize to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @edma_synchronize, ptr %device_synchronize, align 4
  %src_addr_widths = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 19
  %23 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 30, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 20
  %24 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 30, ptr %dst_addr_widths, align 4
  %directions8 = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 21
  %25 = ptrtoint ptr %directions8 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %directions8, align 4
  %or = or i32 %26, 6
  store i32 %or, ptr %directions8, align 4
  %residue_granularity = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 26
  %27 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 2, ptr %residue_granularity, align 4
  %max_burst = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 23
  %28 = ptrtoint ptr %max_burst to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 32767, ptr %max_burst, align 4
  %29 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %ecc, align 4
  %dev10 = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 15
  %31 = ptrtoint ptr %dev10 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %30, ptr %dev10, align 4
  %channels = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 3
  %32 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 16, i32 3, i32 1
  %33 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %channels, ptr %prev.i, align 4
  br i1 %tobool5.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %30, i32 noundef 364, i32 noundef 3520) #10
  %tobool14.not = icmp eq ptr %call.i, null
  br i1 %tobool14.not, label %do.end18, label %if.end20

do.end18:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %34 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ecc, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %35, ptr noundef nonnull @.str.97) #14
  br label %ch_setup

if.end20:                                         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #12
  %dma_memcpy = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 17
  %36 = ptrtoint ptr %dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call.i, ptr %dma_memcpy, align 4
  %cap_mask21 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  %37 = ptrtoint ptr %cap_mask21 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 0, ptr %cap_mask21, align 4
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask21) #10
  tail call void @_set_bit(i32 noundef 13, ptr noundef %cap_mask21) #10
  %device_prep_dma_memcpy24 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %38 = ptrtoint ptr %device_prep_dma_memcpy24 to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr @edma_prep_dma_memcpy, ptr %device_prep_dma_memcpy24, align 4
  %device_prep_interleaved_dma25 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 41
  %39 = ptrtoint ptr %device_prep_interleaved_dma25 to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @edma_prep_dma_interleaved, ptr %device_prep_interleaved_dma25, align 4
  %device_alloc_chan_resources26 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %40 = ptrtoint ptr %device_alloc_chan_resources26 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @edma_alloc_chan_resources, ptr %device_alloc_chan_resources26, align 4
  %device_free_chan_resources27 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %41 = ptrtoint ptr %device_free_chan_resources27 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @edma_free_chan_resources, ptr %device_free_chan_resources27, align 4
  %device_issue_pending28 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %42 = ptrtoint ptr %device_issue_pending28 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @edma_issue_pending, ptr %device_issue_pending28, align 4
  %device_tx_status29 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %43 = ptrtoint ptr %device_tx_status29 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr @edma_tx_status, ptr %device_tx_status29, align 4
  %device_config30 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %44 = ptrtoint ptr %device_config30 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr @edma_slave_config, ptr %device_config30, align 4
  %device_pause31 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 45
  %45 = ptrtoint ptr %device_pause31 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr @edma_dma_pause, ptr %device_pause31, align 4
  %device_resume32 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 46
  %46 = ptrtoint ptr %device_resume32 to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr @edma_dma_resume, ptr %device_resume32, align 4
  %device_terminate_all33 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %47 = ptrtoint ptr %device_terminate_all33 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr @edma_terminate_all, ptr %device_terminate_all33, align 4
  %device_synchronize34 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 48
  %48 = ptrtoint ptr %device_synchronize34 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @edma_synchronize, ptr %device_synchronize34, align 4
  %src_addr_widths35 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %49 = ptrtoint ptr %src_addr_widths35 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 30, ptr %src_addr_widths35, align 4
  %dst_addr_widths36 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %50 = ptrtoint ptr %dst_addr_widths36 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 30, ptr %dst_addr_widths36, align 4
  %directions37 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %51 = ptrtoint ptr %directions37 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %directions37, align 4
  %residue_granularity38 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %52 = ptrtoint ptr %residue_granularity38 to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %residue_granularity38, align 4
  %53 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %ecc, align 4
  %dev40 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %55 = ptrtoint ptr %dev40 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %54, ptr %dev40, align 4
  %channels41 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %56 = ptrtoint ptr %channels41 to i32
  call void @__asan_store4_noabort(i32 %56)
  store volatile ptr %channels41, ptr %channels41, align 4
  %prev.i1 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %57 = ptrtoint ptr %prev.i1 to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %channels41, ptr %prev.i1, align 4
  br label %ch_setup

if.else:                                          ; preds = %if.end
  %58 = ptrtoint ptr %legacy_mode4 to i32
  call void @__asan_load1_noabort(i32 %58)
  %59 = load i8, ptr %legacy_mode4, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %59)
  %tobool43.not = icmp eq i8 %59, 0
  br i1 %tobool43.not, label %do.end47, label %if.else.ch_setup_crit_edge

if.else.ch_setup_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %ch_setup

do.end47:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %30, ptr noundef nonnull @.str.100) #14
  br label %ch_setup

ch_setup:                                         ; preds = %do.end47, %if.else.ch_setup_crit_edge, %if.end20, %do.end18
  %m_ddev.0 = phi ptr [ %call.i, %if.end20 ], [ null, %do.end18 ], [ null, %if.else.ch_setup_crit_edge ], [ null, %do.end47 ]
  %memcpy_channels.0 = phi ptr [ %3, %if.end20 ], [ null, %do.end18 ], [ null, %if.else.ch_setup_crit_edge ], [ null, %do.end47 ]
  %num_channels = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 5
  %60 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %61)
  %cmp6.not = icmp eq i32 %61, 0
  br i1 %cmp6.not, label %ch_setup.for.end67_crit_edge, label %for.body.lr.ph

ch_setup.for.end67_crit_edge:                     ; preds = %ch_setup
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end67

for.body.lr.ph:                                   ; preds = %ch_setup
  %slave_chans = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 18
  %id = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 3
  %tobool53.not = icmp eq ptr %m_ddev.0, null
  %tobool.not.i = icmp eq ptr %memcpy_channels.0, null
  %or.cond4 = select i1 %tobool53.not, i1 true, i1 %tobool.not.i
  br label %for.body

for.body:                                         ; preds = %if.end60.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc66, %if.end60.for.body_crit_edge ]
  %62 = mul i32 %i.07, 340
  %63 = add i32 %62, 208
  %64 = ptrtoint ptr %slave_chans to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %slave_chans, align 4
  %arrayidx = getelementptr %struct.edma_chan, ptr %65, i32 %i.07
  %66 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %id, align 4
  %shl = shl i32 %67, 16
  %or51 = or i32 %shl, %i.07
  %ch_num = getelementptr %struct.edma_chan, ptr %65, i32 %i.07, i32 5
  %68 = ptrtoint ptr %ch_num to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %or51, ptr %ch_num, align 4
  %ecc52 = getelementptr %struct.edma_chan, ptr %65, i32 %i.07, i32 3
  %69 = ptrtoint ptr %ecc52 to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %ecc, ptr %ecc52, align 4
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 2
  %70 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %70)
  store ptr @edma_desc_free, ptr %desc_free, align 4
  br i1 %or.cond4, label %for.body.if.else58_crit_edge, label %while.cond.preheader.i

for.body.if.else58_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else58

while.cond.preheader.i:                           ; preds = %for.body
  %71 = ptrtoint ptr %memcpy_channels.0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %memcpy_channels.0, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %72)
  %cmp.not7.i = icmp eq i32 %72, -1
  br i1 %cmp.not7.i, label %while.cond.preheader.i.if.else58_crit_edge, label %while.cond.preheader.i.while.body.i_crit_edge

while.cond.preheader.i.while.body.i_crit_edge:    ; preds = %while.cond.preheader.i
  br label %while.body.i

while.cond.preheader.i.if.else58_crit_edge:       ; preds = %while.cond.preheader.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else58

while.cond.i:                                     ; preds = %while.body.i
  %incdec.ptr.i = getelementptr i32, ptr %memcpy_channels.addr.08.i, i32 1
  %73 = ptrtoint ptr %incdec.ptr.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load i32, ptr %incdec.ptr.i, align 4
  %cmp.not.i = icmp eq i32 %74, -1
  br i1 %cmp.not.i, label %while.cond.i.if.else58_crit_edge, label %while.cond.i.while.body.i_crit_edge

while.cond.i.while.body.i_crit_edge:              ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body.i

while.cond.i.if.else58_crit_edge:                 ; preds = %while.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else58

while.body.i:                                     ; preds = %while.cond.i.while.body.i_crit_edge, %while.cond.preheader.i.while.body.i_crit_edge
  %75 = phi i32 [ %74, %while.cond.i.while.body.i_crit_edge ], [ %72, %while.cond.preheader.i.while.body.i_crit_edge ]
  %memcpy_channels.addr.08.i = phi ptr [ %incdec.ptr.i, %while.cond.i.while.body.i_crit_edge ], [ %memcpy_channels.0, %while.cond.preheader.i.while.body.i_crit_edge ]
  call void @__sanitizer_cov_trace_cmp4(i32 %75, i32 %i.07)
  %cmp1.i = icmp eq i32 %75, %i.07
  br i1 %cmp1.i, label %if.then56, label %while.cond.i

if.then56:                                        ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @vchan_init(ptr noundef %arrayidx, ptr noundef nonnull %m_ddev.0) #10
  br label %if.end60

if.else58:                                        ; preds = %while.cond.i.if.else58_crit_edge, %while.cond.preheader.i.if.else58_crit_edge, %for.body.if.else58_crit_edge
  tail call void @vchan_init(ptr noundef %arrayidx, ptr noundef %dma_slave) #10
  br label %if.end60

if.end60:                                         ; preds = %if.else58, %if.then56
  %node = getelementptr %struct.edma_chan, ptr %65, i32 %i.07, i32 1
  %76 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %76)
  store volatile ptr %node, ptr %node, align 4
  %prev.i2 = getelementptr %struct.edma_chan, ptr %65, i32 %i.07, i32 1, i32 1
  %77 = ptrtoint ptr %prev.i2 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %node, ptr %prev.i2, align 4
  %uglygep = getelementptr i8, ptr %65, i32 %63
  %78 = call ptr @memset(ptr %uglygep, i32 255, i32 80)
  %inc66 = add nuw i32 %i.07, 1
  %79 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc66, %80
  br i1 %cmp, label %if.end60.for.body_crit_edge, label %if.end60.for.end67_crit_edge

if.end60.for.end67_crit_edge:                     ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end67

if.end60.for.body_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end67:                                        ; preds = %if.end60.for.end67_crit_edge, %ch_setup.for.end67_crit_edge
  ret void
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal zeroext i1 @edma_filter_fn(ptr nocapture noundef %chan, ptr nocapture noundef readonly %param) #5 align 64 {
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
  %cmp = icmp eq ptr %5, getelementptr inbounds (%struct.platform_driver, ptr @edma_driver, i32 0, i32 5)
  br i1 %cmp, label %if.then, label %entry.if.end3_crit_edge

entry.if.end3_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then:                                          ; preds = %entry
  %6 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %param, align 4
  %ch_num = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 5
  %8 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp1 = icmp eq i32 %7, %9
  br i1 %cmp1, label %if.then2, label %if.then.if.end3_crit_edge

if.then.if.end3_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end3

if.then2:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %hw_triggered = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 7
  %10 = ptrtoint ptr %hw_triggered to i32
  call void @__asan_store1_noabort(i32 %10)
  store i8 1, ptr %hw_triggered, align 1
  br label %if.end3

if.end3:                                          ; preds = %if.then2, %if.then.if.end3_crit_edge, %entry.if.end3_crit_edge
  %match.1.off0 = phi i1 [ false, %entry.if.end3_crit_edge ], [ true, %if.then2 ], [ false, %if.then.if.end3_crit_edge ]
  ret i1 %match.1.off0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @of_edma_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp = icmp slt i32 %3, 1
  br i1 %cmp, label %lor.lhs.false.cleanup_crit_edge, label %for.cond.preheader

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.cond.preheader:                               ; preds = %lor.lhs.false
  %num_channels = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp160.not = icmp eq i32 %5, 0
  br i1 %cmp160.not, label %for.cond.preheader.cleanup_crit_edge, label %for.body.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %slave_chans = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 18
  %6 = ptrtoint ptr %slave_chans to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %slave_chans, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %8 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %args, align 4
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.061 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ch_num = getelementptr %struct.edma_chan, ptr %7, i32 %i.061, i32 5
  %10 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch_num, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %9)
  %cmp3 = icmp eq i32 %11, %9
  br i1 %cmp3, label %for.end, label %for.inc

for.inc:                                          ; preds = %for.body
  %inc = add nuw i32 %i.061, 1
  %exitcond.not = icmp eq i32 %inc, %5
  br i1 %exitcond.not, label %for.inc.cleanup_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

for.end:                                          ; preds = %for.body
  %arrayidx.le = getelementptr %struct.edma_chan, ptr %7, i32 %i.061
  %tobool7.not = icmp eq ptr %arrayidx.le, null
  br i1 %tobool7.not, label %for.end.cleanup_crit_edge, label %if.end9

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end9:                                          ; preds = %for.end
  %ecc10 = getelementptr %struct.edma_chan, ptr %7, i32 %i.061, i32 3
  %12 = ptrtoint ptr %ecc10 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %ecc10, align 4
  %legacy_mode = getelementptr inbounds %struct.edma_cc, ptr %13, i32 0, i32 4
  %14 = ptrtoint ptr %legacy_mode to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %legacy_mode, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool11.not = icmp eq i8 %15, 0
  br i1 %tobool11.not, label %land.lhs.true19, label %land.lhs.true

land.lhs.true:                                    ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp13 = icmp eq i32 %3, 1
  br i1 %cmp13, label %land.lhs.true.out_crit_edge, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true.out_crit_edge:                      ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %out

land.lhs.true19:                                  ; preds = %if.end9
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %3)
  %cmp21 = icmp eq i32 %3, 2
  br i1 %cmp21, label %land.lhs.true22, label %land.lhs.true19.cleanup_crit_edge

land.lhs.true19.cleanup_crit_edge:                ; preds = %land.lhs.true19
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

land.lhs.true22:                                  ; preds = %land.lhs.true19
  %arrayidx24 = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 1
  %16 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %arrayidx24, align 4
  %num_tc = getelementptr inbounds %struct.edma_cc, ptr %13, i32 0, i32 9
  %18 = ptrtoint ptr %num_tc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_tc, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp26 = icmp ult i32 %17, %19
  br i1 %cmp26, label %if.then27, label %land.lhs.true22.cleanup_crit_edge

land.lhs.true22.cleanup_crit_edge:                ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then27:                                        ; preds = %land.lhs.true22
  call void @__sanitizer_cov_trace_pc() #12
  %tc_list = getelementptr inbounds %struct.edma_cc, ptr %13, i32 0, i32 19
  %20 = ptrtoint ptr %tc_list to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tc_list, align 4
  %arrayidx31 = getelementptr %struct.edma_tc, ptr %21, i32 %17
  %tc = getelementptr %struct.edma_chan, ptr %7, i32 %i.061, i32 4
  %22 = ptrtoint ptr %tc to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %arrayidx31, ptr %tc, align 4
  br label %out

out:                                              ; preds = %if.then27, %land.lhs.true.out_crit_edge
  %hw_triggered = getelementptr %struct.edma_chan, ptr %7, i32 %i.061, i32 7
  %23 = ptrtoint ptr %hw_triggered to i32
  call void @__asan_store1_noabort(i32 %23)
  store i8 1, ptr %hw_triggered, align 1
  %call = tail call ptr @dma_get_slave_channel(ptr noundef nonnull %arrayidx.le) #10
  br label %cleanup

cleanup:                                          ; preds = %out, %land.lhs.true22.cleanup_crit_edge, %land.lhs.true19.cleanup_crit_edge, %land.lhs.true.cleanup_crit_edge, %for.end.cleanup_crit_edge, %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %out ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ], [ null, %for.end.cleanup_crit_edge ], [ null, %land.lhs.true22.cleanup_crit_edge ], [ null, %land.lhs.true19.cleanup_crit_edge ], [ null, %land.lhs.true.cleanup_crit_edge ], [ null, %for.cond.preheader.cleanup_crit_edge ], [ null, %for.inc.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @edma_free_slot(ptr nocapture noundef readonly %ecc, i32 noundef %slot) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %and = and i32 %slot, 65535
  %num_slots = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 8
  %0 = ptrtoint ptr %num_slots to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_slots, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and, i32 %1)
  %cmp.not = icmp ult i32 %and, %1
  br i1 %cmp.not, label %edma_write_slot.exit, label %entry.return_crit_edge

entry.return_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %return

edma_write_slot.exit:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base.i = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 2
  %2 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base.i, align 4
  %shl.i = shl nuw nsw i32 %and, 5
  %add.i = add nuw nsw i32 %shl.i, 16384
  %add.ptr.i = getelementptr i8, ptr %3, i32 %add.i
  tail call void @mmiocpy(ptr noundef %add.ptr.i, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #10
  %slot_inuse = getelementptr inbounds %struct.edma_cc, ptr %ecc, i32 0, i32 14
  %4 = ptrtoint ptr %slot_inuse to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %slot_inuse, align 4
  tail call void @_clear_bit(i32 noundef %and, ptr noundef %5) #10
  br label %return

return:                                           ; preds = %edma_write_slot.exit, %entry.return_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_address_to_resource(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u16_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_set(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__bitmap_clear(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mmiocpy(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @edma_completion_handler(ptr noundef %echan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %echan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %echan, align 4
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %echan, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %edesc3 = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 2
  %4 = ptrtoint ptr %edesc3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %edesc3, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.then

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then:                                          ; preds = %entry
  %cyclic = getelementptr inbounds %struct.edma_desc, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %cyclic to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %cyclic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool4.not = icmp eq i32 %7, 0
  br i1 %tobool4.not, label %if.else, label %if.then5

if.then5:                                         ; preds = %if.then
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %5, i32 0, i32 3
  %8 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %5, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then5.cleanup_crit_edge

if.then5.cleanup_crit_edge:                       ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then.i.i:                                      ; preds = %if.then5
  call void @__sanitizer_cov_trace_pc() #12
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #10
  br label %cleanup

if.else:                                          ; preds = %if.then
  %processed = getelementptr inbounds %struct.edma_desc, ptr %5, i32 0, i32 8
  %11 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %processed, align 4
  %pset_nr = getelementptr inbounds %struct.edma_desc, ptr %5, i32 0, i32 6
  %13 = ptrtoint ptr %pset_nr to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %pset_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %12, i32 %14)
  %cmp = icmp eq i32 %12, %14
  br i1 %cmp, label %if.then8, label %do.body17

if.then8:                                         ; preds = %if.else
  %residue = getelementptr inbounds %struct.edma_desc, ptr %5, i32 0, i32 11
  %15 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %residue, align 4
  %ecc1.i = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 3
  %16 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %ecc1.i, align 4
  %ch_num.i = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 5
  %18 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ch_num.i, align 4
  %and.i = lshr i32 %19, 5
  %20 = and i32 %and.i, 2047
  %and2.i = and i32 %19, 31
  %shl.i = shl nuw i32 1, %and2.i
  %shl.i.i = shl nuw nsw i32 %20, 2
  %add1.i.i = add nuw nsw i32 %shl.i.i, 8232
  %base.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %17, i32 0, i32 2
  %21 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %22, i32 %add1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %shl.i) #10, !srcloc !314
  %add1.i26.i = add nuw nsw i32 %shl.i.i, 8200
  %23 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i28.i = getelementptr i8, ptr %24, i32 %add1.i26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28.i, i32 %shl.i) #10, !srcloc !314
  %add1.i30.i = add nuw nsw i32 %shl.i.i, 8256
  %25 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i32.i = getelementptr i8, ptr %26, i32 %add1.i30.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32.i, i32 %shl.i) #10, !srcloc !314
  %add.i.i = add nuw nsw i32 %shl.i.i, 776
  %27 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i35.i = getelementptr i8, ptr %28, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35.i, i32 %shl.i) #10, !srcloc !314
  %add1.i37.i = add nuw nsw i32 %shl.i.i, 8304
  %29 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %30, i32 %add1.i37.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39.i, i32 %shl.i) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_stop.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_completion_handler, %edma_stop.exit)) #10
          to label %if.then.i [label %edma_stop.exit], !srcloc !315

if.then.i:                                        ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %17, align 4
  %add1.i41.i = add nuw nsw i32 %shl.i.i, 8224
  %33 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %34, i32 %add1.i41.i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #10, !srcloc !311
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_stop.__UNIQUE_ID_ddebug242, ptr noundef %32, ptr noundef nonnull @.str.66, i32 noundef %20, i32 noundef %35) #10
  br label %edma_stop.exit

edma_stop.exit:                                   ; preds = %if.then.i, %if.then8
  %chan.i71 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %5, i32 0, i32 3
  %36 = ptrtoint ptr %chan.i71 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %chan.i71, align 4
  %38 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %5, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %39)
  %cmp.i.i = icmp slt i32 %39, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !310

do.body2.i.i:                                     ; preds = %edma_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ti/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !318
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %edma_stop.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %37, i32 0, i32 3
  %40 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %completed_cookie.i.i, align 4
  %41 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 0, ptr %5, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_completion_handler, %do.end.i)) #10
          to label %if.then.i72 [label %do.end.i], !srcloc !315

if.then.i72:                                      ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %42 = ptrtoint ptr %37 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %37, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %43, i32 0, i32 15
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %45, ptr noundef nonnull @.str.69, ptr noundef nonnull %5, i32 noundef %39) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i72, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %5, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %37, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %37, i32 0, i32 7, i32 1
  %46 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %47, ptr noundef %desc_completed.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %48 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %node.i, ptr %prev.i.i, align 4
  %49 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %5, i32 0, i32 2, i32 1
  %50 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %47, ptr %prev3.i.i.i, align 4
  %51 = ptrtoint ptr %47 to i32
  call void @__asan_store4_noabort(i32 %51)
  store volatile ptr %node.i, ptr %47, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i73 = getelementptr inbounds %struct.virt_dma_chan, ptr %37, i32 0, i32 1, i32 1
  %call.i.i74 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i73) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i74)
  %tobool.not.i.i75 = icmp eq i32 %call.i.i74, 0
  br i1 %tobool.not.i.i75, label %if.then.i.i77, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_cookie_complete.exit

if.then.i.i77:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %task.i76 = getelementptr inbounds %struct.virt_dma_chan, ptr %37, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i76) #10
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i77, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %52 = ptrtoint ptr %edesc3 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr null, ptr %edesc3, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_completion_handler.__UNIQUE_ID_ddebug256, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_completion_handler, %if.end40)) #10
          to label %if.then15 [label %if.end40], !srcloc !315

if.then15:                                        ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #12
  %53 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ch_num.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_completion_handler.__UNIQUE_ID_ddebug256, ptr noundef %3, ptr noundef nonnull @.str.63, i32 noundef %54) #10
  br label %if.end40

do.body17:                                        ; preds = %if.else
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_completion_handler.__UNIQUE_ID_ddebug257, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_completion_handler, %do.end35)) #10
          to label %if.then31 [label %do.end35], !srcloc !315

if.then31:                                        ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #12
  %ch_num32 = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 5
  %55 = ptrtoint ptr %ch_num32 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %ch_num32, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_completion_handler.__UNIQUE_ID_ddebug257, ptr noundef %3, ptr noundef nonnull @.str.64, i32 noundef %56) #10
  br label %do.end35

do.end35:                                         ; preds = %if.then31, %do.body17
  %ch_num.i78 = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 5
  %57 = ptrtoint ptr %ch_num.i78 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %ch_num.i78, align 4
  %ecc.i = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 3
  %59 = ptrtoint ptr %ecc.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %ecc.i, align 4
  %and1.i = and i32 %58, 31
  %shl.i79 = shl nuw i32 1, %and1.i
  %61 = lshr i32 %58, 3
  %shl.i.i80 = and i32 %61, 8188
  %add1.i.i81 = add nuw nsw i32 %shl.i.i80, 8232
  %base.i.i.i82 = getelementptr inbounds %struct.edma_cc, ptr %60, i32 0, i32 2
  %62 = ptrtoint ptr %base.i.i.i82 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base.i.i.i82, align 4
  %add.ptr.i.i.i83 = getelementptr i8, ptr %63, i32 %add1.i.i81
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i83, i32 %shl.i79) #10, !srcloc !314
  %sg_len = getelementptr inbounds %struct.edma_desc, ptr %5, i32 0, i32 10
  %64 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %sg_len, align 4
  %residue36 = getelementptr inbounds %struct.edma_desc, ptr %5, i32 0, i32 11
  %66 = ptrtoint ptr %residue36 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %residue36, align 4
  %sub = sub i32 %67, %65
  store i32 %sub, ptr %residue36, align 4
  %residue_stat = getelementptr inbounds %struct.edma_desc, ptr %5, i32 0, i32 12
  %68 = ptrtoint ptr %residue_stat to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %sub, ptr %residue_stat, align 4
  %69 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %processed, align 4
  %processed_stat = getelementptr inbounds %struct.edma_desc, ptr %5, i32 0, i32 9
  %71 = ptrtoint ptr %processed_stat to i32
  call void @__asan_store4_noabort(i32 %71)
  store i32 %70, ptr %processed_stat, align 4
  br label %if.end40

if.end40:                                         ; preds = %do.end35, %if.then15, %vchan_cookie_complete.exit
  tail call fastcc void @edma_execute(ptr noundef %echan)
  br label %cleanup

cleanup:                                          ; preds = %if.end40, %if.then.i.i, %if.then5.cleanup_crit_edge, %entry.cleanup_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #10
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.cttz.i32(i32, i1 immarg) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @edma_execute(ptr noundef %echan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc1 = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 3
  %0 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ecc1, align 4
  %2 = ptrtoint ptr %echan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %echan, align 4
  %dev2 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  %edesc3 = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 2
  %6 = ptrtoint ptr %edesc3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %edesc3, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %if.then, label %entry.if.end9_crit_edge

entry.if.end9_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end9

if.then:                                          ; preds = %entry
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %echan, i32 0, i32 6
  %8 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %9, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %9, i32 -108
  %tobool5.not328 = icmp eq ptr %add.ptr.i, null
  %tobool5.not = or i1 %cmp.not.i, %tobool5.not328
  br i1 %tobool5.not, label %if.then.cleanup_crit_edge, label %if.end

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.then
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %9) #10
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %9, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %9, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %18 = ptrtoint ptr %edesc3 to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %add.ptr.i, ptr %edesc3, align 4
  br label %if.end9

if.end9:                                          ; preds = %list_del.exit, %entry.if.end9_crit_edge
  %19 = ptrtoint ptr %edesc3 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %edesc3, align 4
  %pset_nr = getelementptr inbounds %struct.edma_desc, ptr %20, i32 0, i32 6
  %21 = ptrtoint ptr %pset_nr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %pset_nr, align 4
  %processed = getelementptr inbounds %struct.edma_desc, ptr %20, i32 0, i32 8
  %23 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %processed, align 4
  %sub = sub i32 %22, %24
  %25 = tail call i32 @llvm.smin.i32(i32 %sub, i32 20)
  %sg_len = getelementptr inbounds %struct.edma_desc, ptr %20, i32 0, i32 10
  %26 = ptrtoint ptr %sg_len to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %sg_len, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %cmp11329 = icmp sgt i32 %sub, 0
  br i1 %cmp11329, label %for.body.lr.ph, label %if.end9.for.end_crit_edge

if.end9.for.end_crit_edge:                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end9
  %num_slots.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 8
  %base.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %ch_num = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 5
  %sub52 = add nsw i32 %25, -1
  %smax = call i32 @llvm.smax.i32(i32 %25, i32 1)
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0330 = phi i32 [ 0, %for.body.lr.ph ], [ %inc.pre-phi, %for.inc.for.body_crit_edge ]
  %27 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %processed, align 4
  %add = add i32 %28, %i.0330
  %arrayidx = getelementptr %struct.edma_chan, ptr %echan, i32 0, i32 8, i32 %i.0330
  %29 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %arrayidx, align 4
  %arrayidx13 = getelementptr %struct.edma_desc, ptr %20, i32 0, i32 13, i32 %add
  %param = getelementptr %struct.edma_desc, ptr %20, i32 0, i32 13, i32 %add, i32 2
  %and.i = and i32 %30, 65535
  %31 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %32)
  %cmp.not.i240 = icmp ult i32 %and.i, %32
  br i1 %cmp.not.i240, label %if.end.i, label %for.body.edma_write_slot.exit_crit_edge

for.body.edma_write_slot.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_write_slot.exit

if.end.i:                                         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i, align 4
  %shl.i = shl nuw nsw i32 %and.i, 5
  %add.i = add nuw nsw i32 %shl.i, 16384
  %add.ptr.i241 = getelementptr i8, ptr %34, i32 %add.i
  tail call void @mmiocpy(ptr noundef %add.ptr.i241, ptr noundef %param, i32 noundef 32) #10
  br label %edma_write_slot.exit

edma_write_slot.exit:                             ; preds = %if.end.i, %for.body.edma_write_slot.exit_crit_edge
  %35 = ptrtoint ptr %arrayidx13 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %arrayidx13, align 4
  %37 = ptrtoint ptr %sg_len to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sg_len, align 4
  %add17 = add i32 %38, %36
  store i32 %add17, ptr %sg_len, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_execute.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_execute, %do.end)) #10
          to label %if.then24 [label %do.end], !srcloc !315

if.then24:                                        ; preds = %edma_write_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  %39 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %ch_num, align 4
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %arrayidx, align 4
  %43 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %param, align 4
  %src = getelementptr %struct.edma_desc, ptr %20, i32 0, i32 13, i32 %add, i32 2, i32 1
  %45 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %src, align 4
  %dst = getelementptr %struct.edma_desc, ptr %20, i32 0, i32 13, i32 %add, i32 2, i32 3
  %47 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dst, align 4
  %a_b_cnt = getelementptr %struct.edma_desc, ptr %20, i32 0, i32 13, i32 %add, i32 2, i32 2
  %49 = ptrtoint ptr %a_b_cnt to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %a_b_cnt, align 4
  %ccnt = getelementptr %struct.edma_desc, ptr %20, i32 0, i32 13, i32 %add, i32 2, i32 7
  %51 = ptrtoint ptr %ccnt to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %ccnt, align 4
  %src_dst_bidx = getelementptr %struct.edma_desc, ptr %20, i32 0, i32 13, i32 %add, i32 2, i32 4
  %53 = ptrtoint ptr %src_dst_bidx to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %src_dst_bidx, align 4
  %src_dst_cidx = getelementptr %struct.edma_desc, ptr %20, i32 0, i32 13, i32 %add, i32 2, i32 6
  %55 = ptrtoint ptr %src_dst_cidx to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %src_dst_cidx, align 4
  %link_bcntrld = getelementptr %struct.edma_desc, ptr %20, i32 0, i32 13, i32 %add, i32 2, i32 5
  %57 = ptrtoint ptr %link_bcntrld to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %link_bcntrld, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_execute.__UNIQUE_ID_ddebug247, ptr noundef %5, ptr noundef nonnull @.str.71, i32 noundef %add, i32 noundef %40, i32 noundef %42, i32 noundef %44, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58) #10
  br label %do.end

do.end:                                           ; preds = %if.then24, %edma_write_slot.exit
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0330, i32 %sub52)
  %cmp53.not = icmp eq i32 %i.0330, %sub52
  br i1 %cmp53.not, label %do.end.for.inc_crit_edge, label %if.then54

do.end.for.inc_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #12
  %.pre = add nuw nsw i32 %i.0330, 1
  br label %for.inc

if.then54:                                        ; preds = %do.end
  %59 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %arrayidx, align 4
  %add58 = add nuw nsw i32 %i.0330, 1
  %arrayidx59 = getelementptr %struct.edma_chan, ptr %echan, i32 0, i32 8, i32 %add58
  %61 = ptrtoint ptr %arrayidx59 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %arrayidx59, align 4
  %cmp.not.unshifted.i = xor i32 %62, %60
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.not.unshifted.i)
  %cmp.not.i242 = icmp ult i32 %cmp.not.unshifted.i, 65536
  br i1 %cmp.not.i242, label %if.then54.if.end.i245_crit_edge, label %do.end.i, !prof !319

if.then54.if.end.i245_crit_edge:                  ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i245

do.end.i:                                         ; preds = %if.then54
  call void @__sanitizer_cov_trace_pc() #12
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %64, ptr noundef nonnull @.str.75) #14
  br label %if.end.i245

if.end.i245:                                      ; preds = %do.end.i, %if.then54.if.end.i245_crit_edge
  %and.i243 = and i32 %60, 65535
  %and3.i = and i32 %62, 65535
  %65 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i243, i32 %66)
  %cmp4.not.i = icmp ult i32 %and.i243, %66
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i, i32 %66)
  %cmp6.not.i = icmp ult i32 %and3.i, %66
  %or.cond.i = and i1 %cmp4.not.i, %cmp6.not.i
  br i1 %or.cond.i, label %if.end8.i, label %if.end.i245.for.inc_crit_edge

if.end.i245.for.inc_crit_edge:                    ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.end8.i:                                        ; preds = %if.end.i245
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i246 = shl nuw nsw i32 %and3.i, 5
  %add.i247 = add nuw nsw i32 %shl.i246, 16384
  %shl.i.i = shl nuw nsw i32 %and.i243, 5
  %add1.i.i = add nuw nsw i32 %shl.i.i, 16404
  %67 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %68, i32 %add1.i.i
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !311
  %and1.i.i.i = and i32 %69, -65536
  %or2.i.i.i = or i32 %and1.i.i.i, %add.i247
  %70 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base.i, align 4
  %add.ptr.i8.i.i.i = getelementptr i8, ptr %71, i32 %add1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i.i, i32 %or2.i.i.i) #10, !srcloc !314
  br label %for.inc

for.inc:                                          ; preds = %if.end8.i, %if.end.i245.for.inc_crit_edge, %do.end.for.inc_crit_edge
  %inc.pre-phi = phi i32 [ %.pre, %do.end.for.inc_crit_edge ], [ %add58, %if.end8.i ], [ %add58, %if.end.i245.for.inc_crit_edge ]
  %exitcond.not = icmp eq i32 %inc.pre-phi, %smax
  br i1 %exitcond.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end9.for.end_crit_edge
  %72 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %processed, align 4
  %add62 = add i32 %73, %25
  store i32 %add62, ptr %processed, align 4
  %74 = ptrtoint ptr %pset_nr to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %pset_nr, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %add62, i32 %75)
  %cmp65 = icmp eq i32 %add62, %75
  br i1 %cmp65, label %if.then66, label %for.end.if.end79_crit_edge

for.end.if.end79_crit_edge:                       ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.then66:                                        ; preds = %for.end
  %cyclic = getelementptr inbounds %struct.edma_desc, ptr %20, i32 0, i32 3
  %76 = ptrtoint ptr %cyclic to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %cyclic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %77)
  %tobool67.not = icmp eq i32 %77, 0
  %sub75 = add i32 %25, -1
  %arrayidx76 = getelementptr %struct.edma_chan, ptr %echan, i32 0, i32 8, i32 %sub75
  %78 = ptrtoint ptr %arrayidx76 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %arrayidx76, align 4
  br i1 %tobool67.not, label %if.else, label %if.then68

if.then68:                                        ; preds = %if.then66
  %arrayidx73 = getelementptr %struct.edma_chan, ptr %echan, i32 0, i32 8, i32 1
  %80 = ptrtoint ptr %arrayidx73 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %arrayidx73, align 4
  %cmp.not.unshifted.i248 = xor i32 %81, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.not.unshifted.i248)
  %cmp.not.i249 = icmp ult i32 %cmp.not.unshifted.i248, 65536
  br i1 %cmp.not.i249, label %if.then68.if.end.i257_crit_edge, label %do.end.i250, !prof !319

if.then68.if.end.i257_crit_edge:                  ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i257

do.end.i250:                                      ; preds = %if.then68
  call void @__sanitizer_cov_trace_pc() #12
  %82 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %83, ptr noundef nonnull @.str.75) #14
  br label %if.end.i257

if.end.i257:                                      ; preds = %do.end.i250, %if.then68.if.end.i257_crit_edge
  %and.i251 = and i32 %79, 65535
  %and3.i252 = and i32 %81, 65535
  %num_slots.i253 = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 8
  %84 = ptrtoint ptr %num_slots.i253 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %num_slots.i253, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i251, i32 %85)
  %cmp4.not.i254 = icmp ult i32 %and.i251, %85
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i252, i32 %85)
  %cmp6.not.i255 = icmp ult i32 %and3.i252, %85
  %or.cond.i256 = and i1 %cmp4.not.i254, %cmp6.not.i255
  br i1 %or.cond.i256, label %if.end8.i267, label %if.end.i257.if.end79_crit_edge

if.end.i257.if.end79_crit_edge:                   ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.end8.i267:                                     ; preds = %if.end.i257
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i258 = shl nuw nsw i32 %and3.i252, 5
  %add.i259 = add nuw nsw i32 %shl.i258, 16384
  %shl.i.i260 = shl nuw nsw i32 %and.i251, 5
  %add1.i.i261 = add nuw nsw i32 %shl.i.i260, 16404
  %base.i.i.i.i262 = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %86 = ptrtoint ptr %base.i.i.i.i262 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i.i.i.i262, align 4
  %add.ptr.i.i.i.i263 = getelementptr i8, ptr %87, i32 %add1.i.i261
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i263) #10, !srcloc !311
  %and1.i.i.i264 = and i32 %88, -65536
  %or2.i.i.i265 = or i32 %and1.i.i.i264, %add.i259
  %89 = ptrtoint ptr %base.i.i.i.i262 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %base.i.i.i.i262, align 4
  %add.ptr.i8.i.i.i266 = getelementptr i8, ptr %90, i32 %add1.i.i261
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i.i266, i32 %or2.i.i.i265) #10, !srcloc !314
  br label %if.end79

if.else:                                          ; preds = %if.then66
  %91 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %ecc1, align 4
  %dummy_slot = getelementptr inbounds %struct.edma_cc, ptr %92, i32 0, i32 20
  %93 = ptrtoint ptr %dummy_slot to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dummy_slot, align 4
  %cmp.not.unshifted.i269 = xor i32 %94, %79
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %cmp.not.unshifted.i269)
  %cmp.not.i270 = icmp ult i32 %cmp.not.unshifted.i269, 65536
  br i1 %cmp.not.i270, label %if.else.if.end.i278_crit_edge, label %do.end.i271, !prof !319

if.else.if.end.i278_crit_edge:                    ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i278

do.end.i271:                                      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %95 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %96, ptr noundef nonnull @.str.75) #14
  br label %if.end.i278

if.end.i278:                                      ; preds = %do.end.i271, %if.else.if.end.i278_crit_edge
  %and.i272 = and i32 %79, 65535
  %and3.i273 = and i32 %94, 65535
  %num_slots.i274 = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 8
  %97 = ptrtoint ptr %num_slots.i274 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %num_slots.i274, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i272, i32 %98)
  %cmp4.not.i275 = icmp ult i32 %and.i272, %98
  call void @__sanitizer_cov_trace_cmp4(i32 %and3.i273, i32 %98)
  %cmp6.not.i276 = icmp ult i32 %and3.i273, %98
  %or.cond.i277 = and i1 %cmp4.not.i275, %cmp6.not.i276
  br i1 %or.cond.i277, label %if.end8.i288, label %if.end.i278.if.end79_crit_edge

if.end.i278.if.end79_crit_edge:                   ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end79

if.end8.i288:                                     ; preds = %if.end.i278
  call void @__sanitizer_cov_trace_pc() #12
  %shl.i279 = shl nuw nsw i32 %and3.i273, 5
  %add.i280 = add nuw nsw i32 %shl.i279, 16384
  %shl.i.i281 = shl nuw nsw i32 %and.i272, 5
  %add1.i.i282 = add nuw nsw i32 %shl.i.i281, 16404
  %base.i.i.i.i283 = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %99 = ptrtoint ptr %base.i.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %base.i.i.i.i283, align 4
  %add.ptr.i.i.i.i284 = getelementptr i8, ptr %100, i32 %add1.i.i282
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i284) #10, !srcloc !311
  %and1.i.i.i285 = and i32 %101, -65536
  %or2.i.i.i286 = or i32 %and1.i.i.i285, %add.i280
  %102 = ptrtoint ptr %base.i.i.i.i283 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %base.i.i.i.i283, align 4
  %add.ptr.i8.i.i.i287 = getelementptr i8, ptr %103, i32 %add1.i.i282
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i.i287, i32 %or2.i.i.i286) #10, !srcloc !314
  br label %if.end79

if.end79:                                         ; preds = %if.end8.i288, %if.end.i278.if.end79_crit_edge, %if.end8.i267, %if.end.i257.if.end79_crit_edge, %for.end.if.end79_crit_edge
  %missed = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 9
  %104 = ptrtoint ptr %missed to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %missed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %tobool80.not = icmp eq i32 %105, 0
  br i1 %tobool80.not, label %if.else102, label %do.body82

do.body82:                                        ; preds = %if.end79
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_execute.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_execute, %do.end100)) #10
          to label %if.then96 [label %do.end100], !srcloc !315

if.then96:                                        ; preds = %do.body82
  call void @__sanitizer_cov_trace_pc() #12
  %ch_num97 = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 5
  %106 = ptrtoint ptr %ch_num97 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %ch_num97, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_execute.__UNIQUE_ID_ddebug248, ptr noundef %5, ptr noundef nonnull @.str.72, i32 noundef %107) #10
  br label %do.end100

do.end100:                                        ; preds = %if.then96, %do.body82
  %108 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %ecc1, align 4
  %ch_num.i = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 5
  %110 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %ch_num.i, align 4
  %and.i290 = lshr i32 %111, 5
  %112 = and i32 %and.i290, 2047
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_clean_channel.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_execute, %edma_clean_channel.exit)) #10
          to label %if.then.i [label %edma_clean_channel.exit], !srcloc !315

if.then.i:                                        ; preds = %do.end100
  call void @__sanitizer_cov_trace_pc() #12
  %113 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load ptr, ptr %109, align 4
  %shl.i.i291 = shl nuw nsw i32 %112, 2
  %add.i.i = add nuw nsw i32 %shl.i.i291, 768
  %base.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %109, i32 0, i32 2
  %115 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %116, i32 %add.i.i
  %117 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !311
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_clean_channel.__UNIQUE_ID_ddebug244, ptr noundef %114, ptr noundef nonnull @.str.78, i32 noundef %112, i32 noundef %117) #10
  br label %edma_clean_channel.exit

edma_clean_channel.exit:                          ; preds = %if.then.i, %do.end100
  %and2.i = and i32 %111, 31
  %shl.i292 = shl nuw i32 1, %and2.i
  %shl.i20.i = shl nuw nsw i32 %112, 2
  %add1.i.i293 = add nuw nsw i32 %shl.i20.i, 8200
  %base.i.i21.i = getelementptr inbounds %struct.edma_cc, ptr %109, i32 0, i32 2
  %118 = ptrtoint ptr %base.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %118)
  %119 = load ptr, ptr %base.i.i21.i, align 4
  %add.ptr.i.i22.i = getelementptr i8, ptr %119, i32 %add1.i.i293
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i22.i, i32 %shl.i292) #10, !srcloc !314
  %add.i24.i = add nuw nsw i32 %shl.i20.i, 776
  %120 = ptrtoint ptr %base.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load ptr, ptr %base.i.i21.i, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %121, i32 %add.i24.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26.i, i32 %shl.i292) #10, !srcloc !314
  %add1.i28.i = add nuw nsw i32 %shl.i20.i, 8256
  %122 = ptrtoint ptr %base.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %122)
  %123 = load ptr, ptr %base.i.i21.i, align 4
  %add.ptr.i.i30.i = getelementptr i8, ptr %123, i32 %add1.i28.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30.i, i32 %shl.i292) #10, !srcloc !314
  %124 = ptrtoint ptr %base.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %base.i.i21.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %125, i32 796
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 65539) #10, !srcloc !314
  %126 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %ecc1, align 4
  %128 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load i32, ptr %ch_num.i, align 4
  %and.i297 = lshr i32 %129, 5
  %130 = and i32 %and.i297, 2047
  %and2.i298 = and i32 %129, 31
  %shl.i299 = shl nuw i32 1, %and2.i298
  %shl.i.i300 = shl nuw nsw i32 %130, 2
  %add1.i.i301 = add nuw nsw i32 %shl.i.i300, 8232
  %base.i.i.i302 = getelementptr inbounds %struct.edma_cc, ptr %127, i32 0, i32 2
  %131 = ptrtoint ptr %base.i.i.i302 to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %base.i.i.i302, align 4
  %add.ptr.i.i.i303 = getelementptr i8, ptr %132, i32 %add1.i.i301
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i303, i32 %shl.i299) #10, !srcloc !314
  %add1.i26.i = add nuw nsw i32 %shl.i.i300, 8200
  %133 = ptrtoint ptr %base.i.i.i302 to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %base.i.i.i302, align 4
  %add.ptr.i.i28.i = getelementptr i8, ptr %134, i32 %add1.i26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28.i, i32 %shl.i299) #10, !srcloc !314
  %add1.i30.i = add nuw nsw i32 %shl.i.i300, 8256
  %135 = ptrtoint ptr %base.i.i.i302 to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %base.i.i.i302, align 4
  %add.ptr.i.i32.i = getelementptr i8, ptr %136, i32 %add1.i30.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32.i, i32 %shl.i299) #10, !srcloc !314
  %add.i.i304 = add nuw nsw i32 %shl.i.i300, 776
  %137 = ptrtoint ptr %base.i.i.i302 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %base.i.i.i302, align 4
  %add.ptr.i.i35.i = getelementptr i8, ptr %138, i32 %add.i.i304
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35.i, i32 %shl.i299) #10, !srcloc !314
  %add1.i37.i = add nuw nsw i32 %shl.i.i300, 8304
  %139 = ptrtoint ptr %base.i.i.i302 to i32
  call void @__asan_load4_noabort(i32 %139)
  %140 = load ptr, ptr %base.i.i.i302, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %140, i32 %add1.i37.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39.i, i32 %shl.i299) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_stop.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_execute, %edma_stop.exit)) #10
          to label %if.then.i305 [label %edma_stop.exit], !srcloc !315

if.then.i305:                                     ; preds = %edma_clean_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %141 = ptrtoint ptr %127 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %127, align 4
  %add1.i41.i = add nuw nsw i32 %shl.i.i300, 8224
  %143 = ptrtoint ptr %base.i.i.i302 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %base.i.i.i302, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %144, i32 %add1.i41.i
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #10, !srcloc !311
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_stop.__UNIQUE_ID_ddebug242, ptr noundef %142, ptr noundef nonnull @.str.66, i32 noundef %130, i32 noundef %145) #10
  br label %edma_stop.exit

edma_stop.exit:                                   ; preds = %if.then.i305, %edma_clean_channel.exit
  tail call fastcc void @edma_start(ptr noundef %echan)
  %146 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %ecc1, align 4
  %148 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load i32, ptr %ch_num.i, align 4
  %and.i309 = lshr i32 %149, 5
  %150 = and i32 %and.i309, 2047
  %and2.i310 = and i32 %149, 31
  %shl.i311 = shl nuw i32 1, %and2.i310
  %shl.i.i312 = shl nuw nsw i32 %150, 2
  %add1.i.i313 = add nuw nsw i32 %shl.i.i312, 8208
  %base.i.i.i314 = getelementptr inbounds %struct.edma_cc, ptr %147, i32 0, i32 2
  %151 = ptrtoint ptr %base.i.i.i314 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %base.i.i.i314, align 4
  %add.ptr.i.i.i315 = getelementptr i8, ptr %152, i32 %add1.i.i313
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i315, i32 %shl.i311) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_trigger_channel.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_execute, %edma_trigger_channel.exit)) #10
          to label %if.then.i316 [label %edma_trigger_channel.exit], !srcloc !315

if.then.i316:                                     ; preds = %edma_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  %153 = ptrtoint ptr %147 to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %147, align 4
  %155 = ptrtoint ptr %base.i.i.i314 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %base.i.i.i314, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %156, i32 %add1.i.i313
  %157 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16.i) #10, !srcloc !311
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_trigger_channel.__UNIQUE_ID_ddebug243, ptr noundef %154, ptr noundef nonnull @.str.80, i32 noundef %150, i32 noundef %157) #10
  br label %edma_trigger_channel.exit

edma_trigger_channel.exit:                        ; preds = %if.then.i316, %edma_stop.exit
  %158 = ptrtoint ptr %missed to i32
  call void @__asan_store4_noabort(i32 %158)
  store i32 0, ptr %missed, align 4
  br label %cleanup

if.else102:                                       ; preds = %if.end79
  %159 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %processed, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 21, i32 %160)
  %cmp104 = icmp slt i32 %160, 21
  br i1 %cmp104, label %do.body106, label %do.body126

do.body106:                                       ; preds = %if.else102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_execute.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_execute, %do.end124)) #10
          to label %if.then120 [label %do.end124], !srcloc !315

if.then120:                                       ; preds = %do.body106
  call void @__sanitizer_cov_trace_pc() #12
  %ch_num121 = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 5
  %161 = ptrtoint ptr %ch_num121 to i32
  call void @__asan_load4_noabort(i32 %161)
  %162 = load i32, ptr %ch_num121, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_execute.__UNIQUE_ID_ddebug249, ptr noundef %5, ptr noundef nonnull @.str.73, i32 noundef %162) #10
  br label %do.end124

do.end124:                                        ; preds = %if.then120, %do.body106
  tail call fastcc void @edma_start(ptr noundef %echan)
  br label %cleanup

do.body126:                                       ; preds = %if.else102
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_execute.__UNIQUE_ID_ddebug250, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_execute, %do.end145)) #10
          to label %if.then140 [label %do.end145], !srcloc !315

if.then140:                                       ; preds = %do.body126
  call void @__sanitizer_cov_trace_pc() #12
  %ch_num141 = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 5
  %163 = ptrtoint ptr %ch_num141 to i32
  call void @__asan_load4_noabort(i32 %163)
  %164 = load i32, ptr %ch_num141, align 4
  %165 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load i32, ptr %processed, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_execute.__UNIQUE_ID_ddebug250, ptr noundef %5, ptr noundef nonnull @.str.74, i32 noundef %164, i32 noundef %166) #10
  br label %do.end145

do.end145:                                        ; preds = %if.then140, %do.body126
  %ch_num.i318 = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 5
  %167 = ptrtoint ptr %ch_num.i318 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %ch_num.i318, align 4
  %169 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %169)
  %170 = load ptr, ptr %ecc1, align 4
  %and1.i = and i32 %168, 31
  %shl.i319 = shl nuw i32 1, %and1.i
  %171 = lshr i32 %168, 3
  %shl.i.i320 = and i32 %171, 8188
  %add1.i.i321 = add nuw nsw i32 %shl.i.i320, 8240
  %base.i.i.i322 = getelementptr inbounds %struct.edma_cc, ptr %170, i32 0, i32 2
  %172 = ptrtoint ptr %base.i.i.i322 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %base.i.i.i322, align 4
  %add.ptr.i.i.i323 = getelementptr i8, ptr %173, i32 %add1.i.i321
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i323, i32 %shl.i319) #10, !srcloc !314
  br label %cleanup

cleanup:                                          ; preds = %do.end145, %do.end124, %edma_trigger_channel.exit, %if.then.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @edma_start(ptr nocapture noundef readonly %echan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc1 = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 3
  %0 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ecc1, align 4
  %ch_num = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 5
  %2 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_num, align 4
  %and = lshr i32 %3, 5
  %4 = and i32 %and, 2047
  %and2 = and i32 %3, 31
  %shl = shl nuw i32 1, %and2
  %hw_triggered = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 7
  %5 = ptrtoint ptr %hw_triggered to i32
  call void @__asan_load1_noabort(i32 %5)
  %6 = load i8, ptr %hw_triggered, align 1, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %6)
  %tobool.not = icmp eq i8 %6, 0
  br i1 %tobool.not, label %do.body, label %do.body9

do.body:                                          ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_start.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_start, %do.end)) #10
          to label %if.then7 [label %do.end], !srcloc !315

if.then7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  %7 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %1, align 4
  %shl.i = shl nuw nsw i32 %4, 2
  %add1.i = add nuw nsw i32 %shl.i, 8208
  %base.i.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %9 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %10, i32 %add1.i
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !311
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_start.__UNIQUE_ID_ddebug239, ptr noundef %8, ptr noundef nonnull @.str.80, i32 noundef %4, i32 noundef %11) #10
  br label %do.end

do.end:                                           ; preds = %if.then7, %do.body
  %shl.i83 = shl nuw nsw i32 %4, 2
  %add1.i84 = add nuw nsw i32 %shl.i83, 8208
  %base.i.i85 = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %12 = ptrtoint ptr %base.i.i85 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i85, align 4
  %add.ptr.i.i86 = getelementptr i8, ptr %13, i32 %add1.i84
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i86, i32 %shl) #10, !srcloc !314
  br label %if.end49

do.body9:                                         ; preds = %entry
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_start.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_start, %do.end28)) #10
          to label %if.then23 [label %do.end28], !srcloc !315

if.then23:                                        ; preds = %do.body9
  call void @__sanitizer_cov_trace_pc() #12
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %shl.i87 = shl nuw nsw i32 %4, 2
  %add1.i88 = or i32 %shl.i87, 8192
  %base.i.i89 = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %16 = ptrtoint ptr %base.i.i89 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i89, align 4
  %add.ptr.i.i90 = getelementptr i8, ptr %17, i32 %add1.i88
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i90) #10, !srcloc !311
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_start.__UNIQUE_ID_ddebug240, ptr noundef %15, ptr noundef nonnull @.str.81, i32 noundef %4, i32 noundef %18) #10
  br label %do.end28

do.end28:                                         ; preds = %if.then23, %do.body9
  %shl.i91 = shl nuw nsw i32 %4, 2
  %add.i = add nuw nsw i32 %shl.i91, 4104
  %base.i.i92 = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %19 = ptrtoint ptr %base.i.i92 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i92, align 4
  %add.ptr.i.i93 = getelementptr i8, ptr %20, i32 %add.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i93, i32 %shl) #10, !srcloc !314
  %add.i95 = add nuw nsw i32 %shl.i91, 776
  %21 = ptrtoint ptr %base.i.i92 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i92, align 4
  %add.ptr.i.i97 = getelementptr i8, ptr %22, i32 %add.i95
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i97, i32 %shl) #10, !srcloc !314
  %add1.i99 = add nuw nsw i32 %shl.i91, 8256
  %23 = ptrtoint ptr %base.i.i92 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i92, align 4
  %add.ptr.i.i101 = getelementptr i8, ptr %24, i32 %add1.i99
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i101, i32 %shl) #10, !srcloc !314
  %add1.i103 = add nuw nsw i32 %shl.i91, 8240
  %25 = ptrtoint ptr %base.i.i92 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i92, align 4
  %add.ptr.i.i105 = getelementptr i8, ptr %26, i32 %add1.i103
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i105, i32 %shl) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_start.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_start, %if.end49)) #10
          to label %if.then43 [label %if.end49], !srcloc !315

if.then43:                                        ; preds = %do.end28
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %add1.i107 = add nuw nsw i32 %shl.i91, 8224
  %29 = ptrtoint ptr %base.i.i92 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i92, align 4
  %add.ptr.i.i109 = getelementptr i8, ptr %30, i32 %add1.i107
  %31 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i109) #10, !srcloc !311
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_start.__UNIQUE_ID_ddebug241, ptr noundef %28, ptr noundef nonnull @.str.66, i32 noundef %4, i32 noundef %31) #10
  br label %if.end49

if.end49:                                         ; preds = %if.then43, %do.end28, %do.end
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @edma_error_handler(ptr noundef %echan) unnamed_addr #0 align 64 {
entry:
  %p = alloca %struct.edmacc_param, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc1 = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 3
  %0 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ecc1, align 4
  %2 = ptrtoint ptr %echan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %echan, align 4
  %dev2 = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %4 = ptrtoint ptr %dev2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev2, align 4
  call void @llvm.lifetime.start.p0(i64 32, ptr nonnull %p) #10
  %6 = getelementptr inbounds %struct.edmacc_param, ptr %p, i32 0, i32 2
  %7 = getelementptr inbounds %struct.edmacc_param, ptr %p, i32 0, i32 7
  %edesc = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 2
  %8 = call ptr @memset(ptr %p, i32 255, i32 32)
  %9 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %edesc, align 4
  %tobool.not = icmp eq ptr %10, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %echan, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #10
  %slot = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 8
  %11 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %slot, align 4
  %and.i = and i32 %12, 65535
  %num_slots.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 8
  %13 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %14)
  %cmp.not.i = icmp ult i32 %and.i, %14
  br i1 %cmp.not.i, label %lor.lhs.false, label %if.end.do.body_crit_edge

if.end.do.body_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

lor.lhs.false:                                    ; preds = %if.end
  %base.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i, align 4
  %shl.i = shl nuw nsw i32 %and.i, 5
  %add.i = add nuw nsw i32 %shl.i, 16384
  %add.ptr.i = getelementptr i8, ptr %16, i32 %add.i
  call void @mmiocpy(ptr noundef nonnull %p, ptr noundef %add.ptr.i, i32 noundef 32) #10
  %17 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %6, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %cmp = icmp eq i32 %18, 0
  br i1 %cmp, label %land.lhs.true, label %lor.lhs.false.do.body14_crit_edge

lor.lhs.false.do.body14_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

land.lhs.true:                                    ; preds = %lor.lhs.false
  %19 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %7, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp5 = icmp eq i32 %20, 0
  br i1 %cmp5, label %land.lhs.true.do.body_crit_edge, label %land.lhs.true.do.body14_crit_edge

land.lhs.true.do.body14_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body14

land.lhs.true.do.body_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %do.body

do.body:                                          ; preds = %land.lhs.true.do.body_crit_edge, %if.end.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_error_handler.__UNIQUE_ID_ddebug259, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_error_handler, %do.end)) #10
          to label %if.then12 [label %do.end], !srcloc !315

if.then12:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_error_handler.__UNIQUE_ID_ddebug259, ptr noundef %5, ptr noundef nonnull @.str.92) #10
  br label %do.end

do.end:                                           ; preds = %if.then12, %do.body
  %missed = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 9
  %21 = ptrtoint ptr %missed to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %missed, align 4
  br label %if.end32

do.body14:                                        ; preds = %land.lhs.true.do.body14_crit_edge, %lor.lhs.false.do.body14_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_error_handler.__UNIQUE_ID_ddebug260, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_error_handler, %do.end31)) #10
          to label %if.then28 [label %do.end31], !srcloc !315

if.then28:                                        ; preds = %do.body14
  call void @__sanitizer_cov_trace_pc() #12
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_error_handler.__UNIQUE_ID_ddebug260, ptr noundef %5, ptr noundef nonnull @.str.93) #10
  br label %do.end31

do.end31:                                         ; preds = %if.then28, %do.body14
  %22 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ecc1, align 4
  %ch_num.i = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 5
  %24 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ch_num.i, align 4
  %and.i53 = lshr i32 %25, 5
  %26 = and i32 %and.i53, 2047
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_clean_channel.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_error_handler, %edma_clean_channel.exit)) #10
          to label %if.then.i [label %edma_clean_channel.exit], !srcloc !315

if.then.i:                                        ; preds = %do.end31
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %23, align 4
  %shl.i.i = shl nuw nsw i32 %26, 2
  %add.i.i = add nuw nsw i32 %shl.i.i, 768
  %base.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %23, i32 0, i32 2
  %29 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %30, i32 %add.i.i
  %31 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !311
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_clean_channel.__UNIQUE_ID_ddebug244, ptr noundef %28, ptr noundef nonnull @.str.78, i32 noundef %26, i32 noundef %31) #10
  br label %edma_clean_channel.exit

edma_clean_channel.exit:                          ; preds = %if.then.i, %do.end31
  %and2.i = and i32 %25, 31
  %shl.i54 = shl nuw i32 1, %and2.i
  %shl.i20.i = shl nuw nsw i32 %26, 2
  %add1.i.i = add nuw nsw i32 %shl.i20.i, 8200
  %base.i.i21.i = getelementptr inbounds %struct.edma_cc, ptr %23, i32 0, i32 2
  %32 = ptrtoint ptr %base.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base.i.i21.i, align 4
  %add.ptr.i.i22.i = getelementptr i8, ptr %33, i32 %add1.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i22.i, i32 %shl.i54) #10, !srcloc !314
  %add.i24.i = add nuw nsw i32 %shl.i20.i, 776
  %34 = ptrtoint ptr %base.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i21.i, align 4
  %add.ptr.i.i26.i = getelementptr i8, ptr %35, i32 %add.i24.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i26.i, i32 %shl.i54) #10, !srcloc !314
  %add1.i28.i = add nuw nsw i32 %shl.i20.i, 8256
  %36 = ptrtoint ptr %base.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i21.i, align 4
  %add.ptr.i.i30.i = getelementptr i8, ptr %37, i32 %add1.i28.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i30.i, i32 %shl.i54) #10, !srcloc !314
  %38 = ptrtoint ptr %base.i.i21.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i21.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %39, i32 796
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 65539) #10, !srcloc !314
  %40 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %ecc1, align 4
  %42 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ch_num.i, align 4
  %and.i57 = lshr i32 %43, 5
  %44 = and i32 %and.i57, 2047
  %and2.i58 = and i32 %43, 31
  %shl.i59 = shl nuw i32 1, %and2.i58
  %shl.i.i60 = shl nuw nsw i32 %44, 2
  %add1.i.i61 = add nuw nsw i32 %shl.i.i60, 8232
  %base.i.i.i62 = getelementptr inbounds %struct.edma_cc, ptr %41, i32 0, i32 2
  %45 = ptrtoint ptr %base.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i.i62, align 4
  %add.ptr.i.i.i63 = getelementptr i8, ptr %46, i32 %add1.i.i61
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i63, i32 %shl.i59) #10, !srcloc !314
  %add1.i26.i = add nuw nsw i32 %shl.i.i60, 8200
  %47 = ptrtoint ptr %base.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %base.i.i.i62, align 4
  %add.ptr.i.i28.i = getelementptr i8, ptr %48, i32 %add1.i26.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28.i, i32 %shl.i59) #10, !srcloc !314
  %add1.i30.i = add nuw nsw i32 %shl.i.i60, 8256
  %49 = ptrtoint ptr %base.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base.i.i.i62, align 4
  %add.ptr.i.i32.i = getelementptr i8, ptr %50, i32 %add1.i30.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32.i, i32 %shl.i59) #10, !srcloc !314
  %add.i.i64 = add nuw nsw i32 %shl.i.i60, 776
  %51 = ptrtoint ptr %base.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i.i62, align 4
  %add.ptr.i.i35.i = getelementptr i8, ptr %52, i32 %add.i.i64
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35.i, i32 %shl.i59) #10, !srcloc !314
  %add1.i37.i = add nuw nsw i32 %shl.i.i60, 8304
  %53 = ptrtoint ptr %base.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i.i62, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %54, i32 %add1.i37.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39.i, i32 %shl.i59) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_stop.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_error_handler, %edma_stop.exit)) #10
          to label %if.then.i65 [label %edma_stop.exit], !srcloc !315

if.then.i65:                                      ; preds = %edma_clean_channel.exit
  call void @__sanitizer_cov_trace_pc() #12
  %55 = ptrtoint ptr %41 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %41, align 4
  %add1.i41.i = add nuw nsw i32 %shl.i.i60, 8224
  %57 = ptrtoint ptr %base.i.i.i62 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %base.i.i.i62, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %58, i32 %add1.i41.i
  %59 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #10, !srcloc !311
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_stop.__UNIQUE_ID_ddebug242, ptr noundef %56, ptr noundef nonnull @.str.66, i32 noundef %44, i32 noundef %59) #10
  br label %edma_stop.exit

edma_stop.exit:                                   ; preds = %if.then.i65, %edma_clean_channel.exit
  call fastcc void @edma_start(ptr noundef %echan)
  %60 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %ecc1, align 4
  %62 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %ch_num.i, align 4
  %and.i68 = lshr i32 %63, 5
  %64 = and i32 %and.i68, 2047
  %and2.i69 = and i32 %63, 31
  %shl.i70 = shl nuw i32 1, %and2.i69
  %shl.i.i71 = shl nuw nsw i32 %64, 2
  %add1.i.i72 = add nuw nsw i32 %shl.i.i71, 8208
  %base.i.i.i73 = getelementptr inbounds %struct.edma_cc, ptr %61, i32 0, i32 2
  %65 = ptrtoint ptr %base.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i.i73, align 4
  %add.ptr.i.i.i74 = getelementptr i8, ptr %66, i32 %add1.i.i72
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i74, i32 %shl.i70) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_trigger_channel.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_error_handler, %if.end32)) #10
          to label %if.then.i75 [label %if.end32], !srcloc !315

if.then.i75:                                      ; preds = %edma_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %61, align 4
  %69 = ptrtoint ptr %base.i.i.i73 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %base.i.i.i73, align 4
  %add.ptr.i.i16.i = getelementptr i8, ptr %70, i32 %add1.i.i72
  %71 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i16.i) #10, !srcloc !311
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_trigger_channel.__UNIQUE_ID_ddebug243, ptr noundef %68, ptr noundef nonnull @.str.80, i32 noundef %64, i32 noundef %71) #10
  br label %if.end32

if.end32:                                         ; preds = %if.then.i75, %edma_stop.exit, %do.end
  call void @_raw_spin_unlock(ptr noundef %lock) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end32, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 32, ptr nonnull %p) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_next_zero_bit_be(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @edma_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %tx_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %tobool.not = icmp eq ptr %chan, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool2.not = icmp eq i32 %len, 0
  %spec.select = or i1 %tobool.not, %tobool2.not
  br i1 %spec.select, label %entry.cleanup_crit_edge, label %if.end, !prof !310

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %or = or i32 %src, %dest
  %or6 = or i32 %or, %len
  %4 = tail call i32 @llvm.cttz.i32(i32 %or6, i1 false) #10, !range !317
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %4)
  %switch.selectcmp = icmp eq i32 %4, 1
  %switch.select = select i1 %switch.selectcmp, i32 32766, i32 32764
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %switch.selectcmp153 = icmp eq i32 %4, 0
  %switch.select154 = select i1 %switch.selectcmp153, i32 32767, i32 %switch.select
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %len)
  %cmp = icmp ult i32 %len, 65536
  br i1 %cmp, label %if.end.if.end8.i.i_crit_edge, label %if.else

if.end.if.end8.i.i_crit_edge:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %rem = urem i32 %len, %switch.select154
  %sub = sub nuw i32 %len, %rem
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %cmp10 = icmp eq i32 %rem, 0
  %.155 = select i1 %cmp10, i32 1, i32 2, !prof !310
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.else, %if.end.if.end8.i.i_crit_edge
  %cmp34 = phi i1 [ true, %if.end.if.end8.i.i_crit_edge ], [ %cmp10, %if.else ]
  %nslots.0 = phi i32 [ 1, %if.end.if.end8.i.i_crit_edge ], [ %.155, %if.else ]
  %width.0 = phi i32 [ %len, %if.end.if.end8.i.i_crit_edge ], [ %switch.select154, %if.else ]
  %pset_len.0 = phi i32 [ %len, %if.end.if.end8.i.i_crit_edge ], [ %sub, %if.else ]
  %5 = mul nuw nsw i32 %nslots.0, 40
  %spec.select.i184 = add nuw nsw i32 %5, 168
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %spec.select.i184, i32 noundef 2848) #13
  %tobool23.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool23.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end30

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end8.i.i
  %pset_nr = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 6
  %6 = ptrtoint ptr %pset_nr to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %nslots.0, ptr %pset_nr, align 4
  %residue_stat = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 12
  %7 = ptrtoint ptr %residue_stat to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %len, ptr %residue_stat, align 4
  %residue = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 11
  %8 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %len, ptr %residue, align 32
  %direction = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 2
  %9 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %direction, align 4
  %echan26 = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 7
  %10 = ptrtoint ptr %echan26 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %chan, ptr %echan26, align 16
  %pset = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13
  %param2.i = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 2
  %div.i = udiv i32 %pset_len.0, %width.0
  %div4.i = udiv i32 %div.i, 65535
  %mul.neg.i = mul i32 %div4.i, -65535
  %sub.i = add i32 %mul.neg.i, %div.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i)
  %tobool6.not.i = icmp eq i32 %sub.i, 0
  %not.tobool6.not.i = xor i1 %tobool6.not.i, true
  %inc.i = zext i1 %not.tobool6.not.i to i32
  %ccnt.0.i = add nuw nsw i32 %div4.i, %inc.i
  %11 = ptrtoint ptr %pset to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %pset_len.0, ptr %pset, align 8
  %addr22.i = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 1
  %12 = ptrtoint ptr %addr22.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %src, ptr %addr22.i, align 4
  %ch_num.i = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 5
  %13 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %ch_num.i, align 4
  %and.i = shl i32 %14, 12
  %shl.i = and i32 %and.i, 268431360
  %src.i = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 3
  %15 = ptrtoint ptr %src.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %src, ptr %src.i, align 4
  %dst.i = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 5
  %16 = ptrtoint ptr %dst.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %dest, ptr %dst.i, align 4
  %shl38.i = shl nuw i32 %width.0, 16
  %or39.i = or i32 %shl38.i, %width.0
  %src_dst_bidx.i = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 6
  %17 = ptrtoint ptr %src_dst_bidx.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %or39.i, ptr %src_dst_bidx.i, align 64
  %src_dst_cidx.i = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 8
  %18 = ptrtoint ptr %src_dst_cidx.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %or39.i, ptr %src_dst_cidx.i, align 8
  %sub.i.op = shl i32 %sub.i, 16
  %shl42.i = select i1 %tobool6.not.i, i32 -65536, i32 %sub.i.op
  %or43.i = or i32 %shl42.i, %width.0
  %a_b_cnt.i = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 4
  %19 = ptrtoint ptr %a_b_cnt.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %or43.i, ptr %a_b_cnt.i, align 8
  %ccnt44.i = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 9
  %20 = ptrtoint ptr %ccnt44.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %ccnt.0.i, ptr %ccnt44.i, align 4
  %link_bcntrld.i = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 7
  %21 = ptrtoint ptr %link_bcntrld.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 -1, ptr %link_bcntrld.i, align 4
  %absync = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 5
  %22 = ptrtoint ptr %absync to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 0, ptr %absync, align 8
  %or33 = or i32 %shl.i, 8388608
  %23 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or33, ptr %param2.i, align 16
  br i1 %cmp34, label %if.then35, label %if.else44

if.then35:                                        ; preds = %if.end30
  %and = and i32 %tx_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool36.not = icmp eq i32 %and, 0
  br i1 %tobool36.not, label %if.then35.if.then87_crit_edge, label %if.then37

if.then35.if.then87_crit_edge:                    ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.then37:                                        ; preds = %if.then35
  call void @__sanitizer_cov_trace_pc() #12
  %or42 = or i32 %shl.i, 9437184
  %24 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 %or42, ptr %param2.i, align 16
  br label %if.end88

if.else44:                                        ; preds = %if.end30
  %or49 = or i32 %shl.i, 12582912
  %25 = ptrtoint ptr %param2.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %or49, ptr %param2.i, align 16
  %arrayidx50 = getelementptr %struct.edma_chan, ptr %chan, i32 0, i32 8, i32 1
  %26 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %cmp51 = icmp slt i32 %27, 0
  br i1 %cmp51, label %if.then52, label %if.else44.if.end69_crit_edge

if.else44.if.end69_crit_edge:                     ; preds = %if.else44
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

if.then52:                                        ; preds = %if.else44
  %ecc = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 3
  %28 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %ecc, align 4
  %chmap_exist6.i = getelementptr inbounds %struct.edma_cc, ptr %29, i32 0, i32 10
  %30 = ptrtoint ptr %chmap_exist6.i to i32
  call void @__asan_load1_noabort(i32 %30)
  %31 = load i8, ptr %chmap_exist6.i, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %31)
  %tobool7.not.i = icmp eq i8 %31, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then52.if.end10.i_crit_edge

if.then52.if.end10.i_crit_edge:                   ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.else.i:                                        ; preds = %if.then52
  call void @__sanitizer_cov_trace_pc() #12
  %num_channels9.i = getelementptr inbounds %struct.edma_cc, ptr %29, i32 0, i32 5
  %32 = ptrtoint ptr %num_channels9.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_channels9.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then52.if.end10.i_crit_edge
  %slot.addr.1.i = phi i32 [ %33, %if.else.i ], [ 0, %if.then52.if.end10.i_crit_edge ]
  %slot_inuse.i = getelementptr inbounds %struct.edma_cc, ptr %29, i32 0, i32 14
  %num_slots.i = getelementptr inbounds %struct.edma_cc, ptr %29, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end14.i.for.cond.i_crit_edge, %if.end10.i
  %slot.addr.2.i = phi i32 [ %slot.addr.1.i, %if.end10.i ], [ %call.i, %if.end14.i.for.cond.i_crit_edge ]
  %34 = ptrtoint ptr %slot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %slot_inuse.i, align 4
  %36 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_slots.i, align 4
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %35, i32 noundef %37, i32 noundef %slot.addr.2.i) #10
  %38 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %39)
  %cmp12.i = icmp eq i32 %call.i, %39
  br i1 %cmp12.i, label %edma_alloc_slot.exit.thread, label %if.end14.i

edma_alloc_slot.exit.thread:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %40 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 -12, ptr %arrayidx50, align 4
  br label %if.then59

if.end14.i:                                       ; preds = %for.cond.i
  %41 = ptrtoint ptr %slot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %slot_inuse.i, align 4
  %call16.i = tail call i32 @_test_and_set_bit(i32 noundef %call.i, ptr noundef %42) #10
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end31.i, label %if.end14.i.for.cond.i_crit_edge

if.end14.i.for.cond.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end31.i:                                       ; preds = %if.end14.i
  %and.i.i = and i32 %call.i, 65535
  %43 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %44)
  %cmp.not.i.i = icmp ult i32 %and.i.i, %44
  br i1 %cmp.not.i.i, label %if.end.i.i157, label %if.end31.i.edma_alloc_slot.exit_crit_edge

if.end31.i.edma_alloc_slot.exit_crit_edge:        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_alloc_slot.exit

if.end.i.i157:                                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i = getelementptr inbounds %struct.edma_cc, ptr %29, i32 0, i32 2
  %45 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i, align 4
  %shl.i.i = shl nuw nsw i32 %and.i.i, 5
  %add.i.i = add nuw nsw i32 %shl.i.i, 16384
  %add.ptr.i.i = getelementptr i8, ptr %46, i32 %add.i.i
  tail call void @mmiocpy(ptr noundef %add.ptr.i.i, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #10
  br label %edma_alloc_slot.exit

edma_alloc_slot.exit:                             ; preds = %if.end.i.i157, %if.end31.i.edma_alloc_slot.exit_crit_edge
  %id.i = getelementptr inbounds %struct.edma_cc, ptr %29, i32 0, i32 3
  %47 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %id.i, align 4
  %shl.i158 = shl i32 %48, 16
  %or.i159 = or i32 %shl.i158, %call.i
  %49 = ptrtoint ptr %arrayidx50 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 %or.i159, ptr %arrayidx50, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i159)
  %cmp58 = icmp slt i32 %or.i159, 0
  br i1 %cmp58, label %edma_alloc_slot.exit.if.then59_crit_edge, label %edma_alloc_slot.exit.if.end69_crit_edge

edma_alloc_slot.exit.if.end69_crit_edge:          ; preds = %edma_alloc_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end69

edma_alloc_slot.exit.if.then59_crit_edge:         ; preds = %edma_alloc_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then59

if.then59:                                        ; preds = %edma_alloc_slot.exit.if.then59_crit_edge, %edma_alloc_slot.exit.thread
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.103) #14
  br label %cleanup

if.end69:                                         ; preds = %edma_alloc_slot.exit.if.end69_crit_edge, %if.else44.if.end69_crit_edge
  %add = add i32 %pset_len.0, %dest
  %add62 = add i32 %pset_len.0, %src
  %rem63 = urem i32 %len, %switch.select154
  %arrayidx65 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 10
  %param2.i162 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 12
  %50 = ptrtoint ptr %arrayidx65 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %rem63, ptr %arrayidx65, align 16
  %addr22.i163 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 11
  %51 = ptrtoint ptr %addr22.i163 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %add62, ptr %addr22.i163, align 4
  %52 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %ch_num.i, align 4
  %and.i165 = shl i32 %53, 12
  %shl.i166 = and i32 %and.i165, 268431360
  %src.i168 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 13
  %54 = ptrtoint ptr %src.i168 to i32
  call void @__asan_store4_noabort(i32 %54)
  store i32 %add62, ptr %src.i168, align 4
  %dst.i169 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 14, i32 0, i32 0, i32 1
  %55 = ptrtoint ptr %dst.i169 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add, ptr %dst.i169, align 4
  %or39.i171 = mul nuw nsw i32 %rem63, 65537
  %src_dst_bidx.i172 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 14, i32 0, i32 0, i32 2
  %56 = ptrtoint ptr %src_dst_bidx.i172 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or39.i171, ptr %src_dst_bidx.i172, align 8
  %src_dst_cidx.i175 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 14, i32 0, i32 0, i32 4
  %57 = ptrtoint ptr %src_dst_cidx.i175 to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %or39.i171, ptr %src_dst_cidx.i175, align 16
  %or43.i177 = or i32 %rem63, 65536
  %a_b_cnt.i178 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 14
  %58 = ptrtoint ptr %a_b_cnt.i178 to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %or43.i177, ptr %a_b_cnt.i178, align 32
  %ccnt44.i179 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 14, i32 0, i32 0, i32 4, i32 1
  %59 = ptrtoint ptr %ccnt44.i179 to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 1, ptr %ccnt44.i179, align 4
  %link_bcntrld.i180 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 1, i32 0, i32 0, i32 14, i32 0, i32 0, i32 3
  %60 = ptrtoint ptr %link_bcntrld.i180 to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 -1, ptr %link_bcntrld.i180, align 4
  %or74 = or i32 %shl.i166, 8388608
  %61 = ptrtoint ptr %param2.i162 to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 %or74, ptr %param2.i162, align 8
  %and75 = and i32 %tx_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and75)
  %tobool76.not = icmp eq i32 %and75, 0
  br i1 %tobool76.not, label %if.end69.if.then87_crit_edge, label %if.then77

if.end69.if.then87_crit_edge:                     ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then87

if.then77:                                        ; preds = %if.end69
  call void @__sanitizer_cov_trace_pc() #12
  %or82 = or i32 %shl.i166, 9437184
  %62 = ptrtoint ptr %param2.i162 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %or82, ptr %param2.i162, align 8
  br label %if.end88

if.then87:                                        ; preds = %if.end69.if.then87_crit_edge, %if.then35.if.then87_crit_edge
  %polled = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 4
  %63 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %63)
  store i8 1, ptr %polled, align 4
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.then77, %if.then37
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call9.i.i, ptr noundef %chan) #10
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 1
  %64 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %tx_flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 4
  %65 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 16
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 5
  %66 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %67 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1, i32 1
  %68 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %69 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %70, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end88.vchan_tx_prep.exit_crit_edge

if.end88.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %node.i, ptr %prev.i.i, align 4
  %72 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2, i32 1
  %73 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %70, ptr %prev3.i.i.i, align 16
  %74 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %node.i, ptr %70, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end88.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.then59, %if.end8.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call9.i.i, %vchan_tx_prep.exit ], [ null, %if.then59 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end8.i.i.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @edma_prep_dma_interleaved(ptr noundef %chan, ptr nocapture noundef readonly %xt, i32 noundef %tx_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %dir = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 2
  %4 = ptrtoint ptr %dir to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dir, align 4
  %6 = add i32 %5, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %6)
  %7 = icmp ult i32 %6, 2
  br i1 %7, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  %frame_size = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 8
  %8 = ptrtoint ptr %frame_size to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %frame_size, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %9)
  %cmp.not = icmp eq i32 %9, 1
  br i1 %cmp.not, label %lor.lhs.false, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

lor.lhs.false:                                    ; preds = %if.end
  %numf = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 7
  %10 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %numf, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %cmp3 = icmp eq i32 %11, 0
  br i1 %cmp3, label %lor.lhs.false.cleanup_crit_edge, label %if.end5

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5:                                          ; preds = %lor.lhs.false
  %sgl = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 9
  %12 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %sgl, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %13)
  %cmp6 = icmp ugt i32 %13, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %11)
  %cmp9 = icmp ugt i32 %11, 65536
  %or.cond = select i1 %cmp6, i1 true, i1 %cmp9
  br i1 %or.cond, label %if.end5.cleanup_crit_edge, label %if.end11

if.end5.cleanup_crit_edge:                        ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end11:                                         ; preds = %if.end5
  %src_inc.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 3
  %14 = ptrtoint ptr %src_inc.i to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %src_inc.i, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %15)
  %tobool.not.i = icmp eq i8 %15, 0
  br i1 %tobool.not.i, label %do.end, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end11
  %src_icg.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 3
  %16 = ptrtoint ptr %src_icg.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %src_icg.i, align 4
  %icg.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 1
  %18 = ptrtoint ptr %icg.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %icg.i, align 4
  %src_sgl.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 5
  %20 = ptrtoint ptr %src_sgl.i to i32
  call void @__asan_load1_noabort(i32 %20)
  %21 = load i8, ptr %src_sgl.i, align 2, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %21)
  %tobool1.i = icmp ne i8 %21, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool2.not.i.i = icmp ne i32 %17, 0
  %brmerge.i.i = or i1 %tobool2.not.i.i, %tobool1.i
  %dir_icg.mux.i.i = select i1 %tobool2.not.i.i, i32 %17, i32 %19
  %brmerge.i.i.not = xor i1 %brmerge.i.i, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir_icg.mux.i.i)
  %tobool.not = icmp eq i32 %dir_icg.mux.i.i, 0
  %or.cond143 = select i1 %brmerge.i.i.not, i1 true, i1 %tobool.not
  %add = select i1 %or.cond143, i32 0, i32 %dir_icg.mux.i.i
  %src_bidx.0 = add i32 %add, %13
  %dst_inc.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 4
  %22 = ptrtoint ptr %dst_inc.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %dst_inc.i, align 1, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool.not.i127 = icmp eq i8 %23, 0
  br i1 %tobool.not.i127, label %do.end45, label %if.then.i.i133

do.end:                                           ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.109, ptr noundef nonnull @.str.110) #14
  br label %cleanup

if.then.i.i133:                                   ; preds = %if.then.i.i
  %dst_icg.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 1, i32 2
  %24 = ptrtoint ptr %dst_icg.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %dst_icg.i, align 4
  %26 = ptrtoint ptr %icg.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %icg.i, align 4
  %dst_sgl.i = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 6
  %28 = ptrtoint ptr %dst_sgl.i to i32
  call void @__asan_load1_noabort(i32 %28)
  %29 = load i8, ptr %dst_sgl.i, align 1, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %29)
  %tobool1.i129 = icmp ne i8 %29, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %25)
  %tobool2.not.i.i130 = icmp ne i32 %25, 0
  %brmerge.i.i131 = or i1 %tobool2.not.i.i130, %tobool1.i129
  %dir_icg.mux.i.i132 = select i1 %tobool2.not.i.i130, i32 %25, i32 %27
  %brmerge.i.i131.not = xor i1 %brmerge.i.i131, true
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dir_icg.mux.i.i132)
  %tobool30.not = icmp eq i32 %dir_icg.mux.i.i132, 0
  %or.cond144 = select i1 %brmerge.i.i131.not, i1 true, i1 %tobool30.not
  %add35 = select i1 %or.cond144, i32 0, i32 %dir_icg.mux.i.i132
  %dst_bidx.0 = add i32 %add35, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %src_bidx.0)
  %cmp48 = icmp sgt i32 %src_bidx.0, 65536
  call void @__sanitizer_cov_trace_const_cmp4(i32 65536, i32 %dst_bidx.0)
  %cmp50 = icmp sgt i32 %dst_bidx.0, 65536
  %or.cond126 = select i1 %cmp48, i1 true, i1 %cmp50
  br i1 %or.cond126, label %if.then.i.i133.cleanup_crit_edge, label %if.end52

if.then.i.i133.cleanup_crit_edge:                 ; preds = %if.then.i.i133
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

do.end45:                                         ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.112, ptr noundef nonnull @.str.110) #14
  br label %cleanup

if.end52:                                         ; preds = %if.then.i.i133
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %30 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %30, i32 noundef 2848, i32 noundef 208) #15
  %tobool55.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool55.not, label %if.end52.cleanup_crit_edge, label %if.end57

if.end52.cleanup_crit_edge:                       ; preds = %if.end52
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end57:                                         ; preds = %if.end52
  %direction = getelementptr inbounds %struct.edma_desc, ptr %call7.i.i, i32 0, i32 2
  %31 = ptrtoint ptr %direction to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 0, ptr %direction, align 4
  %echan58 = getelementptr inbounds %struct.edma_desc, ptr %call7.i.i, i32 0, i32 7
  %32 = ptrtoint ptr %echan58 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %chan, ptr %echan58, align 8
  %pset_nr = getelementptr inbounds %struct.edma_desc, ptr %call7.i.i, i32 0, i32 6
  %33 = ptrtoint ptr %pset_nr to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 1, ptr %pset_nr, align 4
  %param60 = getelementptr inbounds %struct.edma_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 2
  %34 = ptrtoint ptr %xt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %xt, align 4
  %src = getelementptr inbounds %struct.edma_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 3
  %36 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 %35, ptr %src, align 4
  %dst_start = getelementptr inbounds %struct.dma_interleaved_template, ptr %xt, i32 0, i32 1
  %37 = ptrtoint ptr %dst_start to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dst_start, align 4
  %dst = getelementptr inbounds %struct.edma_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 5
  %39 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %38, ptr %dst, align 4
  %40 = ptrtoint ptr %numf to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %numf, align 4
  %shl = shl i32 %41, 16
  %42 = ptrtoint ptr %sgl to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sgl, align 4
  %or = or i32 %shl, %43
  %a_b_cnt = getelementptr inbounds %struct.edma_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 4
  %44 = ptrtoint ptr %a_b_cnt to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %or, ptr %a_b_cnt, align 8
  %ccnt = getelementptr inbounds %struct.edma_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 9
  %45 = ptrtoint ptr %ccnt to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 1, ptr %ccnt, align 4
  %shl65 = shl i32 %dst_bidx.0, 16
  %or66 = or i32 %shl65, %src_bidx.0
  %src_dst_bidx = getelementptr inbounds %struct.edma_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 6
  %46 = ptrtoint ptr %src_dst_bidx to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %or66, ptr %src_dst_bidx, align 8
  %src_dst_cidx = getelementptr inbounds %struct.edma_desc, ptr %call7.i.i, i32 1, i32 0, i32 0, i32 8
  %47 = ptrtoint ptr %src_dst_cidx to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 0, ptr %src_dst_cidx, align 8
  %ch_num = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 5
  %48 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ch_num, align 4
  %and = shl i32 %49, 12
  %shl67 = and i32 %and, 260042752
  %or69 = or i32 %shl67, 8388608
  %50 = ptrtoint ptr %param60 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %or69, ptr %param60, align 8
  %and70 = and i32 %tx_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and70)
  %tobool71.not = icmp eq i32 %and70, 0
  br i1 %tobool71.not, label %if.else75, label %if.then72

if.then72:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %or74 = or i32 %shl67, 9437184
  %51 = ptrtoint ptr %param60 to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %or74, ptr %param60, align 8
  br label %if.end76

if.else75:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #12
  %polled = getelementptr inbounds %struct.edma_desc, ptr %call7.i.i, i32 0, i32 4
  %52 = ptrtoint ptr %polled to i32
  call void @__asan_store1_noabort(i32 %52)
  store i8 1, ptr %polled, align 4
  br label %if.end76

if.end76:                                         ; preds = %if.else75, %if.then72
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #10
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %53 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 %tx_flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %54 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %55 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %56 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %57 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %58 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %59, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end76.vchan_tx_prep.exit_crit_edge

if.end76.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #12
  %60 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %node.i, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %62 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i.i, align 8
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store volatile ptr %node.i, ptr %59, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end76.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.end52.cleanup_crit_edge, %do.end45, %if.then.i.i133.cleanup_crit_edge, %do.end, %if.end5.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %vchan_tx_prep.exit ], [ null, %do.end45 ], [ null, %do.end ], [ null, %entry.cleanup_crit_edge ], [ null, %lor.lhs.false.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ], [ null, %if.end5.cleanup_crit_edge ], [ null, %if.then.i.i133.cleanup_crit_edge ], [ null, %if.end52.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @edma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %direction, i32 noundef %tx_flags, ptr nocapture noundef readnone %context) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %tobool.not = icmp eq ptr %chan, null
  %tobool2.not = icmp eq ptr %sgl, null
  %or.cond = or i1 %tobool.not, %tobool2.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %tobool3.not = icmp eq i32 %sg_len, 0
  %or.cond155 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond155, label %entry.cleanup_crit_edge, label %if.end, !prof !320

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp = icmp eq i32 %direction, 2
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %src_addr8 = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %src_addr8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_addr8, align 4
  %src_addr_width = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 10, i32 3
  %src_maxburst = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 10, i32 5
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp11 = icmp eq i32 %direction, 1
  br i1 %cmp11, label %if.then12, label %do.end

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dst_addr14 = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %dst_addr14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_addr14, align 4
  %dst_addr_width = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 10, i32 4
  %dst_maxburst = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 10, i32 6
  br label %if.end19

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.115, i32 noundef %direction) #14
  br label %cleanup

if.end19:                                         ; preds = %if.then12, %if.then7
  %src_addr.0 = phi i32 [ %5, %if.then7 ], [ 0, %if.then12 ]
  %dst_addr.0 = phi i32 [ 0, %if.then7 ], [ %7, %if.then12 ]
  %dev_width.0.in = phi ptr [ %src_addr_width, %if.then7 ], [ %dst_addr_width, %if.then12 ]
  %burst.0.in = phi ptr [ %src_maxburst, %if.then7 ], [ %dst_maxburst, %if.then12 ]
  %8 = ptrtoint ptr %burst.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %burst.0 = load i32, ptr %burst.0.in, align 4
  %9 = ptrtoint ptr %dev_width.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %dev_width.0 = load i32, ptr %dev_width.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev_width.0)
  %cmp20 = icmp eq i32 %dev_width.0, 0
  br i1 %cmp20, label %do.end24, label %if.end8.i.i

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.115) #14
  br label %cleanup

if.end8.i.i:                                      ; preds = %if.end19
  %10 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %sg_len, i32 40) #10
  %11 = extractvalue { i32, i1 } %10, 1
  %12 = extractvalue { i32, i1 } %10, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %12, i32 168) #10
  %retval.0.i = select i1 %11, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i, i32 noundef 2848) #13
  %tobool28.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool28.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end30

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end30:                                         ; preds = %if.end8.i.i
  %pset_nr = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 6
  %13 = ptrtoint ptr %pset_nr to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 %sg_len, ptr %pset_nr, align 4
  %residue = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 11
  %14 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %residue, align 32
  %direction31 = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 2
  %15 = ptrtoint ptr %direction31 to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %direction, ptr %direction31, align 4
  %echan32 = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %echan32 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %chan, ptr %echan32, align 16
  %17 = tail call i32 @llvm.umin.i32(i32 %sg_len, i32 20)
  %ecc = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 3
  br label %for.body

for.body51.lr.ph:                                 ; preds = %for.inc
  %absync = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 5
  %sub = add i32 %sg_len, -1
  %param = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13, i32 %sub, i32 2
  br label %for.body51

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end30
  %i.0163 = phi i32 [ 0, %if.end30 ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.edma_chan, ptr %chan, i32 0, i32 8, i32 %i.0163
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp35 = icmp slt i32 %19, 0
  br i1 %cmp35, label %if.then36, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then36:                                        ; preds = %for.body
  %20 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ecc, align 4
  %chmap_exist6.i = getelementptr inbounds %struct.edma_cc, ptr %21, i32 0, i32 10
  %22 = ptrtoint ptr %chmap_exist6.i to i32
  call void @__asan_load1_noabort(i32 %22)
  %23 = load i8, ptr %chmap_exist6.i, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %23)
  %tobool7.not.i = icmp eq i8 %23, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then36.if.end10.i_crit_edge

if.then36.if.end10.i_crit_edge:                   ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.else.i:                                        ; preds = %if.then36
  call void @__sanitizer_cov_trace_pc() #12
  %num_channels9.i = getelementptr inbounds %struct.edma_cc, ptr %21, i32 0, i32 5
  %24 = ptrtoint ptr %num_channels9.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %num_channels9.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then36.if.end10.i_crit_edge
  %slot.addr.1.i = phi i32 [ %25, %if.else.i ], [ 0, %if.then36.if.end10.i_crit_edge ]
  %slot_inuse.i = getelementptr inbounds %struct.edma_cc, ptr %21, i32 0, i32 14
  %num_slots.i = getelementptr inbounds %struct.edma_cc, ptr %21, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end14.i.for.cond.i_crit_edge, %if.end10.i
  %slot.addr.2.i = phi i32 [ %slot.addr.1.i, %if.end10.i ], [ %call.i, %if.end14.i.for.cond.i_crit_edge ]
  %26 = ptrtoint ptr %slot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %slot_inuse.i, align 4
  %28 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_slots.i, align 4
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %27, i32 noundef %29, i32 noundef %slot.addr.2.i) #10
  %30 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %31)
  %cmp12.i = icmp eq i32 %call.i, %31
  br i1 %cmp12.i, label %edma_alloc_slot.exit.thread, label %if.end14.i

edma_alloc_slot.exit.thread:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 -12, ptr %arrayidx, align 4
  br label %if.then43

if.end14.i:                                       ; preds = %for.cond.i
  %33 = ptrtoint ptr %slot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %slot_inuse.i, align 4
  %call16.i = tail call i32 @_test_and_set_bit(i32 noundef %call.i, ptr noundef %34) #10
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end31.i, label %if.end14.i.for.cond.i_crit_edge

if.end14.i.for.cond.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end31.i:                                       ; preds = %if.end14.i
  %and.i.i = and i32 %call.i, 65535
  %35 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %36)
  %cmp.not.i.i = icmp ult i32 %and.i.i, %36
  br i1 %cmp.not.i.i, label %if.end.i.i156, label %if.end31.i.edma_alloc_slot.exit_crit_edge

if.end31.i.edma_alloc_slot.exit_crit_edge:        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_alloc_slot.exit

if.end.i.i156:                                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i = getelementptr inbounds %struct.edma_cc, ptr %21, i32 0, i32 2
  %37 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %base.i.i, align 4
  %shl.i.i = shl nuw nsw i32 %and.i.i, 5
  %add.i.i = add nuw nsw i32 %shl.i.i, 16384
  %add.ptr.i.i = getelementptr i8, ptr %38, i32 %add.i.i
  tail call void @mmiocpy(ptr noundef %add.ptr.i.i, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #10
  br label %edma_alloc_slot.exit

edma_alloc_slot.exit:                             ; preds = %if.end.i.i156, %if.end31.i.edma_alloc_slot.exit_crit_edge
  %id.i = getelementptr inbounds %struct.edma_cc, ptr %21, i32 0, i32 3
  %39 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %id.i, align 4
  %shl.i = shl i32 %40, 16
  %or.i = or i32 %shl.i, %call.i
  %41 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 %or.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp42 = icmp slt i32 %or.i, 0
  br i1 %cmp42, label %edma_alloc_slot.exit.if.then43_crit_edge, label %edma_alloc_slot.exit.for.inc_crit_edge

edma_alloc_slot.exit.for.inc_crit_edge:           ; preds = %edma_alloc_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

edma_alloc_slot.exit.if.then43_crit_edge:         ; preds = %edma_alloc_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then43

if.then43:                                        ; preds = %edma_alloc_slot.exit.if.then43_crit_edge, %edma_alloc_slot.exit.thread
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.115) #14
  br label %cleanup

for.inc:                                          ; preds = %edma_alloc_slot.exit.for.inc_crit_edge, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0163, 1
  %exitcond.not = icmp eq i32 %inc, %17
  br i1 %exitcond.not, label %for.body51.lr.ph, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body51:                                       ; preds = %for.inc79.for.body51_crit_edge, %for.body51.lr.ph
  %i.1169 = phi i32 [ 0, %for.body51.lr.ph ], [ %inc80.pre-phi, %for.inc79.for.body51_crit_edge ]
  %sg.0167 = phi ptr [ %sgl, %for.body51.lr.ph ], [ %call81, %for.inc79.for.body51_crit_edge ]
  %dst_addr.1166 = phi i32 [ %dst_addr.0, %for.body51.lr.ph ], [ %.dst_addr.1166, %for.inc79.for.body51_crit_edge ]
  %src_addr.1165 = phi i32 [ %src_addr.0, %for.body51.lr.ph ], [ %src_addr.1165., %for.inc79.for.body51_crit_edge ]
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0167, i32 0, i32 3
  %42 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dma_address, align 4
  %src_addr.1165. = select i1 %cmp, i32 %src_addr.1165, i32 %43
  %.dst_addr.1166 = select i1 %cmp, i32 %43, i32 %dst_addr.1166
  %arrayidx57 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.1169
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0167, i32 0, i32 4
  %44 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_length, align 4
  %call58 = tail call fastcc i32 @edma_config_pset(ptr noundef %chan, ptr noundef %arrayidx57, i32 noundef %src_addr.1165., i32 noundef %.dst_addr.1166, i32 noundef %burst.0, i32 noundef %dev_width.0, i32 noundef %45, i32 noundef %direction)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call58)
  %cmp59 = icmp slt i32 %call58, 0
  br i1 %cmp59, label %if.then60, label %if.end61

if.then60:                                        ; preds = %for.body51
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

if.end61:                                         ; preds = %for.body51
  %46 = ptrtoint ptr %absync to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %call58, ptr %absync, align 8
  %47 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %dma_length, align 4
  %49 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %residue, align 32
  %add = add i32 %50, %48
  store i32 %add, ptr %residue, align 32
  call void @__sanitizer_cov_trace_cmp4(i32 %i.1169, i32 %sub)
  %cmp64 = icmp eq i32 %i.1169, %sub
  br i1 %cmp64, label %if.then65, label %if.else68

if.then65:                                        ; preds = %if.end61
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %param, align 8
  %or = or i32 %52, 1048576
  store i32 %or, ptr %param, align 8
  %.pre = add nuw i32 %i.1169, 1
  br label %for.inc79

if.else68:                                        ; preds = %if.end61
  %add69 = add nuw i32 %i.1169, 1
  %rem = srem i32 %add69, 20
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem)
  %tobool70.not = icmp eq i32 %rem, 0
  br i1 %tobool70.not, label %if.then71, label %if.else68.for.inc79_crit_edge

if.else68.for.inc79_crit_edge:                    ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc79

if.then71:                                        ; preds = %if.else68
  call void @__sanitizer_cov_trace_pc() #12
  %param74 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.1169, i32 2
  %53 = ptrtoint ptr %param74 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %param74, align 8
  %or76 = or i32 %54, 1050624
  store i32 %or76, ptr %param74, align 8
  br label %for.inc79

for.inc79:                                        ; preds = %if.then71, %if.else68.for.inc79_crit_edge, %if.then65
  %inc80.pre-phi = phi i32 [ %.pre, %if.then65 ], [ %add69, %if.then71 ], [ %add69, %if.else68.for.inc79_crit_edge ]
  %call81 = tail call ptr @sg_next(ptr noundef %sg.0167) #10
  %exitcond174.not = icmp eq i32 %inc80.pre-phi, %sg_len
  br i1 %exitcond174.not, label %for.end82, label %for.inc79.for.body51_crit_edge

for.inc79.for.body51_crit_edge:                   ; preds = %for.inc79
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body51

for.end82:                                        ; preds = %for.inc79
  %55 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %residue, align 32
  %residue_stat = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 12
  %57 = ptrtoint ptr %residue_stat to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %residue_stat, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call9.i.i, ptr noundef %chan) #10
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 1
  %58 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store i32 %tx_flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 4
  %59 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 16
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 5
  %60 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %61 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1, i32 1
  %62 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %64, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end82.vchan_tx_prep.exit_crit_edge

for.end82.vchan_tx_prep.exit_crit_edge:           ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end82
  call void @__sanitizer_cov_trace_pc() #12
  %65 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %node.i, ptr %prev.i.i, align 4
  %66 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2, i32 1
  %67 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %64, ptr %prev3.i.i.i, align 16
  %68 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %node.i, ptr %64, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end82.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.then60, %if.then43, %if.end8.i.i.cleanup_crit_edge, %do.end24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end24 ], [ null, %if.then43 ], [ null, %if.then60 ], [ %call9.i.i, %vchan_tx_prep.exit ], [ null, %do.end ], [ null, %if.end8.i.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @edma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %tx_flags) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %tobool.not = icmp eq ptr %chan, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool2.not = icmp eq i32 %buf_len, 0
  %or.cond = or i1 %tobool.not, %tobool2.not
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %period_len)
  %tobool3.not = icmp eq i32 %period_len, 0
  %or.cond288 = or i1 %or.cond, %tobool3.not
  br i1 %or.cond288, label %entry.cleanup_crit_edge, label %if.end, !prof !320

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %direction)
  %cmp = icmp eq i32 %direction, 2
  br i1 %cmp, label %if.then7, label %if.else

if.then7:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %src_addr8 = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 10, i32 1
  %4 = ptrtoint ptr %src_addr8 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_addr8, align 4
  %src_addr_width = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 10, i32 3
  %src_maxburst = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 10, i32 5
  br label %if.end19

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %direction)
  %cmp11 = icmp eq i32 %direction, 1
  br i1 %cmp11, label %if.then12, label %do.end

if.then12:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %dst_addr14 = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 10, i32 2
  %6 = ptrtoint ptr %dst_addr14 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_addr14, align 4
  %dst_addr_width = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 10, i32 4
  %dst_maxburst = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 10, i32 6
  br label %if.end19

do.end:                                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.114, ptr noundef nonnull @.str.121, i32 noundef %direction) #14
  br label %cleanup

if.end19:                                         ; preds = %if.then12, %if.then7
  %dst_addr.0 = phi i32 [ %buf_addr, %if.then7 ], [ %7, %if.then12 ]
  %dev_width.0.in = phi ptr [ %src_addr_width, %if.then7 ], [ %dst_addr_width, %if.then12 ]
  %burst.0.in = phi ptr [ %src_maxburst, %if.then7 ], [ %dst_maxburst, %if.then12 ]
  %src_addr.0 = phi i32 [ %5, %if.then7 ], [ %buf_addr, %if.then12 ]
  %8 = ptrtoint ptr %burst.0.in to i32
  call void @__asan_load4_noabort(i32 %8)
  %burst.0 = load i32, ptr %burst.0.in, align 4
  %9 = ptrtoint ptr %dev_width.0.in to i32
  call void @__asan_load4_noabort(i32 %9)
  %dev_width.0 = load i32, ptr %dev_width.0.in, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dev_width.0)
  %cmp20 = icmp eq i32 %dev_width.0, 0
  br i1 %cmp20, label %do.end24, label %if.end25

do.end24:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.117, ptr noundef nonnull @.str.121) #14
  br label %cleanup

if.end25:                                         ; preds = %if.end19
  %div = udiv i32 %buf_len, %period_len
  %10 = mul i32 %div, %period_len
  %rem.decomposed = sub i32 %buf_len, %10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool26.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool26.not, label %if.end37, label %do.end36, !prof !319

do.end36:                                         ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.125) #14
  br label %cleanup

if.end37:                                         ; preds = %if.end25
  %add = add i32 %div, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 20, i32 %add)
  %cmp38 = icmp sgt i32 %add, 20
  br i1 %cmp38, label %if.then39, label %if.end37.if.end8.i.i_crit_edge

if.end37.if.end8.i.i_crit_edge:                   ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.then39:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_cmp4(i32 %burst.0, i32 %period_len)
  %cmp40 = icmp eq i32 %burst.0, %period_len
  br i1 %cmp40, label %if.then39.if.end8.i.i_crit_edge, label %if.then39.cleanup_crit_edge

if.then39.cleanup_crit_edge:                      ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.then39.if.end8.i.i_crit_edge:                  ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end8.i.i

if.end8.i.i:                                      ; preds = %if.then39.if.end8.i.i_crit_edge, %if.end37.if.end8.i.i_crit_edge
  %nslots.0 = phi i32 [ %add, %if.end37.if.end8.i.i_crit_edge ], [ 2, %if.then39.if.end8.i.i_crit_edge ]
  %period_len.addr.0 = phi i32 [ %period_len, %if.end37.if.end8.i.i_crit_edge ], [ %buf_len, %if.then39.if.end8.i.i_crit_edge ]
  %11 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %nslots.0, i32 40) #10
  %12 = extractvalue { i32, i1 } %11, 1
  %13 = extractvalue { i32, i1 } %11, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %13, i32 168) #10
  %retval.0.i295 = select i1 %12, i32 -1, i32 %spec.select.i
  %call9.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %retval.0.i295, i32 noundef 2848) #13
  %tobool47.not = icmp eq ptr %call9.i.i, null
  br i1 %tobool47.not, label %if.end8.i.i.cleanup_crit_edge, label %if.end49

if.end8.i.i.cleanup_crit_edge:                    ; preds = %if.end8.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end49:                                         ; preds = %if.end8.i.i
  %cyclic = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 3
  %14 = ptrtoint ptr %cyclic to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %cyclic, align 128
  %pset_nr = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 6
  %15 = ptrtoint ptr %pset_nr to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %nslots.0, ptr %pset_nr, align 4
  %residue_stat = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 12
  %16 = ptrtoint ptr %residue_stat to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %buf_len, ptr %residue_stat, align 4
  %residue = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 11
  %17 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %buf_len, ptr %residue, align 32
  %direction50 = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 2
  %18 = ptrtoint ptr %direction50 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %direction, ptr %direction50, align 4
  %echan51 = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 7
  %19 = ptrtoint ptr %echan51 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %chan, ptr %echan51, align 16
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_prep_dma_cyclic.__UNIQUE_ID_ddebug253, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_prep_dma_cyclic, %do.end66)) #10
          to label %if.then63 [label %do.end66], !srcloc !315

if.then63:                                        ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #12
  %ch_num = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 5
  %20 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ch_num, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_prep_dma_cyclic.__UNIQUE_ID_ddebug253, ptr noundef %3, ptr noundef nonnull @.str.127, ptr noundef nonnull @.str.121, i32 noundef %21, i32 noundef %nslots.0, i32 noundef %period_len.addr.0, i32 noundef %buf_len) #10
  br label %do.end66

do.end66:                                         ; preds = %if.then63, %if.end49
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %nslots.0)
  %cmp67314 = icmp sgt i32 %nslots.0, 0
  br i1 %cmp67314, label %for.body.lr.ph, label %do.end66.for.end_crit_edge

do.end66.for.end_crit_edge:                       ; preds = %do.end66
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %do.end66
  %ecc = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 3
  %sub = add nsw i32 %nslots.0, -1
  %add96 = select i1 %cmp, i32 %period_len.addr.0, i32 0
  %add98 = select i1 %cmp, i32 0, i32 %period_len.addr.0
  %ch_num133 = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 5
  %absync = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 5
  %and = and i32 %tx_flags, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool162.not = icmp eq i32 %and, 0
  br label %for.body

for.body:                                         ; preds = %for.inc, %for.body.lr.ph
  %src_addr.1319 = phi i32 [ %src_addr.0, %for.body.lr.ph ], [ %src_addr.2, %for.inc ]
  %i.0316 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc ]
  %dst_addr.1315 = phi i32 [ %dst_addr.0, %for.body.lr.ph ], [ %dst_addr.2, %for.inc ]
  %arrayidx = getelementptr %struct.edma_chan, ptr %chan, i32 0, i32 8, i32 %i.0316
  %22 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp68 = icmp slt i32 %23, 0
  br i1 %cmp68, label %if.then69, label %for.body.if.end81_crit_edge

for.body.if.end81_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

if.then69:                                        ; preds = %for.body
  %24 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %ecc, align 4
  %chmap_exist6.i = getelementptr inbounds %struct.edma_cc, ptr %25, i32 0, i32 10
  %26 = ptrtoint ptr %chmap_exist6.i to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %chmap_exist6.i, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %27)
  %tobool7.not.i = icmp eq i8 %27, 0
  br i1 %tobool7.not.i, label %if.else.i, label %if.then69.if.end10.i_crit_edge

if.then69.if.end10.i_crit_edge:                   ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end10.i

if.else.i:                                        ; preds = %if.then69
  call void @__sanitizer_cov_trace_pc() #12
  %num_channels9.i = getelementptr inbounds %struct.edma_cc, ptr %25, i32 0, i32 5
  %28 = ptrtoint ptr %num_channels9.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_channels9.i, align 4
  br label %if.end10.i

if.end10.i:                                       ; preds = %if.else.i, %if.then69.if.end10.i_crit_edge
  %slot.addr.1.i = phi i32 [ %29, %if.else.i ], [ 0, %if.then69.if.end10.i_crit_edge ]
  %slot_inuse.i = getelementptr inbounds %struct.edma_cc, ptr %25, i32 0, i32 14
  %num_slots.i = getelementptr inbounds %struct.edma_cc, ptr %25, i32 0, i32 8
  br label %for.cond.i

for.cond.i:                                       ; preds = %if.end14.i.for.cond.i_crit_edge, %if.end10.i
  %slot.addr.2.i = phi i32 [ %slot.addr.1.i, %if.end10.i ], [ %call.i, %if.end14.i.for.cond.i_crit_edge ]
  %30 = ptrtoint ptr %slot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %slot_inuse.i, align 4
  %32 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %num_slots.i, align 4
  %call.i = tail call i32 @_find_next_zero_bit_be(ptr noundef %31, i32 noundef %33, i32 noundef %slot.addr.2.i) #10
  %34 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call.i, i32 %35)
  %cmp12.i = icmp eq i32 %call.i, %35
  br i1 %cmp12.i, label %edma_alloc_slot.exit.thread, label %if.end14.i

edma_alloc_slot.exit.thread:                      ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #12
  %36 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %36)
  store i32 -12, ptr %arrayidx, align 4
  br label %if.then76

if.end14.i:                                       ; preds = %for.cond.i
  %37 = ptrtoint ptr %slot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %slot_inuse.i, align 4
  %call16.i = tail call i32 @_test_and_set_bit(i32 noundef %call.i, ptr noundef %38) #10
  %tobool17.not.i = icmp eq i32 %call16.i, 0
  br i1 %tobool17.not.i, label %if.end31.i, label %if.end14.i.for.cond.i_crit_edge

if.end14.i.for.cond.i_crit_edge:                  ; preds = %if.end14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond.i

if.end31.i:                                       ; preds = %if.end14.i
  %and.i.i = and i32 %call.i, 65535
  %39 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i.i, i32 %40)
  %cmp.not.i.i = icmp ult i32 %and.i.i, %40
  br i1 %cmp.not.i.i, label %if.end.i.i296, label %if.end31.i.edma_alloc_slot.exit_crit_edge

if.end31.i.edma_alloc_slot.exit_crit_edge:        ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_alloc_slot.exit

if.end.i.i296:                                    ; preds = %if.end31.i
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i = getelementptr inbounds %struct.edma_cc, ptr %25, i32 0, i32 2
  %41 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base.i.i, align 4
  %shl.i.i = shl nuw nsw i32 %and.i.i, 5
  %add.i.i = add nuw nsw i32 %shl.i.i, 16384
  %add.ptr.i.i = getelementptr i8, ptr %42, i32 %add.i.i
  tail call void @mmiocpy(ptr noundef %add.ptr.i.i, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #10
  br label %edma_alloc_slot.exit

edma_alloc_slot.exit:                             ; preds = %if.end.i.i296, %if.end31.i.edma_alloc_slot.exit_crit_edge
  %id.i = getelementptr inbounds %struct.edma_cc, ptr %25, i32 0, i32 3
  %43 = ptrtoint ptr %id.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %id.i, align 4
  %shl.i = shl i32 %44, 16
  %or.i = or i32 %shl.i, %call.i
  %45 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %or.i, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %or.i)
  %cmp75 = icmp slt i32 %or.i, 0
  br i1 %cmp75, label %edma_alloc_slot.exit.if.then76_crit_edge, label %edma_alloc_slot.exit.if.end81_crit_edge

edma_alloc_slot.exit.if.end81_crit_edge:          ; preds = %edma_alloc_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end81

edma_alloc_slot.exit.if.then76_crit_edge:         ; preds = %edma_alloc_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.then76

if.then76:                                        ; preds = %edma_alloc_slot.exit.if.then76_crit_edge, %edma_alloc_slot.exit.thread
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.102, ptr noundef nonnull @.str.121) #14
  br label %cleanup

if.end81:                                         ; preds = %edma_alloc_slot.exit.if.end81_crit_edge, %for.body.if.end81_crit_edge
  call void @__sanitizer_cov_trace_cmp4(i32 %i.0316, i32 %sub)
  %cmp82 = icmp eq i32 %i.0316, %sub
  br i1 %cmp82, label %if.then83, label %if.end87

if.then83:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #12
  %pset = getelementptr inbounds %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13
  %arrayidx84 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13, i32 %sub
  %46 = call ptr @memcpy(ptr %arrayidx84, ptr %pset, i32 40)
  br label %for.end

if.end87:                                         ; preds = %if.end81
  %arrayidx89 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0316
  %call90 = tail call fastcc i32 @edma_config_pset(ptr noundef %chan, ptr noundef %arrayidx89, i32 noundef %src_addr.1319, i32 noundef %dst_addr.1315, i32 noundef %burst.0, i32 noundef %dev_width.0, i32 noundef %period_len.addr.0, i32 noundef %direction)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call90)
  %cmp91 = icmp slt i32 %call90, 0
  br i1 %cmp91, label %if.then92, label %if.end93

if.then92:                                        ; preds = %if.end87
  call void @__sanitizer_cov_trace_pc() #12
  tail call void @kfree(ptr noundef nonnull %call9.i.i) #10
  br label %cleanup

if.end93:                                         ; preds = %if.end87
  %dst_addr.2 = add i32 %dst_addr.1315, %add96
  %src_addr.2 = add i32 %src_addr.1319, %add98
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_prep_dma_cyclic.__UNIQUE_ID_ddebug254, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_prep_dma_cyclic, %do.body118)) #10
          to label %if.then114 [label %do.body118], !srcloc !315

if.then114:                                       ; preds = %if.end93
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_prep_dma_cyclic.__UNIQUE_ID_ddebug254, ptr noundef %3, ptr noundef nonnull @.str.130, ptr noundef nonnull @.str.121, i32 noundef %i.0316) #10
  br label %do.body118

do.body118:                                       ; preds = %if.then114, %if.end93
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_prep_dma_cyclic.__UNIQUE_ID_ddebug255, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_prep_dma_cyclic, %do.end161)) #10
          to label %if.then132 [label %do.end161], !srcloc !315

if.then132:                                       ; preds = %do.body118
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %ch_num133 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %ch_num133, align 4
  %49 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %arrayidx, align 4
  %param = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0316, i32 2
  %51 = ptrtoint ptr %param to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %param, align 8
  %src = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0316, i32 2, i32 1
  %53 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %src, align 4
  %dst = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0316, i32 2, i32 3
  %55 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %dst, align 4
  %a_b_cnt = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0316, i32 2, i32 2
  %57 = ptrtoint ptr %a_b_cnt to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %a_b_cnt, align 8
  %ccnt = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0316, i32 2, i32 7
  %59 = ptrtoint ptr %ccnt to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %ccnt, align 4
  %src_dst_bidx = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0316, i32 2, i32 4
  %61 = ptrtoint ptr %src_dst_bidx to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %src_dst_bidx, align 8
  %src_dst_cidx = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0316, i32 2, i32 6
  %63 = ptrtoint ptr %src_dst_cidx to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %src_dst_cidx, align 8
  %link_bcntrld = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0316, i32 2, i32 5
  %65 = ptrtoint ptr %link_bcntrld to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %link_bcntrld, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_prep_dma_cyclic.__UNIQUE_ID_ddebug255, ptr noundef %3, ptr noundef nonnull @.str.71, i32 noundef %i.0316, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56, i32 noundef %58, i32 noundef %60, i32 noundef %62, i32 noundef %64, i32 noundef %66) #10
  br label %do.end161

do.end161:                                        ; preds = %if.then132, %do.body118
  %67 = ptrtoint ptr %absync to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %call90, ptr %absync, align 8
  br i1 %tobool162.not, label %do.end161.for.inc_crit_edge, label %if.then163

do.end161.for.inc_crit_edge:                      ; preds = %do.end161
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then163:                                       ; preds = %do.end161
  %param166 = getelementptr %struct.edma_desc, ptr %call9.i.i, i32 0, i32 13, i32 %i.0316, i32 2
  %68 = ptrtoint ptr %param166 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load i32, ptr %param166, align 8
  %or = or i32 %69, 1048576
  store i32 %or, ptr %param166, align 8
  br i1 %cmp38, label %if.then169, label %if.then163.for.inc_crit_edge

if.then163.for.inc_crit_edge:                     ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then169:                                       ; preds = %if.then163
  call void @__sanitizer_cov_trace_pc() #12
  %or174 = or i32 %69, 3145728
  %70 = ptrtoint ptr %param166 to i32
  call void @__asan_store4_noabort(i32 %70)
  store i32 %or174, ptr %param166, align 8
  br label %for.inc

for.inc:                                          ; preds = %if.then169, %if.then163.for.inc_crit_edge, %do.end161.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.0316, 1
  br label %for.body

for.end:                                          ; preds = %if.then83, %do.end66.for.end_crit_edge
  %tc = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 4
  %71 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %tc, align 4
  %tobool177.not = icmp eq ptr %72, null
  br i1 %tobool177.not, label %if.then178, label %for.end.if.end179_crit_edge

for.end.if.end179_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

if.then178:                                       ; preds = %for.end
  %ecc1.i = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 3
  %73 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %ecc1.i, align 4
  %num_tc.i = getelementptr inbounds %struct.edma_cc, ptr %74, i32 0, i32 9
  %75 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load i32, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %76)
  %cmp3.not.i.not = icmp eq i32 %76, 0
  br i1 %cmp3.not.i.not, label %if.then178.if.end179_crit_edge, label %if.end5.i

if.then178.if.end179_crit_edge:                   ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end179

if.end5.i:                                        ; preds = %if.then178
  call void @__sanitizer_cov_trace_pc() #12
  %ch_num.i = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 5
  %77 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %ch_num.i, align 4
  %and2.i = shl i32 %78, 2
  %mul.i = and i32 %and2.i, 28
  %shl.i298 = shl nuw nsw i32 7, %mul.i
  %neg.i = xor i32 %shl.i298, -1
  %79 = lshr i32 %78, 1
  %shl.i.i299 = and i32 %79, 32764
  %add.i.i300 = add nuw nsw i32 %shl.i.i299, 576
  %base.i.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %74, i32 0, i32 2
  %80 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %81, i32 %add.i.i300
  %82 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !311
  %and1.i.i.i = and i32 %82, %neg.i
  %83 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i8.i.i.i = getelementptr i8, ptr %84, i32 %add.i.i300
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i.i, i32 %and1.i.i.i) #10, !srcloc !314
  br label %if.end179

if.end179:                                        ; preds = %if.end5.i, %if.then178.if.end179_crit_edge, %for.end.if.end179_crit_edge
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call9.i.i, ptr noundef %chan) #10
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 1
  %85 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %tx_flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 4
  %86 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 16
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call9.i.i, i32 0, i32 5
  %87 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1
  %88 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 1, i32 1
  %89 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %90 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %91, ptr noundef %desc_allocated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end179.vchan_tx_prep.exit_crit_edge

if.end179.vchan_tx_prep.exit_crit_edge:           ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end179
  call void @__sanitizer_cov_trace_pc() #12
  %92 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %node.i, ptr %prev.i.i, align 4
  %93 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call9.i.i, i32 0, i32 2, i32 1
  %94 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store ptr %91, ptr %prev3.i.i.i, align 16
  %95 = ptrtoint ptr %91 to i32
  call void @__asan_store4_noabort(i32 %95)
  store volatile ptr %node.i, ptr %91, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end179.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #10
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.then92, %if.then76, %if.end8.i.i.cleanup_crit_edge, %if.then39.cleanup_crit_edge, %do.end36, %do.end24, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end24 ], [ null, %do.end36 ], [ null, %if.then76 ], [ %call9.i.i, %vchan_tx_prep.exit ], [ null, %if.then92 ], [ null, %do.end ], [ null, %if.then39.cleanup_crit_edge ], [ null, %if.end8.i.i.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edma_alloc_chan_resources(ptr nocapture noundef %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc1 = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 3
  %0 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ecc1, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tc = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 4
  %4 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %tc, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %id = getelementptr inbounds %struct.edma_tc, ptr %5, i32 0, i32 1
  br label %if.end11.sink.split

if.else:                                          ; preds = %entry
  %tc_list = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 19
  %6 = ptrtoint ptr %tc_list to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %tc_list, align 4
  %tobool4.not = icmp eq ptr %7, null
  br i1 %tobool4.not, label %if.else.if.end11_crit_edge, label %if.then5

if.else.if.end11_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then5:                                         ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %info = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %info, align 4
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  %arrayidx = getelementptr %struct.edma_tc, ptr %7, i32 %11
  %12 = ptrtoint ptr %tc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %arrayidx, ptr %tc, align 4
  %id9 = getelementptr %struct.edma_tc, ptr %7, i32 %11, i32 1
  br label %if.end11.sink.split

if.end11.sink.split:                              ; preds = %if.then5, %if.then
  %id9.sink = phi ptr [ %id9, %if.then5 ], [ %id, %if.then ]
  %13 = ptrtoint ptr %id9.sink to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %id9.sink, align 4
  %conv10 = zext i16 %14 to i32
  br label %if.end11

if.end11:                                         ; preds = %if.end11.sink.split, %if.else.if.end11_crit_edge
  %eventq_no.0 = phi i32 [ -1, %if.else.if.end11_crit_edge ], [ %conv10, %if.end11.sink.split ]
  %call12 = tail call fastcc i32 @edma_alloc_channel(ptr noundef %chan, i32 noundef %eventq_no.0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12)
  %tobool13.not = icmp eq i32 %call12, 0
  br i1 %tobool13.not, label %if.end15, label %if.end11.cleanup_crit_edge

if.end11.cleanup_crit_edge:                       ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end15:                                         ; preds = %if.end11
  %ch_num = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 5
  %15 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %ch_num, align 4
  %call16 = tail call fastcc i32 @edma_alloc_slot(ptr noundef %1, i32 noundef %16)
  %slot = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 8
  %17 = ptrtoint ptr %slot to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %call16, ptr %slot, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call16)
  %cmp = icmp slt i32 %call16, 0
  br i1 %cmp, label %do.end, label %if.end25

do.end:                                           ; preds = %if.end15
  call void @__sanitizer_cov_trace_pc() #12
  %18 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %ch_num, align 4
  %and = and i32 %19, 65535
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.131, i32 noundef %and) #14
  %20 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %slot, align 4
  tail call fastcc void @edma_free_channel(ptr noundef %chan)
  br label %cleanup

if.end25:                                         ; preds = %if.end15
  %22 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ecc1, align 4
  %chmap_exist.i = getelementptr inbounds %struct.edma_cc, ptr %23, i32 0, i32 10
  %24 = ptrtoint ptr %chmap_exist.i to i32
  call void @__asan_load1_noabort(i32 %24)
  %25 = load i8, ptr %chmap_exist.i, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %25)
  %tobool.not.i = icmp eq i8 %25, 0
  br i1 %tobool.not.i, label %if.end25.edma_set_chmap.exit_crit_edge, label %if.then.i

if.end25.edma_set_chmap.exit_crit_edge:           ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_set_chmap.exit

if.then.i:                                        ; preds = %if.end25
  call void @__sanitizer_cov_trace_pc() #12
  %26 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %ch_num, align 4
  %and2.i = shl i32 %call16, 5
  %shl.i = and i32 %and2.i, 2097120
  %and.i = shl i32 %27, 2
  %shl.i.i = and i32 %and.i, 262140
  %add.i.i = add nuw nsw i32 %shl.i.i, 256
  %base.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %23, i32 0, i32 2
  %28 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %29, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %shl.i) #10, !srcloc !314
  br label %edma_set_chmap.exit

edma_set_chmap.exit:                              ; preds = %if.then.i, %if.end25.edma_set_chmap.exit_crit_edge
  %alloced = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 6
  %30 = ptrtoint ptr %alloced to i32
  call void @__asan_store1_noabort(i32 %30)
  store i8 1, ptr %alloced, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_alloc_chan_resources.__UNIQUE_ID_ddebug264, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_alloc_chan_resources, %cleanup)) #10
          to label %if.then34 [label %cleanup], !srcloc !315

if.then34:                                        ; preds = %edma_set_chmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  %31 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ch_num, align 4
  %and36 = and i32 %32, 65535
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %33 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %chan_id, align 4
  %hw_triggered = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 7
  %35 = ptrtoint ptr %hw_triggered to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %hw_triggered, align 1, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool37.not = icmp eq i8 %36, 0
  %cond = select i1 %tobool37.not, ptr @.str.135, ptr @.str.134
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_alloc_chan_resources.__UNIQUE_ID_ddebug264, ptr noundef %3, ptr noundef nonnull @.str.133, i32 noundef %and36, i32 noundef %34, ptr noundef nonnull %cond) #10
  br label %cleanup

cleanup:                                          ; preds = %if.then34, %edma_set_chmap.exit, %do.end, %if.end11.cleanup_crit_edge
  %retval.0 = phi i32 [ %21, %do.end ], [ %call12, %if.end11.cleanup_crit_edge ], [ 0, %if.then34 ], [ 0, %edma_set_chmap.exit ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edma_free_chan_resources(ptr noundef %chan) #0 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 3
  %0 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ecc, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %ch_num.i = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch_num.i, align 4
  %and.i = lshr i32 %5, 5
  %6 = and i32 %and.i, 2047
  %and2.i = and i32 %5, 31
  %shl.i = shl nuw i32 1, %and2.i
  %shl.i.i = shl nuw nsw i32 %6, 2
  %add1.i.i = add nuw nsw i32 %shl.i.i, 8232
  %base.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %add1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %shl.i) #10, !srcloc !314
  %add1.i26.i = add nuw nsw i32 %shl.i.i, 8200
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i28.i = getelementptr i8, ptr %10, i32 %add1.i26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28.i, i32 %shl.i) #10, !srcloc !314
  %add1.i30.i = add nuw nsw i32 %shl.i.i, 8256
  %11 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i32.i = getelementptr i8, ptr %12, i32 %add1.i30.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32.i, i32 %shl.i) #10, !srcloc !314
  %add.i.i = add nuw nsw i32 %shl.i.i, 776
  %13 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i35.i = getelementptr i8, ptr %14, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35.i, i32 %shl.i) #10, !srcloc !314
  %add1.i37.i = add nuw nsw i32 %shl.i.i, 8304
  %15 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %16, i32 %add1.i37.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39.i, i32 %shl.i) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_stop.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_free_chan_resources, %edma_stop.exit)) #10
          to label %if.then.i [label %edma_stop.exit], !srcloc !315

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %17 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %1, align 4
  %add1.i41.i = add nuw nsw i32 %shl.i.i, 8224
  %19 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %20, i32 %add1.i41.i
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #10, !srcloc !311
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_stop.__UNIQUE_ID_ddebug242, ptr noundef %18, ptr noundef nonnull @.str.66, i32 noundef %6, i32 noundef %21) #10
  br label %edma_stop.exit

edma_stop.exit:                                   ; preds = %if.then.i, %entry
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #10
  %22 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %23 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %head.i, ptr %head.i, align 4
  %24 = ptrtoint ptr %22 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %head.i, ptr %22, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #10
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %25 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %26, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %edma_stop.exit.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

edma_stop.exit.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %edma_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %edma_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  %27 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %22, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %29 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %31 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %28, ptr %prev3.i.i.i.i, align 4
  %32 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %26, ptr %28, align 4
  %33 = ptrtoint ptr %30 to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %head.i, ptr %30, align 4
  store ptr %30, ptr %22, align 4
  %34 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %edma_stop.exit.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %35 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %36, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %22, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %39 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %36, i32 0, i32 1
  %41 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %38, ptr %prev3.i.i12.i.i, align 4
  %42 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %36, ptr %38, align 4
  %43 = ptrtoint ptr %40 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %head.i, ptr %40, align 4
  store ptr %40, ptr %22, align 4
  %44 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %45 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %46, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %47 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %22, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %49 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %46, i32 0, i32 1
  %51 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %48, ptr %prev3.i.i18.i.i, align 4
  %52 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %46, ptr %48, align 4
  %53 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %head.i, ptr %50, align 4
  store ptr %50, ptr %22, align 4
  %54 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %55 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %56, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %22, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %59 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %56, i32 0, i32 1
  %61 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %58, ptr %prev3.i.i24.i.i, align 4
  %62 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %56, ptr %58, align 4
  %63 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %head.i, ptr %60, align 4
  store ptr %60, ptr %22, align 4
  %64 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %65 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %66, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #12
  %67 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %22, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %69 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %66, i32 0, i32 1
  %71 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %71)
  store ptr %68, ptr %prev3.i.i30.i.i, align 4
  %72 = ptrtoint ptr %68 to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %66, ptr %68, align 4
  %73 = ptrtoint ptr %70 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %head.i, ptr %70, align 4
  store ptr %70, ptr %22, align 4
  %74 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %74)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %75 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %75)
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
  %76 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %77, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %78 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %78)
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
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %vchan_free_chan_resources.exit
  %i.052 = phi i32 [ 0, %vchan_free_chan_resources.exit ], [ %inc, %for.inc.for.body_crit_edge ]
  %arrayidx = getelementptr %struct.edma_chan, ptr %chan, i32 0, i32 8, i32 %i.052
  %79 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %arrayidx, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %80)
  %cmp2 = icmp sgt i32 %80, -1
  br i1 %cmp2, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  %81 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %ecc, align 4
  %and.i38 = and i32 %80, 65535
  %num_slots.i = getelementptr inbounds %struct.edma_cc, ptr %82, i32 0, i32 8
  %83 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i38, i32 %84)
  %cmp.not.i = icmp ult i32 %and.i38, %84
  br i1 %cmp.not.i, label %edma_write_slot.exit.i, label %if.then.edma_free_slot.exit_crit_edge

if.then.edma_free_slot.exit_crit_edge:            ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_free_slot.exit

edma_write_slot.exit.i:                           ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %base.i.i = getelementptr inbounds %struct.edma_cc, ptr %82, i32 0, i32 2
  %85 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base.i.i, align 4
  %shl.i.i39 = shl nuw nsw i32 %and.i38, 5
  %add.i.i40 = add nuw nsw i32 %shl.i.i39, 16384
  %add.ptr.i.i = getelementptr i8, ptr %86, i32 %add.i.i40
  call void @mmiocpy(ptr noundef %add.ptr.i.i, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #10
  %slot_inuse.i = getelementptr inbounds %struct.edma_cc, ptr %82, i32 0, i32 14
  %87 = ptrtoint ptr %slot_inuse.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %slot_inuse.i, align 4
  call void @_clear_bit(i32 noundef %and.i38, ptr noundef %88) #10
  br label %edma_free_slot.exit

edma_free_slot.exit:                              ; preds = %edma_write_slot.exit.i, %if.then.edma_free_slot.exit_crit_edge
  %89 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 -1, ptr %arrayidx, align 4
  br label %for.inc

for.inc:                                          ; preds = %edma_free_slot.exit, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.052, 1
  %exitcond.not = icmp eq i32 %inc, 20
  br i1 %exitcond.not, label %for.end, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc
  %90 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %ecc, align 4
  %chmap_exist.i = getelementptr inbounds %struct.edma_cc, ptr %91, i32 0, i32 10
  %92 = ptrtoint ptr %chmap_exist.i to i32
  call void @__asan_load1_noabort(i32 %92)
  %93 = load i8, ptr %chmap_exist.i, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %93)
  %tobool.not.i = icmp eq i8 %93, 0
  br i1 %tobool.not.i, label %for.end.edma_set_chmap.exit_crit_edge, label %if.then.i50

for.end.edma_set_chmap.exit_crit_edge:            ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_set_chmap.exit

if.then.i50:                                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #12
  %dummy_slot = getelementptr inbounds %struct.edma_cc, ptr %91, i32 0, i32 20
  %94 = ptrtoint ptr %dummy_slot to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %dummy_slot, align 4
  %96 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load i32, ptr %ch_num.i, align 4
  %and2.i43 = shl i32 %95, 5
  %shl.i44 = and i32 %and2.i43, 2097120
  %and.i45 = shl i32 %97, 2
  %shl.i.i46 = and i32 %and.i45, 262140
  %add.i.i47 = add nuw nsw i32 %shl.i.i46, 256
  %base.i.i.i48 = getelementptr inbounds %struct.edma_cc, ptr %91, i32 0, i32 2
  %98 = ptrtoint ptr %base.i.i.i48 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load ptr, ptr %base.i.i.i48, align 4
  %add.ptr.i.i.i49 = getelementptr i8, ptr %99, i32 %add.i.i47
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i49, i32 %shl.i44) #10, !srcloc !314
  br label %edma_set_chmap.exit

edma_set_chmap.exit:                              ; preds = %if.then.i50, %for.end.edma_set_chmap.exit_crit_edge
  %alloced = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 6
  %100 = ptrtoint ptr %alloced to i32
  call void @__asan_load1_noabort(i32 %100)
  %101 = load i8, ptr %alloced, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %101)
  %tobool.not = icmp eq i8 %101, 0
  br i1 %tobool.not, label %edma_set_chmap.exit.if.end11_crit_edge, label %if.then9

edma_set_chmap.exit.if.end11_crit_edge:           ; preds = %edma_set_chmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end11

if.then9:                                         ; preds = %edma_set_chmap.exit
  call void @__sanitizer_cov_trace_pc() #12
  call fastcc void @edma_free_channel(ptr noundef %chan)
  %102 = ptrtoint ptr %alloced to i32
  call void @__asan_store1_noabort(i32 %102)
  store i8 0, ptr %alloced, align 4
  br label %if.end11

if.end11:                                         ; preds = %if.then9, %edma_set_chmap.exit.if.end11_crit_edge
  %tc = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 4
  %103 = ptrtoint ptr %tc to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr null, ptr %tc, align 4
  %hw_triggered = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 7
  %104 = ptrtoint ptr %hw_triggered to i32
  call void @__asan_store1_noabort(i32 %104)
  store i8 0, ptr %hw_triggered, align 1
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_free_chan_resources.__UNIQUE_ID_ddebug265, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_free_chan_resources, %do.end)) #10
          to label %if.then17 [label %do.end], !srcloc !315

if.then17:                                        ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #12
  %105 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %ch_num.i, align 4
  %and = and i32 %106, 65535
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %107 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %chan_id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_free_chan_resources.__UNIQUE_ID_ddebug265, ptr noundef %3, ptr noundef nonnull @.str.139, i32 noundef %and, i32 noundef %108) #10
  br label %do.end

do.end:                                           ; preds = %if.then17, %if.end11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edma_issue_pending(ptr noundef %chan) #0 align 64 {
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
  %edesc = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 2
  %12 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %edesc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then, label %land.lhs.true.if.end_crit_edge

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then:                                          ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  tail call fastcc void @edma_execute(ptr noundef %chan)
  br label %if.end

if.end:                                           ; preds = %if.then, %land.lhs.true.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef %txstate) #0 align 64 {
entry:
  %txstate_tmp.sroa.4 = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %txstate_tmp.sroa.4)
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #10, !srcloc !321
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
  br i1 %or.cond.i.i, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.if.end_crit_edge

if.then.i.i.if.end_crit_edge:                     ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  br i1 %or.cond16.i.i, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.if.end_crit_edge

if.else.i.i.if.end_crit_edge:                     ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %if.else.i.i.if.end_crit_edge, %if.then.i.i.if.end_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #10
  %edesc = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 2
  %8 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %edesc, align 4
  %tobool10.not = icmp eq ptr %9, null
  br i1 %tobool10.not, label %if.end.if.else_crit_edge, label %land.lhs.true

if.end.if.else_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

land.lhs.true:                                    ; preds = %if.end
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %9, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %cookie)
  %cmp13 = icmp eq i32 %11, %cookie
  br i1 %cmp13, label %if.then15, label %land.lhs.true.if.else_crit_edge

land.lhs.true.if.else_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.else

if.then15:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %call17 = tail call fastcc i32 @edma_residue(ptr noundef nonnull %9)
  br label %land.lhs.true33

if.else:                                          ; preds = %land.lhs.true.if.else_crit_edge, %if.end.if.else_crit_edge
  %call20 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #10
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %land.lhs.true33.thread, label %if.then22

if.then22:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %residue25 = getelementptr inbounds %struct.edma_desc, ptr %call20, i32 0, i32 11
  %12 = ptrtoint ptr %residue25 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %residue25, align 4
  br label %land.lhs.true33

land.lhs.true33.thread:                           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #12
  %txstate.sroa.gep96 = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %spec.store.select.sroa.sel97 = select i1 %tobool.not.i, ptr %txstate_tmp.sroa.4, ptr %txstate.sroa.gep96
  %14 = ptrtoint ptr %spec.store.select.sroa.sel97 to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %spec.store.select.sroa.sel97, align 4
  br label %land.lhs.true36

land.lhs.true33:                                  ; preds = %if.then22, %if.then15
  %call17.sink = phi i32 [ %call17, %if.then15 ], [ %13, %if.then22 ]
  %txstate.sroa.gep = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %spec.store.select.sroa.sel = select i1 %tobool.not.i, ptr %txstate_tmp.sroa.4, ptr %txstate.sroa.gep
  %15 = ptrtoint ptr %spec.store.select.sroa.sel to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call17.sink, ptr %spec.store.select.sroa.sel, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17.sink)
  %tobool35.not = icmp eq i32 %call17.sink, 0
  br i1 %tobool35.not, label %land.lhs.true33.land.lhs.true36_crit_edge, label %land.lhs.true33.if.end54_crit_edge

land.lhs.true33.if.end54_crit_edge:               ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true33.land.lhs.true36_crit_edge:        ; preds = %land.lhs.true33
  call void @__sanitizer_cov_trace_pc() #12
  br label %land.lhs.true36

land.lhs.true36:                                  ; preds = %land.lhs.true33.land.lhs.true36_crit_edge, %land.lhs.true33.thread
  %16 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %edesc, align 4
  %tobool38.not = icmp eq ptr %17, null
  br i1 %tobool38.not, label %land.lhs.true36.if.end54_crit_edge, label %land.lhs.true39

land.lhs.true36.if.end54_crit_edge:               ; preds = %land.lhs.true36
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true39:                                  ; preds = %land.lhs.true36
  %polled = getelementptr inbounds %struct.edma_desc, ptr %17, i32 0, i32 4
  %18 = ptrtoint ptr %polled to i32
  call void @__asan_load1_noabort(i32 %18)
  %19 = load i8, ptr %polled, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %19)
  %tobool41.not = icmp eq i8 %19, 0
  br i1 %tobool41.not, label %land.lhs.true39.if.end54_crit_edge, label %land.lhs.true43

land.lhs.true39.if.end54_crit_edge:               ; preds = %land.lhs.true39
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

land.lhs.true43:                                  ; preds = %land.lhs.true39
  %20 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %17, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %21, i32 %cookie)
  %cmp48 = icmp eq i32 %21, %cookie
  br i1 %cmp48, label %if.then50, label %land.lhs.true43.if.end54_crit_edge

land.lhs.true43.if.end54_crit_edge:               ; preds = %land.lhs.true43
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end54

if.then50:                                        ; preds = %land.lhs.true43
  %ecc1.i = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 3
  %22 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %ecc1.i, align 4
  %ch_num.i = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 5
  %24 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ch_num.i, align 4
  %and.i = lshr i32 %25, 5
  %26 = and i32 %and.i, 2047
  %and2.i = and i32 %25, 31
  %shl.i = shl nuw i32 1, %and2.i
  %shl.i.i = shl nuw nsw i32 %26, 2
  %add1.i.i = add nuw nsw i32 %shl.i.i, 8232
  %base.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %23, i32 0, i32 2
  %27 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %28, i32 %add1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %shl.i) #10, !srcloc !314
  %add1.i26.i = add nuw nsw i32 %shl.i.i, 8200
  %29 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i28.i = getelementptr i8, ptr %30, i32 %add1.i26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28.i, i32 %shl.i) #10, !srcloc !314
  %add1.i30.i = add nuw nsw i32 %shl.i.i, 8256
  %31 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i32.i = getelementptr i8, ptr %32, i32 %add1.i30.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32.i, i32 %shl.i) #10, !srcloc !314
  %add.i.i = add nuw nsw i32 %shl.i.i, 776
  %33 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i35.i = getelementptr i8, ptr %34, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35.i, i32 %shl.i) #10, !srcloc !314
  %add1.i37.i = add nuw nsw i32 %shl.i.i, 8304
  %35 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %36, i32 %add1.i37.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39.i, i32 %shl.i) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_stop.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_tx_status, %edma_stop.exit)) #10
          to label %if.then.i86 [label %edma_stop.exit], !srcloc !315

if.then.i86:                                      ; preds = %if.then50
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %23, align 4
  %add1.i41.i = add nuw nsw i32 %shl.i.i, 8224
  %39 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %40, i32 %add1.i41.i
  %41 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #10, !srcloc !311
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_stop.__UNIQUE_ID_ddebug242, ptr noundef %38, ptr noundef nonnull @.str.66, i32 noundef %26, i32 noundef %41) #10
  br label %edma_stop.exit

edma_stop.exit:                                   ; preds = %if.then.i86, %if.then50
  %42 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %edesc, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chan.i, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i.i = icmp slt i32 %47, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !310

do.body2.i.i:                                     ; preds = %edma_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/ti/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #10, !srcloc !318
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %edma_stop.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %45, i32 0, i32 3
  %48 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %completed_cookie.i.i, align 4
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %43, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_tx_status, %do.end.i)) #10
          to label %if.then.i87 [label %do.end.i], !srcloc !315

if.then.i87:                                      ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %45, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %53, ptr noundef nonnull @.str.69, ptr noundef %43, i32 noundef %47) #10
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i87, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %43, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %55, ptr noundef %desc_completed.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %56 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %node.i, ptr %prev.i.i, align 4
  %57 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %43, i32 0, i32 2, i32 1
  %58 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %55, ptr %prev3.i.i.i, align 4
  %59 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %59)
  store volatile ptr %node.i, ptr %55, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i88, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_cookie_complete.exit

if.then.i.i88:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #10
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i88, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %60 = ptrtoint ptr %edesc to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr null, ptr %edesc, align 4
  tail call fastcc void @edma_execute(ptr noundef %chan)
  br label %if.end54

if.end54:                                         ; preds = %vchan_cookie_complete.exit, %land.lhs.true43.if.end54_crit_edge, %land.lhs.true39.if.end54_crit_edge, %land.lhs.true36.if.end54_crit_edge, %land.lhs.true33.if.end54_crit_edge
  %ret.0 = phi i32 [ 1, %land.lhs.true33.if.end54_crit_edge ], [ 0, %vchan_cookie_complete.exit ], [ 1, %land.lhs.true43.if.end54_crit_edge ], [ 1, %land.lhs.true39.if.end54_crit_edge ], [ 1, %land.lhs.true36.if.end54_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call7) #10
  br label %cleanup

cleanup:                                          ; preds = %if.end54, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0, %if.end54 ], [ 0, %if.then.i.i.cleanup_crit_edge ], [ 0, %if.else.i.i.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %txstate_tmp.sroa.4)
  ret i32 %retval.0
}

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @edma_slave_config(ptr nocapture noundef %chan, ptr nocapture noundef readonly %cfg) #9 align 64 {
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
  %cfg9 = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 10
  %12 = call ptr @memcpy(ptr %cfg9, ptr %cfg, i32 48)
  br label %cleanup

cleanup:                                          ; preds = %if.end8, %lor.lhs.false3.cleanup_crit_edge, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end8 ], [ -22, %lor.lhs.false.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %lor.lhs.false3.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edma_dma_pause(ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %edesc = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 2
  %0 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %edesc, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %ch_num.i = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 5
  %2 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_num.i, align 4
  %ecc.i = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %ecc.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ecc.i, align 4
  %and1.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %and1.i
  %6 = lshr i32 %3, 3
  %shl.i.i = and i32 %6, 8188
  %add1.i.i = add nuw nsw i32 %shl.i.i, 8232
  %base.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %5, i32 0, i32 2
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 %add1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %shl.i) #10, !srcloc !314
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ -22, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edma_dma_resume(ptr nocapture noundef readonly %chan) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ch_num.i = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 5
  %0 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %ch_num.i, align 4
  %ecc.i = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %ecc.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ecc.i, align 4
  %and1.i = and i32 %1, 31
  %shl.i = shl nuw i32 1, %and1.i
  %4 = lshr i32 %1, 3
  %shl.i.i = and i32 %4, 8188
  %add1.i.i = add nuw nsw i32 %shl.i.i, 8240
  %base.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %3, i32 0, i32 2
  %5 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %add1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %shl.i) #10, !srcloc !314
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edma_terminate_all(ptr noundef %chan) #0 align 64 {
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
  %edesc = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 2
  %3 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %edesc, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end12_crit_edge, label %if.then

entry.if.end12_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end12

if.then:                                          ; preds = %entry
  %ecc1.i = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 3
  %5 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %ecc1.i, align 4
  %ch_num.i = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 5
  %7 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %ch_num.i, align 4
  %and.i = lshr i32 %8, 5
  %9 = and i32 %and.i, 2047
  %and2.i = and i32 %8, 31
  %shl.i = shl nuw i32 1, %and2.i
  %shl.i.i = shl nuw nsw i32 %9, 2
  %add1.i.i = add nuw nsw i32 %shl.i.i, 8232
  %base.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %6, i32 0, i32 2
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %11, i32 %add1.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %shl.i) #10, !srcloc !314
  %add1.i26.i = add nuw nsw i32 %shl.i.i, 8200
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i28.i = getelementptr i8, ptr %13, i32 %add1.i26.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28.i, i32 %shl.i) #10, !srcloc !314
  %add1.i30.i = add nuw nsw i32 %shl.i.i, 8256
  %14 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i32.i = getelementptr i8, ptr %15, i32 %add1.i30.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32.i, i32 %shl.i) #10, !srcloc !314
  %add.i.i = add nuw nsw i32 %shl.i.i, 776
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i35.i = getelementptr i8, ptr %17, i32 %add.i.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35.i, i32 %shl.i) #10, !srcloc !314
  %add1.i37.i = add nuw nsw i32 %shl.i.i, 8304
  %18 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %19, i32 %add1.i37.i
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39.i, i32 %shl.i) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_stop.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_terminate_all, %edma_stop.exit)) #10
          to label %if.then.i [label %edma_stop.exit], !srcloc !315

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %20 = ptrtoint ptr %6 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %6, align 4
  %add1.i41.i = add nuw nsw i32 %shl.i.i, 8224
  %22 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %23, i32 %add1.i41.i
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #10, !srcloc !311
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_stop.__UNIQUE_ID_ddebug242, ptr noundef %21, ptr noundef nonnull @.str.66, i32 noundef %9, i32 noundef %24) #10
  br label %edma_stop.exit

edma_stop.exit:                                   ; preds = %if.then.i, %if.then
  %tc = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 4
  %25 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %tc, align 4
  %tobool6.not = icmp eq ptr %26, null
  br i1 %tobool6.not, label %land.lhs.true, label %edma_stop.exit.if.end_crit_edge

edma_stop.exit.if.end_crit_edge:                  ; preds = %edma_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

land.lhs.true:                                    ; preds = %edma_stop.exit
  %27 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %edesc, align 4
  %cyclic = getelementptr inbounds %struct.edma_desc, ptr %28, i32 0, i32 3
  %29 = ptrtoint ptr %cyclic to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %cyclic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %30)
  %tobool8.not = icmp eq i32 %30, 0
  br i1 %tobool8.not, label %land.lhs.true.if.end_crit_edge, label %if.then9

land.lhs.true.if.end_crit_edge:                   ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.then9:                                         ; preds = %land.lhs.true
  %31 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %ecc1.i, align 4
  %default_queue.i = getelementptr inbounds %struct.edma_cc, ptr %32, i32 0, i32 11
  %33 = ptrtoint ptr %default_queue.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %default_queue.i, align 4
  %num_tc.i = getelementptr inbounds %struct.edma_cc, ptr %32, i32 0, i32 9
  %35 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %34, i32 %36)
  %cmp3.not.i = icmp ult i32 %34, %36
  br i1 %cmp3.not.i, label %if.end5.i, label %if.then9.if.end_crit_edge

if.then9.if.end_crit_edge:                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end

if.end5.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #12
  %37 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %ch_num.i, align 4
  %and2.i29 = shl i32 %38, 2
  %mul.i = and i32 %and2.i29, 28
  %and6.i = and i32 %34, 7
  %shl.i31 = shl nuw nsw i32 7, %mul.i
  %neg.i = xor i32 %shl.i31, -1
  %shl7.i = shl nuw nsw i32 %and6.i, %mul.i
  %39 = lshr i32 %38, 1
  %shl.i.i32 = and i32 %39, 32764
  %add.i.i33 = add nuw nsw i32 %shl.i.i32, 576
  %base.i.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %32, i32 0, i32 2
  %40 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %41, i32 %add.i.i33
  %42 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !311
  %and1.i.i.i = and i32 %42, %neg.i
  %or2.i.i.i = or i32 %and1.i.i.i, %shl7.i
  %43 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i8.i.i.i = getelementptr i8, ptr %44, i32 %add.i.i33
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i.i, i32 %or2.i.i.i) #10, !srcloc !314
  br label %if.end

if.end:                                           ; preds = %if.end5.i, %if.then9.if.end_crit_edge, %land.lhs.true.if.end_crit_edge, %edma_stop.exit.if.end_crit_edge
  %45 = ptrtoint ptr %edesc to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %edesc, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %46, i32 0, i32 3
  %47 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chan.i, align 4
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %46, i32 0, i32 2
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %48, i32 0, i32 8
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %48, i32 0, i32 8, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %50, ptr noundef %desc_terminated.i) #10
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.list_add_tail.exit.i_crit_edge

if.end.list_add_tail.exit.i_crit_edge:            ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %51 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %node.i, ptr %prev.i.i, align 4
  %52 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %desc_terminated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %46, i32 0, i32 2, i32 1
  %53 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %50, ptr %prev3.i.i.i, align 4
  %54 = ptrtoint ptr %50 to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile ptr %node.i, ptr %50, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %if.end.list_add_tail.exit.i_crit_edge
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %48, i32 0, i32 9
  %55 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %cyclic.i, align 4
  %cmp.i = icmp eq ptr %56, %46
  br i1 %cmp.i, label %if.then.i34, label %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge

list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_terminate_vdesc.exit

if.then.i34:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %57 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store ptr null, ptr %cyclic.i, align 4
  br label %vchan_terminate_vdesc.exit

vchan_terminate_vdesc.exit:                       ; preds = %if.then.i34, %list_add_tail.exit.i.vchan_terminate_vdesc.exit_crit_edge
  %58 = ptrtoint ptr %edesc to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr null, ptr %edesc, align 4
  br label %if.end12

if.end12:                                         ; preds = %vchan_terminate_vdesc.exit, %entry.if.end12_crit_edge
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %59 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %60, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %if.end12.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.end12.list_splice_tail_init.exit.i_crit_edge:  ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #12
  %61 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i36 = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i36 to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i.i36, align 4
  %66 = ptrtoint ptr %62 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %60, ptr %62, align 4
  %67 = ptrtoint ptr %64 to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %head, ptr %64, align 4
  store ptr %64, ptr %0, align 4
  %68 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.end12.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %69 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %70, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #12
  %71 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %73 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %70, i32 0, i32 1
  %75 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %72, ptr %prev3.i.i12.i, align 4
  %76 = ptrtoint ptr %72 to i32
  call void @__asan_store4_noabort(i32 %76)
  store ptr %70, ptr %72, align 4
  %77 = ptrtoint ptr %74 to i32
  call void @__asan_store4_noabort(i32 %77)
  store ptr %head, ptr %74, align 4
  store ptr %74, ptr %0, align 4
  %78 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %79 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %80, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #12
  %81 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %83 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %80, i32 0, i32 1
  %85 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr %82, ptr %prev3.i.i18.i, align 4
  %86 = ptrtoint ptr %82 to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr %80, ptr %82, align 4
  %87 = ptrtoint ptr %84 to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %head, ptr %84, align 4
  store ptr %84, ptr %0, align 4
  %88 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %88)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %89 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %90, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #12
  %91 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %93 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %90, i32 0, i32 1
  %95 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %95)
  store ptr %92, ptr %prev3.i.i24.i, align 4
  %96 = ptrtoint ptr %92 to i32
  call void @__asan_store4_noabort(i32 %96)
  store ptr %90, ptr %92, align 4
  %97 = ptrtoint ptr %94 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %head, ptr %94, align 4
  store ptr %94, ptr %0, align 4
  %98 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i37 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %99 = ptrtoint ptr %desc_terminated.i37 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %desc_terminated.i37, align 4
  %cmp.i.not.i27.i = icmp eq ptr %100, %desc_terminated.i37
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #12
  %101 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %103 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %100, i32 0, i32 1
  %105 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %102, ptr %prev3.i.i30.i, align 4
  %106 = ptrtoint ptr %102 to i32
  call void @__asan_store4_noabort(i32 %106)
  store ptr %100, ptr %102, align 4
  %107 = ptrtoint ptr %104 to i32
  call void @__asan_store4_noabort(i32 %107)
  store ptr %head, ptr %104, align 4
  store ptr %104, ptr %0, align 4
  %108 = ptrtoint ptr %desc_terminated.i37 to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %desc_terminated.i37, ptr %desc_terminated.i37, align 4
  store ptr %desc_terminated.i37, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #10
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #10
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #10
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @edma_synchronize(ptr noundef %chan) #0 align 64 {
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
define internal void @edma_desc_free(ptr noundef %vdesc) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vdesc) #10
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @edma_config_pset(ptr nocapture noundef readonly %chan, ptr nocapture noundef writeonly %epset, i32 noundef %src_addr, i32 noundef %dst_addr, i32 noundef %burst, i32 noundef %acnt, i32 noundef %dma_length, i32 noundef %direction) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %dev1 = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %2 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev1, align 4
  %param2 = getelementptr inbounds %struct.edma_pset, ptr %epset, i32 0, i32 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %burst)
  %4 = icmp ult i32 %burst, 2
  br i1 %4, label %if.then3, label %if.else9

if.then3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %div = udiv i32 %dma_length, %acnt
  %div4 = udiv i32 %div, 65535
  %mul.neg = mul i32 %div4, -65535
  %sub = add i32 %mul.neg, %div
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub)
  %tobool6.not = icmp eq i32 %sub, 0
  %bcnt.0 = select i1 %tobool6.not, i32 65535, i32 %sub
  %not.tobool6.not = xor i1 %tobool6.not, true
  %inc = zext i1 %not.tobool6.not to i32
  %ccnt.0 = add nuw nsw i32 %div4, %inc
  br label %if.end16

if.else9:                                         ; preds = %entry
  %mul10 = mul i32 %acnt, %burst
  %div11 = udiv i32 %dma_length, %mul10
  call void @__sanitizer_cov_trace_const_cmp4(i32 65535, i32 %div11)
  %cmp12 = icmp sgt i32 %div11, 65535
  br i1 %cmp12, label %do.end, label %if.else9.if.end16_crit_edge

if.else9.if.end16_crit_edge:                      ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end16

do.end:                                           ; preds = %if.else9
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.104) #14
  br label %cleanup

if.end16:                                         ; preds = %if.else9.if.end16_crit_edge, %if.then3
  %bcnt.1 = phi i32 [ %bcnt.0, %if.then3 ], [ %burst, %if.else9.if.end16_crit_edge ]
  %ccnt.1 = phi i32 [ %ccnt.0, %if.then3 ], [ %div11, %if.else9.if.end16_crit_edge ]
  %cidx.0 = phi i32 [ %acnt, %if.then3 ], [ %mul10, %if.else9.if.end16_crit_edge ]
  %absync.0 = phi i32 [ 0, %if.then3 ], [ 1, %if.else9.if.end16_crit_edge ]
  %5 = ptrtoint ptr %epset to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %dma_length, ptr %epset, align 4
  %6 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values.144)
  switch i32 %direction, label %do.end30 [
    i32 1, label %if.end16.if.end33_crit_edge
    i32 2, label %if.then21
    i32 0, label %if.then25
  ]

if.end16.if.end33_crit_edge:                      ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then21:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

if.then25:                                        ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end33

do.end30:                                         ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #12
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.107, ptr noundef nonnull @.str.105) #14
  br label %cleanup

if.end33:                                         ; preds = %if.then25, %if.then21, %if.end16.if.end33_crit_edge
  %dst_addr.sink = phi i32 [ %dst_addr, %if.then21 ], [ %src_addr, %if.then25 ], [ %src_addr, %if.end16.if.end33_crit_edge ]
  %src_bidx.0 = phi i32 [ 0, %if.then21 ], [ %acnt, %if.then25 ], [ %acnt, %if.end16.if.end33_crit_edge ]
  %dst_bidx.0 = phi i32 [ %acnt, %if.then21 ], [ %acnt, %if.then25 ], [ 0, %if.end16.if.end33_crit_edge ]
  %src_cidx.0 = phi i32 [ 0, %if.then21 ], [ %cidx.0, %if.then25 ], [ %cidx.0, %if.end16.if.end33_crit_edge ]
  %dst_cidx.0 = phi i32 [ %cidx.0, %if.then21 ], [ %cidx.0, %if.then25 ], [ 0, %if.end16.if.end33_crit_edge ]
  %addr22 = getelementptr inbounds %struct.edma_pset, ptr %epset, i32 0, i32 1
  %7 = ptrtoint ptr %addr22 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %dst_addr.sink, ptr %addr22, align 4
  %ch_num = getelementptr inbounds %struct.edma_chan, ptr %chan, i32 0, i32 5
  %8 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %ch_num, align 4
  %and = shl i32 %9, 12
  %shl = and i32 %and, 268431360
  %or = or i32 %shl, 4
  %spec.select = select i1 %4, i32 %shl, i32 %or
  %10 = ptrtoint ptr %param2 to i32
  call void @__asan_storeN_noabort(i32 %10, i32 4)
  store i32 %spec.select, ptr %param2, align 1
  %src = getelementptr inbounds %struct.edma_pset, ptr %epset, i32 0, i32 2, i32 1
  %11 = ptrtoint ptr %src to i32
  call void @__asan_storeN_noabort(i32 %11, i32 4)
  store i32 %src_addr, ptr %src, align 1
  %dst = getelementptr inbounds %struct.edma_pset, ptr %epset, i32 0, i32 2, i32 3
  %12 = ptrtoint ptr %dst to i32
  call void @__asan_storeN_noabort(i32 %12, i32 4)
  store i32 %dst_addr, ptr %dst, align 1
  %shl38 = shl i32 %dst_bidx.0, 16
  %or39 = or i32 %shl38, %src_bidx.0
  %src_dst_bidx = getelementptr inbounds %struct.edma_pset, ptr %epset, i32 0, i32 2, i32 4
  %13 = ptrtoint ptr %src_dst_bidx to i32
  call void @__asan_storeN_noabort(i32 %13, i32 4)
  store i32 %or39, ptr %src_dst_bidx, align 1
  %shl40 = shl i32 %dst_cidx.0, 16
  %or41 = or i32 %shl40, %src_cidx.0
  %src_dst_cidx = getelementptr inbounds %struct.edma_pset, ptr %epset, i32 0, i32 2, i32 6
  %14 = ptrtoint ptr %src_dst_cidx to i32
  call void @__asan_storeN_noabort(i32 %14, i32 4)
  store i32 %or41, ptr %src_dst_cidx, align 1
  %shl42 = shl i32 %bcnt.1, 16
  %or43 = or i32 %shl42, %acnt
  %a_b_cnt = getelementptr inbounds %struct.edma_pset, ptr %epset, i32 0, i32 2, i32 2
  %15 = ptrtoint ptr %a_b_cnt to i32
  call void @__asan_storeN_noabort(i32 %15, i32 4)
  store i32 %or43, ptr %a_b_cnt, align 1
  %ccnt44 = getelementptr inbounds %struct.edma_pset, ptr %epset, i32 0, i32 2, i32 7
  %16 = ptrtoint ptr %ccnt44 to i32
  call void @__asan_storeN_noabort(i32 %16, i32 4)
  store i32 %ccnt.1, ptr %ccnt44, align 1
  %link_bcntrld = getelementptr inbounds %struct.edma_pset, ptr %epset, i32 0, i32 2, i32 5
  %17 = ptrtoint ptr %link_bcntrld to i32
  call void @__asan_storeN_noabort(i32 %17, i32 4)
  store i32 -1, ptr %link_bcntrld, align 1
  br label %cleanup

cleanup:                                          ; preds = %if.end33, %do.end30, %do.end
  %retval.0 = phi i32 [ %absync.0, %if.end33 ], [ -22, %do.end30 ], [ -22, %do.end ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @edma_alloc_channel(ptr nocapture noundef readonly %echan, i32 noundef %eventq_no) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc1 = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 3
  %0 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ecc1, align 4
  %ch_num = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 5
  %2 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_num, align 4
  %channels_mask = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 15
  %4 = ptrtoint ptr %channels_mask to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %channels_mask, align 4
  %div3.i = lshr i32 %3, 5
  %arrayidx.i = getelementptr i32, ptr %5, i32 %div3.i
  %6 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load volatile i32, ptr %arrayidx.i, align 4
  %and.i = and i32 %3, 31
  %8 = shl nuw i32 1, %and.i
  %9 = and i32 %7, %8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %9)
  %tobool.not = icmp eq i32 %9, 0
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.136, i32 noundef %3) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %12 = shl nuw nsw i32 %div3.i, 2
  %shl.i = and i32 %12, 8188
  %add1.i = add nuw nsw i32 %shl.i, 832
  %base.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %13 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %14, i32 %add1.i
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !311
  %or1.i.i = or i32 %15, %8
  %16 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %17, i32 %add1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %or1.i.i) #10, !srcloc !314
  %18 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ecc1, align 4
  %20 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %ch_num, align 4
  %and.i15 = lshr i32 %21, 5
  %22 = and i32 %and.i15, 2047
  %and2.i = and i32 %21, 31
  %shl.i16 = shl nuw i32 1, %and2.i
  %shl.i.i = shl nuw nsw i32 %22, 2
  %add1.i.i = add nuw nsw i32 %shl.i.i, 8232
  %base.i.i.i17 = getelementptr inbounds %struct.edma_cc, ptr %19, i32 0, i32 2
  %23 = ptrtoint ptr %base.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i.i17, align 4
  %add.ptr.i.i.i18 = getelementptr i8, ptr %24, i32 %add1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i18, i32 %shl.i16) #10, !srcloc !314
  %add1.i26.i = add nuw nsw i32 %shl.i.i, 8200
  %25 = ptrtoint ptr %base.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i.i17, align 4
  %add.ptr.i.i28.i = getelementptr i8, ptr %26, i32 %add1.i26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28.i, i32 %shl.i16) #10, !srcloc !314
  %add1.i30.i = add nuw nsw i32 %shl.i.i, 8256
  %27 = ptrtoint ptr %base.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i17, align 4
  %add.ptr.i.i32.i = getelementptr i8, ptr %28, i32 %add1.i30.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32.i, i32 %shl.i16) #10, !srcloc !314
  %add.i.i = add nuw nsw i32 %shl.i.i, 776
  %29 = ptrtoint ptr %base.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %base.i.i.i17, align 4
  %add.ptr.i.i35.i = getelementptr i8, ptr %30, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35.i, i32 %shl.i16) #10, !srcloc !314
  %add1.i37.i = add nuw nsw i32 %shl.i.i, 8304
  %31 = ptrtoint ptr %base.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %base.i.i.i17, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %32, i32 %add1.i37.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39.i, i32 %shl.i16) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_stop.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_alloc_channel, %edma_stop.exit)) #10
          to label %if.then.i [label %edma_stop.exit], !srcloc !315

if.then.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #12
  %33 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %19, align 4
  %add1.i41.i = add nuw nsw i32 %shl.i.i, 8224
  %35 = ptrtoint ptr %base.i.i.i17 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %base.i.i.i17, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %36, i32 %add1.i41.i
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #10, !srcloc !311
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_stop.__UNIQUE_ID_ddebug242, ptr noundef %34, ptr noundef nonnull @.str.66, i32 noundef %22, i32 noundef %37) #10
  br label %edma_stop.exit

edma_stop.exit:                                   ; preds = %if.then.i, %if.end
  %38 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ecc1, align 4
  %40 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ch_num, align 4
  %and2.i21 = and i32 %41, 31
  %shl.i22 = shl nuw i32 1, %and2.i21
  %42 = lshr i32 %41, 3
  %shl.i.i23 = and i32 %42, 8188
  %add1.i.i24 = add nuw nsw i32 %shl.i.i23, 8304
  %base.i.i.i25 = getelementptr inbounds %struct.edma_cc, ptr %39, i32 0, i32 2
  %43 = ptrtoint ptr %base.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i.i25, align 4
  %add.ptr.i.i.i26 = getelementptr i8, ptr %44, i32 %add1.i.i24
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i26, i32 %shl.i22) #10, !srcloc !314
  %add1.i12.i = add nuw nsw i32 %shl.i.i23, 8288
  %45 = ptrtoint ptr %base.i.i.i25 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i.i25, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %46, i32 %add1.i12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14.i, i32 %shl.i22) #10, !srcloc !314
  %47 = ptrtoint ptr %ecc1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ecc1, align 4
  %49 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %ch_num, align 4
  %and2.i30 = shl i32 %50, 2
  %mul.i = and i32 %and2.i30, 28
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %eventq_no)
  %cmp.i = icmp eq i32 %eventq_no, -1
  br i1 %cmp.i, label %if.then.i31, label %edma_stop.exit.if.end.i_crit_edge

edma_stop.exit.if.end.i_crit_edge:                ; preds = %edma_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end.i

if.then.i31:                                      ; preds = %edma_stop.exit
  call void @__sanitizer_cov_trace_pc() #12
  %default_queue.i = getelementptr inbounds %struct.edma_cc, ptr %48, i32 0, i32 11
  %51 = ptrtoint ptr %default_queue.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %default_queue.i, align 4
  br label %if.end.i

if.end.i:                                         ; preds = %if.then.i31, %edma_stop.exit.if.end.i_crit_edge
  %eventq_no.addr.0.i = phi i32 [ %52, %if.then.i31 ], [ %eventq_no, %edma_stop.exit.if.end.i_crit_edge ]
  %num_tc.i = getelementptr inbounds %struct.edma_cc, ptr %48, i32 0, i32 9
  %53 = ptrtoint ptr %num_tc.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %num_tc.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %eventq_no.addr.0.i, i32 %54)
  %cmp3.not.i = icmp ult i32 %eventq_no.addr.0.i, %54
  br i1 %cmp3.not.i, label %if.end5.i, label %if.end.i.cleanup_crit_edge

if.end.i.cleanup_crit_edge:                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end5.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #12
  %and6.i = and i32 %eventq_no.addr.0.i, 7
  %shl.i32 = shl nuw nsw i32 7, %mul.i
  %neg.i = xor i32 %shl.i32, -1
  %shl7.i = shl nuw nsw i32 %and6.i, %mul.i
  %55 = lshr i32 %50, 1
  %shl.i.i33 = and i32 %55, 32764
  %add.i.i34 = add nuw nsw i32 %shl.i.i33, 576
  %base.i.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %48, i32 0, i32 2
  %56 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %57, i32 %add.i.i34
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #10, !srcloc !311
  %and1.i.i.i = and i32 %58, %neg.i
  %or2.i.i.i = or i32 %and1.i.i.i, %shl7.i
  %59 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i8.i.i.i = getelementptr i8, ptr %60, i32 %add.i.i34
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i.i, i32 %or2.i.i.i) #10, !srcloc !314
  br label %cleanup

cleanup:                                          ; preds = %if.end5.i, %if.end.i.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -22, %do.end ], [ 0, %if.end.i.cleanup_crit_edge ], [ 0, %if.end5.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @edma_free_channel(ptr nocapture noundef readonly %echan) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %ecc1.i = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 3
  %0 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %ecc1.i, align 4
  %ch_num.i = getelementptr inbounds %struct.edma_chan, ptr %echan, i32 0, i32 5
  %2 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %ch_num.i, align 4
  %and.i = lshr i32 %3, 5
  %4 = and i32 %and.i, 2047
  %and2.i = and i32 %3, 31
  %shl.i = shl nuw i32 1, %and2.i
  %shl.i.i = shl nuw nsw i32 %4, 2
  %add1.i.i = add nuw nsw i32 %shl.i.i, 8232
  %base.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %5 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %6, i32 %add1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 %shl.i) #10, !srcloc !314
  %add1.i26.i = add nuw nsw i32 %shl.i.i, 8200
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i28.i = getelementptr i8, ptr %8, i32 %add1.i26.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i28.i, i32 %shl.i) #10, !srcloc !314
  %add1.i30.i = add nuw nsw i32 %shl.i.i, 8256
  %9 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i32.i = getelementptr i8, ptr %10, i32 %add1.i30.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i32.i, i32 %shl.i) #10, !srcloc !314
  %add.i.i = add nuw nsw i32 %shl.i.i, 776
  %11 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i35.i = getelementptr i8, ptr %12, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i35.i, i32 %shl.i) #10, !srcloc !314
  %add1.i37.i = add nuw nsw i32 %shl.i.i, 8304
  %13 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i39.i = getelementptr i8, ptr %14, i32 %add1.i37.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i39.i, i32 %shl.i) #10, !srcloc !314
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_stop.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_free_channel, %edma_stop.exit)) #10
          to label %if.then.i [label %edma_stop.exit], !srcloc !315

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %15 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %1, align 4
  %add1.i41.i = add nuw nsw i32 %shl.i.i, 8224
  %17 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i43.i = getelementptr i8, ptr %18, i32 %add1.i41.i
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i43.i) #10, !srcloc !311
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_stop.__UNIQUE_ID_ddebug242, ptr noundef %16, ptr noundef nonnull @.str.66, i32 noundef %4, i32 noundef %19) #10
  br label %edma_stop.exit

edma_stop.exit:                                   ; preds = %if.then.i, %entry
  %20 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %ecc1.i, align 4
  %22 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %ch_num.i, align 4
  %and2.i4 = and i32 %23, 31
  %shl.i5 = shl nuw i32 1, %and2.i4
  %24 = lshr i32 %23, 3
  %shl.i.i6 = and i32 %24, 8188
  %add1.i16.i = add nuw nsw i32 %shl.i.i6, 8280
  %base.i.i17.i = getelementptr inbounds %struct.edma_cc, ptr %21, i32 0, i32 2
  %25 = ptrtoint ptr %base.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i17.i, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %26, i32 %add1.i16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18.i, i32 %shl.i5) #10, !srcloc !314
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @edma_residue(ptr nocapture noundef %edesc) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %direction = getelementptr inbounds %struct.edma_desc, ptr %edesc, i32 0, i32 2
  %0 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %direction, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp = icmp eq i32 %1, 2
  %echan1 = getelementptr inbounds %struct.edma_desc, ptr %edesc, i32 0, i32 7
  %2 = ptrtoint ptr %echan1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %echan1, align 4
  %pset2 = getelementptr inbounds %struct.edma_desc, ptr %edesc, i32 0, i32 13
  %ch_num = getelementptr inbounds %struct.edma_chan, ptr %3, i32 0, i32 5
  %4 = ptrtoint ptr %ch_num to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %ch_num, align 4
  %and3 = and i32 %5, 31
  %shl = shl nuw i32 1, %and3
  %ecc = getelementptr inbounds %struct.edma_chan, ptr %3, i32 0, i32 3
  %6 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %ecc, align 4
  %slot = getelementptr inbounds %struct.edma_chan, ptr %3, i32 0, i32 8
  %8 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot, align 4
  %and.i = shl i32 %9, 5
  %shl.i = and i32 %and.i, 2097120
  %add.i = add nuw nsw i32 %shl.i, 16384
  %cond.i = select i1 %cmp, i32 12, i32 4
  %add1.i = or i32 %add.i, %cond.i
  %base.i.i = getelementptr inbounds %struct.edma_cc, ptr %7, i32 0, i32 2
  %10 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 %add1.i
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #10, !srcloc !311
  %13 = ptrtoint ptr %direction to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %direction, align 4
  %15 = add i32 %14, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %15)
  %16 = icmp ult i32 %15, 2
  %add.i114 = select i1 %16, i32 8192, i32 8208
  %17 = lshr i32 %5, 3
  %shl.i115 = and i32 %17, 8188
  %add1.i116 = add nuw nsw i32 %add.i114, %shl.i115
  %18 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %ecc, align 4
  %base.i.i117128 = getelementptr inbounds %struct.edma_cc, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %base.i.i117128 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i117128, align 4
  %add.ptr.i.i118129 = getelementptr i8, ptr %21, i32 %add1.i116
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i118129) #10, !srcloc !311
  %and8130 = and i32 %22, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and8130)
  %tobool9.not131 = icmp eq i32 %and8130, 0
  br i1 %tobool9.not131, label %entry.while.end_crit_edge, label %entry.while.body_crit_edge

entry.while.body_crit_edge:                       ; preds = %entry
  br label %while.body

entry.while.end_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.body:                                       ; preds = %do.end35.while.body_crit_edge, %entry.while.body_crit_edge
  %loop_count.0132 = phi i32 [ %dec, %do.end35.while.body_crit_edge ], [ 1000, %entry.while.body_crit_edge ]
  %23 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %ecc, align 4
  %25 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %slot, align 4
  %and.i119 = shl i32 %26, 5
  %shl.i120 = and i32 %and.i119, 2097120
  %add.i121 = add nuw nsw i32 %shl.i120, 16384
  %add1.i123 = or i32 %add.i121, %cond.i
  %base.i.i124 = getelementptr inbounds %struct.edma_cc, ptr %24, i32 0, i32 2
  %27 = ptrtoint ptr %base.i.i124 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i124, align 4
  %add.ptr.i.i125 = getelementptr i8, ptr %28, i32 %add1.i123
  %29 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i125) #10, !srcloc !311
  call void @__sanitizer_cov_trace_cmp4(i32 %29, i32 %12)
  %cmp15.not = icmp eq i32 %29, %12
  br i1 %cmp15.not, label %if.end17, label %while.body.while.end_crit_edge

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.end17:                                         ; preds = %while.body
  %dec = add nsw i32 %loop_count.0132, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %tobool18.not = icmp eq i32 %dec, 0
  br i1 %tobool18.not, label %do.body, label %do.end35

do.body:                                          ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #12
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @edma_residue.descriptor, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@edma_residue, %while.end)) #10
          to label %land.lhs.true [label %while.end], !srcloc !315

land.lhs.true:                                    ; preds = %do.body
  %call26 = tail call i32 @___ratelimit(ptr noundef nonnull @edma_residue._rs, ptr noundef nonnull @.str.141) #10
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call26)
  %tobool27.not = icmp eq i32 %call26, 0
  br i1 %tobool27.not, label %land.lhs.true.while.end_crit_edge, label %if.then28

land.lhs.true.while.end_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #12
  %30 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %3, align 4
  %dev = getelementptr inbounds %struct.dma_device, ptr %31, i32 0, i32 15
  %32 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @edma_residue.descriptor, ptr noundef %33, ptr noundef nonnull @.str.142, ptr noundef nonnull @.str.141) #10
  br label %while.end

do.end35:                                         ; preds = %if.end17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #10, !srcloc !322
  tail call void asm sideeffect "nop; nop; nop; nop; nop; nop; nop; nop; nop; nop;", ""() #10, !srcloc !323
  %34 = ptrtoint ptr %ecc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %ecc, align 4
  %base.i.i117 = getelementptr inbounds %struct.edma_cc, ptr %35, i32 0, i32 2
  %36 = ptrtoint ptr %base.i.i117 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i117, align 4
  %add.ptr.i.i118 = getelementptr i8, ptr %37, i32 %add1.i116
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i118) #10, !srcloc !311
  %and8 = and i32 %38, %shl
  %tobool9.not = icmp eq i32 %and8, 0
  br i1 %tobool9.not, label %do.end35.while.end_crit_edge, label %do.end35.while.body_crit_edge

do.end35.while.body_crit_edge:                    ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.body

do.end35.while.end_crit_edge:                     ; preds = %do.end35
  call void @__sanitizer_cov_trace_pc() #12
  br label %while.end

while.end:                                        ; preds = %do.end35.while.end_crit_edge, %if.then28, %land.lhs.true.while.end_crit_edge, %do.body, %while.body.while.end_crit_edge, %entry.while.end_crit_edge
  %pos.1 = phi i32 [ %12, %if.then28 ], [ %12, %land.lhs.true.while.end_crit_edge ], [ %12, %do.body ], [ %12, %entry.while.end_crit_edge ], [ %12, %do.end35.while.end_crit_edge ], [ %29, %while.body.while.end_crit_edge ]
  %cyclic = getelementptr inbounds %struct.edma_desc, ptr %edesc, i32 0, i32 3
  %39 = ptrtoint ptr %cyclic to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %cyclic, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %40)
  %tobool40.not = icmp eq i32 %40, 0
  br i1 %tobool40.not, label %if.end44, label %if.then41

if.then41:                                        ; preds = %while.end
  call void @__sanitizer_cov_trace_pc() #12
  %addr = getelementptr inbounds %struct.edma_desc, ptr %edesc, i32 1, i32 0, i32 0, i32 1
  %41 = ptrtoint ptr %addr to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %addr, align 4
  %sub.neg = sub i32 %42, %pos.1
  %residue = getelementptr inbounds %struct.edma_desc, ptr %edesc, i32 0, i32 11
  %43 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %residue, align 4
  %sub42 = add i32 %sub.neg, %44
  %residue_stat = getelementptr inbounds %struct.edma_desc, ptr %edesc, i32 0, i32 12
  %45 = ptrtoint ptr %residue_stat to i32
  call void @__asan_store4_noabort(i32 %45)
  store i32 %sub42, ptr %residue_stat, align 4
  br label %cleanup

if.end44:                                         ; preds = %while.end
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %pos.1)
  %tobool45.not = icmp eq i32 %pos.1, 0
  br i1 %tobool45.not, label %if.end44.cleanup_crit_edge, label %if.end47

if.end44.cleanup_crit_edge:                       ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #12
  br label %cleanup

if.end47:                                         ; preds = %if.end44
  %processed_stat = getelementptr inbounds %struct.edma_desc, ptr %edesc, i32 0, i32 9
  %46 = ptrtoint ptr %processed_stat to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %processed_stat, align 4
  %processed = getelementptr inbounds %struct.edma_desc, ptr %edesc, i32 0, i32 8
  %48 = ptrtoint ptr %processed to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %processed, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %47, i32 %49)
  %cmp49134 = icmp slt i32 %47, %49
  br i1 %cmp49134, label %for.body.lr.ph, label %if.end47.for.end_crit_edge

if.end47.for.end_crit_edge:                       ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end47
  %add.ptr = getelementptr %struct.edma_pset, ptr %pset2, i32 %47
  %residue_stat63 = getelementptr inbounds %struct.edma_desc, ptr %edesc, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %if.end60.for.body_crit_edge, %for.body.lr.ph
  %i.0136 = phi i32 [ %47, %for.body.lr.ph ], [ %inc65, %if.end60.for.body_crit_edge ]
  %pset.0135 = phi ptr [ %add.ptr, %for.body.lr.ph ], [ %incdec.ptr, %if.end60.for.body_crit_edge ]
  %addr50 = getelementptr inbounds %struct.edma_pset, ptr %pset.0135, i32 0, i32 1
  %50 = ptrtoint ptr %addr50 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %addr50, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %51, i32 %pos.1)
  %cmp51.not = icmp ugt i32 %51, %pos.1
  br i1 %cmp51.not, label %for.body.if.end60_crit_edge, label %land.lhs.true52

for.body.if.end60_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

land.lhs.true52:                                  ; preds = %for.body
  %52 = ptrtoint ptr %pset.0135 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %pset.0135, align 4
  %add = add i32 %53, %51
  call void @__sanitizer_cov_trace_cmp4(i32 %pos.1, i32 %add)
  %cmp54 = icmp ult i32 %pos.1, %add
  br i1 %cmp54, label %if.then55, label %land.lhs.true52.if.end60_crit_edge

land.lhs.true52.if.end60_crit_edge:               ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  br label %if.end60

if.then55:                                        ; preds = %land.lhs.true52
  call void @__sanitizer_cov_trace_pc() #12
  %54 = ptrtoint ptr %residue_stat63 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %residue_stat63, align 4
  %sub58.neg = sub i32 %51, %pos.1
  %sub59 = add i32 %sub58.neg, %55
  br label %cleanup

if.end60:                                         ; preds = %land.lhs.true52.if.end60_crit_edge, %for.body.if.end60_crit_edge
  %56 = ptrtoint ptr %processed_stat to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %processed_stat, align 4
  %inc = add i32 %57, 1
  store i32 %inc, ptr %processed_stat, align 4
  %58 = ptrtoint ptr %pset.0135 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %pset.0135, align 4
  %60 = ptrtoint ptr %residue_stat63 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %residue_stat63, align 4
  %sub64 = sub i32 %61, %59
  store i32 %sub64, ptr %residue_stat63, align 4
  %inc65 = add i32 %i.0136, 1
  %incdec.ptr = getelementptr %struct.edma_pset, ptr %pset.0135, i32 1
  %exitcond.not = icmp eq i32 %inc65, %49
  br i1 %exitcond.not, label %if.end60.for.end_crit_edge, label %if.end60.for.body_crit_edge

if.end60.for.body_crit_edge:                      ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

if.end60.for.end_crit_edge:                       ; preds = %if.end60
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.end:                                          ; preds = %if.end60.for.end_crit_edge, %if.end47.for.end_crit_edge
  %residue_stat66 = getelementptr inbounds %struct.edma_desc, ptr %edesc, i32 0, i32 12
  %62 = ptrtoint ptr %residue_stat66 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %residue_stat66, align 4
  br label %cleanup

cleanup:                                          ; preds = %for.end, %if.then55, %if.end44.cleanup_crit_edge, %if.then41
  %retval.0 = phi i32 [ %sub42, %if.then41 ], [ %sub59, %if.then55 ], [ %63, %for.end ], [ 0, %if.end44.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @___ratelimit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_slave_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edma_pm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %slave_chans = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %slave_chans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_chans, align 4
  %num_channels = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp7.not = icmp eq i32 %5, 0
  br i1 %cmp7.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %entry.for.body_crit_edge
  %i.08 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %alloced = getelementptr %struct.edma_chan, ptr %3, i32 %i.08, i32 6
  %6 = ptrtoint ptr %alloced to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %alloced, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool.not = icmp eq i8 %7, 0
  br i1 %tobool.not, label %for.body.for.inc_crit_edge, label %if.then

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  %ecc1.i = getelementptr %struct.edma_chan, ptr %3, i32 %i.08, i32 3
  %8 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %ecc1.i, align 4
  %ch_num.i = getelementptr %struct.edma_chan, ptr %3, i32 %i.08, i32 5
  %10 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %ch_num.i, align 4
  %and2.i = and i32 %11, 31
  %shl.i = shl nuw i32 1, %and2.i
  %12 = lshr i32 %11, 3
  %shl.i.i = and i32 %12, 8188
  %add1.i16.i = add nuw nsw i32 %shl.i.i, 8280
  %base.i.i17.i = getelementptr inbounds %struct.edma_cc, ptr %9, i32 0, i32 2
  %13 = ptrtoint ptr %base.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %base.i.i17.i, align 4
  %add.ptr.i.i18.i = getelementptr i8, ptr %14, i32 %add1.i16.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i18.i, i32 %shl.i) #10, !srcloc !314
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.08, 1
  %15 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %num_channels, align 4
  %cmp = icmp ult i32 %inc, %16
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edma_pm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %slave_chans = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 18
  %2 = ptrtoint ptr %slave_chans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %slave_chans, align 4
  %dummy_slot = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 20
  %4 = ptrtoint ptr %dummy_slot to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dummy_slot, align 4
  %and.i = and i32 %5, 65535
  %num_slots.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 8
  %6 = ptrtoint ptr %num_slots.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %num_slots.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %and.i, i32 %7)
  %cmp.not.i = icmp ult i32 %and.i, %7
  br i1 %cmp.not.i, label %if.end.i, label %entry.edma_write_slot.exit_crit_edge

entry.edma_write_slot.exit_crit_edge:             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  br label %edma_write_slot.exit

if.end.i:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #12
  %base.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %shl.i = shl nuw nsw i32 %and.i, 5
  %add.i = add nuw nsw i32 %shl.i, 16384
  %add.ptr.i = getelementptr i8, ptr %9, i32 %add.i
  tail call void @mmiocpy(ptr noundef %add.ptr.i, ptr noundef nonnull @dummy_paramset, i32 noundef 32) #10
  br label %edma_write_slot.exit

edma_write_slot.exit:                             ; preds = %if.end.i, %entry.edma_write_slot.exit_crit_edge
  %info = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 1
  %10 = ptrtoint ptr %info to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %info, align 4
  %queue_priority_mapping1 = getelementptr inbounds %struct.edma_soc_info, ptr %11, i32 0, i32 3
  %12 = ptrtoint ptr %queue_priority_mapping1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %queue_priority_mapping1, align 4
  %14 = ptrtoint ptr %13 to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %13, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %15)
  %cmp.not63 = icmp eq i8 %15, -1
  br i1 %cmp.not63, label %edma_write_slot.exit.for.cond10.preheader_crit_edge, label %for.body.lr.ph

edma_write_slot.exit.for.cond10.preheader_crit_edge: ; preds = %edma_write_slot.exit
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond10.preheader

for.body.lr.ph:                                   ; preds = %edma_write_slot.exit
  %base.i.i.i = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  br label %for.body

for.cond10.preheader:                             ; preds = %for.body.for.cond10.preheader_crit_edge, %edma_write_slot.exit.for.cond10.preheader_crit_edge
  %num_channels = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 5
  %16 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %num_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %cmp1165.not = icmp eq i32 %17, 0
  br i1 %cmp1165.not, label %for.cond10.preheader.for.end21_crit_edge, label %for.body13.lr.ph

for.cond10.preheader.for.end21_crit_edge:         ; preds = %for.cond10.preheader
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.body13.lr.ph:                                 ; preds = %for.cond10.preheader
  %base.i.i.i47 = getelementptr inbounds %struct.edma_cc, ptr %1, i32 0, i32 2
  br label %for.body13

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %18 = phi i8 [ %15, %for.body.lr.ph ], [ %28, %for.body.for.body_crit_edge ]
  %i.064 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %conv = sext i8 %18 to i32
  %arrayidx8 = getelementptr [2 x i8], ptr %13, i32 %i.064, i32 1
  %19 = ptrtoint ptr %arrayidx8 to i32
  call void @__asan_load1_noabort(i32 %19)
  %20 = load i8, ptr %arrayidx8, align 1
  %mul.i = shl nsw i32 %conv, 2
  %shl.i44 = shl i32 7, %mul.i
  %neg.i = xor i32 %shl.i44, -1
  %21 = and i8 %20, 7
  %and.i45 = zext i8 %21 to i32
  %shl1.i = shl i32 %and.i45, %mul.i
  %22 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %23, i32 644
  %24 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #10, !srcloc !311
  %and1.i.i = and i32 %24, %neg.i
  %or2.i.i = or i32 %and1.i.i, %shl1.i
  %25 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i8.i.i = getelementptr i8, ptr %26, i32 644
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i8.i.i, i32 %or2.i.i) #10, !srcloc !314
  %inc = add i32 %i.064, 1
  %arrayidx = getelementptr [2 x i8], ptr %13, i32 %inc
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load1_noabort(i32 %27)
  %28 = load i8, ptr %arrayidx, align 1
  %cmp.not = icmp eq i8 %28, -1
  br i1 %cmp.not, label %for.body.for.cond10.preheader_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body

for.body.for.cond10.preheader_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.cond10.preheader

for.body13:                                       ; preds = %for.inc19.for.body13_crit_edge, %for.body13.lr.ph
  %i.166 = phi i32 [ 0, %for.body13.lr.ph ], [ %inc20, %for.inc19.for.body13_crit_edge ]
  %alloced = getelementptr %struct.edma_chan, ptr %3, i32 %i.166, i32 6
  %29 = ptrtoint ptr %alloced to i32
  call void @__asan_load1_noabort(i32 %29)
  %30 = load i8, ptr %alloced, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %30)
  %tobool.not = icmp eq i8 %30, 0
  br i1 %tobool.not, label %for.body13.for.inc19_crit_edge, label %if.then

for.body13.for.inc19_crit_edge:                   ; preds = %for.body13
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19

if.then:                                          ; preds = %for.body13
  %and = and i32 %i.166, 31
  %shl = shl nuw i32 1, %and
  %31 = ashr i32 %i.166, 3
  %32 = add nsw i32 %31, 832
  %add1.i = and i32 %32, -4
  %33 = ptrtoint ptr %base.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %base.i.i.i47, align 4
  %add.ptr.i.i.i48 = getelementptr i8, ptr %34, i32 %add1.i
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i48) #10, !srcloc !311
  %or1.i.i = or i32 %35, %shl
  %36 = ptrtoint ptr %base.i.i.i47 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i.i47, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %37, i32 %add1.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %or1.i.i) #10, !srcloc !314
  %ecc1.i = getelementptr %struct.edma_chan, ptr %3, i32 %i.166, i32 3
  %38 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ecc1.i, align 4
  %ch_num.i = getelementptr %struct.edma_chan, ptr %3, i32 %i.166, i32 5
  %40 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ch_num.i, align 4
  %and2.i = and i32 %41, 31
  %shl.i49 = shl nuw i32 1, %and2.i
  %42 = lshr i32 %41, 3
  %shl.i.i = and i32 %42, 8188
  %add1.i.i = add nuw nsw i32 %shl.i.i, 8304
  %base.i.i.i50 = getelementptr inbounds %struct.edma_cc, ptr %39, i32 0, i32 2
  %43 = ptrtoint ptr %base.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %base.i.i.i50, align 4
  %add.ptr.i.i.i51 = getelementptr i8, ptr %44, i32 %add1.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i51, i32 %shl.i49) #10, !srcloc !314
  %add1.i12.i = add nuw nsw i32 %shl.i.i, 8288
  %45 = ptrtoint ptr %base.i.i.i50 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %base.i.i.i50, align 4
  %add.ptr.i.i14.i = getelementptr i8, ptr %46, i32 %add1.i12.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i14.i, i32 %shl.i49) #10, !srcloc !314
  %47 = ptrtoint ptr %ecc1.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %ecc1.i, align 4
  %chmap_exist.i = getelementptr inbounds %struct.edma_cc, ptr %48, i32 0, i32 10
  %49 = ptrtoint ptr %chmap_exist.i to i32
  call void @__asan_load1_noabort(i32 %49)
  %50 = load i8, ptr %chmap_exist.i, align 4, !range !316
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %50)
  %tobool.not.i = icmp eq i8 %50, 0
  br i1 %tobool.not.i, label %if.then.for.inc19_crit_edge, label %if.then.i

if.then.for.inc19_crit_edge:                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.inc19

if.then.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #12
  %slot = getelementptr %struct.edma_chan, ptr %3, i32 %i.166, i32 8
  %51 = ptrtoint ptr %slot to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %slot, align 4
  %53 = ptrtoint ptr %ch_num.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %ch_num.i, align 4
  %and2.i55 = shl i32 %52, 5
  %shl.i56 = and i32 %and2.i55, 2097120
  %and.i57 = shl i32 %54, 2
  %shl.i.i58 = and i32 %and.i57, 262140
  %add.i.i = add nuw nsw i32 %shl.i.i58, 256
  %base.i.i.i59 = getelementptr inbounds %struct.edma_cc, ptr %48, i32 0, i32 2
  %55 = ptrtoint ptr %base.i.i.i59 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i.i59, align 4
  %add.ptr.i.i.i60 = getelementptr i8, ptr %56, i32 %add.i.i
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i60, i32 %shl.i56) #10, !srcloc !314
  br label %for.inc19

for.inc19:                                        ; preds = %if.then.i, %if.then.for.inc19_crit_edge, %for.body13.for.inc19_crit_edge
  %inc20 = add nuw i32 %i.166, 1
  %57 = ptrtoint ptr %num_channels to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %num_channels, align 4
  %cmp11 = icmp ult i32 %inc20, %58
  br i1 %cmp11, label %for.inc19.for.body13_crit_edge, label %for.inc19.for.end21_crit_edge

for.inc19.for.end21_crit_edge:                    ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.end21

for.inc19.for.body13_crit_edge:                   ; preds = %for.inc19
  call void @__sanitizer_cov_trace_pc() #12
  br label %for.body13

for.end21:                                        ; preds = %for.inc19.for.end21_crit_edge, %for.cond10.preheader.for.end21_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @edma_tptc_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #12
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @pm_runtime_enable(ptr noundef %dev) #10
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #10
  ret i32 %call.i
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #6

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

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #11 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #11 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 142)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { nounwind }
attributes #11 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #12 = { nomerge }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !10, !11, !13, !15, !17, !18, !19, !20, !21, !22, !23, !25, !27, !28, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !44, !46, !48, !50, !51, !52, !54, !55, !56, !58, !60, !62, !63, !64, !65, !67, !68, !69, !71, !72, !73, !75, !76, !77, !79, !80, !81, !82, !84, !86, !88, !90, !91, !92, !94, !95, !97, !98, !100, !101, !103, !104, !106, !107, !109, !110, !111, !112, !114, !116, !117, !118, !120, !121, !122, !124, !125, !127, !128, !129, !131, !132, !133, !134, !136, !137, !138, !140, !141, !143, !144, !146, !147, !149, !150, !151, !152, !154, !155, !156, !158, !159, !160, !162, !163, !165, !167, !168, !170, !171, !172, !174, !175, !176, !178, !179, !181, !182, !184, !185, !186, !188, !189, !190, !192, !193, !195, !196, !197, !198, !200, !201, !202, !204, !205, !206, !208, !209, !210, !211, !213, !214, !215, !216, !218, !219, !220, !222, !223, !224, !225, !227, !228, !229, !231, !232, !233, !234, !236, !237, !238, !240, !241, !243, !244, !245, !247, !248, !250, !251, !252, !254, !255, !257, !258, !260, !261, !263, !265, !266, !267, !268, !270, !271, !272, !273, !275, !276, !277, !278, !280, !281, !282, !284, !285, !286, !287, !288, !290, !292, !294, !296, !298}
!llvm.module.flags = !{!300, !301, !302, !303, !304, !305, !306, !307}
!llvm.ident = !{!308}

!0 = !{ptr @__initcall__kmod_edma__274_2736_edma_init4, !1, !"__initcall__kmod_edma__274_2736_edma_init4", i1 false, i1 false}
!1 = !{!"../drivers/dma/ti/edma.c", i32 2736, i32 1}
!2 = !{ptr @__exitcall_edma_exit, !3, !"__exitcall_edma_exit", i1 false, i1 false}
!3 = !{!"../drivers/dma/ti/edma.c", i32 2743, i32 1}
!4 = !{ptr @__UNIQUE_ID_author275, !5, !"__UNIQUE_ID_author275", i1 false, i1 false}
!5 = !{!"../drivers/dma/ti/edma.c", i32 2745, i32 1}
!6 = !{ptr @__UNIQUE_ID_description276, !7, !"__UNIQUE_ID_description276", i1 false, i1 false}
!7 = !{!"../drivers/dma/ti/edma.c", i32 2746, i32 1}
!8 = !{ptr @__UNIQUE_ID_file277, !9, !"__UNIQUE_ID_file277", i1 false, i1 false}
!9 = !{!"../drivers/dma/ti/edma.c", i32 2747, i32 1}
!10 = !{ptr @__UNIQUE_ID_license278, !9, !"__UNIQUE_ID_license278", i1 false, i1 false}
!11 = !{ptr @.str, !12, !"<string literal>", i1 false, i1 false}
!12 = !{!"../drivers/dma/ti/edma.c", i32 2690, i32 11}
!13 = !{ptr @edma_driver, !14, !"edma_driver", i1 false, i1 false}
!14 = !{!"../drivers/dma/ti/edma.c", i32 2686, i32 31}
!15 = !{ptr @.str.1, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/dma/ti/edma.c", i32 2362, i32 4}
!17 = !{ptr @.str.2, !16, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.3, !16, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !16, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !16, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @edma_probe._entry, !16, !"_entry", i1 false, i1 false}
!22 = !{ptr @edma_probe._entry_ptr, !16, !"_entry_ptr", i1 false, i1 false}
!23 = !{ptr @.str.6, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/dma/ti/edma.c", i32 2385, i32 59}
!25 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/ti/edma.c", i32 2387, i32 3}
!27 = !{ptr @edma_probe.__UNIQUE_ID_ddebug273, !26, !"__UNIQUE_ID_ddebug273", i1 false, i1 false}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/ti/edma.c", i32 2390, i32 4}
!30 = !{ptr @edma_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @edma_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/ti/edma.c", i32 2403, i32 3}
!34 = !{ptr @edma_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @edma_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/ti/edma.c", i32 2457, i32 38}
!38 = !{ptr @.str.15, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/ti/edma.c", i32 2462, i32 46}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma/ti/edma.c", i32 2467, i32 4}
!42 = !{ptr @edma_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @edma_probe._entry_ptr.18, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.19, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/ti/edma.c", i32 2473, i32 38}
!46 = !{ptr @.str.20, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/dma/ti/edma.c", i32 2478, i32 46}
!48 = !{ptr @.str.22, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/ti/edma.c", i32 2483, i32 4}
!50 = !{ptr @edma_probe._entry.21, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @edma_probe._entry_ptr.23, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.25, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/ti/edma.c", i32 2491, i32 3}
!54 = !{ptr @edma_probe._entry.24, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @edma_probe._entry_ptr.26, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.27, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/ti/edma.c", i32 2511, i32 49}
!58 = !{ptr @.str.28, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/dma/ti/edma.c", i32 2528, i32 7}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/ti/edma.c", i32 2532, i32 4}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @edma_probe._entry.29, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @edma_probe._entry_ptr.32, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dma/ti/edma.c", i32 2534, i32 4}
!67 = !{ptr @edma_probe._entry.33, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @edma_probe._entry_ptr.35, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.37, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/ti/edma.c", i32 2570, i32 3}
!71 = !{ptr @edma_probe._entry.36, !70, !"_entry", i1 false, i1 false}
!72 = !{ptr @edma_probe._entry_ptr.38, !70, !"_entry_ptr", i1 false, i1 false}
!73 = !{ptr @.str.40, !74, !"<string literal>", i1 false, i1 false}
!74 = !{!"../drivers/dma/ti/edma.c", i32 2577, i32 4}
!75 = !{ptr @edma_probe._entry.39, !74, !"_entry", i1 false, i1 false}
!76 = !{ptr @edma_probe._entry_ptr.41, !74, !"_entry_ptr", i1 false, i1 false}
!77 = !{ptr @.str.43, !78, !"<string literal>", i1 false, i1 false}
!78 = !{!"../drivers/dma/ti/edma.c", i32 2587, i32 2}
!79 = !{ptr @.str.44, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @edma_probe._entry.42, !78, !"_entry", i1 false, i1 false}
!81 = !{ptr @edma_probe._entry_ptr.45, !78, !"_entry_ptr", i1 false, i1 false}
!82 = !{ptr @.str.46, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/dma/ti/edma.c", i32 2202, i32 41}
!84 = !{ptr @.str.47, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/dma/ti/edma.c", i32 2213, i32 40}
!86 = !{ptr @.str.48, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/dma/ti/edma.c", i32 2233, i32 40}
!88 = !{ptr @.str.50, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/dma/ti/edma.c", i32 2102, i32 2}
!90 = !{ptr @.str.51, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @edma_setup_from_hw.__UNIQUE_ID_ddebug266, !89, !"__UNIQUE_ID_ddebug266", i1 false, i1 false}
!92 = !{ptr @.str.52, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/dma/ti/edma.c", i32 2103, i32 2}
!94 = !{ptr @edma_setup_from_hw.__UNIQUE_ID_ddebug267, !93, !"__UNIQUE_ID_ddebug267", i1 false, i1 false}
!95 = !{ptr @.str.53, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/dma/ti/edma.c", i32 2104, i32 2}
!97 = !{ptr @edma_setup_from_hw.__UNIQUE_ID_ddebug268, !96, !"__UNIQUE_ID_ddebug268", i1 false, i1 false}
!98 = !{ptr @.str.54, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/dma/ti/edma.c", i32 2105, i32 2}
!100 = !{ptr @edma_setup_from_hw.__UNIQUE_ID_ddebug269, !99, !"__UNIQUE_ID_ddebug269", i1 false, i1 false}
!101 = !{ptr @.str.55, !102, !"<string literal>", i1 false, i1 false}
!102 = !{!"../drivers/dma/ti/edma.c", i32 2106, i32 2}
!103 = !{ptr @edma_setup_from_hw.__UNIQUE_ID_ddebug270, !102, !"__UNIQUE_ID_ddebug270", i1 false, i1 false}
!104 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/dma/ti/edma.c", i32 2107, i32 2}
!106 = !{ptr @edma_setup_from_hw.__UNIQUE_ID_ddebug271, !105, !"__UNIQUE_ID_ddebug271", i1 false, i1 false}
!107 = !{ptr @.str.57, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/dma/ti/edma.c", i32 2108, i32 2}
!109 = !{ptr @edma_setup_from_hw.__UNIQUE_ID_ddebug272, !108, !"__UNIQUE_ID_ddebug272", i1 false, i1 false}
!110 = !{ptr @.str.58, !108, !"<string literal>", i1 false, i1 false}
!111 = !{ptr @.str.59, !108, !"<string literal>", i1 false, i1 false}
!112 = !{ptr @dummy_paramset, !113, !"dummy_paramset", i1 false, i1 false}
!113 = !{!"../drivers/dma/ti/edma.c", i32 278, i32 34}
!114 = !{ptr @.str.60, !115, !"<string literal>", i1 false, i1 false}
!115 = !{!"../drivers/dma/ti/edma.c", i32 1560, i32 2}
!116 = !{ptr @.str.61, !115, !"<string literal>", i1 false, i1 false}
!117 = !{ptr @dma_irq_handler.__UNIQUE_ID_ddebug258, !115, !"__UNIQUE_ID_ddebug258", i1 false, i1 false}
!118 = !{ptr @.str.62, !119, !"<string literal>", i1 false, i1 false}
!119 = !{!"../drivers/dma/ti/edma.c", i32 1528, i32 4}
!120 = !{ptr @.str.63, !119, !"<string literal>", i1 false, i1 false}
!121 = !{ptr @edma_completion_handler.__UNIQUE_ID_ddebug256, !119, !"__UNIQUE_ID_ddebug256", i1 false, i1 false}
!122 = !{ptr @.str.64, !123, !"<string literal>", i1 false, i1 false}
!123 = !{!"../drivers/dma/ti/edma.c", i32 1531, i32 4}
!124 = !{ptr @edma_completion_handler.__UNIQUE_ID_ddebug257, !123, !"__UNIQUE_ID_ddebug257", i1 false, i1 false}
!125 = !{ptr @.str.65, !126, !"<string literal>", i1 false, i1 false}
!126 = !{!"../drivers/dma/ti/edma.c", i32 640, i32 2}
!127 = !{ptr @.str.66, !126, !"<string literal>", i1 false, i1 false}
!128 = !{ptr @edma_stop.__UNIQUE_ID_ddebug242, !126, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!129 = !{ptr @.str.67, !130, !"<string literal>", i1 false, i1 false}
!130 = !{!"../drivers/dma/ti/../virt-dma.h", i32 101, i32 2}
!131 = !{ptr @.str.68, !130, !"<string literal>", i1 false, i1 false}
!132 = !{ptr @.str.69, !130, !"<string literal>", i1 false, i1 false}
!133 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, !130, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!134 = !{ptr @.str.70, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/dma/ti/edma.c", i32 804, i32 3}
!136 = !{ptr @.str.71, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @edma_execute.__UNIQUE_ID_ddebug247, !135, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!138 = !{ptr @.str.72, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/dma/ti/edma.c", i32 851, i32 3}
!140 = !{ptr @edma_execute.__UNIQUE_ID_ddebug248, !139, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!141 = !{ptr @.str.73, !142, !"<string literal>", i1 false, i1 false}
!142 = !{!"../drivers/dma/ti/edma.c", i32 858, i32 3}
!143 = !{ptr @edma_execute.__UNIQUE_ID_ddebug249, !142, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!144 = !{ptr @.str.74, !145, !"<string literal>", i1 false, i1 false}
!145 = !{!"../drivers/dma/ti/edma.c", i32 862, i32 3}
!146 = !{ptr @edma_execute.__UNIQUE_ID_ddebug250, !145, !"__UNIQUE_ID_ddebug250", i1 false, i1 false}
!147 = !{ptr @.str.75, !148, !"<string literal>", i1 false, i1 false}
!148 = !{!"../drivers/dma/ti/edma.c", i32 561, i32 3}
!149 = !{ptr @.str.76, !148, !"<string literal>", i1 false, i1 false}
!150 = !{ptr @edma_link._entry, !148, !"_entry", i1 false, i1 false}
!151 = !{ptr @edma_link._entry_ptr, !148, !"_entry_ptr", i1 false, i1 false}
!152 = !{ptr @.str.77, !153, !"<string literal>", i1 false, i1 false}
!153 = !{!"../drivers/dma/ti/edma.c", i32 691, i32 2}
!154 = !{ptr @.str.78, !153, !"<string literal>", i1 false, i1 false}
!155 = !{ptr @edma_clean_channel.__UNIQUE_ID_ddebug244, !153, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!156 = !{ptr @.str.79, !157, !"<string literal>", i1 false, i1 false}
!157 = !{!"../drivers/dma/ti/edma.c", i32 607, i32 3}
!158 = !{ptr @.str.80, !157, !"<string literal>", i1 false, i1 false}
!159 = !{ptr @edma_start.__UNIQUE_ID_ddebug239, !157, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!160 = !{ptr @.str.81, !161, !"<string literal>", i1 false, i1 false}
!161 = !{!"../drivers/dma/ti/edma.c", i32 612, i32 3}
!162 = !{ptr @edma_start.__UNIQUE_ID_ddebug240, !161, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!163 = !{ptr @edma_start.__UNIQUE_ID_ddebug241, !164, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!164 = !{!"../drivers/dma/ti/edma.c", i32 620, i32 3}
!165 = !{ptr @.str.82, !166, !"<string literal>", i1 false, i1 false}
!166 = !{!"../drivers/dma/ti/edma.c", i32 680, i32 2}
!167 = !{ptr @edma_trigger_channel.__UNIQUE_ID_ddebug243, !166, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!168 = !{ptr @.str.83, !169, !"<string literal>", i1 false, i1 false}
!169 = !{!"../drivers/dma/ti/edma.c", i32 1659, i32 2}
!170 = !{ptr @.str.84, !169, !"<string literal>", i1 false, i1 false}
!171 = !{ptr @dma_ccerr_handler.__UNIQUE_ID_ddebug261, !169, !"__UNIQUE_ID_ddebug261", i1 false, i1 false}
!172 = !{ptr @.str.85, !173, !"<string literal>", i1 false, i1 false}
!173 = !{!"../drivers/dma/ti/edma.c", i32 1667, i32 3}
!174 = !{ptr @dma_ccerr_handler._entry, !173, !"_entry", i1 false, i1 false}
!175 = !{ptr @dma_ccerr_handler._entry_ptr, !173, !"_entry_ptr", i1 false, i1 false}
!176 = !{ptr @.str.86, !177, !"<string literal>", i1 false, i1 false}
!177 = !{!"../drivers/dma/ti/edma.c", i32 1682, i32 4}
!178 = !{ptr @dma_ccerr_handler.__UNIQUE_ID_ddebug262, !177, !"__UNIQUE_ID_ddebug262", i1 false, i1 false}
!179 = !{ptr @.str.87, !180, !"<string literal>", i1 false, i1 false}
!180 = !{!"../drivers/dma/ti/edma.c", i32 1698, i32 4}
!181 = !{ptr @dma_ccerr_handler.__UNIQUE_ID_ddebug263, !180, !"__UNIQUE_ID_ddebug263", i1 false, i1 false}
!182 = !{ptr @.str.89, !183, !"<string literal>", i1 false, i1 false}
!183 = !{!"../drivers/dma/ti/edma.c", i32 1706, i32 4}
!184 = !{ptr @dma_ccerr_handler._entry.88, !183, !"_entry", i1 false, i1 false}
!185 = !{ptr @dma_ccerr_handler._entry_ptr.90, !183, !"_entry_ptr", i1 false, i1 false}
!186 = !{ptr @.str.91, !187, !"<string literal>", i1 false, i1 false}
!187 = !{!"../drivers/dma/ti/edma.c", i32 1620, i32 3}
!188 = !{ptr @.str.92, !187, !"<string literal>", i1 false, i1 false}
!189 = !{ptr @edma_error_handler.__UNIQUE_ID_ddebug259, !187, !"__UNIQUE_ID_ddebug259", i1 false, i1 false}
!190 = !{ptr @.str.93, !191, !"<string literal>", i1 false, i1 false}
!191 = !{!"../drivers/dma/ti/edma.c", i32 1627, i32 3}
!192 = !{ptr @edma_error_handler.__UNIQUE_ID_ddebug260, !191, !"__UNIQUE_ID_ddebug260", i1 false, i1 false}
!193 = !{ptr @.str.94, !194, !"<string literal>", i1 false, i1 false}
!194 = !{!"../drivers/dma/ti/edma.c", i32 1990, i32 3}
!195 = !{ptr @.str.95, !194, !"<string literal>", i1 false, i1 false}
!196 = !{ptr @edma_dma_init._entry, !194, !"_entry", i1 false, i1 false}
!197 = !{ptr @edma_dma_init._entry_ptr, !194, !"_entry_ptr", i1 false, i1 false}
!198 = !{ptr @.str.97, !199, !"<string literal>", i1 false, i1 false}
!199 = !{!"../drivers/dma/ti/edma.c", i32 2024, i32 4}
!200 = !{ptr @edma_dma_init._entry.96, !199, !"_entry", i1 false, i1 false}
!201 = !{ptr @edma_dma_init._entry_ptr.98, !199, !"_entry_ptr", i1 false, i1 false}
!202 = !{ptr @.str.100, !203, !"<string literal>", i1 false, i1 false}
!203 = !{!"../drivers/dma/ti/edma.c", i32 2054, i32 3}
!204 = !{ptr @edma_dma_init._entry.99, !203, !"_entry", i1 false, i1 false}
!205 = !{ptr @edma_dma_init._entry_ptr.101, !203, !"_entry_ptr", i1 false, i1 false}
!206 = !{ptr @.str.102, !207, !"<string literal>", i1 false, i1 false}
!207 = !{!"../drivers/dma/ti/edma.c", i32 1250, i32 5}
!208 = !{ptr @.str.103, !207, !"<string literal>", i1 false, i1 false}
!209 = !{ptr @edma_prep_dma_memcpy._entry, !207, !"_entry", i1 false, i1 false}
!210 = !{ptr @edma_prep_dma_memcpy._entry_ptr, !207, !"_entry_ptr", i1 false, i1 false}
!211 = !{ptr @.str.104, !212, !"<string literal>", i1 false, i1 false}
!212 = !{!"../drivers/dma/ti/edma.c", i32 1012, i32 4}
!213 = !{ptr @.str.105, !212, !"<string literal>", i1 false, i1 false}
!214 = !{ptr @edma_config_pset._entry, !212, !"_entry", i1 false, i1 false}
!215 = !{ptr @edma_config_pset._entry_ptr, !212, !"_entry_ptr", i1 false, i1 false}
!216 = !{ptr @.str.107, !217, !"<string literal>", i1 false, i1 false}
!217 = !{!"../drivers/dma/ti/edma.c", i32 1039, i32 3}
!218 = !{ptr @edma_config_pset._entry.106, !217, !"_entry", i1 false, i1 false}
!219 = !{ptr @edma_config_pset._entry_ptr.108, !217, !"_entry_ptr", i1 false, i1 false}
!220 = !{ptr @.str.109, !221, !"<string literal>", i1 false, i1 false}
!221 = !{!"../drivers/dma/ti/edma.c", i32 1306, i32 3}
!222 = !{ptr @.str.110, !221, !"<string literal>", i1 false, i1 false}
!223 = !{ptr @edma_prep_dma_interleaved._entry, !221, !"_entry", i1 false, i1 false}
!224 = !{ptr @edma_prep_dma_interleaved._entry_ptr, !221, !"_entry_ptr", i1 false, i1 false}
!225 = !{ptr @.str.112, !226, !"<string literal>", i1 false, i1 false}
!226 = !{!"../drivers/dma/ti/edma.c", i32 1317, i32 3}
!227 = !{ptr @edma_prep_dma_interleaved._entry.111, !226, !"_entry", i1 false, i1 false}
!228 = !{ptr @edma_prep_dma_interleaved._entry_ptr.113, !226, !"_entry_ptr", i1 false, i1 false}
!229 = !{ptr @.str.114, !230, !"<string literal>", i1 false, i1 false}
!230 = !{!"../drivers/dma/ti/edma.c", i32 1092, i32 3}
!231 = !{ptr @.str.115, !230, !"<string literal>", i1 false, i1 false}
!232 = !{ptr @edma_prep_slave_sg._entry, !230, !"_entry", i1 false, i1 false}
!233 = !{ptr @edma_prep_slave_sg._entry_ptr, !230, !"_entry_ptr", i1 false, i1 false}
!234 = !{ptr @.str.117, !235, !"<string literal>", i1 false, i1 false}
!235 = !{!"../drivers/dma/ti/edma.c", i32 1097, i32 3}
!236 = !{ptr @edma_prep_slave_sg._entry.116, !235, !"_entry", i1 false, i1 false}
!237 = !{ptr @edma_prep_slave_sg._entry_ptr.118, !235, !"_entry_ptr", i1 false, i1 false}
!238 = !{ptr @edma_prep_slave_sg._entry.119, !239, !"_entry", i1 false, i1 false}
!239 = !{!"../drivers/dma/ti/edma.c", i32 1119, i32 5}
!240 = !{ptr @edma_prep_slave_sg._entry_ptr.120, !239, !"_entry_ptr", i1 false, i1 false}
!241 = !{ptr @.str.121, !242, !"<string literal>", i1 false, i1 false}
!242 = !{!"../drivers/dma/ti/edma.c", i32 1381, i32 3}
!243 = !{ptr @edma_prep_dma_cyclic._entry, !242, !"_entry", i1 false, i1 false}
!244 = !{ptr @edma_prep_dma_cyclic._entry_ptr, !242, !"_entry_ptr", i1 false, i1 false}
!245 = !{ptr @edma_prep_dma_cyclic._entry.122, !246, !"_entry", i1 false, i1 false}
!246 = !{!"../drivers/dma/ti/edma.c", i32 1386, i32 3}
!247 = !{ptr @edma_prep_dma_cyclic._entry_ptr.123, !246, !"_entry_ptr", i1 false, i1 false}
!248 = !{ptr @.str.125, !249, !"<string literal>", i1 false, i1 false}
!249 = !{!"../drivers/dma/ti/edma.c", i32 1391, i32 3}
!250 = !{ptr @edma_prep_dma_cyclic._entry.124, !249, !"_entry", i1 false, i1 false}
!251 = !{ptr @edma_prep_dma_cyclic._entry_ptr.126, !249, !"_entry_ptr", i1 false, i1 false}
!252 = !{ptr @.str.127, !253, !"<string literal>", i1 false, i1 false}
!253 = !{!"../drivers/dma/ti/edma.c", i32 1431, i32 2}
!254 = !{ptr @edma_prep_dma_cyclic.__UNIQUE_ID_ddebug253, !253, !"__UNIQUE_ID_ddebug253", i1 false, i1 false}
!255 = !{ptr @edma_prep_dma_cyclic._entry.128, !256, !"_entry", i1 false, i1 false}
!256 = !{!"../drivers/dma/ti/edma.c", i32 1441, i32 5}
!257 = !{ptr @edma_prep_dma_cyclic._entry_ptr.129, !256, !"_entry_ptr", i1 false, i1 false}
!258 = !{ptr @.str.130, !259, !"<string literal>", i1 false, i1 false}
!259 = !{!"../drivers/dma/ti/edma.c", i32 1466, i32 3}
!260 = !{ptr @edma_prep_dma_cyclic.__UNIQUE_ID_ddebug254, !259, !"__UNIQUE_ID_ddebug254", i1 false, i1 false}
!261 = !{ptr @edma_prep_dma_cyclic.__UNIQUE_ID_ddebug255, !262, !"__UNIQUE_ID_ddebug255", i1 false, i1 false}
!262 = !{!"../drivers/dma/ti/edma.c", i32 1467, i32 3}
!263 = !{ptr @.str.131, !264, !"<string literal>", i1 false, i1 false}
!264 = !{!"../drivers/dma/ti/edma.c", i32 1744, i32 3}
!265 = !{ptr @.str.132, !264, !"<string literal>", i1 false, i1 false}
!266 = !{ptr @edma_alloc_chan_resources._entry, !264, !"_entry", i1 false, i1 false}
!267 = !{ptr @edma_alloc_chan_resources._entry_ptr, !264, !"_entry_ptr", i1 false, i1 false}
!268 = !{ptr @.str.133, !269, !"<string literal>", i1 false, i1 false}
!269 = !{!"../drivers/dma/ti/edma.c", i32 1754, i32 2}
!270 = !{ptr @edma_alloc_chan_resources.__UNIQUE_ID_ddebug264, !269, !"__UNIQUE_ID_ddebug264", i1 false, i1 false}
!271 = !{ptr @.str.134, !269, !"<string literal>", i1 false, i1 false}
!272 = !{ptr @.str.135, !269, !"<string literal>", i1 false, i1 false}
!273 = !{ptr @.str.136, !274, !"<string literal>", i1 false, i1 false}
!274 = !{!"../drivers/dma/ti/edma.c", i32 727, i32 3}
!275 = !{ptr @.str.137, !274, !"<string literal>", i1 false, i1 false}
!276 = !{ptr @edma_alloc_channel._entry, !274, !"_entry", i1 false, i1 false}
!277 = !{ptr @edma_alloc_channel._entry_ptr, !274, !"_entry_ptr", i1 false, i1 false}
!278 = !{ptr @.str.138, !279, !"<string literal>", i1 false, i1 false}
!279 = !{!"../drivers/dma/ti/edma.c", i32 1797, i32 2}
!280 = !{ptr @.str.139, !279, !"<string literal>", i1 false, i1 false}
!281 = !{ptr @edma_free_chan_resources.__UNIQUE_ID_ddebug265, !279, !"__UNIQUE_ID_ddebug265", i1 false, i1 false}
!282 = !{ptr @.str.140, !283, !"<string literal>", i1 false, i1 false}
!283 = !{!"../drivers/dma/ti/edma.c", i32 1861, i32 4}
!284 = !{ptr @edma_residue._rs, !283, !"_rs", i1 false, i1 false}
!285 = !{ptr @.str.141, !283, !"<string literal>", i1 false, i1 false}
!286 = !{ptr @.str.142, !283, !"<string literal>", i1 false, i1 false}
!287 = !{ptr @edma_residue.descriptor, !283, !"descriptor", i1 false, i1 false}
!288 = !{ptr @edma_of_ids, !289, !"edma_of_ids", i1 false, i1 false}
!289 = !{!"../drivers/dma/ti/edma.c", i32 290, i32 34}
!290 = !{ptr @edma_binding_type, !291, !"edma_binding_type", i1 false, i1 false}
!291 = !{!"../drivers/dma/ti/edma.c", i32 285, i32 18}
!292 = !{ptr @edma_pm_ops, !293, !"edma_pm_ops", i1 false, i1 false}
!293 = !{!"../drivers/dma/ti/edma.c", i32 2682, i32 32}
!294 = !{ptr @.str.143, !295, !"<string literal>", i1 false, i1 false}
!295 = !{!"../drivers/dma/ti/edma.c", i32 2705, i32 11}
!296 = !{ptr @edma_tptc_driver, !297, !"edma_tptc_driver", i1 false, i1 false}
!297 = !{!"../drivers/dma/ti/edma.c", i32 2702, i32 31}
!298 = !{ptr @edma_tptc_of_ids, !299, !"edma_tptc_of_ids", i1 false, i1 false}
!299 = !{!"../drivers/dma/ti/edma.c", i32 303, i32 34}
!300 = !{i32 1, !"wchar_size", i32 2}
!301 = !{i32 1, !"min_enum_size", i32 4}
!302 = !{i32 8, !"branch-target-enforcement", i32 0}
!303 = !{i32 8, !"sign-return-address", i32 0}
!304 = !{i32 8, !"sign-return-address-all", i32 0}
!305 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!306 = !{i32 7, !"uwtable", i32 1}
!307 = !{i32 7, !"frame-pointer", i32 2}
!308 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!309 = !{!"auto-init"}
!310 = !{!"branch_weights", i32 1, i32 2000}
!311 = !{i64 6338506}
!312 = !{i64 2154671991}
!313 = !{i64 2154672203}
!314 = !{i64 6338088}
!315 = !{i64 2148403677, i64 2148403682, i64 2148403695, i64 2148403739, i64 2148403773, i64 2148403794}
!316 = !{i8 0, i8 2}
!317 = !{i32 0, i32 33}
!318 = !{i64 2154470914, i64 2154471407, i64 2154470951, i64 2154471007, i64 2154471041, i64 2154471065, i64 2154471106, i64 2154471127, i64 2154471155, i64 2154471189}
!319 = !{!"branch_weights", i32 2000, i32 1}
!320 = !{!"branch_weights", i32 6003000, i32 -294967296}
!321 = !{i64 2154472420}
!322 = !{i64 2154645598}
!323 = !{i64 2154645440}
