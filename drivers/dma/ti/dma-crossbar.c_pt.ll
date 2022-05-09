; ModuleID = '/llk/IR_all_yes/drivers/dma/ti/dma-crossbar.c_pt.bc'
source_filename = "../drivers/dma/ti/dma-crossbar.c"
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
%struct.of_phandle_args = type { ptr, i32, [16 x i32] }
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
%struct.ti_dra7_xbar_data = type { ptr, %struct.dma_router, %struct.mutex, ptr, i16, i32, i32, i32 }
%struct.dma_router = type { ptr, ptr }
%struct.ti_am335x_xbar_data = type { ptr, %struct.dma_router, i32, i32 }
%struct.ti_dra7_xbar_map = type { i16, i32 }
%struct.of_dma = type { %struct.list_head, ptr, ptr, ptr, ptr, ptr }
%struct.ti_am335x_xbar_map = type { i16, i8 }

@__initcall__kmod_dma_crossbar__234_472_omap_dmaxbar_init3 = internal global ptr @omap_dmaxbar_init, section ".initcall3.init", align 4
@ti_dma_xbar_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @ti_dma_xbar_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @ti_dma_xbar_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti-dma-crossbar\00", [16 x i8] zeroinitializer }, align 32
@ti_dma_xbar_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,dra7-dma-crossbar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_xbar_type }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,am335x-edma-crossbar\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_xbar_type, i64 4) }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@ti_dma_xbar_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 452, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Unsupported crossbar\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti_dma_xbar_probe\00", [46 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"drivers/dma/ti/dma-crossbar.c\00", [34 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@ti_dma_xbar_probe._entry_ptr = internal global ptr @ti_dma_xbar_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dma-masters\00", [20 x i8] zeroinitializer }, align 32
@ti_dra7_xbar_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.8, ptr @.str.3, i32 338, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"Can't get DMA master node\0A\00", [37 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"ti_dra7_xbar_probe\00", [45 x i8] zeroinitializer }, align 32
@ti_dra7_xbar_probe._entry_ptr = internal global ptr @ti_dra7_xbar_probe._entry, section ".printk_index", align 4
@ti_dra7_master_match = internal constant { [4 x %struct.of_device_id], [208 x i8] } { [4 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4430-sdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr getelementptr (i8, ptr @ti_dma_offset, i64 4) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,edma3\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_dma_offset }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,edma3-tpcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @ti_dma_offset }, %struct.of_device_id zeroinitializer], [208 x i8] zeroinitializer }, align 32
@ti_dra7_xbar_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.8, ptr @.str.3, i32 344, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"DMA master is not supported\0A\00", [35 x i8] zeroinitializer }, align 32
@ti_dra7_xbar_probe._entry_ptr.11 = internal global ptr @ti_dra7_xbar_probe._entry.9, section ".printk_index", align 4
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-requests\00", [19 x i8] zeroinitializer }, align 32
@ti_dra7_xbar_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.8, ptr @.str.3, i32 353, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"Missing XBAR output information, using %u.\0A\00", [52 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@ti_dra7_xbar_probe._entry_ptr.16 = internal global ptr @ti_dra7_xbar_probe._entry.13, section ".printk_index", align 4
@ti_dra7_xbar_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.8, ptr @.str.3, i32 367, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Missing XBAR input information, using %u.\0A\00", [53 x i8] zeroinitializer }, align 32
@ti_dra7_xbar_probe._entry_ptr.19 = internal global ptr @ti_dra7_xbar_probe._entry.17, section ".printk_index", align 4
@.str.20 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"ti,dma-safe-map\00", [16 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"ti,reserved-dma-request-ranges\00", [33 x i8] zeroinitializer }, align 32
@__const.ti_dra7_xbar_probe.pname = private unnamed_addr constant [31 x i8] c"ti,reserved-dma-request-ranges\00", align 1
@ti_dra7_xbar_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&xbar->mutex\00", [19 x i8] zeroinitializer }, align 32
@ti_dma_offset = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@ti_dra7_xbar_free.__UNIQUE_ID_ddebug232 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.24, ptr @.str.3, ptr @.str.25, i8 0, i8 57, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma_crossbar\00", [19 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"ti_dra7_xbar_free\00", [46 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Unmapping XBAR%u (was routed to %d)\0A\00", [59 x i8] zeroinitializer }, align 32
@ti_dra7_xbar_route_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.3, i32 247, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"Invalid XBAR request number: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"ti_dra7_xbar_route_allocate\00", [36 x i8] zeroinitializer }, align 32
@ti_dra7_xbar_route_allocate._entry_ptr = internal global ptr @ti_dra7_xbar_route_allocate._entry, section ".printk_index", align 4
@ti_dra7_xbar_route_allocate._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.3, i32 254, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"Can't get DMA master\0A\00", [42 x i8] zeroinitializer }, align 32
@ti_dra7_xbar_route_allocate._entry_ptr.30 = internal global ptr @ti_dra7_xbar_route_allocate._entry.28, section ".printk_index", align 4
@ti_dra7_xbar_route_allocate._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.27, ptr @.str.3, i32 269, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Run out of free DMA requests\0A\00", [34 x i8] zeroinitializer }, align 32
@ti_dra7_xbar_route_allocate._entry_ptr.33 = internal global ptr @ti_dra7_xbar_route_allocate._entry.31, section ".printk_index", align 4
@ti_dra7_xbar_route_allocate.__UNIQUE_ID_ddebug233 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.27, ptr @.str.3, ptr @.str.34, i8 0, i8 70, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"Mapping XBAR%u to DMA%d\0A\00", [39 x i8] zeroinitializer }, align 32
@ti_am335x_xbar_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.35, ptr @.str.3, i32 148, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"ti_am335x_xbar_probe\00", [43 x i8] zeroinitializer }, align 32
@ti_am335x_xbar_probe._entry_ptr = internal global ptr @ti_am335x_xbar_probe._entry, section ".printk_index", align 4
@ti_am335x_master_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,edma3-tpcc\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@ti_am335x_xbar_probe._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.35, ptr @.str.3, i32 154, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ti_am335x_xbar_probe._entry_ptr.37 = internal global ptr @ti_am335x_xbar_probe._entry.36, section ".printk_index", align 4
@ti_am335x_xbar_probe._entry.38 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.35, ptr @.str.3, i32 163, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ti_am335x_xbar_probe._entry_ptr.39 = internal global ptr @ti_am335x_xbar_probe._entry.38, section ".printk_index", align 4
@ti_am335x_xbar_probe._entry.40 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.35, ptr @.str.3, i32 171, ptr @.str.15, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ti_am335x_xbar_probe._entry_ptr.41 = internal global ptr @ti_am335x_xbar_probe._entry.40, section ".printk_index", align 4
@ti_am335x_xbar_free.__UNIQUE_ID_ddebug230 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.42, ptr @.str.3, ptr @.str.43, i8 0, i8 17, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.42 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"ti_am335x_xbar_free\00", [44 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"Unmapping XBAR event %u on channel %u\0A\00", [57 x i8] zeroinitializer }, align 32
@ti_am335x_xbar_route_allocate._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.44, ptr @.str.45, ptr @.str.3, i32 88, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Invalid XBAR event number: %d\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"ti_am335x_xbar_route_allocate\00", [34 x i8] zeroinitializer }, align 32
@ti_am335x_xbar_route_allocate._entry_ptr = internal global ptr @ti_am335x_xbar_route_allocate._entry, section ".printk_index", align 4
@ti_am335x_xbar_route_allocate._entry.46 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.47, ptr @.str.45, ptr @.str.3, i32 94, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.47 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"Invalid DMA request line number: %d\0A\00", [59 x i8] zeroinitializer }, align 32
@ti_am335x_xbar_route_allocate._entry_ptr.48 = internal global ptr @ti_am335x_xbar_route_allocate._entry.46, section ".printk_index", align 4
@ti_am335x_xbar_route_allocate._entry.49 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.45, ptr @.str.3, i32 101, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@ti_am335x_xbar_route_allocate._entry_ptr.50 = internal global ptr @ti_am335x_xbar_route_allocate._entry.49, section ".printk_index", align 4
@ti_am335x_xbar_route_allocate.__UNIQUE_ID_ddebug231 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.45, ptr @.str.3, ptr @.str.51, i8 0, i8 29, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.51 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"Mapping XBAR event%u to DMA%u\0A\00", [33 x i8] zeroinitializer }, align 32
@ti_xbar_type = internal constant { [2 x i32], [24 x i8] } { [2 x i32] [i32 0, i32 1], [24 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.52 = private unnamed_addr constant [19 x i8] c"ti_dma_xbar_driver\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 460, i32 31 }
@___asan_gen_.57 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 462, i32 11 }
@___asan_gen_.58 = private unnamed_addr constant [18 x i8] c"ti_dma_xbar_match\00", align 1
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 22, i32 34 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 452, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 336, i32 36 }
@___asan_gen_.90 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 338, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant [21 x i8] c"ti_dra7_master_match\00", align 1
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 295, i32 34 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 344, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 349, i32 37 }
@___asan_gen_.111 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 351, i32 3 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 365, i32 3 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 371, i32 34 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 375, i32 32 }
@___asan_gen_.124 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.129 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 413, i32 2 }
@___asan_gen_.130 = private unnamed_addr constant [14 x i8] c"ti_dma_offset\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 290, i32 18 }
@___asan_gen_.141 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 228, i32 2 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 246, i32 3 }
@___asan_gen_.156 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 254, i32 3 }
@___asan_gen_.162 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 269, i32 3 }
@___asan_gen_.165 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 280, i32 2 }
@___asan_gen_.171 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 148, i32 3 }
@___asan_gen_.172 = private unnamed_addr constant [23 x i8] c"ti_am335x_master_match\00", align 1
@___asan_gen_.174 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 125, i32 34 }
@___asan_gen_.177 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 154, i32 3 }
@___asan_gen_.180 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 161, i32 3 }
@___asan_gen_.183 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 169, i32 3 }
@___asan_gen_.189 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 69, i32 2 }
@___asan_gen_.198 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 87, i32 3 }
@___asan_gen_.204 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 93, i32 3 }
@___asan_gen_.205 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.207 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 101, i32 3 }
@___asan_gen_.208 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.210 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 117, i32 2 }
@___asan_gen_.211 = private unnamed_addr constant [13 x i8] c"ti_xbar_type\00", align 1
@___asan_gen_.212 = private constant [33 x i8] c"../drivers/dma/ti/dma-crossbar.c\00", align 1
@___asan_gen_.213 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.212, i32 17, i32 18 }
@llvm.compiler.used = appending global [70 x ptr] [ptr @__initcall__kmod_dma_crossbar__234_472_omap_dmaxbar_init3, ptr @ti_am335x_xbar_probe._entry, ptr @ti_am335x_xbar_probe._entry.36, ptr @ti_am335x_xbar_probe._entry.38, ptr @ti_am335x_xbar_probe._entry.40, ptr @ti_am335x_xbar_probe._entry_ptr, ptr @ti_am335x_xbar_probe._entry_ptr.37, ptr @ti_am335x_xbar_probe._entry_ptr.39, ptr @ti_am335x_xbar_probe._entry_ptr.41, ptr @ti_am335x_xbar_route_allocate._entry, ptr @ti_am335x_xbar_route_allocate._entry.46, ptr @ti_am335x_xbar_route_allocate._entry.49, ptr @ti_am335x_xbar_route_allocate._entry_ptr, ptr @ti_am335x_xbar_route_allocate._entry_ptr.48, ptr @ti_am335x_xbar_route_allocate._entry_ptr.50, ptr @ti_dma_xbar_probe._entry, ptr @ti_dma_xbar_probe._entry_ptr, ptr @ti_dra7_xbar_probe._entry, ptr @ti_dra7_xbar_probe._entry.13, ptr @ti_dra7_xbar_probe._entry.17, ptr @ti_dra7_xbar_probe._entry.9, ptr @ti_dra7_xbar_probe._entry_ptr, ptr @ti_dra7_xbar_probe._entry_ptr.11, ptr @ti_dra7_xbar_probe._entry_ptr.16, ptr @ti_dra7_xbar_probe._entry_ptr.19, ptr @ti_dra7_xbar_route_allocate._entry, ptr @ti_dra7_xbar_route_allocate._entry.28, ptr @ti_dra7_xbar_route_allocate._entry.31, ptr @ti_dra7_xbar_route_allocate._entry_ptr, ptr @ti_dra7_xbar_route_allocate._entry_ptr.30, ptr @ti_dra7_xbar_route_allocate._entry_ptr.33, ptr @ti_dma_xbar_driver, ptr @.str, ptr @ti_dma_xbar_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @ti_dra7_master_match, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @.str.15, ptr @.str.18, ptr @.str.20, ptr @.str.21, ptr @ti_dra7_xbar_probe.__key, ptr @.str.22, ptr @ti_dma_offset, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.32, ptr @.str.34, ptr @.str.35, ptr @ti_am335x_master_match, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.47, ptr @.str.51, ptr @ti_xbar_type], section "llvm.metadata"
@0 = internal global [54 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dma_xbar_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dma_xbar_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dma_xbar_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dra7_xbar_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dra7_master_match to i32), i32 784, i32 992, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dra7_xbar_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dra7_xbar_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.111 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dra7_xbar_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dra7_xbar_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.129 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dma_offset to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.130 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dra7_xbar_route_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dra7_xbar_route_allocate._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.156 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_dra7_xbar_route_allocate._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.162 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.165 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_am335x_xbar_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.171 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_am335x_master_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.172 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_am335x_xbar_probe._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.177 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_am335x_xbar_probe._entry.38 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.180 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_am335x_xbar_probe._entry.40 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.183 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_am335x_xbar_route_allocate._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.198 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_am335x_xbar_route_allocate._entry.46 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.47 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.204 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_am335x_xbar_route_allocate._entry.49 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.205 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.207 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.208 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.210 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ti_xbar_type to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.211 to i32), i32 ptrtoint (ptr @___asan_gen_.212 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.213 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dmaxbar_init() #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @ti_dma_xbar_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @ti_dma_xbar_probe(ptr noundef %pdev) #0 align 64 {
entry:
  %args.i.i13 = alloca %struct.of_phandle_args, align 4
  %args.i.i = alloca %struct.of_phandle_args, align 4
  %safe_val.i = alloca i32, align 4
  %sz.i = alloca i32, align 4
  %pname.i = alloca [31 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call = tail call ptr @of_match_node(ptr noundef nonnull @ti_dma_xbar_match, ptr noundef %1) #7
  %tobool.not = icmp eq ptr %call, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end, !prof !115

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %data = getelementptr inbounds %struct.of_device_id, ptr %call, i32 0, i32 3
  %2 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %data, align 4
  %4 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %3, align 4
  %6 = zext i32 %5 to i64
  call void @__sanitizer_cov_trace_switch(i64 %6, ptr @__sancov_gen_cov_switch_values)
  switch i32 %5, label %do.end [
    i32 0, label %sw.bb
    i32 1, label %sw.bb5
  ]

sw.bb:                                            ; preds = %if.end
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %safe_val.i) #7
  %9 = ptrtoint ptr %safe_val.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 -1, ptr %safe_val.i, align 4, !annotation !116
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %sz.i) #7
  %10 = ptrtoint ptr %sz.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 -1, ptr %sz.i, align 4, !annotation !116
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %sw.bb.ti_dra7_xbar_probe.exit_crit_edge, label %if.end.i

