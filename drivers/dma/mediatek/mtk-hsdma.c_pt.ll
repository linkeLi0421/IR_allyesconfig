; ModuleID = '/llk/IR_all_yes/drivers/dma/mediatek/mtk-hsdma.c_pt.bc'
source_filename = "../drivers/dma/mediatek/mtk-hsdma.c"
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
%struct.mtk_hsdma_soc = type { i32, i32 }
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
%struct.mtk_hsdma_device = type { %struct.dma_device, ptr, ptr, i32, i32, ptr, ptr, %struct.refcount_struct, %struct.spinlock, ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.mtk_hsdma_vchan = type { %struct.virt_dma_chan, %struct.completion, i8, %struct.list_head }
%struct.virt_dma_chan = type { %struct.dma_chan, %struct.tasklet_struct, ptr, %struct.spinlock, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, %struct.list_head, ptr }
%struct.dma_chan = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, %struct.list_head, ptr, i32, i32, ptr, ptr, ptr }
%struct.tasklet_struct = type { ptr, i32, %struct.atomic_t, i8, %union.anon.74, i32 }
%union.anon.74 = type { ptr }
%struct.mtk_hsdma_pchan = type { %struct.mtk_hsdma_ring, i32, %struct.atomic_t }
%struct.mtk_hsdma_ring = type { ptr, ptr, ptr, i32, i32, i16, i16 }
%struct.mtk_hsdma_pdesc = type { i32, i32, i32, i32 }
%struct.dma_tx_state = type { i32, i32, i32, i32 }
%struct.mtk_hsdma_vdesc = type { %struct.virt_dma_desc, i32, i32, i32, i32 }
%struct.virt_dma_desc = type { %struct.dma_async_tx_descriptor, %struct.dmaengine_result, %struct.list_head }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }
%struct.dmaengine_result = type { i32, i32 }
%struct.mtk_hsdma_cb = type { ptr, i32 }

@__initcall__kmod_mtk_hsdma__248_1055_mtk_hsdma_driver_init6 = internal global ptr @mtk_hsdma_driver_init, section ".initcall6.init", align 4
@mtk_hsdma_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_hsdma_probe, ptr @mtk_hsdma_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_hsdma_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_hsdma_driver_exit = internal global ptr @mtk_hsdma_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description249 = internal constant [64 x i8] c"mtk_hsdma.description=MediaTek High-Speed DMA Controller Driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author250 = internal constant [52 x i8] c"mtk_hsdma.author=Sean Wang <sean.wang@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file251 = internal constant [46 x i8] c"mtk_hsdma.file=drivers/dma/mediatek/mtk-hsdma\00", section ".modinfo", align 1
@__UNIQUE_ID_license252 = internal constant [25 x i8] c"mtk_hsdma.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"mtk_hsdma\00", [22 x i8] zeroinitializer }, align 32
@mtk_hsdma_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7623-hsdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7623_soc }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt7622-hsdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @mt7622_soc }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@mtk_hsdma_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 915, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"No device match found\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"mtk_hsdma_probe\00", [16 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"drivers/dma/mediatek/mtk-hsdma.c\00", [63 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_hsdma_probe._entry_ptr = internal global ptr @mtk_hsdma_probe._entry, section ".printk_index", align 4
@.str.6 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"hsdma\00", [26 x i8] zeroinitializer }, align 32
@mtk_hsdma_probe._entry.7 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.2, ptr @.str.3, i32 922, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"No clock for %s\0A\00", [47 x i8] zeroinitializer }, align 32
@mtk_hsdma_probe._entry_ptr.9 = internal global ptr @mtk_hsdma_probe._entry.7, section ".printk_index", align 4
@mtk_hsdma_probe._entry.10 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.2, ptr @.str.3, i32 929, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"No irq resource for %s\0A\00", [40 x i8] zeroinitializer }, align 32
@mtk_hsdma_probe._entry_ptr.12 = internal global ptr @mtk_hsdma_probe._entry.10, section ".printk_index", align 4
@mtk_hsdma_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.13 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"&hsdma->lock\00", [19 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dma-requests\00", [19 x i8] zeroinitializer }, align 32
@mtk_hsdma_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.2, ptr @.str.3, i32 959, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Using %u as missing dma-requests property\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@mtk_hsdma_probe._entry_ptr.18 = internal global ptr @mtk_hsdma_probe._entry.15, section ".printk_index", align 4
@mtk_hsdma_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.2, ptr @.str.3, i32 988, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"MediaTek HSDMA OF registration failed %d\0A\00", [54 x i8] zeroinitializer }, align 32
@mtk_hsdma_probe._entry_ptr.21 = internal global ptr @mtk_hsdma_probe._entry.19, section ".printk_index", align 4
@mtk_hsdma_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.2, ptr @.str.3, i32 999, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"request_irq failed with err %d\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_hsdma_probe._entry_ptr.24 = internal global ptr @mtk_hsdma_probe._entry.22, section ".printk_index", align 4
@mtk_hsdma_probe._entry.25 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.2, ptr @.str.3, i32 1005, ptr @.str.17, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"MediaTek HSDMA driver registered\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_hsdma_probe._entry_ptr.27 = internal global ptr @mtk_hsdma_probe._entry.25, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@debug_locks = external dso_local local_unnamed_addr global i32, section ".data..read_mostly", align 4
@mtk_hsdma_free_active_desc.__already_done = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.28 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"Desc pending still in list desc_hw_processing\0A\00", [49 x i8] zeroinitializer }, align 32
@mtk_hsdma_free_active_desc.__already_done.29 = internal unnamed_addr global i1 false, section ".data.once", align 1
@.str.30 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"Desc pending still in list desc_completed\0A\00", [53 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.31 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@mtk_hsdma_free_rooms_in_ring._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.33, ptr @.str.3, i32 574, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"cb->vd cannot be null\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"mtk_hsdma_free_rooms_in_ring\00", [35 x i8] zeroinitializer }, align 32
@mtk_hsdma_free_rooms_in_ring._entry_ptr = internal global ptr @mtk_hsdma_free_rooms_in_ring._entry, section ".printk_index", align 4
@vchan_cookie_complete.__UNIQUE_ID_ddebug237 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str, ptr @.str.34, ptr @.str.35, ptr @.str.36, i8 0, i8 25, i8 -128, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.34 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"vchan_cookie_complete\00", [42 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"drivers/dma/mediatek/../virt-dma.h\00", [61 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"txd %p[%x]: marked complete\0A\00", [35 x i8] zeroinitializer }, align 32
@mt7623_soc = internal constant { %struct.mtk_hsdma_soc, [24 x i8] } { %struct.mtk_hsdma_soc { i32 -2147483648, i32 1073741824 }, [24 x i8] zeroinitializer }, align 32
@mt7622_soc = internal constant { %struct.mtk_hsdma_soc, [24 x i8] } { %struct.mtk_hsdma_soc { i32 32768, i32 16384 }, [24 x i8] zeroinitializer }, align 32
@___asan_gen_.37 = private unnamed_addr constant [17 x i8] c"mtk_hsdma_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 1047, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 1051, i32 12 }
@___asan_gen_.43 = private unnamed_addr constant [16 x i8] c"mtk_hsdma_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 887, i32 34 }
@___asan_gen_.63 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 915, i32 3 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 919, i32 40 }
@___asan_gen_.72 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 921, i32 3 }
@___asan_gen_.78 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 928, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 935, i32 2 }
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 955, i32 13 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 957, i32 3 }
@___asan_gen_.102 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 987, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 998, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 1005, i32 2 }
@___asan_gen_.117 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 779, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 785, i32 2 }
@___asan_gen_.121 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.125 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.125, i32 87, i32 2 }
@___asan_gen_.127 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 574, i32 4 }
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [38 x i8] c"../drivers/dma/mediatek/../virt-dma.h\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 101, i32 2 }
@___asan_gen_.145 = private unnamed_addr constant [11 x i8] c"mt7623_soc\00", align 1
@___asan_gen_.147 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 877, i32 35 }
@___asan_gen_.148 = private unnamed_addr constant [11 x i8] c"mt7622_soc\00", align 1
@___asan_gen_.149 = private constant [36 x i8] c"../drivers/dma/mediatek/mtk-hsdma.c\00", align 1
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.149, i32 882, i32 35 }
@llvm.compiler.used = appending global [53 x ptr] [ptr @__UNIQUE_ID_author250, ptr @__UNIQUE_ID_description249, ptr @__UNIQUE_ID_file251, ptr @__UNIQUE_ID_license252, ptr @__exitcall_mtk_hsdma_driver_exit, ptr @__initcall__kmod_mtk_hsdma__248_1055_mtk_hsdma_driver_init6, ptr @mtk_hsdma_driver_exit, ptr @mtk_hsdma_free_rooms_in_ring._entry, ptr @mtk_hsdma_free_rooms_in_ring._entry_ptr, ptr @mtk_hsdma_probe._entry, ptr @mtk_hsdma_probe._entry.10, ptr @mtk_hsdma_probe._entry.15, ptr @mtk_hsdma_probe._entry.19, ptr @mtk_hsdma_probe._entry.22, ptr @mtk_hsdma_probe._entry.25, ptr @mtk_hsdma_probe._entry.7, ptr @mtk_hsdma_probe._entry_ptr, ptr @mtk_hsdma_probe._entry_ptr.12, ptr @mtk_hsdma_probe._entry_ptr.18, ptr @mtk_hsdma_probe._entry_ptr.21, ptr @mtk_hsdma_probe._entry_ptr.24, ptr @mtk_hsdma_probe._entry_ptr.27, ptr @mtk_hsdma_probe._entry_ptr.9, ptr @mtk_hsdma_driver, ptr @.str, ptr @mtk_hsdma_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.8, ptr @.str.11, ptr @mtk_hsdma_probe.__key, ptr @.str.13, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.26, ptr @.str.28, ptr @.str.30, ptr @init_completion.__key, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.36, ptr @mt7623_soc, ptr @mt7622_soc], section "llvm.metadata"
@0 = internal global [38 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hsdma_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hsdma_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hsdma_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.63 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hsdma_probe._entry.7 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hsdma_probe._entry.10 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hsdma_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hsdma_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hsdma_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.102 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hsdma_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hsdma_probe._entry.25 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.117 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_hsdma_free_rooms_in_ring._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7623_soc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.147 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mt7622_soc to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.148 to i32), i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hsdma_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_hsdma_driver, ptr noundef null) #8
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hsdma_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_hsdma_driver) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hsdma_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 440, i32 noundef 3520) #8
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %call1 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #8
  %call3 = tail call ptr @devm_ioremap_resource(ptr noundef %dev, ptr noundef %call1) #8
  %base = getelementptr inbounds %struct.mtk_hsdma_device, ptr %call.i, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call3, ptr %base, align 4
  %cmp.i = icmp ugt ptr %call3, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then6, label %if.end9

if.then6:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %1 = ptrtoint ptr %call3 to i32
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %call11 = tail call ptr @of_device_get_match_data(ptr noundef %dev) #8
  %soc = getelementptr inbounds %struct.mtk_hsdma_device, ptr %call.i, i32 0, i32 9
  %2 = ptrtoint ptr %soc to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call11, ptr %soc, align 4
  %tobool13.not = icmp eq ptr %call11, null
  br i1 %tobool13.not, label %do.end, label %if.end16

do.end:                                           ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.1) #11
  br label %cleanup

if.end16:                                         ; preds = %if.end9
  %call18 = tail call ptr @devm_clk_get(ptr noundef %dev, ptr noundef nonnull @.str.6) #8
  %clk = getelementptr inbounds %struct.mtk_hsdma_device, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %clk to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call18, ptr %clk, align 4
  %cmp.i197 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i197, label %do.end24, label %if.end30

do.end24:                                         ; preds = %if.end16
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %4 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %5, null
  br i1 %tobool.not.i, label %if.end.i, label %do.end24.dev_name.exit_crit_edge

do.end24.dev_name.exit_crit_edge:                 ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit

if.end.i:                                         ; preds = %do.end24
  call void @__sanitizer_cov_trace_pc() #10
  %6 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %do.end24.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %7, %if.end.i ], [ %5, %do.end24.dev_name.exit_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.8, ptr noundef %retval.0.i) #11
  %8 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %clk, align 4
  %10 = ptrtoint ptr %9 to i32
  br label %cleanup

if.end30:                                         ; preds = %if.end16
  %call31 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 1024, i32 noundef 0) #8
  %tobool32.not = icmp eq ptr %call31, null
  br i1 %tobool32.not, label %do.end36, label %if.end40

do.end36:                                         ; preds = %if.end30
  %init_name.i198 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %init_name.i198 to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %init_name.i198, align 8
  %tobool.not.i199 = icmp eq ptr %12, null
  br i1 %tobool.not.i199, label %if.end.i200, label %do.end36.dev_name.exit202_crit_edge

do.end36.dev_name.exit202_crit_edge:              ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit202

if.end.i200:                                      ; preds = %do.end36
  call void @__sanitizer_cov_trace_pc() #10
  %13 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %dev, align 4
  br label %dev_name.exit202

dev_name.exit202:                                 ; preds = %if.end.i200, %do.end36.dev_name.exit202_crit_edge
  %retval.0.i201 = phi ptr [ %14, %if.end.i200 ], [ %12, %do.end36.dev_name.exit202_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.11, ptr noundef %retval.0.i201) #11
  br label %cleanup

