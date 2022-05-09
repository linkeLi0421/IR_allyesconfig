; ModuleID = '/llk/IR_all_yes/drivers/dma/sun6i-dma.c_pt.bc'
source_filename = "../drivers/dma/sun6i-dma.c"
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
%struct.sun6i_dma_config = type { i32, i32, i32, ptr, ptr, ptr, ptr, i32, i32, i32, i32, i8 }
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
%struct.sun6i_dma_dev = type { %struct.dma_device, ptr, ptr, ptr, i32, %struct.spinlock, ptr, %struct.tasklet_struct, %struct.atomic_t, %struct.list_head, ptr, ptr, ptr, ptr, i32, i32, i32 }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.sun6i_pchan = type { i32, ptr, ptr, ptr, ptr }
%struct.sun6i_vchan = type { %struct.virt_dma_chan, %struct.list_head, %struct.dma_slave_config, ptr, i8, i8, i8 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_slave_config = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i8, ptr, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.sun6i_desc = type { %struct.virt_dma_desc, i32, ptr }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.sun6i_dma_lli = type { i32, i32, i32, i32, i32, i32, ptr }
%struct.dma_chan_dev = type { ptr, %struct.device, i32, i8 }
%struct.scatterlist = type { i32, i32, i32, i32, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }

@__initcall__kmod_sun6i_dma__250_1474_sun6i_dma_driver_init6 = internal global ptr @sun6i_dma_driver_init, section ".initcall6.init", align 4
@sun6i_dma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sun6i_dma_probe, ptr @sun6i_dma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sun6i_dma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_sun6i_dma_driver_exit = internal global ptr @sun6i_dma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description251 = internal constant [58 x i8] c"sun6i_dma.description=Allwinner A31 DMA Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author252 = internal constant [49 x i8] c"sun6i_dma.author=Sugar <shuge@allwinnertech.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author253 = internal constant [66 x i8] c"sun6i_dma.author=Maxime Ripard <maxime.ripard@free-electrons.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file254 = internal constant [37 x i8] c"sun6i_dma.file=drivers/dma/sun6i-dma\00", section ".modinfo", align 1
@__UNIQUE_ID_license255 = internal constant [22 x i8] c"sun6i_dma.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun6i-dma\00", [22 x i8] zeroinitializer }, align 32
@sun6i_dma_match = internal constant { [9 x %struct.of_device_id], [444 x i8] } { [9 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun6i-a31-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun6i_a31_dma_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a23-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a23_dma_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-a83t-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_a83t_dma_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-h3-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_h3_dma_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun8i-v3s-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun8i_v3s_dma_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a64-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a64_dma_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-a100-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_a100_dma_cfg }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"allwinner,sun50i-h6-dma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @sun50i_h6_dma_cfg }, %struct.of_device_id zeroinitializer], [444 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 1284, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"No clock specified\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun6i_dma_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"drivers/dma/sun6i-dma.c\00", [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry_ptr = internal global ptr @sun6i_dma_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"mbus\00", [27 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 1291, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"No mbus clock specified\0A\00", [39 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry_ptr.9 = internal global ptr @sun6i_dma_probe._entry.7, section ".printk_index", align 4
@sun6i_dma_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 1298, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"No reset controller specified\0A\00", [33 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry_ptr.12 = internal global ptr @sun6i_dma_probe._entry.10, section ".printk_index", align 4
@sun6i_dma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.2, ptr @.str.3, i32 1305, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"No memory for descriptors dma pool\0A\00", [60 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry_ptr.15 = internal global ptr @sun6i_dma_probe._entry.13, section ".printk_index", align 4
@sun6i_dma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&sdc->lock\00", [21 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.2, ptr @.str.3, i32 1343, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Can't get dma-channels.\0A\00", [39 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry_ptr.20 = internal global ptr @sun6i_dma_probe._entry.18, section ".printk_index", align 4
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-requests\00", [19 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 1350, ptr @.str.24, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Missing dma-requests, using %u.\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry_ptr.25 = internal global ptr @sun6i_dma_probe._entry.22, section ".printk_index", align 4
@sun6i_dma_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.2, ptr @.str.3, i32 1390, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"Couldn't deassert the device from reset\0A\00", [55 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry_ptr.28 = internal global ptr @sun6i_dma_probe._entry.26, section ".printk_index", align 4
@sun6i_dma_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.2, ptr @.str.3, i32 1396, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Couldn't enable the clock\0A\00", [37 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry_ptr.31 = internal global ptr @sun6i_dma_probe._entry.29, section ".printk_index", align 4
@sun6i_dma_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.2, ptr @.str.3, i32 1403, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Couldn't enable mbus clock\0A\00", [36 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry_ptr.34 = internal global ptr @sun6i_dma_probe._entry.32, section ".printk_index", align 4
@sun6i_dma_probe._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.2, ptr @.str.3, i32 1411, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"Cannot request IRQ\0A\00", [44 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry_ptr.37 = internal global ptr @sun6i_dma_probe._entry.35, section ".printk_index", align 4
@sun6i_dma_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.39, ptr @.str.2, ptr @.str.3, i32 1417, ptr @.str.40, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [38 x i8], [58 x i8] } { [38 x i8] c"Failed to register DMA engine device\0A\00", [58 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry_ptr.41 = internal global ptr @sun6i_dma_probe._entry.38, section ".printk_index", align 4
@sun6i_dma_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.2, ptr @.str.3, i32 1424, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"of_dma_controller_register failed\0A\00", [61 x i8] zeroinitializer }, align 32
@sun6i_dma_probe._entry_ptr.44 = internal global ptr @sun6i_dma_probe._entry.42, section ".printk_index", align 4
@sun6i_dma_issue_pending.__UNIQUE_ID_ddebug248 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.46, ptr @.str.3, ptr @.str.47, i8 0, i8 -11, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.45 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"sun6i_dma\00", [22 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sun6i_dma_issue_pending\00", [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vchan %p: issued\0A\00", [46 x i8] zeroinitializer }, align 32
@sun6i_dma_issue_pending.__UNIQUE_ID_ddebug249 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.46, ptr @.str.3, ptr @.str.48, i8 0, i8 -10, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.48 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"vchan %p: nothing to issue\0A\00", [36 x i8] zeroinitializer }, align 32
@sun6i_dma_prep_slave_sg._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.50, ptr @.str.3, i32 702, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Invalid DMA configuration\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.50 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sun6i_dma_prep_slave_sg\00", [40 x i8] zeroinitializer }, align 32
@sun6i_dma_prep_slave_sg._entry_ptr = internal global ptr @sun6i_dma_prep_slave_sg._entry, section ".printk_index", align 4
@sun6i_dma_prep_slave_sg.__UNIQUE_ID_ddebug243 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 -74, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [62 x i8], [34 x i8] } { [62 x i8] c"%s; chan: %d, dest: %pad, src: %pad, len: %u. flags: 0x%08lx\0A\00", [34 x i8] zeroinitializer }, align 32
@sun6i_dma_prep_slave_sg.__UNIQUE_ID_ddebug244 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.50, ptr @.str.3, ptr @.str.51, i8 0, i8 -71, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@sun6i_dma_prep_slave_sg.__UNIQUE_ID_ddebug245 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.50, ptr @.str.3, ptr @.str.52, i8 0, i8 -69, i8 0, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.52 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"First: %pad\0A\00", [19 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@sun6i_dma_dump_lli.__UNIQUE_ID_ddebug238 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.53, ptr @.str.3, ptr @.str.54, i8 0, i8 99, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.53 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"sun6i_dma_dump_lli\00", [45 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [98 x i8], [62 x i8] } { [98 x i8] c"\0A\09desc:   p - %pa v - 0x%p\0A\09\09c - 0x%08x s - 0x%08x d - 0x%08x\0A\09\09l - 0x%08x p - 0x%08x n - 0x%08x\0A\00", [62 x i8] zeroinitializer }, align 32
@sun6i_dma_prep_dma_memcpy.__UNIQUE_ID_ddebug242 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.55, ptr @.str.3, ptr @.str.56, i8 0, i8 -96, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.55 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sun6i_dma_prep_dma_memcpy\00", [38 x i8] zeroinitializer }, align 32
@.str.56 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"%s; chan: %d, dest: %pad, src: %pad, len: %zu. flags: 0x%08lx\0A\00", [33 x i8] zeroinitializer }, align 32
@sun6i_dma_prep_dma_memcpy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.55, ptr @.str.3, i32 653, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to alloc lli memory\0A\00", [36 x i8] zeroinitializer }, align 32
@sun6i_dma_prep_dma_memcpy._entry_ptr = internal global ptr @sun6i_dma_prep_dma_memcpy._entry, section ".printk_index", align 4
@sun6i_dma_prep_dma_cyclic._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.58, ptr @.str.3, i32 781, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"sun6i_dma_prep_dma_cyclic\00", [38 x i8] zeroinitializer }, align 32
@sun6i_dma_prep_dma_cyclic._entry_ptr = internal global ptr @sun6i_dma_prep_dma_cyclic._entry, section ".printk_index", align 4
@sun6i_dma_prep_dma_cyclic._entry.59 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.58, ptr @.str.3, i32 792, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@sun6i_dma_prep_dma_cyclic._entry_ptr.60 = internal global ptr @sun6i_dma_prep_dma_cyclic._entry.59, section ".printk_index", align 4
@sun6i_dma_pause.__UNIQUE_ID_ddebug246 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.61, ptr @.str.3, ptr @.str.62, i8 0, i8 -45, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.61 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"sun6i_dma_pause\00", [16 x i8] zeroinitializer }, align 32
@.str.62 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"vchan %p: pause\0A\00", [47 x i8] zeroinitializer }, align 32
@sun6i_dma_resume.__UNIQUE_ID_ddebug247 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.63, ptr @.str.3, ptr @.str.64, i8 0, i8 -40, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.63 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"sun6i_dma_resume\00", [47 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"vchan %p: resume\0A\00", [46 x i8] zeroinitializer }, align 32
@sun6i_dma_tasklet.__UNIQUE_ID_ddebug239 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.65, ptr @.str.3, ptr @.str.66, i8 0, i8 122, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.65 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"sun6i_dma_tasklet\00", [46 x i8] zeroinitializer }, align 32
@.str.66 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"pchan %u: free\0A\00", [16 x i8] zeroinitializer }, align 32
@sun6i_dma_tasklet.__UNIQUE_ID_ddebug240 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.65, ptr @.str.3, ptr @.str.67, i8 0, i8 -127, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.67 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"pchan %u: alloc vchan %p\0A\00", [38 x i8] zeroinitializer }, align 32
@sun6i_dma_dump_com_regs.__UNIQUE_ID_ddebug236 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.68, ptr @.str.3, ptr @.str.69, i8 0, i8 59, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.68 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sun6i_dma_dump_com_regs\00", [40 x i8] zeroinitializer }, align 32
@.str.69 = internal constant { [123 x i8], [37 x i8] } { [123 x i8] c"Common register:\0A\09mask0(%04x): 0x%08x\0A\09mask1(%04x): 0x%08x\0A\09pend0(%04x): 0x%08x\0A\09pend1(%04x): 0x%08x\0A\09stats(%04x): 0x%08x\0A\00", [37 x i8] zeroinitializer }, align 32
@sun6i_dma_dump_chan_regs.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.70, ptr @.str.3, ptr @.str.71, i8 0, i8 67, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.70 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"sun6i_dma_dump_chan_regs\00", [39 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [195 x i8], [61 x i8] } { [195 x i8] c"Chan %d reg: %pa\0A\09___en(%04x): \090x%08x\0A\09pause(%04x): \090x%08x\0A\09start(%04x): \090x%08x\0A\09__cfg(%04x): \090x%08x\0A\09__src(%04x): \090x%08x\0A\09__dst(%04x): \090x%08x\0A\09count(%04x): \090x%08x\0A\09_para(%04x): \090x%08x\0A\0A\00", [61 x i8] zeroinitializer }, align 32
@sun6i_dma_interrupt.__UNIQUE_ID_ddebug241 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.72, ptr @.str.3, ptr @.str.73, i8 0, i8 -119, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.72 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"sun6i_dma_interrupt\00", [44 x i8] zeroinitializer }, align 32
@.str.73 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"DMA irq status %s: 0x%x\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"high\00", [27 x i8] zeroinitializer }, align 32
@.str.75 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"low\00", [28 x i8] zeroinitializer }, align 32
@vchan_cookie_complete.__UNIQUE_ID_ddebug234 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.45, ptr @.str.76, ptr @.str.77, ptr @.str.78, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.76 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"drivers/dma/virt-dma.h\00", [41 x i8] zeroinitializer }, align 32
@.str.78 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@sun6i_a31_dma_cfg = internal global { %struct.sun6i_dma_config, [48 x i8] } { %struct.sun6i_dma_config { i32 16, i32 30, i32 53, ptr null, ptr @sun6i_set_burst_length_a31, ptr @sun6i_set_drq_a31, ptr @sun6i_set_mode_a31, i32 258, i32 258, i32 22, i32 22, i8 0 }, [48 x i8] zeroinitializer }, align 32
@sun8i_a23_dma_cfg = internal global { %struct.sun6i_dma_config, [48 x i8] } { %struct.sun6i_dma_config { i32 8, i32 24, i32 37, ptr @sun6i_enable_clock_autogate_a23, ptr @sun6i_set_burst_length_a31, ptr @sun6i_set_drq_a31, ptr @sun6i_set_mode_a31, i32 258, i32 258, i32 22, i32 22, i8 0 }, [48 x i8] zeroinitializer }, align 32
@sun8i_a83t_dma_cfg = internal global { %struct.sun6i_dma_config, [48 x i8] } { %struct.sun6i_dma_config { i32 8, i32 28, i32 39, ptr @sun6i_enable_clock_autogate_a23, ptr @sun6i_set_burst_length_a31, ptr @sun6i_set_drq_a31, ptr @sun6i_set_mode_a31, i32 258, i32 258, i32 22, i32 22, i8 0 }, [48 x i8] zeroinitializer }, align 32
@sun8i_h3_dma_cfg = internal global { %struct.sun6i_dma_config, [48 x i8] } { %struct.sun6i_dma_config { i32 12, i32 27, i32 34, ptr @sun6i_enable_clock_autogate_h3, ptr @sun6i_set_burst_length_h3, ptr @sun6i_set_drq_a31, ptr @sun6i_set_mode_a31, i32 65810, i32 65810, i32 278, i32 278, i8 0 }, [48 x i8] zeroinitializer }, align 32
@sun8i_v3s_dma_cfg = internal global { %struct.sun6i_dma_config, [48 x i8] } { %struct.sun6i_dma_config { i32 8, i32 23, i32 24, ptr @sun6i_enable_clock_autogate_a23, ptr @sun6i_set_burst_length_a31, ptr @sun6i_set_drq_a31, ptr @sun6i_set_mode_a31, i32 258, i32 258, i32 22, i32 22, i8 0 }, [48 x i8] zeroinitializer }, align 32
@sun50i_a64_dma_cfg = internal global { %struct.sun6i_dma_config, [48 x i8] } { %struct.sun6i_dma_config { i32 0, i32 0, i32 0, ptr @sun6i_enable_clock_autogate_h3, ptr @sun6i_set_burst_length_h3, ptr @sun6i_set_drq_a31, ptr @sun6i_set_mode_a31, i32 65810, i32 65810, i32 278, i32 278, i8 0 }, [48 x i8] zeroinitializer }, align 32
@sun50i_a100_dma_cfg = internal global { %struct.sun6i_dma_config, [48 x i8] } { %struct.sun6i_dma_config { i32 0, i32 0, i32 0, ptr @sun6i_enable_clock_autogate_h3, ptr @sun6i_set_burst_length_h3, ptr @sun6i_set_drq_h6, ptr @sun6i_set_mode_h6, i32 65810, i32 65810, i32 278, i32 278, i8 1 }, [48 x i8] zeroinitializer }, align 32
@sun50i_h6_dma_cfg = internal global { %struct.sun6i_dma_config, [48 x i8] } { %struct.sun6i_dma_config { i32 0, i32 0, i32 0, ptr @sun6i_enable_clock_autogate_h3, ptr @sun6i_set_burst_length_h3, ptr @sun6i_set_drq_h6, ptr @sun6i_set_mode_h6, i32 65810, i32 65810, i32 278, i32 278, i8 1 }, [48 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 1, i64 2]
@__sancov_gen_cov_switch_values.79 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 8, i64 16]
@__sancov_gen_cov_switch_values.80 = internal global [6 x i64] [i64 4, i64 32, i64 1, i64 4, i64 8, i64 16]
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"sun6i_dma_driver\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1466, i32 31 }
@___asan_gen_.86 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1470, i32 12 }
@___asan_gen_.87 = private unnamed_addr constant [16 x i8] c"sun6i_dma_match\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1245, i32 34 }
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1284, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1289, i32 44 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1291, i32 4 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1298, i32 3 }
@___asan_gen_.128 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1305, i32 3 }
@___asan_gen_.129 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1311, i32 2 }
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1341, i32 33 }
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1343, i32 3 }
@___asan_gen_.146 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1347, i32 33 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1349, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1390, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1396, i32 3 }
@___asan_gen_.173 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1403, i32 4 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1411, i32 3 }
@___asan_gen_.188 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1417, i32 3 }
@___asan_gen_.194 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1424, i32 3 }
@___asan_gen_.203 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 979, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 985, i32 3 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 702, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 725, i32 4 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 748, i32 2 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 392, i32 2 }
@___asan_gen_.233 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 640, i32 2 }
@___asan_gen_.239 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 653, i32 3 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 781, i32 3 }
@___asan_gen_.246 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.248 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 792, i32 4 }
@___asan_gen_.254 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 845, i32 2 }
@___asan_gen_.260 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 866, i32 2 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 488, i32 5 }
@___asan_gen_.269 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 516, i32 3 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 228, i32 2 }
@___asan_gen_.281 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 246, i32 2 }
@___asan_gen_.293 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 548, i32 3 }
@___asan_gen_.300 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.301 = private unnamed_addr constant [26 x i8] c"../drivers/dma/virt-dma.h\00", align 1
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.301, i32 101, i32 2 }
@___asan_gen_.303 = private unnamed_addr constant [18 x i8] c"sun6i_a31_dma_cfg\00", align 1
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1070, i32 32 }
@___asan_gen_.306 = private unnamed_addr constant [18 x i8] c"sun8i_a23_dma_cfg\00", align 1
@___asan_gen_.308 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1092, i32 32 }
@___asan_gen_.309 = private unnamed_addr constant [19 x i8] c"sun8i_a83t_dma_cfg\00", align 1
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1110, i32 32 }
@___asan_gen_.312 = private unnamed_addr constant [17 x i8] c"sun8i_h3_dma_cfg\00", align 1
@___asan_gen_.314 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1135, i32 32 }
@___asan_gen_.315 = private unnamed_addr constant [18 x i8] c"sun8i_v3s_dma_cfg\00", align 1
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1227, i32 32 }
@___asan_gen_.318 = private unnamed_addr constant [19 x i8] c"sun50i_a64_dma_cfg\00", align 1
@___asan_gen_.320 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1159, i32 32 }
@___asan_gen_.321 = private unnamed_addr constant [20 x i8] c"sun50i_a100_dma_cfg\00", align 1
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1182, i32 32 }
@___asan_gen_.324 = private unnamed_addr constant [18 x i8] c"sun50i_h6_dma_cfg\00", align 1
@___asan_gen_.325 = private constant [27 x i8] c"../drivers/dma/sun6i-dma.c\00", align 1
@___asan_gen_.326 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.325, i32 1204, i32 32 }
@llvm.compiler.used = appending global [106 x ptr] [ptr @__UNIQUE_ID_author252, ptr @__UNIQUE_ID_author253, ptr @__UNIQUE_ID_description251, ptr @__UNIQUE_ID_file254, ptr @__UNIQUE_ID_license255, ptr @__exitcall_sun6i_dma_driver_exit, ptr @__initcall__kmod_sun6i_dma__250_1474_sun6i_dma_driver_init6, ptr @sun6i_dma_driver_exit, ptr @sun6i_dma_prep_dma_cyclic._entry, ptr @sun6i_dma_prep_dma_cyclic._entry.59, ptr @sun6i_dma_prep_dma_cyclic._entry_ptr, ptr @sun6i_dma_prep_dma_cyclic._entry_ptr.60, ptr @sun6i_dma_prep_dma_memcpy._entry, ptr @sun6i_dma_prep_dma_memcpy._entry_ptr, ptr @sun6i_dma_prep_slave_sg._entry, ptr @sun6i_dma_prep_slave_sg._entry_ptr, ptr @sun6i_dma_probe._entry, ptr @sun6i_dma_probe._entry.10, ptr @sun6i_dma_probe._entry.13, ptr @sun6i_dma_probe._entry.18, ptr @sun6i_dma_probe._entry.22, ptr @sun6i_dma_probe._entry.26, ptr @sun6i_dma_probe._entry.29, ptr @sun6i_dma_probe._entry.32, ptr @sun6i_dma_probe._entry.35, ptr @sun6i_dma_probe._entry.38, ptr @sun6i_dma_probe._entry.42, ptr @sun6i_dma_probe._entry.7, ptr @sun6i_dma_probe._entry_ptr, ptr @sun6i_dma_probe._entry_ptr.12, ptr @sun6i_dma_probe._entry_ptr.15, ptr @sun6i_dma_probe._entry_ptr.20, ptr @sun6i_dma_probe._entry_ptr.25, ptr @sun6i_dma_probe._entry_ptr.28, ptr @sun6i_dma_probe._entry_ptr.31, ptr @sun6i_dma_probe._entry_ptr.34, ptr @sun6i_dma_probe._entry_ptr.37, ptr @sun6i_dma_probe._entry_ptr.41, ptr @sun6i_dma_probe._entry_ptr.44, ptr @sun6i_dma_probe._entry_ptr.9, ptr @sun6i_dma_driver, ptr @.str, ptr @sun6i_dma_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @.str.14, ptr @sun6i_dma_probe.__key, ptr @.str.16, ptr @.str.17, ptr @.str.19, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36, ptr @.str.39, ptr @.str.40, ptr @.str.43, ptr @.str.45, ptr @.str.46, ptr @.str.47, ptr @.str.48, ptr @.str.49, ptr @.str.50, ptr @.str.51, ptr @.str.52, ptr @.str.53, ptr @.str.54, ptr @.str.55, ptr @.str.56, ptr @.str.57, ptr @.str.58, ptr @.str.61, ptr @.str.62, ptr @.str.63, ptr @.str.64, ptr @.str.65, ptr @.str.66, ptr @.str.67, ptr @.str.68, ptr @.str.69, ptr @.str.70, ptr @.str.71, ptr @.str.72, ptr @.str.73, ptr @.str.74, ptr @.str.75, ptr @.str.76, ptr @.str.77, ptr @.str.78, ptr @sun6i_a31_dma_cfg, ptr @sun8i_a23_dma_cfg, ptr @sun8i_a83t_dma_cfg, ptr @sun8i_h3_dma_cfg, ptr @sun8i_v3s_dma_cfg, ptr @sun50i_a64_dma_cfg, ptr @sun50i_a100_dma_cfg, ptr @sun50i_h6_dma_cfg], section "llvm.metadata"
@0 = internal global [82 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.86 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_match to i32), i32 1764, i32 2208, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.128 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.146 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.173 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_probe._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 38, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.194 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.203 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.48 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_prep_slave_sg._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.50 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 62, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.52 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 98, i32 160, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.55 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.56 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.233 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_prep_dma_memcpy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.239 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_prep_dma_cyclic._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_dma_prep_dma_cyclic._entry.59 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.246 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.248 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.62 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.254 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.63 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.260 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.65 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.66 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.269 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.68 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 123, i32 160, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.70 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 195, i32 256, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.281 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.72 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.73 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.75 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.293 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.76 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.78 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.300 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun6i_a31_dma_cfg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.303 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a23_dma_cfg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.306 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.308 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_a83t_dma_cfg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.309 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_h3_dma_cfg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.312 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.314 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun8i_v3s_dma_cfg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.315 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a64_dma_cfg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.318 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.320 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_a100_dma_cfg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.321 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sun50i_h6_dma_cfg to i32), i32 48, i32 96, i32 ptrtoint (ptr @___asan_gen_.324 to i32), i32 ptrtoint (ptr @___asan_gen_.325 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.326 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sun6i_dma_driver, ptr noundef null) #11
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_dma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @platform_driver_unregister(ptr noundef nonnull @sun6i_dma_driver) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 492, i32 noundef 3520) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call3 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #11
  %cfg = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 13
  %2 = ptrtoint ptr %cfg to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call3, ptr %cfg, align 4
  %tobool5.not = icmp eq ptr %call3, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %if.end7

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end7:                                          ; preds = %if.end
  %call8 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #11
  %call10 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call8) #11
  %base = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 1
  %3 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call10, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call10, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then13, label %if.end16