sw.bb.ti_dra7_xbar_probe.exit_crit_edge:          ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_dra7_xbar_probe.exit

if.end.i:                                         ; preds = %sw.bb
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 124, i32 noundef 3520) #7
  %tobool2.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool2.not.i, label %if.end.i.ti_dra7_xbar_probe.exit_crit_edge, label %if.end4.i

if.end.i.ti_dra7_xbar_probe.exit_crit_edge:       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_dra7_xbar_probe.exit

if.end4.i:                                        ; preds = %if.end.i
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i) #7
  %11 = call ptr @memset(ptr %args.i.i, i32 255, i32 72)
  %call.i204.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %8, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i204.i)
  %tobool.not.i.i = icmp eq i32 %call.i204.i, 0
  br i1 %tobool.not.i.i, label %of_parse_phandle.exit.i, label %of_parse_phandle.exit.thread.i

of_parse_phandle.exit.thread.i:                   ; preds = %if.end4.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  br label %do.end.i

of_parse_phandle.exit.i:                          ; preds = %if.end4.i
  %12 = ptrtoint ptr %args.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args.i.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i) #7
  %tobool6.not.i = icmp eq ptr %13, null
  br i1 %tobool6.not.i, label %of_parse_phandle.exit.i.do.end.i_crit_edge, label %if.end9.i

of_parse_phandle.exit.i.do.end.i_crit_edge:       ; preds = %of_parse_phandle.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i

do.end.i:                                         ; preds = %of_parse_phandle.exit.i.do.end.i_crit_edge, %of_parse_phandle.exit.thread.i
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %ti_dra7_xbar_probe.exit

if.end9.i:                                        ; preds = %of_parse_phandle.exit.i
  %call10.i = call ptr @of_match_node(ptr noundef nonnull @ti_dra7_master_match, ptr noundef nonnull %13) #7
  %tobool11.not.i = icmp eq ptr %call10.i, null
  br i1 %tobool11.not.i, label %do.end15.i, label %if.end17.i

do.end15.i:                                       ; preds = %if.end9.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  call void @of_node_put(ptr noundef nonnull %13) #7
  br label %ti_dra7_xbar_probe.exit