if.end40:                                         ; preds = %if.end30
  %15 = ptrtoint ptr %call31 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %call31, align 4
  %irq = getelementptr inbounds %struct.mtk_hsdma_device, ptr %call.i, i32 0, i32 3
  %17 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %17)
  store i32 %16, ptr %irq, align 4
  %pc_refcnt = getelementptr inbounds %struct.mtk_hsdma_device, ptr %call.i, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pc_refcnt, i32 noundef 4) #8
  %18 = ptrtoint ptr %pc_refcnt to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile i32 0, ptr %pc_refcnt, align 4
  %lock = getelementptr inbounds %struct.mtk_hsdma_device, ptr %call.i, i32 0, i32 8
  tail call void @__raw_spin_lock_init(ptr noundef %lock, ptr noundef nonnull @.str.13, ptr noundef nonnull @mtk_hsdma_probe.__key, i16 noundef signext 3) #8
  %cap_mask = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 6
  tail call void @_set_bit(i32 noundef 0, ptr noundef %cap_mask) #8
  %copy_align = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 10
  %19 = ptrtoint ptr %copy_align to i32
  call void @__asan_store4_noabort(i32 %19)
  store i32 4, ptr %copy_align, align 4
  %device_alloc_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 27
  %20 = ptrtoint ptr %device_alloc_chan_resources to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr @mtk_hsdma_alloc_chan_resources, ptr %device_alloc_chan_resources, align 4
  %device_free_chan_resources = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 29
  %21 = ptrtoint ptr %device_free_chan_resources to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr @mtk_hsdma_free_chan_resources, ptr %device_free_chan_resources, align 4
  %device_tx_status = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 49
  %22 = ptrtoint ptr %device_tx_status to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr @mtk_hsdma_tx_status, ptr %device_tx_status, align 4
  %device_issue_pending = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 50
  %23 = ptrtoint ptr %device_issue_pending to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr @mtk_hsdma_issue_pending, ptr %device_issue_pending, align 4
  %device_prep_dma_memcpy = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 30
  %24 = ptrtoint ptr %device_prep_dma_memcpy to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr @mtk_hsdma_prep_dma_memcpy, ptr %device_prep_dma_memcpy, align 4
  %device_terminate_all = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 47
  %25 = ptrtoint ptr %device_terminate_all to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @mtk_hsdma_terminate_all, ptr %device_terminate_all, align 4
  %src_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 19
  %26 = ptrtoint ptr %src_addr_widths to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 16, ptr %src_addr_widths, align 4
  %dst_addr_widths = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 20
  %27 = ptrtoint ptr %dst_addr_widths to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 16, ptr %dst_addr_widths, align 4
  %directions = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 21
  %28 = ptrtoint ptr %directions to i32
  call void @__asan_store4_noabort(i32 %28)
  store i32 1, ptr %directions, align 4
  %residue_granularity = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 26
  %29 = ptrtoint ptr %residue_granularity to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 1, ptr %residue_granularity, align 4
  %dev46 = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 15
  %30 = ptrtoint ptr %dev46 to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr %dev, ptr %dev46, align 4
  %channels = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3
  %31 = ptrtoint ptr %channels to i32
  call void @__asan_store4_noabort(i32 %31)
  store volatile ptr %channels, ptr %channels, align 4
  %prev.i = getelementptr inbounds %struct.dma_device, ptr %call.i, i32 0, i32 3, i32 1
  %32 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %channels, ptr %prev.i, align 4
  %dma_requests = getelementptr inbounds %struct.mtk_hsdma_device, ptr %call.i, i32 0, i32 4
  %33 = ptrtoint ptr %dma_requests to i32
  call void @__asan_store4_noabort(i32 %33)
  store i32 3, ptr %dma_requests, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %34 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %of_node, align 8
  %tobool48.not = icmp eq ptr %35, null
  br i1 %tobool48.not, label %if.end40.if.end59_crit_edge, label %land.lhs.true

if.end40.if.end59_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

land.lhs.true:                                    ; preds = %if.end40
  %call.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %35, ptr noundef nonnull @.str.14, ptr noundef %dma_requests, i32 noundef 1, i32 noundef 0) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i)
  %tobool53.not = icmp sgt i32 %call.i.i, -1
  br i1 %tobool53.not, label %land.lhs.true.if.end59_crit_edge, label %do.end57

land.lhs.true.if.end59_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end59

do.end57:                                         ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.16, i32 noundef 3) #11
  br label %if.end59

if.end59:                                         ; preds = %do.end57, %land.lhs.true.if.end59_crit_edge, %if.end40.if.end59_crit_edge
  %call5.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 32, i32 noundef 3520) #8
  %pc = getelementptr inbounds %struct.mtk_hsdma_device, ptr %call.i, i32 0, i32 6
  %36 = ptrtoint ptr %pc to i32
  call void @__asan_store4_noabort(i32 %36)
  store ptr %call5.i.i, ptr %pc, align 4
  %tobool63.not = icmp eq ptr %call5.i.i, null
  br i1 %tobool63.not, label %if.end59.cleanup_crit_edge, label %if.end65

if.end59.cleanup_crit_edge:                       ; preds = %if.end59
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end65:                                         ; preds = %if.end59
  %37 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %dma_requests, align 4
  %39 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %38, i32 248) #8
  %40 = extractvalue { i32, i1 } %39, 1
  br i1 %40, label %devm_kcalloc.exit.thread, label %devm_kcalloc.exit, !prof !88

devm_kcalloc.exit.thread:                         ; preds = %if.end65
  call void @__sanitizer_cov_trace_pc() #10
  %vc69212 = getelementptr inbounds %struct.mtk_hsdma_device, ptr %call.i, i32 0, i32 5
  %41 = ptrtoint ptr %vc69212 to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr null, ptr %vc69212, align 4
  br label %cleanup

devm_kcalloc.exit:                                ; preds = %if.end65
  %42 = extractvalue { i32, i1 } %39, 0
  %call5.i.i203 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef %42, i32 noundef 3520) #8
  %vc69 = getelementptr inbounds %struct.mtk_hsdma_device, ptr %call.i, i32 0, i32 5
  %43 = ptrtoint ptr %vc69 to i32
  call void @__asan_store4_noabort(i32 %43)
  store ptr %call5.i.i203, ptr %vc69, align 4
  %tobool71.not = icmp eq ptr %call5.i.i203, null
  br i1 %tobool71.not, label %devm_kcalloc.exit.cleanup_crit_edge, label %for.cond.preheader

devm_kcalloc.exit.cleanup_crit_edge:              ; preds = %devm_kcalloc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

for.cond.preheader:                               ; preds = %devm_kcalloc.exit
  %44 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %dma_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %45)
  %cmp214.not = icmp eq i32 %45, 0
  br i1 %cmp214.not, label %for.cond.preheader.for.end_crit_edge, label %for.cond.preheader.for.body_crit_edge

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %i.0215 = phi i32 [ %inc, %for.body.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %46 = ptrtoint ptr %vc69 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %vc69, align 4
  %arrayidx = getelementptr %struct.mtk_hsdma_vchan, ptr %47, i32 %i.0215
  %desc_free = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 2
  %48 = ptrtoint ptr %desc_free to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr @mtk_hsdma_vdesc_free, ptr %desc_free, align 4
  tail call void @vchan_init(ptr noundef %arrayidx, ptr noundef nonnull %call.i) #8
  %issue_completion = getelementptr %struct.mtk_hsdma_vchan, ptr %47, i32 %i.0215, i32 1
  %49 = ptrtoint ptr %issue_completion to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %issue_completion, align 4
  %wait.i = getelementptr %struct.mtk_hsdma_vchan, ptr %47, i32 %i.0215, i32 1, i32 1
  tail call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.31, ptr noundef nonnull @init_completion.__key) #8
  %desc_hw_processing = getelementptr %struct.mtk_hsdma_vchan, ptr %47, i32 %i.0215, i32 3
  %50 = ptrtoint ptr %desc_hw_processing to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %desc_hw_processing, ptr %desc_hw_processing, align 4
  %prev.i204 = getelementptr %struct.mtk_hsdma_vchan, ptr %47, i32 %i.0215, i32 3, i32 1
  %51 = ptrtoint ptr %prev.i204 to i32
  call void @__asan_store4_noabort(i32 %51)
  store ptr %desc_hw_processing, ptr %prev.i204, align 4
  %inc = add nuw i32 %i.0215, 1
  %52 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %dma_requests, align 4
  %cmp = icmp ult i32 %inc, %53
  br i1 %cmp, label %for.body.for.body_crit_edge, label %for.body.for.end_crit_edge

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %for.body.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %call78 = tail call i32 @dma_async_device_register(ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call78)
  %tobool79.not = icmp eq i32 %call78, 0
  br i1 %tobool79.not, label %if.end81, label %for.end.cleanup_crit_edge

for.end.cleanup_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end81:                                         ; preds = %for.end
  %54 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %of_node, align 8
  %call84 = tail call i32 @of_dma_controller_register(ptr noundef %55, ptr noundef nonnull @of_dma_xlate_by_chan_id, ptr noundef nonnull %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call84)
  %tobool85.not = icmp eq i32 %call84, 0
  br i1 %tobool85.not, label %if.end91, label %do.end89

do.end89:                                         ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20, i32 noundef %call84) #11
  br label %err_unregister

if.end91:                                         ; preds = %if.end81
  tail call fastcc void @mtk_hsdma_hw_init(ptr noundef nonnull %call.i)
  %56 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %irq, align 4
  %init_name.i205 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %58 = ptrtoint ptr %init_name.i205 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %init_name.i205, align 8
  %tobool.not.i206 = icmp eq ptr %59, null
  br i1 %tobool.not.i206, label %if.end.i207, label %if.end91.dev_name.exit209_crit_edge

if.end91.dev_name.exit209_crit_edge:              ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  br label %dev_name.exit209

if.end.i207:                                      ; preds = %if.end91
  call void @__sanitizer_cov_trace_pc() #10
  %60 = ptrtoint ptr %dev to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %dev, align 4
  br label %dev_name.exit209

dev_name.exit209:                                 ; preds = %if.end.i207, %if.end91.dev_name.exit209_crit_edge
  %retval.0.i208 = phi ptr [ %61, %if.end.i207 ], [ %59, %if.end91.dev_name.exit209_crit_edge ]
  %call.i210 = tail call i32 @devm_request_threaded_irq(ptr noundef %dev, i32 noundef %57, ptr noundef nonnull @mtk_hsdma_irq, ptr noundef null, i32 noundef 0, ptr noundef %retval.0.i208, ptr noundef %call.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i210)
  %tobool98.not = icmp eq i32 %call.i210, 0
  br i1 %tobool98.not, label %if.end104, label %do.end102

do.end102:                                        ; preds = %dev_name.exit209
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.23, i32 noundef %call.i210) #11
  tail call fastcc void @mtk_hsdma_hw_deinit(ptr noundef nonnull %call.i)
  %62 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %63) #8
  br label %err_unregister

if.end104:                                        ; preds = %dev_name.exit209
  call void @__sanitizer_cov_trace_pc() #10
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %64 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %64)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  tail call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev, ptr noundef nonnull @.str.26) #11
  br label %cleanup

err_unregister:                                   ; preds = %do.end102, %do.end89
  %err.0 = phi i32 [ %call84, %do.end89 ], [ %call.i210, %do.end102 ]
  tail call void @dma_async_device_unregister(ptr noundef nonnull %call.i) #8
  br label %cleanup