if.then13:                                        ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %call10 to i32
  br label %cleanup

if.end16:                                         ; preds = %if.end7
  %call17 = tail call i32 @platform_get_irq(ptr noundef %pdev, i32 noundef 0) #11
  %irq = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 4
  %5 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %call17, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call17)
  %cmp = icmp slt i32 %call17, 0
  br i1 %cmp, label %if.end16.cleanup_crit_edge, label %if.end21

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end21:                                         ; preds = %if.end16
  %call23 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef null) #11
  %clk = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 2
  %6 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call23, ptr %clk, align 4
  %cmp.i386 = icmp ugt ptr %call23, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i386, label %do.end, label %if.end30

do.end:                                           ; preds = %if.end21
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #14
  %7 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %clk, align 4
  %9 = ptrtoint ptr %8 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end21
  %10 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %cfg, align 4
  %has_mbus_clk = getelementptr inbounds %struct.sun6i_dma_config, ptr %11, i32 0, i32 11
  %12 = ptrtoint ptr %has_mbus_clk to i32
  call void @__asan_load1_noabort(i32 %12)
  %13 = load i8, ptr %has_mbus_clk, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %13)
  %tobool32.not = icmp eq i8 %13, 0
  br i1 %tobool32.not, label %if.end30.if.end46_crit_edge, label %if.then33

if.end30.if.end46_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

if.then33:                                        ; preds = %if.end30
  %call35 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #11
  %clk_mbus = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 3
  %14 = ptrtoint ptr %clk_mbus to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call35, ptr %clk_mbus, align 4
  %cmp.i387 = icmp ugt ptr %call35, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i387, label %do.end41, label %if.then33.if.end46_crit_edge

if.then33.if.end46_crit_edge:                     ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end46

do.end41:                                         ; preds = %if.then33
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8) #14
  %15 = ptrtoint ptr %clk_mbus to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk_mbus, align 4
  %17 = ptrtoint ptr %16 to i32
  br label %cleanup

if.end46:                                         ; preds = %if.then33.if.end46_crit_edge, %if.end30.if.end46_crit_edge
  %call.i.i = tail call ptr @__devm_reset_control_get(ptr noundef %dev, ptr noundef null, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #11
  %rstc = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 6
  %18 = ptrtoint ptr %rstc to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call.i.i, ptr %rstc, align 4
  %cmp.i388 = icmp ugt ptr %call.i.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i388, label %do.end54, label %if.end58

do.end54:                                         ; preds = %if.end46
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11) #14
  %19 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %rstc, align 4
  %21 = ptrtoint ptr %20 to i32
  br label %cleanup

if.end58:                                         ; preds = %if.end46
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %22 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %23, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end58.dev_name.exit_crit_edge

if.end58.dev_name.exit_crit_edge:                 ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %24 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end58.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %25, %if.end.i ], [ %23, %if.end58.dev_name.exit_crit_edge ]
  %call62 = tail call ptr @dmam_pool_create(ptr noundef %retval.0.i, ptr noundef %dev, i32 noundef 28, i32 noundef 4, i32 noundef 0) #11
  %pool = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 10
  %26 = ptrtoint ptr %pool to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call62, ptr %pool, align 4
  %tobool64.not = icmp eq ptr %call62, null
  br i1 %tobool64.not, label %do.end68, label %if.end70

do.end68:                                         ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.14) #14
  br label %cleanup

if.end70:                                         ; preds = %dev_name.exit
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %27 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %pending = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 9
  %28 = ptrtoint ptr %pending to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %pending, ptr %pending, align 4
  %prev.i = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 9, i32 1
  %29 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %pending, ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @sun6i_dma_probe.__key, i16 noundef signext 3) #11
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 9, ptr noundef %cap_mask) #11
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #11
  tail call void @_set_bit(i32 noundef 11, ptr noundef %cap_mask) #11
  tail call void @_set_bit(i32 noundef 12, ptr noundef %cap_mask) #11
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %30 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %30)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i389 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %31 = ptrtoint ptr %prev.i389 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %channels, ptr %prev.i389, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %32 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr @sun6i_dma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %33 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr @sun6i_dma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %34 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr @sun6i_dma_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_slave_sg = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 39
  %35 = ptrtoint ptr %device_prep_slave_sg to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr @sun6i_dma_prep_slave_sg, ptr %device_prep_slave_sg, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %36 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr @sun6i_dma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_prep_dma_cyclic = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 40
  %37 = ptrtoint ptr %device_prep_dma_cyclic to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @sun6i_dma_prep_dma_cyclic, ptr %device_prep_dma_cyclic, align 4
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 10
  %38 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 2, ptr %copy_align, align 4
  %device_config = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 44
  %39 = ptrtoint ptr %device_config to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr @sun6i_dma_config, ptr %device_config, align 4
  %device_pause = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 45
  %40 = ptrtoint ptr %device_pause to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr @sun6i_dma_pause, ptr %device_pause, align 4
  %device_resume = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 46
  %41 = ptrtoint ptr %device_resume to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr @sun6i_dma_resume, ptr %device_resume, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %42 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr @sun6i_dma_terminate_all, ptr %device_terminate_all, align 4
  %43 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %cfg, align 4
  %src_addr_widths = getelementptr inbounds %struct.sun6i_dma_config, ptr %44, i32 0, i32 9
  %45 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %src_addr_widths, align 4
  %src_addr_widths95 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %47 = ptrtoint ptr %src_addr_widths95 to i32
  call void @__asan_store4_noabort(i32 %47)
  store i32 %46, ptr %src_addr_widths95, align 4
  %dst_addr_widths = getelementptr inbounds %struct.sun6i_dma_config, ptr %44, i32 0, i32 10
  %48 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %dst_addr_widths, align 4
  %dst_addr_widths98 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %50 = ptrtoint ptr %dst_addr_widths98 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %dst_addr_widths98, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %51 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 6, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %52 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %52)
  store i32 2, ptr %residue_granularity, align 4
  %dev103 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %53 = ptrtoint ptr %dev103 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %dev, ptr %dev103, align 4
  %54 = ptrtoint ptr %44 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load i32, ptr %44, align 4
  %num_pchans = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 14
  %56 = ptrtoint ptr %num_pchans to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %55, ptr %num_pchans, align 4
  %nr_max_vchans = getelementptr inbounds %struct.sun6i_dma_config, ptr %44, i32 0, i32 2
  %57 = ptrtoint ptr %nr_max_vchans to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %nr_max_vchans, align 4
  %num_vchans = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 15
  %59 = ptrtoint ptr %num_vchans to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %58, ptr %num_vchans, align 4
  %nr_max_requests = getelementptr inbounds %struct.sun6i_dma_config, ptr %44, i32 0, i32 1
  %60 = ptrtoint ptr %nr_max_requests to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load i32, ptr %nr_max_requests, align 4
  %max_request = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 16
  %62 = ptrtoint ptr %max_request to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %61, ptr %max_request, align 4
  %call.i.i390 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.17, ptr noundef %num_pchans, i32 noundef 1, i32 noundef 0) #11
  %63 = tail call i32 @llvm.smin.i32(i32 %call.i.i390, i32 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i390)
  %tobool109.not = icmp sgt i32 %call.i.i390, -1
  br i1 %tobool109.not, label %if.end70.if.end117_crit_edge, label %land.lhs.true

if.end70.if.end117_crit_edge:                     ; preds = %if.end70
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

land.lhs.true:                                    ; preds = %if.end70
  %64 = ptrtoint ptr %num_pchans to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %num_pchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %tobool111.not = icmp eq i32 %65, 0
  br i1 %tobool111.not, label %do.end115, label %land.lhs.true.if.end117_crit_edge

land.lhs.true.if.end117_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end117

do.end115:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.19) #14
  br label %cleanup

if.end117:                                        ; preds = %land.lhs.true.if.end117_crit_edge, %if.end70.if.end117_crit_edge
  %call.i.i391 = tail call i32 @of_property_read_variable_u32_array(ptr noundef %1, ptr noundef nonnull @.str.21, ptr noundef %max_request, i32 noundef 1, i32 noundef 0) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i391)
  %tobool120.not = icmp sgt i32 %call.i.i391, -1
  br i1 %tobool120.not, label %if.end117.if.end130_crit_edge, label %land.lhs.true121

if.end117.if.end130_crit_edge:                    ; preds = %if.end117
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

land.lhs.true121:                                 ; preds = %if.end117
  %66 = ptrtoint ptr %max_request to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %max_request, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %67)
  %tobool123.not = icmp eq i32 %67, 0
  br i1 %tobool123.not, label %do.end127, label %land.lhs.true121.if.end130_crit_edge

land.lhs.true121.if.end130_crit_edge:             ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end130

do.end127:                                        ; preds = %land.lhs.true121
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef 31) #14
  %68 = ptrtoint ptr %max_request to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 31, ptr %max_request, align 4
  br label %if.end130

if.end130:                                        ; preds = %do.end127, %land.lhs.true121.if.end130_crit_edge, %if.end117.if.end130_crit_edge
  %69 = ptrtoint ptr %num_vchans to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load i32, ptr %num_vchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %70)
  %tobool132.not = icmp eq i32 %70, 0
  br i1 %tobool132.not, label %if.then133, label %if.end130.if.end136_crit_edge

if.end130.if.end136_crit_edge:                    ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end136

if.then133:                                       ; preds = %if.end130
  call void @__sanitizer_cov_trace_pc() #13
  %71 = ptrtoint ptr %max_request to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load i32, ptr %max_request, align 4
  %add = shl i32 %72, 1
  %mul = add i32 %add, 2
  %73 = ptrtoint ptr %num_vchans to i32
  call void @__asan_store4_noabort(i32 %73)
  store i32 %mul, ptr %num_vchans, align 4
  br label %if.end136

if.end136:                                        ; preds = %if.then133, %if.end130.if.end136_crit_edge
  %74 = ptrtoint ptr %num_pchans to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load i32, ptr %num_pchans, align 4
  %76 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %75, i32 20) #11
  %77 = extractvalue { i32, i1 } %76, 1
  br i1 %77, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !181

devm_kcalloc.exit.thread:                         ; preds = %if.end136
  call void @__sanitizer_cov_trace_pc() #13
  %pchans416 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 11
  %78 = ptrtoint ptr %pchans416 to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr null, ptr %pchans416, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end136
  %79 = extractvalue { i32, i1 } %76, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %79, i32 noundef 3520) #11
  %pchans = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 11
  %80 = ptrtoint ptr %pchans to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call5.i.i, ptr %pchans, align 4
  %tobool141.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool141.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %if.end143

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end143:                                        ; preds = %devm_kcalloc.exit
  %81 = ptrtoint ptr %num_vchans to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %num_vchans, align 4
  %83 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %82, i32 244) #11
  %84 = extractvalue { i32, i1 } %83, 1
  br i1 %84, label %devm_kcalloc.exit395.thread, label %devm_kcalloc.exit395, !prof !181

devm_kcalloc.exit395.thread:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #13
  %vchans419 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 12
  %85 = ptrtoint ptr %vchans419 to i32
  call void @__asan_store4_noabort(i32 %85)
  store ptr null, ptr %vchans419, align 4
  br label %cleanup

devm_kcalloc.exit395:                             ; preds = %if.end143
  %86 = extractvalue { i32, i1 } %83, 0
  %call5.i.i392 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %86, i32 noundef 3520) #11
  %vchans = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 12
  %87 = ptrtoint ptr %vchans to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %call5.i.i392, ptr %vchans, align 4
  %tobool148.not = icmp eq ptr %call5.i.i392, null
  br i1 %tobool148.not, label %devm_kcalloc.exit395.cleanup_crit_edge, label %if.end150

devm_kcalloc.exit395.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit395
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end150:                                        ; preds = %devm_kcalloc.exit395
  %task = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 7
  tail call void @tasklet_setup(ptr noundef %task, ptr noundef nonnull @sun6i_dma_tasklet) #11
  %88 = ptrtoint ptr %num_pchans to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load i32, ptr %num_pchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %89)
  %cmp152427.not = icmp eq i32 %89, 0
  br i1 %cmp152427.not, label %if.end150.for.cond158.preheader_crit_edge, label %if.end150.for.body_crit_edge

if.end150.for.body_crit_edge:                     ; preds = %if.end150
  br label %for.body

if.end150.for.cond158.preheader_crit_edge:        ; preds = %if.end150
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond158.preheader

for.cond158.preheader:                            ; preds = %for.body.for.cond158.preheader_crit_edge, %if.end150.for.cond158.preheader_crit_edge
  %90 = ptrtoint ptr %num_vchans to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %num_vchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %91)
  %cmp160429.not = icmp eq i32 %91, 0
  br i1 %cmp160429.not, label %for.cond158.preheader.for.end168_crit_edge, label %for.cond158.preheader.for.body161_crit_edge

for.cond158.preheader.for.body161_crit_edge:      ; preds = %for.cond158.preheader
  br label %for.body161

for.cond158.preheader.for.end168_crit_edge:       ; preds = %for.cond158.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end168

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.end150.for.body_crit_edge
  %i.0428 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %if.end150.for.body_crit_edge ]
  %92 = ptrtoint ptr %pchans to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %pchans, align 4
  %arrayidx = getelementptr %struct.sun6i_pchan, ptr %93, i32 %i.0428
  %94 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 %i.0428, ptr %arrayidx, align 4
  %95 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %96, i32 256
  %mul155 = shl i32 %i.0428, 6
  %add.ptr156 = getelementptr i8, ptr %add.ptr, i32 %mul155
  %base157 = getelementptr %struct.sun6i_pchan, ptr %93, i32 %i.0428, i32 1
  %97 = ptrtoint ptr %base157 to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %add.ptr156, ptr %base157, align 4
  %inc = add nuw i32 %i.0428, 1
  %98 = ptrtoint ptr %num_pchans to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %num_pchans, align 4
  %cmp152 = icmp ult i32 %inc, %99
  br i1 %cmp152, label %for.body.for.body_crit_edge, label %for.body.for.cond158.preheader_crit_edge

for.body.for.cond158.preheader_crit_edge:         ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.cond158.preheader

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body161:                                      ; preds = %for.body161.for.body161_crit_edge, %for.cond158.preheader.for.body161_crit_edge
  %i.1430 = phi i32 [ %inc167, %for.body161.for.body161_crit_edge ], [ 0, %for.cond158.preheader.for.body161_crit_edge ]
  %100 = ptrtoint ptr %vchans to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %vchans, align 4
  %arrayidx163 = getelementptr %struct.sun6i_vchan, ptr %101, i32 %i.1430
  %node = getelementptr %struct.sun6i_vchan, ptr %101, i32 %i.1430, i32 1
  %102 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %102)
  store volatile ptr %node, ptr %node, align 4
  %prev.i396 = getelementptr %struct.sun6i_vchan, ptr %101, i32 %i.1430, i32 1, i32 1
  %103 = ptrtoint ptr %prev.i396 to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %node, ptr %prev.i396, align 4
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx163, i32 0, i32 2
  %104 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr @sun6i_dma_free_desc, ptr %desc_free, align 4
  tail call void @vchan_init(ptr noundef %arrayidx163, ptr noundef nonnull %call.i) #11
  %inc167 = add nuw i32 %i.1430, 1
  %105 = ptrtoint ptr %num_vchans to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %num_vchans, align 4
  %cmp160 = icmp ult i32 %inc167, %106
  br i1 %cmp160, label %for.body161.for.body161_crit_edge, label %for.body161.for.end168_crit_edge

for.body161.for.end168_crit_edge:                 ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end168

for.body161.for.body161_crit_edge:                ; preds = %for.body161
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body161

for.end168:                                       ; preds = %for.body161.for.end168_crit_edge, %for.cond158.preheader.for.end168_crit_edge
  %107 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load ptr, ptr %rstc, align 4
  %call170 = tail call i32 @reset_control_deassert(ptr noundef %108) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call170)
  %tobool171.not = icmp eq i32 %call170, 0
  br i1 %tobool171.not, label %if.end177, label %do.end175

do.end175:                                        ; preds = %for.end168
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27) #14
  br label %err_chan_free

if.end177:                                        ; preds = %for.end168
  %109 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %clk, align 4
  %call.i397 = tail call i32 @clk_prepare(ptr noundef %110) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i397)
  %tobool.not.i398 = icmp eq i32 %call.i397, 0
  br i1 %tobool.not.i398, label %if.end.i399, label %if.end177.do.end184_crit_edge

if.end177.do.end184_crit_edge:                    ; preds = %if.end177
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end184

if.end.i399:                                      ; preds = %if.end177
  %call1.i = tail call i32 @clk_enable(ptr noundef %110) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end186, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i399
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %110) #11
  br label %do.end184

do.end184:                                        ; preds = %if.then3.i, %if.end177.do.end184_crit_edge
  %retval.0.i400.ph = phi i32 [ %call1.i, %if.then3.i ], [ %call.i397, %if.end177.do.end184_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.30) #14
  br label %err_reset_assert

if.end186:                                        ; preds = %if.end.i399
  %111 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %cfg, align 4
  %has_mbus_clk188 = getelementptr inbounds %struct.sun6i_dma_config, ptr %112, i32 0, i32 11
  %113 = ptrtoint ptr %has_mbus_clk188 to i32
  call void @__asan_load1_noabort(i32 %113)
  %114 = load i8, ptr %has_mbus_clk188, align 4, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %114)
  %tobool189.not = icmp eq i8 %114, 0
  br i1 %tobool189.not, label %if.end186.if.end200_crit_edge, label %if.then190

if.end186.if.end200_crit_edge:                    ; preds = %if.end186
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

if.then190:                                       ; preds = %if.end186
  %clk_mbus191 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 3
  %115 = ptrtoint ptr %clk_mbus191 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %clk_mbus191, align 4
  %call.i401 = tail call i32 @clk_prepare(ptr noundef %116) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i401)
  %tobool.not.i402 = icmp eq i32 %call.i401, 0
  br i1 %tobool.not.i402, label %if.end.i405, label %if.then190.do.end197_crit_edge

if.then190.do.end197_crit_edge:                   ; preds = %if.then190
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end197

if.end.i405:                                      ; preds = %if.then190
  %call1.i403 = tail call i32 @clk_enable(ptr noundef %116) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i403)
  %tobool2.not.i404 = icmp eq i32 %call1.i403, 0
  br i1 %tobool2.not.i404, label %if.end.i405.if.end200_crit_edge, label %if.then3.i406

if.end.i405.if.end200_crit_edge:                  ; preds = %if.end.i405
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end200

if.then3.i406:                                    ; preds = %if.end.i405
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @clk_unprepare(ptr noundef %116) #11
  br label %do.end197

do.end197:                                        ; preds = %if.then3.i406, %if.then190.do.end197_crit_edge
  %retval.0.i407.ph = phi i32 [ %call1.i403, %if.then3.i406 ], [ %call.i401, %if.then190.do.end197_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.33) #14
  br label %err_clk_disable

if.end200:                                        ; preds = %if.end.i405.if.end200_crit_edge, %if.end186.if.end200_crit_edge
  %117 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load i32, ptr %irq, align 4
  %119 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i410 = icmp eq ptr %120, null
  br i1 %tobool.not.i410, label %if.end.i411, label %if.end200.dev_name.exit413_crit_edge

if.end200.dev_name.exit413_crit_edge:             ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  br label %dev_name.exit413

if.end.i411:                                      ; preds = %if.end200
  call void @__sanitizer_cov_trace_pc() #13
  %121 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %dev, align 4
  br label %dev_name.exit413

dev_name.exit413:                                 ; preds = %if.end.i411, %if.end200.dev_name.exit413_crit_edge
  %retval.0.i412 = phi ptr [ %122, %if.end.i411 ], [ %120, %if.end200.dev_name.exit413_crit_edge ]
  %call.i414 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %118, ptr noundef nonnull @sun6i_dma_interrupt, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i412, ptr noundef %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i414)
  %tobool206.not = icmp eq i32 %call.i414, 0
  br i1 %tobool206.not, label %if.end212, label %do.end210

do.end210:                                        ; preds = %dev_name.exit413
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.36) #14
  br label %err_mbus_clk_disable

if.end212:                                        ; preds = %dev_name.exit413
  %call214 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call214)
  %tobool215.not = icmp eq i32 %call214, 0
  br i1 %tobool215.not, label %if.end221, label %do.end219

do.end219:                                        ; preds = %if.end212
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev, ptr noundef nonnull @.str.39) #14
  br label %err_irq_disable

if.end221:                                        ; preds = %if.end212
  %123 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %of_node, align 8
  %call224 = tail call i32 @of_dma_controller_register(ptr noundef %124, ptr noundef nonnull @sun6i_dma_of_xlate, ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call224)
  %tobool225.not = icmp eq i32 %call224, 0
  br i1 %tobool225.not, label %if.end231, label %do.end229

do.end229:                                        ; preds = %if.end221
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.43) #14
  tail call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #11
  br label %err_irq_disable

if.end231:                                        ; preds = %if.end221
  %125 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load ptr, ptr %cfg, align 4
  %clock_autogate_enable = getelementptr inbounds %struct.sun6i_dma_config, ptr %126, i32 0, i32 3
  %127 = ptrtoint ptr %clock_autogate_enable to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %clock_autogate_enable, align 4
  %tobool233.not = icmp eq ptr %128, null
  br i1 %tobool233.not, label %if.end231.cleanup_crit_edge, label %if.then234

if.end231.cleanup_crit_edge:                      ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then234:                                       ; preds = %if.end231
  call void @__sanitizer_cov_trace_pc() #13
  tail call void %128(ptr noundef nonnull %call.i) #11
  br label %cleanup

err_irq_disable:                                  ; preds = %do.end229, %do.end219
  %ret.0 = phi i32 [ %call214, %do.end219 ], [ %call224, %do.end229 ]
  tail call fastcc void @sun6i_kill_tasklet(ptr noundef nonnull %call.i)
  br label %err_mbus_clk_disable

err_mbus_clk_disable:                             ; preds = %err_irq_disable, %do.end210
  %ret.1 = phi i32 [ %call.i414, %do.end210 ], [ %ret.0, %err_irq_disable ]
  %clk_mbus239 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %call.i, i32 0, i32 3
  %129 = ptrtoint ptr %clk_mbus239 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %clk_mbus239, align 4
  tail call void @clk_disable(ptr noundef %130) #11
  tail call void @clk_unprepare(ptr noundef %130) #11
  br label %err_clk_disable

err_clk_disable:                                  ; preds = %err_mbus_clk_disable, %do.end197
  %ret.2 = phi i32 [ %retval.0.i407.ph, %do.end197 ], [ %ret.1, %err_mbus_clk_disable ]
  %131 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %132) #11
  tail call void @clk_unprepare(ptr noundef %132) #11
  br label %err_reset_assert

err_reset_assert:                                 ; preds = %err_clk_disable, %do.end184
  %ret.3 = phi i32 [ %retval.0.i400.ph, %do.end184 ], [ %ret.2, %err_clk_disable ]
  %133 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %rstc, align 4
  %call242 = tail call i32 @reset_control_assert(ptr noundef %134) #11
  br label %err_chan_free