if.end17.i:                                       ; preds = %if.end9.i
  %dma_requests.i = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %call.i.i, i32 0, i32 6
  %call.i.i.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %13, ptr noundef nonnull @.str.12, ptr noundef %dma_requests.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i)
  %tobool19.not.i = icmp sgt i32 %call.i.i.i, -1
  br i1 %tobool19.not.i, label %if.end17.i.if.end26.i_crit_edge, label %do.end23.i

if.end17.i.if.end26.i_crit_edge:                  ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i

do.end23.i:                                       ; preds = %if.end17.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 127) #10
  %14 = ptrtoint ptr %dma_requests.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 127, ptr %dma_requests.i, align 4
  br label %if.end26.i

if.end26.i:                                       ; preds = %do.end23.i, %if.end17.i.if.end26.i_crit_edge
  call void @of_node_put(ptr noundef nonnull %13) #7
  %15 = ptrtoint ptr %dma_requests.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %dma_requests.i, align 4
  %sub.i = add i32 %16, 31
  %17 = lshr i32 %sub.i, 3
  %18 = and i32 %17, 536870908
  %call5.i.i.i = call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %18, i32 noundef 3520) #7
  %dma_inuse.i = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %call.i.i, i32 0, i32 3
  %19 = ptrtoint ptr %dma_inuse.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call5.i.i.i, ptr %dma_inuse.i, align 4
  %tobool31.not.i = icmp eq ptr %call5.i.i.i, null
  br i1 %tobool31.not.i, label %if.end26.i.ti_dra7_xbar_probe.exit_crit_edge, label %if.end33.i

if.end26.i.ti_dra7_xbar_probe.exit_crit_edge:     ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_dra7_xbar_probe.exit

if.end33.i:                                       ; preds = %if.end26.i
  %xbar_requests.i = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %call.i.i, i32 0, i32 5
  %call.i.i205.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.12, ptr noundef %xbar_requests.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i205.i)
  %tobool35.not.i = icmp sgt i32 %call.i.i205.i, -1
  br i1 %tobool35.not.i, label %if.end33.i.if.end42.i_crit_edge, label %do.end39.i

if.end33.i.if.end42.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end42.i

do.end39.i:                                       ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef 256) #10
  %20 = ptrtoint ptr %xbar_requests.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 256, ptr %xbar_requests.i, align 4
  br label %if.end42.i

if.end42.i:                                       ; preds = %do.end39.i, %if.end33.i.if.end42.i_crit_edge
  %call.i.i206.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.20, ptr noundef nonnull %safe_val.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i206.i)
  %tobool44.not.i = icmp sgt i32 %call.i.i206.i, -1
  br i1 %tobool44.not.i, label %if.then45.i, label %if.end42.i.if.end47.i_crit_edge

if.end42.i.if.end47.i_crit_edge:                  ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end47.i

if.then45.i:                                      ; preds = %if.end42.i
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %safe_val.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load i32, ptr %safe_val.i, align 4
  %conv.i = trunc i32 %22 to i16
  %safe_val46.i = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %call.i.i, i32 0, i32 4
  %23 = ptrtoint ptr %safe_val46.i to i32
  call void @__asan_store2_noabort(i32 %23)
  store i16 %conv.i, ptr %safe_val46.i, align 4
  br label %if.end47.i

if.end47.i:                                       ; preds = %if.then45.i, %if.end42.i.if.end47.i_crit_edge
  %call48.i = call ptr @of_find_property(ptr noundef nonnull %8, ptr noundef nonnull @.str.21, ptr noundef nonnull %sz.i) #7
  %tobool49.not.i = icmp eq ptr %call48.i, null
  br i1 %tobool49.not.i, label %if.end47.i.if.end72.i_crit_edge, label %if.then50.i

if.end47.i.if.end72.i_crit_edge:                  ; preds = %if.end47.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end72.i

if.then50.i:                                      ; preds = %if.end47.i
  call void @llvm.lifetime.start.p0(i64 31, ptr nonnull %pname.i) #7
  %24 = call ptr @memcpy(ptr %pname.i, ptr @__const.ti_dra7_xbar_probe.pname, i32 31)
  %25 = ptrtoint ptr %sz.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %sz.i, align 4
  %div51198.i = lshr i32 %26, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 8, i32 %26)
  %tobool53.not.i = icmp ult i32 %26, 8
  br i1 %tobool53.not.i, label %if.then50.i.cleanup.thread.i_crit_edge, label %if.end7.i.i.i

if.then50.i.cleanup.thread.i_crit_edge:           ; preds = %if.then50.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end7.i.i.i:                                    ; preds = %if.then50.i
  %27 = and i32 %26, -8
  %call8.i.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %27, i32 noundef 3520) #11
  %tobool57.not.i = icmp eq ptr %call8.i.i.i, null
  br i1 %tobool57.not.i, label %if.end7.i.i.i.cleanup.thread.i_crit_edge, label %if.end59.i

if.end7.i.i.i.cleanup.thread.i_crit_edge:         ; preds = %if.end7.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup.thread.i

if.end59.i:                                       ; preds = %if.end7.i.i.i
  %mul.i = shl nuw nsw i32 %div51198.i, 1
  %call.i209.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull %pname.i, ptr noundef nonnull %call8.i.i.i, i32 noundef %mul.i, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i209.i)
  %tobool61.not.i = icmp sgt i32 %call.i209.i, -1
  br i1 %tobool61.not.i, label %for.body.preheader.i, label %if.then62.i

for.body.preheader.i:                             ; preds = %if.end59.i
  %umax.i = call i32 @llvm.umax.i32(i32 %div51198.i, i32 1) #7
  br label %for.body.i

if.then62.i:                                      ; preds = %if.end59.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #7
  br label %cleanup.thread.i

for.body.i:                                       ; preds = %ti_dra7_xbar_reserve.exit.i.for.body.i_crit_edge, %for.body.preheader.i
  %i52.0230.i = phi i32 [ %inc.i, %ti_dra7_xbar_reserve.exit.i.for.body.i_crit_edge ], [ 0, %for.body.preheader.i ]
  %arrayidx.i = getelementptr [2 x i32], ptr %call8.i.i.i, i32 %i52.0230.i
  %28 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %arrayidx.i, align 8
  %arrayidx67.i = getelementptr [2 x i32], ptr %call8.i.i.i, i32 %i52.0230.i, i32 1
  %30 = ptrtoint ptr %arrayidx67.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %arrayidx67.i, align 4
  %32 = ptrtoint ptr %dma_inuse.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dma_inuse.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %31)
  %cmp3.i.i = icmp sgt i32 %31, 0
  br i1 %cmp3.i.i, label %for.body.i.for.body.i.i_crit_edge, label %for.body.i.ti_dra7_xbar_reserve.exit.i_crit_edge

for.body.i.ti_dra7_xbar_reserve.exit.i_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_dra7_xbar_reserve.exit.i

for.body.i.for.body.i.i_crit_edge:                ; preds = %for.body.i
  br label %for.body.i.i

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %for.body.i.for.body.i.i_crit_edge
  %len.addr.04.i.i = phi i32 [ %sub.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %31, %for.body.i.for.body.i.i_crit_edge ]
  %sub.i.i = add nsw i32 %len.addr.04.i.i, -1
  %add.i.i = add i32 %sub.i.i, %29
  call void @_set_bit(i32 noundef %add.i.i, ptr noundef %33) #7
  %cmp.i.i = icmp ugt i32 %len.addr.04.i.i, 1
  br i1 %cmp.i.i, label %for.body.i.i.for.body.i.i_crit_edge, label %for.body.i.i.ti_dra7_xbar_reserve.exit.i_crit_edge

for.body.i.i.ti_dra7_xbar_reserve.exit.i_crit_edge: ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_dra7_xbar_reserve.exit.i

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i.i

ti_dra7_xbar_reserve.exit.i:                      ; preds = %for.body.i.i.ti_dra7_xbar_reserve.exit.i_crit_edge, %for.body.i.ti_dra7_xbar_reserve.exit.i_crit_edge
  %inc.i = add nuw nsw i32 %i52.0230.i, 1
  %exitcond.not.i = icmp eq i32 %inc.i, %umax.i
  br i1 %exitcond.not.i, label %cleanup.i, label %ti_dra7_xbar_reserve.exit.i.for.body.i_crit_edge

ti_dra7_xbar_reserve.exit.i.for.body.i_crit_edge: ; preds = %ti_dra7_xbar_reserve.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i

cleanup.thread.i:                                 ; preds = %if.then62.i, %if.end7.i.i.i.cleanup.thread.i_crit_edge, %if.then50.i.cleanup.thread.i_crit_edge
  %retval.0.ph.i = phi i32 [ -12, %if.end7.i.i.i.cleanup.thread.i_crit_edge ], [ -22, %if.then50.i.cleanup.thread.i_crit_edge ], [ %call.i209.i, %if.then62.i ]
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %pname.i) #7
  br label %ti_dra7_xbar_probe.exit

cleanup.i:                                        ; preds = %ti_dra7_xbar_reserve.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  call void @kfree(ptr noundef nonnull %call8.i.i.i) #7
  call void @llvm.lifetime.end.p0(i64 31, ptr nonnull %pname.i) #7
  br label %if.end72.i