cleanup:                                          ; preds = %err_unregister, %if.end104, %for.end.cleanup_crit_edge, %devm_kcalloc.exit.cleanup_crit_edge, %devm_kcalloc.exit.thread, %if.end59.cleanup_crit_edge, %dev_name.exit202, %dev_name.exit, %do.end, %if.then6, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %1, %if.then6 ], [ %10, %dev_name.exit ], [ %err.0, %err_unregister ], [ 0, %if.end104 ], [ -22, %dev_name.exit202 ], [ -19, %do.end ], [ -12, %entry.cleanup_crit_edge ], [ -12, %if.end59.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.cleanup_crit_edge ], [ %call78, %for.end.cleanup_crit_edge ], [ -12, %devm_kcalloc.exit.thread ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hsdma_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dma_requests = getelementptr inbounds %struct.mtk_hsdma_device, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %dma_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %cmp15.not = icmp eq i32 %3, 0
  br i1 %cmp15.not, label %entry.for.end_crit_edge, label %for.body.lr.ph

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %vc1 = getelementptr inbounds %struct.mtk_hsdma_device, ptr %1, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %for.body.lr.ph
  %i.016 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %list_del.exit.for.body_crit_edge ]
  %4 = ptrtoint ptr %vc1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %vc1, align 4
  %arrayidx = getelementptr %struct.mtk_hsdma_vchan, ptr %5, i32 %i.016
  %device_node = getelementptr inbounds %struct.dma_chan, ptr %arrayidx, i32 0, i32 8
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %device_node) #8
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %device_node, i32 0, i32 1
  %6 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %prev.i.i, align 4
  %8 = ptrtoint ptr %device_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %device_node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %9, i32 0, i32 1
  %10 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %7, ptr %prev1.i.i.i, align 4
  %11 = ptrtoint ptr %7 to i32
  call void @__asan_store4_noabort(i32 %11)
  store volatile ptr %9, ptr %7, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %12 = ptrtoint ptr %device_node to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr inttoptr (i32 256 to ptr), ptr %device_node, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %device_node, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %task = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx, i32 0, i32 1
  tail call void @tasklet_kill(ptr noundef %task) #8
  %inc = add nuw i32 %i.016, 1
  %14 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %dma_requests, align 4
  %cmp = icmp ult i32 %inc, %15
  br i1 %cmp, label %list_del.exit.for.body_crit_edge, label %list_del.exit.for.end_crit_edge

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %entry.for.end_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.mtk_hsdma_device, ptr %1, i32 0, i32 1
  %16 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %17, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !90
  %irq = getelementptr inbounds %struct.mtk_hsdma_device, ptr %1, i32 0, i32 3
  %18 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %irq, align 4
  tail call void @synchronize_irq(i32 noundef %19) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %20 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %21, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !90
  %clk.i = getelementptr inbounds %struct.mtk_hsdma_device, ptr %1, i32 0, i32 2
  %22 = ptrtoint ptr %clk.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %clk.i, align 4
  tail call void @clk_disable(ptr noundef %23) #8
  tail call void @clk_unprepare(ptr noundef %23) #8
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %24 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %dev.i.i, align 4
  %call.i.i14 = tail call i32 @__pm_runtime_idle(ptr noundef %25, i32 noundef 4) #8
  %26 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %dev.i.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %27, i1 noundef zeroext true) #8
  tail call void @dma_async_device_unregister(ptr noundef %1) #8
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %28 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %of_node, align 8
  tail call void @of_dma_controller_free(ptr noundef %29) #8
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_device_get_match_data(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hsdma_alloc_chan_resources(ptr nocapture noundef readonly %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %pc_refcnt = getelementptr inbounds %struct.mtk_hsdma_device, ptr %1, i32 0, i32 7
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %pc_refcnt, i32 noundef 4) #8
  %2 = ptrtoint ptr %pc_refcnt to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile i32, ptr %pc_refcnt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %if.then, label %if.else

if.then:                                          ; preds = %entry
  %pc = getelementptr inbounds %struct.mtk_hsdma_device, ptr %1, i32 0, i32 6
  %4 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pc, align 4
  %6 = call ptr @memset(ptr %5, i32 0, i32 32)
  %sz_ring.i = getelementptr inbounds %struct.mtk_hsdma_pchan, ptr %5, i32 0, i32 1
  %7 = ptrtoint ptr %sz_ring.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 2048, ptr %sz_ring.i, align 4
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %8 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev.i.i, align 4
  %tphys.i = getelementptr inbounds %struct.mtk_hsdma_ring, ptr %5, i32 0, i32 3
  %call.i.i = tail call ptr @dma_alloc_attrs(ptr noundef %9, i32 noundef 2048, ptr noundef %tphys.i, i32 noundef 2048, i32 noundef 0) #8
  %10 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %call.i.i, ptr %5, align 4
  %tobool.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool.not.i, label %if.then.cleanup_crit_edge, label %if.end.i

if.then.cleanup_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %if.then
  %arrayidx.i = getelementptr %struct.mtk_hsdma_pdesc, ptr %call.i.i, i32 64
  %rxd.i = getelementptr inbounds %struct.mtk_hsdma_ring, ptr %5, i32 0, i32 1
  %11 = ptrtoint ptr %rxd.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %arrayidx.i, ptr %rxd.i, align 4
  %12 = ptrtoint ptr %tphys.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %tphys.i, align 4
  %add.i = add i32 %13, 1024
  %rphys.i = getelementptr inbounds %struct.mtk_hsdma_ring, ptr %5, i32 0, i32 4
  %14 = ptrtoint ptr %rphys.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 %add.i, ptr %rphys.i, align 4
  %cur_tptr.i = getelementptr inbounds %struct.mtk_hsdma_ring, ptr %5, i32 0, i32 5
  %15 = ptrtoint ptr %cur_tptr.i to i32
  call void @__asan_store2_noabort(i32 %15)
  store i16 0, ptr %cur_tptr.i, align 4
  %cur_rptr.i = getelementptr inbounds %struct.mtk_hsdma_ring, ptr %5, i32 0, i32 6
  %16 = ptrtoint ptr %cur_rptr.i to i32
  call void @__asan_store2_noabort(i32 %16)
  store i16 63, ptr %cur_rptr.i, align 2
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9) to i32))
  %17 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 9), align 4
  %call7.i.i.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %17, i32 noundef 2304, i32 noundef 512) #12
  %cb.i = getelementptr inbounds %struct.mtk_hsdma_ring, ptr %5, i32 0, i32 2
  %18 = ptrtoint ptr %cb.i to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call7.i.i.i.i, ptr %cb.i, align 4
  %tobool9.not.i = icmp eq ptr %call7.i.i.i.i, null
  br i1 %tobool9.not.i, label %if.end.i.err_free_dma.i_crit_edge, label %if.end11.i

if.end.i.err_free_dma.i_crit_edge:                ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %err_free_dma.i

if.end11.i:                                       ; preds = %if.end.i
  %nr_free.i = getelementptr inbounds %struct.mtk_hsdma_pchan, ptr %5, i32 0, i32 2
  %call.i.i.i14 = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_free.i, i32 noundef 4) #8
  %19 = ptrtoint ptr %nr_free.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store volatile i32 63, ptr %nr_free.i, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.mtk_hsdma_device, ptr %1, i32 0, i32 1
  %20 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %21, i32 516
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %23 = and i32 %22, -83886081
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %24 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %25, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i, i32 %23) #8, !srcloc !90
  %call12.i = tail call fastcc i32 @mtk_hsdma_busy_wait(ptr noundef %1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call12.i)
  %tobool13.not.i = icmp eq i32 %call12.i, 0
  br i1 %tobool13.not.i, label %if.end, label %err_free_cb.i

err_free_cb.i:                                    ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %26 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %cb.i, align 4
  tail call void @kfree(ptr noundef %27) #8
  br label %err_free_dma.i

err_free_dma.i:                                   ; preds = %err_free_cb.i, %if.end.i.err_free_dma.i_crit_edge
  %err.0.i = phi i32 [ %call12.i, %err_free_cb.i ], [ -12, %if.end.i.err_free_dma.i_crit_edge ]
  %28 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %dev.i.i, align 4
  %30 = ptrtoint ptr %sz_ring.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %sz_ring.i, align 4
  %32 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %5, align 4
  %34 = ptrtoint ptr %tphys.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %tphys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %29, i32 noundef %31, ptr noundef %33, i32 noundef %35, i32 noundef 0) #8
  br label %cleanup

if.end:                                           ; preds = %if.end11.i
  call void @__sanitizer_cov_trace_pc() #10
  %36 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i67.i = getelementptr i8, ptr %37, i32 520
  %38 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i67.i) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %39 = or i32 %38, 16777472
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %40 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i6.i.i68.i = getelementptr i8, ptr %41, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i68.i, i32 %39) #8, !srcloc !90
  %42 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i70.i = getelementptr i8, ptr %43, i32 520
  %44 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i70.i) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %45 = and i32 %44, -16777473
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %46 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i6.i.i72.i = getelementptr i8, ptr %47, i32 520
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i72.i, i32 %45) #8, !srcloc !90
  %48 = ptrtoint ptr %tphys.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load i32, ptr %tphys.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %50 = tail call i32 @llvm.bswap.i32(i32 %49) #8
  %51 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %52, i32 %50) #8, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %53 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %54, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 1073741824) #8, !srcloc !90
  %55 = ptrtoint ptr %cur_tptr.i to i32
  call void @__asan_load2_noabort(i32 %55)
  %56 = load i16, ptr %cur_tptr.i, align 4
  %conv.i = zext i16 %56 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %57 = tail call i32 @llvm.bswap.i32(i32 %conv.i) #8
  %58 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i75.i = getelementptr i8, ptr %59, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i75.i, i32 %57) #8, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %60 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i77.i = getelementptr i8, ptr %61, i32 12
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i77.i, i32 0) #8, !srcloc !90
  %62 = ptrtoint ptr %rphys.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %rphys.i, align 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %64 = tail call i32 @llvm.bswap.i32(i32 %63) #8
  %65 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i79.i = getelementptr i8, ptr %66, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i79.i, i32 %64) #8, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %67 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %67)
  %68 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i81.i = getelementptr i8, ptr %68, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i81.i, i32 1073741824) #8, !srcloc !90
  %69 = ptrtoint ptr %cur_rptr.i to i32
  call void @__asan_load2_noabort(i32 %69)
  %70 = load i16, ptr %cur_rptr.i, align 2
  %conv20.i = zext i16 %70 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %71 = tail call i32 @llvm.bswap.i32(i32 %conv20.i) #8
  %72 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i83.i = getelementptr i8, ptr %73, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i83.i, i32 %71) #8, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %74 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i85.i = getelementptr i8, ptr %75, i32 268
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i85.i, i32 0) #8, !srcloc !90
  %76 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i87.i = getelementptr i8, ptr %77, i32 516
  %78 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i87.i) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %79 = or i32 %78, 83886080
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %80 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i6.i.i89.i = getelementptr i8, ptr %81, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i89.i, i32 %79) #8, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %82 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i91.i = getelementptr i8, ptr %83, i32 524
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i91.i, i32 345243648) #8, !srcloc !90
  %84 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i93.i = getelementptr i8, ptr %85, i32 552
  %86 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i93.i) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %87 = or i32 %86, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %88 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i6.i.i95.i = getelementptr i8, ptr %89, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i95.i, i32 %87) #8, !srcloc !90
  %call.i.i.i15 = tail call zeroext i1 @__kasan_check_write(ptr noundef %pc_refcnt, i32 noundef 4) #8
  %90 = ptrtoint ptr %pc_refcnt to i32
  call void @__asan_store4_noabort(i32 %90)
  store volatile i32 1, ptr %pc_refcnt, align 4
  br label %cleanup

if.else:                                          ; preds = %entry
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pc_refcnt, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %pc_refcnt, i32 1, i32 3, i32 1) #8
  %91 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_add\0A1:\09ldrex\09$0, [$4]\0A\09add\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pc_refcnt, ptr %pc_refcnt, i32 1, ptr elementtype(i32) %pc_refcnt) #8, !srcloc !93
  %asmresult.i.i.i.i.i = extractvalue { i32, i32, i32 } %91, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i)
  %tobool1.not.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i, 0
  br i1 %tobool1.not.i.i.i, label %if.else.if.end15.sink.split.i.i.i_crit_edge, label %if.else.i.i.i, !prof !88

if.else.if.end15.sink.split.i.i.i_crit_edge:      ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i:                                    ; preds = %if.else
  %add.i.i.i = add i32 %asmresult.i.i.i.i.i, 1
  %92 = or i32 %add.i.i.i, %asmresult.i.i.i.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %92)
  %.not.i.i.i = icmp sgt i32 %92, -1
  br i1 %.not.i.i.i, label %if.else.i.i.i.cleanup_crit_edge, label %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, !prof !94

if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge: ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end15.sink.split.i.i.i

if.else.i.i.i.cleanup_crit_edge:                  ; preds = %if.else.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end15.sink.split.i.i.i:                        ; preds = %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge, %if.else.if.end15.sink.split.i.i.i_crit_edge
  %.sink.i.i.i = phi i32 [ 2, %if.else.if.end15.sink.split.i.i.i_crit_edge ], [ 1, %if.else.i.i.i.if.end15.sink.split.i.i.i_crit_edge ]
  tail call void @refcount_warn_saturate(ptr noundef %pc_refcnt, i32 noundef %.sink.i.i.i) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end15.sink.split.i.i.i, %if.else.i.i.i.cleanup_crit_edge, %if.end, %err_free_dma.i, %if.then.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %if.end ], [ 0, %if.else.i.i.i.cleanup_crit_edge ], [ 0, %if.end15.sink.split.i.i.i ], [ -12, %if.then.cleanup_crit_edge ], [ %err.0.i, %err_free_dma.i ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hsdma_free_chan_resources(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %call1 = tail call i32 @mtk_hsdma_terminate_all(ptr noundef %c)
  %pc_refcnt = getelementptr inbounds %struct.mtk_hsdma_device, ptr %1, i32 0, i32 7
  %call.i.i.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %pc_refcnt, i32 noundef 4) #8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !95
  tail call void @llvm.prefetch.p0(ptr %pc_refcnt, i32 1, i32 3, i32 1) #8
  %2 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_fetch_sub\0A1:\09ldrex\09$0, [$4]\0A\09sub\09$1, $0, $5\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b", "=&r,=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %pc_refcnt, ptr %pc_refcnt, i32 1, ptr elementtype(i32) %pc_refcnt) #8, !srcloc !96
  %asmresult.i.i.i.i.i.i = extractvalue { i32, i32, i32 } %2, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %asmresult.i.i.i.i.i.i)
  %cmp.i.i.i = icmp eq i32 %asmresult.i.i.i.i.i.i, 1
  br i1 %cmp.i.i.i, label %if.end, label %if.end5.i.i.i

if.end5.i.i.i:                                    ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i.i.i)
  %.not.i.i.i = icmp sgt i32 %asmresult.i.i.i.i.i.i, 0
  br i1 %.not.i.i.i, label %if.end5.i.i.i.cleanup_crit_edge, label %if.then10.i.i.i, !prof !94

