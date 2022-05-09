; ModuleID = '/llk/IR_all_yes/drivers/dma/tegra210-adma.c_pt.bc'
source_filename = "../drivers/dma/tegra210-adma.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.tegra_adma_chip_data = type { ptr, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i8 }
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
%struct.hlist_node = type { ptr, ptr }
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
%struct.tegra_adma = type { %struct.dma_device, ptr, ptr, ptr, i32, i32, i32, i32, ptr, [0 x %struct.tegra_adma_chan] }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tegra_adma_chan = type { %struct.virt_dma_chan, ptr, ptr, i32, ptr, %struct.dma_slave_config, i32, i32, i8, %struct.tegra_adma_chan_regs, i32, i32 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.tegra_adma_chan_regs = type { i32, i32, i32, i32, i32, i32, i32 }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.tegra_adma_desc = type { %struct.virt_dma_desc, %struct.tegra_adma_chan_regs, i32, i32, i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_tegra210_adma__237_986_tegra_admac_driver_init6 = internal global ptr @tegra_admac_driver_init, section ".initcall6.init", align 4
@tegra_admac_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @tegra_adma_probe, ptr @tegra_adma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @tegra_adma_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_adma_dev_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_tegra_admac_driver_exit = internal global ptr @tegra_admac_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias238 = internal constant [43 x i8] c"tegra210_adma.alias=platform:tegra210-adma\00", section ".modinfo", align 1
@__UNIQUE_ID_description239 = internal constant [51 x i8] c"tegra210_adma.description=NVIDIA Tegra ADMA driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author240 = internal constant [54 x i8] c"tegra210_adma.author=Dara Ramesh <dramesh@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author241 = internal constant [55 x i8] c"tegra210_adma.author=Jon Hunter <jonathanh@nvidia.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file242 = internal constant [45 x i8] c"tegra210_adma.file=drivers/dma/tegra210-adma\00", section ".modinfo", align 1
@__UNIQUE_ID_license243 = internal constant [29 x i8] c"tegra210_adma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"tegra-adma\00", [21 x i8] zeroinitializer }, align 32
@tegra_adma_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra210-adma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra210_chip_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nvidia,tegra186-adma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @tegra186_chip_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@tegra_adma_dev_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr @pm_runtime_force_suspend, ptr @pm_runtime_force_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @tegra_adma_runtime_suspend, ptr @tegra_adma_runtime_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@tegra_adma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 845, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"device match data not found\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_adma_probe\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"drivers/dma/tegra210-adma.c\00", [36 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tegra_adma_probe._entry_ptr = internal global ptr @tegra_adma_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"d_audio\00", [24 x i8] zeroinitializer }, align 32
@tegra_adma_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 867, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Error: Missing ahub controller clock\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_adma_probe._entry_ptr.9 = internal global ptr @tegra_adma_probe._entry.7, section ".printk_index", align 4
@tegra_adma_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 922, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ADMA registration failed: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@tegra_adma_probe._entry_ptr.12 = internal global ptr @tegra_adma_probe._entry.10, section ".printk_index", align 4
@tegra_adma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 929, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"ADMA OF registration failed %d\0A\00", [32 x i8] zeroinitializer }, align 32
@tegra_adma_probe._entry_ptr.15 = internal global ptr @tegra_adma_probe._entry.13, section ".printk_index", align 4
@tegra_adma_probe._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.2, ptr @.str.3, i32 936, ptr @.str.18, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"Tegra210 ADMA driver registered %d channels\0A\00", [51 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@tegra_adma_probe._entry_ptr.19 = internal global ptr @tegra_adma_probe._entry.16, section ".printk_index", align 4
@tegra_adma_alloc_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.21, ptr @.str.3, i32 673, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get interrupt for %s\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"tegra_adma_alloc_chan_resources\00", [32 x i8] zeroinitializer }, align 32
@tegra_adma_alloc_chan_resources._entry_ptr = internal global ptr @tegra_adma_alloc_chan_resources._entry, section ".printk_index", align 4
@tegra_adma_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.22, ptr @.str.23, ptr @.str.3, i32 362, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"unable to start DMA, no descriptor\0A\00", [60 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_adma_start\00", [47 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@tegra_adma_start._entry_ptr = internal global ptr @tegra_adma_start._entry, section ".printk_index", align 4
@tegra_adma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.3, i32 635, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"invalid buffer/period len\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_adma_prep_dma_cyclic\00", [37 x i8] zeroinitializer }, align 32
@tegra_adma_prep_dma_cyclic._entry_ptr = internal global ptr @tegra_adma_prep_dma_cyclic._entry, section ".printk_index", align 4
@tegra_adma_prep_dma_cyclic._entry.27 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.28, ptr @.str.26, ptr @.str.3, i32 640, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"buf_len not a multiple of period_len\0A\00", [58 x i8] zeroinitializer }, align 32
@tegra_adma_prep_dma_cyclic._entry_ptr.29 = internal global ptr @tegra_adma_prep_dma_cyclic._entry.27, section ".printk_index", align 4
@tegra_adma_prep_dma_cyclic._entry.30 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.26, ptr @.str.3, i32 645, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"invalid buffer alignment\0A\00", [38 x i8] zeroinitializer }, align 32
@tegra_adma_prep_dma_cyclic._entry_ptr.32 = internal global ptr @tegra_adma_prep_dma_cyclic._entry.30, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@tegra_adma_set_xfer_params._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.34, ptr @.str.3, i32 589, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"DMA direction is not supported\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"tegra_adma_set_xfer_params\00", [37 x i8] zeroinitializer }, align 32
@tegra_adma_set_xfer_params._entry_ptr = internal global ptr @tegra_adma_set_xfer_params._entry, section ".printk_index", align 4
@tegra_adma_request_alloc._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.36, ptr @.str.3, i32 254, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"invalid DMA request\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"tegra_adma_request_alloc\00", [39 x i8] zeroinitializer }, align 32
@tegra_adma_request_alloc._entry_ptr = internal global ptr @tegra_adma_request_alloc._entry, section ".printk_index", align 4
@tegra_adma_request_alloc._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 261, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"DMA request reserved\0A\00", [42 x i8] zeroinitializer }, align 32
@tegra_adma_request_alloc._entry_ptr.39 = internal global ptr @tegra_adma_request_alloc._entry.37, section ".printk_index", align 4
@tegra_adma_request_alloc._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.36, ptr @.str.3, i32 268, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@tegra_adma_request_alloc._entry_ptr.41 = internal global ptr @tegra_adma_request_alloc._entry.40, section ".printk_index", align 4
@.str.42 = internal constant { [45 x i8], [51 x i8] } { [45 x i8] c"%s %s: channel %s has invalid transfer type\0A\00", [51 x i8] zeroinitializer }, align 32
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@tegra_adma_stop._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.44, ptr @.str.3, i32 340, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"unable to stop DMA channel\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"tegra_adma_stop\00", [16 x i8] zeroinitializer }, align 32
@tegra_adma_stop._entry_ptr = internal global ptr @tegra_adma_stop._entry, section ".printk_index", align 4
@tegra_adma_pause._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.45, ptr @.str.46, ptr @.str.3, i32 464, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"unable to pause DMA channel\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"tegra_adma_pause\00", [47 x i8] zeroinitializer }, align 32
@tegra_adma_pause._entry_ptr = internal global ptr @tegra_adma_pause._entry, section ".printk_index", align 4
@tegra_dma_of_xlate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.48, ptr @.str.3, i32 716, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"DMA request must not be 0\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.48 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"tegra_dma_of_xlate\00", [45 x i8] zeroinitializer }, align 32
@tegra_dma_of_xlate._entry_ptr = internal global ptr @tegra_dma_of_xlate._entry, section ".printk_index", align 4
@tegra210_chip_data = internal constant { %struct.tegra_adma_chip_data, [40 x i8] } { %struct.tegra_adma_chip_data { ptr @tegra210_adma_get_burst_config, i32 3072, i32 32, i32 28, i32 24, i32 0, i32 0, i32 15, i32 10, i32 128, i32 22, i32 15, i32 2, i8 0 }, [40 x i8] zeroinitializer }, align 32
@tegra186_chip_data = internal constant { %struct.tegra_adma_chip_data, [40 x i8] } { %struct.tegra_adma_chip_data { ptr @tegra186_adma_get_burst_config, i32 0, i32 16428, i32 27, i32 22, i32 65536, i32 0, i32 31, i32 20, i32 256, i32 32, i32 31, i32 4, i8 1 }, [40 x i8] zeroinitializer }, align 32
@tegra_adma_runtime_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 771, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ahub clk_enable failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"tegra_adma_runtime_resume\00", [38 x i8] zeroinitializer }, align 32
@tegra_adma_runtime_resume._entry_ptr = internal global ptr @tegra_adma_runtime_resume._entry, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.51 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.52 = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@___asan_gen_.53 = private unnamed_addr constant [19 x i8] c"tegra_admac_driver\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 976, i32 31 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 978, i32 11 }
@___asan_gen_.59 = private unnamed_addr constant [20 x i8] c"tegra_adma_of_match\00", align 1
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 829, i32 34 }
@___asan_gen_.62 = private unnamed_addr constant [22 x i8] c"tegra_adma_dev_pm_ops\00", align 1
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 969, i32 32 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 845, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 865, i32 44 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 867, i32 3 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 922, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 929, i32 3 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 935, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 672, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 362, i32 3 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 635, i32 3 }
@___asan_gen_.148 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 640, i32 3 }
@___asan_gen_.154 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 645, i32 3 }
@___asan_gen_.163 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 589, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 254, i32 3 }
@___asan_gen_.178 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 261, i32 4 }
@___asan_gen_.181 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 268, i32 4 }
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 274, i32 3 }
@___asan_gen_.193 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 340, i32 3 }
@___asan_gen_.202 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 464, i32 3 }
@___asan_gen_.211 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 716, i32 3 }
@___asan_gen_.212 = private unnamed_addr constant [19 x i8] c"tegra210_chip_data\00", align 1
@___asan_gen_.214 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 797, i32 42 }
@___asan_gen_.215 = private unnamed_addr constant [19 x i8] c"tegra186_chip_data\00", align 1
@___asan_gen_.217 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 813, i32 42 }
@___asan_gen_.218 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.224 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.225 = private constant [31 x i8] c"../drivers/dma/tegra210-adma.c\00", align 1
@___asan_gen_.226 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.225, i32 771, i32 3 }
@llvm.compiler.used = appending global [85 x ptr] [ptr @__UNIQUE_ID_alias238, ptr @__UNIQUE_ID_author240, ptr @__UNIQUE_ID_author241, ptr @__UNIQUE_ID_description239, ptr @__UNIQUE_ID_file242, ptr @__UNIQUE_ID_license243, ptr @__exitcall_tegra_admac_driver_exit, ptr @__initcall__kmod_tegra210_adma__237_986_tegra_admac_driver_init6, ptr @tegra_adma_alloc_chan_resources._entry, ptr @tegra_adma_alloc_chan_resources._entry_ptr, ptr @tegra_adma_pause._entry, ptr @tegra_adma_pause._entry_ptr, ptr @tegra_adma_prep_dma_cyclic._entry, ptr @tegra_adma_prep_dma_cyclic._entry.27, ptr @tegra_adma_prep_dma_cyclic._entry.30, ptr @tegra_adma_prep_dma_cyclic._entry_ptr, ptr @tegra_adma_prep_dma_cyclic._entry_ptr.29, ptr @tegra_adma_prep_dma_cyclic._entry_ptr.32, ptr @tegra_adma_probe._entry, ptr @tegra_adma_probe._entry.10, ptr @tegra_adma_probe._entry.13, ptr @tegra_adma_probe._entry.16, ptr @tegra_adma_probe._entry.7, ptr @tegra_adma_probe._entry_ptr, ptr @tegra_adma_probe._entry_ptr.12, ptr @tegra_adma_probe._entry_ptr.15, ptr @tegra_adma_probe._entry_ptr.19, ptr @tegra_adma_probe._entry_ptr.9, ptr @tegra_adma_request_alloc._entry, ptr @tegra_adma_request_alloc._entry.37, ptr @tegra_adma_request_alloc._entry.40, ptr @tegra_adma_request_alloc._entry_ptr, ptr @tegra_adma_request_alloc._entry_ptr.39, ptr @tegra_adma_request_alloc._entry_ptr.41, ptr @tegra_adma_runtime_resume._entry, ptr @tegra_adma_runtime_resume._entry_ptr, ptr @tegra_adma_set_xfer_params._entry, ptr @tegra_adma_set_xfer_params._entry_ptr, ptr @tegra_adma_start._entry, ptr @tegra_adma_start._entry_ptr, ptr @tegra_adma_stop._entry, ptr @tegra_adma_stop._entry_ptr, ptr @tegra_admac_driver_exit, ptr @tegra_dma_of_xlate._entry, ptr @tegra_dma_of_xlate._entry_ptr, ptr @tegra_admac_driver, ptr @.str, ptr @tegra_adma_of_match, ptr @tegra_adma_dev_pm_ops, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @.str.17, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.28, ptr @.str.31, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @.str.38, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @tegra210_chip_data, ptr @tegra186_chip_data, ptr @.str.49, ptr @.str.50], section "llvm.metadata"
@0 = internal global [58 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_admac_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_dev_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_probe._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_alloc_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_prep_dma_cyclic._entry.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_prep_dma_cyclic._entry.30 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.154 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_set_xfer_params._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.163 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_request_alloc._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_request_alloc._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.178 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_request_alloc._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.181 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 45, i32 96, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_stop._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.193 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_pause._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.202 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_dma_of_xlate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra210_chip_data to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.214 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra186_chip_data to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.217 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tegra_adma_runtime_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 ptrtoint (ptr @___asan_gen_.225 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.226 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_admac_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @tegra_admac_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @tegra_admac_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @tegra_admac_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_adma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call = tail call ptr @of_device_get_match_data(ptr noundef %dev) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  br label %cleanup114

if.end:                                           ; preds = %entry
  %nr_channels = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %call, i32 0, i32 10
  %0 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %nr_channels, align 4
  %2 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %1, i32 292) #11
  %3 = extractvalue { i32, i1 } %2, 1
  %4 = extractvalue { i32, i1 } %2, 0
  %spec.select.i = tail call i32 @llvm.uadd.sat.i32(i32 %4, i32 396) #11
  %retval.0.i = select i1 %3, i32 -1, i32 %spec.select.i
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %retval.0.i, i32 noundef 3520) #11
  %tobool5.not = icmp eq ptr %call.i, null
  br i1 %tobool5.not, label %if.end.cleanup114_crit_edge, label %if.end7

