; ModuleID = '/llk/IR_all_yes/drivers/dma/mediatek/mtk-cqdma.c_pt.bc'
source_filename = "../drivers/dma/mediatek/mtk-cqdma.c"
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
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.mtk_cqdma_device = type { %struct.dma_device, ptr, i32, i32, ptr, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mtk_cqdma_pchan = type { %struct.list_head, ptr, i32, %struct.refcount_struct, %struct.tasklet_struct, %struct.spinlock }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.mtk_cqdma_vchan = type { %struct.virt_dma_chan, ptr, %struct.completion, i8 }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.mtk_cqdma_vdesc = type { %struct.virt_dma_desc, i32, i32, i32, i32, ptr, %struct.list_head, ptr }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }

@__initcall__kmod_mtk_cqdma__241_938_mtk_cqdma_driver_init6 = internal global ptr @mtk_cqdma_driver_init, section ".initcall6.init", align 4
@mtk_cqdma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_cqdma_probe, ptr @mtk_cqdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_cqdma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_cqdma_driver_exit = internal global ptr @mtk_cqdma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description242 = internal constant [55 x i8] c"mtk_cqdma.description=MediaTek CQDMA Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author243 = internal constant [58 x i8] c"mtk_cqdma.author=Shun-Chih Yu <shun-chih.yu@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file244 = internal constant [46 x i8] c"mtk_cqdma.file=drivers/dma/mediatek/mtk-cqdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license245 = internal constant [25 x i8] c"mtk_cqdma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mtk_cqdma\00", [22 x i8] zeroinitializer }, align 32
@mtk_cqdma_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt6765-cqdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"cqdma\00", [26 x i8] zeroinitializer }, align 32
@mtk_cqdma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 767, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No clock for %s\0A\00", [47 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_cqdma_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/dma/mediatek/mtk-cqdma.c\00", [63 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_cqdma_probe._entry_ptr = internal global ptr @mtk_cqdma_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-requests\00", [19 x i8] zeroinitializer }, align 32
@mtk_cqdma_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 792, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Using %u as missing dma-requests property\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_cqdma_probe._entry_ptr.11 = internal global ptr @mtk_cqdma_probe._entry.8, section ".printk_index", align 4
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-channels\00", [19 x i8] zeroinitializer }, align 32
@mtk_cqdma_probe._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.3, ptr @.str.4, i32 802, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Using %u as missing dma-channels property\0A\00", [53 x i8] zeroinitializer }, align 32
@mtk_cqdma_probe._entry_ptr.15 = internal global ptr @mtk_cqdma_probe._entry.13, section ".printk_index", align 4
@mtk_cqdma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"&cqdma->pc[i]->lock\00", [44 x i8] zeroinitializer }, align 32
@mtk_cqdma_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.3, ptr @.str.4, i32 830, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No irq resource for %s\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_cqdma_probe._entry_ptr.19 = internal global ptr @mtk_cqdma_probe._entry.17, section ".printk_index", align 4
@mtk_cqdma_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.3, ptr @.str.4, i32 840, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"request_irq failed with err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_cqdma_probe._entry_ptr.22 = internal global ptr @mtk_cqdma_probe._entry.20, section ".printk_index", align 4
@mtk_cqdma_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.3, ptr @.str.4, i32 866, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MediaTek CQDMA OF registration failed %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mtk_cqdma_probe._entry_ptr.25 = internal global ptr @mtk_cqdma_probe._entry.23, section ".printk_index", align 4
@mtk_cqdma_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 873, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"MediaTek CQDMA HW initialization failed %d\0A\00", [52 x i8] zeroinitializer }, align 32
@mtk_cqdma_probe._entry_ptr.28 = internal global ptr @mtk_cqdma_probe._entry.26, section ".printk_index", align 4
@mtk_cqdma_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.3, ptr @.str.4, i32 883, ptr @.str.10, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MediaTek CQDMA driver registered\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_cqdma_probe._entry_ptr.31 = internal global ptr @mtk_cqdma_probe._entry.29, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@mtk_cqdma_free_chan_resources._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.4, i32 675, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"cqdma flush timeout\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"mtk_cqdma_free_chan_resources\00", [34 x i8] zeroinitializer }, align 32
@mtk_cqdma_free_chan_resources._entry_ptr = internal global ptr @mtk_cqdma_free_chan_resources._entry, section ".printk_index", align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@mtk_cqdma_start._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.34, ptr @.str.35, ptr @.str.4, i32 236, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"cqdma wait transaction timeout\0A\00", [32 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_cqdma_start\00", [16 x i8] zeroinitializer }, align 32
@mtk_cqdma_start._entry_ptr = internal global ptr @mtk_cqdma_start._entry, section ".printk_index", align 4
@mtk_cqdma_start._entry.36 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.37, ptr @.str.35, ptr @.str.4, i32 241, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cqdma warm reset timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@mtk_cqdma_start._entry_ptr.38 = internal global ptr @mtk_cqdma_start._entry.36, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@mtk_cqdma_free_active_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.39 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Desc pending still in list desc_completed\0A\00", [53 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.40 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mtk_cqdma_hw_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.42, ptr @.str.4, i32 710, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"cqdma hard reset timeout\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.42 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"mtk_cqdma_hw_init\00", [46 x i8] zeroinitializer }, align 32
@mtk_cqdma_hw_init._entry_ptr = internal global ptr @mtk_cqdma_hw_init._entry, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.43, ptr @.str.44, ptr @.str.45, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.43 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.44 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/dma/mediatek/../virt-dma.h\00", [61 x i8] zeroinitializer }, align 32
@.str.45 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@mtk_cqdma_hw_deinit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.41, ptr @.str.46, ptr @.str.4, i32 733, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"mtk_cqdma_hw_deinit\00", [44 x i8] zeroinitializer }, align 32
@mtk_cqdma_hw_deinit._entry_ptr = internal global ptr @mtk_cqdma_hw_deinit._entry, section ".printk_index", align 4
@___asan_gen_.47 = private unnamed_addr constant [17 x i8] c"mtk_cqdma_driver\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 930, i32 31 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 934, i32 21 }
@___asan_gen_.53 = private unnamed_addr constant [16 x i8] c"mtk_cqdma_match\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 743, i32 34 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 764, i32 40 }
@___asan_gen_.76 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 766, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 788, i32 13 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 790, i32 3 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 798, i32 13 }
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 800, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 820, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 829, i32 4 }
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 839, i32 4 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 865, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 872, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 883, i32 2 }
@___asan_gen_.142 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 675, i32 4 }
@___asan_gen_.151 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 236, i32 3 }
@___asan_gen_.157 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 241, i32 3 }
@___asan_gen_.160 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 598, i32 2 }
@___asan_gen_.161 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.165 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.166 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.165, i32 87, i32 2 }
@___asan_gen_.175 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 710, i32 4 }
@___asan_gen_.183 = private unnamed_addr constant [38 x i8] c"../drivers/dma/mediatek/../virt-dma.h\00", align 1
@___asan_gen_.184 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.183, i32 101, i32 2 }
@___asan_gen_.185 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.188 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.189 = private constant [36 x i8] c"../drivers/dma/mediatek/mtk-cqdma.c\00", align 1
@___asan_gen_.190 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.189, i32 733, i32 4 }
@llvm.compiler.used = appending global [68 x ptr] [ptr @__UNIQUE_ID_author243, ptr @__UNIQUE_ID_description242, ptr @__UNIQUE_ID_file244, ptr @__UNIQUE_ID_license245, ptr @__exitcall_mtk_cqdma_driver_exit, ptr @__initcall__kmod_mtk_cqdma__241_938_mtk_cqdma_driver_init6, ptr @mtk_cqdma_driver_exit, ptr @mtk_cqdma_free_chan_resources._entry, ptr @mtk_cqdma_free_chan_resources._entry_ptr, ptr @mtk_cqdma_hw_deinit._entry, ptr @mtk_cqdma_hw_deinit._entry_ptr, ptr @mtk_cqdma_hw_init._entry, ptr @mtk_cqdma_hw_init._entry_ptr, ptr @mtk_cqdma_probe._entry, ptr @mtk_cqdma_probe._entry.13, ptr @mtk_cqdma_probe._entry.17, ptr @mtk_cqdma_probe._entry.20, ptr @mtk_cqdma_probe._entry.23, ptr @mtk_cqdma_probe._entry.26, ptr @mtk_cqdma_probe._entry.29, ptr @mtk_cqdma_probe._entry.8, ptr @mtk_cqdma_probe._entry_ptr, ptr @mtk_cqdma_probe._entry_ptr.11, ptr @mtk_cqdma_probe._entry_ptr.15, ptr @mtk_cqdma_probe._entry_ptr.19, ptr @mtk_cqdma_probe._entry_ptr.22, ptr @mtk_cqdma_probe._entry_ptr.25, ptr @mtk_cqdma_probe._entry_ptr.28, ptr @mtk_cqdma_probe._entry_ptr.31, ptr @mtk_cqdma_start._entry, ptr @mtk_cqdma_start._entry.36, ptr @mtk_cqdma_start._entry_ptr, ptr @mtk_cqdma_start._entry_ptr.38, ptr @mtk_cqdma_driver, ptr @.str, ptr @mtk_cqdma_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.10, ptr @.str.12, ptr @.str.14, ptr @mtk_cqdma_probe.__key, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.39, ptr @init_completion.__key, ptr @.str.40, ptr @.str.41, ptr @.str.42, ptr @.str.43, ptr @.str.44, ptr @.str.45, ptr @.str.46], section "llvm.metadata"
@0 = internal global [48 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.76 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_probe._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_free_chan_resources._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_start._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.151 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_start._entry.36 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.160 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.166 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_hw_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.42 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.44 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.45 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.184 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_cqdma_hw_deinit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.188 to i32), i32 ptrtoint (ptr @___asan_gen_.189 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.190 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cqdma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_cqdma_driver, ptr noundef null) #9
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_cqdma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_cqdma_driver) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cqdma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 384, i32 noundef 3520) #9
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.1) #9
  %clk = getelementptr inbounds %struct.mtk_cqdma_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call2, ptr %clk, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %do.end, label %if.end11

do.end:                                           ; preds = %if.end
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %1 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %2, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end.dev_name.exit_crit_edge

do.end.dev_name.exit_crit_edge:                   ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end
  call void @__sanitizer_cov_trace_pc() #11
  %3 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %4, %if.end.i ], [ %2, %do.end.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, ptr noundef %retval.0.i) #12
  %5 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %clk, align 4
  %7 = ptrtoint ptr %6 to i32
  br label %cleanup

if.end11:                                         ; preds = %if.end
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #9
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 10
  %8 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 1, ptr %copy_align, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %9 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @mtk_cqdma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %10 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr @mtk_cqdma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %11 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr @mtk_cqdma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %12 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @mtk_cqdma_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %13 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @mtk_cqdma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %14 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @mtk_cqdma_terminate_all, ptr %device_terminate_all, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %15 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 16, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %16 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 16, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %17 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 1, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %18 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %18)
  store i32 1, ptr %residue_granularity, align 4
  %dev13 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %19 = ptrtoint ptr %dev13 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %dev, ptr %dev13, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %20 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %20)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %21 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %channels, ptr %prev.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %22 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %of_node, align 8
  %tobool15.not = icmp eq ptr %23, null
  br i1 %tobool15.not, label %if.end11.if.end41_crit_edge, label %land.lhs.true

if.end11.if.end41_crit_edge:                      ; preds = %if.end11
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true:                                    ; preds = %if.end11
  %dma_requests = getelementptr inbounds %struct.mtk_cqdma_device, ptr %call.i, i32 0, i32 2
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %23, ptr noundef nonnull @.str.7, ptr noundef %dma_requests, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool19.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool19.not, label %land.lhs.true.if.end26_crit_edge, label %do.end23

land.lhs.true.if.end26_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end26

do.end23:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.9, i32 noundef 32) #12
  %24 = ptrtoint ptr %dma_requests to i32
  call void @__asan_store4_noabort(i32 %24)
  store i32 32, ptr %dma_requests, align 4
  br label %if.end26

if.end26:                                         ; preds = %do.end23, %land.lhs.true.if.end26_crit_edge
  %25 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %25)
  %.pr = load ptr, ptr %of_node, align 8
  %tobool29.not = icmp eq ptr %.pr, null
  br i1 %tobool29.not, label %if.end26.if.end41_crit_edge, label %land.lhs.true30

if.end26.if.end41_crit_edge:                      ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

land.lhs.true30:                                  ; preds = %if.end26
  %dma_channels = getelementptr inbounds %struct.mtk_cqdma_device, ptr %call.i, i32 0, i32 3
  %call.i.i272 = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %.pr, ptr noundef nonnull @.str.12, ptr noundef %dma_channels, i32 noundef 1, i32 noundef 0) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i272)
  %tobool34.not = icmp sgt i32 %call.i.i272, -1
  br i1 %tobool34.not, label %land.lhs.true30.if.end41_crit_edge, label %do.end38

land.lhs.true30.if.end41_crit_edge:               ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end41

do.end38:                                         ; preds = %land.lhs.true30
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.14, i32 noundef 3) #12
  %26 = ptrtoint ptr %dma_channels to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 3, ptr %dma_channels, align 4
  br label %if.end41

if.end41:                                         ; preds = %do.end38, %land.lhs.true30.if.end41_crit_edge, %if.end26.if.end41_crit_edge, %if.end11.if.end41_crit_edge
  %dma_channels43 = getelementptr inbounds %struct.mtk_cqdma_device, ptr %call.i, i32 0, i32 3
  %27 = ptrtoint ptr %dma_channels43 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %dma_channels43, align 4
  %29 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %28, i32 4) #9
  %30 = extractvalue { i32, i1 } %29, 1
  br i1 %30, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !105