if.end5.i.i.i.cleanup_crit_edge:                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.then10.i.i.i:                                  ; preds = %if.end5.i.i.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @refcount_warn_saturate(ptr noundef %pc_refcnt, i32 noundef 3) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #8, !srcloc !97
  %pc = getelementptr inbounds %struct.mtk_hsdma_device, ptr %1, i32 0, i32 6
  %3 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %pc, align 4
  %base.i.i.i.i = getelementptr inbounds %struct.mtk_hsdma_device, ptr %1, i32 0, i32 1
  %5 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i.i = getelementptr i8, ptr %6, i32 516
  %7 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i.i) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %8 = and i32 %7, -83886081
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %9 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i6.i.i.i = getelementptr i8, ptr %10, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i.i, i32 %8) #8, !srcloc !90
  %call.i = tail call fastcc i32 @mtk_hsdma_busy_wait(ptr noundef %1) #8
  %11 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i.i16.i = getelementptr i8, ptr %12, i32 552
  %13 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i16.i) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %14 = and i32 %13, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %15 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i6.i.i18.i = getelementptr i8, ptr %16, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i18.i, i32 %14) #8, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %17 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %base.i.i.i.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %18, i32 0) #8, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %19 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %20, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 0) #8, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %21 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i21.i = getelementptr i8, ptr %22, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i21.i, i32 0) #8, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %23 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i23.i = getelementptr i8, ptr %24, i32 256
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i23.i, i32 0) #8, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %25 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i25.i = getelementptr i8, ptr %26, i32 260
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i25.i, i32 0) #8, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %27 = ptrtoint ptr %base.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %base.i.i.i.i, align 4
  %add.ptr.i27.i = getelementptr i8, ptr %28, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i27.i, i32 1056964608) #8, !srcloc !90
  %cb.i = getelementptr inbounds %struct.mtk_hsdma_ring, ptr %4, i32 0, i32 2
  %29 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %cb.i, align 4
  tail call void @kfree(ptr noundef %30) #8
  %dev.i.i = getelementptr inbounds %struct.dma_device, ptr %1, i32 0, i32 15
  %31 = ptrtoint ptr %dev.i.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %dev.i.i, align 4
  %sz_ring.i = getelementptr inbounds %struct.mtk_hsdma_pchan, ptr %4, i32 0, i32 1
  %33 = ptrtoint ptr %sz_ring.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load i32, ptr %sz_ring.i, align 4
  %35 = ptrtoint ptr %4 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %4, align 4
  %tphys.i = getelementptr inbounds %struct.mtk_hsdma_ring, ptr %4, i32 0, i32 3
  %37 = ptrtoint ptr %tphys.i to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load i32, ptr %tphys.i, align 4
  tail call void @dma_free_attrs(ptr noundef %32, i32 noundef %34, ptr noundef %36, i32 noundef %38, i32 noundef 0) #8
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then10.i.i.i, %if.end5.i.i.i.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hsdma_tx_status(ptr noundef %c, i32 noundef %cookie, ptr noundef writeonly %txstate) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %cookie1.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 2
  %0 = ptrtoint ptr %cookie1.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cookie1.i, align 4
  %completed_cookie.i = getelementptr inbounds %struct.dma_chan, ptr %c, i32 0, i32 3
  %2 = ptrtoint ptr %completed_cookie.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %completed_cookie.i, align 4
  tail call void asm sideeffect "", "~{memory}"() #8, !srcloc !98
  %tobool.not.i = icmp eq ptr %txstate, null
  br i1 %tobool.not.i, label %entry.if.end.i_crit_edge, label %if.then.i

entry.if.end.i_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end.i

if.then.i:                                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

if.then.i.i.cleanup_crit_edge:                    ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.else.i.i:                                      ; preds = %if.end.i
  %or.cond16.i.i = and i1 %cmp5.i.i, %cmp4.not.i.i
  %brmerge38 = or i1 %tobool.not.i, %or.cond16.i.i
  %not.or.cond16.i.i = xor i1 %or.cond16.i.i, true
  br i1 %brmerge38, label %if.else.i.i.cleanup_crit_edge, label %if.else.i.i.do.body2_crit_edge

if.else.i.i.do.body2_crit_edge:                   ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body2

if.else.i.i.cleanup_crit_edge:                    ; preds = %if.else.i.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

do.body2:                                         ; preds = %if.else.i.i.do.body2_crit_edge, %if.then.i.i.do.body2_crit_edge
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %desc_hw_processing.i = getelementptr inbounds %struct.mtk_hsdma_vchan, ptr %c, i32 0, i32 3
  br label %for.cond.i

for.cond.i:                                       ; preds = %for.body.i.for.cond.i_crit_edge, %do.body2
  %.pn.in.i = phi ptr [ %desc_hw_processing.i, %do.body2 ], [ %.pn.i, %for.body.i.for.cond.i_crit_edge ]
  %8 = ptrtoint ptr %.pn.in.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %.pn.i = load ptr, ptr %.pn.in.i, align 4
  %cmp.not.i = icmp eq ptr %.pn.i, %desc_hw_processing.i
  br i1 %cmp.not.i, label %for.end.i, label %for.body.i

for.body.i:                                       ; preds = %for.cond.i
  %vd.0.i = getelementptr i8, ptr %.pn.i, i32 -108
  %9 = ptrtoint ptr %vd.0.i to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load i32, ptr %vd.0.i, align 4
  %cmp3.i = icmp eq i32 %10, %cookie
  br i1 %cmp3.i, label %for.body.i.mtk_hsdma_find_active_desc.exit_crit_edge, label %for.body.i.for.cond.i_crit_edge

for.body.i.for.cond.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond.i

for.body.i.mtk_hsdma_find_active_desc.exit_crit_edge: ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hsdma_find_active_desc.exit

for.end.i:                                        ; preds = %for.cond.i
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  br label %for.cond13.i

for.cond13.i:                                     ; preds = %for.body19.i.for.cond13.i_crit_edge, %for.end.i
  %.pn44.in.i = phi ptr [ %desc_issued.i, %for.end.i ], [ %.pn44.i, %for.body19.i.for.cond13.i_crit_edge ]
  %11 = ptrtoint ptr %.pn44.in.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %.pn44.i = load ptr, ptr %.pn44.in.i, align 4
  %cmp17.not.i = icmp eq ptr %.pn44.i, %desc_issued.i
  br i1 %cmp17.not.i, label %mtk_hsdma_find_active_desc.exit.thread, label %for.body19.i

mtk_hsdma_find_active_desc.exit.thread:           ; preds = %for.cond13.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #8
  br label %dma_set_residue.exit

for.body19.i:                                     ; preds = %for.cond13.i
  %vd.1.i = getelementptr i8, ptr %.pn44.i, i32 -108
  %12 = ptrtoint ptr %vd.1.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %vd.1.i, align 4
  %cmp22.i = icmp eq i32 %13, %cookie
  br i1 %cmp22.i, label %for.body19.i.mtk_hsdma_find_active_desc.exit_crit_edge, label %for.body19.i.for.cond13.i_crit_edge

for.body19.i.for.cond13.i_crit_edge:              ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.cond13.i

for.body19.i.mtk_hsdma_find_active_desc.exit_crit_edge: ; preds = %for.body19.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hsdma_find_active_desc.exit

mtk_hsdma_find_active_desc.exit:                  ; preds = %for.body19.i.mtk_hsdma_find_active_desc.exit_crit_edge, %for.body.i.mtk_hsdma_find_active_desc.exit_crit_edge
  %.pn44.i.lcssa.pn = phi ptr [ %.pn44.i, %for.body19.i.mtk_hsdma_find_active_desc.exit_crit_edge ], [ %.pn.i, %for.body.i.mtk_hsdma_find_active_desc.exit_crit_edge ]
  %retval.0.i = getelementptr i8, ptr %.pn44.i.lcssa.pn, i32 -108
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call5) #8
  %tobool11.not = icmp eq ptr %retval.0.i, null
  br i1 %tobool11.not, label %mtk_hsdma_find_active_desc.exit.dma_set_residue.exit_crit_edge, label %if.then12

mtk_hsdma_find_active_desc.exit.dma_set_residue.exit_crit_edge: ; preds = %mtk_hsdma_find_active_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %dma_set_residue.exit

if.then12:                                        ; preds = %mtk_hsdma_find_active_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %residue = getelementptr i8, ptr %.pn44.i.lcssa.pn, i32 12
  %14 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load i32, ptr %residue, align 4
  br label %dma_set_residue.exit

dma_set_residue.exit:                             ; preds = %if.then12, %mtk_hsdma_find_active_desc.exit.dma_set_residue.exit_crit_edge, %mtk_hsdma_find_active_desc.exit.thread
  %bytes.0 = phi i32 [ %15, %if.then12 ], [ 0, %mtk_hsdma_find_active_desc.exit.dma_set_residue.exit_crit_edge ], [ 0, %mtk_hsdma_find_active_desc.exit.thread ]
  %residue1.i = getelementptr inbounds %struct.dma_tx_state, ptr %txstate, i32 0, i32 2
  %16 = ptrtoint ptr %residue1.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store i32 %bytes.0, ptr %residue1.i, align 4
  br label %cleanup

cleanup:                                          ; preds = %dma_set_residue.exit, %if.else.i.i.cleanup_crit_edge, %if.then.i.i.cleanup_crit_edge
  %retval.0.i.i35.shrunk = phi i1 [ true, %dma_set_residue.exit ], [ %not.or.cond.i.i, %if.then.i.i.cleanup_crit_edge ], [ %not.or.cond16.i.i, %if.else.i.i.cleanup_crit_edge ]
  %retval.0.i.i35 = zext i1 %retval.0.i.i35.shrunk to i32
  ret i32 %retval.0.i.i35
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hsdma_issue_pending(ptr noundef %c) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = ptrtoint ptr %c to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %c, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call4 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock) #8
  %desc_submitted.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %2 = ptrtoint ptr %desc_submitted.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load volatile ptr, ptr %desc_submitted.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %3, %desc_submitted.i
  br i1 %cmp.i.not.i.i, label %entry.vchan_issue_pending.exit_crit_edge, label %if.then.i.i

entry.vchan_issue_pending.exit_crit_edge:         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_issue_pending.exit

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

if.then:                                          ; preds = %vchan_issue_pending.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call fastcc void @mtk_hsdma_issue_vchan_pending(ptr noundef %1, ptr noundef %c)
  br label %if.end

if.end:                                           ; preds = %if.then, %vchan_issue_pending.exit.if.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock, i32 noundef %call4) #8
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal ptr @mtk_hsdma_prep_dma_memcpy(ptr noundef %c, i32 noundef %dest, i32 noundef %src, i32 noundef %len, i32 noundef %flags) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 2304, i32 noundef 132) #12
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end:                                           ; preds = %entry
  %len1 = getelementptr inbounds %struct.mtk_hsdma_vdesc, ptr %call7.i.i, i32 0, i32 1
  %1 = ptrtoint ptr %len1 to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 %len, ptr %len1, align 4
  %residue = getelementptr inbounds %struct.mtk_hsdma_vdesc, ptr %call7.i.i, i32 0, i32 2
  %2 = ptrtoint ptr %residue to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %len, ptr %residue, align 8
  %src2 = getelementptr inbounds %struct.mtk_hsdma_vdesc, ptr %call7.i.i, i32 0, i32 4
  %3 = ptrtoint ptr %src2 to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 %src, ptr %src2, align 8
  %dest3 = getelementptr inbounds %struct.mtk_hsdma_vdesc, ptr %call7.i.i, i32 0, i32 3
  %4 = ptrtoint ptr %dest3 to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %dest, ptr %dest3, align 4
  tail call void @dma_async_tx_descriptor_init(ptr noundef nonnull %call7.i.i, ptr noundef %c) #8
  %flags2.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 1
  %5 = ptrtoint ptr %flags2.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store i32 %flags, ptr %flags2.i, align 4
  %tx_submit.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 4
  %6 = ptrtoint ptr %tx_submit.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr @vchan_tx_submit, ptr %tx_submit.i, align 8
  %desc_free.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call7.i.i, i32 0, i32 5
  %7 = ptrtoint ptr %desc_free.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr @vchan_tx_desc_free, ptr %desc_free.i, align 4
  %tx_result.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1
  %8 = ptrtoint ptr %tx_result.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 0, ptr %tx_result.i, align 4
  %residue.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 1, i32 1
  %9 = ptrtoint ptr %residue.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %residue.i, align 8
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call7.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %prev.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %11, ptr noundef %desc_allocated.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end.vchan_tx_prep.exit_crit_edge

if.end.vchan_tx_prep.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_tx_prep.exit

if.end.i.i.i:                                     ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  %12 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %node.i, ptr %prev.i.i, align 4
  %13 = ptrtoint ptr %node.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %desc_allocated.i, ptr %node.i, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %call7.i.i, i32 0, i32 2, i32 1
  %14 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev3.i.i.i, align 8
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %node.i, ptr %11, align 4
  br label %vchan_tx_prep.exit

vchan_tx_prep.exit:                               ; preds = %if.end.i.i.i, %if.end.vchan_tx_prep.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call7.i) #8
  br label %cleanup

cleanup:                                          ; preds = %vchan_tx_prep.exit, %entry.cleanup_crit_edge
  ret ptr %call7.i.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hsdma_terminate_all(ptr noundef %c) #2 align 64 {