if.end72.i:                                       ; preds = %cleanup.i, %if.end47.i.if.end72.i_crit_edge
  %call73.i = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i210.i = icmp ugt ptr %call73.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i210.i, label %if.then75.i, label %if.end77.i

if.then75.i:                                      ; preds = %if.end72.i
  call void @__sanitizer_cov_trace_pc() #9
  %34 = ptrtoint ptr %call73.i to i32
  br label %ti_dra7_xbar_probe.exit

if.end77.i:                                       ; preds = %if.end72.i
  %35 = ptrtoint ptr %call.i.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %call73.i, ptr %call.i.i, align 4
  %dmarouter.i = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %call.i.i, i32 0, i32 1
  %36 = ptrtoint ptr %dmarouter.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %dev, ptr %dmarouter.i, align 4
  %route_free.i = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %call.i.i, i32 0, i32 1, i32 1
  %37 = ptrtoint ptr %route_free.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr @ti_dra7_xbar_free, ptr %route_free.i, align 4
  %data.i = getelementptr inbounds %struct.of_device_id, ptr %call10.i, i32 0, i32 3
  %38 = ptrtoint ptr %data.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %data.i, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  %dma_offset.i = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %call.i.i, i32 0, i32 7
  %42 = ptrtoint ptr %dma_offset.i to i32
  call void @__asan_store4_noabort(i32 %42)
  store i32 %41, ptr %dma_offset.i, align 4
  %mutex.i = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %call.i.i, i32 0, i32 2
  call void @__mutex_init(ptr noundef %mutex.i, ptr noundef nonnull @.str.22, ptr noundef nonnull @ti_dra7_xbar_probe.__key) #7
  %driver_data.i.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %43 = ptrtoint ptr %driver_data.i.i.i to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call.i.i, ptr %driver_data.i.i.i, align 4
  %44 = ptrtoint ptr %dma_requests.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_requests.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp87231.not.i = icmp eq i32 %45, 0
  br i1 %cmp87231.not.i, label %if.end77.i.for.end99.i_crit_edge, label %for.body89.lr.ph.i

if.end77.i.for.end99.i_crit_edge:                 ; preds = %if.end77.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end99.i

for.body89.lr.ph.i:                               ; preds = %if.end77.i
  %safe_val95.i = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %call.i.i, i32 0, i32 4
  br label %for.body89.i

for.body89.i:                                     ; preds = %for.inc97.i.for.body89.i_crit_edge, %for.body89.lr.ph.i
  %i.0232.i = phi i32 [ 0, %for.body89.lr.ph.i ], [ %inc98.i, %for.inc97.i.for.body89.i_crit_edge ]
  %46 = ptrtoint ptr %dma_inuse.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %dma_inuse.i, align 4
  %div3.i.i = lshr i32 %i.0232.i, 5
  %arrayidx.i.i = getelementptr i32, ptr %47, i32 %div3.i.i
  %48 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile i32, ptr %arrayidx.i.i, align 4
  %and.i.i = and i32 %i.0232.i, 31
  %50 = shl nuw i32 1, %and.i.i
  %51 = and i32 %49, %50
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %51)
  %tobool92.not.i = icmp eq i32 %51, 0
  br i1 %tobool92.not.i, label %if.then93.i, label %for.body89.i.for.inc97.i_crit_edge

for.body89.i.for.inc97.i_crit_edge:               ; preds = %for.body89.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc97.i

if.then93.i:                                      ; preds = %for.body89.i
  call void @__sanitizer_cov_trace_pc() #9
  %52 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %call.i.i, align 4
  %54 = ptrtoint ptr %safe_val95.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %safe_val95.i, align 4
  %56 = call i16 @llvm.bswap.i16(i16 %55) #7
  %mul.i.i = shl i32 %i.0232.i, 1
  %add.ptr.i.i = getelementptr i8, ptr %53, i32 %mul.i.i
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i.i, i16 %56) #7, !srcloc !117
  br label %for.inc97.i

for.inc97.i:                                      ; preds = %if.then93.i, %for.body89.i.for.inc97.i_crit_edge
  %inc98.i = add nuw i32 %i.0232.i, 1
  %57 = ptrtoint ptr %dma_requests.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %dma_requests.i, align 4
  %cmp87.i = icmp ult i32 %inc98.i, %58
  br i1 %cmp87.i, label %for.inc97.i.for.body89.i_crit_edge, label %for.inc97.i.for.end99.i_crit_edge

for.inc97.i.for.end99.i_crit_edge:                ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end99.i

for.inc97.i.for.body89.i_crit_edge:               ; preds = %for.inc97.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body89.i

for.end99.i:                                      ; preds = %for.inc97.i.for.end99.i_crit_edge, %if.end77.i.for.end99.i_crit_edge
  %call101.i = call i32 @of_dma_router_register(ptr noundef nonnull %8, ptr noundef nonnull @ti_dra7_xbar_route_allocate, ptr noundef %dmarouter.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call101.i)
  %tobool102.not.i = icmp eq i32 %call101.i, 0
  br i1 %tobool102.not.i, label %for.end99.i.ti_dra7_xbar_probe.exit_crit_edge, label %for.cond104.preheader.i

for.end99.i.ti_dra7_xbar_probe.exit_crit_edge:    ; preds = %for.end99.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_dra7_xbar_probe.exit

for.cond104.preheader.i:                          ; preds = %for.end99.i
  %59 = ptrtoint ptr %dma_requests.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %dma_requests.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %60)
  %cmp106234.not.i = icmp eq i32 %60, 0
  br i1 %cmp106234.not.i, label %for.cond104.preheader.i.ti_dra7_xbar_probe.exit_crit_edge, label %for.cond104.preheader.i.for.body108.i_crit_edge

for.cond104.preheader.i.for.body108.i_crit_edge:  ; preds = %for.cond104.preheader.i
  br label %for.body108.i

for.cond104.preheader.i.ti_dra7_xbar_probe.exit_crit_edge: ; preds = %for.cond104.preheader.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_dra7_xbar_probe.exit

for.body108.i:                                    ; preds = %for.inc116.i.for.body108.i_crit_edge, %for.cond104.preheader.i.for.body108.i_crit_edge
  %i.1235.i = phi i32 [ %inc117.i, %for.inc116.i.for.body108.i_crit_edge ], [ 0, %for.cond104.preheader.i.for.body108.i_crit_edge ]
  %61 = ptrtoint ptr %dma_inuse.i to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dma_inuse.i, align 4
  %div3.i199.i = lshr i32 %i.1235.i, 5
  %arrayidx.i200.i = getelementptr i32, ptr %62, i32 %div3.i199.i
  %63 = ptrtoint ptr %arrayidx.i200.i to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load volatile i32, ptr %arrayidx.i200.i, align 4
  %and.i201.i = and i32 %i.1235.i, 31
  %65 = shl nuw i32 1, %and.i201.i
  %66 = and i32 %64, %65
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %66)
  %tobool111.not.i = icmp eq i32 %66, 0
  br i1 %tobool111.not.i, label %if.then112.i, label %for.body108.i.for.inc116.i_crit_edge

for.body108.i.for.inc116.i_crit_edge:             ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.inc116.i

if.then112.i:                                     ; preds = %for.body108.i
  call void @__sanitizer_cov_trace_pc() #9
  %67 = ptrtoint ptr %call.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %call.i.i, align 4
  %conv114.i = trunc i32 %i.1235.i to i16
  %69 = call i16 @llvm.bswap.i16(i16 %conv114.i) #7
  %mul.i211.i = shl i32 %i.1235.i, 1
  %add.ptr.i212.i = getelementptr i8, ptr %68, i32 %mul.i211.i
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i212.i, i16 %69) #7, !srcloc !117
  br label %for.inc116.i

for.inc116.i:                                     ; preds = %if.then112.i, %for.body108.i.for.inc116.i_crit_edge
  %inc117.i = add nuw i32 %i.1235.i, 1
  %70 = ptrtoint ptr %dma_requests.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %dma_requests.i, align 4
  %cmp106.i = icmp ult i32 %inc117.i, %71
  br i1 %cmp106.i, label %for.inc116.i.for.body108.i_crit_edge, label %for.inc116.i.ti_dra7_xbar_probe.exit_crit_edge

for.inc116.i.ti_dra7_xbar_probe.exit_crit_edge:   ; preds = %for.inc116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %ti_dra7_xbar_probe.exit

for.inc116.i.for.body108.i_crit_edge:             ; preds = %for.inc116.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body108.i