devm_kcalloc.exit.thread:                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #11
  %pc295 = getelementptr inbounds %struct.mtk_cqdma_device, ptr %call.i, i32 0, i32 5
  %31 = ptrtoint ptr %pc295 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr null, ptr %pc295, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end41
  %32 = extractvalue { i32, i1 } %29, 0
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %32, i32 noundef 3520) #9
  %pc = getelementptr inbounds %struct.mtk_cqdma_device, ptr %call.i, i32 0, i32 5
  %33 = ptrtoint ptr %pc to i32
  call void @__asan_store4_noabort(i32 %33)
  store ptr %call5.i.i, ptr %pc, align 4
  %tobool46.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool46.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %34 = ptrtoint ptr %dma_channels43 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %dma_channels43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp302.not = icmp eq i32 %35, 0
  br i1 %cmp302.not, label %for.cond.preheader.for.end_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %init_name.i283 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  br label %for.body

for.cond:                                         ; preds = %dev_name.exit287
  %inc = add nuw i32 %i.0303, 1
  %36 = ptrtoint ptr %dma_channels43 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load i32, ptr %dma_channels43, align 4
  %cmp = icmp ult i32 %inc, %37
  br i1 %cmp, label %for.cond.for.body_crit_edge, label %for.cond.for.end_crit_edge

for.cond.for.end_crit_edge:                       ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.cond.for.body_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.body:                                         ; preds = %for.cond.for.body_crit_edge, %for.body.lr.ph
  %i.0303 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.cond.for.body_crit_edge ]
  %call5.i.i273 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 88, i32 noundef 3520) #9
  %38 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %pc, align 4
  %arrayidx = getelementptr ptr, ptr %39, i32 %i.0303
  %40 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %call5.i.i273, ptr %arrayidx, align 4
  %41 = load ptr, ptr %pc, align 4
  %arrayidx54 = getelementptr ptr, ptr %41, i32 %i.0303
  %42 = ptrtoint ptr %arrayidx54 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx54, align 4
  %tobool55.not = icmp eq ptr %43, null
  br i1 %tobool55.not, label %for.body.cleanup_crit_edge, label %if.end57

for.body.cleanup_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end57:                                         ; preds = %for.body
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store volatile ptr %43, ptr %43, align 4
  %prev.i276 = getelementptr inbounds %struct.list_head, ptr %43, i32 0, i32 1
  %45 = ptrtoint ptr %prev.i276 to i32
  call void @__asan_store4_noabort(i32 %45)
  store ptr %43, ptr %prev.i276, align 4
  %46 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %pc, align 4
  %arrayidx62 = getelementptr ptr, ptr %47, i32 %i.0303
  %48 = ptrtoint ptr %arrayidx62 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx62, align 4
  %lock = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %49, i32 0, i32 5
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.16, ptr noundef nonnull @mtk_cqdma_probe.__key, i16 noundef signext 3) #9
  %50 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %pc, align 4
  %arrayidx67 = getelementptr ptr, ptr %51, i32 %i.0303
  %52 = ptrtoint ptr %arrayidx67 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %arrayidx67, align 4
  %refcnt = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %53, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  %54 = ptrtoint ptr %refcnt to i32
  call void @__asan_store4_noabort(i32 %54)
  store volatile i32 0, ptr %refcnt, align 4
  %call68 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef %i.0303) #9
  %55 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %pc, align 4
  %arrayidx70 = getelementptr ptr, ptr %56, i32 %i.0303
  %57 = ptrtoint ptr %arrayidx70 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %arrayidx70, align 4
  %base = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %58, i32 0, i32 1
  %59 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call68, ptr %base, align 4
  %60 = load ptr, ptr %pc, align 4
  %arrayidx72 = getelementptr ptr, ptr %60, i32 %i.0303
  %61 = ptrtoint ptr %arrayidx72 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %arrayidx72, align 4
  %base73 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %base73 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %base73, align 4
  %cmp.i277 = icmp ugt ptr %64, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i277, label %if.then75, label %if.end80

if.then75:                                        ; preds = %if.end57
  call void @__sanitizer_cov_trace_pc() #11
  %65 = ptrtoint ptr %64 to i32
  br label %cleanup

if.end80:                                         ; preds = %if.end57
  %call81 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef %i.0303) #9
  %tobool82.not = icmp eq ptr %call81, null
  br i1 %tobool82.not, label %do.end86, label %if.end90

do.end86:                                         ; preds = %if.end80
  %66 = ptrtoint ptr %init_name.i283 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %init_name.i283, align 8
  %tobool.not.i279 = icmp eq ptr %67, null
  br i1 %tobool.not.i279, label %if.end.i280, label %do.end86.dev_name.exit282_crit_edge

do.end86.dev_name.exit282_crit_edge:              ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit282

if.end.i280:                                      ; preds = %do.end86
  call void @__sanitizer_cov_trace_pc() #11
  %68 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev, align 4
  br label %dev_name.exit282

dev_name.exit282:                                 ; preds = %if.end.i280, %do.end86.dev_name.exit282_crit_edge
  %retval.0.i281 = phi ptr [ %69, %if.end.i280 ], [ %67, %do.end86.dev_name.exit282_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.18, ptr noundef %retval.0.i281) #12
  br label %cleanup

if.end90:                                         ; preds = %if.end80
  %70 = ptrtoint ptr %call81 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %call81, align 4
  %72 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %pc, align 4
  %arrayidx92 = getelementptr ptr, ptr %73, i32 %i.0303
  %74 = ptrtoint ptr %arrayidx92 to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %arrayidx92, align 4
  %irq = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %75, i32 0, i32 2
  %76 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %76)
  store i32 %71, ptr %irq, align 4
  %77 = load ptr, ptr %pc, align 4
  %arrayidx95 = getelementptr ptr, ptr %77, i32 %i.0303
  %78 = ptrtoint ptr %arrayidx95 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %arrayidx95, align 4
  %irq96 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %79, i32 0, i32 2
  %80 = ptrtoint ptr %irq96 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %irq96, align 4
  %82 = ptrtoint ptr %init_name.i283 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %init_name.i283, align 8
  %tobool.not.i284 = icmp eq ptr %83, null
  br i1 %tobool.not.i284, label %if.end.i285, label %if.end90.dev_name.exit287_crit_edge

if.end90.dev_name.exit287_crit_edge:              ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  br label %dev_name.exit287

if.end.i285:                                      ; preds = %if.end90
  call void @__sanitizer_cov_trace_pc() #11
  %84 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %dev, align 4
  br label %dev_name.exit287

dev_name.exit287:                                 ; preds = %if.end.i285, %if.end90.dev_name.exit287_crit_edge
  %retval.0.i286 = phi ptr [ %85, %if.end.i285 ], [ %83, %if.end90.dev_name.exit287_crit_edge ]
  %call.i288 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %81, ptr noundef nonnull @mtk_cqdma_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i286, ptr noundef %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i288)
  %tobool100.not = icmp eq i32 %call.i288, 0
  br i1 %tobool100.not, label %for.cond, label %do.end104

do.end104:                                        ; preds = %dev_name.exit287
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.21, i32 noundef %call.i288) #12
  br label %cleanup

for.end:                                          ; preds = %for.cond.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %dma_requests108 = getelementptr inbounds %struct.mtk_cqdma_device, ptr %call.i, i32 0, i32 2
  %86 = ptrtoint ptr %dma_requests108 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %dma_requests108, align 4
  %88 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %87, i32 244) #9
  %89 = extractvalue { i32, i1 } %88, 1
  br i1 %89, label %devm_kcalloc.exit292.thread, label %devm_kcalloc.exit292, !prof !105

devm_kcalloc.exit292.thread:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  %vc110298 = getelementptr inbounds %struct.mtk_cqdma_device, ptr %call.i, i32 0, i32 4
  %90 = ptrtoint ptr %vc110298 to i32
  call void @__asan_store4_noabort(i32 %90)
  store ptr null, ptr %vc110298, align 4
  br label %cleanup

devm_kcalloc.exit292:                             ; preds = %for.end
  %91 = extractvalue { i32, i1 } %88, 0
  %call5.i.i289 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %91, i32 noundef 3520) #9
  %vc110 = getelementptr inbounds %struct.mtk_cqdma_device, ptr %call.i, i32 0, i32 4
  %92 = ptrtoint ptr %vc110 to i32
  call void @__asan_store4_noabort(i32 %92)
  store ptr %call5.i.i289, ptr %vc110, align 4
  %tobool112.not = icmp eq ptr %call5.i.i289, null
  br i1 %tobool112.not, label %devm_kcalloc.exit292.cleanup_crit_edge, label %for.cond115.preheader

devm_kcalloc.exit292.cleanup_crit_edge:           ; preds = %devm_kcalloc.exit292
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond115.preheader:                            ; preds = %devm_kcalloc.exit292
  %93 = ptrtoint ptr %dma_requests108 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load i32, ptr %dma_requests108, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %94)
  %cmp117304.not = icmp eq i32 %94, 0
  br i1 %cmp117304.not, label %for.cond115.preheader.for.end125_crit_edge, label %for.cond115.preheader.for.body118_crit_edge

for.cond115.preheader.for.body118_crit_edge:      ; preds = %for.cond115.preheader
  br label %for.body118

for.cond115.preheader.for.end125_crit_edge:       ; preds = %for.cond115.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end125

for.body118:                                      ; preds = %for.body118.for.body118_crit_edge, %for.cond115.preheader.for.body118_crit_edge
  %i.1305 = phi i32 [ %inc124, %for.body118.for.body118_crit_edge ], [ 0, %for.cond115.preheader.for.body118_crit_edge ]
  %95 = ptrtoint ptr %vc110 to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %vc110, align 4
  %arrayidx120 = getelementptr %struct.mtk_cqdma_vchan, ptr %96, i32 %i.1305
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx120, i32 0, i32 2
  %97 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %97)
  store ptr @mtk_cqdma_vdesc_free, ptr %desc_free, align 4
  tail call void @vchan_init(ptr noundef %arrayidx120, ptr noundef nonnull %call.i) #9
  %issue_completion = getelementptr %struct.mtk_cqdma_vchan, ptr %96, i32 %i.1305, i32 2
  %98 = ptrtoint ptr %issue_completion to i32
  call void @__asan_store4_noabort(i32 %98)
  store i32 0, ptr %issue_completion, align 4
  %wait.i = getelementptr %struct.mtk_cqdma_vchan, ptr %96, i32 %i.1305, i32 2, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.40, ptr noundef nonnull @init_completion.__key) #9
  %inc124 = add nuw i32 %i.1305, 1
  %99 = ptrtoint ptr %dma_requests108 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load i32, ptr %dma_requests108, align 4
  %cmp117 = icmp ult i32 %inc124, %100
  br i1 %cmp117, label %for.body118.for.body118_crit_edge, label %for.body118.for.end125_crit_edge

for.body118.for.end125_crit_edge:                 ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end125

for.body118.for.body118_crit_edge:                ; preds = %for.body118
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body118

for.end125:                                       ; preds = %for.body118.for.end125_crit_edge, %for.cond115.preheader.for.end125_crit_edge
  %call126 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call126)
  %tobool127.not = icmp eq i32 %call126, 0
  br i1 %tobool127.not, label %if.end129, label %for.end125.cleanup_crit_edge

for.end125.cleanup_crit_edge:                     ; preds = %for.end125
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end129:                                        ; preds = %for.end125
  %101 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %of_node, align 8
  %call132 = tail call i32 @of_dma_controller_register(ptr noundef %102, ptr noundef nonnull @of_dma_xlate_by_chan_id, ptr noundef nonnull %call.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call132)
  %tobool133.not = icmp eq i32 %call132, 0
  br i1 %tobool133.not, label %if.end139, label %do.end137

do.end137:                                        ; preds = %if.end129
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.24, i32 noundef %call132) #12
  br label %err_unregister

if.end139:                                        ; preds = %if.end129
  %call140 = tail call fastcc i32 @mtk_cqdma_hw_init(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call140)
  %tobool141.not = icmp eq i32 %call140, 0
  br i1 %tobool141.not, label %if.end147, label %do.end145

do.end145:                                        ; preds = %if.end139
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %call140) #12
  br label %err_unregister

if.end147:                                        ; preds = %if.end139
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %103 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %104 = ptrtoint ptr %dma_channels43 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load i32, ptr %dma_channels43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %105)
  %cmp150306.not = icmp eq i32 %105, 0
  br i1 %cmp150306.not, label %if.end147.do.end159_crit_edge, label %if.end147.for.body151_crit_edge

if.end147.for.body151_crit_edge:                  ; preds = %if.end147
  br label %for.body151

if.end147.do.end159_crit_edge:                    ; preds = %if.end147
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end159

for.body151:                                      ; preds = %for.body151.for.body151_crit_edge, %if.end147.for.body151_crit_edge
  %i.2307 = phi i32 [ %inc155, %for.body151.for.body151_crit_edge ], [ 0, %if.end147.for.body151_crit_edge ]
  %106 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %pc, align 4
  %arrayidx153 = getelementptr ptr, ptr %107, i32 %i.2307
  %108 = ptrtoint ptr %arrayidx153 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx153, align 4
  %tasklet = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %109, i32 0, i32 4
  tail call void @tasklet_setup(ptr noundef %tasklet, ptr noundef nonnull @mtk_cqdma_tasklet_cb) #9
  %inc155 = add nuw i32 %i.2307, 1
  %110 = ptrtoint ptr %dma_channels43 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %dma_channels43, align 4
  %cmp150 = icmp ult i32 %inc155, %111
  br i1 %cmp150, label %for.body151.for.body151_crit_edge, label %for.body151.do.end159_crit_edge