entry:
  %head.i.i = alloca %struct.list_head, align 4
  %head.i = alloca %struct.list_head, align 4
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i) #8
  %0 = getelementptr inbounds %struct.list_head, ptr %head.i, i32 0, i32 1
  %1 = ptrtoint ptr %head.i to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %head.i, ptr %head.i, align 4
  %2 = ptrtoint ptr %0 to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %head.i, ptr %0, align 4
  %lock.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 3
  %call3.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %desc_allocated.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 4
  %3 = ptrtoint ptr %desc_allocated.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load volatile ptr, ptr %desc_allocated.i, align 4
  %cmp.i.not.i.i = icmp eq ptr %4, %desc_allocated.i
  br i1 %cmp.i.not.i.i, label %entry.list_splice_tail_init.exit.i_crit_edge, label %if.then.i.i

entry.list_splice_tail_init.exit.i_crit_edge:     ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit.i

if.then.i.i:                                      ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
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
  %cmp.i.not.i1.i = icmp eq ptr %14, %desc_submitted.i
  br i1 %cmp.i.not.i1.i, label %list_splice_tail_init.exit.i.list_splice_tail_init.exit6.i_crit_edge, label %if.then.i5.i

list_splice_tail_init.exit.i.list_splice_tail_init.exit6.i_crit_edge: ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_splice_tail_init.exit6.i

if.then.i5.i:                                     ; preds = %list_splice_tail_init.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %15 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %0, align 4
  %prev2.i.i3.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 5, i32 1
  %17 = ptrtoint ptr %prev2.i.i3.i to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load ptr, ptr %prev2.i.i3.i, align 4
  %prev3.i.i4.i = getelementptr inbounds %struct.list_head, ptr %14, i32 0, i32 1
  %19 = ptrtoint ptr %prev3.i.i4.i to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %16, ptr %prev3.i.i4.i, align 4
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
  store ptr %desc_submitted.i, ptr %prev2.i.i3.i, align 4
  br label %list_splice_tail_init.exit6.i

list_splice_tail_init.exit6.i:                    ; preds = %if.then.i5.i, %list_splice_tail_init.exit.i.list_splice_tail_init.exit6.i_crit_edge
  %desc_issued.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6
  %23 = ptrtoint ptr %desc_issued.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load volatile ptr, ptr %desc_issued.i, align 4
  %cmp.i.not.i7.i = icmp eq ptr %24, %desc_issued.i
  br i1 %cmp.i.not.i7.i, label %list_splice_tail_init.exit6.i.mtk_hsdma_free_inactive_desc.exit_crit_edge, label %if.then.i11.i

list_splice_tail_init.exit6.i.mtk_hsdma_free_inactive_desc.exit_crit_edge: ; preds = %list_splice_tail_init.exit6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hsdma_free_inactive_desc.exit

if.then.i11.i:                                    ; preds = %list_splice_tail_init.exit6.i
  call void @__sanitizer_cov_trace_pc() #10
  %25 = ptrtoint ptr %0 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %0, align 4
  %prev2.i.i9.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 6, i32 1
  %27 = ptrtoint ptr %prev2.i.i9.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %prev2.i.i9.i, align 4
  %prev3.i.i10.i = getelementptr inbounds %struct.list_head, ptr %24, i32 0, i32 1
  %29 = ptrtoint ptr %prev3.i.i10.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %26, ptr %prev3.i.i10.i, align 4
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
  store ptr %desc_issued.i, ptr %prev2.i.i9.i, align 4
  br label %mtk_hsdma_free_inactive_desc.exit

mtk_hsdma_free_inactive_desc.exit:                ; preds = %if.then.i11.i, %list_splice_tail_init.exit6.i.mtk_hsdma_free_inactive_desc.exit_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  call void @vchan_dma_desc_free_list(ptr noundef %c, ptr noundef nonnull %head.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i) #8
  call void @_raw_spin_lock(ptr noundef %lock.i) #8
  %desc_hw_processing.i = getelementptr inbounds %struct.mtk_hsdma_vchan, ptr %c, i32 0, i32 3
  %33 = ptrtoint ptr %desc_hw_processing.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load volatile ptr, ptr %desc_hw_processing.i, align 4
  %cmp.i.not.i = icmp eq ptr %34, %desc_hw_processing.i
  br i1 %cmp.i.not.i, label %if.end6.critedge.i, label %if.then.i

if.then.i:                                        ; preds = %mtk_hsdma_free_inactive_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  %issue_synchronize.i = getelementptr inbounds %struct.mtk_hsdma_vchan, ptr %c, i32 0, i32 2
  %35 = ptrtoint ptr %issue_synchronize.i to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %issue_synchronize.i, align 4
  call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  %issue_completion.i = getelementptr inbounds %struct.mtk_hsdma_vchan, ptr %c, i32 0, i32 1
  call void @wait_for_completion(ptr noundef %issue_completion.i) #8
  br label %if.end6.i

if.end6.critedge.i:                               ; preds = %mtk_hsdma_free_inactive_desc.exit
  call void @__sanitizer_cov_trace_pc() #10
  call void @_raw_spin_unlock(ptr noundef %lock.i) #8
  br label %if.end6.i

if.end6.i:                                        ; preds = %if.end6.critedge.i, %if.then.i
  %36 = ptrtoint ptr %desc_hw_processing.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load volatile ptr, ptr %desc_hw_processing.i, align 4
  %cmp.i121.not.i = icmp eq ptr %37, %desc_hw_processing.i
  br i1 %cmp.i121.not.i, label %if.end6.i.if.end40.i_crit_edge, label %land.rhs.i

if.end6.i.if.end40.i_crit_edge:                   ; preds = %if.end6.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

land.rhs.i:                                       ; preds = %if.end6.i
  %.b120.i = load i1, ptr @mtk_hsdma_free_active_desc.__already_done, align 1
  br i1 %.b120.i, label %land.rhs.i.if.end40.i_crit_edge, label %if.then18.i, !prof !94

land.rhs.i.if.end40.i_crit_edge:                  ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end40.i

if.then18.i:                                      ; preds = %land.rhs.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mtk_hsdma_free_active_desc.__already_done, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 780, i32 noundef 9, ptr noundef nonnull @.str.28) #8
  br label %if.end40.i

if.end40.i:                                       ; preds = %if.then18.i, %land.rhs.i.if.end40.i_crit_edge, %if.end6.i.if.end40.i_crit_edge
  call void @llvm.lifetime.start.p0(i64 8, ptr nonnull %head.i.i) #8
  %38 = getelementptr inbounds %struct.list_head, ptr %head.i.i, i32 0, i32 1
  %39 = ptrtoint ptr %head.i.i to i32
  call void @__asan_store4_noabort(i32 %39)
  store ptr %head.i.i, ptr %head.i.i, align 4
  %40 = ptrtoint ptr %38 to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr %head.i.i, ptr %38, align 4
  %task.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 1
  call void @tasklet_kill(ptr noundef %task.i.i) #8
  %call2.i.i = call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %desc_terminated.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8
  %41 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load volatile ptr, ptr %desc_terminated.i.i, align 4
  %cmp.i.not.i.i.i = icmp eq ptr %42, %desc_terminated.i.i
  br i1 %cmp.i.not.i.i.i, label %if.end40.i.vchan_synchronize.exit.i_crit_edge, label %if.then.i.i.i

if.end40.i.vchan_synchronize.exit.i_crit_edge:    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_synchronize.exit.i

if.then.i.i.i:                                    ; preds = %if.end40.i
  call void @__sanitizer_cov_trace_pc() #10
  %43 = ptrtoint ptr %38 to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %38, align 4
  %prev2.i.i.i.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 8, i32 1
  %45 = ptrtoint ptr %prev2.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %prev2.i.i.i.i, align 4
  %prev3.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %42, i32 0, i32 1
  %47 = ptrtoint ptr %prev3.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %47)
  store ptr %44, ptr %prev3.i.i.i.i, align 4
  %48 = ptrtoint ptr %44 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr %42, ptr %44, align 4
  %49 = ptrtoint ptr %46 to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr %head.i.i, ptr %46, align 4
  store ptr %46, ptr %38, align 4
  %50 = ptrtoint ptr %desc_terminated.i.i to i32
  call void @__asan_store4_noabort(i32 %50)
  store volatile ptr %desc_terminated.i.i, ptr %desc_terminated.i.i, align 4
  store ptr %desc_terminated.i.i, ptr %prev2.i.i.i.i, align 4
  br label %vchan_synchronize.exit.i

vchan_synchronize.exit.i:                         ; preds = %if.then.i.i.i, %if.end40.i.vchan_synchronize.exit.i_crit_edge
  call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call2.i.i) #8
  call void @vchan_dma_desc_free_list(ptr noundef %c, ptr noundef nonnull %head.i.i) #8
  call void @llvm.lifetime.end.p0(i64 8, ptr nonnull %head.i.i) #8
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %c, i32 0, i32 7
  %51 = ptrtoint ptr %desc_completed.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load volatile ptr, ptr %desc_completed.i, align 4
  %cmp.i123.not.i = icmp eq ptr %52, %desc_completed.i
  br i1 %cmp.i123.not.i, label %vchan_synchronize.exit.i.mtk_hsdma_free_active_desc.exit_crit_edge, label %land.rhs61.i

vchan_synchronize.exit.i.mtk_hsdma_free_active_desc.exit_crit_edge: ; preds = %vchan_synchronize.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hsdma_free_active_desc.exit

land.rhs61.i:                                     ; preds = %vchan_synchronize.exit.i
  %.b118119.i = load i1, ptr @mtk_hsdma_free_active_desc.__already_done.29, align 1
  br i1 %.b118119.i, label %land.rhs61.i.mtk_hsdma_free_active_desc.exit_crit_edge, label %if.then72.i, !prof !94

land.rhs61.i.mtk_hsdma_free_active_desc.exit_crit_edge: ; preds = %land.rhs61.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %mtk_hsdma_free_active_desc.exit

if.then72.i:                                      ; preds = %land.rhs61.i
  call void @__sanitizer_cov_trace_pc() #10
  store i1 true, ptr @mtk_hsdma_free_active_desc.__already_done.29, align 1
  call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 786, i32 noundef 9, ptr noundef nonnull @.str.30) #8
  br label %mtk_hsdma_free_active_desc.exit

mtk_hsdma_free_active_desc.exit:                  ; preds = %if.then72.i, %land.rhs61.i.mtk_hsdma_free_active_desc.exit_crit_edge, %vchan_synchronize.exit.i.mtk_hsdma_free_active_desc.exit_crit_edge
  ret i32 0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_hsdma_vdesc_free(ptr noundef %vd) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @kfree(ptr noundef %vd) #8
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
define internal fastcc void @mtk_hsdma_hw_init(ptr nocapture noundef readonly %hsdma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %hsdma, i32 0, i32 15
  %0 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dev.i, align 4
  tail call void @pm_runtime_enable(ptr noundef %1) #8
  %2 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @__pm_runtime_resume(ptr noundef %3, i32 noundef 4) #8
  %clk = getelementptr inbounds %struct.mtk_hsdma_device, ptr %hsdma, i32 0, i32 2
  %4 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %clk, align 4
  %call.i2 = tail call i32 @clk_prepare(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i2)
  %tobool.not.i = icmp eq i32 %call.i2, 0
  br i1 %tobool.not.i, label %if.end.i, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i:                                         ; preds = %entry
  %call1.i = tail call i32 @clk_enable(ptr noundef %5) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1.i)
  %tobool2.not.i = icmp eq i32 %call1.i, 0
  br i1 %tobool2.not.i, label %if.end, label %if.then3.i

if.then3.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @clk_unprepare(ptr noundef %5) #8
  br label %cleanup

if.end:                                           ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.mtk_hsdma_device, ptr %hsdma, i32 0, i32 1
  %6 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %7, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !90
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i4 = getelementptr i8, ptr %9, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i4, i32 1694760960) #8, !srcloc !90
  br label %cleanup