err_chan_free:                                    ; preds = %err_reset_assert, %do.end175
  %ret.4 = phi i32 [ %call170, %do.end175 ], [ %ret.3, %err_reset_assert ]
  tail call fastcc void @sun6i_dma_free(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %err_chan_free, %if.then234, %if.end231.cleanup_crit_edge, %devm_kcalloc.exit395.cleanup_crit_edge, %devm_kcalloc.exit395.thread, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %do.end115, %do.end68, %do.end54, %do.end41, %do.end, %if.end16.cleanup_crit_edge, %if.then13, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %4, %if.then13 ], [ %9, %do.end ], [ %17, %do.end41 ], [ %21, %do.end54 ], [ %ret.4, %err_chan_free ], [ %63, %do.end115 ], [ -12, %do.end68 ], [ -12, %entry.cleanup_crit_edge ], [ -19, %if.end.cleanup_crit_edge ], [ %call17, %if.end16.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit395.cleanup_crit_edge ], [ 0, %if.then234 ], [ 0, %if.end231.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit395.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dma_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
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
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  %base.i = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %5, i32 0) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr4.i = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 0) #11, !srcloc !183
  %tasklet_shutdown.i = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 8
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tasklet_shutdown.i, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tasklet_shutdown.i, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tasklet_shutdown.i, ptr %tasklet_shutdown.i, i32 1, ptr elementtype(i32) %tasklet_shutdown.i) #11, !srcloc !185
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev.i, align 4
  %irq.i = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 4
  %11 = ptrtoint ptr %irq.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %irq.i, align 4
  tail call void @devm_free_irq(ptr noundef %10, i32 noundef %12, ptr noundef %1) #11
  %task.i = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 7
  tail call void @tasklet_kill(ptr noundef %task.i) #11
  %clk_mbus = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 3
  %13 = ptrtoint ptr %clk_mbus to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %clk_mbus, align 4
  tail call void @clk_disable(ptr noundef %14) #11
  tail call void @clk_unprepare(ptr noundef %14) #11
  %clk = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 2
  %15 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %16) #11
  tail call void @clk_unprepare(ptr noundef %16) #11
  %rstc = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 6
  %17 = ptrtoint ptr %rstc to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %rstc, align 4
  %call1 = tail call i32 @reset_control_assert(ptr noundef %18) #11
  %num_vchans.i = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 15
  %19 = ptrtoint ptr %num_vchans.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %num_vchans.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %20)
  %cmp6.not.i = icmp eq i32 %20, 0
  br i1 %cmp6.not.i, label %entry.sun6i_dma_free.exit_crit_edge, label %for.body.lr.ph.i

entry.sun6i_dma_free.exit_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %sun6i_dma_free.exit

for.body.lr.ph.i:                                 ; preds = %entry
  %vchans.i = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 12
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %i.07.i = phi i32 [ 0, %for.body.lr.ph.i ], [ %inc.i, %list_del.exit.i.for.body.i_crit_edge ]
  %21 = ptrtoint ptr %vchans.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %vchans.i, align 4
  %arrayidx.i = getelementptr %struct.sun6i_vchan, ptr %22, i32 %i.07.i
  %device_node.i = getelementptr inbounds %struct.dma_chan, ptr %arrayidx.i, i32 0, i32 8
  %call.i.i.i8 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node.i) #11
  br i1 %call.i.i.i8, label %if.end.i.i.i, label %for.body.i.list_del.exit.i_crit_edge

for.body.i.list_del.exit.i_crit_edge:             ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %device_node.i, i32 0, i32 1
  %23 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %prev.i.i.i, align 4
  %25 = ptrtoint ptr %device_node.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %device_node.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %26, i32 0, i32 1
  %27 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %24, ptr %prev1.i.i.i.i, align 4
  %28 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %26, ptr %24, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i.i, %for.body.i.list_del.exit.i_crit_edge
  %29 = ptrtoint ptr %device_node.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node.i, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %device_node.i, i32 0, i32 1
  %30 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  %task.i9 = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx.i, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task.i9) #11
  %inc.i = add nuw i32 %i.07.i, 1
  %31 = ptrtoint ptr %num_vchans.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %num_vchans.i, align 4
  %cmp.i = icmp ult i32 %inc.i, %32
  br i1 %cmp.i, label %list_del.exit.i.for.body.i_crit_edge, label %list_del.exit.i.sun6i_dma_free.exit_crit_edge

list_del.exit.i.sun6i_dma_free.exit_crit_edge:    ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %sun6i_dma_free.exit

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

sun6i_dma_free.exit:                              ; preds = %list_del.exit.i.sun6i_dma_free.exit_crit_edge, %entry.sun6i_dma_free.exit_crit_edge
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

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

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dmam_pool_create(ptr noundef, ptr noundef, i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_dma_free_chan_resources(ptr noundef %chan) #2 align 64 {
entry:
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %node = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 1, i32 1
  %2 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %prev.i.i, align 4
  %4 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %5, i32 0, i32 1
  %6 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %3, ptr %prev1.i.i.i, align 4
  %7 = ptrtoint ptr %3 to i32
  call void @__asan_store4_noabort(i32 %7)
  store volatile ptr %5, ptr %3, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %8 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %8)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %node, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #11
  %10 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %11 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %head.i, ptr %head.i, align 4
  %12 = ptrtoint ptr %10 to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %head.i, ptr %10, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call2.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %desc_allocated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %13 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_allocated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %14, %desc_allocated.i.i
  br i1 %cmp.i.not.i.i.i, label %list_del_init.exit.list_splice_tail_init.exit.i.i_crit_edge, label %if.then.i.i.i

list_del_init.exit.list_splice_tail_init.exit.i.i_crit_edge: ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit.i.i

if.then.i.i.i:                                    ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %10, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %17 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i.i.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.i, ptr %18, align 4
  store ptr %18, ptr %10, align 4
  %22 = ptrtoint ptr %desc_allocated.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %desc_allocated.i.i, ptr %desc_allocated.i.i, align 4
  store ptr %desc_allocated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %list_splice_tail_init.exit.i.i

list_splice_tail_init.exit.i.i:                   ; preds = %if.then.i.i.i, %list_del_init.exit.list_splice_tail_init.exit.i.i_crit_edge
  %desc_submitted.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %23 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_submitted.i.i, align 4
  %cmp.i.not.i9.i.i = icmp eq ptr %24, %desc_submitted.i.i
  br i1 %cmp.i.not.i9.i.i, label %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge, label %if.then.i13.i.i

list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge: ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit14.i.i

if.then.i13.i.i:                                  ; preds = %list_splice_tail_init.exit.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %25 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %10, align 4
  %prev2.i.i11.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %27 = ptrtoint ptr %prev2.i.i11.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i11.i.i, align 4
  %prev3.i.i12.i.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i12.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i12.i.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head.i, ptr %28, align 4
  store ptr %28, ptr %10, align 4
  %32 = ptrtoint ptr %desc_submitted.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_submitted.i.i, ptr %desc_submitted.i.i, align 4
  store ptr %desc_submitted.i.i, ptr %prev2.i.i11.i.i, align 4
  br label %list_splice_tail_init.exit14.i.i

list_splice_tail_init.exit14.i.i:                 ; preds = %if.then.i13.i.i, %list_splice_tail_init.exit.i.i.list_splice_tail_init.exit14.i.i_crit_edge
  %desc_issued.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %33 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_issued.i.i, align 4
  %cmp.i.not.i15.i.i = icmp eq ptr %34, %desc_issued.i.i
  br i1 %cmp.i.not.i15.i.i, label %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge, label %if.then.i19.i.i

list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit20.i.i

if.then.i19.i.i:                                  ; preds = %list_splice_tail_init.exit14.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %35 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %10, align 4
  %prev2.i.i17.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %37 = ptrtoint ptr %prev2.i.i17.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %prev2.i.i17.i.i, align 4
  %prev3.i.i18.i.i = getelementptr inbounds %struct.list_head, ptr %34, i32 0, i32 1
  %39 = ptrtoint ptr %prev3.i.i18.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i18.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %34, ptr %36, align 4
  %41 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr %head.i, ptr %38, align 4
  store ptr %38, ptr %10, align 4
  %42 = ptrtoint ptr %desc_issued.i.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile ptr %desc_issued.i.i, ptr %desc_issued.i.i, align 4
  store ptr %desc_issued.i.i, ptr %prev2.i.i17.i.i, align 4
  br label %list_splice_tail_init.exit20.i.i

list_splice_tail_init.exit20.i.i:                 ; preds = %if.then.i19.i.i, %list_splice_tail_init.exit14.i.i.list_splice_tail_init.exit20.i.i_crit_edge
  %desc_completed.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %43 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load volatile ptr, ptr %desc_completed.i.i, align 4
  %cmp.i.not.i21.i.i = icmp eq ptr %44, %desc_completed.i.i
  br i1 %cmp.i.not.i21.i.i, label %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge, label %if.then.i25.i.i

list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit26.i.i

if.then.i25.i.i:                                  ; preds = %list_splice_tail_init.exit20.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %45 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %10, align 4
  %prev2.i.i23.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %47 = ptrtoint ptr %prev2.i.i23.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %prev2.i.i23.i.i, align 4
  %prev3.i.i24.i.i = getelementptr inbounds %struct.list_head, ptr %44, i32 0, i32 1
  %49 = ptrtoint ptr %prev3.i.i24.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %46, ptr %prev3.i.i24.i.i, align 4
  %50 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %50)
  store ptr %44, ptr %46, align 4
  %51 = ptrtoint ptr %48 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %head.i, ptr %48, align 4
  store ptr %48, ptr %10, align 4
  %52 = ptrtoint ptr %desc_completed.i.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store volatile ptr %desc_completed.i.i, ptr %desc_completed.i.i, align 4
  store ptr %desc_completed.i.i, ptr %prev2.i.i23.i.i, align 4
  br label %list_splice_tail_init.exit26.i.i

list_splice_tail_init.exit26.i.i:                 ; preds = %if.then.i25.i.i, %list_splice_tail_init.exit20.i.i.list_splice_tail_init.exit26.i.i_crit_edge
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %53 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i27.i.i = icmp eq ptr %54, %desc_terminated.i.i
  br i1 %cmp.i.not.i27.i.i, label %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge, label %if.then.i31.i.i

list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge: ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_get_all_descriptors.exit.i

if.then.i31.i.i:                                  ; preds = %list_splice_tail_init.exit26.i.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %10 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %10, align 4
  %prev2.i.i29.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %57 = ptrtoint ptr %prev2.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %prev2.i.i29.i.i, align 4
  %prev3.i.i30.i.i = getelementptr inbounds %struct.list_head, ptr %54, i32 0, i32 1
  %59 = ptrtoint ptr %prev3.i.i30.i.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %56, ptr %prev3.i.i30.i.i, align 4
  %60 = ptrtoint ptr %56 to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr %54, ptr %56, align 4
  %61 = ptrtoint ptr %58 to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr %head.i, ptr %58, align 4
  store ptr %58, ptr %10, align 4
  %62 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i29.i.i, align 4
  br label %vchan_get_all_descriptors.exit.i

vchan_get_all_descriptors.exit.i:                 ; preds = %if.then.i31.i.i, %list_splice_tail_init.exit26.i.i.vchan_get_all_descriptors.exit.i_crit_edge
  %63 = ptrtoint ptr %head.i to i32
  call void @__asan_load4_noabort(i32 %63)
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
  %64 = ptrtoint ptr %flags.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %flags.i.i, align 4
  %and.i.i = and i32 %65, -65
  store i32 %and.i.i, ptr %flags.i.i, align 4
  %66 = ptrtoint ptr %.pn22.i to i32
  call void @__asan_load4_noabort(i32 %66)
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
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head.i) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dma_tx_status(ptr noundef %chan, i32 noundef %cookie, ptr noundef writeonly %state) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %phy = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 3
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 2
  %2 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 3
  %4 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #11, !srcloc !186
  %tobool.not.i = icmp eq ptr %state, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %state to i32
  call void @__asan_store4_noabort(i32 %6)
  store i32 %5, ptr %state, align 4
  %used2.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 1
  %7 = ptrtoint ptr %used2.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %3, ptr %used2.i, align 4
  %residue.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %8 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %residue.i, align 4
  %in_flight_bytes.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 3
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
  %brmerge56 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge56, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

if.else.i.i.do.body2_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body2

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i.do.body2_crit_edge, %if.then.i.i.do.body2_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %call9 = tail call ptr @vchan_find_desc(ptr noundef %chan, i32 noundef %cookie) #11
  %tobool11.not = icmp eq ptr %call9, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %do.body2
  %v_lli = getelementptr inbounds %struct.sun6i_desc, ptr %call9, i32 0, i32 2
  %10 = ptrtoint ptr %v_lli to i32
  call void @__asan_load4_noabort(i32 %10)
  %lli.061 = load ptr, ptr %v_lli, align 4
  %cmp13.not62 = icmp eq ptr %lli.061, null
  br i1 %cmp13.not62, label %if.then12.dma_set_residue.exit_crit_edge, label %if.then12.for.body_crit_edge

if.then12.for.body_crit_edge:                     ; preds = %if.then12
  br label %for.body

if.then12.dma_set_residue.exit_crit_edge:         ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_set_residue.exit

for.body:                                         ; preds = %for.body.for.body_crit_edge, %if.then12.for.body_crit_edge
  %lli.064 = phi ptr [ %lli.0, %for.body.for.body_crit_edge ], [ %lli.061, %if.then12.for.body_crit_edge ]
  %bytes.063 = phi i32 [ %add, %for.body.for.body_crit_edge ], [ 0, %if.then12.for.body_crit_edge ]
  %len = getelementptr inbounds %struct.sun6i_dma_lli, ptr %lli.064, i32 0, i32 3
  %11 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %len, align 4
  %add = add i32 %12, %bytes.063
  %v_lli_next = getelementptr inbounds %struct.sun6i_dma_lli, ptr %lli.064, i32 0, i32 6
  %13 = ptrtoint ptr %v_lli_next to i32
  call void @__asan_load4_noabort(i32 %13)
  %lli.0 = load ptr, ptr %v_lli_next, align 4
  %cmp13.not = icmp eq ptr %lli.0, null
  br i1 %cmp13.not, label %for.body.dma_set_residue.exit_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.body.dma_set_residue.exit_crit_edge:          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_set_residue.exit

if.else:                                          ; preds = %do.body2
  %tobool15.not = icmp eq ptr %1, null
  br i1 %tobool15.not, label %if.else.dma_set_residue.exit_crit_edge, label %lor.lhs.false16

if.else.dma_set_residue.exit_crit_edge:           ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_set_residue.exit

lor.lhs.false16:                                  ; preds = %if.else
  %desc = getelementptr inbounds %struct.sun6i_pchan, ptr %1, i32 0, i32 3
  %14 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %desc, align 4
  %tobool17.not = icmp eq ptr %15, null
  br i1 %tobool17.not, label %lor.lhs.false16.dma_set_residue.exit_crit_edge, label %if.else19

lor.lhs.false16.dma_set_residue.exit_crit_edge:   ; preds = %lor.lhs.false16
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_set_residue.exit

if.else19:                                        ; preds = %lor.lhs.false16
  %base.i = getelementptr inbounds %struct.sun6i_pchan, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !187
  %19 = tail call i32 @llvm.bswap.i32(i32 %18) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !188
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr5.i = getelementptr i8, ptr %21, i32 24
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr5.i) #11, !srcloc !187
  %23 = tail call i32 @llvm.bswap.i32(i32 %22) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !189
  call void @__sanitizer_cov_trace_const_cmp4(i32 16318463, i32 %18)
  %cmp.i = icmp eq i32 %18, 16318463
  br i1 %cmp.i, label %if.else19.dma_set_residue.exit_crit_edge, label %if.end.i47

if.else19.dma_set_residue.exit_crit_edge:         ; preds = %if.else19
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_set_residue.exit

if.end.i47:                                       ; preds = %if.else19
  %v_lli.i = getelementptr inbounds %struct.sun6i_desc, ptr %15, i32 0, i32 2
  %24 = ptrtoint ptr %v_lli.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %lli.035.i = load ptr, ptr %v_lli.i, align 4
  %tobool.not36.i = icmp eq ptr %lli.035.i, null
  br i1 %tobool.not36.i, label %if.end.i47.dma_set_residue.exit_crit_edge, label %if.end.i47.for.body.i_crit_edge

if.end.i47.for.body.i_crit_edge:                  ; preds = %if.end.i47
  br label %for.body.i

if.end.i47.dma_set_residue.exit_crit_edge:        ; preds = %if.end.i47
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_set_residue.exit

for.body.i:                                       ; preds = %for.inc16.i.for.body.i_crit_edge, %if.end.i47.for.body.i_crit_edge
  %lli.037.i = phi ptr [ %lli.139.i, %for.inc16.i.for.body.i_crit_edge ], [ %lli.035.i, %if.end.i47.for.body.i_crit_edge ]
  %p_lli_next.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %lli.037.i, i32 0, i32 5
  %25 = ptrtoint ptr %p_lli_next.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %p_lli_next.i, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %26, i32 %19)
  %cmp9.i = icmp eq i32 %26, %19
  %lli.1.in38.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %lli.037.i, i32 0, i32 6
  %27 = ptrtoint ptr %lli.1.in38.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %lli.139.i = load ptr, ptr %lli.1.in38.i, align 4
  %tobool12.not40.i = icmp eq ptr %lli.139.i, null
  br i1 %cmp9.i, label %for.cond11.preheader.i, label %for.inc16.i

for.cond11.preheader.i:                           ; preds = %for.body.i
  br i1 %tobool12.not40.i, label %for.cond11.preheader.i.dma_set_residue.exit_crit_edge, label %for.cond11.preheader.i.for.body13.i_crit_edge

for.cond11.preheader.i.for.body13.i_crit_edge:    ; preds = %for.cond11.preheader.i
  br label %for.body13.i

for.cond11.preheader.i.dma_set_residue.exit_crit_edge: ; preds = %for.cond11.preheader.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_set_residue.exit

for.body13.i:                                     ; preds = %for.body13.i.for.body13.i_crit_edge, %for.cond11.preheader.i.for.body13.i_crit_edge
  %lli.142.i = phi ptr [ %lli.1.i, %for.body13.i.for.body13.i_crit_edge ], [ %lli.139.i, %for.cond11.preheader.i.for.body13.i_crit_edge ]
  %bytes.041.i = phi i32 [ %add.i, %for.body13.i.for.body13.i_crit_edge ], [ %23, %for.cond11.preheader.i.for.body13.i_crit_edge ]
  %len.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %lli.142.i, i32 0, i32 3
  %28 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %len.i, align 4
  %add.i = add i32 %29, %bytes.041.i
  %lli.1.in.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %lli.142.i, i32 0, i32 6
  %30 = ptrtoint ptr %lli.1.in.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %lli.1.i = load ptr, ptr %lli.1.in.i, align 4
  %tobool12.not.i = icmp eq ptr %lli.1.i, null
  br i1 %tobool12.not.i, label %for.body13.i.dma_set_residue.exit_crit_edge, label %for.body13.i.for.body13.i_crit_edge

for.body13.i.for.body13.i_crit_edge:              ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body13.i

for.body13.i.dma_set_residue.exit_crit_edge:      ; preds = %for.body13.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_set_residue.exit

for.inc16.i:                                      ; preds = %for.body.i
  br i1 %tobool12.not40.i, label %for.inc16.i.dma_set_residue.exit_crit_edge, label %for.inc16.i.for.body.i_crit_edge

for.inc16.i.for.body.i_crit_edge:                 ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

for.inc16.i.dma_set_residue.exit_crit_edge:       ; preds = %for.inc16.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %for.inc16.i.dma_set_residue.exit_crit_edge, %for.body13.i.dma_set_residue.exit_crit_edge, %for.cond11.preheader.i.dma_set_residue.exit_crit_edge, %if.end.i47.dma_set_residue.exit_crit_edge, %if.else19.dma_set_residue.exit_crit_edge, %lor.lhs.false16.dma_set_residue.exit_crit_edge, %if.else.dma_set_residue.exit_crit_edge, %for.body.dma_set_residue.exit_crit_edge, %if.then12.dma_set_residue.exit_crit_edge
  %bytes.1 = phi i32 [ 0, %lor.lhs.false16.dma_set_residue.exit_crit_edge ], [ 0, %if.else.dma_set_residue.exit_crit_edge ], [ %23, %if.else19.dma_set_residue.exit_crit_edge ], [ %23, %for.cond11.preheader.i.dma_set_residue.exit_crit_edge ], [ %23, %if.end.i47.dma_set_residue.exit_crit_edge ], [ 0, %if.then12.dma_set_residue.exit_crit_edge ], [ %add.i, %for.body13.i.dma_set_residue.exit_crit_edge ], [ %23, %for.inc16.i.dma_set_residue.exit_crit_edge ], [ %add, %for.body.dma_set_residue.exit_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #11
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %state, i32 0, i32 2
  %31 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %31)
  store i32 %bytes.1, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i55.shrunk = phi i1 [ true, %dma_set_residue.exit ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i55 = zext i1 %retval.0.i.i55.shrunk to i32
  ret i32 %retval.0.i.i55
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_dma_issue_pending(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %2 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %3, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %6 = ptrtoint ptr %prev2.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev2.i.i.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %8 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev3.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %3, ptr %5, align 4
  %10 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %desc_issued.i, ptr %7, align 4
  store ptr %7, ptr %prev.i.i, align 4
  %11 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i.i, align 4
  br label %vchan_issue_pending.exit

vchan_issue_pending.exit:                         ; preds = %if.then.i.i, %entry.vchan_issue_pending.exit_crit_edge
  %12 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.i.not = icmp eq ptr %13, %desc_issued.i
  br i1 %cmp.i.i.not, label %do.body28, label %if.then

if.then:                                          ; preds = %vchan_issue_pending.exit
  %lock9 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock9) #11
  %phy = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 3
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %15, null
  br i1 %tobool.not, label %land.lhs.true, label %if.then.if.end26_crit_edge

if.then.if.end26_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

land.lhs.true:                                    ; preds = %if.then
  %node = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 1
  %16 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile ptr, ptr %node, align 4
  %cmp.i.not = icmp eq ptr %17, %node
  br i1 %cmp.i.not, label %if.then12, label %land.lhs.true.if.end26_crit_edge

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end26

if.then12:                                        ; preds = %land.lhs.true
  %pending = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 9, i32 1
  %18 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %19, ptr noundef %pending) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then12.list_add_tail.exit_crit_edge

if.then12.list_add_tail.exit_crit_edge:           ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %node, ptr %prev.i, align 4
  %21 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %pending, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 1, i32 1
  %22 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %prev3.i.i, align 4
  %23 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %node, ptr %19, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then12.list_add_tail.exit_crit_edge
  %state.i = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 7, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %list_add_tail.exit.tasklet_schedule.exit_crit_edge

list_add_tail.exit.tasklet_schedule.exit_crit_edge: ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %tasklet_schedule.exit

if.then.i:                                        ; preds = %list_add_tail.exit
  call void @__sanitizer_cov_trace_pc() #13
  %task = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 7
  tail call void @__tasklet_schedule(ptr noundef %task) #11
  br label %tasklet_schedule.exit

tasklet_schedule.exit:                            ; preds = %if.then.i, %list_add_tail.exit.tasklet_schedule.exit_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_issue_pending.__UNIQUE_ID_ddebug248, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_issue_pending, %if.end26)) #11
          to label %if.then21 [label %if.end26], !srcloc !190

if.then21:                                        ; preds = %tasklet_schedule.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %24 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %25, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_issue_pending.__UNIQUE_ID_ddebug248, ptr noundef %device.i, ptr noundef nonnull @.str.47, ptr noundef %chan) #11
  br label %if.end26

if.end26:                                         ; preds = %if.then21, %tasklet_schedule.exit, %land.lhs.true.if.end26_crit_edge, %if.then.if.end26_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock9) #11
  br label %if.end48

do.body28:                                        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_issue_pending.__UNIQUE_ID_ddebug249, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_issue_pending, %if.end48)) #11
          to label %if.then42 [label %if.end48], !srcloc !190