if.end.cleanup114_crit_edge:                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

if.end7:                                          ; preds = %if.end
  %dev9 = getelementptr inbounds %struct.tegra_adma, ptr %call.i, i32 0, i32 1
  %5 = ptrtoint ptr %dev9 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev, ptr %dev9, align 4
  %cdata10 = getelementptr inbounds %struct.tegra_adma, ptr %call.i, i32 0, i32 8
  %6 = ptrtoint ptr %cdata10 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call, ptr %cdata10, align 4
  %7 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %nr_channels, align 4
  %nr_channels12 = getelementptr inbounds %struct.tegra_adma, ptr %call.i, i32 0, i32 4
  %9 = ptrtoint ptr %nr_channels12 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %8, ptr %nr_channels12, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %10 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call13 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call15 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call13) #11
  %base_addr = getelementptr inbounds %struct.tegra_adma, ptr %call.i, i32 0, i32 2
  %11 = ptrtoint ptr %base_addr to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %call15, ptr %base_addr, align 4
  %cmp.i = icmp ugt ptr %call15, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then18, label %if.end21

if.then18:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %call15 to i32
  br label %cleanup114

if.end21:                                         ; preds = %if.end7
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #11
  %ahub_clk = getelementptr inbounds %struct.tegra_adma, ptr %call.i, i32 0, i32 3
  %13 = ptrtoint ptr %ahub_clk to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call23, ptr %ahub_clk, align 4
  %cmp.i200 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i200, label %do.end29, label %if.end33

do.end29:                                         ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #14
  %14 = ptrtoint ptr %ahub_clk to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %ahub_clk, align 4
  %16 = ptrtoint ptr %15 to i32
  br label %cleanup114

if.end33:                                         ; preds = %if.end21
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %channels, ptr %prev.i, align 4
  %19 = ptrtoint ptr %nr_channels12 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %nr_channels12, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp217.not = icmp eq i32 %20, 0
  br i1 %cmp217.not, label %if.end33.for.end_crit_edge, label %for.body.lr.ph

if.end33.for.end_crit_edge:                       ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end33
  %ch_base_offset = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %call, i32 0, i32 5
  %ch_reg_size = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %call, i32 0, i32 9
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.0218 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %21 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base_addr, align 4
  %23 = ptrtoint ptr %ch_base_offset to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %ch_base_offset, align 4
  %add.ptr = getelementptr i8, ptr %22, i32 %24
  %25 = ptrtoint ptr %ch_reg_size to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %ch_reg_size, align 4
  %mul = mul i32 %26, %i.0218
  %add.ptr37 = getelementptr i8, ptr %add.ptr, i32 %mul
  %chan_addr = getelementptr %struct.tegra_adma, ptr %call.i, i32 0, i32 9, i32 %i.0218, i32 4
  %27 = ptrtoint ptr %chan_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %add.ptr37, ptr %chan_addr, align 4
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  %call39 = tail call i32 @of_irq_get(ptr noundef %29, i32 noundef %i.0218) #11
  %irq = getelementptr %struct.tegra_adma, ptr %call.i, i32 0, i32 9, i32 %i.0218, i32 3
  %30 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 %call39, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call39)
  %cmp41 = icmp slt i32 %call39, 1
  br i1 %cmp41, label %cleanup, label %for.inc

cleanup:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool44.not = icmp eq i32 %call39, 0
  %. = select i1 %tobool44.not, i32 -6, i32 %call39
  br label %irq_dispose

for.inc:                                          ; preds = %for.body
  %arrayidx = getelementptr %struct.tegra_adma, ptr %call.i, i32 0, i32 9, i32 %i.0218
  tail call void @vchan_init(ptr noundef %arrayidx, ptr noundef nonnull %call.i) #11
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 2
  %31 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr @tegra_adma_desc_free, ptr %desc_free, align 4
  %tdma48 = getelementptr %struct.tegra_adma, ptr %call.i, i32 0, i32 9, i32 %i.0218, i32 2
  %32 = ptrtoint ptr %tdma48 to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %tdma48, align 4
  %inc = add nuw i32 %i.0218, 1
  %33 = ptrtoint ptr %nr_channels12 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %nr_channels12, align 4
  %cmp = icmp ult i32 %inc, %34
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end33.for.end_crit_edge
  %i.0.lcssa = phi i32 [ 0, %if.end33.for.end_crit_edge ], [ %inc, %for.inc.for.end_crit_edge ]
  tail call void @pm_runtime_enable(ptr noundef %dev) #11
  %call.i201 = tail call i32 @__pm_runtime_resume(ptr noundef %dev, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i201)
  %cmp.i202 = icmp slt i32 %call.i201, 0
  br i1 %cmp.i202, label %if.then.i, label %if.end54

if.then.i:                                        ; preds = %for.end
  %usage_count.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %35 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !126
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %35, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.rpm_disable_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.rpm_disable_crit_edge:                  ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpm_disable

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !127
  br label %rpm_disable

if.end54:                                         ; preds = %for.end
  %36 = ptrtoint ptr %cdata10 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %cdata10, align 4
  %global_int_clear.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %37, i32 0, i32 2
  %38 = ptrtoint ptr %global_int_clear.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %global_int_clear.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %40 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base_addr, align 4
  %42 = ptrtoint ptr %cdata10 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %cdata10, align 4
  %global_reg_offset.i.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %43, i32 0, i32 1
  %44 = ptrtoint ptr %global_reg_offset.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %global_reg_offset.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %41, i32 %45
  %add.ptr1.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %39
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i.i, i32 16777216) #11, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %46 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base_addr, align 4
  %48 = ptrtoint ptr %cdata10 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %cdata10, align 4
  %global_reg_offset.i54.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %global_reg_offset.i54.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load i32, ptr %global_reg_offset.i54.i, align 4
  %add.ptr.i55.i = getelementptr i8, ptr %47, i32 %51
  %add.ptr1.i56.i = getelementptr i8, ptr %add.ptr.i55.i, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1.i56.i, i32 16777216) #11, !srcloc !129
  %call.i204 = tail call i64 @ktime_get() #11
  %add.i.i = add i64 %call.i204, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 234) #11
  %52 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %base_addr, align 4
  %54 = ptrtoint ptr %cdata10 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %cdata10, align 4
  %global_reg_offset63.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %global_reg_offset63.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %global_reg_offset63.i, align 4
  %add.ptr64.i = getelementptr i8, ptr %53, i32 %57
  %add.ptr965.i = getelementptr i8, ptr %add.ptr64.i, i32 4
  %58 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr965.i) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !131
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp1266.i = icmp eq i32 %58, 0
  br i1 %cmp1266.i, label %if.end54.if.end58_crit_edge, label %if.end54.land.lhs.true.i_crit_edge

if.end54.land.lhs.true.i_crit_edge:               ; preds = %if.end54
  br label %land.lhs.true.i

if.end54.if.end58_crit_edge:                      ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

land.lhs.true.i:                                  ; preds = %if.then31.i.land.lhs.true.i_crit_edge, %if.end54.land.lhs.true.i_crit_edge
  %call15.i = tail call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call15.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call15.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then18.i, label %if.then31.i

if.then18.i:                                      ; preds = %land.lhs.true.i
  %59 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base_addr, align 4
  %61 = ptrtoint ptr %cdata10 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %cdata10, align 4
  %global_reg_offset23.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %global_reg_offset23.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %global_reg_offset23.i, align 4
  %add.ptr24.i = getelementptr i8, ptr %60, i32 %64
  %add.ptr25.i = getelementptr i8, ptr %add.ptr24.i, i32 4
  %65 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr25.i) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !132
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %phi.cmp.i = icmp eq i32 %65, 0
  br i1 %phi.cmp.i, label %if.then18.i.if.end58_crit_edge, label %if.then18.i.rpm_put_crit_edge

if.then18.i.rpm_put_crit_edge:                    ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %rpm_put

if.then18.i.if.end58_crit_edge:                   ; preds = %if.then18.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then31.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #11
  %66 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base_addr, align 4
  %68 = ptrtoint ptr %cdata10 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %cdata10, align 4
  %global_reg_offset.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %69, i32 0, i32 1
  %70 = ptrtoint ptr %global_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %global_reg_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %67, i32 4
  %add.ptr9.i = getelementptr i8, ptr %add.ptr.i, i32 %71
  %72 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr9.i) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !131
  %cmp12.i = icmp eq i32 %72, 0
  br i1 %cmp12.i, label %if.then31.i.if.end58_crit_edge, label %if.then31.i.land.lhs.true.i_crit_edge

if.then31.i.land.lhs.true.i_crit_edge:            ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

if.then31.i.if.end58_crit_edge:                   ; preds = %if.then31.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.end58:                                         ; preds = %if.then31.i.if.end58_crit_edge, %if.then18.i.if.end58_crit_edge, %if.end54.if.end58_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %73 = ptrtoint ptr %base_addr to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %base_addr, align 4
  %75 = ptrtoint ptr %cdata10 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %cdata10, align 4
  %global_reg_offset.i59.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %global_reg_offset.i59.i to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %global_reg_offset.i59.i, align 4
  %add.ptr.i60.i = getelementptr i8, ptr %74, i32 %78
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i60.i, i32 16777216) #11, !srcloc !129
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #11
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #11
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #11
  %dev66 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %79 = ptrtoint ptr %dev66 to i32
  call void @__asan_store4_noabort(i32 %79)
  store ptr %dev, ptr %dev66, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %80 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr @tegra_adma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %81 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr @tegra_adma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %82 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @tegra_adma_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 40
  %83 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr @tegra_adma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %84 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %84)
  store ptr @tegra_adma_slave_config, ptr %device_config, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %85 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr @tegra_adma_tx_status, ptr %device_tx_status, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %86 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %86)
  store ptr @tegra_adma_terminate_all, ptr %device_terminate_all, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %87 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 16, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %88 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %88)
  store i32 16, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %89 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %89)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %90 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 1, ptr %residue_granularity, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 45
  %91 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @tegra_adma_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 46
  %92 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @tegra_adma_resume, ptr %device_resume, align 4
  %call81 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call81)
  %cmp82 = icmp slt i32 %call81, 0
  br i1 %cmp82, label %do.end86, label %if.end88

do.end86:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, i32 noundef %call81) #14
  br label %rpm_put

if.end88:                                         ; preds = %if.end58
  %of_node90 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %93 = ptrtoint ptr %of_node90 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %of_node90, align 8
  %call91 = tail call i32 @of_dma_controller_register(ptr noundef %94, ptr noundef nonnull @tegra_dma_of_xlate, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call91)
  %cmp92 = icmp slt i32 %call91, 0
  br i1 %cmp92, label %do.end96, label %if.end98

do.end96:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef %call91) #14
  tail call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #11
  br label %rpm_put