for.body151.do.end159_crit_edge:                  ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.end159

for.body151.for.body151_crit_edge:                ; preds = %for.body151
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body151

do.end159:                                        ; preds = %for.body151.do.end159_crit_edge, %if.end147.do.end159_crit_edge
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.30) #12
  br label %cleanup

err_unregister:                                   ; preds = %do.end145, %do.end137
  %err.0 = phi i32 [ %call132, %do.end137 ], [ %call140, %do.end145 ]
  tail call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #9
  br label %cleanup

cleanup:                                          ; preds = %err_unregister, %do.end159, %for.end125.cleanup_crit_edge, %devm_kcalloc.exit292.cleanup_crit_edge, %devm_kcalloc.exit292.thread, %do.end104, %dev_name.exit282, %if.then75, %for.body.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %dev_name.exit, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %7, %dev_name.exit ], [ %65, %if.then75 ], [ -22, %do.end104 ], [ -22, %dev_name.exit282 ], [ %err.0, %err_unregister ], [ 0, %do.end159 ], [ -12, %entry.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit292.cleanup_crit_edge ], [ %call126, %for.end125.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ], [ -12, %devm_kcalloc.exit292.thread ], [ -12, %for.body.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cqdma_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dma_requests = getelementptr inbounds %struct.mtk_cqdma_device, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp47.not = icmp eq i32 %3, 0
  br i1 %cmp47.not, label %entry.for.cond4.preheader_crit_edge, label %for.body.lr.ph

entry.for.cond4.preheader_crit_edge:              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond4.preheader

for.body.lr.ph:                                   ; preds = %entry
  %vc1 = getelementptr inbounds %struct.mtk_cqdma_device, ptr %1, i32 0, i32 4
  br label %for.body

for.cond4.preheader:                              ; preds = %list_del.exit.for.cond4.preheader_crit_edge, %entry.for.cond4.preheader_crit_edge
  %dma_channels = getelementptr inbounds %struct.mtk_cqdma_device, ptr %1, i32 0, i32 3
  %4 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %dma_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %5)
  %cmp549.not = icmp eq i32 %5, 0
  br i1 %cmp549.not, label %for.cond4.preheader.mtk_cqdma_hw_deinit.exit_crit_edge, label %do.body7.lr.ph

for.cond4.preheader.mtk_cqdma_hw_deinit.exit_crit_edge: ; preds = %for.cond4.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_cqdma_hw_deinit.exit

do.body7.lr.ph:                                   ; preds = %for.cond4.preheader
  %pc = getelementptr inbounds %struct.mtk_cqdma_device, ptr %1, i32 0, i32 5
  br label %do.body7

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %i.048 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_del.exit.for.body_crit_edge ]
  %6 = ptrtoint ptr %vc1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %vc1, align 4
  %arrayidx = getelementptr %struct.mtk_cqdma_vchan, ptr %7, i32 %i.048
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node) #9
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %device_node, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %device_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %device_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %14 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %device_node, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %task = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task) #9
  %inc = add nuw i32 %i.048, 1
  %16 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %dma_requests, align 4
  %cmp = icmp ult i32 %inc, %17
  br i1 %cmp, label %list_del.exit.for.body_crit_edge, label %list_del.exit.for.cond4.preheader_crit_edge

list_del.exit.for.cond4.preheader_crit_edge:      ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond4.preheader

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

do.body7:                                         ; preds = %do.body7.do.body7_crit_edge, %do.body7.lr.ph
  %i.150 = phi i32 [ 0, %do.body7.lr.ph ], [ %inc24, %do.body7.do.body7_crit_edge ]
  %18 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pc, align 4
  %arrayidx9 = getelementptr ptr, ptr %19, i32 %i.150
  %20 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx9, align 4
  %lock = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %21, i32 0, i32 5
  %call11 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %22 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %pc, align 4
  %arrayidx15 = getelementptr ptr, ptr %23, i32 %i.150
  %24 = ptrtoint ptr %arrayidx15 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx15, align 4
  %base.i.i.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %25, i32 0, i32 1
  %26 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %27, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %29 = and i32 %28, -16777217
  %30 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %29) #9, !srcloc !108
  %32 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pc, align 4
  %arrayidx17 = getelementptr ptr, ptr %33, i32 %i.150
  %34 = ptrtoint ptr %arrayidx17 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %arrayidx17, align 4
  %lock18 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %35, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock18, i32 noundef %call11) #9
  %36 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pc, align 4
  %arrayidx20 = getelementptr ptr, ptr %37, i32 %i.150
  %38 = ptrtoint ptr %arrayidx20 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %arrayidx20, align 4
  %irq = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %39, i32 0, i32 2
  %40 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %41) #9
  %42 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %pc, align 4
  %arrayidx22 = getelementptr ptr, ptr %43, i32 %i.150
  %44 = ptrtoint ptr %arrayidx22 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %arrayidx22, align 4
  %tasklet = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %45, i32 0, i32 4
  tail call void @tasklet_kill(ptr noundef %tasklet) #9
  %inc24 = add nuw i32 %i.150, 1
  %46 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %dma_channels, align 4
  %cmp5 = icmp ult i32 %inc24, %47
  br i1 %cmp5, label %do.body7.do.body7_crit_edge, label %for.end25

do.body7.do.body7_crit_edge:                      ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

for.end25:                                        ; preds = %do.body7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %phi.cmp = icmp eq i32 %47, 0
  br i1 %phi.cmp, label %for.end25.mtk_cqdma_hw_deinit.exit_crit_edge, label %do.body1.lr.ph.i

for.end25.mtk_cqdma_hw_deinit.exit_crit_edge:     ; preds = %for.end25
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_cqdma_hw_deinit.exit

do.body1.lr.ph.i:                                 ; preds = %for.end25
  %pc.i = getelementptr inbounds %struct.mtk_cqdma_device, ptr %1, i32 0, i32 5
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  br label %do.body1.i

do.body1.i:                                       ; preds = %if.end.i.do.body1.i_crit_edge, %do.body1.lr.ph.i
  %i.035.i = phi i32 [ 0, %do.body1.lr.ph.i ], [ %inc.i, %if.end.i.do.body1.i_crit_edge ]
  %48 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pc.i, align 4
  %arrayidx.i = getelementptr ptr, ptr %49, i32 %i.035.i
  %50 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %arrayidx.i, align 4
  %lock.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %51, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %52 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %pc.i, align 4
  %arrayidx7.i = getelementptr ptr, ptr %53, i32 %i.035.i
  %54 = ptrtoint ptr %arrayidx7.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx7.i, align 4
  %call8.i = tail call fastcc i32 @mtk_cqdma_hard_reset(ptr noundef %55) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call8.i)
  %cmp9.i = icmp slt i32 %call8.i, 0
  br i1 %cmp9.i, label %do.end13.i, label %do.body1.i.if.end.i_crit_edge

do.body1.i.if.end.i_crit_edge:                    ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end13.i:                                       ; preds = %do.body1.i
  call void @__sanitizer_cov_trace_pc() #11
  %56 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %dev.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %57, ptr noundef nonnull @.str.41) #12
  br label %if.end.i

if.end.i:                                         ; preds = %do.end13.i, %do.body1.i.if.end.i_crit_edge
  %58 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %pc.i, align 4
  %arrayidx16.i = getelementptr ptr, ptr %59, i32 %i.035.i
  %60 = ptrtoint ptr %arrayidx16.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx16.i, align 4
  %lock17.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %61, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock17.i, i32 noundef %call3.i) #9
  %inc.i = add nuw i32 %i.035.i, 1
  %62 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %dma_channels, align 4
  %cmp.i = icmp ult i32 %inc.i, %63
  br i1 %cmp.i, label %if.end.i.do.body1.i_crit_edge, label %if.end.i.mtk_cqdma_hw_deinit.exit_crit_edge

if.end.i.mtk_cqdma_hw_deinit.exit_crit_edge:      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_cqdma_hw_deinit.exit

if.end.i.do.body1.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body1.i

mtk_cqdma_hw_deinit.exit:                         ; preds = %if.end.i.mtk_cqdma_hw_deinit.exit_crit_edge, %for.end25.mtk_cqdma_hw_deinit.exit_crit_edge, %for.cond4.preheader.mtk_cqdma_hw_deinit.exit_crit_edge
  %clk.i = getelementptr inbounds %struct.mtk_cqdma_device, ptr %1, i32 0, i32 1
  %64 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %65) #9
  tail call void @clk_unprepare(ptr noundef %65) #9
  %dev.i32.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %66 = ptrtoint ptr %dev.i32.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %dev.i32.i, align 4
  %call.i.i46 = tail call i32 @__pm_runtime_idle(ptr noundef %67, i32 noundef 4) #9
  %68 = ptrtoint ptr %dev.i32.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %dev.i32.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %69, i1 noundef zeroext true) #9
  tail call void @dma_async_device_unregister(ptr noundef %1) #9
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %70 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %71) #9
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cqdma_alloc_chan_resources(ptr nocapture noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %dma_channels = getelementptr inbounds %struct.mtk_cqdma_device, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp49.not = icmp eq i32 %3, 0
  br i1 %cmp49.not, label %entry.cleanup_crit_edge, label %for.body.lr.ph

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body.lr.ph:                                   ; preds = %entry
  %pc2 = getelementptr inbounds %struct.mtk_cqdma_device, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %min_refcnt.053 = phi i32 [ -1, %for.body.lr.ph ], [ %min_refcnt.1, %for.inc.for.body_crit_edge ]
  %i.051 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %pc.050 = phi ptr [ null, %for.body.lr.ph ], [ %pc.1, %for.inc.for.body_crit_edge ]
  %4 = ptrtoint ptr %pc2 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pc2, align 4
  %arrayidx = getelementptr ptr, ptr %5, i32 %i.051
  %6 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx, align 4
  %refcnt3 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %7, i32 0, i32 3
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt3, i32 noundef 4) #9
  %8 = ptrtoint ptr %refcnt3 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %refcnt3, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %9, i32 %min_refcnt.053)
  %cmp5 = icmp ult i32 %9, %min_refcnt.053
  br i1 %cmp5, label %if.then, label %for.body.for.inc_crit_edge

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %10 = ptrtoint ptr %pc2 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pc2, align 4
  %arrayidx7 = getelementptr ptr, ptr %11, i32 %i.051
  %12 = ptrtoint ptr %arrayidx7 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %arrayidx7, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.then, %for.body.for.inc_crit_edge
  %pc.1 = phi ptr [ %13, %if.then ], [ %pc.050, %for.body.for.inc_crit_edge ]
  %min_refcnt.1 = phi i32 [ %9, %if.then ], [ %min_refcnt.053, %for.body.for.inc_crit_edge ]
  %inc = add nuw i32 %i.051, 1
  %14 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_channels, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc
  %tobool.not = icmp eq ptr %pc.1, null
  br i1 %tobool.not, label %for.end.cleanup_crit_edge, label %do.body10

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body10:                                        ; preds = %for.end
  %lock = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %pc.1, i32 0, i32 5
  %call13 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %refcnt16 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %pc.1, i32 0, i32 3
  %call.i.i.i47 = tail call zeroext i1 @__kasan_check_read(ptr noundef %refcnt16, i32 noundef 4) #9
  %16 = ptrtoint ptr %refcnt16 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load volatile i32, ptr %refcnt16, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %17)
  %tobool18.not = icmp eq i32 %17, 0
  br i1 %tobool18.not, label %if.then19, label %if.else

if.then19:                                        ; preds = %do.body10
  call void @__sanitizer_cov_trace_pc() #11
  %call20 = tail call fastcc i32 @mtk_cqdma_hard_reset(ptr noundef nonnull %pc.1)
  %base.i.i.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %pc.1, i32 0, i32 1
  %18 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %19, i32 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %21 = or i32 %20, 16777216
  %22 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %23, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %21) #9, !srcloc !108
  %call.i.i.i48 = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt16, i32 noundef 4) #9
  %24 = ptrtoint ptr %refcnt16 to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile i32 1, ptr %refcnt16, align 4
  br label %if.end23

if.else:                                          ; preds = %do.body10
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt16, i32 noundef 4) #9
  tail call void @llvm.prefetch.p0(ptr %refcnt16, i32 1, i32 3, i32 1) #9
  %25 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt16, ptr %refcnt16, i32 1, ptr elementtype(i32) %refcnt16) #9, !srcloc !109
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %25, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.else.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !105

if.else.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.else
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %26 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %26)
  %.not.i.i.i = icmp sgt i32 %26, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.if.end23_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !110

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.if.end23_crit_edge:                 ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %refcnt16, i32 noundef %.sink.i.i.i) #9
  br label %if.end23

if.end23:                                         ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.if.end23_crit_edge, %if.then19
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call13) #9
  %pc25 = getelementptr inbounds %struct.mtk_cqdma_vchan, ptr %c, i32 0, i32 1
  %27 = ptrtoint ptr %pc25 to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %pc.1, ptr %pc25, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end23, %for.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end23 ], [ -28, %for.end.cleanup_crit_edge ], [ -28, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_cqdma_free_chan_resources(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call1 = tail call i32 @mtk_cqdma_terminate_all(ptr noundef %c)
  %pc = getelementptr inbounds %struct.mtk_cqdma_vchan, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pc, align 4
  %lock = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %1, i32 0, i32 5
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %2 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pc, align 4
  %refcnt = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %3, i32 0, i32 3
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %refcnt, i32 noundef 4) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !111
  tail call void @llvm.prefetch.p0(ptr %refcnt, i32 1, i32 3, i32 1) #9
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %refcnt, ptr %refcnt, i32 1, ptr elementtype(i32) %refcnt) #9, !srcloc !112
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.then, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.if.end23_crit_edge, label %if.then10.i.i.i, !prof !110