if.then42:                                        ; preds = %do.body28
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i67 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %26 = ptrtoint ptr %dev.i67 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i67, align 4
  %device.i68 = getelementptr inbounds %struct.dma_chan_dev, ptr %27, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_issue_pending.__UNIQUE_ID_ddebug249, ptr noundef %device.i68, ptr noundef nonnull @.str.48, ptr noundef %chan) #11
  br label %if.end48

if.end48:                                         ; preds = %if.then42, %do.body28, %if.end26
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sun6i_dma_prep_slave_sg(ptr noundef %chan, ptr noundef %sgl, i32 noundef %sg_len, i32 noundef %dir, i32 noundef %flags, ptr nocapture noundef readnone %context) #2 align 64 {
entry:
  %p_lli.i195 = alloca i32, align 4
  %p_lli = alloca i32, align 4
  %lli_cfg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_lli) #11
  %2 = ptrtoint ptr %p_lli to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %p_lli, align 4, !annotation !191
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lli_cfg) #11
  %3 = ptrtoint ptr %lli_cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %lli_cfg, align 4, !annotation !191
  %tobool.not = icmp eq ptr %sgl, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %cfg = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 2
  %call2 = call fastcc i32 @set_config(ptr noundef %1, ptr noundef %cfg, i32 noundef %dir, ptr noundef nonnull %lli_cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool3.not = icmp eq i32 %call2, 0
  br i1 %tobool3.not, label %if.end6, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.49) #14
  br label %cleanup

if.end6:                                          ; preds = %if.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2304, i32 noundef 124) #15
  %tobool8.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool8.not, label %if.end6.cleanup_crit_edge, label %for.cond.preheader

if.end6.cleanup_crit_edge:                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end6
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sg_len)
  %cmp200.not = icmp eq i32 %sg_len, 0
  br i1 %cmp200.not, label %for.cond.preheader.do.body76_crit_edge, label %for.body.lr.ph

for.cond.preheader.do.body76_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body76

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pool = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp15 = icmp eq i32 %dir, 1
  %src_addr = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 2, i32 1
  %cfg41 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 13
  %port44 = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 4
  %dev.i190 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %chan_id66 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %dst_addr = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 2, i32 2
  %p_lli.i = getelementptr inbounds %struct.sun6i_desc, ptr %call7.i.i, i32 0, i32 1
  %v_lli.i = getelementptr inbounds %struct.sun6i_desc, ptr %call7.i.i, i32 0, i32 2
  br label %for.body

for.body:                                         ; preds = %sun6i_dma_lli_add.exit.for.body_crit_edge, %for.body.lr.ph
  %prev.0204 = phi ptr [ null, %for.body.lr.ph ], [ %call11, %sun6i_dma_lli_add.exit.for.body_crit_edge ]
  %i.0203 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sun6i_dma_lli_add.exit.for.body_crit_edge ]
  %sg.0201 = phi ptr [ %sgl, %for.body.lr.ph ], [ %call75, %sun6i_dma_lli_add.exit.for.body_crit_edge ]
  %7 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pool, align 4
  %call11 = call ptr @dma_pool_alloc(ptr noundef %8, i32 noundef 2048, ptr noundef nonnull %p_lli) #11
  %tobool12.not = icmp eq ptr %call11, null
  br i1 %tobool12.not, label %err_lli_free, label %if.end14

if.end14:                                         ; preds = %for.body
  %dma_length = getelementptr inbounds %struct.scatterlist, ptr %sg.0201, i32 0, i32 4
  %9 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %dma_length, align 4
  %len = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call11, i32 0, i32 3
  %11 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %len, align 4
  %para = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call11, i32 0, i32 4
  %12 = ptrtoint ptr %para to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 8, ptr %para, align 4
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %dma_address = getelementptr inbounds %struct.scatterlist, ptr %sg.0201, i32 0, i32 3
  %13 = ptrtoint ptr %dma_address to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %dma_address, align 4
  %src = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call11, i32 0, i32 1
  %15 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %14, ptr %src, align 4
  %16 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dst_addr, align 4
  %dst = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call11, i32 0, i32 2
  %18 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 %17, ptr %dst, align 4
  %19 = ptrtoint ptr %lli_cfg to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %lli_cfg, align 4
  %21 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %20, ptr %call11, align 4
  %22 = ptrtoint ptr %cfg41 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %cfg41, align 4
  %set_drq = getelementptr inbounds %struct.sun6i_dma_config, ptr %23, i32 0, i32 5
  %24 = ptrtoint ptr %set_drq to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %set_drq, align 4
  %26 = ptrtoint ptr %port44 to i32
  call void @__asan_load1_noabort(i32 %26)
  %27 = load i8, ptr %port44, align 4
  call void %25(ptr noundef nonnull %call11, i8 noundef signext 1, i8 noundef signext %27) #11
  %28 = ptrtoint ptr %cfg41 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %cfg41, align 4
  %set_mode = getelementptr inbounds %struct.sun6i_dma_config, ptr %29, i32 0, i32 6
  %30 = ptrtoint ptr %set_mode to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %set_mode, align 4
  call void %31(ptr noundef nonnull %call11, i8 noundef signext 0, i8 noundef signext 1) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_prep_slave_sg.__UNIQUE_ID_ddebug243, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_prep_slave_sg, %if.end.i)) #11
          to label %if.then28 [label %if.end.i], !srcloc !190

if.then28:                                        ; preds = %if.then16
  call void @__sanitizer_cov_trace_pc() #13
  %32 = ptrtoint ptr %dev.i190 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i190, align 4
  %device.i189 = getelementptr inbounds %struct.dma_chan_dev, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %chan_id66 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %chan_id66, align 4
  %36 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_length, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_prep_slave_sg.__UNIQUE_ID_ddebug243, ptr noundef %device.i189, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef %35, ptr noundef %dst_addr, ptr noundef %dma_address, i32 noundef %37, i32 noundef %flags) #11
  br label %if.end.i

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %src_addr, align 4
  %src37 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call11, i32 0, i32 1
  %40 = ptrtoint ptr %src37 to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 %39, ptr %src37, align 4
  %dma_address38 = getelementptr inbounds %struct.scatterlist, ptr %sg.0201, i32 0, i32 3
  %41 = ptrtoint ptr %dma_address38 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %dma_address38, align 4
  %dst39 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call11, i32 0, i32 2
  %43 = ptrtoint ptr %dst39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store i32 %42, ptr %dst39, align 4
  %44 = ptrtoint ptr %lli_cfg to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %lli_cfg, align 4
  %46 = ptrtoint ptr %call11 to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %45, ptr %call11, align 4
  %47 = ptrtoint ptr %cfg41 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %cfg41, align 4
  %set_drq42 = getelementptr inbounds %struct.sun6i_dma_config, ptr %48, i32 0, i32 5
  %49 = ptrtoint ptr %set_drq42 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %set_drq42, align 4
  %51 = ptrtoint ptr %port44 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %port44, align 4
  call void %50(ptr noundef nonnull %call11, i8 noundef signext %52, i8 noundef signext 1) #11
  %53 = ptrtoint ptr %cfg41 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %cfg41, align 4
  %set_mode46 = getelementptr inbounds %struct.sun6i_dma_config, ptr %54, i32 0, i32 6
  %55 = ptrtoint ptr %set_mode46 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %set_mode46, align 4
  call void %56(ptr noundef nonnull %call11, i8 noundef signext 1, i8 noundef signext 0) #11
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_prep_slave_sg.__UNIQUE_ID_ddebug244, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_prep_slave_sg, %if.end.i)) #11
          to label %if.then62 [label %if.end.i], !srcloc !190

if.then62:                                        ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %57 = ptrtoint ptr %dev.i190 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %dev.i190, align 4
  %device.i191 = getelementptr inbounds %struct.dma_chan_dev, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %chan_id66 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %chan_id66, align 4
  %61 = ptrtoint ptr %dma_length to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load i32, ptr %dma_length, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_prep_slave_sg.__UNIQUE_ID_ddebug244, ptr noundef %device.i191, ptr noundef nonnull @.str.51, ptr noundef nonnull @.str.50, i32 noundef %60, ptr noundef %dma_address38, ptr noundef %src_addr, i32 noundef %62, i32 noundef %flags) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.then62, %if.else, %if.then28, %if.then16
  %63 = ptrtoint ptr %p_lli to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load i32, ptr %p_lli, align 4
  %tobool.not.i = icmp eq ptr %prev.0204, null
  br i1 %tobool.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %65 = ptrtoint ptr %p_lli.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %64, ptr %p_lli.i, align 4
  br label %sun6i_dma_lli_add.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %p_lli_next.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %prev.0204, i32 0, i32 5
  %66 = ptrtoint ptr %p_lli_next.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store i32 %64, ptr %p_lli_next.i, align 4
  %v_lli_next.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %prev.0204, i32 0, i32 6
  br label %sun6i_dma_lli_add.exit

sun6i_dma_lli_add.exit:                           ; preds = %if.else.i, %if.then4.i
  %v_lli_next.sink.i = phi ptr [ %v_lli_next.i, %if.else.i ], [ %v_lli.i, %if.then4.i ]
  %67 = ptrtoint ptr %v_lli_next.sink.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %call11, ptr %v_lli_next.sink.i, align 4
  %p_lli_next6.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call11, i32 0, i32 5
  %68 = ptrtoint ptr %p_lli_next6.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 -2048, ptr %p_lli_next6.i, align 4
  %v_lli_next7.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call11, i32 0, i32 6
  %69 = ptrtoint ptr %v_lli_next7.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr null, ptr %v_lli_next7.i, align 4
  %inc = add nuw i32 %i.0203, 1
  %call75 = call ptr @sg_next(ptr noundef %sg.0201) #11
  %exitcond.not = icmp eq i32 %inc, %sg_len
  br i1 %exitcond.not, label %sun6i_dma_lli_add.exit.do.body76_crit_edge, label %sun6i_dma_lli_add.exit.for.body_crit_edge

sun6i_dma_lli_add.exit.for.body_crit_edge:        ; preds = %sun6i_dma_lli_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

sun6i_dma_lli_add.exit.do.body76_crit_edge:       ; preds = %sun6i_dma_lli_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body76

do.body76:                                        ; preds = %sun6i_dma_lli_add.exit.do.body76_crit_edge, %for.cond.preheader.do.body76_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_prep_slave_sg.__UNIQUE_ID_ddebug245, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_prep_slave_sg, %do.end95)) #11
          to label %if.then90 [label %do.end95], !srcloc !190

if.then90:                                        ; preds = %do.body76
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i193 = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %70 = ptrtoint ptr %dev.i193 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %dev.i193, align 4
  %device.i194 = getelementptr inbounds %struct.dma_chan_dev, ptr %71, i32 0, i32 1
  %p_lli92 = getelementptr inbounds %struct.sun6i_desc, ptr %call7.i.i, i32 0, i32 1
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_prep_slave_sg.__UNIQUE_ID_ddebug245, ptr noundef %device.i194, ptr noundef nonnull @.str.52, ptr noundef %p_lli92) #11
  br label %do.end95

do.end95:                                         ; preds = %if.then90, %do.body76
  %v_lli96 = getelementptr inbounds %struct.sun6i_desc, ptr %call7.i.i, i32 0, i32 2
  %72 = ptrtoint ptr %v_lli96 to i32
  call void @__asan_load4_noabort(i32 %72)
  %prev.1205 = load ptr, ptr %v_lli96, align 8
  %tobool98.not206 = icmp eq ptr %prev.1205, null
  br i1 %tobool98.not206, label %do.end95.for.end101_crit_edge, label %for.body99.lr.ph

do.end95.for.end101_crit_edge:                    ; preds = %do.end95
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end101

for.body99.lr.ph:                                 ; preds = %do.end95
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  br label %for.body99

for.body99:                                       ; preds = %sun6i_dma_dump_lli.exit.for.body99_crit_edge, %for.body99.lr.ph
  %prev.1207 = phi ptr [ %prev.1205, %for.body99.lr.ph ], [ %prev.1, %sun6i_dma_dump_lli.exit.for.body99_crit_edge ]
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_lli.i195) #11
  %73 = ptrtoint ptr %prev.1207 to i32
  %call.i.i = call i32 @__virt_to_phys(i32 noundef %73) #11
  %74 = ptrtoint ptr %p_lli.i195 to i32
  call void @__asan_store4_noabort(i32 %74)
  store i32 %call.i.i, ptr %p_lli.i195, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_dump_lli.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_prep_slave_sg, %sun6i_dma_dump_lli.exit)) #11
          to label %if.then.i [label %sun6i_dma_dump_lli.exit], !srcloc !190

if.then.i:                                        ; preds = %for.body99
  call void @__sanitizer_cov_trace_pc() #13
  %75 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %76, i32 0, i32 1
  %77 = ptrtoint ptr %prev.1207 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load i32, ptr %prev.1207, align 4
  %src.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %prev.1207, i32 0, i32 1
  %79 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load i32, ptr %src.i, align 4
  %dst.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %prev.1207, i32 0, i32 2
  %81 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load i32, ptr %dst.i, align 4
  %len.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %prev.1207, i32 0, i32 3
  %83 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load i32, ptr %len.i, align 4
  %para.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %prev.1207, i32 0, i32 4
  %85 = ptrtoint ptr %para.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %para.i, align 4
  %p_lli_next.i196 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %prev.1207, i32 0, i32 5
  %87 = ptrtoint ptr %p_lli_next.i196 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load i32, ptr %p_lli_next.i196, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_dump_lli.__UNIQUE_ID_ddebug238, ptr noundef %device.i.i, ptr noundef nonnull @.str.54, ptr noundef nonnull %p_lli.i195, ptr noundef nonnull %prev.1207, i32 noundef %78, i32 noundef %80, i32 noundef %82, i32 noundef %84, i32 noundef %86, i32 noundef %88) #11
  br label %sun6i_dma_dump_lli.exit

sun6i_dma_dump_lli.exit:                          ; preds = %if.then.i, %for.body99
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_lli.i195) #11
  %v_lli_next = getelementptr inbounds %struct.sun6i_dma_lli, ptr %prev.1207, i32 0, i32 6
  %89 = ptrtoint ptr %v_lli_next to i32
  call void @__asan_load4_noabort(i32 %89)
  %prev.1 = load ptr, ptr %v_lli_next, align 4
  %tobool98.not = icmp eq ptr %prev.1, null
  br i1 %tobool98.not, label %sun6i_dma_dump_lli.exit.for.end101_crit_edge, label %sun6i_dma_dump_lli.exit.for.body99_crit_edge

sun6i_dma_dump_lli.exit.for.body99_crit_edge:     ; preds = %sun6i_dma_dump_lli.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body99

sun6i_dma_dump_lli.exit.for.end101_crit_edge:     ; preds = %sun6i_dma_dump_lli.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end101

for.end101:                                       ; preds = %sun6i_dma_dump_lli.exit.for.end101_crit_edge, %do.end95.for.end101_crit_edge
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #11
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %90 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %90)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %91 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %92 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %93 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %93)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %94 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %94)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %95 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %96, ptr noundef %desc_allocated.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end101.vchan_tx_prep.exit_crit_edge

for.end101.vchan_tx_prep.exit_crit_edge:          ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end101
  call void @__sanitizer_cov_trace_pc() #13
  %97 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr %node.i, ptr %prev.i.i, align 4
  %98 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %98)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %99 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %99)
  store ptr %96, ptr %prev3.i.i.i, align 8
  %100 = ptrtoint ptr %96 to i32
  call void @__asan_store4_noabort(i32 %100)
  store volatile ptr %node.i, ptr %96, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end101.vchan_tx_prep.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #11
  br label %cleanup

err_lli_free:                                     ; preds = %for.body
  %101 = ptrtoint ptr %v_lli.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %prev.2209 = load ptr, ptr %v_lli.i, align 8
  %tobool106.not210 = icmp eq ptr %prev.2209, null
  br i1 %tobool106.not210, label %err_lli_free.for.end112_crit_edge, label %err_lli_free.for.body107_crit_edge

err_lli_free.for.body107_crit_edge:               ; preds = %err_lli_free
  br label %for.body107

err_lli_free.for.end112_crit_edge:                ; preds = %err_lli_free
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end112

for.body107:                                      ; preds = %for.body107.for.body107_crit_edge, %err_lli_free.for.body107_crit_edge
  %prev.2211 = phi ptr [ %prev.2, %for.body107.for.body107_crit_edge ], [ %prev.2209, %err_lli_free.for.body107_crit_edge ]
  %102 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %pool, align 4
  %104 = ptrtoint ptr %prev.2211 to i32
  %call.i = call i32 @__virt_to_phys(i32 noundef %104) #11
  call void @dma_pool_free(ptr noundef %103, ptr noundef nonnull %prev.2211, i32 noundef %call.i) #11
  %v_lli_next111 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %prev.2211, i32 0, i32 6
  %105 = ptrtoint ptr %v_lli_next111 to i32
  call void @__asan_load4_noabort(i32 %105)
  %prev.2 = load ptr, ptr %v_lli_next111, align 4
  %tobool106.not = icmp eq ptr %prev.2, null
  br i1 %tobool106.not, label %for.body107.for.end112_crit_edge, label %for.body107.for.body107_crit_edge

for.body107.for.body107_crit_edge:                ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body107

for.body107.for.end112_crit_edge:                 ; preds = %for.body107
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end112

for.end112:                                       ; preds = %for.body107.for.end112_crit_edge, %err_lli_free.for.end112_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end112, %vchan_tx_prep.exit, %if.end6.cleanup_crit_edge, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %do.end ], [ null, %for.end112 ], [ %call7.i.i, %vchan_tx_prep.exit ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end6.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lli_cfg) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_lli) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sun6i_dma_prep_dma_memcpy(ptr noundef %chan, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  %p_lli.i74 = alloca i32, align 4
  %dest.addr = alloca i32, align 4
  %src.addr = alloca i32, align 4
  %p_lli = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %dest.addr to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 %dest, ptr %dest.addr, align 4
  %1 = ptrtoint ptr %src.addr to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %src, ptr %src.addr, align 4
  %2 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %chan, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_lli) #11
  %4 = ptrtoint ptr %p_lli to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 -1, ptr %p_lli, align 4, !annotation !191
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_prep_dma_memcpy.__UNIQUE_ID_ddebug242, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_prep_dma_memcpy, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %5 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %6, i32 0, i32 1
  %chan_id = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 4
  %7 = ptrtoint ptr %chan_id to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %chan_id, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_prep_dma_memcpy.__UNIQUE_ID_ddebug242, ptr noundef %device.i, ptr noundef nonnull @.str.56, ptr noundef nonnull @.str.55, i32 noundef %8, ptr noundef nonnull %dest.addr, ptr noundef nonnull %src.addr, i32 noundef %len, i32 noundef %flags) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %len)
  %tobool8.not = icmp eq i32 %len, 0
  br i1 %tobool8.not, label %do.end.cleanup_crit_edge, label %if.end10

do.end.cleanup_crit_edge:                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end10:                                         ; preds = %do.end
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %9 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %9, i32 noundef 2304, i32 noundef 124) #15
  %tobool12.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool12.not, label %if.end10.cleanup_crit_edge, label %if.end14

if.end10.cleanup_crit_edge:                       ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end14:                                         ; preds = %if.end10
  %pool = getelementptr inbounds %struct.sun6i_dma_dev, ptr %3, i32 0, i32 10
  %10 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pool, align 4
  %call15 = call ptr @dma_pool_alloc(ptr noundef %11, i32 noundef 2048, ptr noundef nonnull %p_lli) #11
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end20, label %sun6i_dma_lli_add.exit

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 15
  %12 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %13, ptr noundef nonnull @.str.57) #14
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

sun6i_dma_lli_add.exit:                           ; preds = %if.end14
  %14 = ptrtoint ptr %src.addr to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %src.addr, align 4
  %src22 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call15, i32 0, i32 1
  %16 = ptrtoint ptr %src22 to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %15, ptr %src22, align 4
  %17 = ptrtoint ptr %dest.addr to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dest.addr, align 4
  %dst = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call15, i32 0, i32 2
  %19 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 %18, ptr %dst, align 4
  %len23 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call15, i32 0, i32 3
  %20 = ptrtoint ptr %len23 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %len, ptr %len23, align 4
  %para = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call15, i32 0, i32 4
  %21 = ptrtoint ptr %para to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 8, ptr %para, align 4
  %22 = ptrtoint ptr %call15 to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 67109888, ptr %call15, align 4
  %cfg30 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %3, i32 0, i32 13
  %23 = ptrtoint ptr %cfg30 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %cfg30, align 4
  %set_burst_length = getelementptr inbounds %struct.sun6i_dma_config, ptr %24, i32 0, i32 4
  %25 = ptrtoint ptr %set_burst_length to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %set_burst_length, align 4
  call void %26(ptr noundef nonnull %call15, i8 noundef signext 2, i8 noundef signext 2) #11
  %27 = ptrtoint ptr %cfg30 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg30, align 4
  %set_drq = getelementptr inbounds %struct.sun6i_dma_config, ptr %28, i32 0, i32 5
  %29 = ptrtoint ptr %set_drq to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_drq, align 4
  call void %30(ptr noundef nonnull %call15, i8 noundef signext 1, i8 noundef signext 1) #11
  %31 = ptrtoint ptr %cfg30 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %cfg30, align 4
  %set_mode = getelementptr inbounds %struct.sun6i_dma_config, ptr %32, i32 0, i32 6
  %33 = ptrtoint ptr %set_mode to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %set_mode, align 4
  call void %34(ptr noundef nonnull %call15, i8 noundef signext 0, i8 noundef signext 0) #11
  %35 = ptrtoint ptr %p_lli to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %p_lli, align 4
  %p_lli.i = getelementptr inbounds %struct.sun6i_desc, ptr %call7.i.i, i32 0, i32 1
  %37 = ptrtoint ptr %p_lli.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %p_lli.i, align 4
  %v_lli.i = getelementptr inbounds %struct.sun6i_desc, ptr %call7.i.i, i32 0, i32 2
  %38 = ptrtoint ptr %v_lli.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %call15, ptr %v_lli.i, align 8
  %p_lli_next6.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call15, i32 0, i32 5
  %39 = ptrtoint ptr %p_lli_next6.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 -2048, ptr %p_lli_next6.i, align 4
  %v_lli_next7.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call15, i32 0, i32 6
  %40 = ptrtoint ptr %v_lli_next7.i to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr null, ptr %v_lli_next7.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_lli.i74) #11
  %41 = ptrtoint ptr %call15 to i32
  %call.i.i = call i32 @__virt_to_phys(i32 noundef %41) #11
  %42 = ptrtoint ptr %p_lli.i74 to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %call.i.i, ptr %p_lli.i74, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_dump_lli.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_prep_dma_memcpy, %sun6i_dma_dump_lli.exit)) #11
          to label %if.then.i [label %sun6i_dma_dump_lli.exit], !srcloc !190

if.then.i:                                        ; preds = %sun6i_dma_lli_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %43 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %44, i32 0, i32 1
  %45 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %call15, align 4
  %47 = ptrtoint ptr %src22 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %src22, align 4
  %49 = ptrtoint ptr %dst to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %dst, align 4
  %51 = ptrtoint ptr %len23 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %len23, align 4
  %53 = ptrtoint ptr %para to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %para, align 4
  %55 = ptrtoint ptr %p_lli_next6.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %p_lli_next6.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_dump_lli.__UNIQUE_ID_ddebug238, ptr noundef %device.i.i, ptr noundef nonnull @.str.54, ptr noundef nonnull %p_lli.i74, ptr noundef nonnull %call15, i32 noundef %46, i32 noundef %48, i32 noundef %50, i32 noundef %52, i32 noundef %54, i32 noundef %56) #11
  br label %sun6i_dma_dump_lli.exit

sun6i_dma_dump_lli.exit:                          ; preds = %if.then.i, %sun6i_dma_lli_add.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_lli.i74) #11
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #11
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %57 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %58 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %58)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %59 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %60 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %61 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %62 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %63, ptr noundef %desc_allocated.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %sun6i_dma_dump_lli.exit.vchan_tx_prep.exit_crit_edge