if.end98:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  %call.i206 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 5) #11
  %95 = ptrtoint ptr %nr_channels12 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load i32, ptr %nr_channels12, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.17, i32 noundef %96) #14
  br label %cleanup114

rpm_put:                                          ; preds = %do.end96, %do.end86, %if.then18.i.rpm_put_crit_edge
  %ret.2 = phi i32 [ %call81, %do.end86 ], [ %call91, %do.end96 ], [ -110, %if.then18.i.rpm_put_crit_edge ]
  %call.i207 = tail call i32 @__pm_runtime_idle(ptr noundef %dev, i32 noundef 4) #11
  br label %rpm_disable

rpm_disable:                                      ; preds = %rpm_put, %do.end11.i.i.i.i.i, %if.then.i.rpm_disable_crit_edge
  %ret.3 = phi i32 [ %ret.2, %rpm_put ], [ %call.i201, %if.then.i.rpm_disable_crit_edge ], [ %call.i201, %do.end11.i.i.i.i.i ]
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  br label %irq_dispose

irq_dispose:                                      ; preds = %rpm_disable, %cleanup
  %i.0216 = phi i32 [ %i.0218, %cleanup ], [ %i.0.lcssa, %rpm_disable ]
  %ret.4 = phi i32 [ %., %cleanup ], [ %ret.3, %rpm_disable ]
  %dec219 = add i32 %i.0216, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %dec219)
  %cmp110220 = icmp sgt i32 %dec219, -1
  br i1 %cmp110220, label %irq_dispose.while.body_crit_edge, label %irq_dispose.cleanup114_crit_edge

irq_dispose.cleanup114_crit_edge:                 ; preds = %irq_dispose
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

irq_dispose.while.body_crit_edge:                 ; preds = %irq_dispose
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %irq_dispose.while.body_crit_edge
  %dec221 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %dec219, %irq_dispose.while.body_crit_edge ]
  %irq113 = getelementptr %struct.tegra_adma, ptr %call.i, i32 0, i32 9, i32 %dec221, i32 3
  %97 = ptrtoint ptr %irq113 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load i32, ptr %irq113, align 4
  tail call void @irq_dispose_mapping(i32 noundef %98) #11
  %dec = add nsw i32 %dec221, -1
  %cmp110 = icmp sgt i32 %dec221, 0
  br i1 %cmp110, label %while.body.while.body_crit_edge, label %while.body.cleanup114_crit_edge

while.body.cleanup114_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup114

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

cleanup114:                                       ; preds = %while.body.cleanup114_crit_edge, %irq_dispose.cleanup114_crit_edge, %if.end98, %do.end29, %if.then18, %if.end.cleanup114_crit_edge, %do.end
  %retval.0 = phi i32 [ %12, %if.then18 ], [ %16, %do.end29 ], [ 0, %if.end98 ], [ -19, %do.end ], [ -12, %if.end.cleanup114_crit_edge ], [ %ret.4, %irq_dispose.cleanup114_crit_edge ], [ %ret.4, %while.body.cleanup114_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_adma_remove(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %3) #11
  tail call void @dma_async_device_unregister(ptr noundef %1) #11
  %nr_channels = getelementptr inbounds %struct.tegra_adma, ptr %1, i32 0, i32 4
  %4 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp8.not = icmp eq i32 %5, 0
  br i1 %cmp8.not, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %i.09 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %entry.for.body_crit_edge ]
  %irq = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.09, i32 3
  %6 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %irq, align 4
  tail call void @irq_dispose_mapping(i32 noundef %7) #11
  %inc = add nuw i32 %i.09, 1
  %8 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %nr_channels, align 4
  %cmp = icmp ult i32 %inc, %9
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #11
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_irq_get(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_adma_desc_free(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vd) #11
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_adma_alloc_chan_resources(ptr noundef %dc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %irq = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 3
  %0 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %irq, align 4
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
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
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_chan_name.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %device.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device.i, align 4
  br label %dma_chan_name.exit

dma_chan_name.exit:                               ; preds = %if.end.i.i, %entry.dma_chan_name.exit_crit_edge
  %retval.0.i.i = phi ptr [ %7, %if.end.i.i ], [ %5, %entry.dma_chan_name.exit_crit_edge ]
  %call.i = tail call i32 @request_threaded_irq(i32 noundef %1, ptr noundef nonnull @tegra_adma_isr, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i.i, ptr noundef %dc) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  %tdma.i31 = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 2
  %8 = ptrtoint ptr %tdma.i31 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tdma.i31, align 4
  %dev.i32 = getelementptr inbounds %struct.tegra_adma, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i32 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i32, align 4
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %dma_chan_name.exit
  %12 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev.i, align 4
  %init_name.i.i25 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1, i32 3
  %14 = ptrtoint ptr %init_name.i.i25 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %init_name.i.i25, align 8
  %tobool.not.i.i26 = icmp eq ptr %15, null
  br i1 %tobool.not.i.i26, label %if.end.i.i28, label %do.end.dma_chan_name.exit30_crit_edge

do.end.dma_chan_name.exit30_crit_edge:            ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_chan_name.exit30

if.end.i.i28:                                     ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  %device.i27 = getelementptr inbounds %struct.dma_chan_dev, ptr %13, i32 0, i32 1
  %16 = ptrtoint ptr %device.i27 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %device.i27, align 4
  br label %dma_chan_name.exit30

dma_chan_name.exit30:                             ; preds = %if.end.i.i28, %do.end.dma_chan_name.exit30_crit_edge
  %retval.0.i.i29 = phi ptr [ %17, %if.end.i.i28 ], [ %15, %do.end.dma_chan_name.exit30_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.20, ptr noundef %retval.0.i.i29) #14
  br label %cleanup

if.end:                                           ; preds = %dma_chan_name.exit
  %call.i33 = tail call i32 @__pm_runtime_resume(ptr noundef %11, i32 noundef 4) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i33)
  %cmp.i = icmp slt i32 %call.i33, 0
  br i1 %cmp.i, label %if.then.i, label %if.end10

if.then.i:                                        ; preds = %if.end
  %usage_count.i.i = getelementptr inbounds %struct.device, ptr %11, i32 0, i32 12, i32 13
  %call.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %usage_count.i.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !125
  tail call void @llvm.prefetch.p0(ptr %usage_count.i.i, i32 1, i32 3, i32 1) #11
  %18 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %usage_count.i.i, ptr %usage_count.i.i, i32 0, i32 -1, ptr elementtype(i32) %usage_count.i.i) #11, !srcloc !126
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %18, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %cmp.not.i.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i.i, label %if.then.i.if.then7_crit_edge, label %do.end11.i.i.i.i.i

if.then.i.if.then7_crit_edge:                     ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then7

do.end11.i.i.i.i.i:                               ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !127
  br label %if.then7

if.then7:                                         ; preds = %do.end11.i.i.i.i.i, %if.then.i.if.then7_crit_edge
  %19 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %irq, align 4
  %call9 = tail call ptr @free_irq(i32 noundef %20, ptr noundef %dc) #11
  br label %cleanup

if.end10:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 2
  %21 = ptrtoint ptr %cookie.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 1, ptr %cookie.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 3
  %22 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 1, ptr %completed_cookie.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end10, %if.then7, %dma_chan_name.exit30
  %retval.0 = phi i32 [ %call.i, %dma_chan_name.exit30 ], [ %call.i33, %if.then7 ], [ 0, %if.end10 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_adma_free_chan_resources(ptr noundef %dc) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @tegra_adma_terminate_all(ptr noundef %dc)
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %4, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %entry.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

entry.list_splice_tail_init.exit.i.i_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 4, i32 1
  %7 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %4, i32 0, i32 1
  %9 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %6, ptr %prev3.i.i.i.i, align 4
  %10 = ptrtoint ptr %6 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %4, ptr %6, align 4
  %11 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %8, align 4
  store ptr %8, ptr %0, align 4
  %12 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %entry.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 5
  %13 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %14, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i12.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.i, ptr %18, align 4
  store ptr %18, ptr %0, align 4
  %22 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 6
  %23 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %24, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i18.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head.i, ptr %28, align 4
  store ptr %28, ptr %0, align 4
  %32 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 7
  %33 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %34, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %0, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 7, i32 1
  %37 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i24.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head.i, ptr %38, align 4
  store ptr %38, ptr %0, align 4
  %42 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 8
  %43 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %44, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %0, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 8, i32 1
  %47 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i30.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head.i, ptr %48, align 4
  store ptr %48, ptr %0, align 4
  %52 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %53 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pn20.i = load ptr, ptr %head.i, align 4
  %cmp7.not21.i = icmp eq ptr %.pn20.i, %head.i
  br i1 %cmp7.not21.i, label %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge, label %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge

vchan_get_all_descriptors.exit.i.for.body.i_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  br label %for.body.i

vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %vchan_get_all_descriptors.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_free_chan_resources.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge
  %.pn22.i = phi ptr [ %.pn.i, %for.body.i.for.body.i_crit_edge ], [ %.pn20.i, %vchan_get_all_descriptors.exit.i.for.body.i_crit_edge ]
  %flags.i.i = getelementptr i8, ptr %.pn22.i, i32 -104
  %54 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %55, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %56 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %.pn.i = load ptr, ptr %.pn22.i, align 4
  %cmp7.not.i = icmp eq ptr %.pn.i, %head.i
  br i1 %cmp7.not.i, label %for.body.i.vchan_free_chan_resources.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.body.i.vchan_free_chan_resources.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_free_chan_resources.exit

vchan_free_chan_resources.exit:                   ; preds = %for.body.i.vchan_free_chan_resources.exit_crit_edge, %vchan_get_all_descriptors.exit.i.vchan_free_chan_resources.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i) #11
  call void @vchan_dma_desc_free_list(ptr noundef %dc, ptr noundef nonnull %head.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #11
  %task = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task) #11
  %irq = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 3
  %57 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %irq, align 4
  %call3 = call ptr @free_irq(i32 noundef %58, ptr noundef %dc) #11
  %tdma.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 2
  %59 = ptrtoint ptr %tdma.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %tdma.i, align 4
  %dev.i = getelementptr inbounds %struct.tegra_adma, ptr %60, i32 0, i32 1
  %61 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dev.i, align 4
  %call.i = call i32 @__pm_runtime_idle(ptr noundef %62, i32 noundef 5) #11
  %sreq_index = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 7
  %63 = ptrtoint ptr %sreq_index to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %sreq_index, align 4
  %sreq_dir = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 6
  %64 = ptrtoint ptr %sreq_dir to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 4, ptr %sreq_dir, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tegra_adma_issue_pending(ptr noundef %dc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 3
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 6
  %0 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %1, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 6, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 5, i32 1
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
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end9_crit_edge, label %if.then

vchan_issue_pending.exit.if.end9_crit_edge:       ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then:                                          ; preds = %vchan_issue_pending.exit
  %desc = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 1
  %12 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %if.then8, label %if.then.if.end9_crit_edge

if.then.if.end9_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then8:                                         ; preds = %if.then
  %14 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i.i = icmp eq ptr %15, %desc_issued.i
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 -108
  %tobool.not42.i = icmp eq ptr %add.ptr.i.i, null
  %tobool.not.i = or i1 %cmp.not.i.i, %tobool.not42.i
  br i1 %tobool.not.i, label %if.then8.if.end9_crit_edge, label %if.end.i

if.then8.if.end9_crit_edge:                       ; preds = %if.then8
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.end.i:                                         ; preds = %if.then8
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %15) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.i.if.end5.i_crit_edge

if.end.i.if.end5.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end5.i

if.end.i.i.i:                                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %16 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i.i, align 4
  %18 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %15, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev1.i.i.i.i, align 4
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %19, ptr %17, align 4
  br label %if.end5.i