if.end5.i.i.i.if.end23_crit_edge:                 ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end23

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @refcount_warn_saturate(ptr noundef %refcnt, i32 noundef 3) #9
  br label %if.end23

if.then:                                          ; preds = %entry
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #9, !srcloc !113
  %5 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pc, align 4
  %base.i.i.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %6, i32 0, i32 1
  %7 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %8, i32 20
  %9 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %10 = or i32 %9, 16777216
  %11 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %12, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %10) #9, !srcloc !108
  %13 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %pc, align 4
  %call36.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call36.i, 1000000
  %base41.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base41.i, align 4
  %add.ptr423.i = getelementptr i8, ptr %16, i32 8
  %17 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr423.i) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  %18 = and i32 %17, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %18)
  %tobool47.not5.i = icmp eq i32 %18, 0
  br i1 %tobool47.not5.i, label %if.then.if.end_crit_edge, label %if.then.land.lhs.true51.i_crit_edge

if.then.land.lhs.true51.i_crit_edge:              ; preds = %if.then
  br label %land.lhs.true51.i

if.then.if.end_crit_edge:                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true51.i:                                ; preds = %cond.false.i.land.lhs.true51.i_crit_edge, %if.then.land.lhs.true51.i_crit_edge
  %call52.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call52.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call52.i, %add.i.i
  br i1 %cmp3.i.i, label %cleanup.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true51.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %19 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %19(i32 noundef 2147480) #9
  %20 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base41.i, align 4
  %add.ptr42.i = getelementptr i8, ptr %21, i32 8
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  %23 = and i32 %22, 16777216
  %tobool47.not.i = icmp eq i32 %23, 0
  br i1 %tobool47.not.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true51.i_crit_edge

cond.false.i.land.lhs.true51.i_crit_edge:         ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true51.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cleanup.i:                                        ; preds = %land.lhs.true51.i
  %24 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base41.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %25, i32 8
  %26 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %27 = and i32 %26, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %27)
  %tobool74.not.i = icmp eq i32 %27, 0
  br i1 %tobool74.not.i, label %cleanup.i.if.end_crit_edge, label %do.end17

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end17:                                         ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %c, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %31, ptr noundef nonnull @.str.32) #12
  br label %if.end

if.end:                                           ; preds = %do.end17, %cleanup.i.if.end_crit_edge, %cond.false.i.if.end_crit_edge, %if.then.if.end_crit_edge
  %32 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %pc, align 4
  %base.i.i.i35 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %33, i32 0, i32 1
  %34 = ptrtoint ptr %base.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base.i.i.i35, align 4
  %add.ptr.i.i.i36 = getelementptr i8, ptr %35, i32 20
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i36) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %37 = and i32 %36, -16777217
  %38 = ptrtoint ptr %base.i.i.i35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %base.i.i.i35, align 4
  %add.ptr.i6.i.i37 = getelementptr i8, ptr %39, i32 20
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i37, i32 %37) #9, !srcloc !108
  %40 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pc, align 4
  %base.i.i.i38 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %41, i32 0, i32 1
  %42 = ptrtoint ptr %base.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i.i38, align 4
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %43) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %45 = and i32 %44, -16777217
  %46 = ptrtoint ptr %base.i.i.i38 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i.i38, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %47, i32 %45) #9, !srcloc !108
  %48 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %pc, align 4
  %base.i.i.i40 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %49, i32 0, i32 1
  %50 = ptrtoint ptr %base.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %base.i.i.i40, align 4
  %add.ptr.i.i.i41 = getelementptr i8, ptr %51, i32 4
  %52 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i41) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %53 = and i32 %52, -16777217
  %54 = ptrtoint ptr %base.i.i.i40 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %base.i.i.i40, align 4
  %add.ptr.i6.i.i43 = getelementptr i8, ptr %55, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i43, i32 %53) #9, !srcloc !108
  br label %if.end23

if.end23:                                         ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.if.end23_crit_edge
  %56 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %pc, align 4
  %lock25 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %57, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock25, i32 noundef %call4) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cqdma_tx_status(ptr noundef %c, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #9, !srcloc !116
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
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
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge39 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge39, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

if.else.i.i.do.body2_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body2

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i.do.body2_crit_edge, %if.then.i.i.do.body2_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %pc.i = getelementptr inbounds %struct.mtk_cqdma_vchan, ptr %c, i32 0, i32 1
  %8 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pc.i, align 4
  %lock.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %9, i32 0, i32 5
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %10 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %pc.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body2
  %.pn.in.i = phi ptr [ %11, %do.body2 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %12 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp10.not.i = icmp eq ptr %.pn.i, %11
  br i1 %cmp10.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %vd.0.i = getelementptr i8, ptr %.pn.i, i32 -108
  %13 = ptrtoint ptr %vd.0.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %vd.0.i, align 4
  %cmp13.i = icmp eq i32 %14, %cookie
  br i1 %cmp13.i, label %if.then.i29, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

if.then.i29:                                      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %lock16.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %11, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock16.i, i32 noundef %call3.i) #9
  br label %mtk_cqdma_find_active_desc.exit

for.end.i:                                        ; preds = %for.cond.i
  %lock23.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %11, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock23.i, i32 noundef %call3.i) #9
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  br label %for.cond28.i

for.cond28.i:                                     ; preds = %for.body35.i.for.cond28.i_crit_edge, %for.end.i
  %.pn66.in.i = phi ptr [ %desc_issued.i, %for.end.i ], [ %.pn66.i, %for.body35.i.for.cond28.i_crit_edge ]
  %15 = ptrtoint ptr %.pn66.in.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pn66.i = load ptr, ptr %.pn66.in.i, align 4
  %cmp32.not.i = icmp eq ptr %.pn66.i, %desc_issued.i
  br i1 %cmp32.not.i, label %mtk_cqdma_find_active_desc.exit.thread, label %for.body35.i

mtk_cqdma_find_active_desc.exit.thread:           ; preds = %for.cond28.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  br label %dma_set_residue.exit

for.body35.i:                                     ; preds = %for.cond28.i
  %vd.1.i = getelementptr i8, ptr %.pn66.i, i32 -108
  %16 = ptrtoint ptr %vd.1.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %vd.1.i, align 4
  %cmp38.i = icmp eq i32 %17, %cookie
  br i1 %cmp38.i, label %for.body35.i.mtk_cqdma_find_active_desc.exit_crit_edge, label %for.body35.i.for.cond28.i_crit_edge

for.body35.i.for.cond28.i_crit_edge:              ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond28.i

for.body35.i.mtk_cqdma_find_active_desc.exit_crit_edge: ; preds = %for.body35.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_cqdma_find_active_desc.exit

mtk_cqdma_find_active_desc.exit:                  ; preds = %for.body35.i.mtk_cqdma_find_active_desc.exit_crit_edge, %if.then.i29
  %.pn.i.pn = phi ptr [ %.pn.i, %if.then.i29 ], [ %.pn66.i, %for.body35.i.mtk_cqdma_find_active_desc.exit_crit_edge ]
  %retval.0.i = getelementptr i8, ptr %.pn.i.pn, i32 -108
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #9
  %tobool11.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool11.not, label %mtk_cqdma_find_active_desc.exit.dma_set_residue.exit_crit_edge, label %if.then12

mtk_cqdma_find_active_desc.exit.dma_set_residue.exit_crit_edge: ; preds = %mtk_cqdma_find_active_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %dma_set_residue.exit

if.then12:                                        ; preds = %mtk_cqdma_find_active_desc.exit
  call void @__sanitizer_cov_trace_pc() #11
  %residue = getelementptr i8, ptr %.pn.i.pn, i32 12
  %18 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %residue, align 4
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.then12, %mtk_cqdma_find_active_desc.exit.dma_set_residue.exit_crit_edge, %mtk_cqdma_find_active_desc.exit.thread
  %bytes.0 = phi i32 [ %19, %if.then12 ], [ 0, %mtk_cqdma_find_active_desc.exit.dma_set_residue.exit_crit_edge ], [ 0, %mtk_cqdma_find_active_desc.exit.thread ]
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %20 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %bytes.0, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i36.shrunk = phi i1 [ true, %dma_set_residue.exit ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i36 = zext i1 %retval.0.i.i36.shrunk to i32
  ret i32 %retval.0.i.i36
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_cqdma_issue_pending(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %pc = getelementptr inbounds %struct.mtk_cqdma_vchan, ptr %c, i32 0, i32 1
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %pc, align 4
  %lock = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %1, i32 0, i32 5
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %lock13 = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call15 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock13) #9
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %2 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %3, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6, i32 1
  %4 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %prev.i.i, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5, i32 1
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
  br i1 %cmp.i.i.not, label %vchan_issue_pending.exit.if.end_crit_edge, label %if.then

vchan_issue_pending.exit.if.end_crit_edge:        ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %vchan_issue_pending.exit
  %14 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pc, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %16 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %16)
  %tobool.not.i = icmp eq i32 %16, 0
  br i1 %tobool.not.i, label %if.then.if.end57.i_crit_edge, label %land.rhs.i

if.then.if.end57.i_crit_edge:                     ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

land.rhs.i:                                       ; preds = %if.then
  %dep_map.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3, i32 0, i32 0, i32 4
  %call.i.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp.not.i = icmp eq i32 %call.i.i, 0
  br i1 %cmp.not.i, label %do.end.i, label %land.rhs.i.if.end.i_crit_edge, !prof !105

land.rhs.i.if.end.i_crit_edge:                    ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end.i

do.end.i:                                         ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 273, i32 noundef 9, ptr noundef null) #9
  br label %if.end.i

if.end.i:                                         ; preds = %do.end.i, %land.rhs.i.if.end.i_crit_edge
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %.pr.i = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %.pr.i)
  %tobool27.not.i = icmp eq i32 %.pr.i, 0
  br i1 %tobool27.not.i, label %if.end.i.if.end57.i_crit_edge, label %land.rhs28.i

if.end.i.if.end57.i_crit_edge:                    ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

land.rhs28.i:                                     ; preds = %if.end.i
  %dep_map30.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %15, i32 0, i32 5, i32 0, i32 0, i32 4
  %call.i110.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map30.i, i32 noundef -1) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i110.i)
  %cmp32.not.i = icmp eq i32 %call.i110.i, 0
  br i1 %cmp32.not.i, label %do.end51.i, label %land.rhs28.i.if.end57.i_crit_edge, !prof !105

land.rhs28.i.if.end57.i_crit_edge:                ; preds = %land.rhs28.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end57.i

do.end51.i:                                       ; preds = %land.rhs28.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 274, i32 noundef 9, ptr noundef null) #9
  br label %if.end57.i

if.end57.i:                                       ; preds = %do.end51.i, %land.rhs28.i.if.end57.i_crit_edge, %if.end.i.if.end57.i_crit_edge, %if.then.if.end57.i_crit_edge
  %17 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %desc_issued.i, align 4
  %cmp76.not117.i = icmp eq ptr %18, %desc_issued.i
  br i1 %cmp76.not117.i, label %if.end57.i.if.end_crit_edge, label %for.body.lr.ph.i

if.end57.i.if.end_crit_edge:                      ; preds = %if.end57.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

for.body.lr.ph.i:                                 ; preds = %if.end57.i
  %prev.i.i32 = getelementptr inbounds %struct.list_head, ptr %15, i32 0, i32 1
  br label %for.body.i

for.body.i:                                       ; preds = %list_del.exit.i.for.body.i_crit_edge, %for.body.lr.ph.i
  %.pn.in119.i = phi ptr [ %18, %for.body.lr.ph.i ], [ %.pn123.i, %list_del.exit.i.for.body.i_crit_edge ]
  %trigger_engine.0.off0118.i = phi i1 [ false, %for.body.lr.ph.i ], [ %spec.select.i, %list_del.exit.i.for.body.i_crit_edge ]
  %vd.0122.i = getelementptr i8, ptr %.pn.in119.i, i32 -108
  %19 = ptrtoint ptr %.pn.in119.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %.pn123.i = load ptr, ptr %.pn.in119.i, align 4
  %20 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load volatile ptr, ptr %15, align 4
  %cmp.i.not.i = icmp eq ptr %21, %15
  %spec.select.i = select i1 %cmp.i.not.i, i1 true, i1 %trigger_engine.0.off0118.i
  %node84.i = getelementptr i8, ptr %.pn.in119.i, i32 28
  %22 = ptrtoint ptr %prev.i.i32 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %prev.i.i32, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node84.i, ptr noundef %23, ptr noundef %15) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.i.list_add_tail.exit.i_crit_edge

for.body.i.list_add_tail.exit.i_crit_edge:        ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  %24 = ptrtoint ptr %prev.i.i32 to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %node84.i, ptr %prev.i.i32, align 4
  %25 = ptrtoint ptr %node84.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %15, ptr %node84.i, align 4
  %prev3.i.i.i33 = getelementptr i8, ptr %.pn.in119.i, i32 32
  %26 = ptrtoint ptr %prev3.i.i.i33 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %23, ptr %prev3.i.i.i33, align 4
  %27 = ptrtoint ptr %23 to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %node84.i, ptr %23, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %for.body.i.list_add_tail.exit.i_crit_edge
  br i1 %spec.select.i, label %if.then87.i, label %list_add_tail.exit.i.if.end88.i_crit_edge