sun6i_dma_dump_lli.exit.vchan_tx_prep.exit_crit_edge: ; preds = %sun6i_dma_dump_lli.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %sun6i_dma_dump_lli.exit
  call void @__sanitizer_cov_trace_pc() #13
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %node.i, ptr %prev.i.i, align 4
  %65 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %66 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %63, ptr %prev3.i.i.i, align 8
  %67 = ptrtoint ptr %63 to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile ptr %node.i, ptr %63, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %sun6i_dma_dump_lli.exit.vchan_tx_prep.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #11
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %do.end20, %if.end10.cleanup_crit_edge, %do.end.cleanup_crit_edge
  %retval.0 = phi ptr [ %call7.i.i, %vchan_tx_prep.exit ], [ null, %do.end20 ], [ null, %do.end.cleanup_crit_edge ], [ null, %if.end10.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_lli) #11
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sun6i_dma_prep_dma_cyclic(ptr noundef %chan, i32 noundef %buf_addr, i32 noundef %buf_len, i32 noundef %period_len, i32 noundef %dir, i32 noundef %flags) #2 align 64 {
entry:
  %p_lli = alloca i32, align 4
  %lli_cfg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %cfg = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 2
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_lli) #11
  %2 = ptrtoint ptr %p_lli to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %p_lli, align 4, !annotation !191
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %lli_cfg) #11
  %3 = ptrtoint ptr %lli_cfg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %lli_cfg, align 4, !annotation !191
  %div = udiv i32 %buf_len, %period_len
  %call2 = call fastcc i32 @set_config(ptr noundef %1, ptr noundef %cfg, i32 noundef %dir, ptr noundef nonnull %lli_cfg)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call2)
  %tobool.not = icmp eq i32 %call2, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %device.i, ptr noundef nonnull @.str.49) #14
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %6 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %6, i32 noundef 2304, i32 noundef 124) #15
  %tobool5.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool5.not, label %if.end.cleanup_crit_edge, label %for.cond.preheader

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.cond.preheader:                               ; preds = %if.end
  call void @__sanitizer_cov_trace_cmp4(i32 %period_len, i32 %buf_len)
  %cmp103.not = icmp ugt i32 %period_len, %buf_len
  br i1 %cmp103.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %pool = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 10
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %dir)
  %cmp15 = icmp eq i32 %dir, 1
  %src_addr = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 2, i32 1
  %cfg27 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 13
  %port30 = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 4
  %dst_addr = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 2, i32 2
  %p_lli.i = getelementptr inbounds %struct.sun6i_desc, ptr %call7.i.i, i32 0, i32 1
  %v_lli.i = getelementptr inbounds %struct.sun6i_desc, ptr %call7.i.i, i32 0, i32 2
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %sun6i_dma_lli_add.exit.for.body_crit_edge, %for.body.lr.ph
  %i.0105 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %sun6i_dma_lli_add.exit.for.body_crit_edge ]
  %prev.0104 = phi ptr [ null, %for.body.lr.ph ], [ %call8, %sun6i_dma_lli_add.exit.for.body_crit_edge ]
  %7 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %pool, align 4
  %call8 = call ptr @dma_pool_alloc(ptr noundef %8, i32 noundef 2048, ptr noundef nonnull %p_lli) #11
  %tobool9.not = icmp eq ptr %call8, null
  br i1 %tobool9.not, label %do.end13, label %if.end14

do.end13:                                         ; preds = %for.body
  %dev = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %9 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dev, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.57) #14
  %11 = ptrtoint ptr %v_lli.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %prev.1107 = load ptr, ptr %v_lli.i, align 8
  %tobool40.not108 = icmp eq ptr %prev.1107, null
  br i1 %tobool40.not108, label %do.end13.for.end45_crit_edge, label %do.end13.for.body41_crit_edge

do.end13.for.body41_crit_edge:                    ; preds = %do.end13
  br label %for.body41

do.end13.for.end45_crit_edge:                     ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end45

if.end14:                                         ; preds = %for.body
  %len = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call8, i32 0, i32 3
  %12 = ptrtoint ptr %len to i32
  call void @__asan_store4_noabort(i32 %12)
  store i32 %period_len, ptr %len, align 4
  %para = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call8, i32 0, i32 4
  %13 = ptrtoint ptr %para to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 8, ptr %para, align 4
  br i1 %cmp15, label %if.then16, label %if.else

if.then16:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %mul = mul i32 %i.0105, %period_len
  %add = add i32 %mul, %buf_addr
  %src = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call8, i32 0, i32 1
  %14 = ptrtoint ptr %src to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add, ptr %src, align 4
  %15 = ptrtoint ptr %dst_addr to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dst_addr, align 4
  %dst = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call8, i32 0, i32 2
  %17 = ptrtoint ptr %dst to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %dst, align 4
  %18 = ptrtoint ptr %lli_cfg to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %lli_cfg, align 4
  %20 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %19, ptr %call8, align 4
  %21 = ptrtoint ptr %cfg27 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %cfg27, align 4
  %set_drq = getelementptr inbounds %struct.sun6i_dma_config, ptr %22, i32 0, i32 5
  %23 = ptrtoint ptr %set_drq to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_drq, align 4
  %25 = ptrtoint ptr %port30 to i32
  call void @__asan_load1_noabort(i32 %25)
  %26 = load i8, ptr %port30, align 4
  call void %24(ptr noundef nonnull %call8, i8 noundef signext 1, i8 noundef signext %26) #11
  %27 = ptrtoint ptr %cfg27 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %cfg27, align 4
  %set_mode = getelementptr inbounds %struct.sun6i_dma_config, ptr %28, i32 0, i32 6
  %29 = ptrtoint ptr %set_mode to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %set_mode, align 4
  call void %30(ptr noundef nonnull %call8, i8 noundef signext 0, i8 noundef signext 1) #11
  br label %if.end.i

if.else:                                          ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %src_addr to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load i32, ptr %src_addr, align 4
  %src22 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call8, i32 0, i32 1
  %33 = ptrtoint ptr %src22 to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 %32, ptr %src22, align 4
  %mul23 = mul i32 %i.0105, %period_len
  %add24 = add i32 %mul23, %buf_addr
  %dst25 = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call8, i32 0, i32 2
  %34 = ptrtoint ptr %dst25 to i32
  call void @__asan_store4_noabort(i32 %34)
  store i32 %add24, ptr %dst25, align 4
  %35 = ptrtoint ptr %lli_cfg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load i32, ptr %lli_cfg, align 4
  %37 = ptrtoint ptr %call8 to i32
  call void @__asan_store4_noabort(i32 %37)
  store i32 %36, ptr %call8, align 4
  %38 = ptrtoint ptr %cfg27 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %cfg27, align 4
  %set_drq28 = getelementptr inbounds %struct.sun6i_dma_config, ptr %39, i32 0, i32 5
  %40 = ptrtoint ptr %set_drq28 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %set_drq28, align 4
  %42 = ptrtoint ptr %port30 to i32
  call void @__asan_load1_noabort(i32 %42)
  %43 = load i8, ptr %port30, align 4
  call void %41(ptr noundef nonnull %call8, i8 noundef signext %43, i8 noundef signext 1) #11
  %44 = ptrtoint ptr %cfg27 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %cfg27, align 4
  %set_mode32 = getelementptr inbounds %struct.sun6i_dma_config, ptr %45, i32 0, i32 6
  %46 = ptrtoint ptr %set_mode32 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %set_mode32, align 4
  call void %47(ptr noundef nonnull %call8, i8 noundef signext 1, i8 noundef signext 0) #11
  br label %if.end.i

if.end.i:                                         ; preds = %if.else, %if.then16
  %48 = ptrtoint ptr %p_lli to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %p_lli, align 4
  %tobool.not.i = icmp eq ptr %prev.0104, null
  br i1 %tobool.not.i, label %if.then4.i, label %if.else.i

if.then4.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %50 = ptrtoint ptr %p_lli.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %49, ptr %p_lli.i, align 4
  br label %sun6i_dma_lli_add.exit

if.else.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %p_lli_next.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %prev.0104, i32 0, i32 5
  %51 = ptrtoint ptr %p_lli_next.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 %49, ptr %p_lli_next.i, align 4
  %v_lli_next.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %prev.0104, i32 0, i32 6
  br label %sun6i_dma_lli_add.exit

sun6i_dma_lli_add.exit:                           ; preds = %if.else.i, %if.then4.i
  %v_lli_next.sink.i = phi ptr [ %v_lli_next.i, %if.else.i ], [ %v_lli.i, %if.then4.i ]
  %52 = ptrtoint ptr %v_lli_next.sink.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %call8, ptr %v_lli_next.sink.i, align 4
  %p_lli_next6.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call8, i32 0, i32 5
  %53 = ptrtoint ptr %p_lli_next6.i to i32
  call void @__asan_store4_noabort(i32 %53)
  store i32 -2048, ptr %p_lli_next6.i, align 4
  %v_lli_next7.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %call8, i32 0, i32 6
  %54 = ptrtoint ptr %v_lli_next7.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr null, ptr %v_lli_next7.i, align 4
  %inc = add nuw i32 %i.0105, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %sun6i_dma_lli_add.exit.for.end_crit_edge, label %sun6i_dma_lli_add.exit.for.body_crit_edge

sun6i_dma_lli_add.exit.for.body_crit_edge:        ; preds = %sun6i_dma_lli_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

sun6i_dma_lli_add.exit.for.end_crit_edge:         ; preds = %sun6i_dma_lli_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %sun6i_dma_lli_add.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %prev.0.lcssa = phi ptr [ null, %for.cond.preheader.for.end_crit_edge ], [ %call8, %sun6i_dma_lli_add.exit.for.end_crit_edge ]
  %p_lli36 = getelementptr inbounds %struct.sun6i_desc, ptr %call7.i.i, i32 0, i32 1
  %55 = ptrtoint ptr %p_lli36 to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load i32, ptr %p_lli36, align 4
  %p_lli_next = getelementptr inbounds %struct.sun6i_dma_lli, ptr %prev.0.lcssa, i32 0, i32 5
  %57 = ptrtoint ptr %p_lli_next to i32
  call void @__asan_store4_noabort(i32 %57)
  store i32 %56, ptr %p_lli_next, align 4
  %cyclic = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 6
  %58 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %58)
  store i8 1, ptr %cyclic, align 2
  call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %chan) #11
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %59 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %59)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %60 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %60)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %61 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %61)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %62 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %63 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call7.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #11
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
  %64 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %65, ptr noundef %desc_allocated.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.end.vchan_tx_prep.exit_crit_edge

for.end.vchan_tx_prep.exit_crit_edge:             ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %66 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr %node.i, ptr %prev.i.i, align 4
  %67 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %68 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %65, ptr %prev3.i.i.i, align 8
  %69 = ptrtoint ptr %65 to i32
  call void @__asan_store4_noabort(i32 %69)
  store volatile ptr %node.i, ptr %65, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %for.end.vchan_tx_prep.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #11
  br label %cleanup

for.body41:                                       ; preds = %for.body41.for.body41_crit_edge, %do.end13.for.body41_crit_edge
  %prev.1109 = phi ptr [ %prev.1, %for.body41.for.body41_crit_edge ], [ %prev.1107, %do.end13.for.body41_crit_edge ]
  %70 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %pool, align 4
  %72 = ptrtoint ptr %prev.1109 to i32
  %call.i = call i32 @__virt_to_phys(i32 noundef %72) #11
  call void @dma_pool_free(ptr noundef %71, ptr noundef nonnull %prev.1109, i32 noundef %call.i) #11
  %v_lli_next = getelementptr inbounds %struct.sun6i_dma_lli, ptr %prev.1109, i32 0, i32 6
  %73 = ptrtoint ptr %v_lli_next to i32
  call void @__asan_load4_noabort(i32 %73)
  %prev.1 = load ptr, ptr %v_lli_next, align 4
  %tobool40.not = icmp eq ptr %prev.1, null
  br i1 %tobool40.not, label %for.body41.for.end45_crit_edge, label %for.body41.for.body41_crit_edge

for.body41.for.body41_crit_edge:                  ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body41

for.body41.for.end45_crit_edge:                   ; preds = %for.body41
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end45

for.end45:                                        ; preds = %for.body41.for.end45_crit_edge, %do.end13.for.end45_crit_edge
  call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

cleanup:                                          ; preds = %for.end45, %vchan_tx_prep.exit, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi ptr [ null, %do.end ], [ null, %for.end45 ], [ %call7.i.i, %vchan_tx_prep.exit ], [ null, %if.end.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %lli_cfg) #11
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_lli) #11
  ret ptr %retval.0
}

; Function Attrs: argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @sun6i_dma_config(ptr nocapture noundef writeonly %chan, ptr nocapture noundef readonly %config) #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %cfg = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 2
  %0 = call ptr @memcpy(ptr %cfg, ptr %config, i32 48)
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dma_pause(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %phy = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_pause.__UNIQUE_ID_ddebug246, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_pause, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_pause.__UNIQUE_ID_ddebug246, ptr noundef %device.i, ptr noundef nonnull @.str.62, ptr noundef %chan) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %tobool7.not = icmp eq ptr %3, null
  br i1 %tobool7.not, label %if.else, label %do.body9

do.body9:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !192
  tail call void @arm_heavy_mb() #11
  %base = getelementptr inbounds %struct.sun6i_pchan, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 33554432) #11, !srcloc !183
  br label %if.end13

if.else:                                          ; preds = %do.end
  %lock = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %node = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 1
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.else.list_del_init.exit_crit_edge

if.else.list_del_init.exit_crit_edge:             ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 1, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.else.list_del_init.exit_crit_edge
  %14 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %14)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %node, ptr %prev.i3.i, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %if.end13

if.end13:                                         ; preds = %list_del_init.exit, %do.body9
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dma_resume(ptr noundef %chan) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %phy = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_resume.__UNIQUE_ID_ddebug247, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_resume, %do.body8)) #11
          to label %if.then [label %do.body8], !srcloc !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.dma_chan, ptr %chan, i32 0, i32 5
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %device.i = getelementptr inbounds %struct.dma_chan_dev, ptr %5, i32 0, i32 1
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_resume.__UNIQUE_ID_ddebug247, ptr noundef %device.i, ptr noundef nonnull @.str.64, ptr noundef %chan) #11
  br label %do.body8

do.body8:                                         ; preds = %if.then, %entry
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call12 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #11
  %tobool17.not = icmp eq ptr %3, null
  br i1 %tobool17.not, label %if.else, label %do.body19

do.body19:                                        ; preds = %do.body8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !193
  tail call void @arm_heavy_mb() #11
  %base = getelementptr inbounds %struct.sun6i_pchan, ptr %3, i32 0, i32 1
  %6 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %7, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 0) #11, !srcloc !183
  br label %if.end29

if.else:                                          ; preds = %do.body8
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %8 = ptrtoint ptr %desc_issued to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile ptr, ptr %desc_issued, align 4
  %cmp.i.not = icmp eq ptr %9, %desc_issued
  br i1 %cmp.i.not, label %if.else.if.end29_crit_edge, label %if.then25

if.else.if.end29_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end29

if.then25:                                        ; preds = %if.else
  %lock26 = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock26) #11
  %node = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 1
  %pending = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 9
  %prev.i = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 9, i32 1
  %10 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node, ptr noundef %11, ptr noundef %pending) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.then25.list_add_tail.exit_crit_edge

if.then25.list_add_tail.exit_crit_edge:           ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit

if.end.i.i:                                       ; preds = %if.then25
  call void @__sanitizer_cov_trace_pc() #13
  %12 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %node, ptr %prev.i, align 4
  %13 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %pending, ptr %node, align 4
  %prev3.i.i = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %node, ptr %11, align 4
  br label %list_add_tail.exit

list_add_tail.exit:                               ; preds = %if.end.i.i, %if.then25.list_add_tail.exit_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock26) #11
  br label %if.end29

if.end29:                                         ; preds = %list_add_tail.exit, %if.else.if.end29_crit_edge, %do.body19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call12) #11
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dma_terminate_all(ptr noundef %chan) #2 align 64 {
entry:
  %head = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %phy = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 3
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head) #11
  %4 = getelementptr inbounds %struct.list_head, ptr %head, i32 0, i32 1
  %5 = ptrtoint ptr %head to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %head, ptr %head, align 4
  %6 = ptrtoint ptr %4 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %head, ptr %4, align 4
  %lock = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 5
  call void @_raw_spin_lock(ptr noundef %lock) #11
  %node = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 1
  %call.i.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #11
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del_init.exit_crit_edge

entry.list_del_init.exit_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 1, i32 1
  %7 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %prev.i.i, align 4
  %9 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %10, i32 0, i32 1
  %11 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %8, ptr %prev1.i.i.i, align 4
  %12 = ptrtoint ptr %8 to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %10, ptr %8, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %entry.list_del_init.exit_crit_edge
  %13 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %node, ptr %node, align 4
  %prev.i3.i = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 1, i32 1
  %14 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %node, ptr %prev.i3.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock) #11
  %lock4 = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 3
  %call6 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock4) #11
  %cyclic = getelementptr inbounds %struct.sun6i_vchan, ptr %chan, i32 0, i32 6
  %15 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %15)
  %16 = load i8, ptr %cyclic, align 2, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %16)
  %tobool.not = icmp eq i8 %16, 0
  br i1 %tobool.not, label %list_del_init.exit.if.end18_crit_edge, label %if.then

list_del_init.exit.if.end18_crit_edge:            ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then:                                          ; preds = %list_del_init.exit
  %17 = ptrtoint ptr %cyclic to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 0, ptr %cyclic, align 2
  %tobool10.not = icmp eq ptr %3, null
  br i1 %tobool10.not, label %if.then.if.end18_crit_edge, label %land.lhs.true

if.then.if.end18_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

land.lhs.true:                                    ; preds = %if.then
  %desc = getelementptr inbounds %struct.sun6i_pchan, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc, align 4
  %tobool11.not = icmp eq ptr %19, null
  br i1 %tobool11.not, label %land.lhs.true.if.end18_crit_edge, label %if.then12

land.lhs.true.if.end18_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.then12:                                        ; preds = %land.lhs.true
  %node17 = getelementptr inbounds %struct.virt_dma_desc, ptr %19, i32 0, i32 2
  %desc_completed = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %prev.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %20 = ptrtoint ptr %prev.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i, align 4
  %call.i.i57 = call zeroext i1 @__list_add_valid(ptr noundef %node17, ptr noundef %21, ptr noundef %desc_completed) #11
  br i1 %call.i.i57, label %if.end.i.i58, label %if.then12.if.end18_crit_edge

if.then12.if.end18_crit_edge:                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end18

if.end.i.i58:                                     ; preds = %if.then12
  call void @__sanitizer_cov_trace_pc() #13
  %22 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %node17, ptr %prev.i, align 4
  %23 = ptrtoint ptr %node17 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %desc_completed, ptr %node17, align 4
  %prev3.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %19, i32 0, i32 2, i32 1
  %24 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev3.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %node17, ptr %21, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.end.i.i58, %if.then12.if.end18_crit_edge, %land.lhs.true.if.end18_crit_edge, %if.then.if.end18_crit_edge, %list_del_init.exit.if.end18_crit_edge
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4
  %26 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %27, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %if.end18.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

if.end18.list_splice_tail_init.exit.i_crit_edge:  ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %4, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 4, i32 1
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
  store ptr %head, ptr %31, align 4
  store ptr %31, ptr %4, align 4
  %35 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %if.end18.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5
  %36 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i9.i = icmp eq ptr %37, %desc_submitted.i
  br i1 %cmp.i.not.i9.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge, label %if.then.i13.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit14.i

if.then.i13.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %4, align 4
  %prev2.i.i11.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 5, i32 1
  %40 = ptrtoint ptr %prev2.i.i11.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %prev2.i.i11.i, align 4
  %prev3.i.i12.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %42 = ptrtoint ptr %prev3.i.i12.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store ptr %39, ptr %prev3.i.i12.i, align 4
  %43 = ptrtoint ptr %39 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %37, ptr %39, align 4
  %44 = ptrtoint ptr %41 to i32
  call void @__asan_store4_noabort(i32 %44)
  store ptr %head, ptr %41, align 4
  store ptr %41, ptr %4, align 4
  %45 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %45)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i11.i, align 4
  br label %list_splice_tail_init.exit14.i

list_splice_tail_init.exit14.i:                   ; preds = %if.then.i13.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit14.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6
  %46 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i15.i = icmp eq ptr %47, %desc_issued.i
  br i1 %cmp.i.not.i15.i, label %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge, label %if.then.i19.i

list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge: ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit20.i

if.then.i19.i:                                    ; preds = %list_splice_tail_init.exit14.i
  call void @__sanitizer_cov_trace_pc() #13
  %48 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %4, align 4
  %prev2.i.i17.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 6, i32 1
  %50 = ptrtoint ptr %prev2.i.i17.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %prev2.i.i17.i, align 4
  %prev3.i.i18.i = getelementptr inbounds %struct.list_head, ptr %47, i32 0, i32 1
  %52 = ptrtoint ptr %prev3.i.i18.i to i32
  call void @__asan_store4_noabort(i32 %52)
  store ptr %49, ptr %prev3.i.i18.i, align 4
  %53 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %53)
  store ptr %47, ptr %49, align 4
  %54 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %head, ptr %51, align 4
  store ptr %51, ptr %4, align 4
  %55 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %55)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i17.i, align 4
  br label %list_splice_tail_init.exit20.i

list_splice_tail_init.exit20.i:                   ; preds = %if.then.i19.i, %list_splice_tail_init.exit14.i.list_splice_tail_init.exit20.i_crit_edge
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7
  %56 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i21.i = icmp eq ptr %57, %desc_completed.i
  br i1 %cmp.i.not.i21.i, label %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge, label %if.then.i25.i

list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge: ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_splice_tail_init.exit26.i

if.then.i25.i:                                    ; preds = %list_splice_tail_init.exit20.i
  call void @__sanitizer_cov_trace_pc() #13
  %58 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %4, align 4
  %prev2.i.i23.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 7, i32 1
  %60 = ptrtoint ptr %prev2.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %prev2.i.i23.i, align 4
  %prev3.i.i24.i = getelementptr inbounds %struct.list_head, ptr %57, i32 0, i32 1
  %62 = ptrtoint ptr %prev3.i.i24.i to i32
  call void @__asan_store4_noabort(i32 %62)
  store ptr %59, ptr %prev3.i.i24.i, align 4
  %63 = ptrtoint ptr %59 to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %57, ptr %59, align 4
  %64 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %head, ptr %61, align 4
  store ptr %61, ptr %4, align 4
  %65 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_store4_noabort(i32 %65)
  store volatile ptr %desc_completed.i, ptr %desc_completed.i, align 4
  store ptr %desc_completed.i, ptr %prev2.i.i23.i, align 4
  br label %list_splice_tail_init.exit26.i

list_splice_tail_init.exit26.i:                   ; preds = %if.then.i25.i, %list_splice_tail_init.exit20.i.list_splice_tail_init.exit26.i_crit_edge
  %desc_terminated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8
  %66 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load volatile ptr, ptr %desc_terminated.i, align 4
  %cmp.i.not.i27.i = icmp eq ptr %67, %desc_terminated.i
  br i1 %cmp.i.not.i27.i, label %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge, label %if.then.i31.i

list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge: ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_get_all_descriptors.exit

if.then.i31.i:                                    ; preds = %list_splice_tail_init.exit26.i
  call void @__sanitizer_cov_trace_pc() #13
  %68 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %4, align 4
  %prev2.i.i29.i = getelementptr inbounds %struct.virt_dma_chan, ptr %chan, i32 0, i32 8, i32 1
  %70 = ptrtoint ptr %prev2.i.i29.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %prev2.i.i29.i, align 4
  %prev3.i.i30.i = getelementptr inbounds %struct.list_head, ptr %67, i32 0, i32 1
  %72 = ptrtoint ptr %prev3.i.i30.i to i32
  call void @__asan_store4_noabort(i32 %72)
  store ptr %69, ptr %prev3.i.i30.i, align 4
  %73 = ptrtoint ptr %69 to i32
  call void @__asan_store4_noabort(i32 %73)
  store ptr %67, ptr %69, align 4
  %74 = ptrtoint ptr %71 to i32
  call void @__asan_store4_noabort(i32 %74)
  store ptr %head, ptr %71, align 4
  store ptr %71, ptr %4, align 4
  %75 = ptrtoint ptr %desc_terminated.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store volatile ptr %desc_terminated.i, ptr %desc_terminated.i, align 4
  store ptr %desc_terminated.i, ptr %prev2.i.i29.i, align 4
  br label %vchan_get_all_descriptors.exit