cleanup:                                          ; preds = %if.end, %if.then3.i, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_hsdma_irq(i32 noundef %irq, ptr noundef %devid) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i.i.i = getelementptr inbounds %struct.mtk_hsdma_device, ptr %devid, i32 0, i32 1
  %0 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %1, i32 552
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %3 = and i32 %2, -257
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %4 = ptrtoint ptr %base.i.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base.i.i.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %5, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %3) #8, !srcloc !90
  tail call fastcc void @mtk_hsdma_free_rooms_in_ring(ptr noundef %devid)
  ret i32 1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_hsdma_hw_deinit(ptr nocapture noundef readonly %hsdma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %base.i = getelementptr inbounds %struct.mtk_hsdma_device, ptr %hsdma, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 516
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 0) #8, !srcloc !90
  %clk = getelementptr inbounds %struct.mtk_hsdma_device, ptr %hsdma, i32 0, i32 2
  %2 = ptrtoint ptr %clk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %clk, align 4
  tail call void @clk_disable(ptr noundef %3) #8
  tail call void @clk_unprepare(ptr noundef %3) #8
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %hsdma, i32 0, i32 15
  %4 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %dev.i, align 4
  %call.i = tail call i32 @__pm_runtime_idle(ptr noundef %5, i32 noundef 4) #8
  %6 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dev.i, align 4
  tail call void @__pm_runtime_disable(ptr noundef %7, i1 noundef zeroext true) #8
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_dma_controller_free(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_async_device_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_read(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @mtk_hsdma_busy_wait(ptr nocapture noundef readonly %hsdma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i64 @ktime_get() #8
  %add.i = add i64 %call, 200000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 312) #8
  %base = getelementptr inbounds %struct.mtk_hsdma_device, ptr %hsdma, i32 0, i32 1
  %0 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base, align 4
  %add.ptr39 = getelementptr i8, ptr %1, i32 516
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr39) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  %3 = and i32 %2, 167772160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not41 = icmp eq i32 %3, 0
  br i1 %tobool.not41, label %entry.for.end.thread_crit_edge, label %entry.land.lhs.true_crit_edge

entry.land.lhs.true_crit_edge:                    ; preds = %entry
  br label %land.lhs.true

entry.for.end.thread_crit_edge:                   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

land.lhs.true:                                    ; preds = %if.then26.land.lhs.true_crit_edge, %entry.land.lhs.true_crit_edge
  %call13 = tail call i64 @ktime_get() #8
  call void @__sanitizer_cov_trace_cmp8(i64 %call13, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call13, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then26

if.then26:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 6, i32 noundef 20, i32 noundef 2) #8
  %4 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %5, i32 516
  %6 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !99
  %7 = and i32 %6, 167772160
  %tobool.not = icmp eq i32 %7, 0
  br i1 %tobool.not, label %if.then26.for.end.thread_crit_edge, label %if.then26.land.lhs.true_crit_edge

if.then26.land.lhs.true_crit_edge:                ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %land.lhs.true

if.then26.for.end.thread_crit_edge:               ; preds = %if.then26
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end:                                          ; preds = %land.lhs.true
  %8 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base, align 4
  %add.ptr20 = getelementptr i8, ptr %9, i32 516
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr20) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !100
  %11 = and i32 %10, 167772160
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %11)
  %tobool30.not = icmp eq i32 %11, 0
  br i1 %tobool30.not, label %for.end.for.end.thread_crit_edge, label %for.end._crit_edge

for.end._crit_edge:                               ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %12

for.end.for.end.thread_crit_edge:                 ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end.thread

for.end.thread:                                   ; preds = %for.end.for.end.thread_crit_edge, %if.then26.for.end.thread_crit_edge, %entry.for.end.thread_crit_edge
  br label %12

12:                                               ; preds = %for.end.thread, %for.end._crit_edge
  %13 = phi i32 [ 0, %for.end.thread ], [ -110, %for.end._crit_edge ]
  ret i32 %13
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #5

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @refcount_warn_saturate(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #7

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_hsdma_issue_vchan_pending(ptr noundef %hsdma, ptr noundef %hvc) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @debug_locks to i32))
  %0 = load i32, ptr @debug_locks, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %0)
  %tobool.not = icmp eq i32 %0, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %land.rhs

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

land.rhs:                                         ; preds = %entry
  %dep_map = getelementptr inbounds %struct.virt_dma_chan, ptr %hvc, i32 0, i32 3, i32 0, i32 0, i32 4
  %call.i = tail call i32 @lock_is_held_type(ptr noundef %dep_map, i32 noundef -1) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.not = icmp eq i32 %call.i, 0
  br i1 %cmp.not, label %do.end, label %land.rhs.if.end_crit_edge, !prof !88

land.rhs.if.end_crit_edge:                        ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end

do.end:                                           ; preds = %land.rhs
  call void @__sanitizer_cov_trace_pc() #10
  tail call void (ptr, i32, i32, ptr, ...) @warn_slowpath_fmt(ptr noundef nonnull @.str.3, i32 noundef 501, i32 noundef 9, ptr noundef null) #8
  br label %if.end

if.end:                                           ; preds = %do.end, %land.rhs.if.end_crit_edge, %entry.if.end_crit_edge
  %desc_issued = getelementptr inbounds %struct.virt_dma_chan, ptr %hvc, i32 0, i32 6
  %1 = ptrtoint ptr %desc_issued to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %desc_issued, align 4
  %cmp33.not66 = icmp eq ptr %2, %desc_issued
  br i1 %cmp33.not66, label %if.end.for.end_crit_edge, label %for.body.lr.ph

if.end.for.end_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.body.lr.ph:                                   ; preds = %if.end
  %pc = getelementptr inbounds %struct.mtk_hsdma_device, ptr %hsdma, i32 0, i32 6
  %lock.i = getelementptr inbounds %struct.mtk_hsdma_device, ptr %hsdma, i32 0, i32 8
  %soc.i = getelementptr inbounds %struct.mtk_hsdma_device, ptr %hsdma, i32 0, i32 9
  %base.i.i = getelementptr inbounds %struct.mtk_hsdma_device, ptr %hsdma, i32 0, i32 1
  %desc_hw_processing = getelementptr inbounds %struct.mtk_hsdma_vchan, ptr %hvc, i32 0, i32 3
  %prev.i2.i = getelementptr inbounds %struct.mtk_hsdma_vchan, ptr %hvc, i32 0, i32 3, i32 1
  br label %for.body

for.body:                                         ; preds = %cleanup.for.body_crit_edge, %for.body.lr.ph
  %.pn.in67 = phi ptr [ %2, %for.body.lr.ph ], [ %.pn69, %cleanup.for.body_crit_edge ]
  %3 = ptrtoint ptr %.pn.in67 to i32
  call void @__asan_load4_noabort(i32 %3)
  %.pn69 = load ptr, ptr %.pn.in67, align 4
  %vd.0 = getelementptr i8, ptr %.pn.in67, i32 -108
  %4 = ptrtoint ptr %pc to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pc, align 4
  %call3.i = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %lock.i) #8
  %len.i = getelementptr i8, ptr %.pn.in67, i32 8
  %6 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load i32, ptr %len.i, align 4
  %sub.i = add i32 %7, 16255
  %div.i = udiv i32 %sub.i, 16256
  %nr_free.i = getelementptr inbounds %struct.mtk_hsdma_pchan, ptr %5, i32 0, i32 2
  %call.i.i.i = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_free.i, i32 noundef 4) #8
  %8 = ptrtoint ptr %nr_free.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load volatile i32, ptr %nr_free.i, align 4
  %conv10.i = and i32 %div.i, 65535
  %conv11.i = and i32 %9, 65535
  %10 = tail call i32 @llvm.umin.i32(i32 %conv10.i, i32 %conv11.i) #8
  %conv16.i = trunc i32 %10 to i16
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv16.i)
  %tobool.not.i = icmp eq i16 %conv16.i, 0
  br i1 %tobool.not.i, label %mtk_hsdma_issue_pending_vdesc.exit.thread, label %if.end.i

mtk_hsdma_issue_pending_vdesc.exit.thread:        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  br label %for.end

if.end.i:                                         ; preds = %for.body
  %call.i.i157.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_free.i, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %nr_free.i, i32 1, i32 3, i32 1) #8
  %11 = tail call { i32, i32 } asm sideeffect "@ atomic_sub\0A1:\09ldrex\09$0, [$3]\0A\09sub\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_free.i, ptr %nr_free.i, i32 %10, ptr elementtype(i32) %nr_free.i) #8, !srcloc !101
  %cur_tptr.i = getelementptr inbounds %struct.mtk_hsdma_ring, ptr %5, i32 0, i32 5
  %src.i = getelementptr i8, ptr %.pn.in67, i32 20
  %rxd50.i = getelementptr inbounds %struct.mtk_hsdma_ring, ptr %5, i32 0, i32 1
  %dest.i = getelementptr i8, ptr %.pn.in67, i32 16
  %cb.i = getelementptr inbounds %struct.mtk_hsdma_ring, ptr %5, i32 0, i32 2
  br label %while.body.i

while.body.i:                                     ; preds = %while.body.i.while.body.i_crit_edge, %if.end.i
  %reserved.0159.i = phi i16 [ %conv16.i, %if.end.i ], [ %dec.i, %while.body.i.while.body.i_crit_edge ]
  %dec.i = add i16 %reserved.0159.i, -1
  %12 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %len.i, align 4
  %14 = tail call i32 @llvm.umin.i32(i32 %13, i32 16256) #8
  %15 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %5, align 4
  %17 = ptrtoint ptr %cur_tptr.i to i32
  call void @__asan_load2_noabort(i32 %17)
  %18 = load i16, ptr %cur_tptr.i, align 4
  %idxprom.i = zext i16 %18 to i32
  %arrayidx.i = getelementptr %struct.mtk_hsdma_pdesc, ptr %16, i32 %idxprom.i
  %19 = ptrtoint ptr %src.i to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load i32, ptr %src.i, align 4
  %21 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store volatile i32 %20, ptr %arrayidx.i, align 4
  %22 = ptrtoint ptr %soc.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %soc.i, align 4
  %ls0.i = getelementptr inbounds %struct.mtk_hsdma_soc, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %ls0.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %ls0.i, align 4
  %and.i = shl nuw nsw i32 %14, 16
  %or.i = or i32 %25, %and.i
  %desc2.i = getelementptr %struct.mtk_hsdma_pdesc, ptr %16, i32 %idxprom.i, i32 1
  %26 = ptrtoint ptr %desc2.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store volatile i32 %or.i, ptr %desc2.i, align 4
  %27 = ptrtoint ptr %rxd50.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %rxd50.i, align 4
  %29 = load i16, ptr %cur_tptr.i, align 4
  %idxprom52.i = zext i16 %29 to i32
  %arrayidx53.i = getelementptr %struct.mtk_hsdma_pdesc, ptr %28, i32 %idxprom52.i
  %30 = ptrtoint ptr %dest.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load i32, ptr %dest.i, align 4
  %32 = ptrtoint ptr %arrayidx53.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store volatile i32 %31, ptr %arrayidx53.i, align 4
  %desc272.i = getelementptr %struct.mtk_hsdma_pdesc, ptr %28, i32 %idxprom52.i, i32 1
  %33 = ptrtoint ptr %desc272.i to i32
  call void @__asan_store4_noabort(i32 %33)
  store volatile i32 %and.i, ptr %desc272.i, align 4
  %34 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %cb.i, align 4
  %36 = load i16, ptr %cur_tptr.i, align 4
  %idxprom78.i = zext i16 %36 to i32
  %arrayidx79.i = getelementptr %struct.mtk_hsdma_cb, ptr %35, i32 %idxprom78.i
  %37 = ptrtoint ptr %arrayidx79.i to i32
  call void @__asan_store4_noabort(i32 %37)
  store ptr %vd.0, ptr %arrayidx79.i, align 4
  %38 = load i16, ptr %cur_tptr.i, align 4
  %39 = add i16 %38, 1
  %40 = and i16 %39, 63
  store i16 %40, ptr %cur_tptr.i, align 4
  %41 = load i32, ptr %src.i, align 4
  %add89.i = add i32 %41, %14
  store i32 %add89.i, ptr %src.i, align 4
  %42 = load i32, ptr %dest.i, align 4
  %add92.i = add i32 %42, %14
  store i32 %add92.i, ptr %dest.i, align 4
  %43 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load i32, ptr %len.i, align 4
  %sub95.i = sub i32 %44, %14
  store i32 %sub95.i, ptr %len.i, align 4
  %tobool20.not.i = icmp eq i16 %dec.i, 0
  br i1 %tobool20.not.i, label %while.end.i, label %while.body.i.while.body.i_crit_edge

while.body.i.while.body.i_crit_edge:              ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body.i

while.end.i:                                      ; preds = %while.body.i
  call void @__sanitizer_cov_trace_cmp4(i32 %44, i32 %14)
  %tobool97.not.i = icmp eq i32 %44, %14
  br i1 %tobool97.not.i, label %if.then98.i, label %while.end.i.lor.lhs.false_crit_edge

while.end.i.lor.lhs.false_crit_edge:              ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %lor.lhs.false

if.then98.i:                                      ; preds = %while.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %45 = ptrtoint ptr %cur_tptr.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %cur_tptr.i, align 4
  %47 = add i16 %46, 63
  %48 = and i16 %47, 63
  %49 = ptrtoint ptr %cb.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %cb.i, align 4
  %idxprom105.i = zext i16 %48 to i32
  %flag.i = getelementptr %struct.mtk_hsdma_cb, ptr %50, i32 %idxprom105.i, i32 1
  %51 = ptrtoint ptr %flag.i to i32
  call void @__asan_store4_noabort(i32 %51)
  store i32 1, ptr %flag.i, align 4
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then98.i, %while.end.i.lor.lhs.false_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !102
  tail call void @arm_heavy_mb() #8
  %52 = ptrtoint ptr %cur_tptr.i to i32
  call void @__asan_load2_noabort(i32 %52)
  %53 = load i16, ptr %cur_tptr.i, align 4
  %conv112.i = zext i16 %53 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %54 = tail call i32 @llvm.bswap.i32(i32 %conv112.i) #8
  %55 = ptrtoint ptr %base.i.i to i32
  call void @__asan_load4_noabort(i32 %55)
  %56 = load ptr, ptr %base.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %56, i32 8
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i.i, i32 %54) #8, !srcloc !90
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %lock.i, i32 noundef %call3.i) #8
  %57 = ptrtoint ptr %len.i to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load i32, ptr %len.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %58)
  %cmp39.not = icmp eq i32 %58, 0
  br i1 %cmp39.not, label %if.end41, label %lor.lhs.false.for.end_crit_edge

lor.lhs.false.for.end_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