list_add_tail.exit.i.if.end88.i_crit_edge:        ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end88.i

if.then87.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mtk_cqdma_start(ptr noundef %15, ptr noundef %vd.0122.i) #9
  br label %if.end88.i

if.end88.i:                                       ; preds = %if.then87.i, %list_add_tail.exit.i.if.end88.i_crit_edge
  %call.i.i111.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in119.i) #9
  br i1 %call.i.i111.i, label %if.end.i.i112.i, label %if.end88.i.list_del.exit.i_crit_edge

if.end88.i.list_del.exit.i_crit_edge:             ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit.i

if.end.i.i112.i:                                  ; preds = %if.end88.i
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in119.i, i32 0, i32 1
  %28 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %prev.i.i.i, align 4
  %30 = ptrtoint ptr %.pn.in119.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %.pn.in119.i, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %31, i32 0, i32 1
  %32 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %29, ptr %prev1.i.i.i.i, align 4
  %33 = ptrtoint ptr %29 to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile ptr %31, ptr %29, align 4
  br label %list_del.exit.i

list_del.exit.i:                                  ; preds = %if.end.i.i112.i, %if.end88.i.list_del.exit.i_crit_edge
  %34 = ptrtoint ptr %.pn.in119.i to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr inttoptr (i32 256 to ptr), ptr %.pn.in119.i, align 4
  %prev.i113.i = getelementptr inbounds %struct.list_head, ptr %.pn.in119.i, i32 0, i32 1
  %35 = ptrtoint ptr %prev.i113.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i113.i, align 4
  %cmp76.not.i = icmp eq ptr %.pn123.i, %desc_issued.i
  br i1 %cmp76.not.i, label %list_del.exit.i.if.end_crit_edge, label %list_del.exit.i.for.body.i_crit_edge

list_del.exit.i.for.body.i_crit_edge:             ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body.i

list_del.exit.i.if.end_crit_edge:                 ; preds = %list_del.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.end:                                           ; preds = %list_del.exit.i.if.end_crit_edge, %if.end57.i.if.end_crit_edge, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock13, i32 noundef %call15) #9
  %36 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %pc, align 4
  %lock25 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %37, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock25, i32 noundef %call3) #9
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_cqdma_prep_dma_memcpy(ptr noundef %c, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %sub = add i32 %len, 268435454
  %div = udiv i32 %sub, 268435455
  %0 = shl nuw nsw i32 %div, 2
  %call8.i.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %0, i32 noundef 2304) #13
  %tobool.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %for.cond.preheader

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.cond.preheader:                               ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 268435455, i32 %sub)
  %1 = icmp ult i32 %sub, 268435455
  br i1 %1, label %for.cond.preheader.for.end35_crit_edge, label %for.body.lr.ph

for.cond.preheader.for.end35_crit_edge:           ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %umax = call i32 @llvm.umax.i32(i32 %div, i32 1)
  br label %for.body

for.body:                                         ; preds = %if.end28.for.body_crit_edge, %for.body.lr.ph
  %i.095 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end28.for.body_crit_edge ]
  %prev_tx.094 = phi ptr [ null, %for.body.lr.ph ], [ %call7.i.i, %if.end28.for.body_crit_edge ]
  %len.addr.092 = phi i32 [ %len, %for.body.lr.ph ], [ %sub33, %if.end28.for.body_crit_edge ]
  %src.addr.091 = phi i32 [ %src, %for.body.lr.ph ], [ %add31, %if.end28.for.body_crit_edge ]
  %dest.addr.090 = phi i32 [ %dest, %for.body.lr.ph ], [ %add32, %if.end28.for.body_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %2 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %2, i32 noundef 2304, i32 noundef 148) #14
  %arrayidx = getelementptr ptr, ptr %call8.i.i, i32 %i.095
  %3 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7.i.i, ptr %arrayidx, align 4
  %tobool3.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool3.not, label %for.cond5.preheader, label %if.end10

for.cond5.preheader:                              ; preds = %for.body
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.095)
  %cmp6.not96 = icmp eq i32 %i.095, 0
  br i1 %cmp6.not96, label %for.cond5.preheader.cleanup_crit_edge, label %for.cond5.preheader.for.body7_crit_edge

for.cond5.preheader.for.body7_crit_edge:          ; preds = %for.cond5.preheader
  br label %for.body7

for.cond5.preheader.cleanup_crit_edge:            ; preds = %for.cond5.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

for.body7:                                        ; preds = %for.body7.for.body7_crit_edge, %for.cond5.preheader.for.body7_crit_edge
  %i.197 = phi i32 [ %sub8, %for.body7.for.body7_crit_edge ], [ %i.095, %for.cond5.preheader.for.body7_crit_edge ]
  %sub8 = add nsw i32 %i.197, -1
  %arrayidx9 = getelementptr ptr, ptr %call8.i.i, i32 %sub8
  %4 = ptrtoint ptr %arrayidx9 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx9, align 4
  tail call void @kfree(ptr noundef %5) #9
  %cmp6.not = icmp eq i32 %sub8, 0
  br i1 %cmp6.not, label %for.body7.cleanup_crit_edge, label %for.body7.for.body7_crit_edge

for.body7.for.body7_crit_edge:                    ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body7

for.body7.cleanup_crit_edge:                      ; preds = %for.body7
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end10:                                         ; preds = %for.body
  %ch = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %call7.i.i, i32 0, i32 5
  %6 = ptrtoint ptr %ch to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %c, ptr %ch, align 4
  %7 = tail call i32 @llvm.umin.i32(i32 %len.addr.092, i32 268435455)
  %len14 = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %len14 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %7, ptr %len14, align 4
  %src16 = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %call7.i.i, i32 0, i32 4
  %9 = ptrtoint ptr %src16 to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 %src.addr.091, ptr %src16, align 8
  %dest18 = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %call7.i.i, i32 0, i32 3
  %10 = ptrtoint ptr %dest18 to i32
  call void @__asan_store4_noabort(i32 %10)
  store i32 %dest.addr.090, ptr %dest18, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %c) #9
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %11 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %12 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %13 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %14 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %15 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 0, ptr %residue.i, align 8
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %16 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %17, ptr noundef %desc_allocated.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i85, label %if.end10.vchan_tx_prep.exit_crit_edge

if.end10.vchan_tx_prep.exit_crit_edge:            ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_tx_prep.exit

if.end.i.i.i85:                                   ; preds = %if.end10
  call void @__sanitizer_cov_trace_pc() #11
  %18 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %node.i, ptr %prev.i.i, align 4
  %19 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %20 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %17, ptr %prev3.i.i.i, align 8
  %21 = ptrtoint ptr %17 to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile ptr %node.i, ptr %17, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i85, %if.end10.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #9
  %next = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 12
  %22 = ptrtoint ptr %next to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr null, ptr %next, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.095)
  %tobool22.not = icmp eq i32 %i.095, 0
  br i1 %tobool22.not, label %vchan_tx_prep.exit.if.end28_crit_edge, label %if.else

vchan_tx_prep.exit.if.end28_crit_edge:            ; preds = %vchan_tx_prep.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end28

if.else:                                          ; preds = %vchan_tx_prep.exit
  call void @__sanitizer_cov_trace_pc() #11
  %next25 = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %prev_tx.094, i32 0, i32 12
  %23 = ptrtoint ptr %next25 to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %call7.i.i, ptr %next25, align 8
  br label %if.end28

if.end28:                                         ; preds = %if.else, %vchan_tx_prep.exit.if.end28_crit_edge
  %.sink105.in = phi ptr [ %arrayidx, %if.else ], [ %call8.i.i, %vchan_tx_prep.exit.if.end28_crit_edge ]
  %.sink = phi i32 [ %7, %if.else ], [ %len.addr.092, %vchan_tx_prep.exit.if.end28_crit_edge ]
  %24 = ptrtoint ptr %.sink105.in to i32
  call void @__asan_load4_noabort(i32 %24)
  %.sink105 = load ptr, ptr %.sink105.in, align 4
  %residue27 = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %.sink105, i32 0, i32 2
  %25 = ptrtoint ptr %residue27 to i32
  call void @__asan_store4_noabort(i32 %25)
  store i32 %.sink, ptr %residue27, align 4
  %26 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %call8.i.i, align 128
  %28 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx, align 4
  %parent = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %29, i32 0, i32 7
  %30 = ptrtoint ptr %parent to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %27, ptr %parent, align 4
  %add31 = add i32 %7, %src.addr.091
  %add32 = add i32 %7, %dest.addr.090
  %sub33 = sub i32 %len.addr.092, %7
  %inc = add nuw nsw i32 %i.095, 1
  %exitcond.not = icmp eq i32 %inc, %umax
  br i1 %exitcond.not, label %if.end28.for.end35_crit_edge, label %if.end28.for.body_crit_edge

if.end28.for.body_crit_edge:                      ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

if.end28.for.end35_crit_edge:                     ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end35

for.end35:                                        ; preds = %if.end28.for.end35_crit_edge, %for.cond.preheader.for.end35_crit_edge
  %31 = ptrtoint ptr %call8.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call8.i.i, align 128
  br label %cleanup

cleanup:                                          ; preds = %for.end35, %for.body7.cleanup_crit_edge, %for.cond5.preheader.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ %32, %for.end35 ], [ null, %entry.cleanup_crit_edge ], [ null, %for.cond5.preheader.cleanup_crit_edge ], [ null, %for.body7.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cqdma_terminate_all(ptr noundef %c) #2 align 64 {
entry:
  %head.i.i = alloca %struct.list_head, align 4
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #9
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %entry.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

entry.list_splice_tail_init.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  %5 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %0, align 4
  %prev2.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
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
  %12 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store volatile ptr %desc_allocated.i, ptr %desc_allocated.i, align 4
  store ptr %desc_allocated.i, ptr %prev2.i.i.i, align 4
  br label %list_splice_tail_init.exit.i

list_splice_tail_init.exit.i:                     ; preds = %if.then.i.i, %entry.list_splice_tail_init.exit.i_crit_edge
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5
  %13 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i12.i = icmp eq ptr %14, %desc_submitted.i
  br i1 %cmp.i.not.i12.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit17.i_crit_edge, label %if.then.i16.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit17.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_splice_tail_init.exit17.i

if.then.i16.i:                                    ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %prev2.i.i14.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev2.i.i14.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i14.i, align 4
  %prev3.i.i15.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i15.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i15.i, align 4
  %20 = ptrtoint ptr %16 to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %14, ptr %16, align 4
  %21 = ptrtoint ptr %18 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %head.i, ptr %18, align 4
  store ptr %18, ptr %0, align 4
  %22 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store volatile ptr %desc_submitted.i, ptr %desc_submitted.i, align 4
  store ptr %desc_submitted.i, ptr %prev2.i.i14.i, align 4
  br label %list_splice_tail_init.exit17.i

list_splice_tail_init.exit17.i:                   ; preds = %if.then.i16.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit17.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %23 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i18.i = icmp eq ptr %24, %desc_issued.i
  br i1 %cmp.i.not.i18.i, label %list_splice_tail_init.exit17.i.mtk_cqdma_free_inactive_desc.exit_crit_edge, label %if.then.i22.i

list_splice_tail_init.exit17.i.mtk_cqdma_free_inactive_desc.exit_crit_edge: ; preds = %list_splice_tail_init.exit17.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_cqdma_free_inactive_desc.exit

if.then.i22.i:                                    ; preds = %list_splice_tail_init.exit17.i
  call void @__sanitizer_cov_trace_pc() #11
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i20.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev2.i.i20.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i20.i, align 4
  %prev3.i.i21.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i21.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i21.i, align 4
  %30 = ptrtoint ptr %26 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %24, ptr %26, align 4
  %31 = ptrtoint ptr %28 to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %head.i, ptr %28, align 4
  store ptr %28, ptr %0, align 4
  %32 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile ptr %desc_issued.i, ptr %desc_issued.i, align 4
  store ptr %desc_issued.i, ptr %prev2.i.i20.i, align 4
  br label %mtk_cqdma_free_inactive_desc.exit

mtk_cqdma_free_inactive_desc.exit:                ; preds = %if.then.i22.i, %list_splice_tail_init.exit17.i.mtk_cqdma_free_inactive_desc.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #9
  call void @vchan_dma_desc_free_list(ptr noundef %c, ptr noundef nonnull %head.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #9
  %pc.i = getelementptr inbounds %struct.mtk_cqdma_vchan, ptr %c, i32 0, i32 1
  %33 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %pc.i, align 4
  %lock.i2 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %34, i32 0, i32 5
  %call3.i3 = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i2) #9
  %call15.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %35 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %pc.i, align 4
  br label %for.cond.i.i

for.cond.i.i:                                     ; preds = %for.body.i.i.for.cond.i.i_crit_edge, %mtk_cqdma_free_inactive_desc.exit
  %.pn.in.i.i = phi ptr [ %36, %mtk_cqdma_free_inactive_desc.exit ], [ %.pn.i.i, %for.body.i.i.for.cond.i.i_crit_edge ]
  %37 = ptrtoint ptr %.pn.in.i.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pn.i.i = load ptr, ptr %.pn.in.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %.pn.i.i, %36
  br i1 %cmp.not.i.i, label %if.end26.critedge.i, label %for.body.i.i

for.body.i.i:                                     ; preds = %for.cond.i.i
  %ch.i.i = getelementptr i8, ptr %.pn.i.i, i32 -4
  %38 = ptrtoint ptr %ch.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ch.i.i, align 4
  %cmp3.i.i = icmp eq ptr %39, %c
  br i1 %cmp3.i.i, label %if.then.i, label %for.body.i.i.for.cond.i.i_crit_edge

for.body.i.i.for.cond.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i.i

if.then.i:                                        ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #11
  %issue_synchronize.i = getelementptr inbounds %struct.mtk_cqdma_vchan, ptr %c, i32 0, i32 3
  %40 = ptrtoint ptr %issue_synchronize.i to i32
  call void @__asan_store1_noabort(i32 %40)
  store i8 1, ptr %issue_synchronize.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call15.i) #9
  %41 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load ptr, ptr %pc.i, align 4
  %lock24.c.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %42, i32 0, i32 5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock24.c.i, i32 noundef %call3.i3) #9
  %issue_completion.i = getelementptr inbounds %struct.mtk_cqdma_vchan, ptr %c, i32 0, i32 2
  call void @wait_for_completion(ptr noundef %issue_completion.i) #9
  br label %if.end26.i