if.end5.i:                                        ; preds = %if.end.i.i.i, %if.end.i.if.end5.i_crit_edge
  %22 = ptrtoint ptr %15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr inttoptr (i32 256 to ptr), ptr %15, align 4
  %prev.i.i16 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i16 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i16, align 4
  %ch_regs6.i = getelementptr i8, ptr %15, i32 8
  %tx_buf_pos.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 11
  %24 = ptrtoint ptr %tx_buf_pos.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 0, ptr %tx_buf_pos.i, align 4
  %tx_buf_count.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 10
  %25 = ptrtoint ptr %tx_buf_count.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 0, ptr %tx_buf_count.i, align 4
  %tc.i = getelementptr i8, ptr %15, i32 32
  %26 = ptrtoint ptr %tc.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %tc.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %28 = tail call i32 @llvm.bswap.i32(i32 %27) #11
  %chan_addr.i.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 4
  %29 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i30.i = getelementptr i8, ptr %30, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i30.i, i32 %28) #11, !srcloc !129
  %31 = ptrtoint ptr %ch_regs6.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %ch_regs6.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %33 = tail call i32 @llvm.bswap.i32(i32 %32) #11
  %34 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i32.i = getelementptr i8, ptr %35, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i32.i, i32 %33) #11, !srcloc !129
  %src_addr.i = getelementptr i8, ptr %15, i32 16
  %36 = ptrtoint ptr %src_addr.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %src_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %38 = tail call i32 @llvm.bswap.i32(i32 %37) #11
  %39 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i34.i = getelementptr i8, ptr %40, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i34.i, i32 %38) #11, !srcloc !129
  %trg_addr.i = getelementptr i8, ptr %15, i32 20
  %41 = ptrtoint ptr %trg_addr.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %trg_addr.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %43 = tail call i32 @llvm.bswap.i32(i32 %42) #11
  %44 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i36.i = getelementptr i8, ptr %45, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i36.i, i32 %43) #11, !srcloc !129
  %fifo_ctrl.i = getelementptr i8, ptr %15, i32 24
  %46 = ptrtoint ptr %fifo_ctrl.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %fifo_ctrl.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %48 = tail call i32 @llvm.bswap.i32(i32 %47) #11
  %49 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i38.i = getelementptr i8, ptr %50, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38.i, i32 %48) #11, !srcloc !129
  %config.i = getelementptr i8, ptr %15, i32 12
  %51 = ptrtoint ptr %config.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %config.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %53 = tail call i32 @llvm.bswap.i32(i32 %52) #11
  %54 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i40.i = getelementptr i8, ptr %55, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40.i, i32 %53) #11, !srcloc !129
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %56 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %chan_addr.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %57, i32 16777216) #11, !srcloc !129
  %58 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr %add.ptr.i.i, ptr %desc, align 4
  br label %if.end9

if.end9:                                          ; preds = %if.end5.i, %if.then8.if.end9_crit_edge, %if.then.if.end9_crit_edge, %vchan_issue_pending.exit.if.end9_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_adma_prep_dma_cyclic(ptr noundef %dc, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %direction, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %buf_len)
  %tobool.not = icmp eq i32 %buf_len, 0
  %0 = add i32 %period_len, -1073741821
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1073741820, i32 %0)
  %1 = icmp ult i32 %0, -1073741820
  %2 = or i1 %tobool.not, %1
  br i1 %2, label %do.end, label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %tdma.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 2
  %3 = ptrtoint ptr %tdma.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %tdma.i, align 4
  %dev.i = getelementptr inbounds %struct.tegra_adma, ptr %4, i32 0, i32 1
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.25) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  %div = udiv i32 %buf_len, %period_len
  %7 = mul i32 %div, %period_len
  %rem.decomposed = sub i32 %buf_len, %7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %rem.decomposed)
  %tobool4.not = icmp eq i32 %rem.decomposed, 0
  br i1 %tobool4.not, label %if.end10, label %do.end8

do.end8:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %tdma.i49 = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 2
  %8 = ptrtoint ptr %tdma.i49 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tdma.i49, align 4
  %dev.i50 = getelementptr inbounds %struct.tegra_adma, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %dev.i50 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dev.i50, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.28) #14
  br label %cleanup

if.end10:                                         ; preds = %if.end
  %and = and i32 %buf_addr, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %cmp11 = icmp eq i32 %and, 0
  br i1 %cmp11, label %if.end17, label %do.end15

do.end15:                                         ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  %tdma.i51 = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 2
  %12 = ptrtoint ptr %tdma.i51 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %tdma.i51, align 4
  %dev.i52 = getelementptr inbounds %struct.tegra_adma, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %dev.i52 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dev.i52, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.31) #14
  br label %cleanup

if.end17:                                         ; preds = %if.end10
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %16 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %16, i32 noundef 2304, i32 noundef 156) #15
  %tobool19.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool19.not, label %if.end17.cleanup_crit_edge, label %if.end21

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end17
  %buf_len22 = getelementptr inbounds %struct.tegra_adma_desc, ptr %call7.i.i, i32 0, i32 2
  %17 = ptrtoint ptr %buf_len22 to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %buf_len, ptr %buf_len22, align 8
  %period_len23 = getelementptr inbounds %struct.tegra_adma_desc, ptr %call7.i.i, i32 0, i32 3
  %18 = ptrtoint ptr %period_len23 to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %period_len, ptr %period_len23, align 4
  %num_periods = getelementptr inbounds %struct.tegra_adma_desc, ptr %call7.i.i, i32 0, i32 4
  %19 = ptrtoint ptr %num_periods to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %div, ptr %num_periods, align 8
  %ch_regs1.i = getelementptr inbounds %struct.tegra_adma_desc, ptr %call7.i.i, i32 0, i32 1
  %tdma.i53 = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 2
  %20 = ptrtoint ptr %tdma.i53 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %tdma.i53, align 4
  %cdata2.i = getelementptr inbounds %struct.tegra_adma, ptr %21, i32 0, i32 8
  %22 = ptrtoint ptr %cdata2.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cdata2.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %div)
  %cmp.i = icmp ugt i32 %div, 8
  br i1 %cmp.i, label %if.end21.if.then26_crit_edge, label %if.end.i

if.end21.if.then26_crit_edge:                     ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.end.i:                                         ; preds = %if.end21
  %24 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %24, ptr @__sancov_gen_cov_switch_values)
  switch i32 %direction, label %do.end.i [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb6.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dst_maxburst.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 5, i32 6
  %25 = ptrtoint ptr %dst_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %dst_maxburst.i, align 4
  %sub.i = shl nuw i32 %div, 28
  %and.i = add nuw i32 %sub.i, 1879048192
  %shl.i = and i32 %and.i, 1879048192
  %config.i = getelementptr inbounds %struct.tegra_adma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %27 = ptrtoint ptr %config.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %shl.i, ptr %config.i, align 8
  %sreq_index.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 7
  %28 = ptrtoint ptr %sreq_index.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %sreq_index.i, align 4
  %ch_req_mask.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %23, i32 0, i32 7
  %30 = ptrtoint ptr %ch_req_mask.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %ch_req_mask.i, align 4
  %and4.i = and i32 %31, %29
  %ch_req_tx_shift.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %23, i32 0, i32 3
  %32 = ptrtoint ptr %ch_req_tx_shift.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %ch_req_tx_shift.i, align 4
  %shl5.i = shl i32 %and4.i, %33
  %34 = ptrtoint ptr %ch_regs1.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %shl5.i, ptr %ch_regs1.i, align 4
  %src_addr.i = getelementptr inbounds %struct.tegra_adma_desc, ptr %call7.i.i, i32 0, i32 1, i32 2
  br label %sw.epilog.i

sw.bb6.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %src_maxburst.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 5, i32 5
  %35 = ptrtoint ptr %src_maxburst.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %src_maxburst.i, align 4
  %sub9.i = shl nuw nsw i32 %div, 24
  %and10.i = add nuw nsw i32 %sub9.i, 117440512
  %shl11.i = and i32 %and10.i, 117440512
  %config12.i = getelementptr inbounds %struct.tegra_adma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %config12.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %shl11.i, ptr %config12.i, align 8
  %sreq_index13.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 7
  %38 = ptrtoint ptr %sreq_index13.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %sreq_index13.i, align 4
  %ch_req_mask14.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %23, i32 0, i32 7
  %40 = ptrtoint ptr %ch_req_mask14.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %ch_req_mask14.i, align 4
  %and15.i = and i32 %41, %39
  %ch_req_rx_shift.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %23, i32 0, i32 4
  %42 = ptrtoint ptr %ch_req_rx_shift.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %ch_req_rx_shift.i, align 4
  %shl16.i = shl i32 %and15.i, %43
  %44 = ptrtoint ptr %ch_regs1.i to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %shl16.i, ptr %ch_regs1.i, align 4
  %trg_addr.i = getelementptr inbounds %struct.tegra_adma_desc, ptr %call7.i.i, i32 0, i32 1, i32 3
  br label %sw.epilog.i

do.end.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.tegra_adma, ptr %21, i32 0, i32 1
  %45 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %46, ptr noundef nonnull @.str.33) #14
  br label %if.then26

sw.epilog.i:                                      ; preds = %sw.bb6.i, %sw.bb.i
  %trg_addr.sink.i = phi ptr [ %trg_addr.i, %sw.bb6.i ], [ %src_addr.i, %sw.bb.i ]
  %burst_size.0.i = phi i32 [ %36, %sw.bb6.i ], [ %26, %sw.bb.i ]
  %adma_dir.0.i = phi i32 [ 8706, %sw.bb6.i ], [ 16898, %sw.bb.i ]
  %fifo_size_shift.0.i = phi i32 [ 0, %sw.bb6.i ], [ 8, %sw.bb.i ]
  %47 = ptrtoint ptr %trg_addr.sink.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %buf_addr, ptr %trg_addr.sink.i, align 4
  %48 = ptrtoint ptr %ch_regs1.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %ch_regs1.i, align 4
  %or22.i = or i32 %49, %adma_dir.0.i
  store i32 %or22.i, ptr %ch_regs1.i, align 4
  %50 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %23, align 4
  %call23.i = tail call i32 %51(i32 noundef %burst_size.0.i) #11
  %config24.i = getelementptr inbounds %struct.tegra_adma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %52 = ptrtoint ptr %config24.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %config24.i, align 8
  %or25.i = or i32 %53, %call23.i
  %or27.i = or i32 %or25.i, 1
  store i32 %or27.i, ptr %config24.i, align 8
  %has_outstanding_reqs.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %23, i32 0, i32 13
  %54 = ptrtoint ptr %has_outstanding_reqs.i to i32
  call void @__asan_load1_noabort(i32 %54)
  %55 = load i8, ptr %has_outstanding_reqs.i, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %55)
  %tobool.not.i = icmp eq i8 %55, 0
  br i1 %tobool.not.i, label %sw.epilog.i.if.end31.i_crit_edge, label %if.then28.i

sw.epilog.i.if.end31.i_crit_edge:                 ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end31.i

if.then28.i:                                      ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #13
  %or30.i = or i32 %or25.i, 129
  %56 = ptrtoint ptr %config24.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %or30.i, ptr %config24.i, align 8
  br label %if.end31.i

if.end31.i:                                       ; preds = %if.then28.i, %sw.epilog.i.if.end31.i_crit_edge
  %sreq_index32.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 7
  %57 = ptrtoint ptr %sreq_index32.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %sreq_index32.i, align 4
  %sreq_index_offset.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %23, i32 0, i32 12
  %59 = ptrtoint ptr %sreq_index_offset.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %sreq_index_offset.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %60)
  %cmp33.i = icmp ugt i32 %58, %60
  %ch_fifo_size_mask.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %23, i32 0, i32 11
  %61 = ptrtoint ptr %ch_fifo_size_mask.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %ch_fifo_size_mask.i, align 4
  %..i = select i1 %cmp33.i, i32 2, i32 3
  %and38.i = and i32 %..i, %62
  %shl39.sink.i = shl nuw nsw i32 %and38.i, %fifo_size_shift.0.i
  %63 = getelementptr inbounds %struct.tegra_adma_desc, ptr %call7.i.i, i32 0, i32 1, i32 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %64)
  store i32 %shl39.sink.i, ptr %63, align 4
  %65 = ptrtoint ptr %period_len23 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %period_len23, align 4
  %and42.i = and i32 %66, 1073741820
  %tc.i = getelementptr inbounds %struct.tegra_adma_desc, ptr %call7.i.i, i32 0, i32 1, i32 6
  %67 = ptrtoint ptr %tc.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %and42.i, ptr %tc.i, align 4
  %68 = ptrtoint ptr %tdma.i53 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %tdma.i53, align 4
  %sreq_reserved.i.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 8
  %70 = ptrtoint ptr %sreq_reserved.i.i to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %sreq_reserved.i.i, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not.i.i = icmp eq i8 %71, 0
  br i1 %tobool.not.i.i, label %if.end.i.i, label %if.then.i.i

if.then.i.i:                                      ; preds = %if.end31.i
  %sreq_dir.i.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 6
  %72 = ptrtoint ptr %sreq_dir.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %sreq_dir.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %73, i32 %direction)
  %cmp.i.i = icmp eq i32 %73, %direction
  br i1 %cmp.i.i, label %if.then.i.i.if.end27_crit_edge, label %if.then.i.i.if.then26_crit_edge

if.then.i.i.if.then26_crit_edge:                  ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then26

if.then.i.i.if.end27_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end27

if.end.i.i:                                       ; preds = %if.end31.i
  %cdata.i.i = getelementptr inbounds %struct.tegra_adma, ptr %69, i32 0, i32 8
  %74 = ptrtoint ptr %cdata.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %cdata.i.i, align 4
  %ch_req_max.i.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %75, i32 0, i32 8
  %76 = ptrtoint ptr %ch_req_max.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load i32, ptr %ch_req_max.i.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %58, i32 %77)
  %cmp3.i.i = icmp ugt i32 %58, %77
  br i1 %cmp3.i.i, label %do.end.i.i, label %if.end5.i.i