if.end41:                                         ; preds = %lor.lhs.false
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %.pn.in67) #8
  br i1 %call.i.i, label %if.end.i.i, label %if.end41.__list_del_entry.exit.i_crit_edge

if.end41.__list_del_entry.exit.i_crit_edge:       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  br label %__list_del_entry.exit.i

if.end.i.i:                                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in67, i32 0, i32 1
  %59 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %prev.i.i, align 4
  %61 = ptrtoint ptr %.pn.in67 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %.pn.in67, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %62, i32 0, i32 1
  %63 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %63)
  store ptr %60, ptr %prev1.i.i.i, align 4
  %64 = ptrtoint ptr %60 to i32
  call void @__asan_store4_noabort(i32 %64)
  store volatile ptr %62, ptr %60, align 4
  br label %__list_del_entry.exit.i

__list_del_entry.exit.i:                          ; preds = %if.end.i.i, %if.end41.__list_del_entry.exit.i_crit_edge
  %65 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %prev.i2.i, align 4
  %call.i.i.i59 = tail call zeroext i1 @__list_add_valid(ptr noundef %.pn.in67, ptr noundef %66, ptr noundef %desc_hw_processing) #8
  br i1 %call.i.i.i59, label %if.end.i.i.i, label %__list_del_entry.exit.i.cleanup_crit_edge

__list_del_entry.exit.i.cleanup_crit_edge:        ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %cleanup

if.end.i.i.i:                                     ; preds = %__list_del_entry.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %67 = ptrtoint ptr %prev.i2.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store ptr %.pn.in67, ptr %prev.i2.i, align 4
  %68 = ptrtoint ptr %.pn.in67 to i32
  call void @__asan_store4_noabort(i32 %68)
  store ptr %desc_hw_processing, ptr %.pn.in67, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %.pn.in67, i32 0, i32 1
  %69 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %66, ptr %prev3.i.i.i, align 4
  %70 = ptrtoint ptr %66 to i32
  call void @__asan_store4_noabort(i32 %70)
  store volatile ptr %.pn.in67, ptr %66, align 4
  br label %cleanup

cleanup:                                          ; preds = %if.end.i.i.i, %__list_del_entry.exit.i.cleanup_crit_edge
  %cmp33.not = icmp eq ptr %.pn69, %desc_issued
  br i1 %cmp33.not, label %cleanup.for.end_crit_edge, label %cleanup.for.body_crit_edge

cleanup.for.body_crit_edge:                       ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

cleanup.for.end_crit_edge:                        ; preds = %cleanup
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.end

for.end:                                          ; preds = %cleanup.for.end_crit_edge, %lor.lhs.false.for.end_crit_edge, %mtk_hsdma_issue_pending_vdesc.exit.thread, %if.end.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @warn_slowpath_fmt(ptr noundef, i32 noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @lock_is_held_type(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

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
declare dso_local void @_raw_spin_lock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock(ptr noundef) local_unnamed_addr #1 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local void @tasklet_kill(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

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
declare dso_local i32 @devm_request_threaded_irq(ptr noundef, i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @mtk_hsdma_free_rooms_in_ring(ptr noundef %hsdma) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #10
  call void @llvm.arm.gnu.eabi.mcount()
  %base.i = getelementptr inbounds %struct.mtk_hsdma_device, ptr %hsdma, i32 0, i32 1
  %0 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %1, i32 544
  %2 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %3 = and i32 %2, 256
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %3)
  %tobool.not = icmp eq i32 %3, 0
  br i1 %tobool.not, label %entry.rx_done_crit_edge, label %if.end, !prof !88

entry.rx_done_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_done

if.end:                                           ; preds = %entry
  %pc4 = getelementptr inbounds %struct.mtk_hsdma_device, ptr %hsdma, i32 0, i32 6
  %4 = ptrtoint ptr %pc4 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %pc4, align 4
  %cur_rptr = getelementptr inbounds %struct.mtk_hsdma_ring, ptr %5, i32 0, i32 6
  %rxd9 = getelementptr inbounds %struct.mtk_hsdma_ring, ptr %5, i32 0, i32 1
  %soc = getelementptr inbounds %struct.mtk_hsdma_device, ptr %hsdma, i32 0, i32 9
  %cb16 = getelementptr inbounds %struct.mtk_hsdma_ring, ptr %5, i32 0, i32 2
  %nr_free = getelementptr inbounds %struct.mtk_hsdma_pchan, ptr %5, i32 0, i32 2
  br label %while.body

while.body:                                       ; preds = %if.end54.while.body_crit_edge, %if.end
  %dec145 = phi i32 [ 63, %if.end ], [ %dec, %if.end54.while.body_crit_edge ]
  %6 = ptrtoint ptr %cur_rptr to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %cur_rptr, align 2
  %8 = add i16 %7, 1
  %9 = and i16 %8, 63
  %10 = ptrtoint ptr %rxd9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %rxd9, align 4
  %idxprom = zext i16 %9 to i32
  %arrayidx = getelementptr %struct.mtk_hsdma_pdesc, ptr %11, i32 %idxprom
  %desc210 = getelementptr %struct.mtk_hsdma_pdesc, ptr %11, i32 %idxprom, i32 1
  %12 = ptrtoint ptr %desc210 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load volatile i32, ptr %desc210, align 4
  %14 = ptrtoint ptr %soc to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %soc, align 4
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load i32, ptr %15, align 4
  %and11 = and i32 %17, %13
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and11)
  %tobool12.not = icmp eq i32 %and11, 0
  br i1 %tobool12.not, label %while.body.do.body77_crit_edge, label %if.end14

while.body.do.body77_crit_edge:                   ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body77

if.end14:                                         ; preds = %while.body
  %18 = ptrtoint ptr %cb16 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %cb16, align 4
  %arrayidx18 = getelementptr %struct.mtk_hsdma_cb, ptr %19, i32 %idxprom
  %20 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %arrayidx18, align 4
  %tobool19.not = icmp eq ptr %21, null
  br i1 %tobool19.not, label %do.end31, label %if.end33, !prof !88

do.end31:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #10
  %dev.i = getelementptr inbounds %struct.dma_device, ptr %hsdma, i32 0, i32 15
  %22 = ptrtoint ptr %dev.i to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %dev.i, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.32) #11
  br label %do.body77

if.end33:                                         ; preds = %if.end14
  %shr = lshr i32 %13, 16
  %and37 = and i32 %shr, 16383
  %residue = getelementptr inbounds %struct.mtk_hsdma_vdesc, ptr %21, i32 0, i32 2
  %24 = ptrtoint ptr %residue to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load i32, ptr %residue, align 4
  %sub = sub i32 %25, %and37
  store i32 %sub, ptr %residue, align 4
  %flag = getelementptr %struct.mtk_hsdma_cb, ptr %19, i32 %idxprom, i32 1
  %26 = ptrtoint ptr %flag to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %flag, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %27)
  %cmp = icmp eq i32 %27, 1
  br i1 %cmp, label %if.then39, label %if.end33.if.end54_crit_edge

if.end33.if.end54_crit_edge:                      ; preds = %if.end33
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end54

if.then39:                                        ; preds = %if.end33
  %28 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %arrayidx18, align 4
  %chan = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %29, i32 0, i32 3
  %30 = ptrtoint ptr %chan to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %chan, align 4
  %lock = getelementptr inbounds %struct.virt_dma_chan, ptr %31, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock) #8
  %32 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx18, align 4
  %node = getelementptr inbounds %struct.virt_dma_desc, ptr %33, i32 0, i32 2
  %call.i.i137 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %node) #8
  br i1 %call.i.i137, label %if.end.i.i, label %if.then39.list_del.exit_crit_edge

if.then39.list_del.exit_crit_edge:                ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_del.exit

if.end.i.i:                                       ; preds = %if.then39
  call void @__sanitizer_cov_trace_pc() #10
  %prev.i.i = getelementptr inbounds %struct.virt_dma_desc, ptr %33, i32 0, i32 2, i32 1
  %34 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %prev.i.i, align 4
  %36 = ptrtoint ptr %node to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %node, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %37, i32 0, i32 1
  %38 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %38)
  store ptr %35, ptr %prev1.i.i.i, align 4
  %39 = ptrtoint ptr %35 to i32
  call void @__asan_store4_noabort(i32 %39)
  store volatile ptr %37, ptr %35, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %if.then39.list_del.exit_crit_edge
  %40 = ptrtoint ptr %node to i32
  call void @__asan_store4_noabort(i32 %40)
  store ptr inttoptr (i32 256 to ptr), ptr %node, align 4
  %prev.i = getelementptr inbounds %struct.virt_dma_desc, ptr %33, i32 0, i32 2, i32 1
  %41 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %41)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  %42 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx18, align 4
  %chan.i = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %43, i32 0, i32 3
  %44 = ptrtoint ptr %chan.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %chan.i, align 4
  %46 = ptrtoint ptr %43 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %43, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %47)
  %cmp.i.i = icmp slt i32 %47, 1
  br i1 %cmp.i.i, label %do.body2.i.i, label %dma_cookie_complete.exit.i, !prof !88

do.body2.i.i:                                     ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/dma/mediatek/../dmaengine.h\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 54, 0\0A.popsection", ""() #8, !srcloc !103
  unreachable

dma_cookie_complete.exit.i:                       ; preds = %list_del.exit
  %completed_cookie.i.i = getelementptr inbounds %struct.dma_chan, ptr %45, i32 0, i32 3
  %48 = ptrtoint ptr %completed_cookie.i.i to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %47, ptr %completed_cookie.i.i, align 4
  %49 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %49)
  store i32 0, ptr %43, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@mtk_hsdma_free_rooms_in_ring, %do.end.i)) #8
          to label %if.then.i [label %do.end.i], !srcloc !104

if.then.i:                                        ; preds = %dma_cookie_complete.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %50 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %45, align 4
  %dev.i138 = getelementptr inbounds %struct.dma_device, ptr %51, i32 0, i32 15
  %52 = ptrtoint ptr %dev.i138 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %dev.i138, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @vchan_cookie_complete.__UNIQUE_ID_ddebug237, ptr noundef %53, ptr noundef nonnull @.str.36, ptr noundef %43, i32 noundef %47) #8
  br label %do.end.i

do.end.i:                                         ; preds = %if.then.i, %dma_cookie_complete.exit.i
  %node.i = getelementptr inbounds %struct.virt_dma_desc, ptr %43, i32 0, i32 2
  %desc_completed.i = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 7
  %prev.i.i139 = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 7, i32 1
  %54 = ptrtoint ptr %prev.i.i139 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %prev.i.i139, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %node.i, ptr noundef %55, ptr noundef %desc_completed.i) #8
  br i1 %call.i.i.i, label %if.end.i.i.i, label %do.end.i.list_add_tail.exit.i_crit_edge

do.end.i.list_add_tail.exit.i_crit_edge:          ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %list_add_tail.exit.i

if.end.i.i.i:                                     ; preds = %do.end.i
  call void @__sanitizer_cov_trace_pc() #10
  %56 = ptrtoint ptr %prev.i.i139 to i32
  call void @__asan_store4_noabort(i32 %56)
  store ptr %node.i, ptr %prev.i.i139, align 4
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
  %call.i.i140 = tail call i32 @_test_and_set_bit(i32 noundef 0, ptr noundef %state.i.i) #8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i140)
  %tobool.not.i.i = icmp eq i32 %call.i.i140, 0
  br i1 %tobool.not.i.i, label %if.then.i.i, label %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge

list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge: ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  br label %vchan_cookie_complete.exit

if.then.i.i:                                      ; preds = %list_add_tail.exit.i
  call void @__sanitizer_cov_trace_pc() #10
  %task.i = getelementptr inbounds %struct.virt_dma_chan, ptr %45, i32 0, i32 1
  tail call void @__tasklet_schedule(ptr noundef %task.i) #8
  br label %vchan_cookie_complete.exit

vchan_cookie_complete.exit:                       ; preds = %if.then.i.i, %list_add_tail.exit.i.vchan_cookie_complete.exit_crit_edge
  %issue_synchronize = getelementptr inbounds %struct.mtk_hsdma_vchan, ptr %31, i32 0, i32 2
  %60 = ptrtoint ptr %issue_synchronize to i32
  call void @__asan_load1_noabort(i32 %60)
  %61 = load i8, ptr %issue_synchronize, align 4, !range !105
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %61)
  %tobool44.not = icmp eq i8 %61, 0
  br i1 %tobool44.not, label %vchan_cookie_complete.exit.if.end50_crit_edge, label %land.lhs.true

vchan_cookie_complete.exit.if.end50_crit_edge:    ; preds = %vchan_cookie_complete.exit
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

land.lhs.true:                                    ; preds = %vchan_cookie_complete.exit
  %desc_hw_processing = getelementptr inbounds %struct.mtk_hsdma_vchan, ptr %31, i32 0, i32 3
  %62 = ptrtoint ptr %desc_hw_processing to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load volatile ptr, ptr %desc_hw_processing, align 4
  %cmp.i.not = icmp eq ptr %63, %desc_hw_processing
  br i1 %cmp.i.not, label %if.then48, label %land.lhs.true.if.end50_crit_edge

land.lhs.true.if.end50_crit_edge:                 ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end50