vchan_get_all_descriptors.exit:                   ; preds = %if.then.i31.i, %list_splice_tail_init.exit26.i.vchan_get_all_descriptors.exit_crit_edge
  %tobool20.not = icmp eq ptr %3, null
  br i1 %tobool20.not, label %vchan_get_all_descriptors.exit.if.end33_crit_edge, label %do.body22

vchan_get_all_descriptors.exit.if.end33_crit_edge: ; preds = %vchan_get_all_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end33

do.body22:                                        ; preds = %vchan_get_all_descriptors.exit
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !194
  call void @arm_heavy_mb() #11
  %base = getelementptr inbounds %struct.sun6i_pchan, ptr %3, i32 0, i32 1
  %76 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %77, i32 0) #11, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !195
  call void @arm_heavy_mb() #11
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base, align 4
  %add.ptr29 = getelementptr i8, ptr %79, i32 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr29, i32 0) #11, !srcloc !183
  %80 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr null, ptr %phy, align 4
  %vchan31 = getelementptr inbounds %struct.sun6i_pchan, ptr %3, i32 0, i32 2
  %81 = ptrtoint ptr %vchan31 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr null, ptr %vchan31, align 4
  %desc32 = getelementptr inbounds %struct.sun6i_pchan, ptr %3, i32 0, i32 3
  %82 = ptrtoint ptr %desc32 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr null, ptr %desc32, align 4
  %done = getelementptr inbounds %struct.sun6i_pchan, ptr %3, i32 0, i32 4
  %83 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr null, ptr %done, align 4
  br label %if.end33

if.end33:                                         ; preds = %do.body22, %vchan_get_all_descriptors.exit.if.end33_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock4, i32 noundef %call6) #11
  call void @vchan_dma_desc_free_list(ptr noundef %chan, ptr noundef nonnull %head) #11
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head) #11
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_dma_tasklet(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %channels = getelementptr i8, ptr %t, i32 -416
  %0 = ptrtoint ptr %channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %.pn143 = load ptr, ptr %channels, align 4
  %cmp.not145 = icmp eq ptr %.pn143, %channels
  br i1 %cmp.not145, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %dev = getelementptr i8, ptr %t, i32 -356
  br label %for.body

for.body:                                         ; preds = %if.end22.for.body_crit_edge, %for.body.lr.ph
  %.pn146 = phi ptr [ %.pn143, %for.body.lr.ph ], [ %.pn, %if.end22.for.body_crit_edge ]
  %vchan.0147 = getelementptr i8, ptr %.pn146, i32 -32
  %lock = getelementptr i8, ptr %.pn146, i32 60
  tail call void @_raw_spin_lock_irq(ptr noundef %lock) #11
  %phy = getelementptr i8, ptr %.pn146, i32 204
  %1 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %2, null
  br i1 %tobool.not, label %for.body.if.end22_crit_edge, label %land.lhs.true

for.body.if.end22_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

land.lhs.true:                                    ; preds = %for.body
  %done = getelementptr inbounds %struct.sun6i_pchan, ptr %2, i32 0, i32 4
  %3 = ptrtoint ptr %done to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %done, align 4
  %tobool7.not = icmp eq ptr %4, null
  br i1 %tobool7.not, label %land.lhs.true.if.end22_crit_edge, label %if.then

land.lhs.true.if.end22_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

if.then:                                          ; preds = %land.lhs.true
  %call = tail call fastcc i32 @sun6i_dma_start_desc(ptr noundef %vchan.0147)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool8.not = icmp eq i32 %call, 0
  br i1 %tobool8.not, label %if.then.if.end22_crit_edge, label %do.body

if.then.if.end22_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end22

do.body:                                          ; preds = %if.then
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_tasklet.__UNIQUE_ID_ddebug239, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_tasklet, %do.end)) #11
          to label %if.then17 [label %do.end], !srcloc !190

if.then17:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %7 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %2, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_tasklet.__UNIQUE_ID_ddebug239, ptr noundef %6, ptr noundef nonnull @.str.66, i32 noundef %8) #11
  br label %do.end

do.end:                                           ; preds = %if.then17, %do.body
  %9 = ptrtoint ptr %phy to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr null, ptr %phy, align 4
  %vchan20 = getelementptr inbounds %struct.sun6i_pchan, ptr %2, i32 0, i32 2
  %10 = ptrtoint ptr %vchan20 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr null, ptr %vchan20, align 4
  br label %if.end22

if.end22:                                         ; preds = %do.end, %if.then.if.end22_crit_edge, %land.lhs.true.if.end22_crit_edge, %for.body.if.end22_crit_edge
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock) #11
  %11 = ptrtoint ptr %.pn146 to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn = load ptr, ptr %.pn146, align 4
  %cmp.not = icmp eq ptr %.pn, %channels
  br i1 %cmp.not, label %if.end22.for.end_crit_edge, label %if.end22.for.body_crit_edge

if.end22.for.body_crit_edge:                      ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

if.end22.for.end_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %if.end22.for.end_crit_edge, %entry.for.end_crit_edge
  %lock32 = getelementptr i8, ptr %t, i32 -48
  tail call void @_raw_spin_lock_irq(ptr noundef %lock32) #11
  %num_pchans = getelementptr i8, ptr %t, i32 52
  %12 = ptrtoint ptr %num_pchans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_pchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %cmp34148.not = icmp eq i32 %13, 0
  br i1 %cmp34148.not, label %for.end.for.end72_crit_edge, label %for.body35.lr.ph

for.end.for.end72_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end72

for.body35.lr.ph:                                 ; preds = %for.end
  %pchans = getelementptr i8, ptr %t, i32 40
  %pending = getelementptr i8, ptr %t, i32 28
  %dev65 = getelementptr i8, ptr %t, i32 -356
  br label %for.body35

for.body35:                                       ; preds = %for.inc71.for.body35_crit_edge, %for.body35.lr.ph
  %pchan_alloc.0150 = phi i32 [ 0, %for.body35.lr.ph ], [ %pchan_alloc.1, %for.inc71.for.body35_crit_edge ]
  %pchan_idx.0149 = phi i32 [ 0, %for.body35.lr.ph ], [ %inc, %for.inc71.for.body35_crit_edge ]
  %14 = ptrtoint ptr %pchans to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pchans, align 4
  %arrayidx = getelementptr %struct.sun6i_pchan, ptr %15, i32 %pchan_idx.0149
  %vchan36 = getelementptr %struct.sun6i_pchan, ptr %15, i32 %pchan_idx.0149, i32 2
  %16 = ptrtoint ptr %vchan36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %vchan36, align 4
  %tobool37.not = icmp eq ptr %17, null
  br i1 %tobool37.not, label %lor.lhs.false, label %for.body35.for.inc71_crit_edge

for.body35.for.inc71_crit_edge:                   ; preds = %for.body35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc71

lor.lhs.false:                                    ; preds = %for.body35
  %18 = ptrtoint ptr %pending to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load volatile ptr, ptr %pending, align 4
  %cmp.i.not = icmp eq ptr %19, %pending
  br i1 %cmp.i.not, label %lor.lhs.false.for.inc71_crit_edge, label %if.end41

lor.lhs.false.for.inc71_crit_edge:                ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc71

if.end41:                                         ; preds = %lor.lhs.false
  %add.ptr46 = getelementptr i8, ptr %19, i32 -180
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %19) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end41.list_del_init.exit_crit_edge

if.end41.list_del_init.exit_crit_edge:            ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del_init.exit

if.end.i.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %prev.i.i, align 4
  %22 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %19, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %21, ptr %prev1.i.i.i, align 4
  %25 = ptrtoint ptr %21 to i32
  call void @__asan_store4_noabort(i32 %25)
  store volatile ptr %23, ptr %21, align 4
  br label %list_del_init.exit

list_del_init.exit:                               ; preds = %if.end.i.i, %if.end41.list_del_init.exit_crit_edge
  %26 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile ptr %19, ptr %19, align 4
  %prev.i3.i = getelementptr inbounds %struct.list_head, ptr %19, i32 0, i32 1
  %27 = ptrtoint ptr %prev.i3.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %19, ptr %prev.i3.i, align 4
  %shl = shl nuw i32 1, %pchan_idx.0149
  %or = or i32 %pchan_alloc.0150, %shl
  %28 = ptrtoint ptr %vchan36 to i32
  call void @__asan_store4_noabort(i32 %28)
  store ptr %add.ptr46, ptr %vchan36, align 4
  %phy48 = getelementptr i8, ptr %19, i32 56
  %29 = ptrtoint ptr %phy48 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %arrayidx, ptr %phy48, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_tasklet.__UNIQUE_ID_ddebug240, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_tasklet, %for.inc71)) #11
          to label %if.then63 [label %for.inc71], !srcloc !190

if.then63:                                        ; preds = %list_del_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  %30 = ptrtoint ptr %dev65 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev65, align 4
  %32 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %arrayidx, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_tasklet.__UNIQUE_ID_ddebug240, ptr noundef %31, ptr noundef nonnull @.str.67, i32 noundef %33, ptr noundef %add.ptr46) #11
  br label %for.inc71

for.inc71:                                        ; preds = %if.then63, %list_del_init.exit, %lor.lhs.false.for.inc71_crit_edge, %for.body35.for.inc71_crit_edge
  %pchan_alloc.1 = phi i32 [ %pchan_alloc.0150, %for.body35.for.inc71_crit_edge ], [ %pchan_alloc.0150, %lor.lhs.false.for.inc71_crit_edge ], [ %or, %if.then63 ], [ %or, %list_del_init.exit ]
  %inc = add nuw i32 %pchan_idx.0149, 1
  %34 = ptrtoint ptr %num_pchans to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %num_pchans, align 4
  %cmp34 = icmp ult i32 %inc, %35
  br i1 %cmp34, label %for.inc71.for.body35_crit_edge, label %for.inc71.for.end72_crit_edge

for.inc71.for.end72_crit_edge:                    ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end72

for.inc71.for.body35_crit_edge:                   ; preds = %for.inc71
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body35

for.end72:                                        ; preds = %for.inc71.for.end72_crit_edge, %for.end.for.end72_crit_edge
  %pchan_alloc.0.lcssa = phi i32 [ 0, %for.end.for.end72_crit_edge ], [ %pchan_alloc.1, %for.inc71.for.end72_crit_edge ]
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock32) #11
  %36 = ptrtoint ptr %num_pchans to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %num_pchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %cmp76151.not = icmp eq i32 %37, 0
  br i1 %cmp76151.not, label %for.end72.for.end95_crit_edge, label %for.body77.lr.ph

for.end72.for.end95_crit_edge:                    ; preds = %for.end72
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end95

for.body77.lr.ph:                                 ; preds = %for.end72
  %pchans82 = getelementptr i8, ptr %t, i32 40
  br label %for.body77

for.body77:                                       ; preds = %for.inc93.for.body77_crit_edge, %for.body77.lr.ph
  %pchan_idx.1152 = phi i32 [ 0, %for.body77.lr.ph ], [ %inc94, %for.inc93.for.body77_crit_edge ]
  %shl78 = shl nuw i32 1, %pchan_idx.1152
  %and = and i32 %shl78, %pchan_alloc.0.lcssa
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool79.not = icmp eq i32 %and, 0
  br i1 %tobool79.not, label %for.body77.for.inc93_crit_edge, label %if.end81

for.body77.for.inc93_crit_edge:                   ; preds = %for.body77
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc93

if.end81:                                         ; preds = %for.body77
  %38 = ptrtoint ptr %pchans82 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pchans82, align 4
  %vchan84 = getelementptr %struct.sun6i_pchan, ptr %39, i32 %pchan_idx.1152, i32 2
  %40 = ptrtoint ptr %vchan84 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %vchan84, align 4
  %tobool85.not = icmp eq ptr %41, null
  br i1 %tobool85.not, label %if.end81.for.inc93_crit_edge, label %if.then86

if.end81.for.inc93_crit_edge:                     ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc93

if.then86:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #13
  %lock88 = getelementptr inbounds %struct.virt_dma_chan, ptr %41, i32 0, i32 3
  tail call void @_raw_spin_lock_irq(ptr noundef %lock88) #11
  %call89 = tail call fastcc i32 @sun6i_dma_start_desc(ptr noundef nonnull %41)
  tail call void @_raw_spin_unlock_irq(ptr noundef %lock88) #11
  br label %for.inc93

for.inc93:                                        ; preds = %if.then86, %if.end81.for.inc93_crit_edge, %for.body77.for.inc93_crit_edge
  %inc94 = add nuw i32 %pchan_idx.1152, 1
  %42 = ptrtoint ptr %num_pchans to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %num_pchans, align 4
  %cmp76 = icmp ult i32 %inc94, %43
  br i1 %cmp76, label %for.inc93.for.body77_crit_edge, label %for.inc93.for.end95_crit_edge

for.inc93.for.end95_crit_edge:                    ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end95

for.inc93.for.body77_crit_edge:                   ; preds = %for.inc93
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body77

for.end95:                                        ; preds = %for.inc93.for.end95_crit_edge, %for.end72.for.end95_crit_edge
  ret void
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_dma_free_desc(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %vd, i32 0, i32 3
  %0 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %chan, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool.not = icmp eq ptr %vd, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !181

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %v_lli7 = getelementptr inbounds %struct.sun6i_desc, ptr %vd, i32 0, i32 2
  %4 = ptrtoint ptr %v_lli7 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %v_lli7, align 4
  %tobool8.not21 = icmp eq ptr %5, null
  br i1 %tobool8.not21, label %if.end.while.end_crit_edge, label %while.body.lr.ph

if.end.while.end_crit_edge:                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.body.lr.ph:                                 ; preds = %if.end
  %p_lli6 = getelementptr inbounds %struct.sun6i_desc, ptr %vd, i32 0, i32 1
  %6 = ptrtoint ptr %p_lli6 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %p_lli6, align 4
  %pool = getelementptr inbounds %struct.sun6i_dma_dev, ptr %3, i32 0, i32 10
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.lr.ph
  %p_lli.023 = phi i32 [ %7, %while.body.lr.ph ], [ %11, %while.body.while.body_crit_edge ]
  %v_lli.022 = phi ptr [ %5, %while.body.lr.ph ], [ %9, %while.body.while.body_crit_edge ]
  %v_lli_next = getelementptr inbounds %struct.sun6i_dma_lli, ptr %v_lli.022, i32 0, i32 6
  %8 = ptrtoint ptr %v_lli_next to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %v_lli_next, align 4
  %p_lli_next = getelementptr inbounds %struct.sun6i_dma_lli, ptr %v_lli.022, i32 0, i32 5
  %10 = ptrtoint ptr %p_lli_next to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %p_lli_next, align 4
  %12 = ptrtoint ptr %pool to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pool, align 4
  tail call void @dma_pool_free(ptr noundef %13, ptr noundef nonnull %v_lli.022, i32 noundef %p_lli.023) #11
  %tobool8.not = icmp eq ptr %9, null
  br i1 %tobool8.not, label %while.body.while.end_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body

while.body.while.end_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.end

while.end:                                        ; preds = %while.body.while.end_crit_edge, %if.end.while.end_crit_edge
  tail call void @kfree(ptr noundef nonnull %vd) #11
  br label %cleanup

cleanup:                                          ; preds = %while.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sun6i_dma_interrupt(i32 noundef %irq, ptr noundef %dev_id) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %num_pchans = getelementptr inbounds %struct.sun6i_dma_dev, ptr %dev_id, i32 0, i32 14
  %0 = ptrtoint ptr %num_pchans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_pchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %1)
  %cmp87.not = icmp ult i32 %1, 8
  br i1 %cmp87.not, label %entry.for.end42_crit_edge, label %for.body.lr.ph

entry.for.end42_crit_edge:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end42

for.body.lr.ph:                                   ; preds = %entry
  %base = getelementptr inbounds %struct.sun6i_dma_dev, ptr %dev_id, i32 0, i32 1
  %dev = getelementptr inbounds %struct.dma_device, ptr %dev_id, i32 0, i32 15
  %pchans = getelementptr inbounds %struct.sun6i_dma_dev, ptr %dev_id, i32 0, i32 11
  %tasklet_shutdown = getelementptr inbounds %struct.sun6i_dma_dev, ptr %dev_id, i32 0, i32 8
  %state.i = getelementptr inbounds %struct.sun6i_dma_dev, ptr %dev_id, i32 0, i32 7, i32 1
  %task = getelementptr inbounds %struct.sun6i_dma_dev, ptr %dev_id, i32 0, i32 7
  br label %for.body

for.body:                                         ; preds = %for.inc40.for.body_crit_edge, %for.body.lr.ph
  %i.089 = phi i32 [ 0, %for.body.lr.ph ], [ %inc41, %for.inc40.for.body_crit_edge ]
  %ret.088 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc40.for.body_crit_edge ]
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %mul = shl i32 %i.089, 2
  %add = add nuw i32 %mul, 16
  %add.ptr = getelementptr i8, ptr %3, i32 %add
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !187
  %5 = tail call i32 @llvm.bswap.i32(i32 %4)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !196
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %4)
  %tobool.not = icmp eq i32 %4, 0
  br i1 %tobool.not, label %for.body.for.inc40_crit_edge, label %do.body

for.body.for.inc40_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc40

do.body:                                          ; preds = %for.body
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_interrupt.__UNIQUE_ID_ddebug241, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_interrupt, %for.body21.preheader)) #11
          to label %if.then8 [label %for.body21.preheader], !srcloc !190

if.then8:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.089)
  %tobool9.not = icmp eq i32 %i.089, 0
  %cond = select i1 %tobool9.not, ptr @.str.75, ptr @.str.74
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_interrupt.__UNIQUE_ID_ddebug241, ptr noundef %7, ptr noundef nonnull @.str.73, ptr noundef nonnull %cond, i32 noundef %5) #11
  br label %for.body21.preheader

for.body21.preheader:                             ; preds = %if.then8, %do.body
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !197
  tail call void @arm_heavy_mb() #11
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr17 = getelementptr i8, ptr %9, i32 %add
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr17, i32 %4) #11, !srcloc !183
  br label %for.body21

for.body21:                                       ; preds = %if.end35.for.body21_crit_edge, %for.body21.preheader
  %j.084 = phi i32 [ %inc, %if.end35.for.body21_crit_edge ], [ 0, %for.body21.preheader ]
  %status.082 = phi i32 [ %shr, %if.end35.for.body21_crit_edge ], [ %5, %for.body21.preheader ]
  %10 = ptrtoint ptr %pchans to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pchans, align 4
  %vchan23 = getelementptr %struct.sun6i_pchan, ptr %11, i32 %j.084, i32 2
  %12 = ptrtoint ptr %vchan23 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %vchan23, align 4
  %tobool24.not = icmp eq ptr %13, null
  br i1 %tobool24.not, label %for.body21.if.end35_crit_edge, label %land.lhs.true

for.body21.if.end35_crit_edge:                    ; preds = %for.body21
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

land.lhs.true:                                    ; preds = %for.body21
  %irq_type = getelementptr inbounds %struct.sun6i_vchan, ptr %13, i32 0, i32 5
  %14 = ptrtoint ptr %irq_type to i32
  call void @__asan_load1_noabort(i32 %14)
  %15 = load i8, ptr %irq_type, align 1
  %conv = zext i8 %15 to i32
  %and = and i32 %status.082, %conv
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool25.not = icmp eq i32 %and, 0
  br i1 %tobool25.not, label %land.lhs.true.if.end35_crit_edge, label %if.then26

land.lhs.true.if.end35_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then26:                                        ; preds = %land.lhs.true
  %cyclic = getelementptr inbounds %struct.sun6i_vchan, ptr %13, i32 0, i32 6
  %16 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %16)
  %17 = load i8, ptr %cyclic, align 2, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %17)
  %tobool27.not = icmp eq i8 %17, 0
  br i1 %tobool27.not, label %if.else, label %if.then28

if.then28:                                        ; preds = %if.then26
  %desc = getelementptr %struct.sun6i_pchan, ptr %11, i32 %j.084, i32 3
  %18 = ptrtoint ptr %desc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %desc, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %chan.i, align 4
  %cyclic.i = getelementptr inbounds %struct.virt_dma_chan, ptr %21, i32 0, i32 9
  %22 = ptrtoint ptr %cyclic.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %19, ptr %cyclic.i, align 4
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %21, i32 0, i32 1, i32 1
  %call.i.i70 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i70)
  %tobool.not.i.i = icmp eq i32 %call.i.i70, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %if.then28.if.end35_crit_edge

if.then28.if.end35_crit_edge:                     ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end35

if.then.i.i:                                      ; preds = %if.then28
  call void @__sanitizer_cov_trace_pc() #13
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %21, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #11
  br label %if.end35

if.else:                                          ; preds = %if.then26
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %13, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #11
  %desc29 = getelementptr %struct.sun6i_pchan, ptr %11, i32 %j.084, i32 3
  %23 = ptrtoint ptr %desc29 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %desc29, align 4
  %chan.i71 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %24, i32 0, i32 3
  %25 = ptrtoint ptr %chan.i71 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %chan.i71, align 4
  %27 = ptrtoint ptr %24 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %24, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %28)
  %cmp.i.i = icmp slt i32 %28, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !181

do.body2.i.i:                                     ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #11, !srcloc !198
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.else
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %26, i32 0, i32 3
  %29 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %completed_cookie.i.i, align 4
  %30 = ptrtoint ptr %24 to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 0, ptr %24, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_interrupt, %do.end.i)) #11
          to label %if.then.i [label %do.end.i], !srcloc !190

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %31 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %26, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %32, i32 0, i32 15
  %33 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug234, ptr noundef %34, ptr noundef nonnull @.str.78, ptr noundef %24, i32 noundef %28) #11
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %24, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %26, i32 0, i32 7
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %26, i32 0, i32 7, i32 1
  %35 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %36, ptr noundef %desc_completed.i) #11
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %37 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %node.i, ptr %prev.i.i, align 4
  %38 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %24, i32 0, i32 2, i32 1
  %39 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %36, ptr %prev3.i.i.i, align 4
  %40 = ptrtoint ptr %36 to i32
  call void @__asan_store4_noabort(i32 %40)
  store volatile ptr %node.i, ptr %36, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i72 = getelementptr inbounds %struct.virt_dma_chan, ptr %26, i32 0, i32 1, i32 1
  %call.i.i73 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i72) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i73)
  %tobool.not.i.i74 = icmp eq i32 %call.i.i73, 0
  br i1 %tobool.not.i.i74, label %if.then.i.i76, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %vchan_cookie_complete.exit

if.then.i.i76:                                    ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %task.i75 = getelementptr inbounds %struct.virt_dma_chan, ptr %26, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i75) #11
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i76, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %41 = ptrtoint ptr %desc29 to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %desc29, align 4
  %done = getelementptr %struct.sun6i_pchan, ptr %11, i32 %j.084, i32 4
  %43 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %42, ptr %done, align 4
  tail call void @_raw_spin_unlock(ptr noundef %lock) #11
  br label %if.end35

if.end35:                                         ; preds = %vchan_cookie_complete.exit, %if.then.i.i, %if.then28.if.end35_crit_edge, %land.lhs.true.if.end35_crit_edge, %for.body21.if.end35_crit_edge
  %shr = lshr i32 %status.082, 4
  %inc = add nuw nsw i32 %j.084, 1
  call void @__sanitizer_cov_trace_const_cmp4(i32 6, i32 %j.084)
  %cmp19 = icmp ugt i32 %j.084, 6
  call void @__sanitizer_cov_trace_const_cmp4(i32 16, i32 %status.082)
  %tobool20.not = icmp ult i32 %status.082, 16
  %or.cond = select i1 %cmp19, i1 true, i1 %tobool20.not
  br i1 %or.cond, label %for.end, label %if.end35.for.body21_crit_edge