do.end.i.i:                                       ; preds = %if.end.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i82.i = getelementptr inbounds %struct.tegra_adma, ptr %69, i32 0, i32 1
  %78 = ptrtoint ptr %dev.i82.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %dev.i82.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %79, ptr noundef nonnull @.str.35) #14
  br label %if.then26

if.end5.i.i:                                      ; preds = %if.end.i.i
  %80 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %80, ptr @__sancov_gen_cov_switch_values.51)
  switch i32 %direction, label %do.end29.i.i [
    i32 1, label %sw.bb.i.i
    i32 2, label %sw.bb13.i.i
  ]

sw.bb.i.i:                                        ; preds = %if.end5.i.i
  %tx_requests_reserved.i.i = getelementptr inbounds %struct.tegra_adma, ptr %69, i32 0, i32 6
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef %58, ptr noundef %tx_requests_reserved.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool6.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool6.not.i.i, label %sw.bb.i.i.sw.epilog.i.i_crit_edge, label %do.end10.i.i

sw.bb.i.i.sw.epilog.i.i_crit_edge:                ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

do.end10.i.i:                                     ; preds = %sw.bb.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev11.i.i = getelementptr inbounds %struct.tegra_adma, ptr %69, i32 0, i32 1
  %81 = ptrtoint ptr %dev11.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %dev11.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %82, ptr noundef nonnull @.str.38) #14
  br label %if.then26

sw.bb13.i.i:                                      ; preds = %if.end5.i.i
  %rx_requests_reserved.i.i = getelementptr inbounds %struct.tegra_adma, ptr %69, i32 0, i32 5
  %call14.i.i = tail call i32 @_test_and_set_bit(i32 noundef %58, ptr noundef %rx_requests_reserved.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call14.i.i)
  %tobool15.not.i.i = icmp eq i32 %call14.i.i, 0
  br i1 %tobool15.not.i.i, label %sw.bb13.i.i.sw.epilog.i.i_crit_edge, label %do.end19.i.i

sw.bb13.i.i.sw.epilog.i.i_crit_edge:              ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sw.epilog.i.i

do.end19.i.i:                                     ; preds = %sw.bb13.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %dev20.i.i = getelementptr inbounds %struct.tegra_adma, ptr %69, i32 0, i32 1
  %83 = ptrtoint ptr %dev20.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dev20.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %84, ptr noundef nonnull @.str.38) #14
  br label %if.then26

do.end29.i.i:                                     ; preds = %if.end5.i.i
  %dev30.i.i = getelementptr inbounds %struct.tegra_adma, ptr %69, i32 0, i32 1
  %85 = ptrtoint ptr %dev30.i.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %dev30.i.i, align 4
  %call31.i.i = tail call ptr @dev_driver_string(ptr noundef %86) #11
  %87 = ptrtoint ptr %dev30.i.i to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %dev30.i.i, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.device, ptr %88, i32 0, i32 3
  %89 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %90, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %do.end29.i.i.dev_name.exit.i.i_crit_edge

do.end29.i.i.dev_name.exit.i.i_crit_edge:         ; preds = %do.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i.i

if.end.i.i.i:                                     ; preds = %do.end29.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %88 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %88, align 4
  br label %dev_name.exit.i.i

dev_name.exit.i.i:                                ; preds = %if.end.i.i.i, %do.end29.i.i.dev_name.exit.i.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %92, %if.end.i.i.i ], [ %90, %do.end29.i.i.dev_name.exit.i.i_crit_edge ]
  %dev.i.i.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %93 = ptrtoint ptr %dev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %dev.i.i.i, align 4
  %init_name.i.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %94, i32 0, i32 1, i32 3
  %95 = ptrtoint ptr %init_name.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %init_name.i.i.i.i, align 8
  %tobool.not.i.i.i.i = icmp eq ptr %96, null
  br i1 %tobool.not.i.i.i.i, label %if.end.i.i.i.i, label %dev_name.exit.i.i.dma_chan_name.exit.i.i_crit_edge

dev_name.exit.i.i.dma_chan_name.exit.i.i_crit_edge: ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_chan_name.exit.i.i

if.end.i.i.i.i:                                   ; preds = %dev_name.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %device.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %94, i32 0, i32 1
  %97 = ptrtoint ptr %device.i.i.i to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %device.i.i.i, align 4
  br label %dma_chan_name.exit.i.i

dma_chan_name.exit.i.i:                           ; preds = %if.end.i.i.i.i, %dev_name.exit.i.i.dma_chan_name.exit.i.i_crit_edge
  %retval.0.i.i.i.i = phi ptr [ %98, %if.end.i.i.i.i ], [ %96, %dev_name.exit.i.i.dma_chan_name.exit.i.i_crit_edge ]
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 275, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call31.i.i, ptr noundef %retval.0.i.i.i, ptr noundef %retval.0.i.i.i.i) #11
  br label %if.then26

sw.epilog.i.i:                                    ; preds = %sw.bb13.i.i.sw.epilog.i.i_crit_edge, %sw.bb.i.i.sw.epilog.i.i_crit_edge
  %sreq_dir47.i.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 6
  %99 = ptrtoint ptr %sreq_dir47.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store i32 %direction, ptr %sreq_dir47.i.i, align 4
  %100 = ptrtoint ptr %sreq_reserved.i.i to i32
  call void @__asan_store1_noabort(i32 %100)
  store i8 1, ptr %sreq_reserved.i.i, align 4
  br label %if.end27

if.then26:                                        ; preds = %dma_chan_name.exit.i.i, %do.end19.i.i, %do.end10.i.i, %do.end.i.i, %if.then.i.i.if.then26_crit_edge, %do.end.i, %if.end21.if.then26_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

if.end27:                                         ; preds = %sw.epilog.i.i, %if.then.i.i.if.end27_crit_edge
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %dc) #11
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %101 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %102 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %102)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %103 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %104 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %104)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %105 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 4, i32 1
  %106 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %107, ptr noundef %desc_allocated.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i54, label %if.end27.vchan_tx_prep.exit_crit_edge

if.end27.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_tx_prep.exit

if.end.i.i.i54:                                   ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  %108 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store ptr %node.i, ptr %prev.i.i, align 4
  %109 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %109)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %110 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store ptr %107, ptr %prev3.i.i.i, align 8
  %111 = ptrtoint ptr %107 to i32
  call void @__asan_store4_noabort(i32 %111)
  store volatile ptr %node.i, ptr %107, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i54, %if.end27.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %if.then26, %if.end17.cleanup_crit_edge, %do.end15, %do.end8, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %do.end8 ], [ null, %if.then26 ], [ %call7.i.i, %vchan_tx_prep.exit ], [ null, %do.end15 ], [ null, %if.end17.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra_adma_slave_config(ptr nocapture noundef writeonly %dc, ptr nocapture noundef readonly %sconfig) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %sconfig1 = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 5
  %0 = call ptr @memcpy(ptr %sconfig1, ptr %sconfig, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_adma_tx_status(ptr noundef %dc, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 3
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
  %brmerge = or i1 %tobool.not.i, %or.cond.i.i
  %not.or.cond.i.i = xor i1 %or.cond.i.i, true
  br i1 %brmerge, label %if.then.i.i.cleanup_crit_edge, label %if.then.i.i.do.body2_crit_edge

if.then.i.i.do.body2_crit_edge:                   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge55 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge55, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

if.else.i.i.do.body2_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i.do.body2_crit_edge, %if.then.i.i.do.body2_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %call9 = tail call ptr @vchan_find_desc(ptr noundef %dc, i32 noundef %cookie) #11
  %tobool10.not = icmp eq ptr %call9, null
  br i1 %tobool10.not, label %if.else, label %if.then11

if.then11:                                        ; preds = %do.body2
  call void @__sanitizer_cov_trace_pc() #13
  %tc = getelementptr inbounds %struct.tegra_adma_desc, ptr %call9, i32 0, i32 1, i32 6
  %8 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %tc, align 4
  br label %dma_set_residue.exit

if.else:                                          ; preds = %do.body2
  %desc13 = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 1
  %10 = ptrtoint ptr %desc13 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %desc13, align 4
  %tobool14.not = icmp eq ptr %11, null
  br i1 %tobool14.not, label %if.else.dma_set_residue.exit_crit_edge, label %land.lhs.true

if.else.dma_set_residue.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_set_residue.exit

land.lhs.true:                                    ; preds = %if.else
  %12 = ptrtoint ptr %11 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %11, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %13, i32 %cookie)
  %cmp19 = icmp eq i32 %13, %cookie
  br i1 %cmp19, label %if.then21, label %land.lhs.true.dma_set_residue.exit_crit_edge

land.lhs.true.dma_set_residue.exit_crit_edge:     ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_set_residue.exit

if.then21:                                        ; preds = %land.lhs.true
  %chan_addr.i.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 4
  %14 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %15, i32 84
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !130
  %17 = tail call i32 @llvm.bswap.i32(i32 %16) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %tx_buf_pos.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 11
  %18 = ptrtoint ptr %tx_buf_pos.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %tx_buf_pos.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %17, i32 %19)
  %cmp.i = icmp ult i32 %17, %19
  br i1 %cmp.i, label %if.then.i46, label %if.else.i

if.then.i46:                                      ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %tx_buf_count.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 10
  %20 = ptrtoint ptr %tx_buf_count.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %tx_buf_count.i, align 4
  %sub.i = add i32 %17, 65536
  %add.i = sub i32 %sub.i, %19
  %add3.i = add i32 %add.i, %21
  store i32 %add3.i, ptr %tx_buf_count.i, align 4
  br label %tegra_adma_get_residue.exit

if.else.i:                                        ; preds = %if.then21
  call void @__sanitizer_cov_trace_pc() #13
  %sub5.i = sub i32 %17, %19
  %tx_buf_count6.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 10
  %22 = ptrtoint ptr %tx_buf_count6.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %tx_buf_count6.i, align 4
  %add7.i = add i32 %sub5.i, %23
  store i32 %add7.i, ptr %tx_buf_count6.i, align 4
  br label %tegra_adma_get_residue.exit

tegra_adma_get_residue.exit:                      ; preds = %if.else.i, %if.then.i46
  %tx_buf_count8.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 10
  %24 = ptrtoint ptr %tx_buf_count8.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %tx_buf_count8.i, align 4
  %num_periods.i = getelementptr inbounds %struct.tegra_adma_desc, ptr %11, i32 0, i32 4
  %26 = ptrtoint ptr %num_periods.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %num_periods.i, align 4
  %rem.i = urem i32 %25, %27
  %28 = ptrtoint ptr %tx_buf_pos.i to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 %17, ptr %tx_buf_pos.i, align 4
  %buf_len.i = getelementptr inbounds %struct.tegra_adma_desc, ptr %11, i32 0, i32 2
  %29 = ptrtoint ptr %buf_len.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %buf_len.i, align 4
  %period_len.i = getelementptr inbounds %struct.tegra_adma_desc, ptr %11, i32 0, i32 3
  %31 = ptrtoint ptr %period_len.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %period_len.i, align 4
  %mul.i = mul i32 %32, %rem.i
  %sub10.i = sub i32 %30, %mul.i
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %tegra_adma_get_residue.exit, %land.lhs.true.dma_set_residue.exit_crit_edge, %if.else.dma_set_residue.exit_crit_edge, %if.then11
  %residual.0 = phi i32 [ %9, %if.then11 ], [ %sub10.i, %tegra_adma_get_residue.exit ], [ 0, %land.lhs.true.dma_set_residue.exit_crit_edge ], [ 0, %if.else.dma_set_residue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #11
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %33 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %residual.0, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i54.shrunk = phi i1 [ true, %dma_set_residue.exit ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i54 = zext i1 %retval.0.i.i54.shrunk to i32
  ret i32 %retval.0.i.i54
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_adma_terminate_all(ptr noundef %dc) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #11
  %0 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %1 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head, ptr %head, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head, ptr %0, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 3
  %call3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %desc = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 1
  %3 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %4, null
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  call void @arm_heavy_mb() #11
  %chan_addr.i.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 4
  %5 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %chan_addr.i.i, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %6, i32 0) #11, !srcloc !129
  %7 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %8, i32 16
  %9 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #11, !srcloc !130
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %10 = and i32 %9, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %10)
  %tobool.not.i.i = icmp eq i32 %10, 0
  br i1 %tobool.not.i.i, label %if.then.tegra_adma_irq_clear.exit.i_crit_edge, label %if.then.i.i

if.then.tegra_adma_irq_clear.exit.i_crit_edge:    ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_adma_irq_clear.exit.i

if.then.i.i:                                      ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  call void @arm_heavy_mb() #11
  %11 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %12, i32 28
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i.i, i32 16777216) #11, !srcloc !129
  br label %tegra_adma_irq_clear.exit.i