if.then48:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #10
  %issue_completion = getelementptr inbounds %struct.mtk_hsdma_vchan, ptr %31, i32 0, i32 1
  tail call void @complete(ptr noundef %issue_completion) #8
  %64 = ptrtoint ptr %issue_synchronize to i32
  call void @__asan_store1_noabort(i32 %64)
  store i8 0, ptr %issue_synchronize, align 4
  br label %if.end50

if.end50:                                         ; preds = %if.then48, %land.lhs.true.if.end50_crit_edge, %vchan_cookie_complete.exit.if.end50_crit_edge
  tail call void @_raw_spin_unlock(ptr noundef %lock) #8
  %65 = ptrtoint ptr %flag to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 0, ptr %flag, align 4
  br label %if.end54

if.end54:                                         ; preds = %if.end50, %if.end33.if.end54_crit_edge
  %66 = ptrtoint ptr %arrayidx18 to i32
  call void @__asan_store4_noabort(i32 %66)
  store ptr null, ptr %arrayidx18, align 4
  %67 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %67)
  store volatile i32 0, ptr %arrayidx, align 4
  %68 = ptrtoint ptr %desc210 to i32
  call void @__asan_store4_noabort(i32 %68)
  store volatile i32 0, ptr %desc210, align 4
  %69 = ptrtoint ptr %cur_rptr to i32
  call void @__asan_store2_noabort(i32 %69)
  store i16 %9, ptr %cur_rptr, align 2
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %nr_free, i32 noundef 4) #8
  tail call void @llvm.prefetch.p0(ptr %nr_free, i32 1, i32 3, i32 1) #8
  %70 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %nr_free, ptr %nr_free, i32 1, ptr elementtype(i32) %nr_free) #8, !srcloc !106
  %dec = add nsw i32 %dec145, -1
  %tobool5.not = icmp eq i32 %dec145, 0
  br i1 %tobool5.not, label %if.end54.do.body77_crit_edge, label %if.end54.while.body_crit_edge

if.end54.while.body_crit_edge:                    ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %while.body

if.end54.do.body77_crit_edge:                     ; preds = %if.end54
  call void @__sanitizer_cov_trace_pc() #10
  br label %do.body77

do.body77:                                        ; preds = %if.end54.do.body77_crit_edge, %do.end31, %while.body.do.body77_crit_edge
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !107
  tail call void @arm_heavy_mb() #8
  %71 = ptrtoint ptr %cur_rptr to i32
  call void @__asan_load2_noabort(i32 %71)
  %72 = load i16, ptr %cur_rptr, align 2
  %conv82 = zext i16 %72 to i32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %73 = tail call i32 @llvm.bswap.i32(i32 %conv82) #8
  %74 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %74)
  %75 = load ptr, ptr %base.i, align 4
  %add.ptr.i142 = getelementptr i8, ptr %75, i32 264
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i142, i32 %73) #8, !srcloc !90
  %call.i.i136 = tail call zeroext i1 @__kasan_check_read(ptr noundef %nr_free, i32 noundef 4) #8
  %76 = ptrtoint ptr %nr_free to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load volatile i32, ptr %nr_free, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 62, i32 %77)
  %cmp85 = icmp sgt i32 %77, 62
  br i1 %cmp85, label %if.then87, label %do.body77.if.end88_crit_edge

do.body77.if.end88_crit_edge:                     ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  br label %if.end88

if.then87:                                        ; preds = %do.body77
  call void @__sanitizer_cov_trace_pc() #10
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %78 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %base.i, align 4
  %add.ptr.i144 = getelementptr i8, ptr %79, i32 544
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i144, i32 %2) #8, !srcloc !90
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %do.body77.if.end88_crit_edge
  %dma_requests = getelementptr inbounds %struct.mtk_hsdma_device, ptr %hsdma, i32 0, i32 4
  %80 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %dma_requests, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp89146.not = icmp eq i32 %81, 0
  br i1 %cmp89146.not, label %if.end88.rx_done_crit_edge, label %for.body.lr.ph

if.end88.rx_done_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_done

for.body.lr.ph:                                   ; preds = %if.end88
  %vc91 = getelementptr inbounds %struct.mtk_hsdma_device, ptr %hsdma, i32 0, i32 5
  br label %for.body

for.body:                                         ; preds = %for.body.for.body_crit_edge, %for.body.lr.ph
  %i.1147 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %for.body.for.body_crit_edge ]
  %82 = ptrtoint ptr %vc91 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load ptr, ptr %vc91, align 4
  %arrayidx92 = getelementptr %struct.mtk_hsdma_vchan, ptr %83, i32 %i.1147
  %lock94 = getelementptr inbounds %struct.virt_dma_chan, ptr %arrayidx92, i32 0, i32 3
  tail call void @_raw_spin_lock(ptr noundef %lock94) #8
  tail call fastcc void @mtk_hsdma_issue_vchan_pending(ptr noundef %hsdma, ptr noundef %arrayidx92)
  tail call void @_raw_spin_unlock(ptr noundef %lock94) #8
  %inc = add nuw i32 %i.1147, 1
  %84 = ptrtoint ptr %dma_requests to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load i32, ptr %dma_requests, align 4
  %cmp89 = icmp ult i32 %inc, %85
  br i1 %cmp89, label %for.body.for.body_crit_edge, label %for.body.rx_done_crit_edge

for.body.rx_done_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %rx_done

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #10
  br label %for.body

rx_done:                                          ; preds = %for.body.rx_done_crit_edge, %if.end88.rx_done_crit_edge, %entry.rx_done_crit_edge
  %86 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %base.i, align 4
  %add.ptr.i.i.i = getelementptr i8, ptr %87, i32 552
  %88 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i.i) #8, !srcloc !91
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !92
  %89 = or i32 %88, 256
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #8, !srcloc !89
  tail call void @arm_heavy_mb() #8
  %90 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load ptr, ptr %base.i, align 4
  %add.ptr.i6.i.i = getelementptr i8, ptr %91, i32 552
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i6.i.i, i32 %89) #8, !srcloc !90
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_test_and_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__tasklet_schedule(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__pm_runtime_idle(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @synchronize_irq(i32 noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umin.i32(i32, i32) #5

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #8

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #9 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #9 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 38)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #6 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #8 = { nounwind }
attributes #9 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #10 = { nomerge }
attributes #11 = { cold nounwind }
attributes #12 = { nounwind allocsize(2) }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !18, !19, !20, !21, !22, !24, !26, !27, !28, !30, !31, !32, !34, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !52, !53, !54, !56, !57, !59, !60, !62, !63, !65, !66, !67, !68, !70, !71, !72, !73, !75, !77}
!llvm.module.flags = !{!79, !80, !81, !82, !83, !84, !85, !86}
!llvm.ident = !{!87}

!0 = !{ptr @__initcall__kmod_mtk_hsdma__248_1055_mtk_hsdma_driver_init6, !1, !"__initcall__kmod_mtk_hsdma__248_1055_mtk_hsdma_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 1055, i32 1}
!2 = !{ptr @__exitcall_mtk_hsdma_driver_exit, !1, !"__exitcall_mtk_hsdma_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description249, !4, !"__UNIQUE_ID_description249", i1 false, i1 false}
!4 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 1057, i32 1}
!5 = !{ptr @__UNIQUE_ID_author250, !6, !"__UNIQUE_ID_author250", i1 false, i1 false}
!6 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 1058, i32 1}
!7 = !{ptr @__UNIQUE_ID_file251, !8, !"__UNIQUE_ID_file251", i1 false, i1 false}
!8 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 1059, i32 1}
!9 = !{ptr @__UNIQUE_ID_license252, !8, !"__UNIQUE_ID_license252", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 1051, i32 12}
!12 = !{ptr @mtk_hsdma_driver, !13, !"mtk_hsdma_driver", i1 false, i1 false}
!13 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 1047, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 915, i32 3}
!16 = !{ptr @.str.2, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.3, !15, !"<string literal>", i1 false, i1 false}
!18 = !{ptr @.str.4, !15, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.5, !15, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @mtk_hsdma_probe._entry, !15, !"_entry", i1 false, i1 false}
!21 = !{ptr @mtk_hsdma_probe._entry_ptr, !15, !"_entry_ptr", i1 false, i1 false}
!22 = !{ptr @.str.6, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 919, i32 40}
!24 = !{ptr @.str.8, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 921, i32 3}
!26 = !{ptr @mtk_hsdma_probe._entry.7, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @mtk_hsdma_probe._entry_ptr.9, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @.str.11, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 928, i32 3}
!30 = !{ptr @mtk_hsdma_probe._entry.10, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @mtk_hsdma_probe._entry_ptr.12, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @mtk_hsdma_probe.__key, !33, !"__key", i1 false, i1 false}
!33 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 935, i32 2}
!34 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.14, !36, !"<string literal>", i1 false, i1 false}
!36 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 955, i32 13}
!37 = !{ptr @.str.16, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 957, i32 3}
!39 = !{ptr @.str.17, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @mtk_hsdma_probe._entry.15, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @mtk_hsdma_probe._entry_ptr.18, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.20, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 987, i32 3}
!44 = !{ptr @mtk_hsdma_probe._entry.19, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @mtk_hsdma_probe._entry_ptr.21, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.23, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 998, i32 3}
!48 = !{ptr @mtk_hsdma_probe._entry.22, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @mtk_hsdma_probe._entry_ptr.24, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.26, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 1005, i32 2}
!52 = !{ptr @mtk_hsdma_probe._entry.25, !51, !"_entry", i1 false, i1 false}
!53 = !{ptr @mtk_hsdma_probe._entry_ptr.27, !51, !"_entry_ptr", i1 false, i1 false}
!54 = distinct !{null, !55, !"__already_done", i1 false, i1 false}
!55 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 779, i32 2}
!56 = !{ptr @.str.28, !55, !"<string literal>", i1 false, i1 false}
!57 = distinct !{null, !58, !"__already_done", i1 false, i1 false}
!58 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 785, i32 2}
!59 = !{ptr @.str.30, !58, !"<string literal>", i1 false, i1 false}
!60 = !{ptr @init_completion.__key, !61, !"__key", i1 false, i1 false}
!61 = !{!"../include/linux/completion.h", i32 87, i32 2}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @.str.32, !64, !"<string literal>", i1 false, i1 false}
!64 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 574, i32 4}
!65 = !{ptr @.str.33, !64, !"<string literal>", i1 false, i1 false}
!66 = !{ptr @mtk_hsdma_free_rooms_in_ring._entry, !64, !"_entry", i1 false, i1 false}
!67 = !{ptr @mtk_hsdma_free_rooms_in_ring._entry_ptr, !64, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.34, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/dma/mediatek/../virt-dma.h", i32 101, i32 2}
!70 = !{ptr @.str.35, !69, !"<string literal>", i1 false, i1 false}
!71 = !{ptr @.str.36, !69, !"<string literal>", i1 false, i1 false}
!72 = !{ptr @vchan_cookie_complete.__UNIQUE_ID_ddebug237, !69, !"__UNIQUE_ID_ddebug237", i1 false, i1 false}
!73 = !{ptr @mtk_hsdma_match, !74, !"mtk_hsdma_match", i1 false, i1 false}
!74 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 887, i32 34}
!75 = !{ptr @mt7623_soc, !76, !"mt7623_soc", i1 false, i1 false}
!76 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 877, i32 35}
!77 = !{ptr @mt7622_soc, !78, !"mt7622_soc", i1 false, i1 false}
!78 = !{!"../drivers/dma/mediatek/mtk-hsdma.c", i32 882, i32 35}
!79 = !{i32 1, !"wchar_size", i32 2}
!80 = !{i32 1, !"min_enum_size", i32 4}
!81 = !{i32 8, !"branch-target-enforcement", i32 0}
!82 = !{i32 8, !"sign-return-address", i32 0}
!83 = !{i32 8, !"sign-return-address-all", i32 0}
!84 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!85 = !{i32 7, !"uwtable", i32 1}
!86 = !{i32 7, !"frame-pointer", i32 2}
!87 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!88 = !{!"branch_weights", i32 1, i32 2000}
!89 = !{i64 2154498435}
!90 = !{i64 6325928}
!91 = !{i64 6326346}
!92 = !{i64 2154498221}
!93 = !{i64 2148191340, i64 2148191372, i64 2148191401, i64 2148191435, i64 2148191466, i64 2148191489}
!94 = !{!"branch_weights", i32 2000, i32 1}
!95 = !{i64 2148279341}
!96 = !{i64 2148193805, i64 2148193837, i64 2148193866, i64 2148193900, i64 2148193931, i64 2148193954}
!97 = !{i64 2149895836}
!98 = !{i64 2154443877}
!99 = !{i64 2154501854}
!100 = !{i64 2154502348}
!101 = !{i64 2148192275, i64 2148192301, i64 2148192330, i64 2148192364, i64 2148192395, i64 2148192418}
!102 = !{i64 2154515003}
!103 = !{i64 2154442365, i64 2154442864, i64 2154442402, i64 2154442458, i64 2154442492, i64 2154442516, i64 2154442557, i64 2154442578, i64 2154442606, i64 2154442640}
!104 = !{i64 2148749086, i64 2148749091, i64 2148749104, i64 2148749148, i64 2148749182, i64 2148749203}
!105 = !{i8 0, i8 2}
!106 = !{i64 2148189810, i64 2148189836, i64 2148189865, i64 2148189899, i64 2148189930, i64 2148189953}
!107 = !{i64 2154529530}