if.end26.critedge.i:                              ; preds = %for.cond.i.i
  call void @__sanitizer_cov_trace_pc() #11
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call15.i) #9
  %43 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %pc.i, align 4
  %lock24.c85.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %44, i32 0, i32 5
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock24.c85.i, i32 noundef %call3.i3) #9
  br label %if.end26.i

if.end26.i:                                       ; preds = %if.end26.critedge.i, %if.then.i
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i.i) #9
  %45 = getelementptr inbounds %struct.list_head, ptr %head.i.i, i32 0, i32 1
  %46 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %head.i.i, ptr %head.i.i, align 4
  %47 = ptrtoint ptr %45 to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %head.i.i, ptr %45, align 4
  %task.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i.i) #9
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #9
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8
  %48 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %49, %desc_terminated.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end26.i.vchan_synchronize.exit.i_crit_edge, label %if.then.i.i.i

if.end26.i.vchan_synchronize.exit.i_crit_edge:    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_synchronize.exit.i

if.then.i.i.i:                                    ; preds = %if.end26.i
  call void @__sanitizer_cov_trace_pc() #11
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %45, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8, i32 1
  %52 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %49, i32 0, i32 1
  %54 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %54)
  store ptr %51, ptr %prev3.i.i.i.i, align 4
  %55 = ptrtoint ptr %51 to i32
  call void @__asan_store4_noabort(i32 %55)
  store ptr %49, ptr %51, align 4
  %56 = ptrtoint ptr %53 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %head.i.i, ptr %53, align 4
  store ptr %53, ptr %45, align 4
  %57 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %57)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %vchan_synchronize.exit.i

vchan_synchronize.exit.i:                         ; preds = %if.then.i.i.i, %if.end26.i.vchan_synchronize.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.i) #9
  call void @vchan_dma_desc_free_list(ptr noundef %c, ptr noundef nonnull %head.i.i) #9
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i.i) #9
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7
  %58 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i.not.i = icmp eq ptr %59, %desc_completed.i
  br i1 %cmp.i.not.i, label %vchan_synchronize.exit.i.mtk_cqdma_free_active_desc.exit_crit_edge, label %land.rhs.i

vchan_synchronize.exit.i.mtk_cqdma_free_active_desc.exit_crit_edge: ; preds = %vchan_synchronize.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_cqdma_free_active_desc.exit

land.rhs.i:                                       ; preds = %vchan_synchronize.exit.i
  %.b84.i = load i1, ptr @mtk_cqdma_free_active_desc.__already_done, align 1
  br i1 %.b84.i, label %land.rhs.i.mtk_cqdma_free_active_desc.exit_crit_edge, label %if.then40.i, !prof !110

land.rhs.i.mtk_cqdma_free_active_desc.exit_crit_edge: ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_cqdma_free_active_desc.exit

if.then40.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #11
  store i1 true, ptr @mtk_cqdma_free_active_desc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.4, i32 noundef 599, i32 noundef 9, ptr noundef nonnull @.str.39) #9
  br label %mtk_cqdma_free_active_desc.exit

mtk_cqdma_free_active_desc.exit:                  ; preds = %if.then40.i, %land.rhs.i.mtk_cqdma_free_active_desc.exit_crit_edge, %vchan_synchronize.exit.i.mtk_cqdma_free_active_desc.exit_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_cqdma_irq(i32 noundef %irq, ptr nocapture noundef readonly %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dma_channels = getelementptr inbounds %struct.mtk_cqdma_device, ptr %devid, i32 0, i32 3
  %0 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %dma_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp29.not = icmp eq i32 %1, 0
  br i1 %cmp29.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %pc = getelementptr inbounds %struct.mtk_cqdma_device, ptr %devid, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %for.body.lr.ph
  %i.031 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.inc.for.body_crit_edge ]
  %ret.030 = phi i32 [ 0, %for.body.lr.ph ], [ %ret.1, %for.inc.for.body_crit_edge ]
  %2 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pc, align 4
  %arrayidx = getelementptr ptr, ptr %3, i32 %i.031
  %4 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %5, i32 0, i32 5
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %6 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %pc, align 4
  %arrayidx2 = getelementptr ptr, ptr %7, i32 %i.031
  %8 = ptrtoint ptr %arrayidx2 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %arrayidx2, align 4
  %base.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i, align 4
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %11) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %13 = and i32 %12, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %13)
  %tobool.not = icmp eq i32 %13, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %if.then

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

if.then:                                          ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #11
  %14 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %pc, align 4
  %arrayidx4 = getelementptr ptr, ptr %15, i32 %i.031
  %16 = ptrtoint ptr %arrayidx4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %arrayidx4, align 4
  %base.i.i.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %base.i.i.i, align 4
  %20 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %19) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %21 = and i32 %20, -16777217
  %22 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %base.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %23, i32 %21) #9, !srcloc !108
  br label %if.end

if.end:                                           ; preds = %if.then, %for.body.if.end_crit_edge
  %ret.1 = phi i32 [ 1, %if.then ], [ %ret.030, %for.body.if.end_crit_edge ]
  %24 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pc, align 4
  %arrayidx6 = getelementptr ptr, ptr %25, i32 %i.031
  %26 = ptrtoint ptr %arrayidx6 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx6, align 4
  %lock7 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %27, i32 0, i32 5
  tail call void @_raw_spin_unlock(ptr noundef %lock7) #9
  br i1 %tobool.not, label %if.end.for.inc_crit_edge, label %if.then9

if.end.for.inc_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then9:                                         ; preds = %if.end
  %28 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %pc, align 4
  %arrayidx11 = getelementptr ptr, ptr %29, i32 %i.031
  %30 = ptrtoint ptr %arrayidx11 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx11, align 4
  %irq12 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %31, i32 0, i32 2
  %32 = ptrtoint ptr %irq12 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %irq12, align 4
  tail call void @disable_irq_nosync(i32 noundef %33) #9
  %34 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %pc, align 4
  %arrayidx14 = getelementptr ptr, ptr %35, i32 %i.031
  %36 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx14, align 4
  %state.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %37, i32 0, i32 4, i32 1
  %call.i = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.i, label %if.then9.for.inc_crit_edge

if.then9.for.inc_crit_edge:                       ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.inc

if.then.i:                                        ; preds = %if.then9
  call void @__sanitizer_cov_trace_pc() #11
  %tasklet = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %37, i32 0, i32 4
  tail call void @__tasklet_schedule(ptr noundef %tasklet) #9
  br label %for.inc

for.inc:                                          ; preds = %if.then.i, %if.then9.for.inc_crit_edge, %if.end.for.inc_crit_edge
  %inc = add nuw i32 %i.031, 1
  %38 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dma_channels, align 4
  %cmp = icmp ult i32 %inc, %39
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.for.end_crit_edge

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.end

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.body

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %entry.for.end_crit_edge
  %ret.0.lcssa = phi i32 [ 0, %entry.for.end_crit_edge ], [ %ret.1, %for.inc.for.end_crit_edge ]
  ret i32 %ret.0.lcssa
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_cqdma_vdesc_free(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vd) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_async_device_register(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_dma_controller_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_dma_xlate_by_chan_id(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_cqdma_hw_init(ptr nocapture noundef readonly %cqdma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %cqdma, i32 0, i32 15
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %1) #9
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #9
  %clk = getelementptr inbounds %struct.mtk_cqdma_device, ptr %cqdma, i32 0, i32 1
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i57 = tail call i32 @clk_prepare(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i57)
  %tobool.not.i = icmp eq i32 %call.i57, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup.sink.split_crit_edge

entry.cleanup.sink.split_crit_edge:               ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %for.cond.preheader, label %if.end.i.cleanup.sink.split.sink.split_crit_edge

if.end.i.cleanup.sink.split.sink.split_crit_edge: ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.sink.split.sink.split

for.cond.preheader:                               ; preds = %if.end.i
  %dma_channels = getelementptr inbounds %struct.mtk_cqdma_device, ptr %cqdma, i32 0, i32 3
  %6 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %dma_channels, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %7)
  %cmp69.not = icmp eq i32 %7, 0
  br i1 %cmp69.not, label %for.cond.preheader.cleanup_crit_edge, label %do.body7.lr.ph

for.cond.preheader.cleanup_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

do.body7.lr.ph:                                   ; preds = %for.cond.preheader
  %pc = getelementptr inbounds %struct.mtk_cqdma_device, ptr %cqdma, i32 0, i32 5
  br label %do.body7

do.body7:                                         ; preds = %if.end30.do.body7_crit_edge, %do.body7.lr.ph
  %i.070 = phi i32 [ 0, %do.body7.lr.ph ], [ %inc, %if.end30.do.body7_crit_edge ]
  %8 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %pc, align 4
  %arrayidx = getelementptr ptr, ptr %9, i32 %i.070
  %10 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx, align 4
  %lock = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %11, i32 0, i32 5
  %call10 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %12 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %pc, align 4
  %arrayidx14 = getelementptr ptr, ptr %13, i32 %i.070
  %14 = ptrtoint ptr %arrayidx14 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %arrayidx14, align 4
  %call15 = tail call fastcc i32 @mtk_cqdma_hard_reset(ptr noundef %15)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call15)
  %cmp16 = icmp slt i32 %call15, 0
  br i1 %cmp16, label %do.end21, label %if.end30

do.end21:                                         ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #11
  %16 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %17, ptr noundef nonnull @.str.41) #12
  %18 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %pc, align 4
  %arrayidx24 = getelementptr ptr, ptr %19, i32 %i.070
  %20 = ptrtoint ptr %arrayidx24 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx24, align 4
  %lock25 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %21, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock25, i32 noundef %call10) #9
  %22 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %23) #9
  br label %cleanup.sink.split.sink.split

if.end30:                                         ; preds = %do.body7
  %24 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %pc, align 4
  %arrayidx32 = getelementptr ptr, ptr %25, i32 %i.070
  %26 = ptrtoint ptr %arrayidx32 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %arrayidx32, align 4
  %lock33 = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %27, i32 0, i32 5
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock33, i32 noundef %call10) #9
  %inc = add nuw i32 %i.070, 1
  %28 = ptrtoint ptr %dma_channels to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %dma_channels, align 4
  %cmp = icmp ult i32 %inc, %29
  br i1 %cmp, label %if.end30.do.body7_crit_edge, label %if.end30.cleanup_crit_edge

if.end30.cleanup_crit_edge:                       ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end30.do.body7_crit_edge:                      ; preds = %if.end30
  call void @__sanitizer_cov_trace_pc() #11
  br label %do.body7

cleanup.sink.split.sink.split:                    ; preds = %do.end21, %if.end.i.cleanup.sink.split.sink.split_crit_edge
  %.sink = phi ptr [ %23, %do.end21 ], [ %5, %if.end.i.cleanup.sink.split.sink.split_crit_edge ]
  %retval.0.ph.ph = phi i32 [ -22, %do.end21 ], [ %call1.i, %if.end.i.cleanup.sink.split.sink.split_crit_edge ]
  tail call void @clk_unprepare(ptr noundef %.sink) #9
  br label %cleanup.sink.split

cleanup.sink.split:                               ; preds = %cleanup.sink.split.sink.split, %entry.cleanup.sink.split_crit_edge
  %retval.0.ph = phi i32 [ %call.i57, %entry.cleanup.sink.split_crit_edge ], [ %retval.0.ph.ph, %cleanup.sink.split.sink.split ]
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  %call.i63 = tail call i32 @__pm_runtime_idle(ptr noundef %31, i32 noundef 4) #9
  %32 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %dev.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %33, i1 noundef zeroext true) #9
  br label %cleanup

cleanup:                                          ; preds = %cleanup.sink.split, %if.end30.cleanup_crit_edge, %for.cond.preheader.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %for.cond.preheader.cleanup_crit_edge ], [ %retval.0.ph, %cleanup.sink.split ], [ 0, %if.end30.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_setup(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_cqdma_tasklet_cb(ptr noundef %t) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %add.ptr = getelementptr i8, ptr %t, i32 -20
  %lock = getelementptr i8, ptr %t, i32 24
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #9
  %call6 = tail call fastcc ptr @mtk_cqdma_consume_work_queue(ptr noundef %add.ptr)
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call3) #9
  %tobool.not = icmp eq ptr %call6, null
  br i1 %tobool.not, label %entry.if.end11_crit_edge, label %if.then

entry.if.end11_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then:                                          ; preds = %entry
  tail call void @dma_run_dependencies(ptr noundef nonnull %call6) #9
  %parent = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %call6, i32 0, i32 7
  %0 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %parent, align 4
  %cmp8.not = icmp eq ptr %1, %call6
  br i1 %cmp8.not, label %if.then.if.end11_crit_edge, label %if.then10

if.then.if.end11_crit_edge:                       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

if.then10:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #11
  tail call void @kfree(ptr noundef nonnull %call6) #9
  br label %if.end11

if.end11:                                         ; preds = %if.then10, %if.then.if.end11_crit_edge, %entry.if.end11_crit_edge
  %irq = getelementptr i8, ptr %t, i32 -8
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  tail call void @enable_irq(i32 noundef %3) #9
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_cqdma_hard_reset(ptr nocapture noundef readonly %pc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %pc, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 12
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %3 = or i32 %2, 33554432
  %4 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %5, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %3) #9, !srcloc !108
  %6 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i4 = getelementptr i8, ptr %7, i32 12
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i4) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %9 = and i32 %8, -33554433
  %10 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i6.i.i5 = getelementptr i8, ptr %11, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i5, i32 %9) #9, !srcloc !108
  %call36.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call36.i, 1000000
  %12 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr423.i = getelementptr i8, ptr %13, i32 8
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr423.i) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  %15 = and i32 %14, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %15)
  %tobool47.not5.i = icmp eq i32 %15, 0
  br i1 %tobool47.not5.i, label %entry.cleanup.thread.i_crit_edge, label %entry.land.lhs.true51.i_crit_edge