tegra_adma_irq_clear.exit.i:                      ; preds = %if.then.i.i, %if.then.tegra_adma_irq_clear.exit.i_crit_edge
  %call1.i = call i64 @ktime_get() #11
  %add.i.i = add i64 %call1.i, 10000000
  %13 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr45.i = getelementptr i8, ptr %14, i32 12
  %15 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr45.i) #11, !srcloc !130
  %16 = call i32 @llvm.bswap.i32(i32 %15) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !137
  %and46.i = and i32 %16, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and46.i)
  %tobool.not47.i = icmp eq i32 %and46.i, 0
  br i1 %tobool.not47.i, label %tegra_adma_irq_clear.exit.i.for.end.i_crit_edge, label %tegra_adma_irq_clear.exit.i.land.lhs.true.i_crit_edge

tegra_adma_irq_clear.exit.i.land.lhs.true.i_crit_edge: ; preds = %tegra_adma_irq_clear.exit.i
  br label %land.lhs.true.i

tegra_adma_irq_clear.exit.i.for.end.i_crit_edge:  ; preds = %tegra_adma_irq_clear.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

land.lhs.true.i:                                  ; preds = %cond.false.i.land.lhs.true.i_crit_edge, %tegra_adma_irq_clear.exit.i.land.lhs.true.i_crit_edge
  %call6.i = call i64 @ktime_get() #11
  call void @__sanitizer_cov_trace_cmp8(i64 %call6.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call6.i, %add.i.i
  br i1 %cmp3.i.i, label %if.then8.i, label %cond.false.i

if.then8.i:                                       ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  %17 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr12.i = getelementptr i8, ptr %18, i32 12
  %19 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12.i) #11, !srcloc !130
  %20 = call i32 @llvm.bswap.i32(i32 %19) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !138
  br label %for.end.i

cond.false.i:                                     ; preds = %land.lhs.true.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %21 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  call void %21(i32 noundef 4294960) #11
  %22 = ptrtoint ptr %chan_addr.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan_addr.i.i, align 4
  %add.ptr.i = getelementptr i8, ptr %23, i32 12
  %24 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !130
  %25 = call i32 @llvm.bswap.i32(i32 %24) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !137
  %and.i = and i32 %25, 1
  %tobool.not.i = icmp eq i32 %and.i, 0
  br i1 %tobool.not.i, label %cond.false.i.for.end.i_crit_edge, label %cond.false.i.land.lhs.true.i_crit_edge

cond.false.i.land.lhs.true.i_crit_edge:           ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %land.lhs.true.i

cond.false.i.for.end.i_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end.i

for.end.i:                                        ; preds = %cond.false.i.for.end.i_crit_edge, %if.then8.i, %tegra_adma_irq_clear.exit.i.for.end.i_crit_edge
  %status.0.i = phi i32 [ %20, %if.then8.i ], [ %16, %tegra_adma_irq_clear.exit.i.for.end.i_crit_edge ], [ %25, %cond.false.i.for.end.i_crit_edge ]
  %and25.i = and i32 %status.0.i, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and25.i)
  %tobool26.not.i = icmp eq i32 %and25.i, 0
  br i1 %tobool26.not.i, label %if.end30.i, label %do.end.i

do.end.i:                                         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %tdma.i.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 2
  %26 = ptrtoint ptr %tdma.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %tdma.i.i, align 4
  %dev.i.i = getelementptr inbounds %struct.tegra_adma, ptr %27, i32 0, i32 1
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %29, ptr noundef nonnull @.str.43) #14
  br label %if.end

if.end30.i:                                       ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %desc, align 4
  call void @kfree(ptr noundef %31) #11
  %32 = ptrtoint ptr %desc to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr null, ptr %desc, align 4
  br label %if.end

if.end:                                           ; preds = %if.end30.i, %do.end.i, %entry.if.end_crit_edge
  %tdma1.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 2
  %33 = ptrtoint ptr %tdma1.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %tdma1.i, align 4
  %sreq_reserved.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 8
  %35 = ptrtoint ptr %sreq_reserved.i to i32
  call void @__asan_load1_noabort(i32 %35)
  %36 = load i8, ptr %sreq_reserved.i, align 4, !range !134
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %36)
  %tobool.not.i16 = icmp eq i8 %36, 0
  br i1 %tobool.not.i16, label %if.end.tegra_adma_request_free.exit_crit_edge, label %if.end.i

if.end.tegra_adma_request_free.exit_crit_edge:    ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %tegra_adma_request_free.exit

if.end.i:                                         ; preds = %if.end
  %sreq_dir.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 6
  %37 = ptrtoint ptr %sreq_dir.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %sreq_dir.i, align 4
  %39 = zext i32 %38 to i64
  call void @__sanitizer_cov_trace_switch(i64 %39, ptr @__sancov_gen_cov_switch_values.52)
  switch i32 %38, label %do.end.i18 [
    i32 1, label %sw.bb.i
    i32 2, label %sw.bb2.i
  ]

sw.bb.i:                                          ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sreq_index.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 7
  %40 = ptrtoint ptr %sreq_index.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %sreq_index.i, align 4
  %tx_requests_reserved.i = getelementptr inbounds %struct.tegra_adma, ptr %34, i32 0, i32 6
  call void @_clear_bit(i32 noundef %41, ptr noundef %tx_requests_reserved.i) #11
  br label %sw.epilog.i

sw.bb2.i:                                         ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %sreq_index3.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 7
  %42 = ptrtoint ptr %sreq_index3.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %sreq_index3.i, align 4
  %rx_requests_reserved.i = getelementptr inbounds %struct.tegra_adma, ptr %34, i32 0, i32 5
  call void @_clear_bit(i32 noundef %43, ptr noundef %rx_requests_reserved.i) #11
  br label %sw.epilog.i

do.end.i18:                                       ; preds = %if.end.i
  %dev.i = getelementptr inbounds %struct.tegra_adma, ptr %34, i32 0, i32 1
  %44 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %dev.i, align 4
  %call.i = call ptr @dev_driver_string(ptr noundef %45) #11
  %46 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dev.i, align 4
  %init_name.i.i = getelementptr inbounds %struct.device, ptr %47, i32 0, i32 3
  %48 = ptrtoint ptr %init_name.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %init_name.i.i, align 8
  %tobool.not.i.i17 = icmp eq ptr %49, null
  br i1 %tobool.not.i.i17, label %if.end.i.i, label %do.end.i18.dev_name.exit.i_crit_edge

do.end.i18.dev_name.exit.i_crit_edge:             ; preds = %do.end.i18
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit.i

if.end.i.i:                                       ; preds = %do.end.i18
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %47, align 4
  br label %dev_name.exit.i

dev_name.exit.i:                                  ; preds = %if.end.i.i, %do.end.i18.dev_name.exit.i_crit_edge
  %retval.0.i.i = phi ptr [ %51, %if.end.i.i ], [ %49, %do.end.i18.dev_name.exit.i_crit_edge ]
  %dev.i.i19 = getelementptr inbounds %struct.dma_chan, ptr %dc, i32 0, i32 5
  %52 = ptrtoint ptr %dev.i.i19 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i.i19, align 4
  %init_name.i.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %53, i32 0, i32 1, i32 3
  %54 = ptrtoint ptr %init_name.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %init_name.i.i.i, align 8
  %tobool.not.i.i.i = icmp eq ptr %55, null
  br i1 %tobool.not.i.i.i, label %if.end.i.i.i, label %dev_name.exit.i.dma_chan_name.exit.i_crit_edge

dev_name.exit.i.dma_chan_name.exit.i_crit_edge:   ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_chan_name.exit.i

if.end.i.i.i:                                     ; preds = %dev_name.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %53, i32 0, i32 1
  %56 = ptrtoint ptr %device.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %device.i.i, align 4
  br label %dma_chan_name.exit.i

dma_chan_name.exit.i:                             ; preds = %if.end.i.i.i, %dev_name.exit.i.dma_chan_name.exit.i_crit_edge
  %retval.0.i.i.i = phi ptr [ %57, %if.end.i.i.i ], [ %55, %dev_name.exit.i.dma_chan_name.exit.i_crit_edge ]
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 303, i32 noundef 9, ptr noundef nonnull @.str.42, ptr noundef %call.i, ptr noundef %retval.0.i.i, ptr noundef %retval.0.i.i.i) #11
  br label %tegra_adma_request_free.exit

sw.epilog.i:                                      ; preds = %sw.bb2.i, %sw.bb.i
  %58 = ptrtoint ptr %sreq_reserved.i to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 0, ptr %sreq_reserved.i, align 4
  br label %tegra_adma_request_free.exit

tegra_adma_request_free.exit:                     ; preds = %sw.epilog.i, %dma_chan_name.exit.i, %if.end.tegra_adma_request_free.exit_crit_edge
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 4
  %59 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %60, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %tegra_adma_request_free.exit.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i20

tegra_adma_request_free.exit.list_splice_tail_init.exit.i_crit_edge: ; preds = %tegra_adma_request_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit.i

if.then.i.i20:                                    ; preds = %tegra_adma_request_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  %61 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 4, i32 1
  %63 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %60, i32 0, i32 1
  %65 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %62, ptr %prev3.i.i.i, align 4
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

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i20, %tegra_adma_request_free.exit.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 5
  %69 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %70, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %0, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 5, i32 1
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
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 6
  %79 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %80, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #13
  %81 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %0, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 6, i32 1
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
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 7
  %89 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %90, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #13
  %91 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %0, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 7, i32 1
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
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 8
  %99 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %100, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #13
  %101 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %0, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %dc, i32 0, i32 8, i32 1
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
  %108 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %108)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #11
  call void @vchan_dma_desc_free_list(ptr noundef %dc, ptr noundef nonnull %head) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_adma_pause(ptr nocapture noundef readonly %dc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 1
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %ch_regs2 = getelementptr inbounds %struct.tegra_adma_desc, ptr %1, i32 0, i32 1
  %chan_addr.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 4
  %2 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %5 = or i32 %4, 16777216
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %ch_regs2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ch_regs2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i19 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i19, i32 %5) #11, !srcloc !129
  %10 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %11, i32 12
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %13 = and i32 %12, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.i.not = icmp eq i32 %13, 0
  br i1 %tobool.i.not, label %while.body, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body:                                       ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 4294960) #11
  %15 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i.i.1 = getelementptr i8, ptr %16, i32 12
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.1) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %18 = and i32 %17, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool.i.not.1 = icmp eq i32 %18, 0
  br i1 %tobool.i.not.1, label %while.body.1, label %while.body.cleanup_crit_edge

while.body.cleanup_crit_edge:                     ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.1:                                     ; preds = %while.body
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 4294960) #11
  %20 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i.i.2 = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.2) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %23 = and i32 %22, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %tobool.i.not.2 = icmp eq i32 %23, 0
  br i1 %tobool.i.not.2, label %while.body.2, label %while.body.1.cleanup_crit_edge

while.body.1.cleanup_crit_edge:                   ; preds = %while.body.1
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.2:                                     ; preds = %while.body.1
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %24 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %24(i32 noundef 4294960) #11
  %25 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i.i.3 = getelementptr i8, ptr %26, i32 12
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.3) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %28 = and i32 %27, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool.i.not.3 = icmp eq i32 %28, 0
  br i1 %tobool.i.not.3, label %while.body.3, label %while.body.2.cleanup_crit_edge

while.body.2.cleanup_crit_edge:                   ; preds = %while.body.2
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.3:                                     ; preds = %while.body.2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 4294960) #11
  %30 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i.i.4 = getelementptr i8, ptr %31, i32 12
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.4) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %33 = and i32 %32, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %33)
  %tobool.i.not.4 = icmp eq i32 %33, 0
  br i1 %tobool.i.not.4, label %while.body.4, label %while.body.3.cleanup_crit_edge

while.body.3.cleanup_crit_edge:                   ; preds = %while.body.3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.4:                                     ; preds = %while.body.3
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %34 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %34(i32 noundef 4294960) #11
  %35 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i.i.5 = getelementptr i8, ptr %36, i32 12
  %37 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.5) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %38 = and i32 %37, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %38)
  %tobool.i.not.5 = icmp eq i32 %38, 0
  br i1 %tobool.i.not.5, label %while.body.5, label %while.body.4.cleanup_crit_edge