ti_dra7_xbar_probe.exit:                          ; preds = %for.inc116.i.ti_dra7_xbar_probe.exit_crit_edge, %for.cond104.preheader.i.ti_dra7_xbar_probe.exit_crit_edge, %for.end99.i.ti_dra7_xbar_probe.exit_crit_edge, %if.then75.i, %cleanup.thread.i, %if.end26.i.ti_dra7_xbar_probe.exit_crit_edge, %do.end15.i, %do.end.i, %if.end.i.ti_dra7_xbar_probe.exit_crit_edge, %sw.bb.ti_dra7_xbar_probe.exit_crit_edge
  %retval.1.i = phi i32 [ %34, %if.then75.i ], [ -22, %do.end15.i ], [ -19, %do.end.i ], [ -19, %sw.bb.ti_dra7_xbar_probe.exit_crit_edge ], [ -12, %if.end.i.ti_dra7_xbar_probe.exit_crit_edge ], [ -12, %if.end26.i.ti_dra7_xbar_probe.exit_crit_edge ], [ 0, %for.end99.i.ti_dra7_xbar_probe.exit_crit_edge ], [ %retval.0.ph.i, %cleanup.thread.i ], [ %call101.i, %for.cond104.preheader.i.ti_dra7_xbar_probe.exit_crit_edge ], [ %call101.i, %for.inc116.i.ti_dra7_xbar_probe.exit_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %sz.i) #7
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %safe_val.i) #7
  br label %cleanup

sw.bb5:                                           ; preds = %if.end
  %72 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %of_node, align 8
  %tobool.not.i16 = icmp eq ptr %73, null
  br i1 %tobool.not.i16, label %sw.bb5.cleanup_crit_edge, label %if.end.i19

sw.bb5.cleanup_crit_edge:                         ; preds = %sw.bb5
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end.i19:                                       ; preds = %sw.bb5
  %call.i.i17 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 20, i32 noundef 3520) #7
  %tobool2.not.i18 = icmp eq ptr %call.i.i17, null
  br i1 %tobool2.not.i18, label %if.end.i19.cleanup_crit_edge, label %if.end4.i21

if.end.i19.cleanup_crit_edge:                     ; preds = %if.end.i19
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4.i21:                                      ; preds = %if.end.i19
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i.i13) #7
  %74 = call ptr @memset(ptr %args.i.i13, i32 255, i32 72)
  %call.i85.i = call i32 @__of_parse_phandle_with_args(ptr noundef nonnull %73, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i.i13) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i85.i)
  %tobool.not.i.i20 = icmp eq i32 %call.i85.i, 0
  br i1 %tobool.not.i.i20, label %of_parse_phandle.exit.i24, label %of_parse_phandle.exit.thread.i22

of_parse_phandle.exit.thread.i22:                 ; preds = %if.end4.i21
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i13) #7
  br label %do.end.i25

of_parse_phandle.exit.i24:                        ; preds = %if.end4.i21
  %75 = ptrtoint ptr %args.i.i13 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %args.i.i13, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i.i13) #7
  %tobool6.not.i23 = icmp eq ptr %76, null
  br i1 %tobool6.not.i23, label %of_parse_phandle.exit.i24.do.end.i25_crit_edge, label %if.end9.i28

of_parse_phandle.exit.i24.do.end.i25_crit_edge:   ; preds = %of_parse_phandle.exit.i24
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i25

do.end.i25:                                       ; preds = %of_parse_phandle.exit.i24.do.end.i25_crit_edge, %of_parse_phandle.exit.thread.i22
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.7) #10
  br label %cleanup

if.end9.i28:                                      ; preds = %of_parse_phandle.exit.i24
  %call10.i26 = call ptr @of_match_node(ptr noundef nonnull @ti_am335x_master_match, ptr noundef nonnull %76) #7
  %tobool11.not.i27 = icmp eq ptr %call10.i26, null
  br i1 %tobool11.not.i27, label %do.end15.i29, label %if.end17.i33

do.end15.i29:                                     ; preds = %if.end9.i28
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.10) #10
  call void @of_node_put(ptr noundef nonnull %76) #7
  br label %cleanup

if.end17.i33:                                     ; preds = %if.end9.i28
  %dma_requests.i30 = getelementptr inbounds %struct.ti_am335x_xbar_data, ptr %call.i.i17, i32 0, i32 3
  %call.i.i.i31 = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %76, ptr noundef nonnull @.str.12, ptr noundef %dma_requests.i30, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i.i31)
  %tobool19.not.i32 = icmp sgt i32 %call.i.i.i31, -1
  br i1 %tobool19.not.i32, label %if.end17.i33.if.end26.i35_crit_edge, label %do.end23.i34

if.end17.i33.if.end26.i35_crit_edge:              ; preds = %if.end17.i33
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end26.i35

do.end23.i34:                                     ; preds = %if.end17.i33
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 64) #10
  %77 = ptrtoint ptr %dma_requests.i30 to i32
  call void @__asan_store4_noabort(i32 %77)
  store i32 64, ptr %dma_requests.i30, align 4
  br label %if.end26.i35

if.end26.i35:                                     ; preds = %do.end23.i34, %if.end17.i33.if.end26.i35_crit_edge
  call void @of_node_put(ptr noundef nonnull %76) #7
  %xbar_events.i = getelementptr inbounds %struct.ti_am335x_xbar_data, ptr %call.i.i17, i32 0, i32 2
  %call.i.i86.i = call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %73, ptr noundef nonnull @.str.12, ptr noundef %xbar_events.i, i32 noundef 1, i32 noundef 0) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i86.i)
  %tobool28.not.i = icmp sgt i32 %call.i.i86.i, -1
  br i1 %tobool28.not.i, label %if.end26.i35.if.end35.i_crit_edge, label %do.end32.i

if.end26.i35.if.end35.i_crit_edge:                ; preds = %if.end26.i35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end35.i

do.end32.i:                                       ; preds = %if.end26.i35
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.18, i32 noundef 64) #10
  %78 = ptrtoint ptr %xbar_events.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 64, ptr %xbar_events.i, align 4
  br label %if.end35.i

if.end35.i:                                       ; preds = %do.end32.i, %if.end26.i35.if.end35.i_crit_edge
  %call36.i = call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %cmp.i.i36 = icmp ugt ptr %call36.i, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i.i36, label %if.then38.i, label %if.end40.i

if.then38.i:                                      ; preds = %if.end35.i
  call void @__sanitizer_cov_trace_pc() #9
  %79 = ptrtoint ptr %call36.i to i32
  br label %cleanup

if.end40.i:                                       ; preds = %if.end35.i
  %80 = ptrtoint ptr %call.i.i17 to i32
  call void @__asan_store4_noabort(i32 %80)
  store ptr %call36.i, ptr %call.i.i17, align 4
  %dmarouter.i37 = getelementptr inbounds %struct.ti_am335x_xbar_data, ptr %call.i.i17, i32 0, i32 1
  %81 = ptrtoint ptr %dmarouter.i37 to i32
  call void @__asan_store4_noabort(i32 %81)
  store ptr %dev, ptr %dmarouter.i37, align 4
  %route_free.i38 = getelementptr inbounds %struct.ti_am335x_xbar_data, ptr %call.i.i17, i32 0, i32 1, i32 1
  %82 = ptrtoint ptr %route_free.i38 to i32
  call void @__asan_store4_noabort(i32 %82)
  store ptr @ti_am335x_xbar_free, ptr %route_free.i38, align 4
  %driver_data.i.i.i39 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %83 = ptrtoint ptr %driver_data.i.i.i39 to i32
  call void @__asan_store4_noabort(i32 %83)
  store ptr %call.i.i17, ptr %driver_data.i.i.i39, align 4
  %84 = ptrtoint ptr %dma_requests.i30 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_requests.i30, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %85)
  %cmp90.not.i = icmp eq i32 %85, 0
  br i1 %cmp90.not.i, label %if.end40.i.for.end.i_crit_edge, label %if.end40.i.for.body.i40_crit_edge

if.end40.i.for.body.i40_crit_edge:                ; preds = %if.end40.i
  br label %for.body.i40

if.end40.i.for.end.i_crit_edge:                   ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

for.body.i40:                                     ; preds = %ti_am335x_xbar_write.exit.i.for.body.i40_crit_edge, %if.end40.i.for.body.i40_crit_edge
  %i.091.i = phi i32 [ %inc.i43, %ti_am335x_xbar_write.exit.i.for.body.i40_crit_edge ], [ 0, %if.end40.i.for.body.i40_crit_edge ]
  %86 = ptrtoint ptr %call.i.i17 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %call.i.i17, align 4
  %88 = and i32 %i.091.i, -4
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %88)
  %89 = icmp eq i32 %88, 60
  br i1 %89, label %if.then.i.i, label %if.else.i.i

if.then.i.i:                                      ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #9
  %rem89.i.i = and i32 %i.091.i, 3
  %sub.i.i41 = xor i32 %rem89.i.i, 63
  %add.ptr.i.i42 = getelementptr i8, ptr %87, i32 %sub.i.i41
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i.i42, i8 0) #7, !srcloc !118
  br label %ti_am335x_xbar_write.exit.i

if.else.i.i:                                      ; preds = %for.body.i40
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr2.i.i = getelementptr i8, ptr %87, i32 %i.091.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i.i, i8 0) #7, !srcloc !118
  br label %ti_am335x_xbar_write.exit.i