if.end35.for.body21_crit_edge:                    ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body21

for.end:                                          ; preds = %if.end35
  %call.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %tasklet_shutdown, i32 noundef 4) #11
  %44 = ptrtoint ptr %tasklet_shutdown to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load volatile i32, ptr %tasklet_shutdown, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %tobool37.not = icmp eq i32 %45, 0
  br i1 %tobool37.not, label %if.then38, label %for.end.for.inc40_crit_edge

for.end.for.inc40_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc40

if.then38:                                        ; preds = %for.end
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i77, label %if.then38.for.inc40_crit_edge

if.then38.for.inc40_crit_edge:                    ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc40

if.then.i77:                                      ; preds = %if.then38
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__tasklet_schedule(ptr noundef %task) #11
  br label %for.inc40

for.inc40:                                        ; preds = %if.then.i77, %if.then38.for.inc40_crit_edge, %for.end.for.inc40_crit_edge, %for.body.for.inc40_crit_edge
  %ret.1 = phi i32 [ %ret.088, %for.body.for.inc40_crit_edge ], [ 1, %for.end.for.inc40_crit_edge ], [ 1, %if.then38.for.inc40_crit_edge ], [ 1, %if.then.i77 ]
  %inc41 = add nuw nsw i32 %i.089, 1
  %46 = ptrtoint ptr %num_pchans to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %num_pchans, align 4
  %div69 = lshr i32 %47, 3
  %cmp = icmp ult i32 %inc41, %div69
  br i1 %cmp, label %for.inc40.for.body_crit_edge, label %for.inc40.for.end42_crit_edge

for.inc40.for.end42_crit_edge:                    ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end42

for.inc40.for.body_crit_edge:                     ; preds = %for.inc40
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end42:                                        ; preds = %for.inc40.for.end42_crit_edge, %entry.for.end42_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end42_crit_edge ], [ %ret.1, %for.inc40.for.end42_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @sun6i_dma_of_xlate(ptr nocapture noundef readonly %dma_spec, ptr nocapture noundef readonly %ofdma) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %of_dma_data = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 5
  %0 = ptrtoint ptr %of_dma_data to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_dma_data, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %2 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %args, align 4
  %conv = trunc i32 %3 to i8
  %conv1 = and i32 %3, 255
  %max_request = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 16
  %4 = ptrtoint ptr %max_request to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %max_request, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %conv1, i32 %5)
  %cmp = icmp ugt i32 %conv1, %5
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %call = tail call ptr @dma_get_any_slave_channel(ptr noundef %1) #11
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end4:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %port6 = getelementptr inbounds %struct.sun6i_vchan, ptr %call, i32 0, i32 4
  %6 = ptrtoint ptr %port6 to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %conv, ptr %port6, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end4, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %call, %if.end4 ], [ null, %entry.cleanup_crit_edge ], [ null, %if.end.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun6i_kill_tasklet(ptr noundef %sdev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !182
  tail call void @arm_heavy_mb() #11
  %base = getelementptr inbounds %struct.sun6i_dma_dev, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %1, i32 0) #11, !srcloc !183
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !184
  tail call void @arm_heavy_mb() #11
  %2 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %base, align 4
  %add.ptr4 = getelementptr i8, ptr %3, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4, i32 0) #11, !srcloc !183
  %tasklet_shutdown = getelementptr inbounds %struct.sun6i_dma_dev, ptr %sdev, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %tasklet_shutdown, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %tasklet_shutdown, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %tasklet_shutdown, ptr %tasklet_shutdown, i32 1, ptr elementtype(i32) %tasklet_shutdown) #11, !srcloc !185
  %dev = getelementptr inbounds %struct.dma_device, ptr %sdev, i32 0, i32 15
  %5 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %dev, align 4
  %irq = getelementptr inbounds %struct.sun6i_dma_dev, ptr %sdev, i32 0, i32 4
  %7 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %irq, align 4
  tail call void @devm_free_irq(ptr noundef %6, i32 noundef %8, ptr noundef %sdev) #11
  %task = getelementptr inbounds %struct.sun6i_dma_dev, ptr %sdev, i32 0, i32 7
  tail call void @tasklet_kill(ptr noundef %task) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun6i_dma_free(ptr nocapture noundef readonly %sdev) unnamed_addr #6 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  %num_vchans = getelementptr inbounds %struct.sun6i_dma_dev, ptr %sdev, i32 0, i32 15
  %0 = ptrtoint ptr %num_vchans to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_vchans, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp6.not = icmp eq i32 %1, 0
  br i1 %cmp6.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vchans = getelementptr inbounds %struct.sun6i_dma_dev, ptr %sdev, i32 0, i32 12
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %i.07 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_del.exit.for.body_crit_edge ]
  %2 = ptrtoint ptr %vchans to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %vchans, align 4
  %arrayidx = getelementptr %struct.sun6i_vchan, ptr %3, i32 %i.07
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %device_node, i32 0, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %6 = ptrtoint ptr %device_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %device_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %7, i32 0, i32 1
  %8 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %5, ptr %prev1.i.i.i, align 4
  %9 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %9)
  store volatile ptr %7, ptr %5, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %10 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %device_node, i32 0, i32 1
  %11 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %task = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task) #11
  %inc = add nuw i32 %i.07, 1
  %12 = ptrtoint ptr %num_vchans to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %num_vchans, align 4
  %cmp = icmp ult i32 %inc, %13
  br i1 %cmp, label %list_del.exit.for.body_crit_edge, label %list_del.exit.for.end_crit_edge

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vchan_find_desc(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @set_config(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readonly %sconfig, i32 noundef %direction, ptr noundef %p_cfg) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %src_addr_width1 = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 3
  %0 = ptrtoint ptr %src_addr_width1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %src_addr_width1, align 4
  %dst_addr_width2 = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 4
  %2 = ptrtoint ptr %dst_addr_width2 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dst_addr_width2, align 4
  %src_maxburst3 = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 5
  %4 = ptrtoint ptr %src_maxburst3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %src_maxburst3, align 4
  %dst_maxburst4 = getelementptr inbounds %struct.dma_slave_config, ptr %sconfig, i32 0, i32 6
  %6 = ptrtoint ptr %dst_maxburst4 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dst_maxburst4, align 4
  %8 = zext i32 %direction to i64
  call void @__sanitizer_cov_trace_switch(i64 %8, ptr @__sancov_gen_cov_switch_values)
  switch i32 %direction, label %entry.cleanup_crit_edge [
    i32 1, label %sw.bb
    i32 2, label %sw.bb5
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp = icmp eq i32 %1, 0
  %spec.store.select = select i1 %cmp, i32 4, i32 %1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %tobool.not = icmp eq i32 %5, 0
  %spec.select = select i1 %tobool.not, i32 8, i32 %5
  br label %sw.epilog

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp6 = icmp eq i32 %3, 0
  %spec.store.select51 = select i1 %cmp6, i32 4, i32 %3
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %tobool9.not = icmp eq i32 %7, 0
  %spec.select73 = select i1 %tobool9.not, i32 8, i32 %7
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.bb5, %sw.bb
  %src_addr_width.0 = phi i32 [ %1, %sw.bb5 ], [ %spec.store.select, %sw.bb ]
  %dst_addr_width.0 = phi i32 [ %spec.store.select51, %sw.bb5 ], [ %3, %sw.bb ]
  %src_maxburst.0 = phi i32 [ %5, %sw.bb5 ], [ %spec.select, %sw.bb ]
  %dst_maxburst.0 = phi i32 [ %spec.select73, %sw.bb5 ], [ %7, %sw.bb ]
  %shl = shl nuw i32 1, %src_addr_width.0
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %sdev, i32 0, i32 19
  %9 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %src_addr_widths, align 4
  %and = and i32 %10, %shl
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool14.not = icmp eq i32 %and, 0
  br i1 %tobool14.not, label %sw.epilog.cleanup_crit_edge, label %if.end16

sw.epilog.cleanup_crit_edge:                      ; preds = %sw.epilog
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end16:                                         ; preds = %sw.epilog
  %shl17 = shl nuw i32 1, %dst_addr_width.0
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %sdev, i32 0, i32 20
  %11 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load i32, ptr %dst_addr_widths, align 4
  %and19 = and i32 %12, %shl17
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and19)
  %tobool20.not = icmp eq i32 %and19, 0
  br i1 %tobool20.not, label %if.end16.cleanup_crit_edge, label %if.end22

if.end16.cleanup_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end22:                                         ; preds = %if.end16
  %shl23 = shl nuw i32 1, %src_maxburst.0
  %cfg = getelementptr inbounds %struct.sun6i_dma_dev, ptr %sdev, i32 0, i32 13
  %13 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %cfg, align 4
  %src_burst_lengths = getelementptr inbounds %struct.sun6i_dma_config, ptr %14, i32 0, i32 7
  %15 = ptrtoint ptr %src_burst_lengths to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %src_burst_lengths, align 4
  %and24 = and i32 %16, %shl23
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and24)
  %tobool25.not = icmp eq i32 %and24, 0
  br i1 %tobool25.not, label %if.end22.cleanup_crit_edge, label %if.end27

if.end22.cleanup_crit_edge:                       ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end27:                                         ; preds = %if.end22
  %shl28 = shl nuw i32 1, %dst_maxburst.0
  %dst_burst_lengths = getelementptr inbounds %struct.sun6i_dma_config, ptr %14, i32 0, i32 8
  %17 = ptrtoint ptr %dst_burst_lengths to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %dst_burst_lengths, align 4
  %and30 = and i32 %18, %shl28
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool31.not = icmp eq i32 %and30, 0
  br i1 %tobool31.not, label %if.end27.cleanup_crit_edge, label %cond.false2.i

if.end27.cleanup_crit_edge:                       ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

cond.false2.i:                                    ; preds = %if.end27
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %src_addr_width.0)
  %tobool.not.i.i.i = icmp eq i32 %src_addr_width.0, 0
  %19 = tail call i32 @llvm.ctlz.i32(i32 %src_addr_width.0, i1 true) #11, !range !199
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dst_addr_width.0)
  %tobool.not.i.i.i78 = icmp eq i32 %dst_addr_width.0, 0
  %20 = tail call i32 @llvm.ctlz.i32(i32 %dst_addr_width.0, i1 true) #11, !range !199
  %21 = zext i32 %dst_maxburst.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %21, ptr @__sancov_gen_cov_switch_values.79)
  switch i32 %dst_maxburst.0, label %sw.default.i [
    i32 1, label %cond.false2.i.convert_burst.exit_crit_edge
    i32 4, label %sw.bb1.i
    i32 8, label %sw.bb2.i
    i32 16, label %sw.bb3.i
  ]

cond.false2.i.convert_burst.exit_crit_edge:       ; preds = %cond.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %convert_burst.exit

sw.bb1.i:                                         ; preds = %cond.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %convert_burst.exit

sw.bb2.i:                                         ; preds = %cond.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %convert_burst.exit

sw.bb3.i:                                         ; preds = %cond.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %convert_burst.exit

sw.default.i:                                     ; preds = %cond.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %convert_burst.exit

convert_burst.exit:                               ; preds = %sw.default.i, %sw.bb3.i, %sw.bb2.i, %sw.bb1.i, %cond.false2.i.convert_burst.exit_crit_edge
  %retval.0.i = phi i8 [ -22, %sw.default.i ], [ 3, %sw.bb3.i ], [ 2, %sw.bb2.i ], [ 1, %sw.bb1.i ], [ 0, %cond.false2.i.convert_burst.exit_crit_edge ]
  %22 = zext i32 %src_maxburst.0 to i64
  call void @__sanitizer_cov_trace_switch(i64 %22, ptr @__sancov_gen_cov_switch_values.80)
  switch i32 %src_maxburst.0, label %sw.default.i88 [
    i32 1, label %convert_burst.exit.convert_burst.exit90_crit_edge
    i32 4, label %sw.bb1.i85
    i32 8, label %sw.bb2.i86
    i32 16, label %sw.bb3.i87
  ]

convert_burst.exit.convert_burst.exit90_crit_edge: ; preds = %convert_burst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %convert_burst.exit90

sw.bb1.i85:                                       ; preds = %convert_burst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %convert_burst.exit90

sw.bb2.i86:                                       ; preds = %convert_burst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %convert_burst.exit90

sw.bb3.i87:                                       ; preds = %convert_burst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %convert_burst.exit90

sw.default.i88:                                   ; preds = %convert_burst.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %convert_burst.exit90

convert_burst.exit90:                             ; preds = %sw.default.i88, %sw.bb3.i87, %sw.bb2.i86, %sw.bb1.i85, %convert_burst.exit.convert_burst.exit90_crit_edge
  %retval.0.i89 = phi i8 [ -22, %sw.default.i88 ], [ 3, %sw.bb3.i87 ], [ 2, %sw.bb2.i86 ], [ 1, %sw.bb1.i85 ], [ 0, %convert_burst.exit.convert_burst.exit90_crit_edge ]
  %sub.i.op.i.i = shl nuw nsw i32 %19, 9
  %sub.i.op.i.i.op = and i32 %sub.i.op.i.i, 1536
  %sub.i.op.i.i.op.op = xor i32 %sub.i.op.i.i.op, 1536
  %shl38 = select i1 %tobool.not.i.i.i, i32 1536, i32 %sub.i.op.i.i.op.op
  %sub.i.op.i.i79 = shl nuw nsw i32 %20, 25
  %sub.i.op.i.i79.op = and i32 %sub.i.op.i.i79, 100663296
  %sub.i.op.i.i79.op.op = xor i32 %sub.i.op.i.i79.op, 100663296
  %shl41 = select i1 %tobool.not.i.i.i78, i32 100663296, i32 %sub.i.op.i.i79.op.op
  %or = or i32 %shl41, %shl38
  %23 = ptrtoint ptr %p_cfg to i32
  call void @__asan_store4_noabort(i32 %23)
  store i32 %or, ptr %p_cfg, align 4
  %24 = ptrtoint ptr %cfg to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %cfg, align 4
  %set_burst_length = getelementptr inbounds %struct.sun6i_dma_config, ptr %25, i32 0, i32 4
  %26 = ptrtoint ptr %set_burst_length to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %set_burst_length, align 4
  tail call void %27(ptr noundef %p_cfg, i8 noundef signext %retval.0.i89, i8 noundef signext %retval.0.i) #11
  br label %cleanup

cleanup:                                          ; preds = %convert_burst.exit90, %if.end27.cleanup_crit_edge, %if.end22.cleanup_crit_edge, %if.end16.cleanup_crit_edge, %sw.epilog.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %convert_burst.exit90 ], [ -22, %entry.cleanup_crit_edge ], [ -22, %sw.epilog.cleanup_crit_edge ], [ -22, %if.end16.cleanup_crit_edge ], [ -22, %if.end22.cleanup_crit_edge ], [ -22, %if.end27.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_pool_alloc(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sg_next(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_pool_free(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.ctlz.i32(i32, i1 immarg) #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__virt_to_phys(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #7

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @sun6i_dma_start_desc(ptr noundef %vchan) unnamed_addr #2 align 64 {
entry:
  %p_lli.i = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %vchan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %vchan, align 4
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %vchan, i32 0, i32 6
  %2 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.not.i = icmp eq ptr %3, %desc_issued.i
  %add.ptr.i = getelementptr i8, ptr %3, i32 -108
  %spec.select.i = select i1 %cmp.not.i, ptr null, ptr %add.ptr.i
  %phy = getelementptr inbounds %struct.sun6i_vchan, ptr %vchan, i32 0, i32 3
  %4 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %phy, align 4
  %tobool.not = icmp eq ptr %5, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %tobool3.not = icmp eq ptr %spec.select.i, null
  br i1 %tobool3.not, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %desc5 = getelementptr inbounds %struct.sun6i_pchan, ptr %5, i32 0, i32 3
  %6 = ptrtoint ptr %desc5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr null, ptr %desc5, align 4
  %done = getelementptr inbounds %struct.sun6i_pchan, ptr %5, i32 0, i32 4
  %7 = ptrtoint ptr %done to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr null, ptr %done, align 4
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #11
  br i1 %call.i.i, label %if.end.i.i, label %if.end6.list_del.exit_crit_edge

if.end6.list_del.exit_crit_edge:                  ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end6.list_del.exit_crit_edge
  %14 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_desc, ptr %spec.select.i, i32 0, i32 2, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %desc8 = getelementptr inbounds %struct.sun6i_pchan, ptr %5, i32 0, i32 3
  %16 = ptrtoint ptr %desc8 to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %spec.select.i, ptr %desc8, align 4
  %done9 = getelementptr inbounds %struct.sun6i_pchan, ptr %5, i32 0, i32 4
  %17 = ptrtoint ptr %done9 to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %done9, align 4
  %v_lli = getelementptr inbounds %struct.sun6i_desc, ptr %spec.select.i, i32 0, i32 2
  %18 = ptrtoint ptr %v_lli to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %v_lli, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %p_lli.i) #11
  %20 = ptrtoint ptr %19 to i32
  %call.i.i66 = tail call i32 @__virt_to_phys(i32 noundef %20) #11
  %21 = ptrtoint ptr %p_lli.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store i32 %call.i.i66, ptr %p_lli.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_dump_lli.__UNIQUE_ID_ddebug238, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_start_desc, %sun6i_dma_dump_lli.exit)) #11
          to label %if.then.i [label %sun6i_dma_dump_lli.exit], !srcloc !190

if.then.i:                                        ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i.i = getelementptr inbounds %struct.dma_chan, ptr %vchan, i32 0, i32 5
  %22 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i.i, align 4
  %device.i.i = getelementptr inbounds %struct.dma_chan_dev, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 4
  %src.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %19, i32 0, i32 1
  %26 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %src.i, align 4
  %dst.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %19, i32 0, i32 2
  %28 = ptrtoint ptr %dst.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dst.i, align 4
  %len.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %19, i32 0, i32 3
  %30 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %len.i, align 4
  %para.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %19, i32 0, i32 4
  %32 = ptrtoint ptr %para.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %para.i, align 4
  %p_lli_next.i = getelementptr inbounds %struct.sun6i_dma_lli, ptr %19, i32 0, i32 5
  %34 = ptrtoint ptr %p_lli_next.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %p_lli_next.i, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_dump_lli.__UNIQUE_ID_ddebug238, ptr noundef %device.i.i, ptr noundef nonnull @.str.54, ptr noundef nonnull %p_lli.i, ptr noundef %19, i32 noundef %25, i32 noundef %27, i32 noundef %29, i32 noundef %31, i32 noundef %33, i32 noundef %35) #11
  br label %sun6i_dma_dump_lli.exit

sun6i_dma_dump_lli.exit:                          ; preds = %if.then.i, %list_del.exit
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %p_lli.i) #11
  %36 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %5, align 4
  %cyclic = getelementptr inbounds %struct.sun6i_vchan, ptr %vchan, i32 0, i32 6
  %38 = ptrtoint ptr %cyclic to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %cyclic, align 2, !range !180
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool12.not = icmp eq i8 %39, 0
  %conv = select i1 %tobool12.not, i8 4, i8 2
  %irq_type = getelementptr inbounds %struct.sun6i_vchan, ptr %vchan, i32 0, i32 5
  %40 = ptrtoint ptr %irq_type to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 %conv, ptr %irq_type, align 1
  %base = getelementptr inbounds %struct.sun6i_dma_dev, ptr %1, i32 0, i32 1
  %41 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %base, align 4
  %43 = lshr i32 %37, 1
  %mul = and i32 %43, 2147483644
  %add.ptr = getelementptr i8, ptr %42, i32 %mul
  %44 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !187
  %45 = call i32 @llvm.bswap.i32(i32 %44)
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !200
  %rem = shl i32 %37, 2
  %mul15 = and i32 %rem, 28
  %shl = shl nuw nsw i32 7, %mul15
  %neg = xor i32 %shl, -1
  %and = and i32 %45, %neg
  %46 = ptrtoint ptr %irq_type to i32
  call void @__asan_load1_noabort(i32 %46)
  %47 = load i8, ptr %irq_type, align 1
  %conv17 = zext i8 %47 to i32
  %shl19 = shl i32 %conv17, %mul15
  %or = or i32 %shl19, %and
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  call void @arm_heavy_mb() #11
  %48 = call i32 @llvm.bswap.i32(i32 %or)
  %49 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %base, align 4
  %add.ptr22 = getelementptr i8, ptr %50, i32 %mul
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr22, i32 %48) #11, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !202
  call void @arm_heavy_mb() #11
  %51 = ptrtoint ptr %desc8 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %desc8, align 4
  %p_lli = getelementptr inbounds %struct.sun6i_desc, ptr %52, i32 0, i32 1
  %53 = ptrtoint ptr %p_lli to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load i32, ptr %p_lli, align 4
  %55 = call i32 @llvm.bswap.i32(i32 %54)
  %base27 = getelementptr inbounds %struct.sun6i_pchan, ptr %5, i32 0, i32 1
  %56 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base27, align 4
  %add.ptr28 = getelementptr i8, ptr %57, i32 8
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr28, i32 %55) #11, !srcloc !183
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !203
  call void @arm_heavy_mb() #11
  %58 = ptrtoint ptr %base27 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base27, align 4
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %59, i32 16777216) #11, !srcloc !183
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_dump_com_regs.__UNIQUE_ID_ddebug236, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_start_desc, %sun6i_dma_dump_com_regs.exit)) #11
          to label %if.then.i67 [label %sun6i_dma_dump_com_regs.exit], !srcloc !190

if.then.i67:                                      ; preds = %sun6i_dma_dump_lli.exit
  call void @__sanitizer_cov_trace_pc() #13
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %60 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev.i, align 4
  %62 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %base, align 4
  %64 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %63) #11, !srcloc !187
  %65 = call i32 @llvm.bswap.i32(i32 %64) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !204
  %66 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %base, align 4
  %add.ptr10.i = getelementptr i8, ptr %67, i32 4
  %68 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr10.i) #11, !srcloc !187
  %69 = call i32 @llvm.bswap.i32(i32 %68) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !205
  %70 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base, align 4
  %add.ptr17.i = getelementptr i8, ptr %71, i32 16
  %72 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr17.i) #11, !srcloc !187
  %73 = call i32 @llvm.bswap.i32(i32 %72) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !206
  %74 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base, align 4
  %add.ptr24.i = getelementptr i8, ptr %75, i32 20
  %76 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr24.i) #11, !srcloc !187
  %77 = call i32 @llvm.bswap.i32(i32 %76) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !207
  %78 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base, align 4
  %add.ptr31.i = getelementptr i8, ptr %79, i32 48
  %80 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr31.i) #11, !srcloc !187
  %81 = call i32 @llvm.bswap.i32(i32 %80) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !208
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_dump_com_regs.__UNIQUE_ID_ddebug236, ptr noundef %61, ptr noundef nonnull @.str.69, i32 noundef 0, i32 noundef %65, i32 noundef 4, i32 noundef %69, i32 noundef 16, i32 noundef %73, i32 noundef 20, i32 noundef %77, i32 noundef 48, i32 noundef %81) #11
  br label %sun6i_dma_dump_com_regs.exit

sun6i_dma_dump_com_regs.exit:                     ; preds = %if.then.i67, %sun6i_dma_dump_lli.exit
  call fastcc void @sun6i_dma_dump_chan_regs(ptr noundef %1, ptr noundef nonnull %5)
  br label %cleanup