while.body.4.cleanup_crit_edge:                   ; preds = %while.body.4
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.5:                                     ; preds = %while.body.4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %39 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %39(i32 noundef 4294960) #11
  %40 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i.i.6 = getelementptr i8, ptr %41, i32 12
  %42 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.6) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %43 = and i32 %42, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %43)
  %tobool.i.not.6 = icmp eq i32 %43, 0
  br i1 %tobool.i.not.6, label %while.body.6, label %while.body.5.cleanup_crit_edge

while.body.5.cleanup_crit_edge:                   ; preds = %while.body.5
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.6:                                     ; preds = %while.body.5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %44 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %44(i32 noundef 4294960) #11
  %45 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i.i.7 = getelementptr i8, ptr %46, i32 12
  %47 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.7) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %48 = and i32 %47, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %48)
  %tobool.i.not.7 = icmp eq i32 %48, 0
  br i1 %tobool.i.not.7, label %while.body.7, label %while.body.6.cleanup_crit_edge

while.body.6.cleanup_crit_edge:                   ; preds = %while.body.6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.7:                                     ; preds = %while.body.6
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %49 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %49(i32 noundef 4294960) #11
  %50 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i.i.8 = getelementptr i8, ptr %51, i32 12
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.8) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %53 = and i32 %52, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %tobool.i.not.8 = icmp eq i32 %53, 0
  br i1 %tobool.i.not.8, label %while.body.8, label %while.body.7.cleanup_crit_edge

while.body.7.cleanup_crit_edge:                   ; preds = %while.body.7
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

while.body.8:                                     ; preds = %while.body.7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %54 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %54(i32 noundef 4294960) #11
  %55 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i.i.9 = getelementptr i8, ptr %56, i32 12
  %57 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.9) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %58 = and i32 %57, 33554432
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %tobool.i.not.9 = icmp eq i32 %58, 0
  br i1 %tobool.i.not.9, label %do.end, label %while.body.8.cleanup_crit_edge

while.body.8.cleanup_crit_edge:                   ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.end:                                           ; preds = %while.body.8
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %59 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %59(i32 noundef 4294960) #11
  %tdma.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 2
  %60 = ptrtoint ptr %tdma.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %tdma.i, align 4
  %dev.i = getelementptr inbounds %struct.tegra_adma, ptr %61, i32 0, i32 1
  %62 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %63, ptr noundef nonnull @.str.45) #14
  br label %cleanup

cleanup:                                          ; preds = %do.end, %while.body.8.cleanup_crit_edge, %while.body.7.cleanup_crit_edge, %while.body.6.cleanup_crit_edge, %while.body.5.cleanup_crit_edge, %while.body.4.cleanup_crit_edge, %while.body.3.cleanup_crit_edge, %while.body.2.cleanup_crit_edge, %while.body.1.cleanup_crit_edge, %while.body.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -16, %do.end ], [ 0, %while.body.8.cleanup_crit_edge ], [ 0, %while.body.7.cleanup_crit_edge ], [ 0, %while.body.6.cleanup_crit_edge ], [ 0, %while.body.5.cleanup_crit_edge ], [ 0, %while.body.4.cleanup_crit_edge ], [ 0, %while.body.3.cleanup_crit_edge ], [ 0, %while.body.2.cleanup_crit_edge ], [ 0, %while.body.1.cleanup_crit_edge ], [ 0, %while.body.cleanup_crit_edge ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_adma_resume(ptr nocapture noundef readonly %dc) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %desc1 = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 1
  %0 = ptrtoint ptr %desc1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %desc1, align 4
  %ch_regs2 = getelementptr inbounds %struct.tegra_adma_desc, ptr %1, i32 0, i32 1
  %chan_addr.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dc, i32 0, i32 4
  %2 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 36
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %5 = and i32 %4, -16777217
  %6 = tail call i32 @llvm.bswap.i32(i32 %5)
  %7 = ptrtoint ptr %ch_regs2 to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %ch_regs2, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i11 = getelementptr i8, ptr %9, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i11, i32 %5) #11, !srcloc !129
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @tegra_dma_of_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %2 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %3)
  %cmp.not = icmp eq i32 %3, 1
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp1 = icmp eq i32 %5, 0
  br i1 %cmp1, label %do.end, label %if.end3

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.tegra_adma, ptr %1, i32 0, i32 1
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.47) #14
  br label %cleanup

if.end3:                                          ; preds = %if.end
  %call = tail call ptr @dma_get_any_slave_channel(ptr noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end3.cleanup_crit_edge, label %if.end5

if.end3.cleanup_crit_edge:                        ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end3
  call void @__sanitizer_cov_trace_pc() #13
  %sreq_index7 = getelementptr inbounds %struct.tegra_adma_chan, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %sreq_index7 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %5, ptr %sreq_index7, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end5, %if.end3.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ %call, %if.end5 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end3.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_adma_isr(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %dev_id, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %chan_addr.i.i.i = getelementptr inbounds %struct.tegra_adma_chan, ptr %dev_id, i32 0, i32 4
  %0 = ptrtoint ptr %chan_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan_addr.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 16
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #11, !srcloc !130
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not.i = icmp eq i32 %3, 0
  br i1 %tobool.not.i, label %entry.cleanup_crit_edge, label %lor.lhs.false

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

lor.lhs.false:                                    ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %4 = ptrtoint ptr %chan_addr.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %chan_addr.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %5, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 16777216) #11, !srcloc !129
  %desc = getelementptr inbounds %struct.tegra_adma_chan, ptr %dev_id, i32 0, i32 1
  %6 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %desc, align 4
  %tobool.not = icmp eq ptr %7, null
  br i1 %tobool.not, label %lor.lhs.false.cleanup_crit_edge, label %if.end

lor.lhs.false.cleanup_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %lor.lhs.false
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %7, i32 0, i32 3
  %8 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 9
  %10 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 1, i32 1
  %call.i.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i.i:                                      ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %9, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i.i, %if.end.cleanup_crit_edge, %lor.lhs.false.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ 0, %lor.lhs.false.cleanup_crit_edge ], [ 1, %if.end.cleanup_crit_edge ], [ 1, %if.then.i.i ]
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dev_driver_string(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra210_adma_get_burst_config(i32 noundef %burst_size) #9 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %burst_size, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %0)
  %1 = icmp ult i32 %0, -16
  %2 = tail call i32 @llvm.ctlz.i32(i32 %burst_size, i1 false), !range !139
  %.neg = mul nsw i32 %2, -1048576
  %.op.op = add nsw i32 %.neg, 33554432
  %shl = select i1 %1, i32 5242880, i32 %.op.op
  ret i32 %shl
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @tegra186_adma_get_burst_config(i32 noundef %burst_size) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = add i32 %burst_size, -17
  call void @__sanitizer_cov_trace_const_cmp4(i32 -16, i32 %0)
  %1 = icmp ult i32 %0, -16
  %burst_size.op = shl nuw nsw i32 %burst_size, 20
  %burst_size.op.op = add nsw i32 %burst_size.op, -1048576
  %shl = select i1 %1, i32 15728640, i32 %burst_size.op.op
  ret i32 %shl
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_suspend(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @pm_runtime_force_resume(ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_adma_runtime_suspend(ptr nocapture noundef readonly %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %base_addr.i = getelementptr inbounds %struct.tegra_adma, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base_addr.i, align 4
  %cdata.i = getelementptr inbounds %struct.tegra_adma, ptr %1, i32 0, i32 8
  %4 = ptrtoint ptr %cdata.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %cdata.i, align 4
  %global_reg_offset.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %global_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %global_reg_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %3, i32 %7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !130
  %9 = tail call i32 @llvm.bswap.i32(i32 %8) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !140
  %global_cmd = getelementptr inbounds %struct.tegra_adma, ptr %1, i32 0, i32 7
  %10 = ptrtoint ptr %global_cmd to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %9, ptr %global_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %8)
  %tobool.not = icmp eq i32 %8, 0
  br i1 %tobool.not, label %entry.clk_disable_crit_edge, label %for.cond.preheader

entry.clk_disable_crit_edge:                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_disable

for.cond.preheader:                               ; preds = %entry
  %nr_channels = getelementptr inbounds %struct.tegra_adma, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %cmp47.not = icmp eq i32 %12, 0
  br i1 %cmp47.not, label %for.cond.preheader.clk_disable_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.clk_disable_crit_edge:         ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_disable

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.048 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %chan_addr.i = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.048, i32 4
  %13 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %chan_addr.i, align 4
  %15 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %14) #11, !srcloc !130
  %16 = tail call i32 @llvm.bswap.i32(i32 %15) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %cmd = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.048, i32 9, i32 5
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool5.not = icmp eq i32 %15, 0
  br i1 %tobool5.not, label %for.body.for.inc_crit_edge, label %if.end7

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end7:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %ch_regs = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.048, i32 9
  %18 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i36 = getelementptr i8, ptr %19, i32 68
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i36) #11, !srcloc !130
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %tc = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.048, i32 9, i32 6
  %22 = ptrtoint ptr %tc to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %21, ptr %tc, align 4
  %23 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %24, i32 52
  %25 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i38) #11, !srcloc !130
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %src_addr = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.048, i32 9, i32 2
  %27 = ptrtoint ptr %src_addr to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 %26, ptr %src_addr, align 4
  %28 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %29, i32 60
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i40) #11, !srcloc !130
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %trg_addr = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.048, i32 9, i32 3
  %32 = ptrtoint ptr %trg_addr to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %31, ptr %trg_addr, align 4
  %33 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %34, i32 36
  %35 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i42) #11, !srcloc !130
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %37 = ptrtoint ptr %ch_regs to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %ch_regs, align 4
  %38 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %39, i32 44
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i44) #11, !srcloc !130
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %fifo_ctrl = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.048, i32 9, i32 4
  %42 = ptrtoint ptr %fifo_ctrl to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %fifo_ctrl, align 4
  %43 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %44, i32 40
  %45 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i46) #11, !srcloc !130
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !136
  %config = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.048, i32 9, i32 1
  %47 = ptrtoint ptr %config to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %config, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end7, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.048, 1
  %48 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %nr_channels, align 4
  %cmp = icmp ult i32 %inc, %49
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.clk_disable_crit_edge

for.inc.clk_disable_crit_edge:                    ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %clk_disable

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

clk_disable:                                      ; preds = %for.inc.clk_disable_crit_edge, %for.cond.preheader.clk_disable_crit_edge, %entry.clk_disable_crit_edge
  %ahub_clk = getelementptr inbounds %struct.tegra_adma, ptr %1, i32 0, i32 3
  %50 = ptrtoint ptr %ahub_clk to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %ahub_clk, align 4
  tail call void @clk_disable(ptr noundef %51) #11
  tail call void @clk_unprepare(ptr noundef %51) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @tegra_adma_runtime_resume(ptr noundef %dev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %ahub_clk = getelementptr inbounds %struct.tegra_adma, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %ahub_clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %ahub_clk, align 4
  %call.i = tail call i32 @clk_prepare(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %3) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %3) #11
  br label %do.end

do.end:                                           ; preds = %if.then3.i, %entry.do.end_crit_edge
  %retval.0.i.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i, %entry.do.end_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.49, i32 noundef %retval.0.i.ph) #14
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  %global_cmd = getelementptr inbounds %struct.tegra_adma, ptr %1, i32 0, i32 7
  %4 = ptrtoint ptr %global_cmd to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %global_cmd, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !128
  tail call void @arm_heavy_mb() #11
  %6 = tail call i32 @llvm.bswap.i32(i32 %5) #11
  %base_addr.i = getelementptr inbounds %struct.tegra_adma, ptr %1, i32 0, i32 2
  %7 = ptrtoint ptr %base_addr.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base_addr.i, align 4
  %cdata.i = getelementptr inbounds %struct.tegra_adma, ptr %1, i32 0, i32 8
  %9 = ptrtoint ptr %cdata.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %cdata.i, align 4
  %global_reg_offset.i = getelementptr inbounds %struct.tegra_adma_chip_data, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %global_reg_offset.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %global_reg_offset.i, align 4
  %add.ptr.i = getelementptr i8, ptr %8, i32 %12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %6) #11, !srcloc !129
  %13 = ptrtoint ptr %global_cmd to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %global_cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %tobool3.not = icmp eq i32 %14, 0
  br i1 %tobool3.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  %nr_channels = getelementptr inbounds %struct.tegra_adma, ptr %1, i32 0, i32 4
  %15 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %nr_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %cmp53.not = icmp eq i32 %16, 0
  br i1 %cmp53.not, label %for.cond.preheader.cleanup_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.054 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %cmd = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.054, i32 9, i32 5
  %17 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %cmd, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool6.not = icmp eq i32 %18, 0
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %if.end8

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