ti_am335x_xbar_write.exit.i:                      ; preds = %if.else.i.i, %if.then.i.i
  %inc.i43 = add nuw i32 %i.091.i, 1
  %90 = ptrtoint ptr %dma_requests.i30 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %dma_requests.i30, align 4
  %cmp.i = icmp ult i32 %inc.i43, %91
  br i1 %cmp.i, label %ti_am335x_xbar_write.exit.i.for.body.i40_crit_edge, label %ti_am335x_xbar_write.exit.i.for.end.i_crit_edge

ti_am335x_xbar_write.exit.i.for.end.i_crit_edge:  ; preds = %ti_am335x_xbar_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end.i

ti_am335x_xbar_write.exit.i.for.body.i40_crit_edge: ; preds = %ti_am335x_xbar_write.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.body.i40

for.end.i:                                        ; preds = %ti_am335x_xbar_write.exit.i.for.end.i_crit_edge, %if.end40.i.for.end.i_crit_edge
  %call48.i44 = call i32 @of_dma_router_register(ptr noundef nonnull %73, ptr noundef nonnull @ti_am335x_xbar_route_allocate, ptr noundef %dmarouter.i37) #7
  br label %cleanup

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end, %for.end.i, %if.then38.i, %do.end15.i29, %do.end.i25, %if.end.i19.cleanup_crit_edge, %sw.bb5.cleanup_crit_edge, %ti_dra7_xbar_probe.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ -19, %do.end ], [ %retval.1.i, %ti_dra7_xbar_probe.exit ], [ %79, %if.then38.i ], [ %call48.i44, %for.end.i ], [ -22, %do.end15.i29 ], [ -19, %do.end.i25 ], [ -19, %sw.bb5.cleanup_crit_edge ], [ -12, %if.end.i19.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_property(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_dra7_xbar_free(ptr noundef %dev, ptr noundef %route_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_dra7_xbar_free.__UNIQUE_ID_ddebug232, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_dra7_xbar_free, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %route_data to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %route_data, align 4
  %conv = zext i16 %3 to i32
  %xbar_out = getelementptr inbounds %struct.ti_dra7_xbar_map, ptr %route_data, i32 0, i32 1
  %4 = ptrtoint ptr %xbar_out to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %xbar_out, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_dra7_xbar_free.__UNIQUE_ID_ddebug232, ptr noundef %dev, ptr noundef nonnull @.str.25, i32 noundef %conv, i32 noundef %5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %xbar_out5 = getelementptr inbounds %struct.ti_dra7_xbar_map, ptr %route_data, i32 0, i32 1
  %8 = ptrtoint ptr %xbar_out5 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xbar_out5, align 4
  %safe_val = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %1, i32 0, i32 4
  %10 = ptrtoint ptr %safe_val to i32
  call void @__asan_load2_noabort(i32 %10)
  %11 = load i16, ptr %safe_val, align 4
  %12 = tail call i16 @llvm.bswap.i16(i16 %11) #7
  %mul.i = shl i32 %9, 1
  %add.ptr.i = getelementptr i8, ptr %7, i32 %mul.i
  tail call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %12) #7, !srcloc !117
  %mutex = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %1, i32 0, i32 2
  tail call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %13 = ptrtoint ptr %xbar_out5 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %xbar_out5, align 4
  %dma_inuse = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %1, i32 0, i32 3
  %15 = ptrtoint ptr %dma_inuse to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %dma_inuse, align 4
  tail call void @_clear_bit(i32 noundef %14, ptr noundef %16) #7
  tail call void @mutex_unlock(ptr noundef %mutex) #7
  tail call void @kfree(ptr noundef %route_data) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_router_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ti_dra7_xbar_route_allocate(ptr nocapture noundef %dma_spec, ptr nocapture noundef readonly %ofdma) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 1
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 4
  %call = tail call ptr @of_find_device_by_node(ptr noundef %1) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %4 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args, align 4
  %xbar_requests = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %3, i32 0, i32 5
  %6 = ptrtoint ptr %xbar_requests to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %xbar_requests, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %5, i32 %7)
  %cmp.not = icmp ult i32 %5, %7
  br i1 %cmp.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.26, i32 noundef %5) #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %10 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %9, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %11 = ptrtoint ptr %dma_spec to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr null, ptr %dma_spec, align 4
  br label %do.end11

of_parse_phandle.exit:                            ; preds = %if.end
  %12 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %14 = ptrtoint ptr %dma_spec to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %13, ptr %dma_spec, align 4
  %tobool.not = icmp eq ptr %13, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end11_crit_edge, label %if.end14

of_parse_phandle.exit.do.end11_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end11

do.end11:                                         ; preds = %of_parse_phandle.exit.do.end11_crit_edge, %of_parse_phandle.exit.thread
  %dev12 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev12, ptr noundef nonnull @.str.29) #10
  br label %cleanup

if.end14:                                         ; preds = %of_parse_phandle.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %15 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %15, i32 noundef 3520, i32 noundef 8) #12
  %tobool16.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool16.not, label %if.then17, label %if.end20

if.then17:                                        ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #9
  %16 = ptrtoint ptr %dma_spec to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dma_spec, align 4
  call void @of_node_put(ptr noundef %17) #7
  br label %cleanup

if.end20:                                         ; preds = %if.end14
  %mutex = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %3, i32 0, i32 2
  call void @mutex_lock_nested(ptr noundef %mutex, i32 noundef 0) #7
  %dma_inuse = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %3, i32 0, i32 3
  %18 = ptrtoint ptr %dma_inuse to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %dma_inuse, align 4
  %dma_requests = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %3, i32 0, i32 6
  %20 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %dma_requests, align 4
  %call21 = call i32 @_find_first_zero_bit_be(ptr noundef %19, i32 noundef %21) #7
  %xbar_out = getelementptr inbounds %struct.ti_dra7_xbar_map, ptr %call7.i.i, i32 0, i32 1
  %22 = ptrtoint ptr %xbar_out to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 %call21, ptr %xbar_out, align 4
  %23 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %dma_requests, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %call21, i32 %24)
  %cmp24 = icmp eq i32 %call21, %24
  br i1 %cmp24, label %if.then25, label %if.end32

if.then25:                                        ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void @mutex_unlock(ptr noundef %mutex) #7
  %dev30 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev30, ptr noundef nonnull @.str.32) #10
  call void @kfree(ptr noundef nonnull %call7.i.i) #7
  br label %cleanup

if.end32:                                         ; preds = %if.end20
  %25 = ptrtoint ptr %dma_inuse to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %dma_inuse, align 4
  call void @_set_bit(i32 noundef %call21, ptr noundef %26) #7
  call void @mutex_unlock(ptr noundef %mutex) #7
  %27 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %args, align 4
  %conv = trunc i32 %28 to i16
  %29 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %29)
  store i16 %conv, ptr %call7.i.i, align 8
  %30 = ptrtoint ptr %xbar_out to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %xbar_out, align 4
  %dma_offset = getelementptr inbounds %struct.ti_dra7_xbar_data, ptr %3, i32 0, i32 7
  %32 = ptrtoint ptr %dma_offset to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %dma_offset, align 4
  %add = add i32 %33, %31
  store i32 %add, ptr %args, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_dra7_xbar_route_allocate.__UNIQUE_ID_ddebug233, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_dra7_xbar_route_allocate, %do.end54)) #7
          to label %if.then47 [label %do.end54], !srcloc !119

if.then47:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #9
  %dev48 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %34 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %34)
  %35 = load i16, ptr %call7.i.i, align 8
  %conv50 = zext i16 %35 to i32
  %36 = ptrtoint ptr %xbar_out to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %xbar_out, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_dra7_xbar_route_allocate.__UNIQUE_ID_ddebug233, ptr noundef %dev48, ptr noundef nonnull @.str.34, i32 noundef %conv50, i32 noundef %37) #7
  br label %do.end54

do.end54:                                         ; preds = %if.then47, %if.end32
  %38 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %3, align 4
  %40 = ptrtoint ptr %xbar_out to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %xbar_out, align 4
  %42 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %call7.i.i, align 8
  %44 = call i16 @llvm.bswap.i16(i16 %43) #7
  %mul.i = shl i32 %41, 1
  %add.ptr.i = getelementptr i8, ptr %39, i32 %mul.i
  call void asm sideeffect "strh $1, $0", "*Q,r"(ptr elementtype(i16) %add.ptr.i, i16 %44) #7, !srcloc !117
  br label %cleanup