cleanup:                                          ; preds = %sun6i_dma_dump_com_regs.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %sun6i_dma_dump_com_regs.exit ], [ -11, %if.then4 ], [ -11, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @sun6i_dma_dump_chan_regs(ptr nocapture noundef readonly %sdev, ptr nocapture noundef readonly %pchan) unnamed_addr #6 align 64 {
entry:
  %reg = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %reg) #11
  %base = getelementptr inbounds %struct.sun6i_pchan, ptr %pchan, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %2 = ptrtoint ptr %1 to i32
  %call.i = tail call i32 @__virt_to_phys(i32 noundef %2) #11
  %3 = ptrtoint ptr %reg to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %call.i, ptr %reg, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sun6i_dma_dump_chan_regs.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@sun6i_dma_dump_chan_regs, %do.end)) #11
          to label %if.then [label %do.end], !srcloc !190

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %dev = getelementptr inbounds %struct.dma_device, ptr %sdev, i32 0, i32 15
  %4 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev, align 4
  %6 = ptrtoint ptr %pchan to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %pchan, align 4
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #11, !srcloc !187
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !209
  %12 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base, align 4
  %add.ptr12 = getelementptr i8, ptr %13, i32 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr12) #11, !srcloc !187
  %15 = tail call i32 @llvm.bswap.i32(i32 %14)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !210
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr19 = getelementptr i8, ptr %17, i32 8
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr19) #11, !srcloc !187
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !211
  %20 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base, align 4
  %add.ptr26 = getelementptr i8, ptr %21, i32 12
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr26) #11, !srcloc !187
  %23 = tail call i32 @llvm.bswap.i32(i32 %22)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !212
  %24 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base, align 4
  %add.ptr33 = getelementptr i8, ptr %25, i32 16
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr33) #11, !srcloc !187
  %27 = tail call i32 @llvm.bswap.i32(i32 %26)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !213
  %28 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %base, align 4
  %add.ptr40 = getelementptr i8, ptr %29, i32 20
  %30 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr40) #11, !srcloc !187
  %31 = tail call i32 @llvm.bswap.i32(i32 %30)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !214
  %32 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %base, align 4
  %add.ptr47 = getelementptr i8, ptr %33, i32 24
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr47) #11, !srcloc !187
  %35 = tail call i32 @llvm.bswap.i32(i32 %34)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  %36 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base, align 4
  %add.ptr54 = getelementptr i8, ptr %37, i32 28
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr54) #11, !srcloc !187
  %39 = tail call i32 @llvm.bswap.i32(i32 %38)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !216
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @sun6i_dma_dump_chan_regs.__UNIQUE_ID_ddebug237, ptr noundef %5, ptr noundef nonnull @.str.71, i32 noundef %7, ptr noundef nonnull %reg, i32 noundef 0, i32 noundef %11, i32 noundef 4, i32 noundef %15, i32 noundef 8, i32 noundef %19, i32 noundef 12, i32 noundef %23, i32 noundef 16, i32 noundef %27, i32 noundef 20, i32 noundef %31, i32 noundef 24, i32 noundef %35, i32 noundef 28, i32 noundef %39) #11
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %reg) #11
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irq(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_get_any_slave_channel(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @devm_free_irq(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #9

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun6i_set_burst_length_a31(ptr nocapture noundef %p_cfg, i8 noundef signext %src_burst, i8 noundef signext %dst_burst) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %src_burst, 3
  %and = zext i8 %0 to i32
  %shl = shl nuw nsw i32 %and, 7
  %1 = and i8 %dst_burst, 3
  %and2 = zext i8 %1 to i32
  %shl3 = shl nuw nsw i32 %and2, 23
  %or = or i32 %shl3, %shl
  %2 = ptrtoint ptr %p_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_cfg, align 4
  %or5 = or i32 %3, %or
  store i32 %or5, ptr %p_cfg, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun6i_set_drq_a31(ptr nocapture noundef %p_cfg, i8 noundef signext %src_drq, i8 noundef signext %dst_drq) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %src_drq, 31
  %and = zext i8 %0 to i32
  %1 = and i8 %dst_drq, 31
  %and2 = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %and2, 16
  %or = or i32 %shl, %and
  %2 = ptrtoint ptr %p_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_cfg, align 4
  %or3 = or i32 %3, %or
  store i32 %or3, ptr %p_cfg, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun6i_set_mode_a31(ptr nocapture noundef %p_cfg, i8 noundef signext %src_mode, i8 noundef signext %dst_mode) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = shl i8 %src_mode, 5
  %1 = and i8 %0, 32
  %shl = zext i8 %1 to i32
  %2 = shl i8 %dst_mode, 5
  %3 = and i8 %2, 32
  %shl3 = zext i8 %3 to i32
  %shl4 = shl nuw nsw i32 %shl3, 16
  %or = or i32 %shl4, %shl
  %4 = ptrtoint ptr %p_cfg to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %p_cfg, align 4
  %or5 = or i32 %5, %or
  store i32 %or5, ptr %p_cfg, align 4
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_enable_clock_autogate_a23(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %base = getelementptr inbounds %struct.sun6i_dma_dev, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #11, !srcloc !183
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @sun6i_enable_clock_autogate_h3(ptr nocapture noundef readonly %sdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !218
  tail call void @arm_heavy_mb() #11
  %base = getelementptr inbounds %struct.sun6i_dma_dev, ptr %sdev, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %1, i32 40
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 67108864) #11, !srcloc !183
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun6i_set_burst_length_h3(ptr nocapture noundef %p_cfg, i8 noundef signext %src_burst, i8 noundef signext %dst_burst) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = shl i8 %src_burst, 6
  %shl = zext i8 %0 to i32
  %1 = shl i8 %dst_burst, 6
  %shl3 = zext i8 %1 to i32
  %shl4 = shl nuw nsw i32 %shl3, 16
  %or = or i32 %shl4, %shl
  %2 = ptrtoint ptr %p_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_cfg, align 4
  %or5 = or i32 %3, %or
  store i32 %or5, ptr %p_cfg, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun6i_set_drq_h6(ptr nocapture noundef %p_cfg, i8 noundef signext %src_drq, i8 noundef signext %dst_drq) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %src_drq, 63
  %and = zext i8 %0 to i32
  %1 = and i8 %dst_drq, 63
  %and2 = zext i8 %1 to i32
  %shl = shl nuw nsw i32 %and2, 16
  %or = or i32 %shl, %and
  %2 = ptrtoint ptr %p_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_cfg, align 4
  %or3 = or i32 %3, %or
  store i32 %or3, ptr %p_cfg, align 4
  ret void
}

; Function Attrs: argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync)
define internal void @sun6i_set_mode_h6(ptr nocapture noundef %p_cfg, i8 noundef signext %src_mode, i8 noundef signext %dst_mode) #10 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = and i8 %src_mode, 1
  %and = zext i8 %0 to i32
  %shl = shl nuw nsw i32 %and, 8
  %1 = and i8 %dst_mode, 1
  %and2 = zext i8 %1 to i32
  %shl3 = shl nuw nsw i32 %and2, 24
  %or = or i32 %shl3, %shl
  %2 = ptrtoint ptr %p_cfg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %p_cfg, align 4
  %or5 = or i32 %3, %or
  store i32 %or5, ptr %p_cfg, align 4
  ret void
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smin.i32(i32, i32) #7

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #7

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 82)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { argmemonly mustprogress nofree nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #7 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #10 = { argmemonly mustprogress nofree norecurse nosync nounwind null_pointer_is_valid sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !32, !33, !34, !36, !37, !38, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !54, !56, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74, !75, !77, !78, !79, !81, !82, !83, !84, !86, !87, !89, !90, !91, !92, !94, !95, !97, !99, !100, !102, !103, !104, !106, !107, !108, !110, !111, !112, !114, !115, !116, !118, !119, !121, !122, !123, !125, !126, !127, !129, !130, !131, !133, !134, !136, !137, !138, !140, !141, !142, !144, !145, !146, !147, !148, !150, !151, !152, !153, !155, !157, !159, !161, !163, !165, !167, !169}
!llvm.module.flags = !{!171, !172, !173, !174, !175, !176, !177, !178}
!llvm.ident = !{!179}

!0 = !{ptr @__initcall__kmod_sun6i_dma__250_1474_sun6i_dma_driver_init6, !1, !"__initcall__kmod_sun6i_dma__250_1474_sun6i_dma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/sun6i-dma.c", i32 1474, i32 1}
!2 = !{ptr @__exitcall_sun6i_dma_driver_exit, !1, !"__exitcall_sun6i_dma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description251, !4, !"__UNIQUE_ID_description251", i1 false, i1 false}
!4 = !{!"../drivers/dma/sun6i-dma.c", i32 1476, i32 1}
!5 = !{ptr @__UNIQUE_ID_author252, !6, !"__UNIQUE_ID_author252", i1 false, i1 false}
!6 = !{!"../drivers/dma/sun6i-dma.c", i32 1477, i32 1}
!7 = !{ptr @__UNIQUE_ID_author253, !8, !"__UNIQUE_ID_author253", i1 false, i1 false}
!8 = !{!"../drivers/dma/sun6i-dma.c", i32 1478, i32 1}
!9 = !{ptr @__UNIQUE_ID_file254, !10, !"__UNIQUE_ID_file254", i1 false, i1 false}
!10 = !{!"../drivers/dma/sun6i-dma.c", i32 1479, i32 1}
!11 = !{ptr @__UNIQUE_ID_license255, !10, !"__UNIQUE_ID_license255", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/dma/sun6i-dma.c", i32 1470, i32 12}
!14 = !{ptr @sun6i_dma_driver, !15, !"sun6i_dma_driver", i1 false, i1 false}
!15 = !{!"../drivers/dma/sun6i-dma.c", i32 1466, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/sun6i-dma.c", i32 1284, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @sun6i_dma_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @sun6i_dma_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/sun6i-dma.c", i32 1289, i32 44}
!26 = !{ptr @.str.8, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/sun6i-dma.c", i32 1291, i32 4}
!28 = !{ptr @sun6i_dma_probe._entry.7, !27, !"_entry", i1 false, i1 false}
!29 = !{ptr @sun6i_dma_probe._entry_ptr.9, !27, !"_entry_ptr", i1 false, i1 false}
!30 = !{ptr @.str.11, !31, !"<string literal>", i1 false, i1 false}
!31 = !{!"../drivers/dma/sun6i-dma.c", i32 1298, i32 3}
!32 = !{ptr @sun6i_dma_probe._entry.10, !31, !"_entry", i1 false, i1 false}
!33 = !{ptr @sun6i_dma_probe._entry_ptr.12, !31, !"_entry_ptr", i1 false, i1 false}
!34 = !{ptr @.str.14, !35, !"<string literal>", i1 false, i1 false}
!35 = !{!"../drivers/dma/sun6i-dma.c", i32 1305, i32 3}
!36 = !{ptr @sun6i_dma_probe._entry.13, !35, !"_entry", i1 false, i1 false}
!37 = !{ptr @sun6i_dma_probe._entry_ptr.15, !35, !"_entry_ptr", i1 false, i1 false}
!38 = !{ptr @sun6i_dma_probe.__key, !39, !"__key", i1 false, i1 false}
!39 = !{!"../drivers/dma/sun6i-dma.c", i32 1311, i32 2}
!40 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!41 = !{ptr @.str.17, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/dma/sun6i-dma.c", i32 1341, i32 33}
!43 = !{ptr @.str.19, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/dma/sun6i-dma.c", i32 1343, i32 3}
!45 = !{ptr @sun6i_dma_probe._entry.18, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @sun6i_dma_probe._entry_ptr.20, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.21, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/sun6i-dma.c", i32 1347, i32 33}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/dma/sun6i-dma.c", i32 1349, i32 3}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @sun6i_dma_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @sun6i_dma_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/dma/sun6i-dma.c", i32 1390, i32 3}
!56 = !{ptr @sun6i_dma_probe._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @sun6i_dma_probe._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.30, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/dma/sun6i-dma.c", i32 1396, i32 3}
!60 = !{ptr @sun6i_dma_probe._entry.29, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @sun6i_dma_probe._entry_ptr.31, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.33, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/dma/sun6i-dma.c", i32 1403, i32 4}
!64 = !{ptr @sun6i_dma_probe._entry.32, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @sun6i_dma_probe._entry_ptr.34, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.36, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/dma/sun6i-dma.c", i32 1411, i32 3}
!68 = !{ptr @sun6i_dma_probe._entry.35, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @sun6i_dma_probe._entry_ptr.37, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.39, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/dma/sun6i-dma.c", i32 1417, i32 3}
!72 = !{ptr @.str.40, !71, !"<string literal>", i1 false, i1 false}
!73 = !{ptr @sun6i_dma_probe._entry.38, !71, !"_entry", i1 false, i1 false}
!74 = !{ptr @sun6i_dma_probe._entry_ptr.41, !71, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.43, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/dma/sun6i-dma.c", i32 1424, i32 3}
!77 = !{ptr @sun6i_dma_probe._entry.42, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @sun6i_dma_probe._entry_ptr.44, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.45, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/dma/sun6i-dma.c", i32 979, i32 4}
!81 = !{ptr @.str.46, !80, !"<string literal>", i1 false, i1 false}
!82 = !{ptr @.str.47, !80, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @sun6i_dma_issue_pending.__UNIQUE_ID_ddebug248, !80, !"__UNIQUE_ID_ddebug248", i1 false, i1 false}
!84 = !{ptr @.str.48, !85, !"<string literal>", i1 false, i1 false}
!85 = !{!"../drivers/dma/sun6i-dma.c", i32 985, i32 3}
!86 = !{ptr @sun6i_dma_issue_pending.__UNIQUE_ID_ddebug249, !85, !"__UNIQUE_ID_ddebug249", i1 false, i1 false}
!87 = !{ptr @.str.49, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/sun6i-dma.c", i32 702, i32 3}
!89 = !{ptr @.str.50, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @sun6i_dma_prep_slave_sg._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @sun6i_dma_prep_slave_sg._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.51, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/dma/sun6i-dma.c", i32 725, i32 4}
!94 = !{ptr @sun6i_dma_prep_slave_sg.__UNIQUE_ID_ddebug243, !93, !"__UNIQUE_ID_ddebug243", i1 false, i1 false}
!95 = !{ptr @sun6i_dma_prep_slave_sg.__UNIQUE_ID_ddebug244, !96, !"__UNIQUE_ID_ddebug244", i1 false, i1 false}
!96 = !{!"../drivers/dma/sun6i-dma.c", i32 738, i32 4}
!97 = !{ptr @.str.52, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/dma/sun6i-dma.c", i32 748, i32 2}
!99 = !{ptr @sun6i_dma_prep_slave_sg.__UNIQUE_ID_ddebug245, !98, !"__UNIQUE_ID_ddebug245", i1 false, i1 false}
!100 = !{ptr @.str.53, !101, !"<string literal>", i1 false, i1 false}
!101 = !{!"../drivers/dma/sun6i-dma.c", i32 392, i32 2}
!102 = !{ptr @.str.54, !101, !"<string literal>", i1 false, i1 false}
!103 = !{ptr @sun6i_dma_dump_lli.__UNIQUE_ID_ddebug238, !101, !"__UNIQUE_ID_ddebug238", i1 false, i1 false}
!104 = !{ptr @.str.55, !105, !"<string literal>", i1 false, i1 false}
!105 = !{!"../drivers/dma/sun6i-dma.c", i32 640, i32 2}
!106 = !{ptr @.str.56, !105, !"<string literal>", i1 false, i1 false}
!107 = !{ptr @sun6i_dma_prep_dma_memcpy.__UNIQUE_ID_ddebug242, !105, !"__UNIQUE_ID_ddebug242", i1 false, i1 false}
!108 = !{ptr @.str.57, !109, !"<string literal>", i1 false, i1 false}
!109 = !{!"../drivers/dma/sun6i-dma.c", i32 653, i32 3}
!110 = !{ptr @sun6i_dma_prep_dma_memcpy._entry, !109, !"_entry", i1 false, i1 false}
!111 = !{ptr @sun6i_dma_prep_dma_memcpy._entry_ptr, !109, !"_entry_ptr", i1 false, i1 false}
!112 = !{ptr @.str.58, !113, !"<string literal>", i1 false, i1 false}
!113 = !{!"../drivers/dma/sun6i-dma.c", i32 781, i32 3}
!114 = !{ptr @sun6i_dma_prep_dma_cyclic._entry, !113, !"_entry", i1 false, i1 false}
!115 = !{ptr @sun6i_dma_prep_dma_cyclic._entry_ptr, !113, !"_entry_ptr", i1 false, i1 false}
!116 = !{ptr @sun6i_dma_prep_dma_cyclic._entry.59, !117, !"_entry", i1 false, i1 false}
!117 = !{!"../drivers/dma/sun6i-dma.c", i32 792, i32 4}
!118 = !{ptr @sun6i_dma_prep_dma_cyclic._entry_ptr.60, !117, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.61, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/dma/sun6i-dma.c", i32 845, i32 2}
!121 = !{ptr @.str.62, !120, !"<string literal>", i1 false, i1 false}
!122 = !{ptr @sun6i_dma_pause.__UNIQUE_ID_ddebug246, !120, !"__UNIQUE_ID_ddebug246", i1 false, i1 false}
!123 = !{ptr @.str.63, !124, !"<string literal>", i1 false, i1 false}
!124 = !{!"../drivers/dma/sun6i-dma.c", i32 866, i32 2}
!125 = !{ptr @.str.64, !124, !"<string literal>", i1 false, i1 false}
!126 = !{ptr @sun6i_dma_resume.__UNIQUE_ID_ddebug247, !124, !"__UNIQUE_ID_ddebug247", i1 false, i1 false}
!127 = !{ptr @.str.65, !128, !"<string literal>", i1 false, i1 false}
!128 = !{!"../drivers/dma/sun6i-dma.c", i32 488, i32 5}
!129 = !{ptr @.str.66, !128, !"<string literal>", i1 false, i1 false}
!130 = !{ptr @sun6i_dma_tasklet.__UNIQUE_ID_ddebug239, !128, !"__UNIQUE_ID_ddebug239", i1 false, i1 false}
!131 = !{ptr @.str.67, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/dma/sun6i-dma.c", i32 516, i32 3}
!133 = !{ptr @sun6i_dma_tasklet.__UNIQUE_ID_ddebug240, !132, !"__UNIQUE_ID_ddebug240", i1 false, i1 false}
!134 = !{ptr @.str.68, !135, !"<string literal>", i1 false, i1 false}
!135 = !{!"../drivers/dma/sun6i-dma.c", i32 228, i32 2}
!136 = !{ptr @.str.69, !135, !"<string literal>", i1 false, i1 false}
!137 = !{ptr @sun6i_dma_dump_com_regs.__UNIQUE_ID_ddebug236, !135, !"__UNIQUE_ID_ddebug236", i1 false, i1 false}
!138 = !{ptr @.str.70, !139, !"<string literal>", i1 false, i1 false}
!139 = !{!"../drivers/dma/sun6i-dma.c", i32 246, i32 2}
!140 = !{ptr @.str.71, !139, !"<string literal>", i1 false, i1 false}
!141 = !{ptr @sun6i_dma_dump_chan_regs.__UNIQUE_ID_ddebug237, !139, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!142 = !{ptr @.str.72, !143, !"<string literal>", i1 false, i1 false}
!143 = !{!"../drivers/dma/sun6i-dma.c", i32 548, i32 3}
!144 = !{ptr @.str.73, !143, !"<string literal>", i1 false, i1 false}
!145 = !{ptr @sun6i_dma_interrupt.__UNIQUE_ID_ddebug241, !143, !"__UNIQUE_ID_ddebug241", i1 false, i1 false}
!146 = !{ptr @.str.74, !143, !"<string literal>", i1 false, i1 false}
!147 = !{ptr @.str.75, !143, !"<string literal>", i1 false, i1 false}
!148 = !{ptr @.str.76, !149, !"<string literal>", i1 false, i1 false}
!149 = !{!"../drivers/dma/virt-dma.h", i32 101, i32 2}
!150 = !{ptr @.str.77, !149, !"<string literal>", i1 false, i1 false}
!151 = !{ptr @.str.78, !149, !"<string literal>", i1 false, i1 false}
!152 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug234, !149, !"__UNIQUE_ID_ddebug234", i1 false, i1 false}
!153 = !{ptr @sun6i_dma_match, !154, !"sun6i_dma_match", i1 false, i1 false}
!154 = !{!"../drivers/dma/sun6i-dma.c", i32 1245, i32 34}
!155 = !{ptr @sun6i_a31_dma_cfg, !156, !"sun6i_a31_dma_cfg", i1 false, i1 false}
!156 = !{!"../drivers/dma/sun6i-dma.c", i32 1070, i32 32}
!157 = !{ptr @sun8i_a23_dma_cfg, !158, !"sun8i_a23_dma_cfg", i1 false, i1 false}
!158 = !{!"../drivers/dma/sun6i-dma.c", i32 1092, i32 32}
!159 = !{ptr @sun8i_a83t_dma_cfg, !160, !"sun8i_a83t_dma_cfg", i1 false, i1 false}
!160 = !{!"../drivers/dma/sun6i-dma.c", i32 1110, i32 32}
!161 = !{ptr @sun8i_h3_dma_cfg, !162, !"sun8i_h3_dma_cfg", i1 false, i1 false}
!162 = !{!"../drivers/dma/sun6i-dma.c", i32 1135, i32 32}
!163 = !{ptr @sun8i_v3s_dma_cfg, !164, !"sun8i_v3s_dma_cfg", i1 false, i1 false}
!164 = !{!"../drivers/dma/sun6i-dma.c", i32 1227, i32 32}
!165 = !{ptr @sun50i_a64_dma_cfg, !166, !"sun50i_a64_dma_cfg", i1 false, i1 false}
!166 = !{!"../drivers/dma/sun6i-dma.c", i32 1159, i32 32}
!167 = !{ptr @sun50i_a100_dma_cfg, !168, !"sun50i_a100_dma_cfg", i1 false, i1 false}
!168 = !{!"../drivers/dma/sun6i-dma.c", i32 1182, i32 32}
!169 = !{ptr @sun50i_h6_dma_cfg, !170, !"sun50i_h6_dma_cfg", i1 false, i1 false}
!170 = !{!"../drivers/dma/sun6i-dma.c", i32 1204, i32 32}
!171 = !{i32 1, !"wchar_size", i32 2}
!172 = !{i32 1, !"min_enum_size", i32 4}
!173 = !{i32 8, !"branch-target-enforcement", i32 0}
!174 = !{i32 8, !"sign-return-address", i32 0}
!175 = !{i32 8, !"sign-return-address-all", i32 0}
!176 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!177 = !{i32 7, !"uwtable", i32 1}
!178 = !{i32 7, !"frame-pointer", i32 2}
!179 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!180 = !{i8 0, i8 2}
!181 = !{!"branch_weights", i32 1, i32 2000}
!182 = !{i64 2154562979}
!183 = !{i64 6345254}
!184 = !{i64 2154563395}
!185 = !{i64 2148278849, i64 2148278875, i64 2148278904, i64 2148278938, i64 2148278969, i64 2148278992}
!186 = !{i64 2154430164}
!187 = !{i64 6345672}
!188 = !{i64 2154504702}
!189 = !{i64 2154505197}
!190 = !{i64 2148760664, i64 2148760669, i64 2148760682, i64 2148760726, i64 2148760760, i64 2148760781}
!191 = !{!"auto-init"}
!192 = !{i64 2154548207}
!193 = !{i64 2154555373}
!194 = !{i64 2154556211}
!195 = !{i64 2154556601}
!196 = !{i64 2154523587}
!197 = !{i64 2154526249}
!198 = !{i64 2154428664, i64 2154429151, i64 2154428701, i64 2154428757, i64 2154428791, i64 2154428815, i64 2154428856, i64 2154428877, i64 2154428905, i64 2154428939}
!199 = !{i32 0, i32 33}
!200 = !{i64 2154509731}
!201 = !{i64 2154510236}
!202 = !{i64 2154510674}
!203 = !{i64 2154511221}
!204 = !{i64 2154489329}
!205 = !{i64 2154489885}
!206 = !{i64 2154490483}
!207 = !{i64 2154491081}
!208 = !{i64 2154491577}
!209 = !{i64 2154498684}
!210 = !{i64 2154499184}
!211 = !{i64 2154499684}
!212 = !{i64 2154500184}
!213 = !{i64 2154500684}
!214 = !{i64 2154501184}
!215 = !{i64 2154501684}
!216 = !{i64 2154502184}
!217 = !{i64 2154502967}
!218 = !{i64 2154503365}