entry.land.lhs.true51.i_crit_edge:                ; preds = %entry
  br label %land.lhs.true51.i

entry.cleanup.thread.i_crit_edge:                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

land.lhs.true51.i:                                ; preds = %cond.false.i.land.lhs.true51.i_crit_edge, %entry.land.lhs.true51.i_crit_edge
  %call52.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call52.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call52.i, %add.i.i
  br i1 %cmp3.i.i, label %cleanup.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true51.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %16 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %16(i32 noundef 2147480) #9
  %17 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr42.i = getelementptr i8, ptr %18, i32 8
  %19 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  %20 = and i32 %19, 16777216
  %tobool47.not.i = icmp eq i32 %20, 0
  br i1 %tobool47.not.i, label %cond.false.i.cleanup.thread.i_crit_edge, label %cond.false.i.land.lhs.true51.i_crit_edge

cond.false.i.land.lhs.true51.i_crit_edge:         ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true51.i

cond.false.i.cleanup.thread.i_crit_edge:          ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

cleanup.i:                                        ; preds = %land.lhs.true51.i
  %21 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %22, i32 8
  %23 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %24 = and i32 %23, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %24)
  %tobool74.not.i = icmp eq i32 %24, 0
  br i1 %tobool74.not.i, label %cleanup.i.cleanup.thread.i_crit_edge, label %cleanup.i.mtk_cqdma_poll_engine_done.exit_crit_edge

cleanup.i.mtk_cqdma_poll_engine_done.exit_crit_edge: ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %mtk_cqdma_poll_engine_done.exit

cleanup.i.cleanup.thread.i_crit_edge:             ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup.thread.i

cleanup.thread.i:                                 ; preds = %cleanup.i.cleanup.thread.i_crit_edge, %cond.false.i.cleanup.thread.i_crit_edge, %entry.cleanup.thread.i_crit_edge
  br label %mtk_cqdma_poll_engine_done.exit

mtk_cqdma_poll_engine_done.exit:                  ; preds = %cleanup.thread.i, %cleanup.i.mtk_cqdma_poll_engine_done.exit_crit_edge
  %25 = phi i32 [ 0, %cleanup.thread.i ], [ -110, %cleanup.i.mtk_cqdma_poll_engine_done.exit_crit_edge ]
  ret i32 %25
}

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_cqdma_start(ptr nocapture noundef readonly %pc, ptr nocapture noundef readonly %cvd) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %call36.i = tail call i64 @ktime_get() #9
  %add.i.i = add i64 %call36.i, 1000000
  %base41.i = getelementptr inbounds %struct.mtk_cqdma_pchan, ptr %pc, i32 0, i32 1
  %0 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base41.i, align 4
  %add.ptr423.i = getelementptr i8, ptr %1, i32 8
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr423.i) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  %3 = and i32 %2, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool47.not5.i = icmp eq i32 %3, 0
  br i1 %tobool47.not5.i, label %entry.if.end_crit_edge, label %entry.land.lhs.true51.i_crit_edge

entry.land.lhs.true51.i_crit_edge:                ; preds = %entry
  br label %land.lhs.true51.i

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

land.lhs.true51.i:                                ; preds = %cond.false.i.land.lhs.true51.i_crit_edge, %entry.land.lhs.true51.i_crit_edge
  %call52.i = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call52.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call52.i, %add.i.i
  br i1 %cmp3.i.i, label %cleanup.i, label %cond.false.i

cond.false.i:                                     ; preds = %land.lhs.true51.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %4 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %4(i32 noundef 2147480) #9
  %5 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base41.i, align 4
  %add.ptr42.i = getelementptr i8, ptr %6, i32 8
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  %8 = and i32 %7, 16777216
  %tobool47.not.i = icmp eq i32 %8, 0
  br i1 %tobool47.not.i, label %cond.false.i.if.end_crit_edge, label %cond.false.i.land.lhs.true51.i_crit_edge

cond.false.i.land.lhs.true51.i_crit_edge:         ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true51.i

cond.false.i.if.end_crit_edge:                    ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

cleanup.i:                                        ; preds = %land.lhs.true51.i
  %9 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base41.i, align 4
  %add.ptr59.i = getelementptr i8, ptr %10, i32 8
  %11 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %12 = and i32 %11, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %12)
  %tobool74.not.i = icmp eq i32 %12, 0
  br i1 %tobool74.not.i, label %cleanup.i.if.end_crit_edge, label %do.end

cleanup.i.if.end_crit_edge:                       ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end

do.end:                                           ; preds = %cleanup.i
  call void @__sanitizer_cov_trace_pc() #11
  %ch = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %cvd, i32 0, i32 5
  %13 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %ch, align 4
  %15 = ptrtoint ptr %14 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %14, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %16, i32 0, i32 15
  %17 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %18, ptr noundef nonnull @.str.34) #12
  br label %if.end

if.end:                                           ; preds = %do.end, %cleanup.i.if.end_crit_edge, %cond.false.i.if.end_crit_edge, %entry.if.end_crit_edge
  %19 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base41.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %20, i32 12
  %21 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %22 = or i32 %21, 16777216
  %23 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base41.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %24, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %22) #9, !srcloc !108
  %call36.i25 = tail call i64 @ktime_get() #9
  %add.i.i26 = add i64 %call36.i25, 1000000
  %25 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base41.i, align 4
  %add.ptr423.i28 = getelementptr i8, ptr %26, i32 8
  %27 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr423.i28) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  %28 = and i32 %27, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %28)
  %tobool47.not5.i29 = icmp eq i32 %28, 0
  br i1 %tobool47.not5.i29, label %if.end.if.end11_crit_edge, label %if.end.land.lhs.true51.i32_crit_edge

if.end.land.lhs.true51.i32_crit_edge:             ; preds = %if.end
  br label %land.lhs.true51.i32

if.end.if.end11_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

land.lhs.true51.i32:                              ; preds = %cond.false.i35.land.lhs.true51.i32_crit_edge, %if.end.land.lhs.true51.i32_crit_edge
  %call52.i30 = tail call i64 @ktime_get() #9
  call void @__sanitizer_cov_trace_cmp8(i64 %call52.i30, i64 %add.i.i26)
  %cmp3.i.i31 = icmp sgt i64 %call52.i30, %add.i.i26
  br i1 %cmp3.i.i31, label %cleanup.i38, label %cond.false.i35

cond.false.i35:                                   ; preds = %land.lhs.true51.i32
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %29 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %29(i32 noundef 2147480) #9
  %30 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %base41.i, align 4
  %add.ptr42.i33 = getelementptr i8, ptr %31, i32 8
  %32 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr42.i33) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !114
  %33 = and i32 %32, 16777216
  %tobool47.not.i34 = icmp eq i32 %33, 0
  br i1 %tobool47.not.i34, label %cond.false.i35.if.end11_crit_edge, label %cond.false.i35.land.lhs.true51.i32_crit_edge

cond.false.i35.land.lhs.true51.i32_crit_edge:     ; preds = %cond.false.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %land.lhs.true51.i32

cond.false.i35.if.end11_crit_edge:                ; preds = %cond.false.i35
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

cleanup.i38:                                      ; preds = %land.lhs.true51.i32
  %34 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %base41.i, align 4
  %add.ptr59.i36 = getelementptr i8, ptr %35, i32 8
  %36 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr59.i36) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !115
  %37 = and i32 %36, 16777216
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %37)
  %tobool74.not.i37 = icmp eq i32 %37, 0
  br i1 %tobool74.not.i37, label %cleanup.i38.if.end11_crit_edge, label %do.end7

cleanup.i38.if.end11_crit_edge:                   ; preds = %cleanup.i38
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end11

do.end7:                                          ; preds = %cleanup.i38
  call void @__sanitizer_cov_trace_pc() #11
  %ch8 = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %cvd, i32 0, i32 5
  %38 = ptrtoint ptr %ch8 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %ch8, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %39, align 4
  %dev.i41 = getelementptr inbounds %struct.dma_device, ptr %41, i32 0, i32 15
  %42 = ptrtoint ptr %dev.i41 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %dev.i41, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.37) #12
  br label %if.end11

if.end11:                                         ; preds = %do.end7, %cleanup.i38.if.end11_crit_edge, %cond.false.i35.if.end11_crit_edge, %if.end.if.end11_crit_edge
  %src = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %cvd, i32 0, i32 4
  %44 = ptrtoint ptr %src to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %src, align 4
  %46 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base41.i, align 4
  %add.ptr.i.i.i43 = getelementptr i8, ptr %47, i32 28
  %48 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i43) #9, !srcloc !106
  %49 = tail call i32 @llvm.bswap.i32(i32 %48) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %or.i.i44 = or i32 %49, %45
  %50 = tail call i32 @llvm.bswap.i32(i32 %or.i.i44) #9
  %51 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base41.i, align 4
  %add.ptr.i6.i.i45 = getelementptr i8, ptr %52, i32 28
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i45, i32 %50) #9, !srcloc !108
  %53 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base41.i, align 4
  %add.ptr.i.i.i47 = getelementptr i8, ptr %54, i32 96
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i47) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %56 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %base41.i, align 4
  %add.ptr.i6.i.i48 = getelementptr i8, ptr %57, i32 96
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i48, i32 %55) #9, !srcloc !108
  %dest = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %cvd, i32 0, i32 3
  %58 = ptrtoint ptr %dest to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %dest, align 4
  %60 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base41.i, align 4
  %add.ptr.i.i.i50 = getelementptr i8, ptr %61, i32 32
  %62 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i50) #9, !srcloc !106
  %63 = tail call i32 @llvm.bswap.i32(i32 %62) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %or.i.i51 = or i32 %63, %59
  %64 = tail call i32 @llvm.bswap.i32(i32 %or.i.i51) #9
  %65 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base41.i, align 4
  %add.ptr.i6.i.i52 = getelementptr i8, ptr %66, i32 32
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i52, i32 %64) #9, !srcloc !108
  %67 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base41.i, align 4
  %add.ptr.i.i.i54 = getelementptr i8, ptr %68, i32 100
  %69 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i54) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %70 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load ptr, ptr %base41.i, align 4
  %add.ptr.i6.i.i55 = getelementptr i8, ptr %71, i32 100
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i55, i32 %69) #9, !srcloc !108
  %len = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %cvd, i32 0, i32 1
  %72 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load i32, ptr %len, align 4
  %74 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base41.i, align 4
  %add.ptr.i.i.i57 = getelementptr i8, ptr %75, i32 36
  %76 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i57) #9, !srcloc !106
  %77 = tail call i32 @llvm.bswap.i32(i32 %76) #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %or.i.i58 = or i32 %77, %73
  %78 = tail call i32 @llvm.bswap.i32(i32 %or.i.i58) #9
  %79 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %base41.i, align 4
  %add.ptr.i6.i.i59 = getelementptr i8, ptr %80, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i59, i32 %78) #9, !srcloc !108
  %81 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %base41.i, align 4
  %add.ptr.i.i.i61 = getelementptr i8, ptr %82, i32 8
  %83 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i61) #9, !srcloc !106
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #9, !srcloc !107
  %84 = or i32 %83, 16777216
  %85 = ptrtoint ptr %base41.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load ptr, ptr %base41.i, align 4
  %add.ptr.i6.i.i63 = getelementptr i8, ptr %86, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i63, i32 %84) #9, !srcloc !108
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_tx_descriptor_init(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_submit(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vchan_tx_desc_free(ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @vchan_dma_desc_free_list(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @wait_for_completion(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @disable_irq_nosync(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_resume(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_prepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_unprepare(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc ptr @mtk_cqdma_consume_work_queue(ptr noundef %pc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #11
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load volatile ptr, ptr %pc, align 4
  %cmp.not = icmp eq ptr %1, %pc
  %add.ptr = getelementptr i8, ptr %1, i32 -136
  %spec.select = select i1 %cmp.not, ptr null, ptr %add.ptr
  %tobool.not = icmp eq ptr %spec.select, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %lor.rhs, !prof !105

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

lor.rhs:                                          ; preds = %entry
  %parent = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %spec.select, i32 0, i32 7
  %2 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %parent, align 4
  %tobool3.not = icmp eq ptr %3, null
  br i1 %tobool3.not, label %lor.rhs.cleanup_crit_edge, label %if.end, !prof !105

lor.rhs.cleanup_crit_edge:                        ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.end:                                           ; preds = %lor.rhs
  %ch = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %spec.select, i32 0, i32 5
  %4 = ptrtoint ptr %ch to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %ch, align 4
  %len = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %spec.select, i32 0, i32 1
  %6 = ptrtoint ptr %len to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len, align 4
  %residue = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %3, i32 0, i32 2
  %8 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %residue, align 4
  %sub = sub i32 %9, %7
  store i32 %sub, ptr %residue, align 4
  %node = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %spec.select, i32 0, i32 6
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #9
  br i1 %call.i.i, label %if.end.i.i, label %if.end.list_del.exit_crit_edge

if.end.list_del.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #11
  %prev.i.i = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %spec.select, i32 0, i32 6, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.end.list_del.exit_crit_edge
  %16 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %spec.select, i32 0, i32 6, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %5, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #9
  %18 = ptrtoint ptr %parent to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %parent, align 4
  %residue9 = getelementptr inbounds %struct.mtk_cqdma_vdesc, ptr %19, i32 0, i32 2
  %20 = ptrtoint ptr %residue9 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load i32, ptr %residue9, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %21)
  %tobool10.not = icmp eq i32 %21, 0
  br i1 %tobool10.not, label %if.then11, label %list_del.exit.if.end18_crit_edge

list_del.exit.if.end18_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then11:                                        ; preds = %list_del.exit
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %19, i32 0, i32 3
  %22 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %chan.i, align 4
  %24 = ptrtoint ptr %19 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %19, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %25)
  %cmp.i.i = icmp slt i32 %25, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !105

do.body2.i.i:                                     ; preds = %if.then11
  call void @__sanitizer_cov_trace_pc() #11
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/mediatek/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #9, !srcloc !117
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %if.then11
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %23, i32 0, i32 3
  %26 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %25, ptr %completed_cookie.i.i, align 4
  %27 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 0, ptr %19, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtk_cqdma_consume_work_queue, %do.end.i)) #9
          to label %if.then.i [label %do.end.i], !srcloc !118

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %28 = ptrtoint ptr %23 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %23, align 4
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %29, i32 0, i32 15
  %30 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %31, ptr noundef nonnull @.str.45, ptr noundef %19, i32 noundef %25) #9
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %19, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %23, i32 0, i32 7
  %prev.i.i66 = getelementptr inbounds %struct.virt_dma_chan, ptr %23, i32 0, i32 7, i32 1
  %32 = ptrtoint ptr %prev.i.i66 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %prev.i.i66, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %33, ptr noundef %desc_completed.i) #9
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #11
  %34 = ptrtoint ptr %prev.i.i66 to i32
  call void @__asan_store4_noabort(i32 %34)
  store ptr %node.i, ptr %prev.i.i66, align 4
  %35 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %35)
  store ptr %desc_completed.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %19, i32 0, i32 2, i32 1
  %36 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %33, ptr %prev3.i.i.i, align 4
  %37 = ptrtoint ptr %33 to i32
  call void @__asan_store4_noabort(i32 %37)
  store volatile ptr %node.i, ptr %33, align 4
  br label %list_add_tail.exit.i

list_add_tail.exit.i:                             ; preds = %if.end.i.i.i, %do.end.i.list_add_tail.exit.i_crit_edge
  %state.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %23, i32 0, i32 1, i32 1
  %call.i.i67 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #9
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i67)
  %tobool.not.i.i = icmp eq i32 %call.i.i67, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #11
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %23, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #9
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %issue_synchronize = getelementptr inbounds %struct.mtk_cqdma_vchan, ptr %5, i32 0, i32 3
  %38 = ptrtoint ptr %issue_synchronize to i32
  call void @__asan_load1_noabort(i32 %38)
  %39 = load i8, ptr %issue_synchronize, align 4, !range !119
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %39)
  %tobool13.not = icmp eq i8 %39, 0
  br i1 %tobool13.not, label %vchan_cookie_complete.exit.if.end18_crit_edge, label %land.lhs.true