if.end8:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %ch_regs = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.054, i32 9
  %tc = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.054, i32 9, i32 6
  %19 = ptrtoint ptr %tc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %tc, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %21 = tail call i32 @llvm.bswap.i32(i32 %20) #11
  %chan_addr.i = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.054, i32 4
  %22 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i38 = getelementptr i8, ptr %23, i32 68
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i38, i32 %21) #11, !srcloc !129
  %src_addr = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.054, i32 9, i32 2
  %24 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %src_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %26 = tail call i32 @llvm.bswap.i32(i32 %25) #11
  %27 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i40 = getelementptr i8, ptr %28, i32 52
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i40, i32 %26) #11, !srcloc !129
  %trg_addr = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.054, i32 9, i32 3
  %29 = ptrtoint ptr %trg_addr to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %trg_addr, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %31 = tail call i32 @llvm.bswap.i32(i32 %30) #11
  %32 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i42 = getelementptr i8, ptr %33, i32 60
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i42, i32 %31) #11, !srcloc !129
  %34 = ptrtoint ptr %ch_regs to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %ch_regs, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %36 = tail call i32 @llvm.bswap.i32(i32 %35) #11
  %37 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i44 = getelementptr i8, ptr %38, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i44, i32 %36) #11, !srcloc !129
  %fifo_ctrl = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.054, i32 9, i32 4
  %39 = ptrtoint ptr %fifo_ctrl to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load i32, ptr %fifo_ctrl, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %41 = tail call i32 @llvm.bswap.i32(i32 %40) #11
  %42 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i46 = getelementptr i8, ptr %43, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i46, i32 %41) #11, !srcloc !129
  %config = getelementptr %struct.tegra_adma, ptr %1, i32 0, i32 9, i32 %i.054, i32 9, i32 1
  %44 = ptrtoint ptr %config to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %config, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %46 = tail call i32 @llvm.bswap.i32(i32 %45) #11
  %47 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %chan_addr.i, align 4
  %add.ptr.i48 = getelementptr i8, ptr %48, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i48, i32 %46) #11, !srcloc !129
  %49 = ptrtoint ptr %cmd to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %cmd, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !133
  tail call void @arm_heavy_mb() #11
  %51 = tail call i32 @llvm.bswap.i32(i32 %50) #11
  %52 = ptrtoint ptr %chan_addr.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %chan_addr.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %53, i32 %51) #11, !srcloc !129
  br label %for.inc

for.inc:                                          ; preds = %if.end8, %for.body.for.inc_crit_edge
  %inc = add nuw i32 %i.054, 1
  %54 = ptrtoint ptr %nr_channels to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %nr_channels, align 4
  %cmp = icmp ult i32 %inc, %55
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ %retval.0.i.ph, %do.end ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.cond.preheader.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.uadd.sat.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 58)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { mustprogress nofree nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #10 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !13, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !39, !40, !42, !43, !44, !45, !47, !48, !49, !50, !52, !53, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !67, !68, !69, !71, !72, !73, !74, !76, !77, !78, !79, !81, !82, !83, !85, !86, !88, !90, !91, !92, !93, !95, !96, !97, !98, !100, !101, !102, !103, !105, !107, !109, !111, !113, !114, !115}
!llvm.module.flags = !{!116, !117, !118, !119, !120, !121, !122, !123}
!llvm.ident = !{!124}

!0 = !{ptr @__initcall__kmod_tegra210_adma__237_986_tegra_admac_driver_init6, !1, !"__initcall__kmod_tegra210_adma__237_986_tegra_admac_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/tegra210-adma.c", i32 986, i32 1}
!2 = !{ptr @__exitcall_tegra_admac_driver_exit, !1, !"__exitcall_tegra_admac_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias238, !4, !"__UNIQUE_ID_alias238", i1 false, i1 false}
!4 = !{!"../drivers/dma/tegra210-adma.c", i32 988, i32 1}
!5 = !{ptr @__UNIQUE_ID_description239, !6, !"__UNIQUE_ID_description239", i1 false, i1 false}
!6 = !{!"../drivers/dma/tegra210-adma.c", i32 989, i32 1}
!7 = !{ptr @__UNIQUE_ID_author240, !8, !"__UNIQUE_ID_author240", i1 false, i1 false}
!8 = !{!"../drivers/dma/tegra210-adma.c", i32 990, i32 1}
!9 = !{ptr @__UNIQUE_ID_author241, !10, !"__UNIQUE_ID_author241", i1 false, i1 false}
!10 = !{!"../drivers/dma/tegra210-adma.c", i32 991, i32 1}
!11 = !{ptr @__UNIQUE_ID_file242, !12, !"__UNIQUE_ID_file242", i1 false, i1 false}
!12 = !{!"../drivers/dma/tegra210-adma.c", i32 992, i32 1}
!13 = !{ptr @__UNIQUE_ID_license243, !12, !"__UNIQUE_ID_license243", i1 false, i1 false}
!14 = !{ptr @.str, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/tegra210-adma.c", i32 978, i32 11}
!16 = !{ptr @tegra_admac_driver, !17, !"tegra_admac_driver", i1 false, i1 false}
!17 = !{!"../drivers/dma/tegra210-adma.c", i32 976, i32 31}
!18 = !{ptr @.str.1, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/dma/tegra210-adma.c", i32 845, i32 3}
!20 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @tegra_adma_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @tegra_adma_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.6, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/tegra210-adma.c", i32 865, i32 44}
!28 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/tegra210-adma.c", i32 867, i32 3}
!30 = !{ptr @tegra_adma_probe._entry.7, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @tegra_adma_probe._entry_ptr.9, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/tegra210-adma.c", i32 922, i32 3}
!34 = !{ptr @tegra_adma_probe._entry.10, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @tegra_adma_probe._entry_ptr.12, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/tegra210-adma.c", i32 929, i32 3}
!38 = !{ptr @tegra_adma_probe._entry.13, !37, !"_entry", i1 false, i1 false}
!39 = !{ptr @tegra_adma_probe._entry_ptr.15, !37, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.17, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma/tegra210-adma.c", i32 935, i32 2}
!42 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @tegra_adma_probe._entry.16, !41, !"_entry", i1 false, i1 false}
!44 = !{ptr @tegra_adma_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/dma/tegra210-adma.c", i32 672, i32 3}
!47 = !{ptr @.str.21, !46, !"<string literal>", i1 false, i1 false}
!48 = !{ptr @tegra_adma_alloc_chan_resources._entry, !46, !"_entry", i1 false, i1 false}
!49 = !{ptr @tegra_adma_alloc_chan_resources._entry_ptr, !46, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/tegra210-adma.c", i32 362, i32 3}
!52 = !{ptr @.str.23, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @.str.24, !51, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @tegra_adma_start._entry, !51, !"_entry", i1 false, i1 false}
!55 = !{ptr @tegra_adma_start._entry_ptr, !51, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/tegra210-adma.c", i32 635, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @tegra_adma_prep_dma_cyclic._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @tegra_adma_prep_dma_cyclic._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/tegra210-adma.c", i32 640, i32 3}
!63 = !{ptr @tegra_adma_prep_dma_cyclic._entry.27, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @tegra_adma_prep_dma_cyclic._entry_ptr.29, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.31, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dma/tegra210-adma.c", i32 645, i32 3}
!67 = !{ptr @tegra_adma_prep_dma_cyclic._entry.30, !66, !"_entry", i1 false, i1 false}
!68 = !{ptr @tegra_adma_prep_dma_cyclic._entry_ptr.32, !66, !"_entry_ptr", i1 false, i1 false}
!69 = !{ptr @.str.33, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/dma/tegra210-adma.c", i32 589, i32 3}
!71 = !{ptr @.str.34, !70, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @tegra_adma_set_xfer_params._entry, !70, !"_entry", i1 false, i1 false}
!73 = !{ptr @tegra_adma_set_xfer_params._entry_ptr, !70, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @.str.35, !75, !"<string literal>", i1 false, i1 false}
!75 = !{!"../drivers/dma/tegra210-adma.c", i32 254, i32 3}
!76 = !{ptr @.str.36, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @tegra_adma_request_alloc._entry, !75, !"_entry", i1 false, i1 false}
!78 = !{ptr @tegra_adma_request_alloc._entry_ptr, !75, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/dma/tegra210-adma.c", i32 261, i32 4}
!81 = !{ptr @tegra_adma_request_alloc._entry.37, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @tegra_adma_request_alloc._entry_ptr.39, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @tegra_adma_request_alloc._entry.40, !84, !"_entry", i1 false, i1 false}
!84 = !{!"../drivers/dma/tegra210-adma.c", i32 268, i32 4}
!85 = !{ptr @tegra_adma_request_alloc._entry_ptr.41, !84, !"_entry_ptr", i1 false, i1 false}
!86 = !{ptr @.str.42, !87, !"<string literal>", i1 false, i1 false}
!87 = !{!"../drivers/dma/tegra210-adma.c", i32 274, i32 3}
!88 = !{ptr @.str.43, !89, !"<string literal>", i1 false, i1 false}
!89 = !{!"../drivers/dma/tegra210-adma.c", i32 340, i32 3}
!90 = !{ptr @.str.44, !89, !"<string literal>", i1 false, i1 false}
!91 = !{ptr @tegra_adma_stop._entry, !89, !"_entry", i1 false, i1 false}
!92 = !{ptr @tegra_adma_stop._entry_ptr, !89, !"_entry_ptr", i1 false, i1 false}
!93 = !{ptr @.str.45, !94, !"<string literal>", i1 false, i1 false}
!94 = !{!"../drivers/dma/tegra210-adma.c", i32 464, i32 3}
!95 = !{ptr @.str.46, !94, !"<string literal>", i1 false, i1 false}
!96 = !{ptr @tegra_adma_pause._entry, !94, !"_entry", i1 false, i1 false}
!97 = !{ptr @tegra_adma_pause._entry_ptr, !94, !"_entry_ptr", i1 false, i1 false}
!98 = !{ptr @.str.47, !99, !"<string literal>", i1 false, i1 false}
!99 = !{!"../drivers/dma/tegra210-adma.c", i32 716, i32 3}
!100 = !{ptr @.str.48, !99, !"<string literal>", i1 false, i1 false}
!101 = !{ptr @tegra_dma_of_xlate._entry, !99, !"_entry", i1 false, i1 false}
!102 = !{ptr @tegra_dma_of_xlate._entry_ptr, !99, !"_entry_ptr", i1 false, i1 false}
!103 = !{ptr @tegra_adma_of_match, !104, !"tegra_adma_of_match", i1 false, i1 false}
!104 = !{!"../drivers/dma/tegra210-adma.c", i32 829, i32 34}
!105 = !{ptr @tegra210_chip_data, !106, !"tegra210_chip_data", i1 false, i1 false}
!106 = !{!"../drivers/dma/tegra210-adma.c", i32 797, i32 42}
!107 = !{ptr @tegra186_chip_data, !108, !"tegra186_chip_data", i1 false, i1 false}
!108 = !{!"../drivers/dma/tegra210-adma.c", i32 813, i32 42}
!109 = !{ptr @tegra_adma_dev_pm_ops, !110, !"tegra_adma_dev_pm_ops", i1 false, i1 false}
!110 = !{!"../drivers/dma/tegra210-adma.c", i32 969, i32 32}
!111 = !{ptr @.str.49, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/dma/tegra210-adma.c", i32 771, i32 3}
!113 = !{ptr @.str.50, !112, !"<string literal>", i1 false, i1 false}
!114 = !{ptr @tegra_adma_runtime_resume._entry, !112, !"_entry", i1 false, i1 false}
!115 = !{ptr @tegra_adma_runtime_resume._entry_ptr, !112, !"_entry_ptr", i1 false, i1 false}
!116 = !{i32 1, !"wchar_size", i32 2}
!117 = !{i32 1, !"min_enum_size", i32 4}
!118 = !{i32 8, !"branch-target-enforcement", i32 0}
!119 = !{i32 8, !"sign-return-address", i32 0}
!120 = !{i32 8, !"sign-return-address-all", i32 0}
!121 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!122 = !{i32 7, !"uwtable", i32 1}
!123 = !{i32 7, !"frame-pointer", i32 2}
!124 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!125 = !{i64 2148263782}
!126 = !{i64 748605, i64 748630, i64 748652, i64 748668, i64 748680, i64 748700, i64 748724, i64 748740, i64 748752}
!127 = !{i64 2148263970}
!128 = !{i64 2154490238}
!129 = !{i64 3101530}
!130 = !{i64 3101948}
!131 = !{i64 2154498315}
!132 = !{i64 2154498973}
!133 = !{i64 2154491639}
!134 = !{i8 0, i8 2}
!135 = !{i64 2154439888}
!136 = !{i64 2154492484}
!137 = !{i64 2154508208}
!138 = !{i64 2154508710}
!139 = !{i32 0, i32 33}
!140 = !{i64 2154491253}