cleanup:                                          ; preds = %do.end54, %if.then25, %if.then17, %do.end11, %do.end
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -12 to ptr), %if.then25 ], [ %call7.i.i, %do.end54 ], [ inttoptr (i32 -12 to ptr), %if.then17 ], [ inttoptr (i32 -22 to ptr), %do.end11 ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__of_parse_phandle_with_args(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_clear_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.bswap.i16(i16) #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_find_device_by_node(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_find_first_zero_bit_be(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @ti_am335x_xbar_free(ptr noundef %dev, ptr noundef %route_data) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_am335x_xbar_free.__UNIQUE_ID_ddebug230, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_am335x_xbar_free, %do.end)) #7
          to label %if.then [label %do.end], !srcloc !119

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %mux_val = getelementptr inbounds %struct.ti_am335x_xbar_map, ptr %route_data, i32 0, i32 1
  %2 = ptrtoint ptr %mux_val to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %mux_val, align 2
  %conv = zext i8 %3 to i32
  %4 = ptrtoint ptr %route_data to i32
  call void @__asan_load2_noabort(i32 %4)
  %5 = load i16, ptr %route_data, align 2
  %conv5 = zext i16 %5 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_am335x_xbar_free.__UNIQUE_ID_ddebug230, ptr noundef %dev, ptr noundef nonnull @.str.43, i32 noundef %conv, i32 noundef %conv5) #7
  br label %do.end

do.end:                                           ; preds = %if.then, %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %route_data to i32
  call void @__asan_load2_noabort(i32 %8)
  %9 = load i16, ptr %route_data, align 2
  %conv7 = zext i16 %9 to i32
  %10 = and i32 %conv7, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %10)
  %11 = icmp eq i32 %10, 60
  br i1 %11, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %rem89.i = and i32 %conv7, 3
  %sub.i = xor i32 %rem89.i, 63
  %add.ptr.i = getelementptr i8, ptr %7, i32 %sub.i
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 0) #7, !srcloc !118
  br label %ti_am335x_xbar_write.exit

if.else.i:                                        ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr2.i = getelementptr i8, ptr %7, i32 %conv7
  tail call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i, i8 0) #7, !srcloc !118
  br label %ti_am335x_xbar_write.exit

ti_am335x_xbar_write.exit:                        ; preds = %if.else.i, %if.then.i
  tail call void @kfree(ptr noundef %route_data) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @ti_am335x_xbar_route_allocate(ptr nocapture noundef %dma_spec, ptr nocapture noundef readonly %ofdma) #0 align 64 {
entry:
  %args.i = alloca %struct.of_phandle_args, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %of_node = getelementptr inbounds %struct.of_dma, ptr %ofdma, i32 0, i32 1
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 4
  %call = tail call ptr @of_find_device_by_node(ptr noundef %1) #7
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3, i32 8
  %2 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %args_count = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 1
  %4 = ptrtoint ptr %args_count to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %args_count, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %5)
  %cmp.not = icmp eq i32 %5, 3
  br i1 %cmp.not, label %if.end, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %args = getelementptr inbounds %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2
  %arrayidx = getelementptr %struct.of_phandle_args, ptr %dma_spec, i32 0, i32 2, i32 2
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %arrayidx, align 4
  %xbar_events = getelementptr inbounds %struct.ti_am335x_xbar_data, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %xbar_events to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %xbar_events, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %9)
  %cmp3.not = icmp ult i32 %7, %9
  br i1 %cmp3.not, label %if.end8, label %do.end

do.end:                                           ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %dev = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.44, i32 noundef %7) #10
  br label %cleanup

if.end8:                                          ; preds = %if.end
  %10 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %args, align 4
  %dma_requests = getelementptr inbounds %struct.ti_am335x_xbar_data, ptr %3, i32 0, i32 3
  %12 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %dma_requests, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %11, i32 %13)
  %cmp11.not = icmp ult i32 %11, %13
  br i1 %cmp11.not, label %if.end20, label %do.end15

do.end15:                                         ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %dev16 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev16, ptr noundef nonnull @.str.47, i32 noundef %11) #10
  br label %cleanup

if.end20:                                         ; preds = %if.end8
  %14 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %of_node, align 4
  call void @llvm.lifetime.start.p0(i64 72, ptr nonnull %args.i) #7
  %16 = call ptr @memset(ptr %args.i, i32 255, i32 72)
  %call.i = call i32 @__of_parse_phandle_with_args(ptr noundef %15, ptr noundef nonnull @.str.6, ptr noundef null, i32 noundef 0, i32 noundef 0, ptr noundef nonnull %args.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %of_parse_phandle.exit, label %of_parse_phandle.exit.thread

of_parse_phandle.exit.thread:                     ; preds = %if.end20
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %17 = ptrtoint ptr %dma_spec to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr null, ptr %dma_spec, align 4
  br label %do.end27

of_parse_phandle.exit:                            ; preds = %if.end20
  %18 = ptrtoint ptr %args.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %args.i, align 4
  call void @llvm.lifetime.end.p0(i64 72, ptr nonnull %args.i) #7
  %20 = ptrtoint ptr %dma_spec to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %dma_spec, align 4
  %tobool.not = icmp eq ptr %19, null
  br i1 %tobool.not, label %of_parse_phandle.exit.do.end27_crit_edge, label %if.end30

of_parse_phandle.exit.do.end27_crit_edge:         ; preds = %of_parse_phandle.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end27

do.end27:                                         ; preds = %of_parse_phandle.exit.do.end27_crit_edge, %of_parse_phandle.exit.thread
  %dev28 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev28, ptr noundef nonnull @.str.29) #10
  br label %cleanup

if.end30:                                         ; preds = %of_parse_phandle.exit
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %21 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %21, i32 noundef 3520, i32 noundef 4) #12
  %tobool32.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool32.not, label %if.then33, label %if.end36

if.then33:                                        ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %dma_spec to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dma_spec, align 4
  call void @of_node_put(ptr noundef %23) #7
  br label %cleanup

if.end36:                                         ; preds = %if.end30
  %24 = ptrtoint ptr %args to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %args, align 4
  %conv = trunc i32 %25 to i16
  %26 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store2_noabort(i32 %26)
  store i16 %conv, ptr %call7.i.i, align 8
  %27 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %arrayidx, align 4
  %conv41 = trunc i32 %28 to i8
  %mux_val = getelementptr inbounds %struct.ti_am335x_xbar_map, ptr %call7.i.i, i32 0, i32 1
  %29 = ptrtoint ptr %mux_val to i32
  call void @__asan_store1_noabort(i32 %29)
  store i8 %conv41, ptr %mux_val, align 2
  store i32 0, ptr %arrayidx, align 4
  %30 = ptrtoint ptr %args_count to i32
  call void @__asan_store4_noabort(i32 %30)
  store i32 2, ptr %args_count, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @ti_am335x_xbar_route_allocate.__UNIQUE_ID_ddebug231, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@ti_am335x_xbar_route_allocate, %do.end59)) #7
          to label %if.then51 [label %do.end59], !srcloc !119

if.then51:                                        ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #9
  %dev52 = getelementptr inbounds %struct.platform_device, ptr %call, i32 0, i32 3
  %conv54 = and i32 %28, 255
  %conv56 = and i32 %25, 65535
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @ti_am335x_xbar_route_allocate.__UNIQUE_ID_ddebug231, ptr noundef %dev52, ptr noundef nonnull @.str.51, i32 noundef %conv54, i32 noundef %conv56) #7
  br label %do.end59

do.end59:                                         ; preds = %if.then51, %if.end36
  %31 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %3, align 4
  %33 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %call7.i.i, align 8
  %conv61 = zext i16 %34 to i32
  %35 = and i32 %conv61, 65532
  call void @__sanitizer_cov_trace_const_cmp4(i32 60, i32 %35)
  %36 = icmp eq i32 %35, 60
  br i1 %36, label %if.then.i, label %if.else.i

if.then.i:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  %rem89.i = and i32 %conv61, 3
  %sub.i = xor i32 %rem89.i, 63
  %add.ptr.i = getelementptr i8, ptr %32, i32 %sub.i
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr.i, i8 %conv41) #7, !srcloc !118
  br label %cleanup

if.else.i:                                        ; preds = %do.end59
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr2.i = getelementptr i8, ptr %32, i32 %conv61
  call void asm sideeffect "strb $1, $0", "*Qo,r"(ptr elementtype(i8) %add.ptr2.i, i8 %conv41) #7, !srcloc !118
  br label %cleanup

cleanup:                                          ; preds = %if.else.i, %if.then.i, %if.then33, %do.end27, %do.end15, %do.end, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -22 to ptr), %do.end ], [ inttoptr (i32 -22 to ptr), %do.end15 ], [ inttoptr (i32 -12 to ptr), %if.then33 ], [ inttoptr (i32 -22 to ptr), %do.end27 ], [ inttoptr (i32 -22 to ptr), %entry.cleanup_crit_edge ], [ %call7.i.i, %if.then.i ], [ %call7.i.i, %if.else.i ]
  ret ptr %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memcpy(ptr, ptr, i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 54)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }
attributes #11 = { nounwind allocsize(0) }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !4, !6, !8, !9, !10, !11, !12, !13, !14, !16, !18, !19, !20, !21, !23, !24, !25, !27, !29, !30, !31, !32, !34, !35, !36, !38, !40, !42, !43, !45, !47, !49, !50, !51, !52, !54, !55, !56, !57, !59, !60, !61, !63, !64, !65, !67, !68, !70, !71, !72, !74, !75, !77, !78, !80, !81, !83, !85, !86, !87, !89, !90, !91, !92, !94, !95, !96, !98, !99, !101, !102, !104}
!llvm.module.flags = !{!106, !107, !108, !109, !110, !111, !112, !113}
!llvm.ident = !{!114}

!0 = !{ptr @__initcall__kmod_dma_crossbar__234_472_omap_dmaxbar_init3, !1, !"__initcall__kmod_dma_crossbar__234_472_omap_dmaxbar_init3", i1 false, i1 false}
!1 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 472, i32 1}
!2 = !{ptr @.str, !3, !"<string literal>", i1 false, i1 false}
!3 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 462, i32 11}
!4 = !{ptr @ti_dma_xbar_driver, !5, !"ti_dma_xbar_driver", i1 false, i1 false}
!5 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 460, i32 31}
!6 = !{ptr @.str.1, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 452, i32 3}
!8 = !{ptr @.str.2, !7, !"<string literal>", i1 false, i1 false}
!9 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!10 = !{ptr @.str.4, !7, !"<string literal>", i1 false, i1 false}
!11 = !{ptr @.str.5, !7, !"<string literal>", i1 false, i1 false}
!12 = !{ptr @ti_dma_xbar_probe._entry, !7, !"_entry", i1 false, i1 false}
!13 = !{ptr @ti_dma_xbar_probe._entry_ptr, !7, !"_entry_ptr", i1 false, i1 false}
!14 = !{ptr @.str.6, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 336, i32 36}
!16 = !{ptr @.str.7, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 338, i32 3}
!18 = !{ptr @.str.8, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @ti_dra7_xbar_probe._entry, !17, !"_entry", i1 false, i1 false}
!20 = !{ptr @ti_dra7_xbar_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!21 = !{ptr @.str.10, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 344, i32 3}
!23 = !{ptr @ti_dra7_xbar_probe._entry.9, !22, !"_entry", i1 false, i1 false}
!24 = !{ptr @ti_dra7_xbar_probe._entry_ptr.11, !22, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.12, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 349, i32 37}
!27 = !{ptr @.str.14, !28, !"<string literal>", i1 false, i1 false}
!28 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 351, i32 3}
!29 = !{ptr @.str.15, !28, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @ti_dra7_xbar_probe._entry.13, !28, !"_entry", i1 false, i1 false}
!31 = !{ptr @ti_dra7_xbar_probe._entry_ptr.16, !28, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.18, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 365, i32 3}
!34 = !{ptr @ti_dra7_xbar_probe._entry.17, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @ti_dra7_xbar_probe._entry_ptr.19, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.20, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 371, i32 34}
!38 = !{ptr @.str.21, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 375, i32 32}
!40 = !{ptr @ti_dra7_xbar_probe.__key, !41, !"__key", i1 false, i1 false}
!41 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 413, i32 2}
!42 = !{ptr @.str.22, !41, !"<string literal>", i1 false, i1 false}
!43 = !{ptr @ti_dra7_master_match, !44, !"ti_dra7_master_match", i1 false, i1 false}
!44 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 295, i32 34}
!45 = !{ptr @ti_dma_offset, !46, !"ti_dma_offset", i1 false, i1 false}
!46 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 290, i32 18}
!47 = !{ptr @.str.23, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 228, i32 2}
!49 = !{ptr @.str.24, !48, !"<string literal>", i1 false, i1 false}
!50 = !{ptr @.str.25, !48, !"<string literal>", i1 false, i1 false}
!51 = !{ptr @ti_dra7_xbar_free.__UNIQUE_ID_ddebug232, !48, !"__UNIQUE_ID_ddebug232", i1 false, i1 false}
!52 = !{ptr @.str.26, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 246, i32 3}
!54 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!55 = !{ptr @ti_dra7_xbar_route_allocate._entry, !53, !"_entry", i1 false, i1 false}
!56 = !{ptr @ti_dra7_xbar_route_allocate._entry_ptr, !53, !"_entry_ptr", i1 false, i1 false}
!57 = !{ptr @.str.29, !58, !"<string literal>", i1 false, i1 false}
!58 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 254, i32 3}
!59 = !{ptr @ti_dra7_xbar_route_allocate._entry.28, !58, !"_entry", i1 false, i1 false}
!60 = !{ptr @ti_dra7_xbar_route_allocate._entry_ptr.30, !58, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.32, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 269, i32 3}
!63 = !{ptr @ti_dra7_xbar_route_allocate._entry.31, !62, !"_entry", i1 false, i1 false}
!64 = !{ptr @ti_dra7_xbar_route_allocate._entry_ptr.33, !62, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 280, i32 2}
!67 = !{ptr @ti_dra7_xbar_route_allocate.__UNIQUE_ID_ddebug233, !66, !"__UNIQUE_ID_ddebug233", i1 false, i1 false}
!68 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 148, i32 3}
!70 = !{ptr @ti_am335x_xbar_probe._entry, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @ti_am335x_xbar_probe._entry_ptr, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @ti_am335x_xbar_probe._entry.36, !73, !"_entry", i1 false, i1 false}
!73 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 154, i32 3}
!74 = !{ptr @ti_am335x_xbar_probe._entry_ptr.37, !73, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @ti_am335x_xbar_probe._entry.38, !76, !"_entry", i1 false, i1 false}
!76 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 161, i32 3}
!77 = !{ptr @ti_am335x_xbar_probe._entry_ptr.39, !76, !"_entry_ptr", i1 false, i1 false}
!78 = !{ptr @ti_am335x_xbar_probe._entry.40, !79, !"_entry", i1 false, i1 false}
!79 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 169, i32 3}
!80 = !{ptr @ti_am335x_xbar_probe._entry_ptr.41, !79, !"_entry_ptr", i1 false, i1 false}
!81 = !{ptr @ti_am335x_master_match, !82, !"ti_am335x_master_match", i1 false, i1 false}
!82 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 125, i32 34}
!83 = !{ptr @.str.42, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 69, i32 2}
!85 = !{ptr @.str.43, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @ti_am335x_xbar_free.__UNIQUE_ID_ddebug230, !84, !"__UNIQUE_ID_ddebug230", i1 false, i1 false}
!87 = !{ptr @.str.44, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 87, i32 3}
!89 = !{ptr @.str.45, !88, !"<string literal>", i1 false, i1 false}
!90 = !{ptr @ti_am335x_xbar_route_allocate._entry, !88, !"_entry", i1 false, i1 false}
!91 = !{ptr @ti_am335x_xbar_route_allocate._entry_ptr, !88, !"_entry_ptr", i1 false, i1 false}
!92 = !{ptr @.str.47, !93, !"<string literal>", i1 false, i1 false}
!93 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 93, i32 3}
!94 = !{ptr @ti_am335x_xbar_route_allocate._entry.46, !93, !"_entry", i1 false, i1 false}
!95 = !{ptr @ti_am335x_xbar_route_allocate._entry_ptr.48, !93, !"_entry_ptr", i1 false, i1 false}
!96 = !{ptr @ti_am335x_xbar_route_allocate._entry.49, !97, !"_entry", i1 false, i1 false}
!97 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 101, i32 3}
!98 = !{ptr @ti_am335x_xbar_route_allocate._entry_ptr.50, !97, !"_entry_ptr", i1 false, i1 false}
!99 = !{ptr @.str.51, !100, !"<string literal>", i1 false, i1 false}
!100 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 117, i32 2}
!101 = !{ptr @ti_am335x_xbar_route_allocate.__UNIQUE_ID_ddebug231, !100, !"__UNIQUE_ID_ddebug231", i1 false, i1 false}
!102 = !{ptr @ti_dma_xbar_match, !103, !"ti_dma_xbar_match", i1 false, i1 false}
!103 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 22, i32 34}
!104 = !{ptr @ti_xbar_type, !105, !"ti_xbar_type", i1 false, i1 false}
!105 = !{!"../drivers/dma/ti/dma-crossbar.c", i32 17, i32 18}
!106 = !{i32 1, !"wchar_size", i32 2}
!107 = !{i32 1, !"min_enum_size", i32 4}
!108 = !{i32 8, !"branch-target-enforcement", i32 0}
!109 = !{i32 8, !"sign-return-address", i32 0}
!110 = !{i32 8, !"sign-return-address-all", i32 0}
!111 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!112 = !{i32 7, !"uwtable", i32 1}
!113 = !{i32 7, !"frame-pointer", i32 2}
!114 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!115 = !{!"branch_weights", i32 1, i32 2000}
!116 = !{!"auto-init"}
!117 = !{i64 4568039}
!118 = !{i64 4568462}
!119 = !{i64 2148211070, i64 2148211075, i64 2148211088, i64 2148211132, i64 2148211166, i64 2148211187}