vchan_cookie_complete.exit.if.end18_crit_edge:    ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

land.lhs.true:                                    ; preds = %vchan_cookie_complete.exit
  %pc.i = getelementptr inbounds %struct.mtk_cqdma_vchan, ptr %5, i32 0, i32 1
  %40 = ptrtoint ptr %pc.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %pc.i, align 4
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %land.lhs.true
  %.pn.in.i = phi ptr [ %41, %land.lhs.true ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %42 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %41
  br i1 %cmp.not.i, label %if.then15, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %ch.i = getelementptr i8, ptr %.pn.i, i32 -4
  %43 = ptrtoint ptr %ch.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %ch.i, align 4
  %cmp3.i = icmp eq ptr %44, %5
  br i1 %cmp3.i, label %for.body.i.if.end18_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %for.cond.i

for.body.i.if.end18_crit_edge:                    ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #11
  br label %if.end18

if.then15:                                        ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #11
  %issue_completion = getelementptr inbounds %struct.mtk_cqdma_vchan, ptr %5, i32 0, i32 2
  tail call void @complete(ptr noundef %issue_completion) #9
  %45 = ptrtoint ptr %issue_synchronize to i32
  call void @__asan_store1_noabort(i32 %45)
  store i8 0, ptr %issue_synchronize, align 4
  br label %if.end18

if.end18:                                         ; preds = %if.then15, %for.body.i.if.end18_crit_edge, %vchan_cookie_complete.exit.if.end18_crit_edge, %list_del.exit.if.end18_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #9
  %46 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load volatile ptr, ptr %pc, align 4
  %cmp30.not = icmp eq ptr %47, %pc
  %add.ptr34 = getelementptr i8, ptr %47, i32 -136
  %tobool38.not68 = icmp eq ptr %add.ptr34, null
  %tobool38.not = or i1 %cmp30.not, %tobool38.not68
  br i1 %tobool38.not, label %if.end18.cleanup_crit_edge, label %if.then39

if.end18.cleanup_crit_edge:                       ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  br label %cleanup

if.then39:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #11
  tail call fastcc void @mtk_cqdma_start(ptr noundef %pc, ptr noundef nonnull %add.ptr34)
  br label %cleanup

cleanup:                                          ; preds = %if.then39, %if.end18.cleanup_crit_edge, %lor.rhs.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ null, %lor.rhs.cleanup_crit_edge ], [ %spec.select, %if.then39 ], [ %spec.select, %if.end18.cleanup_crit_edge ], [ null, %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_run_dependencies(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @enable_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #9

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #10 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #10 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 48)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #7 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nounwind }
attributes #10 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #11 = { nomerge }
attributes #12 = { cold nounwind }
attributes #13 = { nounwind allocsize(0) }
attributes #14 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !28, !29, !30, !31, !33, !35, !36, !37, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !62, !63, !64, !65, !67, !68, !69, !70, !72, !73, !74, !76, !77, !79, !80, !82, !83, !84, !85, !87, !88, !89, !90, !92, !93, !94}
!llvm.module.flags = !{!96, !97, !98, !99, !100, !101, !102, !103}
!llvm.ident = !{!104}

!0 = !{ptr @__initcall__kmod_mtk_cqdma__241_938_mtk_cqdma_driver_init6, !1, !"__initcall__kmod_mtk_cqdma__241_938_mtk_cqdma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 938, i32 1}
!2 = !{ptr @__exitcall_mtk_cqdma_driver_exit, !1, !"__exitcall_mtk_cqdma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description242, !4, !"__UNIQUE_ID_description242", i1 false, i1 false}
!4 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 940, i32 1}
!5 = !{ptr @__UNIQUE_ID_author243, !6, !"__UNIQUE_ID_author243", i1 false, i1 false}
!6 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 941, i32 1}
!7 = !{ptr @__UNIQUE_ID_file244, !8, !"__UNIQUE_ID_file244", i1 false, i1 false}
!8 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 942, i32 1}
!9 = !{ptr @__UNIQUE_ID_license245, !8, !"__UNIQUE_ID_license245", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 934, i32 21}
!12 = !{ptr @mtk_cqdma_driver, !13, !"mtk_cqdma_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 930, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 764, i32 40}
!16 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 766, i32 3}
!18 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.6, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @mtk_cqdma_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @mtk_cqdma_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 788, i32 13}
!26 = !{ptr @.str.9, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 790, i32 3}
!28 = !{ptr @.str.10, !27, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @mtk_cqdma_probe._entry.8, !27, !"_entry", i1 false, i1 false}
!30 = !{ptr @mtk_cqdma_probe._entry_ptr.11, !27, !"_entry_ptr", i1 false, i1 false}
!31 = !{ptr @.str.12, !32, !"<string literal>", i1 false, i1 false}
!32 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 798, i32 13}
!33 = !{ptr @.str.14, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 800, i32 3}
!35 = !{ptr @mtk_cqdma_probe._entry.13, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @mtk_cqdma_probe._entry_ptr.15, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @mtk_cqdma_probe.__key, !38, !"__key", i1 false, i1 false}
!38 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 820, i32 3}
!39 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @.str.18, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 829, i32 4}
!42 = !{ptr @mtk_cqdma_probe._entry.17, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @mtk_cqdma_probe._entry_ptr.19, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.21, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 839, i32 4}
!46 = !{ptr @mtk_cqdma_probe._entry.20, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @mtk_cqdma_probe._entry_ptr.22, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.24, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 865, i32 3}
!50 = !{ptr @mtk_cqdma_probe._entry.23, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @mtk_cqdma_probe._entry_ptr.25, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.27, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 872, i32 3}
!54 = !{ptr @mtk_cqdma_probe._entry.26, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @mtk_cqdma_probe._entry_ptr.28, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.30, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 883, i32 2}
!58 = !{ptr @mtk_cqdma_probe._entry.29, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtk_cqdma_probe._entry_ptr.31, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.32, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 675, i32 4}
!62 = !{ptr @.str.33, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @mtk_cqdma_free_chan_resources._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @mtk_cqdma_free_chan_resources._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = !{ptr @.str.34, !66, !"<string literal>", i1 false, i1 false}
!66 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 236, i32 3}
!67 = !{ptr @.str.35, !66, !"<string literal>", i1 false, i1 false}
!68 = !{ptr @mtk_cqdma_start._entry, !66, !"_entry", i1 false, i1 false}
!69 = !{ptr @mtk_cqdma_start._entry_ptr, !66, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.37, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 241, i32 3}
!72 = !{ptr @mtk_cqdma_start._entry.36, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @mtk_cqdma_start._entry_ptr.38, !71, !"_entry_ptr", i1 false, i1 false}
!74 = distinct !{null, !75, !"__already_done", i1 false, i1 false}
!75 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 598, i32 2}
!76 = !{ptr @.str.39, !75, !"<string literal>", i1 false, i1 false}
!77 = !{ptr @init_completion.__key, !78, !"__key", i1 false, i1 false}
!78 = !{!"../include/linux/completion.h", i32 87, i32 2}
!79 = !{ptr @.str.40, !78, !"<string literal>", i1 false, i1 false}
!80 = !{ptr @.str.41, !81, !"<string literal>", i1 false, i1 false}
!81 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 710, i32 4}
!82 = !{ptr @.str.42, !81, !"<string literal>", i1 false, i1 false}
!83 = !{ptr @mtk_cqdma_hw_init._entry, !81, !"_entry", i1 false, i1 false}
!84 = !{ptr @mtk_cqdma_hw_init._entry_ptr, !81, !"_entry_ptr", i1 false, i1 false}
!85 = !{ptr @.str.43, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/dma/mediatek/../virt-dma.h", i32 101, i32 2}
!87 = !{ptr @.str.44, !86, !"<string literal>", i1 false, i1 false}
!88 = !{ptr @.str.45, !86, !"<string literal>", i1 false, i1 false}
!89 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, !86, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!90 = !{ptr @.str.46, !91, !"<string literal>", i1 false, i1 false}
!91 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 733, i32 4}
!92 = !{ptr @mtk_cqdma_hw_deinit._entry, !91, !"_entry", i1 false, i1 false}
!93 = !{ptr @mtk_cqdma_hw_deinit._entry_ptr, !91, !"_entry_ptr", i1 false, i1 false}
!94 = !{ptr @mtk_cqdma_match, !95, !"mtk_cqdma_match", i1 false, i1 false}
!95 = !{!"../drivers/dma/mediatek/mtk-cqdma.c", i32 743, i32 34}
!96 = !{i32 1, !"wchar_size", i32 2}
!97 = !{i32 1, !"min_enum_size", i32 4}
!98 = !{i32 8, !"branch-target-enforcement", i32 0}
!99 = !{i32 8, !"sign-return-address", i32 0}
!100 = !{i32 8, !"sign-return-address-all", i32 0}
!101 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!102 = !{i32 7, !"uwtable", i32 1}
!103 = !{i32 7, !"frame-pointer", i32 2}
!104 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!105 = !{!"branch_weights", i32 1, i32 2000}
!106 = !{i64 6322183}
!107 = !{i64 2154493815}
!108 = !{i64 6321765}
!109 = !{i64 2148187177, i64 2148187209, i64 2148187238, i64 2148187272, i64 2148187303, i64 2148187326}
!110 = !{!"branch_weights", i32 2000, i32 1}
!111 = !{i64 2148275178}
!112 = !{i64 2148189642, i64 2148189674, i64 2148189703, i64 2148189737, i64 2148189768, i64 2148189791}
!113 = !{i64 2149891673}
!114 = !{i64 2154498300}
!115 = !{i64 2154498774}
!116 = !{i64 2154439714}
!117 = !{i64 2154438202, i64 2154438701, i64 2154438239, i64 2154438295, i64 2154438329, i64 2154438353, i64 2154438394, i64 2154438415, i64 2154438443, i64 2154438477}
!118 = !{i64 2148744923, i64 2148744928, i64 2148744941, i64 2148744985, i64 2148745019, i64 2148745040}
!119 = !{i8 0, i8 2}
