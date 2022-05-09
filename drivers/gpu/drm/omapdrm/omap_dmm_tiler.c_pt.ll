; ModuleID = '/llk/IR_all_yes/drivers/gpu/drm/omapdrm/omap_dmm_tiler.c_pt.bc'
source_filename = "../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.anon.84 = type { i32, i32, i32, i32, i32 }
%struct.spinlock = type { %union.anon }
%union.anon = type { %struct.raw_spinlock }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.0 }
%union.anon.0 = type { i32 }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
%struct.lock_class_key = type { %union.anon.1 }
%union.anon.1 = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.dmm_platform_data = type { i32 }
%struct.tiler_block = type { %struct.list_head, %struct.tcm_area, i32 }
%struct.list_head = type { ptr, ptr }
%struct.tcm_area = type { i8, ptr, %struct.tcm_pt, %struct.tcm_pt }
%struct.tcm_pt = type { i16, i16 }
%struct.wait_queue_entry = type { i32, ptr, ptr, %struct.list_head }
%struct.dmm = type { ptr, i32, ptr, i32, ptr, i32, ptr, i32, %struct.wait_queue_head, %struct.list_head, ptr, i32, %struct.atomic_t, i32, i32, i32, i32, i32, ptr, %struct.list_head, ptr, i8, %struct.spinlock, ptr, i32, ptr }
%struct.wait_queue_head = type { %struct.spinlock, %struct.list_head }
%struct.dmm_txn = type { ptr, ptr, ptr, i32, ptr }
%struct.refill_engine = type { i32, ptr, ptr, ptr, i32, %struct.dmm_txn, i8, %struct.completion, %struct.list_head }
%struct.completion = type { i32, %struct.swait_queue_head }
%struct.swait_queue_head = type { %struct.raw_spinlock, %struct.list_head }
%struct.pat = type { i32, %struct.pat_area, %struct.pat_ctrl, i32 }
%struct.pat_area = type { i32 }
%struct.pat_ctrl = type { i32 }
%struct.tcm = type { i16, i16, i32, i32, %struct.spinlock, ptr, i32, ptr, ptr, ptr, ptr }
%struct.dma_cap_mask_t = type { [1 x i32] }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.dev_links_info = type { %struct.list_head, %struct.list_head, %struct.list_head, i32 }
%struct.dev_pm_info = type { %struct.pm_message, i16, i32, %struct.spinlock, %struct.list_head, %struct.completion, ptr, i8, %struct.hrtimer, i64, %struct.work_struct, %struct.wait_queue_head, ptr, %struct.atomic_t, %struct.atomic_t, i16, i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, ptr, ptr, ptr }
%struct.pm_message = type { i32 }
%struct.hrtimer = type { %struct.timerqueue_node, i64, ptr, ptr, i8, i8, i8, i8 }
%struct.timerqueue_node = type { %struct.rb_node, i64 }
%struct.rb_node = type { i32, ptr, ptr }
%struct.dev_msi_info = type { ptr, ptr }
%struct.dev_archdata = type { ptr, i8 }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.dma_device = type { %struct.kref, i32, i32, %struct.list_head, %struct.list_head, %struct.dma_filter, %struct.dma_cap_mask_t, i32, i16, i16, i32, i32, i32, i32, i32, ptr, ptr, %struct.ida, %struct.mutex, i32, i32, i32, i32, i32, i32, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.dma_filter = type { ptr, i32, ptr }
%struct.ida = type { %struct.xarray }
%struct.xarray = type { %struct.spinlock, i32, ptr }
%struct.dma_async_tx_descriptor = type { i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, %struct.spinlock }

@geom = internal constant { [4 x %struct.anon.84], [48 x i8] } { [4 x %struct.anon.84] [%struct.anon.84 { i32 0, i32 0, i32 1, i32 64, i32 64 }, %struct.anon.84 { i32 0, i32 1, i32 2, i32 64, i32 32 }, %struct.anon.84 { i32 1, i32 1, i32 4, i32 32, i32 32 }, %struct.anon.84 { i32 6, i32 6, i32 1, i32 1, i32 1 }], [48 x i8] zeroinitializer }, align 32
@containers = internal global { [4 x ptr], [16 x i8] } zeroinitializer, align 32
@list_lock = internal global { %struct.spinlock, [52 x i8] } { %struct.spinlock { %union.anon { %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 3, i8 0, i32 0, i32 0 } } } }, [52 x i8] zeroinitializer }, align 32
@omap_dmm = internal global { ptr, [28 x i8] } zeroinitializer, align 32
@tiler_release._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 600, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"failed to release block\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"tiler_release\00", [18 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [41 x i8], [55 x i8] } { [41 x i8] c"drivers/gpu/drm/omapdrm/omap_dmm_tiler.c\00", [55 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@tiler_release._entry_ptr = internal global ptr @tiler_release._entry, section ".printk_index", align 4
@.str.5 = internal constant { [25 x i8], [39 x i8] } { [25 x i8] c"CONTAINER %d DUMP BEGIN\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"%03d:%s\0A\00", [23 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"CONTAINER %d DUMP END\0A\00", [41 x i8] zeroinitializer }, align 32
@tiler_map_show.__UNIQUE_ID_ddebug320 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.5, i8 1, i8 31, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"omapdrm\00", [24 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"tiler_map_show\00", [17 x i8] zeroinitializer }, align 32
@tiler_map_show.__UNIQUE_ID_ddebug321 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.6, i8 1, i8 31, i8 -64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@tiler_map_show.__UNIQUE_ID_ddebug322 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.8, ptr @.str.9, ptr @.str.2, ptr @.str.7, i8 1, i8 32, i8 64, i8 64, { { { %struct.atomic_t, { ptr } } } } { { { %struct.atomic_t, { ptr } } } { { %struct.atomic_t, { ptr } } { %struct.atomic_t { i32 1 }, { ptr } { ptr inttoptr (i32 1 to ptr) } } } }, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"dmm\00", [28 x i8] zeroinitializer }, align 32
@dmm_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap4-dmm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmm_omap4_platform_data }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"ti,omap5-dmm\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @dmm_omap5_platform_data }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@omap_dmm_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr null, ptr @omap_dmm_resume, ptr null, ptr @omap_dmm_resume, ptr null, ptr @omap_dmm_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@omap_dmm_driver = dso_local global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @omap_dmm_probe, ptr @omap_dmm_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.10, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @dmm_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @omap_dmm_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__UNIQUE_ID_file323 = internal constant [45 x i8] c"omapdrm.file=drivers/gpu/drm/omapdrm/omapdrm\00", section ".modinfo", align 1
@__UNIQUE_ID_license324 = internal constant [23 x i8] c"omapdrm.license=GPL v2\00", section ".modinfo", align 1
@__UNIQUE_ID_author325 = internal constant [46 x i8] c"omapdrm.author=Andy Gross <andy.gross@ti.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description326 = internal constant [42 x i8] c"omapdrm.description=OMAP DMM/Tiler Driver\00", section ".modinfo", align 1
@mem_map = external dso_local local_unnamed_addr global ptr, align 4
@__pv_phys_pfn_offset = external dso_local local_unnamed_addr global i32, align 4
@dmm_txn_commit._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.11, ptr @.str.12, ptr @.str.2, i32 397, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"need at least one txn\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"dmm_txn_commit\00", [17 x i8] zeroinitializer }, align 32
@dmm_txn_commit._entry_ptr = internal global ptr @dmm_txn_commit._entry, section ".printk_index", align 4
@reg = internal constant { [2 x [4 x i32]], [32 x i8] } { [2 x [4 x i32]] [[4 x i32] [i32 1216, i32 1220, i32 1224, i32 1228], [4 x i32] [i32 1280, i32 1296, i32 1312, i32 1328]], [32 x i8] zeroinitializer }, align 32
@dmm_txn_commit._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.12, ptr @.str.2, i32 437, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"timed out waiting for done\0A\00", [36 x i8] zeroinitializer }, align 32
@dmm_txn_commit._entry_ptr.15 = internal global ptr @dmm_txn_commit._entry.13, section ".printk_index", align 4
@dmm_write_wa._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.17, ptr @.str.2, i32 143, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sDMA write transfer timeout\0A\00", [35 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dmm_write_wa\00", [19 x i8] zeroinitializer }, align 32
@dmm_write_wa._entry_ptr = internal global ptr @dmm_write_wa._entry, section ".printk_index", align 4
@dmm_dma_copy._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.19, ptr @.str.2, i32 83, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Failed to prepare DMA memcpy\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"dmm_dma_copy\00", [19 x i8] zeroinitializer }, align 32
@dmm_dma_copy._entry_ptr = internal global ptr @dmm_dma_copy._entry, section ".printk_index", align 4
@dmm_dma_copy._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.19, ptr @.str.2, i32 89, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"Failed to do DMA tx_submit\0A\00", [36 x i8] zeroinitializer }, align 32
@dmm_dma_copy._entry_ptr.22 = internal global ptr @dmm_dma_copy._entry.20, section ".printk_index", align 4
@dmm_dma_copy._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.19, ptr @.str.2, i32 95, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"i878 wa DMA copy failure\0A\00", [38 x i8] zeroinitializer }, align 32
@dmm_dma_copy._entry_ptr.25 = internal global ptr @dmm_dma_copy._entry.23, section ".printk_index", align 4
@wait_status._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.26, ptr @.str.27, ptr @.str.2, i32 241, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"%s: error (engine%d). PAT_STATUS: 0x%08x\0A\00", [54 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"wait_status\00", [20 x i8] zeroinitializer }, align 32
@wait_status._entry_ptr = internal global ptr @wait_status._entry, section ".printk_index", align 4
@wait_status._entry.28 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.27, ptr @.str.2, i32 251, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [44 x i8], [52 x i8] } { [44 x i8] c"%s: timeout (engine%d). PAT_STATUS: 0x%08x\0A\00", [52 x i8] zeroinitializer }, align 32
@wait_status._entry_ptr.30 = internal global ptr @wait_status._entry.28, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@dmm_read_wa._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.31, ptr @.str.32, ptr @.str.2, i32 111, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"sDMA read transfer timeout\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"dmm_read_wa\00", [20 x i8] zeroinitializer }, align 32
@dmm_read_wa._entry_ptr = internal global ptr @dmm_read_wa._entry, section ".printk_index", align 4
@kmalloc_caches = external dso_local local_unnamed_addr global [4 x [14 x ptr]], align 4
@.str.33 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"list_lock\00", [22 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [56 x i8], [40 x i8] } { [56 x i8] c"invalid coords: %u < 0 || %u > %u || %u < 0 || %u > %u\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [63 x i8], [33 x i8] } { [63 x i8] c"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789\00", [33 x i8] zeroinitializer }, align 32
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"(%d*%d)\00", [24 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"%dK\00", [28 x i8] zeroinitializer }, align 32
@omap_dmm_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.39 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"&omap_dmm->engine_queue\00", [40 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.2, i32 791, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to find matching device node\0A\00", [59 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"omap_dmm_probe\00", [17 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry_ptr = internal global ptr @omap_dmm_probe._entry, section ".printk_index", align 4
@omap_dmm_probe._entry.42 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.43, ptr @.str.41, ptr @.str.2, i32 802, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.43 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"failed to get base address resource\0A\00", [59 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry_ptr.44 = internal global ptr @omap_dmm_probe._entry.42, section ".printk_index", align 4
@omap_dmm_probe._entry.45 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.46, ptr @.str.41, ptr @.str.2, i32 810, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.46 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"failed to get dmm base address\0A\00", [32 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry_ptr.47 = internal global ptr @omap_dmm_probe._entry.45, section ".printk_index", align 4
@omap_dmm_probe._entry.48 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.49, ptr @.str.41, ptr @.str.2, i32 816, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.49 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"failed to get IRQ resource\0A\00", [36 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry_ptr.50 = internal global ptr @omap_dmm_probe._entry.48, section ".printk_index", align 4
@.str.51 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"ti,dra7\00", [24 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry.52 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.53, ptr @.str.41, ptr @.str.2, i32 831, ptr @.str.54, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.53 = internal constant { [35 x i8], [61 x i8] } { [35 x i8] c"workaround for errata i878 in use\0A\00", [61 x i8] zeroinitializer }, align 32
@.str.54 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry_ptr.55 = internal global ptr @omap_dmm_probe._entry.52, section ".printk_index", align 4
@omap_dmm_probe._entry.56 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.57, ptr @.str.41, ptr @.str.2, i32 834, ptr @.str.58, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.57 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"failed to initialize work-around for i878\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.58 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry_ptr.59 = internal global ptr @omap_dmm_probe._entry.56, section ".printk_index", align 4
@omap_dmm_probe._entry.60 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.61, ptr @.str.41, ptr @.str.2, i32 866, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.61 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"could not allocate dummy page\0A\00", [33 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry_ptr.62 = internal global ptr @omap_dmm_probe._entry.60, section ".printk_index", align 4
@omap_dmm_probe._entry.63 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.64, ptr @.str.41, ptr @.str.2, i32 883, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.64 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"could not allocate refill memory\0A\00", [62 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry_ptr.65 = internal global ptr @omap_dmm_probe._entry.63, section ".printk_index", align 4
@omap_dmm_probe._entry.66 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.67, ptr @.str.41, ptr @.str.2, i32 924, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.67 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"failed to allocate container\0A\00", [34 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry_ptr.68 = internal global ptr @omap_dmm_probe._entry.66, section ".printk_index", align 4
@.str.69 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"omap_dmm_irq_handler\00", [43 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry.70 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.71, ptr @.str.41, ptr @.str.2, i32 961, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.71 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"couldn't register IRQ %d, error %d\0A\00", [60 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry_ptr.72 = internal global ptr @omap_dmm_probe._entry.70, section ".printk_index", align 4
@omap_dmm_probe._entry.73 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.41, ptr @.str.2, i32 978, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.74 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"refill failed\00", [18 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry_ptr.75 = internal global ptr @omap_dmm_probe._entry.73, section ".printk_index", align 4
@omap_dmm_probe._entry.76 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.77, ptr @.str.41, ptr @.str.2, i32 981, ptr @.str.54, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.77 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"initialized all PAT entries\0A\00", [35 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry_ptr.78 = internal global ptr @omap_dmm_probe._entry.76, section ".printk_index", align 4
@omap_dmm_probe._entry.79 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.80, ptr @.str.41, ptr @.str.2, i32 987, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.80 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"cleanup failed\0A\00", [16 x i8] zeroinitializer }, align 32
@omap_dmm_probe._entry_ptr.81 = internal global ptr @omap_dmm_probe._entry.79, section ".printk_index", align 4
@dmm_workaround_init.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.82 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&dmm->wa_lock\00", [18 x i8] zeroinitializer }, align 32
@init_completion.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.84 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"&x->wait\00", [23 x i8] zeroinitializer }, align 32
@omap_dmm_irq_handler._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.85, ptr @.str.69, ptr @.str.2, i32 286, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.85 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"irq error(engine%d): IRQSTAT 0x%02x\0A\00", [59 x i8] zeroinitializer }, align 32
@omap_dmm_irq_handler._entry_ptr = internal global ptr @omap_dmm_irq_handler._entry, section ".printk_index", align 4
@dmm_omap4_platform_data = internal constant { %struct.dmm_platform_data, [28 x i8] } { %struct.dmm_platform_data { i32 2 }, [28 x i8] zeroinitializer }, align 32
@dmm_omap5_platform_data = internal constant { %struct.dmm_platform_data, [28 x i8] } { %struct.dmm_platform_data { i32 4 }, [28 x i8] zeroinitializer }, align 32
@omap_dmm_resume._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.74, ptr @.str.86, ptr @.str.2, i32 1184, ptr @.str.3, ptr @.str.4 }, [40 x i8] zeroinitializer }, align 32
@.str.86 = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"omap_dmm_resume\00", [16 x i8] zeroinitializer }, align 32
@omap_dmm_resume._entry_ptr = internal global ptr @omap_dmm_resume._entry, section ".printk_index", align 4
@___asan_gen_.87 = private unnamed_addr constant [5 x i8] c"geom\00", align 1
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 59, i32 3 }
@___asan_gen_.90 = private unnamed_addr constant [11 x i8] c"containers\00", align 1
@___asan_gen_.92 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 34, i32 20 }
@___asan_gen_.93 = private unnamed_addr constant [10 x i8] c"list_lock\00", align 1
@___asan_gen_.96 = private unnamed_addr constant [9 x i8] c"omap_dmm\00", align 1
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 35, i32 20 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 600, i32 3 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1143, i32 18 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1145, i32 19 }
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1146, i32 18 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1148, i32 4 }
@___asan_gen_.134 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1220, i32 11 }
@___asan_gen_.135 = private unnamed_addr constant [13 x i8] c"dmm_of_match\00", align 1
@___asan_gen_.137 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1202, i32 34 }
@___asan_gen_.138 = private unnamed_addr constant [16 x i8] c"omap_dmm_pm_ops\00", align 1
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1191, i32 8 }
@___asan_gen_.141 = private unnamed_addr constant [16 x i8] c"omap_dmm_driver\00", align 1
@___asan_gen_.143 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1215, i32 24 }
@___asan_gen_.152 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 397, i32 3 }
@___asan_gen_.153 = private unnamed_addr constant [4 x i8] c"reg\00", align 1
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 68, i32 18 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 437, i32 4 }
@___asan_gen_.170 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 143, i32 3 }
@___asan_gen_.179 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 83, i32 3 }
@___asan_gen_.185 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 89, i32 3 }
@___asan_gen_.191 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 95, i32 3 }
@___asan_gen_.200 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 239, i32 4 }
@___asan_gen_.206 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 249, i32 4 }
@___asan_gen_.215 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 111, i32 3 }
@___asan_gen_.218 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 42, i32 8 }
@___asan_gen_.221 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 646, i32 3 }
@___asan_gen_.224 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 997, i32 31 }
@___asan_gen_.227 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1060, i32 16 }
@___asan_gen_.230 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1041, i32 16 }
@___asan_gen_.236 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 784, i32 2 }
@___asan_gen_.245 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 791, i32 4 }
@___asan_gen_.251 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 802, i32 3 }
@___asan_gen_.257 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 810, i32 3 }
@___asan_gen_.263 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 816, i32 3 }
@___asan_gen_.266 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 822, i32 31 }
@___asan_gen_.275 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 830, i32 4 }
@___asan_gen_.284 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 833, i32 4 }
@___asan_gen_.290 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 866, i32 3 }
@___asan_gen_.296 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 883, i32 3 }
@___asan_gen_.302 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 924, i32 4 }
@___asan_gen_.305 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 957, i32 5 }
@___asan_gen_.311 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 960, i32 3 }
@___asan_gen_.317 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 978, i32 4 }
@___asan_gen_.323 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 981, i32 2 }
@___asan_gen_.329 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 987, i32 3 }
@___asan_gen_.335 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 181, i32 2 }
@___asan_gen_.336 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.340 = private unnamed_addr constant [30 x i8] c"../include/linux/completion.h\00", align 1
@___asan_gen_.341 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.340, i32 87, i32 2 }
@___asan_gen_.347 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 284, i32 4 }
@___asan_gen_.348 = private unnamed_addr constant [24 x i8] c"dmm_omap4_platform_data\00", align 1
@___asan_gen_.350 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1194, i32 39 }
@___asan_gen_.351 = private unnamed_addr constant [24 x i8] c"dmm_omap5_platform_data\00", align 1
@___asan_gen_.353 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1198, i32 39 }
@___asan_gen_.354 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.357 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.358 = private constant [44 x i8] c"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c\00", align 1
@___asan_gen_.359 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.358, i32 1184, i32 4 }
@llvm.compiler.used = appending global [120 x ptr] [ptr @__UNIQUE_ID_author325, ptr @__UNIQUE_ID_description326, ptr @__UNIQUE_ID_file323, ptr @__UNIQUE_ID_license324, ptr @dmm_dma_copy._entry, ptr @dmm_dma_copy._entry.20, ptr @dmm_dma_copy._entry.23, ptr @dmm_dma_copy._entry_ptr, ptr @dmm_dma_copy._entry_ptr.22, ptr @dmm_dma_copy._entry_ptr.25, ptr @dmm_read_wa._entry, ptr @dmm_read_wa._entry_ptr, ptr @dmm_txn_commit._entry, ptr @dmm_txn_commit._entry.13, ptr @dmm_txn_commit._entry_ptr, ptr @dmm_txn_commit._entry_ptr.15, ptr @dmm_write_wa._entry, ptr @dmm_write_wa._entry_ptr, ptr @omap_dmm_irq_handler._entry, ptr @omap_dmm_irq_handler._entry_ptr, ptr @omap_dmm_probe._entry, ptr @omap_dmm_probe._entry.42, ptr @omap_dmm_probe._entry.45, ptr @omap_dmm_probe._entry.48, ptr @omap_dmm_probe._entry.52, ptr @omap_dmm_probe._entry.56, ptr @omap_dmm_probe._entry.60, ptr @omap_dmm_probe._entry.63, ptr @omap_dmm_probe._entry.66, ptr @omap_dmm_probe._entry.70, ptr @omap_dmm_probe._entry.73, ptr @omap_dmm_probe._entry.76, ptr @omap_dmm_probe._entry.79, ptr @omap_dmm_probe._entry_ptr, ptr @omap_dmm_probe._entry_ptr.44, ptr @omap_dmm_probe._entry_ptr.47, ptr @omap_dmm_probe._entry_ptr.50, ptr @omap_dmm_probe._entry_ptr.55, ptr @omap_dmm_probe._entry_ptr.59, ptr @omap_dmm_probe._entry_ptr.62, ptr @omap_dmm_probe._entry_ptr.65, ptr @omap_dmm_probe._entry_ptr.68, ptr @omap_dmm_probe._entry_ptr.72, ptr @omap_dmm_probe._entry_ptr.75, ptr @omap_dmm_probe._entry_ptr.78, ptr @omap_dmm_probe._entry_ptr.81, ptr @omap_dmm_resume._entry, ptr @omap_dmm_resume._entry_ptr, ptr @tiler_release._entry, ptr @tiler_release._entry_ptr, ptr @wait_status._entry, ptr @wait_status._entry.28, ptr @wait_status._entry_ptr, ptr @wait_status._entry_ptr.30, ptr @geom, ptr @containers, ptr @list_lock, ptr @omap_dmm, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @dmm_of_match, ptr @omap_dmm_pm_ops, ptr @omap_dmm_driver, ptr @.str.11, ptr @.str.12, ptr @reg, ptr @.str.14, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.21, ptr @.str.24, ptr @.str.26, ptr @.str.27, ptr @.str.29, ptr @.str.31, ptr @.str.32, ptr @.str.33, ptr @.str.34, ptr @.str.35, ptr @.str.37, ptr @.str.38, ptr @omap_dmm_probe.__key, ptr @.str.39, ptr @.str.40, ptr @.str.41, ptr @.str.43, ptr @.str.46, ptr @.str.49, ptr @.str.51, ptr @.str.53, ptr @.str.54, ptr @.str.57, ptr @.str.58, ptr @.str.61, ptr @.str.64, ptr @.str.67, ptr @.str.69, ptr @.str.71, ptr @.str.74, ptr @.str.77, ptr @.str.80, ptr @dmm_workaround_init.__key, ptr @.str.82, ptr @init_completion.__key, ptr @.str.84, ptr @.str.85, ptr @dmm_omap4_platform_data, ptr @dmm_omap5_platform_data, ptr @.str.86], section "llvm.metadata"
@0 = internal global [91 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @geom to i32), i32 80, i32 128, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @containers to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.90 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @list_lock to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tiler_release._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 41, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 25, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.134 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.137 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.141 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm_txn_commit._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.152 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @reg to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm_txn_commit._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm_write_wa._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.170 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm_dma_copy._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.179 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm_dma_copy._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.185 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm_dma_copy._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.191 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_status._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.200 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @wait_status._entry.28 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 44, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.206 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm_read_wa._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.215 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.218 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 56, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.221 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 63, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.224 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.227 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.230 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.236 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.245 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_probe._entry.42 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.43 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.251 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_probe._entry.45 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.46 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.257 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_probe._entry.48 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.49 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.263 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.51 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.266 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_probe._entry.52 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.53 to i32), i32 35, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.54 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.275 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_probe._entry.56 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.57 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.58 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.284 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_probe._entry.60 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.61 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.290 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_probe._entry.63 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.64 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.296 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_probe._entry.66 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.67 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.302 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.69 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.305 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_probe._entry.70 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.71 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.311 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_probe._entry.73 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.74 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.317 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_probe._entry.76 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.77 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.323 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_probe._entry.79 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.80 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.329 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm_workaround_init.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.82 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.335 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @init_completion.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.336 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.84 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.341 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_irq_handler._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.85 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.347 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm_omap4_platform_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.348 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.350 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @dmm_omap5_platform_data to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.351 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.353 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_dmm_resume._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.354 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.86 to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.357 to i32), i32 ptrtoint (ptr @___asan_gen_.358 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.359 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tiler_pin(ptr nocapture noundef readonly %block, ptr noundef %pages, i32 noundef %npages, i32 noundef %roll, i1 noundef zeroext %wait) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %area = getelementptr inbounds %struct.tiler_block, ptr %block, i32 0, i32 1
  %call = tail call fastcc i32 @fill(ptr noundef %area, ptr noundef %pages, i32 noundef %npages, i32 noundef %roll)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool1.not = icmp eq i32 %call, 0
  br i1 %tobool1.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %call.i = tail call fastcc i32 @fill(ptr noundef %area, ptr noundef null, i32 noundef 0, i32 noundef 0) #11
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @fill(ptr nocapture noundef readonly %area, ptr noundef readonly %pages, i32 noundef %npages, i32 noundef %roll) unnamed_addr #0 align 64 {
entry:
  %__wq_entry.i = alloca %struct.wait_queue_entry, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_dmm, align 4
  %tcm = getelementptr inbounds %struct.tcm_area, ptr %area, i32 0, i32 1
  %1 = ptrtoint ptr %tcm to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %tcm, align 4
  tail call void @__might_sleep(ptr noundef nonnull @.str.2, i32 noundef 314) #11
  %3 = load ptr, ptr @omap_dmm, align 4
  %engine_counter.i = getelementptr inbounds %struct.dmm, ptr %3, i32 0, i32 12
  %call.i.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %engine_counter.i, i32 noundef 4) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !195
  tail call void @llvm.prefetch.p0(ptr %engine_counter.i, i32 1, i32 3, i32 1) #11
  %4 = tail call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %engine_counter.i, ptr %engine_counter.i, i32 0, i32 -1, ptr elementtype(i32) %engine_counter.i) #11, !srcloc !196
  %asmresult.i.i.i.i = extractvalue { i32, i32, i32 } %4, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i.i)
  %cmp.not.i.i.i.i = icmp eq i32 %asmresult.i.i.i.i, 0
  br i1 %cmp.not.i.i.i.i, label %if.then.i, label %if.end12.thread.i

if.end12.thread.i:                                ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !197
  br label %do.body19.i

if.then.i:                                        ; preds = %entry
  call void @llvm.lifetime.start.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %5 = call ptr @memset(ptr %__wq_entry.i, i32 255, i32 20)
  call void @init_wait_entry(ptr noundef nonnull %__wq_entry.i, i32 noundef 0) #11
  br label %for.cond.i

for.cond.i:                                       ; preds = %cleanup.i, %if.then.i
  %6 = load ptr, ptr @omap_dmm, align 4
  %engine_queue.i = getelementptr inbounds %struct.dmm, ptr %6, i32 0, i32 8
  %call5.i = call i32 @prepare_to_wait_event(ptr noundef %engine_queue.i, ptr noundef nonnull %__wq_entry.i, i32 noundef 1) #11
  %7 = load ptr, ptr @omap_dmm, align 4
  %engine_counter6.i = getelementptr inbounds %struct.dmm, ptr %7, i32 0, i32 12
  %call.i.i67.i = call zeroext i1 @__kasan_check_write(ptr noundef %engine_counter6.i, i32 noundef 4) #11
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !195
  call void @llvm.prefetch.p0(ptr %engine_counter6.i, i32 1, i32 3, i32 1) #11
  %8 = call { i32, i32, i32 } asm sideeffect "@ atomic_add_unless\0A1:\09ldrex\09$0, [$4]\0A\09teq\09$0, $5\0A\09beq\092f\0A\09add\09$1, $0, $6\0A\09strex\09$2, $1, [$4]\0A\09teq\09$2, #0\0A\09bne\091b\0A2:", "=&r,=&r,=&r,=*Qo,r,r,r,*Qo,~{cc}"(ptr elementtype(i32) %engine_counter6.i, ptr %engine_counter6.i, i32 0, i32 -1, ptr elementtype(i32) %engine_counter6.i) #11, !srcloc !196
  %asmresult.i.i.i68.i = extractvalue { i32, i32, i32 } %8, 0
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %asmresult.i.i.i68.i)
  %cmp.not.i.i.i69.i = icmp eq i32 %asmresult.i.i.i68.i, 0
  br i1 %cmp.not.i.i.i69.i, label %if.end.i, label %if.end12.thread85.i

if.end.i:                                         ; preds = %for.cond.i
  %tobool.not.i = icmp eq i32 %call5.i, 0
  br i1 %tobool.not.i, label %cleanup.i, label %if.then15.i

cleanup.i:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @schedule() #11
  br label %for.cond.i

if.end12.thread85.i:                              ; preds = %for.cond.i
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !197
  %9 = load ptr, ptr @omap_dmm, align 4
  %engine_queue11.i = getelementptr inbounds %struct.dmm, ptr %9, i32 0, i32 8
  call void @finish_wait(ptr noundef %engine_queue11.i, ptr noundef nonnull %__wq_entry.i) #11
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  br label %do.body19.i

if.then15.i:                                      ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 20, ptr nonnull %__wq_entry.i) #11
  %10 = inttoptr i32 %call5.i to ptr
  br label %dmm_txn_init.exit

do.body19.i:                                      ; preds = %if.end12.thread85.i, %if.end12.thread.i
  %call22.i = call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #11
  %idle_head.i = getelementptr inbounds %struct.dmm, ptr %0, i32 0, i32 9
  %11 = ptrtoint ptr %idle_head.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load volatile ptr, ptr %idle_head.i, align 4
  %cmp.i.not.i = icmp eq ptr %12, %idle_head.i
  br i1 %cmp.i.not.i, label %if.end32.thread.i, label %if.then29.i

if.end32.thread.i:                                ; preds = %do.body19.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call22.i) #11
  br label %do.body39.i

if.then29.i:                                      ; preds = %do.body19.i
  %add.ptr.i = getelementptr i8, ptr %12, i32 -100
  %call.i.i73.i = call zeroext i1 @__list_del_entry_valid(ptr noundef %12) #11
  br i1 %call.i.i73.i, label %if.end.i.i.i, label %if.then29.i.if.end32.i_crit_edge

if.then29.i.if.end32.i_crit_edge:                 ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end32.i

if.end.i.i.i:                                     ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %12, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %if.end32.i

if.end32.i:                                       ; preds = %if.end.i.i.i, %if.then29.i.if.end32.i_crit_edge
  %19 = ptrtoint ptr %12 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %12, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %12, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call22.i) #11
  %tobool34.not.i = icmp eq ptr %add.ptr.i, null
  br i1 %tobool34.not.i, label %if.end32.i.do.body39.i_crit_edge, label %do.end47.i, !prof !198

if.end32.i.do.body39.i_crit_edge:                 ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body39.i

do.body39.i:                                      ; preds = %if.end32.i.do.body39.i_crit_edge, %if.end32.thread.i
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_dmm_tiler.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 327, 0\0A.popsection", ""() #11, !srcloc !199
  unreachable

do.end47.i:                                       ; preds = %if.end32.i
  call void @__sanitizer_cov_trace_pc() #13
  %txn48.i = getelementptr i8, ptr %12, i32 -80
  %tcm49.i = getelementptr i8, ptr %12, i32 -92
  %21 = ptrtoint ptr %tcm49.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %2, ptr %tcm49.i, align 4
  %22 = ptrtoint ptr %txn48.i to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %add.ptr.i, ptr %txn48.i, align 4
  %last_pat.i = getelementptr i8, ptr %12, i32 -64
  %23 = ptrtoint ptr %last_pat.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr null, ptr %last_pat.i, align 4
  %refill_va.i = getelementptr i8, ptr %12, i32 -88
  %24 = ptrtoint ptr %refill_va.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %refill_va.i, align 4
  %current_va.i = getelementptr i8, ptr %12, i32 -72
  %26 = ptrtoint ptr %current_va.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %25, ptr %current_va.i, align 4
  %refill_pa.i = getelementptr i8, ptr %12, i32 -84
  %27 = ptrtoint ptr %refill_pa.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load i32, ptr %refill_pa.i, align 4
  %current_pa.i = getelementptr i8, ptr %12, i32 -68
  %29 = ptrtoint ptr %current_pa.i to i32
  call void @__asan_store4_noabort(i32 %29)
  store i32 %28, ptr %current_pa.i, align 4
  br label %dmm_txn_init.exit

dmm_txn_init.exit:                                ; preds = %do.end47.i, %if.then15.i
  %retval.0.i = phi ptr [ %10, %if.then15.i ], [ %txn48.i, %do.end47.i ]
  %tobool.not.i1 = icmp eq ptr %retval.0.i, null
  %cmp.i = icmp ugt ptr %retval.0.i, inttoptr (i32 -4096 to ptr)
  %spec.select.i = or i1 %tobool.not.i1, %cmp.i
  br i1 %spec.select.i, label %dmm_txn_init.exit.cleanup_crit_edge, label %if.end

dmm_txn_init.exit.cleanup_crit_edge:              ; preds = %dmm_txn_init.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %dmm_txn_init.exit
  %30 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %30)
  %area_s.sroa.0.0.copyload70 = load i32, ptr %area, align 4
  %31 = ptrtoint ptr %tcm to i32
  call void @__asan_load4_noabort(i32 %31)
  %area_s.sroa.6.0.copyload73 = load ptr, ptr %tcm, align 4
  %area_s.sroa.8.0.area.sroa_idx = getelementptr inbounds i8, ptr %area, i32 8
  %32 = ptrtoint ptr %area_s.sroa.8.0.area.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %32)
  %area_s.sroa.8.0.copyload77 = load i16, ptr %area_s.sroa.8.0.area.sroa_idx, align 4
  %area_s.sroa.10.0.area.sroa_idx = getelementptr inbounds i8, ptr %area, i32 10
  %33 = ptrtoint ptr %area_s.sroa.10.0.area.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %33)
  %area_s.sroa.10.0.copyload81 = load i16, ptr %area_s.sroa.10.0.area.sroa_idx, align 2
  %area_s.sroa.12.0.area.sroa_idx = getelementptr inbounds i8, ptr %area, i32 12
  %34 = ptrtoint ptr %area_s.sroa.12.0.area.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %34)
  %area_s.sroa.12.sroa.0.0.copyload110 = load i16, ptr %area_s.sroa.12.0.area.sroa_idx, align 4
  %area_s.sroa.12.sroa.6.0.area_s.sroa.12.0.area.sroa_idx.sroa_idx = getelementptr inbounds i8, ptr %area, i32 14
  %35 = ptrtoint ptr %area_s.sroa.12.sroa.6.0.area_s.sroa.12.0.area.sroa_idx.sroa_idx to i32
  call void @__asan_load2_noabort(i32 %35)
  %area_s.sroa.12.sroa.6.0.copyload111 = load i16, ptr %area_s.sroa.12.sroa.6.0.area_s.sroa.12.0.area.sroa_idx.sroa_idx, align 2
  %slice.sroa.0.sroa.0.0.extract.shift = lshr i32 %area_s.sroa.0.0.copyload70, 24
  %slice.sroa.0.sroa.0.0.extract.trunc = trunc i32 %slice.sroa.0.sroa.0.0.extract.shift to i8
  %tobool.not.i2 = icmp eq ptr %area_s.sroa.6.0.copyload73, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %slice.sroa.0.sroa.0.0.extract.trunc)
  %tobool1.not.i = icmp ne i8 %slice.sroa.0.sroa.0.0.extract.trunc, 0
  %or.cond = select i1 %tobool.not.i2, i1 true, i1 %tobool1.not.i
  call void @__sanitizer_cov_trace_cmp2(i16 %area_s.sroa.10.0.copyload81, i16 %area_s.sroa.12.sroa.6.0.copyload111)
  %cmp.not.i = icmp eq i16 %area_s.sroa.10.0.copyload81, %area_s.sroa.12.sroa.6.0.copyload111
  %or.cond119 = select i1 %or.cond, i1 true, i1 %cmp.not.i
  br i1 %or.cond119, label %if.end.tcm_slice.exit_crit_edge, label %land.lhs.true6.i

if.end.tcm_slice.exit_crit_edge:                  ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcm_slice.exit

land.lhs.true6.i:                                 ; preds = %if.end
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %area_s.sroa.8.0.copyload77)
  %tobool9.not.i = icmp eq i16 %area_s.sroa.8.0.copyload77, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i, label %cond.true.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true6.i
  %conv12.i = zext i16 %area_s.sroa.12.sroa.0.0.copyload110 to i32
  %36 = ptrtoint ptr %area_s.sroa.6.0.copyload73 to i32
  call void @__asan_load2_noabort(i32 %36)
  %37 = load i16, ptr %area_s.sroa.6.0.copyload73, align 4
  %conv14.i = zext i16 %37 to i32
  %sub.i = add nsw i32 %conv14.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv12.i)
  %cmp15.not.i = icmp eq i32 %sub.i, %conv12.i
  br i1 %cmp15.not.i, label %lor.lhs.false.i.tcm_slice.exit_crit_edge, label %cond.false.i

lor.lhs.false.i.tcm_slice.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcm_slice.exit

cond.true.i:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %area_s.sroa.6.0.copyload73 to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %area_s.sroa.6.0.copyload73, align 4
  br label %cond.end.i

cond.false.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub34.i = add i16 %area_s.sroa.12.sroa.6.0.copyload111, -1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %slice.sroa.27.0.in = phi i16 [ %37, %cond.false.i ], [ %39, %cond.true.i ]
  %cond.i = phi i16 [ %sub34.i, %cond.false.i ], [ %area_s.sroa.10.0.copyload81, %cond.true.i ]
  %slice.sroa.27.0 = add i16 %slice.sroa.27.0.in, -1
  %add.i = add i16 %cond.i, 1
  br label %tcm_slice.exit

tcm_slice.exit:                                   ; preds = %cond.end.i, %lor.lhs.false.i.tcm_slice.exit_crit_edge, %if.end.tcm_slice.exit_crit_edge
  %slice.sroa.37.0 = phi i16 [ %cond.i, %cond.end.i ], [ %area_s.sroa.12.sroa.6.0.copyload111, %lor.lhs.false.i.tcm_slice.exit_crit_edge ], [ %area_s.sroa.12.sroa.6.0.copyload111, %if.end.tcm_slice.exit_crit_edge ]
  %slice.sroa.27.1 = phi i16 [ %slice.sroa.27.0, %cond.end.i ], [ %area_s.sroa.12.sroa.0.0.copyload110, %lor.lhs.false.i.tcm_slice.exit_crit_edge ], [ %area_s.sroa.12.sroa.0.0.copyload110, %if.end.tcm_slice.exit_crit_edge ]
  %area_s.sroa.10.0 = phi i16 [ %add.i, %cond.end.i ], [ %area_s.sroa.10.0.copyload81, %lor.lhs.false.i.tcm_slice.exit_crit_edge ], [ %area_s.sroa.10.0.copyload81, %if.end.tcm_slice.exit_crit_edge ]
  %area_s.sroa.8.0 = phi i16 [ 0, %cond.end.i ], [ 0, %lor.lhs.false.i.tcm_slice.exit_crit_edge ], [ %area_s.sroa.8.0.copyload77, %if.end.tcm_slice.exit_crit_edge ]
  %area_s.sroa.6.0 = phi ptr [ %area_s.sroa.6.0.copyload73, %cond.end.i ], [ null, %lor.lhs.false.i.tcm_slice.exit_crit_edge ], [ null, %if.end.tcm_slice.exit_crit_edge ]
  br i1 %tobool.not.i2, label %tcm_slice.exit.for.end_crit_edge, label %for.body.lr.ph

tcm_slice.exit.for.end_crit_edge:                 ; preds = %tcm_slice.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %tcm_slice.exit
  %current_pa.i.i = getelementptr inbounds %struct.dmm_txn, ptr %retval.0.i, i32 0, i32 3
  %current_va.i.i = getelementptr inbounds %struct.dmm_txn, ptr %retval.0.i, i32 0, i32 2
  %last_pat.i6 = getelementptr inbounds %struct.dmm_txn, ptr %retval.0.i, i32 0, i32 4
  %tobool55.not.i = icmp eq ptr %pages, null
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %slice.sroa.0.sroa.0.0.extract.trunc)
  %tobool.not.i18 = icmp eq i8 %slice.sroa.0.sroa.0.0.extract.trunc, 0
  %conv12.i44 = zext i16 %area_s.sroa.12.sroa.0.0.copyload110 to i32
  %sub34.i52 = add i16 %area_s.sroa.12.sroa.6.0.copyload111, -1
  br label %for.body

for.body:                                         ; preds = %tcm_slice.exit62.for.body_crit_edge, %for.body.lr.ph
  %roll.addr.0133 = phi i32 [ %roll, %for.body.lr.ph ], [ %add, %tcm_slice.exit62.for.body_crit_edge ]
  %area_s.sroa.6.1132 = phi ptr [ %area_s.sroa.6.0, %for.body.lr.ph ], [ %area_s.sroa.6.2, %tcm_slice.exit62.for.body_crit_edge ]
  %area_s.sroa.8.1131 = phi i16 [ %area_s.sroa.8.0, %for.body.lr.ph ], [ %area_s.sroa.8.2, %tcm_slice.exit62.for.body_crit_edge ]
  %area_s.sroa.10.1130 = phi i16 [ %area_s.sroa.10.0, %for.body.lr.ph ], [ %area_s.sroa.10.2, %tcm_slice.exit62.for.body_crit_edge ]
  %slice.sroa.8.0129 = phi ptr [ %area_s.sroa.6.0.copyload73, %for.body.lr.ph ], [ %area_s.sroa.6.1132, %tcm_slice.exit62.for.body_crit_edge ]
  %slice.sroa.14.0128 = phi i16 [ %area_s.sroa.8.0.copyload77, %for.body.lr.ph ], [ %area_s.sroa.8.1131, %tcm_slice.exit62.for.body_crit_edge ]
  %slice.sroa.20.0127 = phi i16 [ %area_s.sroa.10.0.copyload81, %for.body.lr.ph ], [ %area_s.sroa.10.1130, %tcm_slice.exit62.for.body_crit_edge ]
  %slice.sroa.27.2126 = phi i16 [ %slice.sroa.27.1, %for.body.lr.ph ], [ %slice.sroa.27.4, %tcm_slice.exit62.for.body_crit_edge ]
  %slice.sroa.37.1125 = phi i16 [ %slice.sroa.37.0, %for.body.lr.ph ], [ %slice.sroa.37.2, %tcm_slice.exit62.for.body_crit_edge ]
  %bf.value = zext i16 %slice.sroa.14.0128 to i32
  %bf.shl = shl i32 %bf.value, 24
  %40 = and i16 %slice.sroa.20.0127, 255
  %bf.value6 = zext i16 %40 to i32
  %bf.shl7 = shl nuw nsw i32 %bf.value6, 16
  %bf.clear8 = or i32 %bf.shl, %bf.shl7
  %41 = shl i16 %slice.sroa.27.2126, 8
  %bf.shl14 = zext i16 %41 to i32
  %bf.clear15 = or i32 %bf.clear8, %bf.shl14
  %42 = and i16 %slice.sroa.37.1125, 255
  %bf.value21 = zext i16 %42 to i32
  %bf.set23 = or i32 %bf.clear15, %bf.value21
  %43 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %retval.0.i, align 4
  %bf.lshr.i = lshr exact i32 %bf.shl14, 8
  %bf.lshr2.i = and i32 %bf.value, 255
  %add.i4 = add nuw nsw i32 %bf.lshr.i, 1
  %sub.i5 = sub nsw i32 %add.i4, %bf.lshr2.i
  %add5.i = add nuw nsw i32 %bf.value21, 1
  %sub9.i = sub nsw i32 %add5.i, %bf.value6
  %mul.i = mul nsw i32 %sub.i5, %sub9.i
  %45 = ptrtoint ptr %current_pa.i.i to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load i32, ptr %current_pa.i.i, align 4
  %sub.i.i = add i32 %46, -1
  %or.i.i = or i32 %sub.i.i, 15
  %add.i.i = add i32 %or.i.i, 1
  %47 = ptrtoint ptr %current_va.i.i to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %current_va.i.i, align 4
  %49 = ptrtoint ptr %48 to i32
  %sub2.i.i = add i32 %49, -1
  %or3.i.i = or i32 %sub2.i.i, 15
  %add4.i.i = add i32 %or3.i.i, 1
  %50 = inttoptr i32 %add4.i.i to ptr
  %add9.i.i = add i32 %or.i.i, 17
  store i32 %add9.i.i, ptr %current_pa.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %50, i32 16
  store ptr %add.ptr.i.i, ptr %current_va.i.i, align 4
  %refill_va.i.i = getelementptr inbounds %struct.refill_engine, ptr %44, i32 0, i32 3
  %51 = ptrtoint ptr %refill_va.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %refill_va.i.i, align 4
  %sub.ptr.lhs.cast.i.i = ptrtoint ptr %add.ptr.i.i to i32
  %sub.ptr.rhs.cast.i.i = ptrtoint ptr %52 to i32
  %sub.ptr.sub.i.i = sub i32 %sub.ptr.lhs.cast.i.i, %sub.ptr.rhs.cast.i.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131456, i32 %sub.ptr.sub.i.i)
  %cmp.i.i = icmp sgt i32 %sub.ptr.sub.i.i, 131456
  br i1 %cmp.i.i, label %do.body13.i.i, label %alloc_dma.exit.i, !prof !198

do.body13.i.i:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_dmm_tiler.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #11, !srcloc !200
  unreachable

alloc_dma.exit.i:                                 ; preds = %for.body
  %53 = ptrtoint ptr %last_pat.i6 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %last_pat.i6, align 4
  %tobool.not.i7 = icmp eq ptr %54, null
  br i1 %tobool.not.i7, label %alloc_dma.exit.i.if.end.i10_crit_edge, label %if.then.i8

alloc_dma.exit.i.if.end.i10_crit_edge:            ; preds = %alloc_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end.i10

if.then.i8:                                       ; preds = %alloc_dma.exit.i
  call void @__sanitizer_cov_trace_pc() #13
  %55 = ptrtoint ptr %54 to i32
  call void @__asan_store4_noabort(i32 %55)
  store i32 %add.i.i, ptr %54, align 4
  br label %if.end.i10

if.end.i10:                                       ; preds = %if.then.i8, %alloc_dma.exit.i.if.end.i10_crit_edge
  %area11.i = getelementptr inbounds %struct.pat, ptr %50, i32 0, i32 1
  %56 = ptrtoint ptr %area11.i to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %bf.set23, ptr %area11.i, align 4
  %tcm.i9 = getelementptr inbounds %struct.refill_engine, ptr %44, i32 0, i32 2
  %57 = ptrtoint ptr %tcm.i9 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %tcm.i9, align 4
  %y_offset.i = getelementptr inbounds %struct.tcm, ptr %58, i32 0, i32 3
  %59 = ptrtoint ptr %y_offset.i to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load i32, ptr %y_offset.i, align 4
  %add1692.i = shl i32 %60, 16
  %bf.lshr1493.i = add i32 %add1692.i, %bf.set23
  %bf.shl.i = and i32 %bf.lshr1493.i, 16711680
  %bf.clear18.i = and i32 %bf.set23, -16711681
  %bf.set.i = or i32 %bf.shl.i, %bf.clear18.i
  store i32 %bf.set.i, ptr %area11.i, align 4
  %61 = load ptr, ptr %tcm.i9, align 4
  %y_offset20.i = getelementptr inbounds %struct.tcm, ptr %61, i32 0, i32 3
  %62 = ptrtoint ptr %y_offset20.i to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load i32, ptr %y_offset20.i, align 4
  %add24.i = add i32 %63, %bf.value21
  %bf.value26.i = and i32 %add24.i, 255
  %bf.clear27.i = and i32 %bf.set.i, -256
  %bf.set28.i = or i32 %bf.clear27.i, %bf.value26.i
  store i32 %bf.set28.i, ptr %area11.i, align 4
  %ctrl.i = getelementptr inbounds %struct.pat, ptr %50, i32 0, i32 2
  %64 = load ptr, ptr %tcm.i9, align 4
  %lut_id.i = getelementptr inbounds %struct.tcm, ptr %64, i32 0, i32 2
  %65 = ptrtoint ptr %lut_id.i to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load i32, ptr %lut_id.i, align 4
  %bf.value37.i = shl i32 %66, 16
  %bf.shl38.i = and i32 %bf.value37.i, 16711680
  %bf.set40.i = or i32 %bf.shl38.i, 268435456
  %67 = ptrtoint ptr %ctrl.i to i32
  call void @__asan_store4_noabort(i32 %67)
  store i32 %bf.set40.i, ptr %ctrl.i, align 8
  %mul47.i = shl nsw i32 %mul.i, 2
  %68 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %retval.0.i, align 4
  %70 = ptrtoint ptr %current_pa.i.i to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %current_pa.i.i, align 4
  %sub.i95.i = add i32 %71, -1
  %or.i96.i = or i32 %sub.i95.i, 15
  %add.i97.i = add i32 %or.i96.i, 1
  %72 = ptrtoint ptr %current_va.i.i to i32
  call void @__asan_load4_noabort(i32 %72)
  %73 = load ptr, ptr %current_va.i.i, align 4
  %74 = ptrtoint ptr %73 to i32
  %sub2.i99.i = add i32 %74, -1
  %or3.i100.i = or i32 %sub2.i99.i, 15
  %add4.i101.i = add i32 %or3.i100.i, 1
  %75 = inttoptr i32 %add4.i101.i to ptr
  %add9.i102.i = add i32 %add.i97.i, %mul47.i
  store i32 %add9.i102.i, ptr %current_pa.i.i, align 4
  %add.ptr.i103.i = getelementptr i8, ptr %75, i32 %mul47.i
  store ptr %add.ptr.i103.i, ptr %current_va.i.i, align 4
  %refill_va.i104.i = getelementptr inbounds %struct.refill_engine, ptr %69, i32 0, i32 3
  %76 = ptrtoint ptr %refill_va.i104.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %refill_va.i104.i, align 4
  %sub.ptr.lhs.cast.i105.i = ptrtoint ptr %add.ptr.i103.i to i32
  %sub.ptr.rhs.cast.i106.i = ptrtoint ptr %77 to i32
  %sub.ptr.sub.i107.i = sub i32 %sub.ptr.lhs.cast.i105.i, %sub.ptr.rhs.cast.i106.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 131456, i32 %sub.ptr.sub.i107.i)
  %cmp.i108.i = icmp sgt i32 %sub.ptr.sub.i107.i, 131456
  br i1 %cmp.i108.i, label %do.body13.i109.i, label %alloc_dma.exit110.i, !prof !198

do.body13.i109.i:                                 ; preds = %if.end.i10
  call void @__sanitizer_cov_trace_pc() #13
  call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_dmm_tiler.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 223, 0\0A.popsection", ""() #11, !srcloc !200
  unreachable

alloc_dma.exit110.i:                              ; preds = %if.end.i10
  %data_pa49.i = getelementptr inbounds %struct.pat, ptr %50, i32 0, i32 3
  %78 = ptrtoint ptr %data_pa49.i to i32
  call void @__asan_store4_noabort(i32 %78)
  store i32 %add.i97.i, ptr %data_pa49.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %mul.i)
  %tobool50.not112.i = icmp eq i32 %mul.i, 0
  br i1 %tobool50.not112.i, label %alloc_dma.exit110.i.dmm_txn_append.exit_crit_edge, label %while.body.lr.ph.i

alloc_dma.exit110.i.dmm_txn_append.exit_crit_edge: ; preds = %alloc_dma.exit110.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmm_txn_append.exit

while.body.lr.ph.i:                               ; preds = %alloc_dma.exit110.i
  %dmm.i = getelementptr inbounds %struct.refill_engine, ptr %44, i32 0, i32 1
  br label %while.body.i

while.body.i:                                     ; preds = %cond.end.i17.while.body.i_crit_edge, %while.body.lr.ph.i
  %dec113.in.i = phi i32 [ %mul.i, %while.body.lr.ph.i ], [ %dec113.i, %cond.end.i17.while.body.i_crit_edge ]
  %dec113.i = add i32 %dec113.in.i, -1
  br i1 %tobool55.not.i, label %while.body.i.cond.false.i15_crit_edge, label %land.lhs.true.i13

while.body.i.cond.false.i15_crit_edge:            ; preds = %while.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i15

land.lhs.true.i13:                                ; preds = %while.body.i
  %add51.i = add i32 %dec113.i, %roll.addr.0133
  call void @__sanitizer_cov_trace_cmp4(i32 %add51.i, i32 %npages)
  %cmp.not.i11 = icmp ult i32 %add51.i, %npages
  %sub53.i = select i1 %cmp.not.i11, i32 0, i32 %npages
  %spec.select.i12 = sub i32 %add51.i, %sub53.i
  %arrayidx.i = getelementptr ptr, ptr %pages, i32 %spec.select.i12
  %79 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %79)
  %80 = load ptr, ptr %arrayidx.i, align 4
  %tobool56.not.i = icmp eq ptr %80, null
  br i1 %tobool56.not.i, label %land.lhs.true.i13.cond.false.i15_crit_edge, label %cond.true.i14

land.lhs.true.i13.cond.false.i15_crit_edge:       ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.false.i15

cond.true.i14:                                    ; preds = %land.lhs.true.i13
  call void @__sanitizer_cov_trace_pc() #13
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %81 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast.i = ptrtoint ptr %80 to i32
  %sub.ptr.rhs.cast.i = ptrtoint ptr %81 to i32
  %sub.ptr.sub.i = sub i32 %sub.ptr.lhs.cast.i, %sub.ptr.rhs.cast.i
  %sub.ptr.div.i = sdiv exact i32 %sub.ptr.sub.i, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %82 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add58.i = add i32 %sub.ptr.div.i, %82
  %shl.i = shl i32 %add58.i, 12
  br label %cond.end.i17

cond.false.i15:                                   ; preds = %land.lhs.true.i13.cond.false.i15_crit_edge, %while.body.i.cond.false.i15_crit_edge
  %83 = ptrtoint ptr %dmm.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %dmm.i, align 4
  %dummy_pa.i = getelementptr inbounds %struct.dmm, ptr %84, i32 0, i32 5
  %85 = ptrtoint ptr %dummy_pa.i to i32
  call void @__asan_load4_noabort(i32 %85)
  %86 = load i32, ptr %dummy_pa.i, align 4
  br label %cond.end.i17

cond.end.i17:                                     ; preds = %cond.false.i15, %cond.true.i14
  %cond.i16 = phi i32 [ %shl.i, %cond.true.i14 ], [ %86, %cond.false.i15 ]
  %arrayidx59.i = getelementptr i32, ptr %75, i32 %dec113.i
  %87 = ptrtoint ptr %arrayidx59.i to i32
  call void @__asan_store4_noabort(i32 %87)
  store i32 %cond.i16, ptr %arrayidx59.i, align 4
  %tobool50.not.i = icmp eq i32 %dec113.i, 0
  br i1 %tobool50.not.i, label %cond.end.i17.dmm_txn_append.exit_crit_edge, label %cond.end.i17.while.body.i_crit_edge

cond.end.i17.while.body.i_crit_edge:              ; preds = %cond.end.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i

cond.end.i17.dmm_txn_append.exit_crit_edge:       ; preds = %cond.end.i17
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmm_txn_append.exit

dmm_txn_append.exit:                              ; preds = %cond.end.i17.dmm_txn_append.exit_crit_edge, %alloc_dma.exit110.i.dmm_txn_append.exit_crit_edge
  %88 = ptrtoint ptr %last_pat.i6 to i32
  call void @__asan_store4_noabort(i32 %88)
  store ptr %50, ptr %last_pat.i6, align 4
  br i1 %tobool.not.i18, label %cond.false.i29, label %cond.true.i24

cond.true.i24:                                    ; preds = %dmm_txn_append.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i21 = add i16 %slice.sroa.27.2126, 1
  %add.i.i22 = sub i16 %sub.i.i21, %slice.sroa.14.0128
  %sub.i23.i = add i16 %slice.sroa.37.1125, 1
  %add.i24.i = sub i16 %sub.i23.i, %slice.sroa.20.0127
  %mul.i23 = mul i16 %add.i.i22, %add.i24.i
  br label %__tcm_sizeof.exit

cond.false.i29:                                   ; preds = %dmm_txn_append.exit
  call void @__sanitizer_cov_trace_pc() #13
  %sub11.i = sub i16 %slice.sroa.37.1125, %slice.sroa.20.0127
  %89 = ptrtoint ptr %slice.sroa.8.0129 to i32
  call void @__asan_load2_noabort(i32 %89)
  %90 = load i16, ptr %slice.sroa.8.0129, align 4
  %mul13.i = mul i16 %90, %sub11.i
  %sub.i27 = add i16 %slice.sroa.27.2126, 1
  %add.i28 = sub i16 %sub.i27, %slice.sroa.14.0128
  %add14.i = add i16 %add.i28, %mul13.i
  br label %__tcm_sizeof.exit

__tcm_sizeof.exit:                                ; preds = %cond.false.i29, %cond.true.i24
  %cond.i30 = phi i16 [ %mul.i23, %cond.true.i24 ], [ %add14.i, %cond.false.i29 ]
  %conv25 = zext i16 %cond.i30 to i32
  %add = add i32 %roll.addr.0133, %conv25
  %tobool.not.i33 = icmp eq ptr %area_s.sroa.6.1132, null
  %or.cond120 = select i1 %tobool.not.i33, i1 true, i1 %tobool1.not.i
  call void @__sanitizer_cov_trace_cmp2(i16 %area_s.sroa.10.1130, i16 %area_s.sroa.12.sroa.6.0.copyload111)
  %cmp.not.i39 = icmp eq i16 %area_s.sroa.10.1130, %area_s.sroa.12.sroa.6.0.copyload111
  %or.cond121 = select i1 %or.cond120, i1 true, i1 %cmp.not.i39
  br i1 %or.cond121, label %__tcm_sizeof.exit.tcm_slice.exit62_crit_edge, label %land.lhs.true6.i43

__tcm_sizeof.exit.tcm_slice.exit62_crit_edge:     ; preds = %__tcm_sizeof.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcm_slice.exit62

land.lhs.true6.i43:                               ; preds = %__tcm_sizeof.exit
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %area_s.sroa.8.1131)
  %tobool9.not.i42 = icmp eq i16 %area_s.sroa.8.1131, 0
  %91 = ptrtoint ptr %area_s.sroa.6.1132 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %area_s.sroa.6.1132, align 4
  br i1 %tobool9.not.i42, label %lor.lhs.false.i48, label %land.lhs.true6.i43.cond.end.i58_crit_edge

land.lhs.true6.i43.cond.end.i58_crit_edge:        ; preds = %land.lhs.true6.i43
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i58

lor.lhs.false.i48:                                ; preds = %land.lhs.true6.i43
  %conv14.i45 = zext i16 %92 to i32
  %sub.i46 = add nsw i32 %conv14.i45, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i46, i32 %conv12.i44)
  %cmp15.not.i47 = icmp eq i32 %sub.i46, %conv12.i44
  br i1 %cmp15.not.i47, label %lor.lhs.false.i48.tcm_slice.exit62_crit_edge, label %lor.lhs.false.i48.cond.end.i58_crit_edge

lor.lhs.false.i48.cond.end.i58_crit_edge:         ; preds = %lor.lhs.false.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i58

lor.lhs.false.i48.tcm_slice.exit62_crit_edge:     ; preds = %lor.lhs.false.i48
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcm_slice.exit62

cond.end.i58:                                     ; preds = %lor.lhs.false.i48.cond.end.i58_crit_edge, %land.lhs.true6.i43.cond.end.i58_crit_edge
  %cond.i54 = phi i16 [ %sub34.i52, %lor.lhs.false.i48.cond.end.i58_crit_edge ], [ %area_s.sroa.10.1130, %land.lhs.true6.i43.cond.end.i58_crit_edge ]
  %slice.sroa.27.3 = add i16 %92, -1
  %add.i56 = add i16 %cond.i54, 1
  br label %tcm_slice.exit62

tcm_slice.exit62:                                 ; preds = %cond.end.i58, %lor.lhs.false.i48.tcm_slice.exit62_crit_edge, %__tcm_sizeof.exit.tcm_slice.exit62_crit_edge
  %slice.sroa.37.2 = phi i16 [ %cond.i54, %cond.end.i58 ], [ %area_s.sroa.12.sroa.6.0.copyload111, %lor.lhs.false.i48.tcm_slice.exit62_crit_edge ], [ %area_s.sroa.12.sroa.6.0.copyload111, %__tcm_sizeof.exit.tcm_slice.exit62_crit_edge ]
  %slice.sroa.27.4 = phi i16 [ %slice.sroa.27.3, %cond.end.i58 ], [ %area_s.sroa.12.sroa.0.0.copyload110, %lor.lhs.false.i48.tcm_slice.exit62_crit_edge ], [ %area_s.sroa.12.sroa.0.0.copyload110, %__tcm_sizeof.exit.tcm_slice.exit62_crit_edge ]
  %area_s.sroa.10.2 = phi i16 [ %add.i56, %cond.end.i58 ], [ %area_s.sroa.10.1130, %lor.lhs.false.i48.tcm_slice.exit62_crit_edge ], [ %area_s.sroa.10.1130, %__tcm_sizeof.exit.tcm_slice.exit62_crit_edge ]
  %area_s.sroa.8.2 = phi i16 [ 0, %cond.end.i58 ], [ 0, %lor.lhs.false.i48.tcm_slice.exit62_crit_edge ], [ %area_s.sroa.8.1131, %__tcm_sizeof.exit.tcm_slice.exit62_crit_edge ]
  %area_s.sroa.6.2 = phi ptr [ %area_s.sroa.6.1132, %cond.end.i58 ], [ null, %lor.lhs.false.i48.tcm_slice.exit62_crit_edge ], [ null, %__tcm_sizeof.exit.tcm_slice.exit62_crit_edge ]
  br i1 %tobool.not.i33, label %tcm_slice.exit62.for.end_crit_edge, label %tcm_slice.exit62.for.body_crit_edge

tcm_slice.exit62.for.body_crit_edge:              ; preds = %tcm_slice.exit62
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

tcm_slice.exit62.for.end_crit_edge:               ; preds = %tcm_slice.exit62
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %tcm_slice.exit62.for.end_crit_edge, %tcm_slice.exit.for.end_crit_edge
  %93 = ptrtoint ptr %retval.0.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %retval.0.i, align 4
  %dmm1.i = getelementptr inbounds %struct.refill_engine, ptr %94, i32 0, i32 1
  %95 = ptrtoint ptr %dmm1.i to i32
  call void @__asan_load4_noabort(i32 %95)
  %96 = load ptr, ptr %dmm1.i, align 4
  %last_pat.i63 = getelementptr inbounds %struct.dmm_txn, ptr %retval.0.i, i32 0, i32 4
  %97 = ptrtoint ptr %last_pat.i63 to i32
  call void @__asan_load4_noabort(i32 %97)
  %98 = load ptr, ptr %last_pat.i63, align 4
  %tobool.not.i64 = icmp eq ptr %98, null
  br i1 %tobool.not.i64, label %do.end.i, label %if.end.i66

do.end.i:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %99 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %96, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %100, ptr noundef nonnull @.str.11) #14
  br label %dmm_txn_commit.exit

if.end.i66:                                       ; preds = %for.end
  %101 = ptrtoint ptr %98 to i32
  call void @__asan_store4_noabort(i32 %101)
  store i32 0, ptr %98, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !201
  call void @arm_heavy_mb() #11
  %102 = ptrtoint ptr %last_pat.i63 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load ptr, ptr %last_pat.i63, align 4
  %104 = call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %103) #11, !srcloc !202
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !203
  %105 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load i32, ptr %94, align 4
  %arrayidx.i65 = getelementptr [2 x [4 x i32]], ptr @reg, i32 0, i32 1, i32 %106
  %107 = ptrtoint ptr %arrayidx.i65 to i32
  call void @__asan_load4_noabort(i32 %107)
  %108 = load i32, ptr %arrayidx.i65, align 4
  call fastcc void @dmm_write(ptr noundef %96, i32 noundef 0, i32 noundef %108) #11
  %call10.i = call fastcc i32 @wait_status(ptr noundef %94, i32 noundef 1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call10.i)
  %tobool11.not.i = icmp eq i32 %call10.i, 0
  br i1 %tobool11.not.i, label %if.end13.i, label %if.end.i66.dmm_txn_commit.exit_crit_edge

if.end.i66.dmm_txn_commit.exit_crit_edge:         ; preds = %if.end.i66
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmm_txn_commit.exit

if.end13.i:                                       ; preds = %if.end.i66
  %async.i = getelementptr inbounds %struct.refill_engine, ptr %94, i32 0, i32 6
  %109 = ptrtoint ptr %async.i to i32
  call void @__asan_store1_noabort(i32 %109)
  store i8 0, ptr %async.i, align 4
  %compl.i = getelementptr inbounds %struct.refill_engine, ptr %94, i32 0, i32 7
  %110 = ptrtoint ptr %compl.i to i32
  call void @__asan_store4_noabort(i32 %110)
  store i32 0, ptr %compl.i, align 4
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 5", "r,~{memory}"(i32 0) #11, !srcloc !204
  %refill_pa.i67 = getelementptr inbounds %struct.refill_engine, ptr %94, i32 0, i32 4
  %111 = ptrtoint ptr %refill_pa.i67 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load i32, ptr %refill_pa.i67, align 4
  %113 = ptrtoint ptr %94 to i32
  call void @__asan_load4_noabort(i32 %113)
  %114 = load i32, ptr %94, align 4
  %arrayidx24.i = getelementptr [2 x [4 x i32]], ptr @reg, i32 0, i32 1, i32 %114
  %115 = ptrtoint ptr %arrayidx24.i to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load i32, ptr %arrayidx24.i, align 4
  call fastcc void @dmm_write(ptr noundef %96, i32 noundef %112, i32 noundef %116) #11
  %call29.i = call i32 @wait_for_completion_timeout(ptr noundef %compl.i, i32 noundef 10) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call29.i)
  %tobool30.not.i = icmp eq i32 %call29.i, 0
  br i1 %tobool30.not.i, label %do.end34.i, label %if.end36.i

do.end34.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %117 = ptrtoint ptr %96 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %96, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %118, ptr noundef nonnull @.str.14) #14
  br label %dmm_txn_commit.exit

if.end36.i:                                       ; preds = %if.end13.i
  call void @__sanitizer_cov_trace_pc() #13
  %call37.i = call fastcc i32 @wait_status(ptr noundef %94, i32 noundef 11) #11
  br label %dmm_txn_commit.exit

dmm_txn_commit.exit:                              ; preds = %if.end36.i, %do.end34.i, %if.end.i66.dmm_txn_commit.exit_crit_edge, %do.end.i
  %ret.0.i = phi i32 [ %call37.i, %if.end36.i ], [ -110, %do.end34.i ], [ -22, %do.end.i ], [ -14, %if.end.i66.dmm_txn_commit.exit_crit_edge ]
  call fastcc void @release_engine(ptr noundef %94) #11
  br label %cleanup

cleanup:                                          ; preds = %dmm_txn_commit.exit, %dmm_txn_init.exit.cleanup_crit_edge
  %retval.0 = phi i32 [ %ret.0.i, %dmm_txn_commit.exit ], [ -12, %dmm_txn_init.exit.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tiler_unpin(ptr nocapture noundef readonly %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %area = getelementptr inbounds %struct.tiler_block, ptr %block, i32 0, i32 1
  %call = tail call fastcc i32 @fill(ptr noundef %area, ptr noundef null, i32 noundef 0, i32 noundef 0)
  ret i32 %call
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tiler_reserve_2d(i32 noundef %fmt, i16 noundef zeroext %w, i16 noundef zeroext %h, i16 noundef zeroext %align) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %do.body

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

do.body:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fmt)
  %switch.i = icmp ult i32 %fmt, 4
  br i1 %switch.i, label %do.end13, label %do.body7, !prof !205

do.body7:                                         ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_dmm_tiler.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 540, 0\0A.popsection", ""() #11, !srcloc !206
  unreachable

do.end13:                                         ; preds = %do.body
  %conv = zext i16 %w to i32
  %slot_w = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %fmt, i32 3
  %1 = ptrtoint ptr %slot_w to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load i32, ptr %slot_w, align 4
  %add = add nsw i32 %conv, -1
  %sub = add i32 %add, %2
  %div = udiv i32 %sub, %2
  %conv16 = trunc i32 %div to i16
  %conv17 = zext i16 %h to i32
  %slot_h = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %fmt, i32 4
  %3 = ptrtoint ptr %slot_h to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %slot_h, align 4
  %add19 = add nsw i32 %conv17, -1
  %sub20 = add i32 %add19, %4
  %div23 = udiv i32 %sub20, %4
  %conv24 = trunc i32 %div23 to i16
  %cpp = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %fmt, i32 2
  %5 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %cpp, align 4
  %mul = mul i32 %6, %2
  %7 = tail call i32 @llvm.umax.i32(i32 %mul, i32 128)
  %conv29 = zext i16 %align to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %7, i32 %conv29)
  %cmp30 = icmp ult i32 %7, %conv29
  br i1 %cmp30, label %cond.true32, label %do.end13.cond.end42_crit_edge

do.end13.cond.end42_crit_edge:                    ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end42

cond.true32:                                      ; preds = %do.end13
  call void @__sanitizer_cov_trace_pc() #13
  %conv35 = and i32 %7, 65535
  %sub36 = add nsw i32 %conv29, -1
  %add37 = add nuw nsw i32 %sub36, %conv35
  %neg = sub nsw i32 0, %conv35
  %and = and i32 %add37, %neg
  br label %cond.end42

cond.end42:                                       ; preds = %cond.true32, %do.end13.cond.end42_crit_edge
  %cond43 = phi i32 [ %and, %cond.true32 ], [ %7, %do.end13.cond.end42_crit_edge ]
  %conv45 = and i32 %cond43, 65535
  %div46 = udiv i32 %conv45, %mul
  %conv47 = trunc i32 %div46 to i16
  %fmt48 = getelementptr inbounds %struct.tiler_block, ptr %call7.i.i, i32 0, i32 2
  %8 = ptrtoint ptr %fmt48 to i32
  call void @__asan_store4_noabort(i32 %8)
  store i32 %fmt, ptr %fmt48, align 8
  %arrayidx49 = getelementptr [4 x ptr], ptr @containers, i32 0, i32 %fmt
  %9 = ptrtoint ptr %arrayidx49 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %arrayidx49, align 4
  %conv50 = trunc i32 %mul to i16
  %area = getelementptr inbounds %struct.tiler_block, ptr %call7.i.i, i32 0, i32 1
  %cmp.i = icmp eq ptr %10, null
  br i1 %cmp.i, label %cond.end42.if.then53_crit_edge, label %cond.false.i

cond.end42.if.then53_crit_edge:                   ; preds = %cond.end42
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

cond.false.i:                                     ; preds = %cond.end42
  %cmp1.i = icmp eq ptr %area, null
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv16)
  %cmp2.i = icmp eq i16 %conv16, 0
  %or.cond.i = or i1 %cmp1.i, %cmp2.i
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %conv24)
  %cmp6.i = icmp eq i16 %conv24, 0
  %or.cond1.i = or i1 %or.cond.i, %cmp6.i
  %11 = tail call i16 @llvm.ctpop.i16(i16 %conv47) #11, !range !207
  call void @__sanitizer_cov_trace_const_cmp2(i16 1, i16 %11)
  %tobool.not.i = icmp ugt i16 %11, 1
  %12 = or i1 %or.cond1.i, %tobool.not.i
  br i1 %12, label %cond.false.i.if.then53_crit_edge, label %cond.false12.i

cond.false.i.if.then53_crit_edge:                 ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

cond.false12.i:                                   ; preds = %cond.false.i
  %height14.i = getelementptr inbounds %struct.tcm, ptr %10, i32 0, i32 1
  %13 = ptrtoint ptr %height14.i to i32
  call void @__asan_load2_noabort(i32 %13)
  %14 = load i16, ptr %height14.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %14, i16 %conv24)
  %cmp16.i = icmp ult i16 %14, %conv24
  br i1 %cmp16.i, label %cond.false12.i.if.then53_crit_edge, label %lor.rhs.i

cond.false12.i.if.then53_crit_edge:               ; preds = %cond.false12.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

lor.rhs.i:                                        ; preds = %cond.false12.i
  %15 = ptrtoint ptr %10 to i32
  call void @__asan_load2_noabort(i32 %15)
  %16 = load i16, ptr %10, align 4
  call void @__sanitizer_cov_trace_cmp2(i16 %16, i16 %conv16)
  %cmp21.i = icmp ult i16 %16, %conv16
  br i1 %cmp21.i, label %lor.rhs.i.if.then53_crit_edge, label %tcm_reserve_2d.exit

lor.rhs.i.if.then53_crit_edge:                    ; preds = %lor.rhs.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

tcm_reserve_2d.exit:                              ; preds = %lor.rhs.i
  %17 = ptrtoint ptr %area to i32
  call void @__asan_store1_noabort(i32 %17)
  store i8 1, ptr %area, align 8
  %reserve_2d.i = getelementptr inbounds %struct.tcm, ptr %10, i32 0, i32 7
  %18 = ptrtoint ptr %reserve_2d.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %reserve_2d.i, align 4
  %call.i = tail call i32 %19(ptr noundef nonnull %10, i16 noundef zeroext %conv24, i16 noundef zeroext %conv16, i16 noundef zeroext %conv47, i16 noundef signext -1, i16 noundef zeroext %conv50, ptr noundef nonnull %area) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool27.not.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %tobool27.not.i, ptr %10, ptr null
  %tcm32.i = getelementptr inbounds %struct.tiler_block, ptr %call7.i.i, i32 0, i32 1, i32 1
  %20 = ptrtoint ptr %tcm32.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %spec.select.i, ptr %tcm32.i, align 4
  br i1 %tobool27.not.i, label %do.body57, label %tcm_reserve_2d.exit.if.then53_crit_edge

tcm_reserve_2d.exit.if.then53_crit_edge:          ; preds = %tcm_reserve_2d.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then53

if.then53:                                        ; preds = %tcm_reserve_2d.exit.if.then53_crit_edge, %lor.rhs.i.if.then53_crit_edge, %cond.false12.i.if.then53_crit_edge, %cond.false.i.if.then53_crit_edge, %cond.end42.if.then53_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

do.body57:                                        ; preds = %tcm_reserve_2d.exit
  %call62 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #11
  %21 = load ptr, ptr @omap_dmm, align 4
  %alloc_head = getelementptr inbounds %struct.dmm, ptr %21, i32 0, i32 19
  %22 = ptrtoint ptr %alloc_head to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %alloc_head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %alloc_head, ptr noundef %23) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body57.list_add.exit_crit_edge

do.body57.list_add.exit_crit_edge:                ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %23, i32 0, i32 1
  %24 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %25 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %23, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %26 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %alloc_head, ptr %prev3.i.i, align 4
  %27 = ptrtoint ptr %alloc_head to i32
  call void @__asan_store4_noabort(i32 %27)
  store volatile ptr %call7.i.i, ptr %alloc_head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body57.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call62) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then53, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then53 ], [ %call7.i.i, %list_add.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @kfree(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @_raw_spin_lock_irqsave(ptr noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local ptr @tiler_reserve_1d(i32 noundef %size) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7) to i32))
  %0 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 7), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %0, i32 noundef 3520, i32 noundef 28) #15
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %sub = add i32 %size, 4095
  %shr = lshr i32 %sub, 12
  %fmt = getelementptr inbounds %struct.tiler_block, ptr %call7.i.i, i32 0, i32 2
  %1 = ptrtoint ptr %fmt to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 3, ptr %fmt, align 8
  %2 = load ptr, ptr getelementptr inbounds ([4 x ptr], ptr @containers, i32 0, i32 3), align 4
  %area = getelementptr inbounds %struct.tiler_block, ptr %call7.i.i, i32 0, i32 1
  %cmp.i = icmp eq ptr %2, null
  br i1 %cmp.i, label %if.end.if.then4_crit_edge, label %cond.false.i

if.end.if.then4_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

cond.false.i:                                     ; preds = %if.end
  %cmp1.i = icmp eq ptr %area, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 4096, i32 %sub)
  %cmp2.i = icmp ult i32 %sub, 4096
  %or.cond.i = or i1 %cmp2.i, %cmp1.i
  br i1 %or.cond.i, label %cond.false.i.if.then4_crit_edge, label %cond.false4.i

cond.false.i.if.then4_crit_edge:                  ; preds = %cond.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

cond.false4.i:                                    ; preds = %cond.false.i
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load2_noabort(i32 %3)
  %4 = load i16, ptr %2, align 4
  %conv.i = zext i16 %4 to i32
  %height.i = getelementptr inbounds %struct.tcm, ptr %2, i32 0, i32 1
  %5 = ptrtoint ptr %height.i to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %height.i, align 2
  %conv5.i = zext i16 %6 to i32
  %mul.i = mul nuw i32 %conv5.i, %conv.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul.i, i32 %shr)
  %cmp6.i = icmp ult i32 %mul.i, %shr
  br i1 %cmp6.i, label %cond.false4.i.if.then4_crit_edge, label %tcm_reserve_1d.exit

cond.false4.i.if.then4_crit_edge:                 ; preds = %cond.false4.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

tcm_reserve_1d.exit:                              ; preds = %cond.false4.i
  %7 = ptrtoint ptr %area to i32
  call void @__asan_store1_noabort(i32 %7)
  store i8 0, ptr %area, align 8
  %reserve_1d.i = getelementptr inbounds %struct.tcm, ptr %2, i32 0, i32 8
  %8 = ptrtoint ptr %reserve_1d.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %reserve_1d.i, align 4
  %call.i = tail call i32 %9(ptr noundef nonnull %2, i32 noundef %shr, ptr noundef nonnull %area) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool11.not.i = icmp eq i32 %call.i, 0
  %spec.select.i = select i1 %tobool11.not.i, ptr %2, ptr null
  %tcm16.i = getelementptr inbounds %struct.tiler_block, ptr %call7.i.i, i32 0, i32 1, i32 1
  %10 = ptrtoint ptr %tcm16.i to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %spec.select.i, ptr %tcm16.i, align 4
  br i1 %tobool11.not.i, label %do.body7, label %tcm_reserve_1d.exit.if.then4_crit_edge

tcm_reserve_1d.exit.if.then4_crit_edge:           ; preds = %tcm_reserve_1d.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.then4

if.then4:                                         ; preds = %tcm_reserve_1d.exit.if.then4_crit_edge, %cond.false4.i.if.then4_crit_edge, %cond.false.i.if.then4_crit_edge, %if.end.if.then4_crit_edge
  tail call void @kfree(ptr noundef nonnull %call7.i.i) #11
  br label %cleanup

do.body7:                                         ; preds = %tcm_reserve_1d.exit
  %call9 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #11
  %11 = load ptr, ptr @omap_dmm, align 4
  %alloc_head = getelementptr inbounds %struct.dmm, ptr %11, i32 0, i32 19
  %12 = ptrtoint ptr %alloc_head to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %alloc_head, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call7.i.i, ptr noundef %alloc_head, ptr noundef %13) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body7.list_add.exit_crit_edge

do.body7.list_add.exit_crit_edge:                 ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %do.body7
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %call7.i.i, ptr %prev1.i.i, align 4
  %15 = ptrtoint ptr %call7.i.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr %13, ptr %call7.i.i, align 8
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %call7.i.i, i32 0, i32 1
  %16 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr %alloc_head, ptr %prev3.i.i, align 4
  %17 = ptrtoint ptr %alloc_head to i32
  call void @__asan_store4_noabort(i32 %17)
  store volatile ptr %call7.i.i, ptr %alloc_head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %do.body7.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call9) #11
  br label %cleanup

cleanup:                                          ; preds = %list_add.exit, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi ptr [ inttoptr (i32 -12 to ptr), %if.then4 ], [ %call7.i.i, %list_add.exit ], [ inttoptr (i32 -12 to ptr), %entry.cleanup_crit_edge ]
  ret ptr %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tiler_release(ptr noundef %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %area = getelementptr inbounds %struct.tiler_block, ptr %block, i32 0, i32 1
  %tobool.not.i = icmp eq ptr %area, null
  br i1 %tobool.not.i, label %entry.tcm_free.exit_crit_edge, label %land.lhs.true.i

entry.tcm_free.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcm_free.exit

land.lhs.true.i:                                  ; preds = %entry
  %tcm.i = getelementptr inbounds %struct.tiler_block, ptr %block, i32 0, i32 1, i32 1
  %0 = ptrtoint ptr %tcm.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %tcm.i, align 4
  %tobool1.not.i = icmp eq ptr %1, null
  br i1 %tobool1.not.i, label %land.lhs.true.i.tcm_free.exit_crit_edge, label %if.then.i

land.lhs.true.i.tcm_free.exit_crit_edge:          ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcm_free.exit

if.then.i:                                        ; preds = %land.lhs.true.i
  %free.i = getelementptr inbounds %struct.tcm, ptr %1, i32 0, i32 9
  %2 = ptrtoint ptr %free.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %free.i, align 4
  %call.i = tail call i32 %3(ptr noundef nonnull %1, ptr noundef nonnull %area) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %cmp.i = icmp eq i32 %call.i, 0
  br i1 %cmp.i, label %if.then4.i, label %if.then.i.tcm_free.exit_crit_edge

if.then.i.tcm_free.exit_crit_edge:                ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcm_free.exit

if.then4.i:                                       ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  %4 = ptrtoint ptr %tcm.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr null, ptr %tcm.i, align 4
  br label %tcm_free.exit

tcm_free.exit:                                    ; preds = %if.then4.i, %if.then.i.tcm_free.exit_crit_edge, %land.lhs.true.i.tcm_free.exit_crit_edge, %entry.tcm_free.exit_crit_edge
  %res.0.i = phi i32 [ 0, %if.then4.i ], [ %call.i, %if.then.i.tcm_free.exit_crit_edge ], [ 0, %land.lhs.true.i.tcm_free.exit_crit_edge ], [ 0, %entry.tcm_free.exit_crit_edge ]
  %tcm = getelementptr inbounds %struct.tiler_block, ptr %block, i32 0, i32 1, i32 1
  %5 = ptrtoint ptr %tcm to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %tcm, align 4
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %tcm_free.exit.do.body3_crit_edge, label %do.end

tcm_free.exit.do.body3_crit_edge:                 ; preds = %tcm_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body3

do.end:                                           ; preds = %tcm_free.exit
  call void @__sanitizer_cov_trace_pc() #13
  %7 = load ptr, ptr @omap_dmm, align 4
  %8 = ptrtoint ptr %7 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %7, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %9, ptr noundef nonnull @.str) #14
  br label %do.body3

do.body3:                                         ; preds = %do.end, %tcm_free.exit.do.body3_crit_edge
  %call5 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #11
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %block) #11
  br i1 %call.i.i, label %if.end.i.i, label %do.body3.list_del.exit_crit_edge

do.body3.list_del.exit_crit_edge:                 ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %do.body3
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %block, i32 0, i32 1
  %10 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %prev.i.i, align 4
  %12 = ptrtoint ptr %block to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %block, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %13, i32 0, i32 1
  %14 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr %11, ptr %prev1.i.i.i, align 4
  %15 = ptrtoint ptr %11 to i32
  call void @__asan_store4_noabort(i32 %15)
  store volatile ptr %13, ptr %11, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %do.body3.list_del.exit_crit_edge
  %16 = ptrtoint ptr %block to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr inttoptr (i32 256 to ptr), ptr %block, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %block, i32 0, i32 1
  %17 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call5) #11
  tail call void @kfree(ptr noundef %block) #11
  ret i32 %res.0.i
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tiler_ssptr(ptr nocapture noundef readonly %block) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.tiler_block, ptr %block, i32 0, i32 2
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch.i = icmp ult i32 %1, 4
  br i1 %switch.i, label %do.end6, label %do.body3, !prof !205

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_dmm_tiler.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 668, 0\0A.popsection", ""() #11, !srcloc !208
  unreachable

do.end6:                                          ; preds = %entry
  %p0 = getelementptr inbounds %struct.tiler_block, ptr %block, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %p0 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %p0, align 4
  %conv = zext i16 %3 to i32
  %slot_w = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %1, i32 3
  %4 = ptrtoint ptr %slot_w to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot_w, align 4
  %mul = mul i32 %5, %conv
  %y = getelementptr inbounds %struct.tiler_block, ptr %block, i32 0, i32 1, i32 2, i32 1
  %6 = ptrtoint ptr %y to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %y, align 2
  %conv11 = zext i16 %7 to i32
  %slot_h = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %1, i32 4
  %8 = ptrtoint ptr %slot_h to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot_h, align 4
  %mul14 = mul i32 %9, %conv11
  %arrayidx.i = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 14, %11
  %y_shft.i = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %1, i32 1
  %12 = ptrtoint ptr %y_shft.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %y_shft.i, align 4
  %sub2.i = sub i32 13, %13
  %notmask.i = shl nsw i32 -1, %sub.i
  %sub7.i = xor i32 %notmask.i, -1
  %notmask63.i = shl nsw i32 -1, %sub2.i
  %sub9.i = xor i32 %notmask63.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %mul, i32 %sub7.i)
  %cmp10.i = icmp ugt i32 %mul, %sub7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %mul14, i32 %sub9.i)
  %cmp14.i = icmp ugt i32 %mul14, %sub9.i
  %or.cond.i = select i1 %cmp10.i, i1 true, i1 %cmp14.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %mul, i32 noundef %mul, i32 noundef %sub7.i, i32 noundef %mul14, i32 noundef %mul14, i32 noundef %sub9.i) #11
  br label %tiler_get_address.exit

if.end.i:                                         ; preds = %do.end6
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %13, %11
  %shl27.i = shl i32 %mul14, %sub.i
  %add28.i = add i32 %shl27.i, %mul
  %shl30.i = shl i32 %add28.i, %add.i
  %shl31.i = shl nuw nsw i32 %1, 27
  %or32.i = or i32 %shl30.i, %shl31.i
  %phi.bo = add i32 %or32.i, 1610612736
  br label %tiler_get_address.exit

tiler_get_address.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ 1610612736, %if.then.i ], [ %phi.bo, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tiler_tsptr(ptr nocapture noundef readonly %block, i32 noundef %orient, i32 noundef %x, i32 noundef %y) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %fmt = getelementptr inbounds %struct.tiler_block, ptr %block, i32 0, i32 2
  %0 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %1)
  %switch.i = icmp ult i32 %1, 4
  br i1 %switch.i, label %do.end8, label %do.body3, !prof !205

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_dmm_tiler.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 679, 0\0A.popsection", ""() #11, !srcloc !209
  unreachable

do.end8:                                          ; preds = %entry
  %p0 = getelementptr inbounds %struct.tiler_block, ptr %block, i32 0, i32 1, i32 2
  %2 = ptrtoint ptr %p0 to i32
  call void @__asan_load2_noabort(i32 %2)
  %3 = load i16, ptr %p0, align 2
  %conv = zext i16 %3 to i32
  %slot_w = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %1, i32 3
  %4 = ptrtoint ptr %slot_w to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %slot_w, align 4
  %mul = mul i32 %5, %conv
  %add = add i32 %mul, %x
  %y12 = getelementptr inbounds %struct.tiler_block, ptr %block, i32 0, i32 1, i32 2, i32 1
  %6 = ptrtoint ptr %y12 to i32
  call void @__asan_load2_noabort(i32 %6)
  %7 = load i16, ptr %y12, align 2
  %conv13 = zext i16 %7 to i32
  %slot_h = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %1, i32 4
  %8 = ptrtoint ptr %slot_h to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %slot_h, align 4
  %mul16 = mul i32 %9, %conv13
  %add17 = add i32 %mul16, %y
  %arrayidx.i = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %1
  %10 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %arrayidx.i, align 4
  %sub.i = sub i32 14, %11
  %y_shft.i = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %1, i32 1
  %12 = ptrtoint ptr %y_shft.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %y_shft.i, align 4
  %sub2.i = sub i32 13, %13
  %notmask.i = shl nsw i32 -1, %sub.i
  %sub7.i = xor i32 %notmask.i, -1
  %notmask63.i = shl nsw i32 -1, %sub2.i
  %sub9.i = xor i32 %notmask63.i, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %add, i32 %sub7.i)
  %cmp10.i = icmp ugt i32 %add, %sub7.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add17, i32 %sub9.i)
  %cmp14.i = icmp ugt i32 %add17, %sub9.i
  %or.cond.i = select i1 %cmp10.i, i1 true, i1 %cmp14.i
  br i1 %or.cond.i, label %if.then.i, label %if.end.i

if.then.i:                                        ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (i32, ptr, ...) @__drm_dbg(i32 noundef 2, ptr noundef nonnull @.str.34, i32 noundef %add, i32 noundef %add, i32 noundef %sub7.i, i32 noundef %add17, i32 noundef %add17, i32 noundef %sub9.i) #11
  br label %tiler_get_address.exit

if.end.i:                                         ; preds = %do.end8
  call void @__sanitizer_cov_trace_pc() #13
  %add.i = add i32 %13, %11
  %and.i = and i32 %orient, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i)
  %tobool.not.i = icmp eq i32 %and.i, 0
  %xor.i = select i1 %tobool.not.i, i32 0, i32 %sub7.i
  %spec.select.i = xor i32 %xor.i, %add
  %and17.i = and i32 %orient, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and17.i)
  %tobool18.not.i = icmp eq i32 %and17.i, 0
  %xor20.i = select i1 %tobool18.not.i, i32 0, i32 %sub9.i
  %y.addr.0.i = xor i32 %xor20.i, %add17
  %shl25.i = shl i32 %spec.select.i, %sub2.i
  %add26.i = add i32 %shl25.i, %y.addr.0.i
  %shl27.i = shl i32 %y.addr.0.i, %sub.i
  %add28.i = add i32 %shl27.i, %spec.select.i
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %orient)
  %tobool23.not64.i = icmp slt i32 %orient, 0
  %tmp.0.i = select i1 %tobool23.not64.i, i32 %add26.i, i32 %add28.i
  %shl30.i = shl i32 %tmp.0.i, %add.i
  %shl31.i = shl nuw nsw i32 %1, 27
  %or.i = or i32 %shl31.i, %orient
  %or32.i = or i32 %or.i, %shl30.i
  br label %tiler_get_address.exit

tiler_get_address.exit:                           ; preds = %if.end.i, %if.then.i
  %retval.0.i = phi i32 [ 0, %if.then.i ], [ %or32.i, %if.end.i ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @tiler_align(i32 noundef %fmt, ptr nocapture noundef %w, ptr nocapture noundef %h) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fmt)
  %switch.i = icmp ult i32 %fmt, 4
  br i1 %switch.i, label %do.end6, label %do.body3, !prof !205

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_dmm_tiler.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 688, 0\0A.popsection", ""() #11, !srcloc !210
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %0 = ptrtoint ptr %w to i32
  call void @__asan_load2_noabort(i32 %0)
  %1 = load i16, ptr %w, align 2
  %conv = zext i16 %1 to i32
  %sub = add nuw nsw i32 %conv, 65535
  %slot_w = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %fmt, i32 3
  %2 = ptrtoint ptr %slot_w to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot_w, align 4
  %conv8 = add i32 %3, 65535
  %or = or i32 %sub, %conv8
  %4 = trunc i32 %or to i16
  %conv10 = add i16 %4, 1
  store i16 %conv10, ptr %w, align 2
  %5 = ptrtoint ptr %h to i32
  call void @__asan_load2_noabort(i32 %5)
  %6 = load i16, ptr %h, align 2
  %conv11 = zext i16 %6 to i32
  %sub12 = add nuw nsw i32 %conv11, 65535
  %slot_h = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %fmt, i32 4
  %7 = ptrtoint ptr %slot_h to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %slot_h, align 4
  %conv15 = add i32 %8, 65535
  %or17 = or i32 %sub12, %conv15
  %9 = trunc i32 %or17 to i16
  %conv19 = add i16 %9, 1
  store i16 %conv19, ptr %h, align 2
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tiler_stride(i32 noundef %fmt, i32 noundef %orient) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fmt)
  %switch.i = icmp ult i32 %fmt, 4
  br i1 %switch.i, label %do.end6, label %do.body3, !prof !205

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_dmm_tiler.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 695, 0\0A.popsection", ""() #11, !srcloc !211
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %orient)
  %tobool7.not = icmp sgt i32 %orient, -1
  %y_shft = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %fmt, i32 1
  %arrayidx = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %fmt
  %y_shft.sink = select i1 %tobool7.not, ptr %y_shft, ptr %arrayidx
  %.sink14 = select i1 %tobool7.not, i32 14, i32 13
  %0 = ptrtoint ptr %y_shft.sink to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %y_shft.sink, align 4
  %add10 = add i32 %1, %.sink14
  %retval.0 = shl nuw i32 1, %add10
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tiler_size(i32 noundef %fmt, i16 noundef zeroext %w, i16 noundef zeroext %h) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fmt)
  %switch.i.i = icmp ult i32 %fmt, 4
  br i1 %switch.i.i, label %tiler_align.exit, label %do.body3.i, !prof !205

do.body3.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_dmm_tiler.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 688, 0\0A.popsection", ""() #11, !srcloc !210
  unreachable

tiler_align.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %conv.i = zext i16 %w to i32
  %sub.i = add nuw nsw i32 %conv.i, 65535
  %slot_w.i = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %fmt, i32 3
  %0 = ptrtoint ptr %slot_w.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %slot_w.i, align 4
  %conv8.i = add i32 %1, 65535
  %or.i = or i32 %conv8.i, %sub.i
  %conv10.i = add i32 %or.i, 1
  %conv11.i = zext i16 %h to i32
  %sub12.i = add nuw nsw i32 %conv11.i, 65535
  %slot_h.i = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %fmt, i32 4
  %2 = ptrtoint ptr %slot_h.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %slot_h.i, align 4
  %conv15.i = add i32 %3, 65535
  %or17.i = or i32 %conv15.i, %sub12.i
  %conv19.i = add i32 %or17.i, 1
  %cpp = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %fmt, i32 2
  %4 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %cpp, align 4
  %conv = and i32 %conv10.i, 65535
  %mul = mul i32 %conv, %5
  %conv1 = and i32 %conv19.i, 65535
  %mul2 = mul i32 %mul, %conv1
  ret i32 %mul2
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tiler_vsize(i32 noundef %fmt, i16 noundef zeroext %w, i16 noundef zeroext %h) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 4, i32 %fmt)
  %switch.i = icmp ult i32 %fmt, 4
  br i1 %switch.i, label %do.end6, label %do.body3, !prof !205

do.body3:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "1:\09.long ( (((0xe7f001f2) << 24) & 0xFF000000) | (((0xe7f001f2) << 8) & 0x00FF0000) | (((0xe7f001f2) >> 8) & 0x0000FF00) | (((0xe7f001f2) >> 24) & 0x000000FF) )\0A\09\0A.pushsection .rodata.str, \22aMS\22, %progbits, 1\0A2:\09.asciz \22drivers/gpu/drm/omapdrm/omap_dmm_tiler.c\22\0A.popsection\0A.pushsection __bug_table,\22aw\22\0A.align 2\0A3:\09.word 1b, 2b\0A\09.hword 711, 0\0A.popsection", ""() #11, !srcloc !212
  unreachable

do.end6:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %cpp = getelementptr [4 x %struct.anon.84], ptr @geom, i32 0, i32 %fmt, i32 2
  %0 = ptrtoint ptr %cpp to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %cpp, align 4
  %conv = zext i16 %w to i32
  %mul = mul i32 %1, %conv
  %sub = add i32 %mul, -1
  %or = or i32 %sub, 4095
  %add = add i32 %or, 1
  %conv7 = zext i16 %h to i32
  %mul8 = mul i32 %add, %conv7
  ret i32 %mul8
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local i32 @tiler_get_cpu_cache_flags() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_dmm, align 4
  %plat_data = getelementptr inbounds %struct.dmm, ptr %0, i32 0, i32 20
  %1 = ptrtoint ptr %plat_data to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %plat_data, align 4
  %3 = ptrtoint ptr %2 to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load i32, ptr %2, align 4
  ret i32 %4
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync)
define dso_local zeroext i1 @dmm_is_available() local_unnamed_addr #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_dmm, align 4
  %tobool = icmp ne ptr %0, null
  ret i1 %tobool
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @tiler_map_show(ptr noundef %s, ptr nocapture noundef readnone %arg) local_unnamed_addr #0 align 64 {
entry:
  %nice = alloca [128 x i8], align 1
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 128, ptr nonnull %nice) #11
  %0 = call ptr @memset(ptr %nice, i32 255, i32 128)
  %1 = load ptr, ptr @omap_dmm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %container_height = getelementptr inbounds %struct.dmm, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %container_height to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %container_height, align 4
  %container_width = getelementptr inbounds %struct.dmm, ptr %1, i32 0, i32 13
  %4 = ptrtoint ptr %container_width to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %container_width, align 4
  %div1 = sdiv i32 %5, 2
  %6 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %3, i32 4) #11
  %7 = extractvalue { i32, i1 } %6, 1
  br i1 %7, label %if.end.kmalloc_array.exit_crit_edge, label %if.end7.i, !prof !198

if.end.kmalloc_array.exit_crit_edge:              ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %kmalloc_array.exit

if.end7.i:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %8 = extractvalue { i32, i1 } %6, 0
  %call8.i = tail call noalias align 128 ptr @__kmalloc(i32 noundef %8, i32 noundef 3264) #16
  br label %kmalloc_array.exit

kmalloc_array.exit:                               ; preds = %if.end7.i, %if.end.kmalloc_array.exit_crit_edge
  %retval.0.i257 = phi ptr [ %call8.i, %if.end7.i ], [ null, %if.end.kmalloc_array.exit_crit_edge ]
  %add = add nsw i32 %div1, 1
  %9 = tail call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %add, i32 %3) #11
  %10 = extractvalue { i32, i1 } %9, 1
  br i1 %10, label %kmalloc_array.exit.error_crit_edge, label %if.end7.i288, !prof !198

kmalloc_array.exit.error_crit_edge:               ; preds = %kmalloc_array.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

if.end7.i288:                                     ; preds = %kmalloc_array.exit
  %11 = extractvalue { i32, i1 } %9, 0
  %call8.i287 = tail call noalias align 128 ptr @__kmalloc(i32 noundef %11, i32 noundef 3264) #16
  %tobool3.not = icmp eq ptr %retval.0.i257, null
  %tobool4.not = icmp eq ptr %call8.i287, null
  %or.cond = select i1 %tobool3.not, i1 true, i1 %tobool4.not
  br i1 %or.cond, label %if.end7.i288.error_crit_edge, label %for.cond.preheader

if.end7.i288.error_crit_edge:                     ; preds = %if.end7.i288
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.cond.preheader:                               ; preds = %if.end7.i288
  %12 = load ptr, ptr @omap_dmm, align 4
  %num_lut486 = getelementptr inbounds %struct.dmm, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %num_lut486 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_lut486, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp487 = icmp sgt i32 %14, 0
  br i1 %cmp487, label %for.body.lr.ph, label %for.cond.preheader.error_crit_edge

for.cond.preheader.error_crit_edge:               ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.body.lr.ph:                                   ; preds = %for.cond.preheader
  %mul = shl i32 %3, 2
  %mul8 = mul i32 %add, %3
  %tobool87.not = icmp eq ptr %s, null
  br label %for.body

for.body:                                         ; preds = %for.inc158.for.body_crit_edge, %for.body.lr.ph
  %m2dp.0492 = phi ptr [ @.str.35, %for.body.lr.ph ], [ %m2dp.1.lcssa, %for.inc158.for.body_crit_edge ]
  %lut_idx.0488 = phi i32 [ 0, %for.body.lr.ph ], [ %inc159, %for.inc158.for.body_crit_edge ]
  %15 = call ptr @memset(ptr %retval.0.i257, i32 0, i32 %mul)
  %16 = call ptr @memset(ptr %call8.i287, i32 32, i32 %mul8)
  %17 = load ptr, ptr @omap_dmm, align 4
  %container_height10465 = getelementptr inbounds %struct.dmm, ptr %17, i32 0, i32 14
  %18 = ptrtoint ptr %container_height10465 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %container_height10465, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp11466 = icmp sgt i32 %19, 0
  br i1 %cmp11466, label %for.body.for.body12_crit_edge, label %for.body.do.body17_crit_edge

for.body.do.body17_crit_edge:                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17

for.body.for.body12_crit_edge:                    ; preds = %for.body
  br label %for.body12

for.body12:                                       ; preds = %for.body12.for.body12_crit_edge, %for.body.for.body12_crit_edge
  %i.0467 = phi i32 [ %inc, %for.body12.for.body12_crit_edge ], [ 0, %for.body.for.body12_crit_edge ]
  %mul14 = mul i32 %i.0467, %add
  %add.ptr = getelementptr i8, ptr %call8.i287, i32 %mul14
  %arrayidx = getelementptr ptr, ptr %retval.0.i257, i32 %i.0467
  %20 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %add.ptr, ptr %arrayidx, align 4
  %arrayidx16 = getelementptr i8, ptr %add.ptr, i32 %div1
  %21 = ptrtoint ptr %arrayidx16 to i32
  call void @__asan_store1_noabort(i32 %21)
  store i8 0, ptr %arrayidx16, align 1
  %inc = add nuw nsw i32 %i.0467, 1
  %22 = load ptr, ptr @omap_dmm, align 4
  %container_height10 = getelementptr inbounds %struct.dmm, ptr %22, i32 0, i32 14
  %23 = ptrtoint ptr %container_height10 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load i32, ptr %container_height10, align 4
  %cmp11 = icmp slt i32 %inc, %24
  br i1 %cmp11, label %for.body12.for.body12_crit_edge, label %for.body12.do.body17_crit_edge

for.body12.do.body17_crit_edge:                   ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body17

for.body12.for.body12_crit_edge:                  ; preds = %for.body12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body12

do.body17:                                        ; preds = %for.body12.do.body17_crit_edge, %for.body.do.body17_crit_edge
  %call20 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #11
  %25 = load ptr, ptr @omap_dmm, align 4
  %alloc_head = getelementptr inbounds %struct.dmm, ptr %25, i32 0, i32 19
  %26 = ptrtoint ptr %alloc_head to i32
  call void @__asan_load4_noabort(i32 %26)
  %block.0476 = load ptr, ptr %alloc_head, align 4
  %cmp27.not478 = icmp eq ptr %block.0476, %alloc_head
  br i1 %cmp27.not478, label %do.body17.for.end86_crit_edge, label %do.body17.for.body29_crit_edge

do.body17.for.body29_crit_edge:                   ; preds = %do.body17
  br label %for.body29

do.body17.for.end86_crit_edge:                    ; preds = %do.body17
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end86

for.body29:                                       ; preds = %for.inc80.for.body29_crit_edge, %do.body17.for.body29_crit_edge
  %27 = phi ptr [ %194, %for.inc80.for.body29_crit_edge ], [ %25, %do.body17.for.body29_crit_edge ]
  %block.0481 = phi ptr [ %block.0, %for.inc80.for.body29_crit_edge ], [ %block.0476, %do.body17.for.body29_crit_edge ]
  %m2dp.1480 = phi ptr [ %m2dp.3, %for.inc80.for.body29_crit_edge ], [ %m2dp.0492, %do.body17.for.body29_crit_edge ]
  %area = getelementptr inbounds %struct.tiler_block, ptr %block.0481, i32 0, i32 1
  %tcm = getelementptr inbounds %struct.tiler_block, ptr %block.0481, i32 0, i32 1, i32 1
  %28 = ptrtoint ptr %tcm to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %tcm, align 4
  %tcm30 = getelementptr inbounds %struct.dmm, ptr %27, i32 0, i32 18
  %30 = ptrtoint ptr %tcm30 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tcm30, align 4
  %arrayidx31 = getelementptr ptr, ptr %31, i32 %lut_idx.0488
  %32 = ptrtoint ptr %arrayidx31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %arrayidx31, align 4
  %cmp32 = icmp eq ptr %29, %33
  br i1 %cmp32, label %if.then34, label %for.body29.for.inc80_crit_edge

for.body29.for.inc80_crit_edge:                   ; preds = %for.body29
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

if.then34:                                        ; preds = %for.body29
  %fmt = getelementptr inbounds %struct.tiler_block, ptr %block.0481, i32 0, i32 2
  %34 = ptrtoint ptr %fmt to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %fmt, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %35)
  %cmp35.not = icmp eq i32 %35, 3
  br i1 %cmp35.not, label %if.else, label %if.then37

if.then37:                                        ; preds = %if.then34
  %36 = ptrtoint ptr %m2dp.1480 to i32
  call void @__asan_load1_noabort(i32 %36)
  %37 = load i8, ptr %m2dp.1480, align 1
  %p0.i = getelementptr inbounds %struct.tiler_block, ptr %block.0481, i32 0, i32 1, i32 2
  %y1.i = getelementptr inbounds %struct.tiler_block, ptr %block.0481, i32 0, i32 1, i32 2, i32 1
  %38 = ptrtoint ptr %y1.i to i32
  call void @__asan_load2_noabort(i32 %38)
  %39 = load i16, ptr %y1.i, align 2
  %p1.i = getelementptr inbounds %struct.tiler_block, ptr %block.0481, i32 0, i32 1, i32 3
  %y2.i = getelementptr inbounds %struct.tiler_block, ptr %block.0481, i32 0, i32 1, i32 3, i32 1
  %40 = ptrtoint ptr %y2.i to i32
  call void @__asan_load2_noabort(i32 %40)
  %41 = load i16, ptr %y2.i, align 2
  call void @__sanitizer_cov_trace_cmp2(i16 %39, i16 %41)
  %cmp.not5.i = icmp ugt i16 %39, %41
  br i1 %cmp.not5.i, label %if.then37.fill_map.exit_crit_edge, label %for.body.preheader.i

if.then37.fill_map.exit_crit_edge:                ; preds = %if.then37
  call void @__sanitizer_cov_trace_pc() #13
  br label %fill_map.exit

for.body.preheader.i:                             ; preds = %if.then37
  %conv.i = zext i16 %39 to i32
  br label %for.body.i

for.body.i:                                       ; preds = %for.inc25.i.for.body.i_crit_edge, %for.body.preheader.i
  %y.06.i = phi i32 [ %inc26.i, %for.inc25.i.for.body.i_crit_edge ], [ %conv.i, %for.body.preheader.i ]
  %42 = ptrtoint ptr %p0.i to i32
  call void @__asan_load2_noabort(i32 %42)
  %43 = load i16, ptr %p0.i, align 4
  %44 = lshr i16 %43, 1
  %45 = ptrtoint ptr %p1.i to i32
  call void @__asan_load2_noabort(i32 %45)
  %46 = load i16, ptr %p1.i, align 4
  %47 = lshr i16 %46, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %44, i16 %47)
  %cmp15.not2.i = icmp ugt i16 %44, %47
  br i1 %cmp15.not2.i, label %for.body.i.for.inc25.i_crit_edge, label %for.body17.lr.ph.i

for.body.i.for.inc25.i_crit_edge:                 ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25.i

for.body17.lr.ph.i:                               ; preds = %for.body.i
  %div9.i = zext i16 %44 to i32
  %arrayidx.i = getelementptr ptr, ptr %retval.0.i257, i32 %y.06.i
  br label %for.body17.i

for.body17.i:                                     ; preds = %for.body17.i.for.body17.i_crit_edge, %for.body17.lr.ph.i
  %x.03.i = phi i32 [ %div9.i, %for.body17.lr.ph.i ], [ %inc.i, %for.body17.i.for.body17.i_crit_edge ]
  %48 = ptrtoint ptr %arrayidx.i to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.i, align 4
  %arrayidx18.i = getelementptr i8, ptr %49, i32 %x.03.i
  %50 = ptrtoint ptr %arrayidx18.i to i32
  call void @__asan_store1_noabort(i32 %50)
  store i8 %37, ptr %arrayidx18.i, align 1
  %inc.i = add nuw nsw i32 %x.03.i, 1
  %51 = ptrtoint ptr %p1.i to i32
  call void @__asan_load2_noabort(i32 %51)
  %52 = load i16, ptr %p1.i, align 4
  %53 = lshr i16 %52, 1
  %div14.i = zext i16 %53 to i32
  %cmp15.not.not.i = icmp ult i32 %x.03.i, %div14.i
  br i1 %cmp15.not.not.i, label %for.body17.i.for.body17.i_crit_edge, label %for.body17.i.for.inc25.i_crit_edge

for.body17.i.for.inc25.i_crit_edge:               ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25.i

for.body17.i.for.body17.i_crit_edge:              ; preds = %for.body17.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17.i

for.inc25.i:                                      ; preds = %for.body17.i.for.inc25.i_crit_edge, %for.body.i.for.inc25.i_crit_edge
  %inc26.i = add nuw nsw i32 %y.06.i, 1
  %54 = ptrtoint ptr %y2.i to i32
  call void @__asan_load2_noabort(i32 %54)
  %55 = load i16, ptr %y2.i, align 2
  %conv3.i = zext i16 %55 to i32
  %cmp.not.not.i = icmp ult i32 %y.06.i, %conv3.i
  br i1 %cmp.not.not.i, label %for.inc25.i.for.body.i_crit_edge, label %for.inc25.i.fill_map.exit_crit_edge

for.inc25.i.fill_map.exit_crit_edge:              ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fill_map.exit

for.inc25.i.for.body.i_crit_edge:                 ; preds = %for.inc25.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i

fill_map.exit:                                    ; preds = %for.inc25.i.fill_map.exit_crit_edge, %if.then37.fill_map.exit_crit_edge
  %incdec.ptr42 = getelementptr i8, ptr %m2dp.1480, i32 1
  %56 = ptrtoint ptr %incdec.ptr42 to i32
  call void @__asan_load1_noabort(i32 %56)
  %57 = load i8, ptr %incdec.ptr42, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %57)
  %tobool43.not = icmp eq i8 %57, 0
  %m2dp.2 = select i1 %tobool43.not, ptr @.str.35, ptr %incdec.ptr42
  %58 = ptrtoint ptr %p1.i to i32
  call void @__asan_load2_noabort(i32 %58)
  %59 = load i16, ptr %p1.i, align 4
  %60 = ptrtoint ptr %p0.i to i32
  call void @__asan_load2_noabort(i32 %60)
  %61 = load i16, ptr %p0.i, align 4
  %sub.i.i = add i16 %59, 1
  %add.i.i = sub i16 %sub.i.i, %61
  %conv.i291 = zext i16 %add.i.i to i32
  %62 = ptrtoint ptr %y2.i to i32
  call void @__asan_load2_noabort(i32 %62)
  %63 = load i16, ptr %y2.i, align 2
  %64 = ptrtoint ptr %y1.i to i32
  call void @__asan_load2_noabort(i32 %64)
  %65 = load i16, ptr %y1.i, align 2
  %sub.i2.i = add i16 %63, 1
  %add.i3.i = sub i16 %sub.i2.i, %65
  %conv2.i = zext i16 %add.i3.i to i32
  %call3.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %nice, ptr noundef nonnull @.str.37, i32 noundef %conv.i291, i32 noundef %conv2.i) #11
  %call4.i = call i32 @strlen(ptr noundef nonnull %nice) #17
  %add.i = add i32 %call4.i, 1
  %66 = ptrtoint ptr %p0.i to i32
  call void @__asan_load2_noabort(i32 %66)
  %67 = load i16, ptr %p0.i, align 4
  %68 = ptrtoint ptr %p1.i to i32
  call void @__asan_load2_noabort(i32 %68)
  %69 = load i16, ptr %p1.i, align 4
  %div.i8914.i = lshr i16 %69, 1
  %div.i8.zext.i = zext i16 %div.i8914.i to i32
  %div1.neg.i101115.i = lshr i16 %67, 1
  %div1.neg.i10.zext.i = zext i16 %div1.neg.i101115.i to i32
  %sub.i4.i = sub nsw i32 1, %div1.neg.i10.zext.i
  %add.i5.i = add nsw i32 %sub.i4.i, %div.i8.zext.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i, i32 %add.i5.i)
  %cmp.i = icmp ult i32 %add.i, %add.i5.i
  br i1 %cmp.i, label %if.then.i, label %fill_map.exit.for.inc80_crit_edge

fill_map.exit.for.inc80_crit_edge:                ; preds = %fill_map.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

if.then.i:                                        ; preds = %fill_map.exit
  %70 = ptrtoint ptr %nice to i32
  call void @__asan_load1_noabort(i32 %70)
  %71 = load i8, ptr %nice, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %71)
  %tobool.not2.i.i = icmp eq i8 %71, 0
  br i1 %tobool.not2.i.i, label %if.then.i.for.inc80_crit_edge, label %while.body.preheader.i.i

if.then.i.for.inc80_crit_edge:                    ; preds = %if.then.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

while.body.preheader.i.i:                         ; preds = %if.then.i
  %72 = ptrtoint ptr %y1.i to i32
  call void @__asan_load2_noabort(i32 %72)
  %73 = load i16, ptr %y1.i, align 2
  %conv11.i = zext i16 %73 to i32
  %74 = ptrtoint ptr %y2.i to i32
  call void @__asan_load2_noabort(i32 %74)
  %75 = load i16, ptr %y2.i, align 2
  %conv14.i = zext i16 %75 to i32
  %add15.i = add nuw nsw i32 %conv14.i, %conv11.i
  %div1.i = lshr i32 %add15.i, 1
  %arrayidx.i.i = getelementptr ptr, ptr %retval.0.i257, i32 %div1.i
  %76 = ptrtoint ptr %arrayidx.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx.i.i, align 4
  %add.ptr.i.i = getelementptr i8, ptr %77, i32 %div1.neg.i10.zext.i
  %sub.i7.i = sub i32 %add.i5.i, %call4.i
  %div21.i.i = lshr i32 %sub.i7.i, 1
  %add.ptr3.i.i = getelementptr i8, ptr %add.ptr.i.i, i32 %div21.i.i
  br label %while.body.i.i

while.body.i.i:                                   ; preds = %while.body.i.i.while.body.i.i_crit_edge, %while.body.preheader.i.i
  %78 = phi i8 [ %81, %while.body.i.i.while.body.i.i_crit_edge ], [ %71, %while.body.preheader.i.i ]
  %p.04.i.i = phi ptr [ %incdec.ptr4.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %add.ptr3.i.i, %while.body.preheader.i.i ]
  %nice.addr.03.i.i = phi ptr [ %incdec.ptr.i.i, %while.body.i.i.while.body.i.i_crit_edge ], [ %nice, %while.body.preheader.i.i ]
  %incdec.ptr.i.i = getelementptr i8, ptr %nice.addr.03.i.i, i32 1
  %incdec.ptr4.i.i = getelementptr i8, ptr %p.04.i.i, i32 1
  %79 = ptrtoint ptr %p.04.i.i to i32
  call void @__asan_store1_noabort(i32 %79)
  store i8 %78, ptr %p.04.i.i, align 1
  %80 = ptrtoint ptr %incdec.ptr.i.i to i32
  call void @__asan_load1_noabort(i32 %80)
  %81 = load i8, ptr %incdec.ptr.i.i, align 1
  %tobool.not.i.i = icmp eq i8 %81, 0
  br i1 %tobool.not.i.i, label %while.body.i.i.for.inc80_crit_edge, label %while.body.i.i.while.body.i.i_crit_edge

while.body.i.i.while.body.i.i_crit_edge:          ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i

while.body.i.i.for.inc80_crit_edge:               ; preds = %while.body.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

if.else:                                          ; preds = %if.then34
  %p0 = getelementptr inbounds %struct.tiler_block, ptr %block.0481, i32 0, i32 1, i32 2
  %y.i = getelementptr inbounds %struct.tiler_block, ptr %block.0481, i32 0, i32 1, i32 2, i32 1
  %82 = ptrtoint ptr %y.i to i32
  call void @__asan_load2_noabort(i32 %82)
  %83 = load i16, ptr %y.i, align 2
  %conv.i293 = zext i16 %83 to i32
  %arrayidx.i294 = getelementptr ptr, ptr %retval.0.i257, i32 %conv.i293
  %84 = ptrtoint ptr %arrayidx.i294 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx.i294, align 4
  %86 = ptrtoint ptr %p0 to i32
  call void @__asan_load2_noabort(i32 %86)
  %87 = load i16, ptr %p0, align 2
  %88 = lshr i16 %87, 1
  %div2.i = zext i16 %88 to i32
  %arrayidx3.i = getelementptr i8, ptr %85, i32 %div2.i
  %89 = ptrtoint ptr %arrayidx3.i to i32
  call void @__asan_load1_noabort(i32 %89)
  %90 = load i8, ptr %arrayidx3.i, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %90)
  %cmp50 = icmp eq i8 %90, 32
  %p1 = getelementptr inbounds %struct.tiler_block, ptr %block.0481, i32 0, i32 1, i32 3
  %y.i295 = getelementptr inbounds %struct.tiler_block, ptr %block.0481, i32 0, i32 1, i32 3, i32 1
  %91 = ptrtoint ptr %y.i295 to i32
  call void @__asan_load2_noabort(i32 %91)
  %92 = load i16, ptr %y.i295, align 2
  %conv.i296 = zext i16 %92 to i32
  %arrayidx.i297 = getelementptr ptr, ptr %retval.0.i257, i32 %conv.i296
  %93 = ptrtoint ptr %arrayidx.i297 to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %arrayidx.i297, align 4
  %95 = ptrtoint ptr %p1 to i32
  call void @__asan_load2_noabort(i32 %95)
  %96 = load i16, ptr %p1, align 2
  %97 = lshr i16 %96, 1
  %div2.i298 = zext i16 %97 to i32
  %arrayidx3.i299 = getelementptr i8, ptr %94, i32 %div2.i298
  %98 = ptrtoint ptr %arrayidx3.i299 to i32
  call void @__asan_load1_noabort(i32 %98)
  %99 = load i8, ptr %arrayidx3.i299, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 32, i8 %99)
  %cmp55 = icmp eq i8 %99, 32
  %100 = ptrtoint ptr %area to i32
  call void @__asan_load4_noabort(i32 %100)
  %p.sroa.0.0.copyload402 = load i32, ptr %area, align 4
  %101 = ptrtoint ptr %tcm to i32
  call void @__asan_load4_noabort(i32 %101)
  %p.sroa.6.0.copyload405 = load ptr, ptr %tcm, align 4
  %tobool.not.i = icmp eq ptr %p.sroa.6.0.copyload405, null
  call void @__sanitizer_cov_trace_const_cmp4(i32 16777215, i32 %p.sroa.0.0.copyload402)
  %tobool1.not.i = icmp ugt i32 %p.sroa.0.0.copyload402, 16777215
  %or.cond453 = select i1 %tobool.not.i, i1 true, i1 %tobool1.not.i
  call void @__sanitizer_cov_trace_cmp2(i16 %83, i16 %92)
  %cmp.not.i = icmp eq i16 %83, %92
  %or.cond454 = select i1 %or.cond453, i1 true, i1 %cmp.not.i
  br i1 %or.cond454, label %if.else.tcm_slice.exit_crit_edge, label %land.lhs.true6.i

if.else.tcm_slice.exit_crit_edge:                 ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcm_slice.exit

land.lhs.true6.i:                                 ; preds = %if.else
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %87)
  %tobool9.not.i = icmp eq i16 %87, 0
  br i1 %tobool9.not.i, label %lor.lhs.false.i, label %cond.true.i

lor.lhs.false.i:                                  ; preds = %land.lhs.true6.i
  %conv12.i = zext i16 %96 to i32
  %102 = ptrtoint ptr %p.sroa.6.0.copyload405 to i32
  call void @__asan_load2_noabort(i32 %102)
  %103 = load i16, ptr %p.sroa.6.0.copyload405, align 4
  %conv14.i304 = zext i16 %103 to i32
  %sub.i = add nsw i32 %conv14.i304, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i, i32 %conv12.i)
  %cmp15.not.i = icmp eq i32 %sub.i, %conv12.i
  br i1 %cmp15.not.i, label %lor.lhs.false.i.tcm_slice.exit_crit_edge, label %cond.false.i

lor.lhs.false.i.tcm_slice.exit_crit_edge:         ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcm_slice.exit

cond.true.i:                                      ; preds = %land.lhs.true6.i
  call void @__sanitizer_cov_trace_pc() #13
  %104 = ptrtoint ptr %p.sroa.6.0.copyload405 to i32
  call void @__asan_load2_noabort(i32 %104)
  %105 = load i16, ptr %p.sroa.6.0.copyload405, align 4
  br label %cond.end.i

cond.false.i:                                     ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  %sub34.i = add i16 %92, -1
  br label %cond.end.i

cond.end.i:                                       ; preds = %cond.false.i, %cond.true.i
  %a.sroa.22.0.in = phi i16 [ %103, %cond.false.i ], [ %105, %cond.true.i ]
  %cond.i = phi i16 [ %sub34.i, %cond.false.i ], [ %83, %cond.true.i ]
  %a.sroa.22.0 = add i16 %a.sroa.22.0.in, -1
  %add.i305 = add i16 %cond.i, 1
  br label %tcm_slice.exit

tcm_slice.exit:                                   ; preds = %cond.end.i, %lor.lhs.false.i.tcm_slice.exit_crit_edge, %if.else.tcm_slice.exit_crit_edge
  %a.sroa.32.0 = phi i16 [ %cond.i, %cond.end.i ], [ %92, %lor.lhs.false.i.tcm_slice.exit_crit_edge ], [ %92, %if.else.tcm_slice.exit_crit_edge ]
  %a.sroa.22.1 = phi i16 [ %a.sroa.22.0, %cond.end.i ], [ %96, %lor.lhs.false.i.tcm_slice.exit_crit_edge ], [ %96, %if.else.tcm_slice.exit_crit_edge ]
  %p.sroa.10.0 = phi i16 [ %add.i305, %cond.end.i ], [ %83, %lor.lhs.false.i.tcm_slice.exit_crit_edge ], [ %83, %if.else.tcm_slice.exit_crit_edge ]
  %p.sroa.8.0 = phi i16 [ 0, %cond.end.i ], [ 0, %lor.lhs.false.i.tcm_slice.exit_crit_edge ], [ %87, %if.else.tcm_slice.exit_crit_edge ]
  %p.sroa.6.0 = phi ptr [ %p.sroa.6.0.copyload405, %cond.end.i ], [ null, %lor.lhs.false.i.tcm_slice.exit_crit_edge ], [ null, %if.else.tcm_slice.exit_crit_edge ]
  br i1 %tobool.not.i, label %tcm_slice.exit.for.end64_crit_edge, label %for.body62.lr.ph

tcm_slice.exit.for.end64_crit_edge:               ; preds = %tcm_slice.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end64

for.body62.lr.ph:                                 ; preds = %tcm_slice.exit
  %conv12.i343 = zext i16 %96 to i32
  %sub34.i351 = add i16 %92, -1
  br label %for.body62

for.body62:                                       ; preds = %tcm_slice.exit361.for.body62_crit_edge, %for.body62.lr.ph
  %p.sroa.6.1475 = phi ptr [ %p.sroa.6.0, %for.body62.lr.ph ], [ %p.sroa.6.2, %tcm_slice.exit361.for.body62_crit_edge ]
  %p.sroa.8.1474 = phi i16 [ %p.sroa.8.0, %for.body62.lr.ph ], [ %p.sroa.8.2, %tcm_slice.exit361.for.body62_crit_edge ]
  %p.sroa.10.1473 = phi i16 [ %p.sroa.10.0, %for.body62.lr.ph ], [ %p.sroa.10.2, %tcm_slice.exit361.for.body62_crit_edge ]
  %a.sroa.12.0472 = phi i16 [ %87, %for.body62.lr.ph ], [ %p.sroa.8.1474, %tcm_slice.exit361.for.body62_crit_edge ]
  %a.sroa.17.0471 = phi i16 [ %83, %for.body62.lr.ph ], [ %p.sroa.10.1473, %tcm_slice.exit361.for.body62_crit_edge ]
  %a.sroa.22.2470 = phi i16 [ %a.sroa.22.1, %for.body62.lr.ph ], [ %a.sroa.22.4, %tcm_slice.exit361.for.body62_crit_edge ]
  %a.sroa.32.1469 = phi i16 [ %a.sroa.32.0, %for.body62.lr.ph ], [ %a.sroa.32.2, %tcm_slice.exit361.for.body62_crit_edge ]
  call void @__sanitizer_cov_trace_cmp2(i16 %a.sroa.17.0471, i16 %a.sroa.32.1469)
  %cmp.not5.i311 = icmp ugt i16 %a.sroa.17.0471, %a.sroa.32.1469
  br i1 %cmp.not5.i311, label %for.body62.fill_map.exit330_crit_edge, label %for.body.preheader.i313

for.body62.fill_map.exit330_crit_edge:            ; preds = %for.body62
  call void @__sanitizer_cov_trace_pc() #13
  br label %fill_map.exit330

for.body.preheader.i313:                          ; preds = %for.body62
  %conv.i312 = zext i16 %a.sroa.17.0471 to i32
  %106 = lshr i16 %a.sroa.12.0472, 1
  %107 = lshr i16 %a.sroa.22.2470, 1
  call void @__sanitizer_cov_trace_cmp2(i16 %106, i16 %107)
  %cmp15.not2.i315 = icmp ugt i16 %106, %107
  %conv3.i327 = zext i16 %a.sroa.32.1469 to i32
  %div9.i317 = zext i16 %106 to i32
  %narrow = add nuw i16 %107, 1
  %108 = zext i16 %narrow to i32
  br label %for.body.i316

for.body.i316:                                    ; preds = %for.inc25.i329.for.body.i316_crit_edge, %for.body.preheader.i313
  %y.06.i314 = phi i32 [ %inc26.i326, %for.inc25.i329.for.body.i316_crit_edge ], [ %conv.i312, %for.body.preheader.i313 ]
  br i1 %cmp15.not2.i315, label %for.body.i316.for.inc25.i329_crit_edge, label %for.body17.lr.ph.i319

for.body.i316.for.inc25.i329_crit_edge:           ; preds = %for.body.i316
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25.i329

for.body17.lr.ph.i319:                            ; preds = %for.body.i316
  %arrayidx.i318 = getelementptr ptr, ptr %retval.0.i257, i32 %y.06.i314
  br label %for.body17.i325

for.body17.i325:                                  ; preds = %for.body17.i325.for.body17.i325_crit_edge, %for.body17.lr.ph.i319
  %x.03.i320 = phi i32 [ %div9.i317, %for.body17.lr.ph.i319 ], [ %inc.i322, %for.body17.i325.for.body17.i325_crit_edge ]
  %109 = ptrtoint ptr %arrayidx.i318 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %arrayidx.i318, align 4
  %arrayidx18.i321 = getelementptr i8, ptr %110, i32 %x.03.i320
  %111 = ptrtoint ptr %arrayidx18.i321 to i32
  call void @__asan_store1_noabort(i32 %111)
  store i8 61, ptr %arrayidx18.i321, align 1
  %inc.i322 = add nuw nsw i32 %x.03.i320, 1
  %exitcond.not = icmp eq i32 %inc.i322, %108
  br i1 %exitcond.not, label %for.body17.i325.for.inc25.i329_crit_edge, label %for.body17.i325.for.body17.i325_crit_edge

for.body17.i325.for.body17.i325_crit_edge:        ; preds = %for.body17.i325
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body17.i325

for.body17.i325.for.inc25.i329_crit_edge:         ; preds = %for.body17.i325
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc25.i329

for.inc25.i329:                                   ; preds = %for.body17.i325.for.inc25.i329_crit_edge, %for.body.i316.for.inc25.i329_crit_edge
  %inc26.i326 = add nuw nsw i32 %y.06.i314, 1
  %exitcond497.not = icmp eq i32 %y.06.i314, %conv3.i327
  br i1 %exitcond497.not, label %for.inc25.i329.fill_map.exit330_crit_edge, label %for.inc25.i329.for.body.i316_crit_edge

for.inc25.i329.for.body.i316_crit_edge:           ; preds = %for.inc25.i329
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body.i316

for.inc25.i329.fill_map.exit330_crit_edge:        ; preds = %for.inc25.i329
  call void @__sanitizer_cov_trace_pc() #13
  br label %fill_map.exit330

fill_map.exit330:                                 ; preds = %for.inc25.i329.fill_map.exit330_crit_edge, %for.body62.fill_map.exit330_crit_edge
  %tobool.not.i332 = icmp eq ptr %p.sroa.6.1475, null
  %or.cond455 = select i1 %tobool.not.i332, i1 true, i1 %tobool1.not.i
  call void @__sanitizer_cov_trace_cmp2(i16 %p.sroa.10.1473, i16 %92)
  %cmp.not.i338 = icmp eq i16 %p.sroa.10.1473, %92
  %or.cond456 = select i1 %or.cond455, i1 true, i1 %cmp.not.i338
  br i1 %or.cond456, label %fill_map.exit330.tcm_slice.exit361_crit_edge, label %land.lhs.true6.i342

fill_map.exit330.tcm_slice.exit361_crit_edge:     ; preds = %fill_map.exit330
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcm_slice.exit361

land.lhs.true6.i342:                              ; preds = %fill_map.exit330
  call void @__sanitizer_cov_trace_const_cmp2(i16 0, i16 %p.sroa.8.1474)
  %tobool9.not.i341 = icmp eq i16 %p.sroa.8.1474, 0
  %112 = ptrtoint ptr %p.sroa.6.1475 to i32
  call void @__asan_load2_noabort(i32 %112)
  %113 = load i16, ptr %p.sroa.6.1475, align 4
  br i1 %tobool9.not.i341, label %lor.lhs.false.i347, label %land.lhs.true6.i342.cond.end.i357_crit_edge

land.lhs.true6.i342.cond.end.i357_crit_edge:      ; preds = %land.lhs.true6.i342
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i357

lor.lhs.false.i347:                               ; preds = %land.lhs.true6.i342
  %conv14.i344 = zext i16 %113 to i32
  %sub.i345 = add nsw i32 %conv14.i344, -1
  call void @__sanitizer_cov_trace_cmp4(i32 %sub.i345, i32 %conv12.i343)
  %cmp15.not.i346 = icmp eq i32 %sub.i345, %conv12.i343
  br i1 %cmp15.not.i346, label %lor.lhs.false.i347.tcm_slice.exit361_crit_edge, label %lor.lhs.false.i347.cond.end.i357_crit_edge

lor.lhs.false.i347.cond.end.i357_crit_edge:       ; preds = %lor.lhs.false.i347
  call void @__sanitizer_cov_trace_pc() #13
  br label %cond.end.i357

lor.lhs.false.i347.tcm_slice.exit361_crit_edge:   ; preds = %lor.lhs.false.i347
  call void @__sanitizer_cov_trace_pc() #13
  br label %tcm_slice.exit361

cond.end.i357:                                    ; preds = %lor.lhs.false.i347.cond.end.i357_crit_edge, %land.lhs.true6.i342.cond.end.i357_crit_edge
  %cond.i353 = phi i16 [ %sub34.i351, %lor.lhs.false.i347.cond.end.i357_crit_edge ], [ %p.sroa.10.1473, %land.lhs.true6.i342.cond.end.i357_crit_edge ]
  %a.sroa.22.3 = add i16 %113, -1
  %add.i355 = add i16 %cond.i353, 1
  br label %tcm_slice.exit361

tcm_slice.exit361:                                ; preds = %cond.end.i357, %lor.lhs.false.i347.tcm_slice.exit361_crit_edge, %fill_map.exit330.tcm_slice.exit361_crit_edge
  %a.sroa.32.2 = phi i16 [ %cond.i353, %cond.end.i357 ], [ %92, %lor.lhs.false.i347.tcm_slice.exit361_crit_edge ], [ %92, %fill_map.exit330.tcm_slice.exit361_crit_edge ]
  %a.sroa.22.4 = phi i16 [ %a.sroa.22.3, %cond.end.i357 ], [ %96, %lor.lhs.false.i347.tcm_slice.exit361_crit_edge ], [ %96, %fill_map.exit330.tcm_slice.exit361_crit_edge ]
  %p.sroa.10.2 = phi i16 [ %add.i355, %cond.end.i357 ], [ %p.sroa.10.1473, %lor.lhs.false.i347.tcm_slice.exit361_crit_edge ], [ %p.sroa.10.1473, %fill_map.exit330.tcm_slice.exit361_crit_edge ]
  %p.sroa.8.2 = phi i16 [ 0, %cond.end.i357 ], [ 0, %lor.lhs.false.i347.tcm_slice.exit361_crit_edge ], [ %p.sroa.8.1474, %fill_map.exit330.tcm_slice.exit361_crit_edge ]
  %p.sroa.6.2 = phi ptr [ %p.sroa.6.1475, %cond.end.i357 ], [ null, %lor.lhs.false.i347.tcm_slice.exit361_crit_edge ], [ null, %fill_map.exit330.tcm_slice.exit361_crit_edge ]
  br i1 %tobool.not.i332, label %tcm_slice.exit361.for.end64_crit_edge, label %tcm_slice.exit361.for.body62_crit_edge

tcm_slice.exit361.for.body62_crit_edge:           ; preds = %tcm_slice.exit361
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body62

tcm_slice.exit361.for.end64_crit_edge:            ; preds = %tcm_slice.exit361
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end64

for.end64:                                        ; preds = %tcm_slice.exit361.for.end64_crit_edge, %tcm_slice.exit.for.end64_crit_edge
  %conv69 = select i1 %cmp50, i8 60, i8 88
  %114 = ptrtoint ptr %y.i to i32
  call void @__asan_load2_noabort(i32 %114)
  %115 = load i16, ptr %y.i, align 2
  %conv.i363 = zext i16 %115 to i32
  %arrayidx.i364 = getelementptr ptr, ptr %retval.0.i257, i32 %conv.i363
  %116 = ptrtoint ptr %arrayidx.i364 to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %arrayidx.i364, align 4
  %118 = ptrtoint ptr %p0 to i32
  call void @__asan_load2_noabort(i32 %118)
  %119 = load i16, ptr %p0, align 2
  %120 = lshr i16 %119, 1
  %div2.i365 = zext i16 %120 to i32
  %arrayidx3.i366 = getelementptr i8, ptr %117, i32 %div2.i365
  %121 = ptrtoint ptr %arrayidx3.i366 to i32
  call void @__asan_store1_noabort(i32 %121)
  store i8 %conv69, ptr %arrayidx3.i366, align 1
  %conv75 = select i1 %cmp55, i8 62, i8 88
  %122 = ptrtoint ptr %y.i295 to i32
  call void @__asan_load2_noabort(i32 %122)
  %123 = load i16, ptr %y.i295, align 2
  %conv.i368 = zext i16 %123 to i32
  %arrayidx.i369 = getelementptr ptr, ptr %retval.0.i257, i32 %conv.i368
  %124 = ptrtoint ptr %arrayidx.i369 to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %arrayidx.i369, align 4
  %126 = ptrtoint ptr %p1 to i32
  call void @__asan_load2_noabort(i32 %126)
  %127 = load i16, ptr %p1, align 2
  %128 = lshr i16 %127, 1
  %div2.i370 = zext i16 %128 to i32
  %arrayidx3.i371 = getelementptr i8, ptr %125, i32 %div2.i370
  %129 = ptrtoint ptr %arrayidx3.i371 to i32
  call void @__asan_store1_noabort(i32 %129)
  store i8 %conv75, ptr %arrayidx3.i371, align 1
  %130 = ptrtoint ptr %area to i32
  call void @__asan_load1_noabort(i32 %130)
  %131 = load i8, ptr %area, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %131)
  %tobool.not.i.i372 = icmp eq i8 %131, 0
  %132 = ptrtoint ptr %p1 to i32
  call void @__asan_load2_noabort(i32 %132)
  %133 = load i16, ptr %p1, align 4
  %134 = ptrtoint ptr %p0 to i32
  call void @__asan_load2_noabort(i32 %134)
  %135 = load i16, ptr %p0, align 4
  br i1 %tobool.not.i.i372, label %cond.false.i.i, label %cond.true.i.i

cond.true.i.i:                                    ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #13
  %sub.i.i.i = add i16 %133, 1
  %add.i.i.i = sub i16 %sub.i.i.i, %135
  %136 = ptrtoint ptr %y.i295 to i32
  call void @__asan_load2_noabort(i32 %136)
  %137 = load i16, ptr %y.i295, align 2
  %138 = ptrtoint ptr %y.i to i32
  call void @__asan_load2_noabort(i32 %138)
  %139 = load i16, ptr %y.i, align 2
  %sub.i23.i.i = add i16 %137, 1
  %add.i24.i.i = sub i16 %sub.i23.i.i, %139
  %mul.i.i = mul i16 %add.i24.i.i, %add.i.i.i
  br label %__tcm_sizeof.exit.i

cond.false.i.i:                                   ; preds = %for.end64
  call void @__sanitizer_cov_trace_pc() #13
  %140 = ptrtoint ptr %y.i295 to i32
  call void @__asan_load2_noabort(i32 %140)
  %141 = load i16, ptr %y.i295, align 2
  %142 = ptrtoint ptr %y.i to i32
  call void @__asan_load2_noabort(i32 %142)
  %143 = load i16, ptr %y.i, align 2
  %sub11.i.i = sub i16 %141, %143
  %144 = ptrtoint ptr %tcm to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load ptr, ptr %tcm, align 4
  %146 = ptrtoint ptr %145 to i32
  call void @__asan_load2_noabort(i32 %146)
  %147 = load i16, ptr %145, align 4
  %mul13.i.i = mul i16 %147, %sub11.i.i
  %sub.i.i376 = add i16 %133, 1
  %add.i.i377 = sub i16 %sub.i.i376, %135
  %add14.i.i = add i16 %add.i.i377, %mul13.i.i
  br label %__tcm_sizeof.exit.i

__tcm_sizeof.exit.i:                              ; preds = %cond.false.i.i, %cond.true.i.i
  %cond.i.i = phi i16 [ %mul.i.i, %cond.true.i.i ], [ %add14.i.i, %cond.false.i.i ]
  %conv.i378 = zext i16 %cond.i.i to i32
  %mul.i = shl nuw nsw i32 %conv.i378, 2
  %call1.i = call i32 (ptr, ptr, ...) @sprintf(ptr noundef nonnull %nice, ptr noundef nonnull @.str.38, i32 noundef %mul.i) #11
  %148 = ptrtoint ptr %y.i to i32
  call void @__asan_load2_noabort(i32 %148)
  %149 = load i16, ptr %y.i, align 2
  %conv2.i380 = zext i16 %149 to i32
  %add.i381 = add nuw nsw i32 %conv2.i380, 1
  %150 = ptrtoint ptr %y.i295 to i32
  call void @__asan_load2_noabort(i32 %150)
  %151 = load i16, ptr %y.i295, align 2
  %conv4.i = zext i16 %151 to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %add.i381, i32 %conv4.i)
  %cmp.i383 = icmp ult i32 %add.i381, %conv4.i
  br i1 %cmp.i383, label %if.then.i385, label %if.else.i398

if.then.i385:                                     ; preds = %__tcm_sizeof.exit.i
  %152 = ptrtoint ptr %nice to i32
  call void @__asan_load1_noabort(i32 %152)
  %153 = load i8, ptr %nice, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %153)
  %tobool.not2.i.i384 = icmp eq i8 %153, 0
  br i1 %tobool.not2.i.i384, label %if.then.i385.for.inc80_crit_edge, label %while.body.preheader.i.i392

if.then.i385.for.inc80_crit_edge:                 ; preds = %if.then.i385
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

while.body.preheader.i.i392:                      ; preds = %if.then.i385
  %add12.i = add nuw nsw i32 %conv4.i, %conv2.i380
  %div1.i386 = lshr i32 %add12.i, 1
  %arrayidx.i.i387 = getelementptr ptr, ptr %retval.0.i257, i32 %div1.i386
  %154 = ptrtoint ptr %arrayidx.i.i387 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load ptr, ptr %arrayidx.i.i387, align 4
  %call1.i.i388 = call i32 @strlen(ptr noundef nonnull %nice) #17
  %sub.i2.i389 = sub i32 128, %call1.i.i388
  %div21.i.i390 = lshr i32 %sub.i2.i389, 1
  %add.ptr3.i.i391 = getelementptr i8, ptr %155, i32 %div21.i.i390
  br label %while.body.i.i397

while.body.i.i397:                                ; preds = %while.body.i.i397.while.body.i.i397_crit_edge, %while.body.preheader.i.i392
  %156 = phi i8 [ %159, %while.body.i.i397.while.body.i.i397_crit_edge ], [ %153, %while.body.preheader.i.i392 ]
  %p.04.i.i393 = phi ptr [ %incdec.ptr4.i.i396, %while.body.i.i397.while.body.i.i397_crit_edge ], [ %add.ptr3.i.i391, %while.body.preheader.i.i392 ]
  %nice.addr.03.i.i394 = phi ptr [ %incdec.ptr.i.i395, %while.body.i.i397.while.body.i.i397_crit_edge ], [ %nice, %while.body.preheader.i.i392 ]
  %incdec.ptr.i.i395 = getelementptr i8, ptr %nice.addr.03.i.i394, i32 1
  %incdec.ptr4.i.i396 = getelementptr i8, ptr %p.04.i.i393, i32 1
  %157 = ptrtoint ptr %p.04.i.i393 to i32
  call void @__asan_store1_noabort(i32 %157)
  store i8 %156, ptr %p.04.i.i393, align 1
  %158 = ptrtoint ptr %incdec.ptr.i.i395 to i32
  call void @__asan_load1_noabort(i32 %158)
  %159 = load i8, ptr %incdec.ptr.i.i395, align 1
  %tobool.not.i3.i = icmp eq i8 %159, 0
  br i1 %tobool.not.i3.i, label %while.body.i.i397.for.inc80_crit_edge, label %while.body.i.i397.while.body.i.i397_crit_edge

while.body.i.i397.while.body.i.i397_crit_edge:    ; preds = %while.body.i.i397
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i.i397

while.body.i.i397.for.inc80_crit_edge:            ; preds = %while.body.i.i397
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

if.else.i398:                                     ; preds = %__tcm_sizeof.exit.i
  call void @__sanitizer_cov_trace_cmp2(i16 %149, i16 %151)
  %cmp20.i = icmp ult i16 %149, %151
  %call23.i = call i32 @strlen(ptr noundef nonnull %nice) #17
  br i1 %cmp20.i, label %if.then22.i, label %if.else55.i

if.then22.i:                                      ; preds = %if.else.i398
  %160 = ptrtoint ptr %p0 to i32
  call void @__asan_load2_noabort(i32 %160)
  %161 = load i16, ptr %p0, align 4
  %div1.neg.i636480.i = lshr i16 %161, 1
  %div1.neg.i63.zext.i = zext i16 %div1.neg.i636480.i to i32
  %add.i5.i399 = sub nsw i32 128, %div1.neg.i63.zext.i
  call void @__sanitizer_cov_trace_cmp4(i32 %call23.i, i32 %add.i5.i399)
  %cmp27.i = icmp ult i32 %call23.i, %add.i5.i399
  br i1 %cmp27.i, label %if.then29.i, label %if.else38.i

if.then29.i:                                      ; preds = %if.then22.i
  %162 = ptrtoint ptr %nice to i32
  call void @__asan_load1_noabort(i32 %162)
  %163 = load i8, ptr %nice, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %163)
  %tobool.not2.i6.i = icmp eq i8 %163, 0
  br i1 %tobool.not2.i6.i, label %if.then29.i.for.inc80_crit_edge, label %while.body.preheader.i14.i

if.then29.i.for.inc80_crit_edge:                  ; preds = %if.then29.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

while.body.preheader.i14.i:                       ; preds = %if.then29.i
  %conv25.i = zext i16 %161 to i32
  %add37.i = add nuw nsw i32 %conv25.i, 2
  %arrayidx.i7.i = getelementptr ptr, ptr %retval.0.i257, i32 %conv2.i380
  %164 = ptrtoint ptr %arrayidx.i7.i to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load ptr, ptr %arrayidx.i7.i, align 4
  %div.i6582.i = lshr i32 %add37.i, 1
  %add.ptr.i.i400 = getelementptr i8, ptr %165, i32 %div.i6582.i
  %166 = add i32 %call23.i, %div.i6582.i
  %sub.i11.i = sub i32 128, %166
  %div21.i12.i = lshr i32 %sub.i11.i, 1
  %add.ptr3.i13.i = getelementptr i8, ptr %add.ptr.i.i400, i32 %div21.i12.i
  br label %while.body.i20.i

while.body.i20.i:                                 ; preds = %while.body.i20.i.while.body.i20.i_crit_edge, %while.body.preheader.i14.i
  %167 = phi i8 [ %170, %while.body.i20.i.while.body.i20.i_crit_edge ], [ %163, %while.body.preheader.i14.i ]
  %p.04.i15.i = phi ptr [ %incdec.ptr4.i18.i, %while.body.i20.i.while.body.i20.i_crit_edge ], [ %add.ptr3.i13.i, %while.body.preheader.i14.i ]
  %nice.addr.03.i16.i = phi ptr [ %incdec.ptr.i17.i, %while.body.i20.i.while.body.i20.i_crit_edge ], [ %nice, %while.body.preheader.i14.i ]
  %incdec.ptr.i17.i = getelementptr i8, ptr %nice.addr.03.i16.i, i32 1
  %incdec.ptr4.i18.i = getelementptr i8, ptr %p.04.i15.i, i32 1
  %168 = ptrtoint ptr %p.04.i15.i to i32
  call void @__asan_store1_noabort(i32 %168)
  store i8 %167, ptr %p.04.i15.i, align 1
  %169 = ptrtoint ptr %incdec.ptr.i17.i to i32
  call void @__asan_load1_noabort(i32 %169)
  %170 = load i8, ptr %incdec.ptr.i17.i, align 1
  %tobool.not.i19.i = icmp eq i8 %170, 0
  br i1 %tobool.not.i19.i, label %while.body.i20.i.for.inc80_crit_edge, label %while.body.i20.i.while.body.i20.i_crit_edge

while.body.i20.i.while.body.i20.i_crit_edge:      ; preds = %while.body.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i20.i

while.body.i20.i.for.inc80_crit_edge:             ; preds = %while.body.i20.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

if.else38.i:                                      ; preds = %if.then22.i
  %171 = ptrtoint ptr %p1 to i32
  call void @__asan_load2_noabort(i32 %171)
  %172 = load i16, ptr %p1, align 4
  %div.i22686981.i = lshr i16 %172, 1
  %narrow.i = add nuw i16 %div.i22686981.i, 1
  %add.i23.i = zext i16 %narrow.i to i32
  call void @__sanitizer_cov_trace_cmp4(i32 %call23.i, i32 %add.i23.i)
  %cmp44.i = icmp ult i32 %call23.i, %add.i23.i
  br i1 %cmp44.i, label %if.then46.i, label %if.else38.i.for.inc80_crit_edge

if.else38.i.for.inc80_crit_edge:                  ; preds = %if.else38.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

if.then46.i:                                      ; preds = %if.else38.i
  %173 = ptrtoint ptr %nice to i32
  call void @__asan_load1_noabort(i32 %173)
  %174 = load i8, ptr %nice, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %174)
  %tobool.not2.i24.i = icmp eq i8 %174, 0
  br i1 %tobool.not2.i24.i, label %if.then46.i.for.inc80_crit_edge, label %while.body.preheader.i31.i

if.then46.i.for.inc80_crit_edge:                  ; preds = %if.then46.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

while.body.preheader.i31.i:                       ; preds = %if.then46.i
  %sub.i401 = add nsw i32 %conv4.i, -2
  %arrayidx.i25.i = getelementptr ptr, ptr %retval.0.i257, i32 %conv4.i
  %175 = ptrtoint ptr %arrayidx.i25.i to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %arrayidx.i25.i, align 4
  %div.i.i.i = sdiv i32 %sub.i401, 2
  %add.i.i26.i = add nsw i32 %div.i.i.i, 1
  %sub.i28.i = sub i32 %add.i.i26.i, %call23.i
  %div21.i29.i = lshr i32 %sub.i28.i, 1
  %add.ptr3.i30.i = getelementptr i8, ptr %176, i32 %div21.i29.i
  br label %while.body.i37.i

while.body.i37.i:                                 ; preds = %while.body.i37.i.while.body.i37.i_crit_edge, %while.body.preheader.i31.i
  %177 = phi i8 [ %180, %while.body.i37.i.while.body.i37.i_crit_edge ], [ %174, %while.body.preheader.i31.i ]
  %p.04.i32.i = phi ptr [ %incdec.ptr4.i35.i, %while.body.i37.i.while.body.i37.i_crit_edge ], [ %add.ptr3.i30.i, %while.body.preheader.i31.i ]
  %nice.addr.03.i33.i = phi ptr [ %incdec.ptr.i34.i, %while.body.i37.i.while.body.i37.i_crit_edge ], [ %nice, %while.body.preheader.i31.i ]
  %incdec.ptr.i34.i = getelementptr i8, ptr %nice.addr.03.i33.i, i32 1
  %incdec.ptr4.i35.i = getelementptr i8, ptr %p.04.i32.i, i32 1
  %178 = ptrtoint ptr %p.04.i32.i to i32
  call void @__asan_store1_noabort(i32 %178)
  store i8 %177, ptr %p.04.i32.i, align 1
  %179 = ptrtoint ptr %incdec.ptr.i34.i to i32
  call void @__asan_load1_noabort(i32 %179)
  %180 = load i8, ptr %incdec.ptr.i34.i, align 1
  %tobool.not.i36.i = icmp eq i8 %180, 0
  br i1 %tobool.not.i36.i, label %while.body.i37.i.for.inc80_crit_edge, label %while.body.i37.i.while.body.i37.i_crit_edge

while.body.i37.i.while.body.i37.i_crit_edge:      ; preds = %while.body.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i37.i

while.body.i37.i.for.inc80_crit_edge:             ; preds = %while.body.i37.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

if.else55.i:                                      ; preds = %if.else.i398
  %add57.i = add i32 %call23.i, 1
  %181 = ptrtoint ptr %p0 to i32
  call void @__asan_load2_noabort(i32 %181)
  %182 = load i16, ptr %p0, align 4
  %183 = ptrtoint ptr %p1 to i32
  call void @__asan_load2_noabort(i32 %183)
  %184 = load i16, ptr %p1, align 4
  %div.i39707177.i = lshr i16 %184, 1
  %div.i3970.zext.i = zext i16 %div.i39707177.i to i32
  %div1.neg.i40737478.i = lshr i16 %182, 1
  %div1.neg.i4073.zext.i = zext i16 %div1.neg.i40737478.i to i32
  %sub.i41.i = sub nsw i32 1, %div1.neg.i4073.zext.i
  %add.i42.i = add nsw i32 %sub.i41.i, %div.i3970.zext.i
  call void @__sanitizer_cov_trace_cmp4(i32 %add57.i, i32 %add.i42.i)
  %cmp65.i = icmp ult i32 %add57.i, %add.i42.i
  br i1 %cmp65.i, label %if.then67.i, label %if.else55.i.for.inc80_crit_edge

if.else55.i.for.inc80_crit_edge:                  ; preds = %if.else55.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

if.then67.i:                                      ; preds = %if.else55.i
  %185 = ptrtoint ptr %nice to i32
  call void @__asan_load1_noabort(i32 %185)
  %186 = load i8, ptr %nice, align 1
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %186)
  %tobool.not2.i43.i = icmp eq i8 %186, 0
  br i1 %tobool.not2.i43.i, label %if.then67.i.for.inc80_crit_edge, label %while.body.preheader.i55.i

if.then67.i.for.inc80_crit_edge:                  ; preds = %if.then67.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

while.body.preheader.i55.i:                       ; preds = %if.then67.i
  %arrayidx.i44.i = getelementptr ptr, ptr %retval.0.i257, i32 %conv2.i380
  %187 = ptrtoint ptr %arrayidx.i44.i to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %arrayidx.i44.i, align 4
  %add.ptr.i46.i = getelementptr i8, ptr %188, i32 %div1.neg.i4073.zext.i
  %sub.i52.i = sub i32 %add.i42.i, %call23.i
  %div21.i53.i = lshr i32 %sub.i52.i, 1
  %add.ptr3.i54.i = getelementptr i8, ptr %add.ptr.i46.i, i32 %div21.i53.i
  br label %while.body.i61.i

while.body.i61.i:                                 ; preds = %while.body.i61.i.while.body.i61.i_crit_edge, %while.body.preheader.i55.i
  %189 = phi i8 [ %192, %while.body.i61.i.while.body.i61.i_crit_edge ], [ %186, %while.body.preheader.i55.i ]
  %p.04.i56.i = phi ptr [ %incdec.ptr4.i59.i, %while.body.i61.i.while.body.i61.i_crit_edge ], [ %add.ptr3.i54.i, %while.body.preheader.i55.i ]
  %nice.addr.03.i57.i = phi ptr [ %incdec.ptr.i58.i, %while.body.i61.i.while.body.i61.i_crit_edge ], [ %nice, %while.body.preheader.i55.i ]
  %incdec.ptr.i58.i = getelementptr i8, ptr %nice.addr.03.i57.i, i32 1
  %incdec.ptr4.i59.i = getelementptr i8, ptr %p.04.i56.i, i32 1
  %190 = ptrtoint ptr %p.04.i56.i to i32
  call void @__asan_store1_noabort(i32 %190)
  store i8 %189, ptr %p.04.i56.i, align 1
  %191 = ptrtoint ptr %incdec.ptr.i58.i to i32
  call void @__asan_load1_noabort(i32 %191)
  %192 = load i8, ptr %incdec.ptr.i58.i, align 1
  %tobool.not.i60.i = icmp eq i8 %192, 0
  br i1 %tobool.not.i60.i, label %while.body.i61.i.for.inc80_crit_edge, label %while.body.i61.i.while.body.i61.i_crit_edge

while.body.i61.i.while.body.i61.i_crit_edge:      ; preds = %while.body.i61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %while.body.i61.i

while.body.i61.i.for.inc80_crit_edge:             ; preds = %while.body.i61.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc80

for.inc80:                                        ; preds = %while.body.i61.i.for.inc80_crit_edge, %if.then67.i.for.inc80_crit_edge, %if.else55.i.for.inc80_crit_edge, %while.body.i37.i.for.inc80_crit_edge, %if.then46.i.for.inc80_crit_edge, %if.else38.i.for.inc80_crit_edge, %while.body.i20.i.for.inc80_crit_edge, %if.then29.i.for.inc80_crit_edge, %while.body.i.i397.for.inc80_crit_edge, %if.then.i385.for.inc80_crit_edge, %while.body.i.i.for.inc80_crit_edge, %if.then.i.for.inc80_crit_edge, %fill_map.exit.for.inc80_crit_edge, %for.body29.for.inc80_crit_edge
  %m2dp.3 = phi ptr [ %m2dp.1480, %for.body29.for.inc80_crit_edge ], [ %m2dp.2, %fill_map.exit.for.inc80_crit_edge ], [ %m2dp.2, %if.then.i.for.inc80_crit_edge ], [ %m2dp.1480, %if.then.i385.for.inc80_crit_edge ], [ %m2dp.1480, %if.then29.i.for.inc80_crit_edge ], [ %m2dp.1480, %if.else38.i.for.inc80_crit_edge ], [ %m2dp.1480, %if.then46.i.for.inc80_crit_edge ], [ %m2dp.1480, %if.else55.i.for.inc80_crit_edge ], [ %m2dp.1480, %if.then67.i.for.inc80_crit_edge ], [ %m2dp.1480, %while.body.i.i397.for.inc80_crit_edge ], [ %m2dp.1480, %while.body.i20.i.for.inc80_crit_edge ], [ %m2dp.1480, %while.body.i37.i.for.inc80_crit_edge ], [ %m2dp.1480, %while.body.i61.i.for.inc80_crit_edge ], [ %m2dp.2, %while.body.i.i.for.inc80_crit_edge ]
  %193 = ptrtoint ptr %block.0481 to i32
  call void @__asan_load4_noabort(i32 %193)
  %block.0 = load ptr, ptr %block.0481, align 4
  %194 = load ptr, ptr @omap_dmm, align 4
  %alloc_head26 = getelementptr inbounds %struct.dmm, ptr %194, i32 0, i32 19
  %cmp27.not = icmp eq ptr %block.0, %alloc_head26
  br i1 %cmp27.not, label %for.inc80.for.end86_crit_edge, label %for.inc80.for.body29_crit_edge

for.inc80.for.body29_crit_edge:                   ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body29

for.inc80.for.end86_crit_edge:                    ; preds = %for.inc80
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end86

for.end86:                                        ; preds = %for.inc80.for.end86_crit_edge, %do.body17.for.end86_crit_edge
  %m2dp.1.lcssa = phi ptr [ %m2dp.0492, %do.body17.for.end86_crit_edge ], [ %m2dp.3, %for.inc80.for.end86_crit_edge ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call20) #11
  br i1 %tobool87.not, label %do.body98, label %if.then88

if.then88:                                        ; preds = %for.end86
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %s, ptr noundef nonnull @.str.5, i32 noundef %lut_idx.0488) #11
  br label %for.body92

for.body92:                                       ; preds = %for.body92.for.body92_crit_edge, %if.then88
  %i.1483 = phi i32 [ 0, %if.then88 ], [ %inc95, %for.body92.for.body92_crit_edge ]
  %arrayidx93 = getelementptr ptr, ptr %retval.0.i257, i32 %i.1483
  %195 = ptrtoint ptr %arrayidx93 to i32
  call void @__asan_load4_noabort(i32 %195)
  %196 = load ptr, ptr %arrayidx93, align 4
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %s, ptr noundef nonnull @.str.6, i32 noundef %i.1483, ptr noundef %196) #11
  %inc95 = add nuw nsw i32 %i.1483, 1
  %exitcond498.not = icmp eq i32 %inc95, 128
  br i1 %exitcond498.not, label %for.end96, label %for.body92.for.body92_crit_edge

for.body92.for.body92_crit_edge:                  ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body92

for.end96:                                        ; preds = %for.body92
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @seq_printf(ptr noundef nonnull %s, ptr noundef nonnull @.str.7, i32 noundef %lut_idx.0488) #11
  br label %for.inc158

do.body98:                                        ; preds = %for.end86
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tiler_map_show.__UNIQUE_ID_ddebug320, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tiler_map_show, %do.body115)) #11
          to label %if.then107 [label %do.body115], !srcloc !214

if.then107:                                       ; preds = %do.body98
  call void @__sanitizer_cov_trace_pc() #13
  %197 = load ptr, ptr @omap_dmm, align 4
  %198 = ptrtoint ptr %197 to i32
  call void @__asan_load4_noabort(i32 %198)
  %199 = load ptr, ptr %197, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tiler_map_show.__UNIQUE_ID_ddebug320, ptr noundef %199, ptr noundef nonnull @.str.5, i32 noundef %lut_idx.0488) #11
  br label %do.body115

do.body115:                                       ; preds = %for.inc135.do.body115_crit_edge, %if.then107, %do.body98
  %i.2484 = phi i32 [ %inc136, %for.inc135.do.body115_crit_edge ], [ 0, %do.body98 ], [ 0, %if.then107 ]
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tiler_map_show.__UNIQUE_ID_ddebug321, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tiler_map_show, %for.inc135)) #11
          to label %if.then129 [label %for.inc135], !srcloc !214

if.then129:                                       ; preds = %do.body115
  call void @__sanitizer_cov_trace_pc() #13
  %200 = load ptr, ptr @omap_dmm, align 4
  %201 = ptrtoint ptr %200 to i32
  call void @__asan_load4_noabort(i32 %201)
  %202 = load ptr, ptr %200, align 4
  %arrayidx131 = getelementptr ptr, ptr %retval.0.i257, i32 %i.2484
  %203 = ptrtoint ptr %arrayidx131 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %arrayidx131, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tiler_map_show.__UNIQUE_ID_ddebug321, ptr noundef %202, ptr noundef nonnull @.str.6, i32 noundef %i.2484, ptr noundef %204) #11
  br label %for.inc135

for.inc135:                                       ; preds = %if.then129, %do.body115
  %inc136 = add nuw nsw i32 %i.2484, 1
  %exitcond499.not = icmp eq i32 %inc136, 128
  br i1 %exitcond499.not, label %do.body138, label %for.inc135.do.body115_crit_edge

for.inc135.do.body115_crit_edge:                  ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.body115

do.body138:                                       ; preds = %for.inc135
  call void @__sanitizer_cov_trace_pc() #13
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr (i8, ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tiler_map_show.__UNIQUE_ID_ddebug322, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), i32 1), ptr blockaddress(@tiler_map_show, %for.inc158)) #11
          to label %if.then152 [label %for.inc158], !srcloc !214

if.then152:                                       ; preds = %do.body138
  call void @__sanitizer_cov_trace_pc() #13
  %205 = load ptr, ptr @omap_dmm, align 4
  %206 = ptrtoint ptr %205 to i32
  call void @__asan_load4_noabort(i32 %206)
  %207 = load ptr, ptr %205, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tiler_map_show.__UNIQUE_ID_ddebug322, ptr noundef %207, ptr noundef nonnull @.str.7, i32 noundef %lut_idx.0488) #11
  br label %for.inc158

for.inc158:                                       ; preds = %if.then152, %do.body138, %for.end96
  %inc159 = add nuw nsw i32 %lut_idx.0488, 1
  %208 = load ptr, ptr @omap_dmm, align 4
  %num_lut = getelementptr inbounds %struct.dmm, ptr %208, i32 0, i32 17
  %209 = ptrtoint ptr %num_lut to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load i32, ptr %num_lut, align 4
  %cmp = icmp slt i32 %inc159, %210
  br i1 %cmp, label %for.inc158.for.body_crit_edge, label %for.inc158.error_crit_edge

for.inc158.error_crit_edge:                       ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #13
  br label %error

for.inc158.for.body_crit_edge:                    ; preds = %for.inc158
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

error:                                            ; preds = %for.inc158.error_crit_edge, %for.cond.preheader.error_crit_edge, %if.end7.i288.error_crit_edge, %kmalloc_array.exit.error_crit_edge
  %retval.0.i289449 = phi ptr [ %call8.i287, %if.end7.i288.error_crit_edge ], [ null, %kmalloc_array.exit.error_crit_edge ], [ %call8.i287, %for.cond.preheader.error_crit_edge ], [ %call8.i287, %for.inc158.error_crit_edge ]
  tail call void @kfree(ptr noundef %retval.0.i257) #11
  tail call void @kfree(ptr noundef %retval.0.i289449) #11
  br label %cleanup

cleanup:                                          ; preds = %error, %entry.cleanup_crit_edge
  call void @llvm.lifetime.end.p0(i64 128, ptr nonnull %nice) #11
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @seq_printf(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dmm_probe(ptr noundef %dev) #0 align 64 {
entry:
  %mask.i = alloca %struct.dma_cap_mask_t, align 4
  %area = alloca %struct.tcm_area, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %area) #11
  %0 = call ptr @memset(ptr %area, i32 0, i32 16)
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8) to i32))
  %1 = load ptr, ptr getelementptr inbounds ([4 x [14 x ptr]], ptr @kmalloc_caches, i32 0, i32 0, i32 8), align 4
  %call7.i.i = tail call noalias align 8 ptr @kmem_cache_alloc_trace(ptr noundef %1, i32 noundef 3520, i32 noundef 200) #15
  store ptr %call7.i.i, ptr @omap_dmm, align 4
  %tobool.not = icmp eq ptr %call7.i.i, null
  br i1 %tobool.not, label %entry.fail_crit_edge, label %if.end

entry.fail_crit_edge:                             ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end:                                           ; preds = %entry
  %alloc_head = getelementptr inbounds %struct.dmm, ptr %call7.i.i, i32 0, i32 19
  %2 = ptrtoint ptr %alloc_head to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %alloc_head, ptr %alloc_head, align 8
  %prev.i = getelementptr inbounds %struct.dmm, ptr %call7.i.i, i32 0, i32 19, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %alloc_head, ptr %prev.i, align 4
  %idle_head = getelementptr inbounds %struct.dmm, ptr %call7.i.i, i32 0, i32 9
  %4 = ptrtoint ptr %idle_head to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %idle_head, ptr %idle_head, align 4
  %prev.i284 = getelementptr inbounds %struct.dmm, ptr %call7.i.i, i32 0, i32 9, i32 1
  %5 = ptrtoint ptr %prev.i284 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %idle_head, ptr %prev.i284, align 8
  %engine_queue = getelementptr inbounds %struct.dmm, ptr %call7.i.i, i32 0, i32 8
  tail call void @__init_waitqueue_head(ptr noundef %engine_queue, ptr noundef nonnull @.str.39, ptr noundef nonnull @omap_dmm_probe.__key) #11
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %dev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %tobool2.not = icmp eq ptr %7, null
  br i1 %tobool2.not, label %if.end.if.end14_crit_edge, label %if.then3

if.end.if.end14_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end14

if.then3:                                         ; preds = %if.end
  %call6 = tail call ptr @of_match_node(ptr noundef nonnull @dmm_of_match, ptr noundef nonnull %7) #11
  %tobool7.not = icmp eq ptr %call6, null
  br i1 %tobool7.not, label %cleanup, label %cleanup.thread

cleanup.thread:                                   ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  %data = getelementptr inbounds %struct.of_device_id, ptr %call6, i32 0, i32 3
  %8 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %data, align 4
  %10 = load ptr, ptr @omap_dmm, align 4
  %plat_data = getelementptr inbounds %struct.dmm, ptr %10, i32 0, i32 20
  %11 = ptrtoint ptr %plat_data to i32
  call void @__asan_store4_noabort(i32 %11)
  store ptr %9, ptr %plat_data, align 4
  br label %if.end14

cleanup:                                          ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.40) #14
  br label %fail

if.end14:                                         ; preds = %cleanup.thread, %if.end.if.end14_crit_edge
  %call15 = tail call ptr @platform_get_resource(ptr noundef %dev, i32 noundef 512, i32 noundef 0) #11
  %tobool16.not = icmp eq ptr %call15, null
  br i1 %tobool16.not, label %do.end20, label %if.end22

do.end20:                                         ; preds = %if.end14
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.43) #14
  br label %fail

if.end22:                                         ; preds = %if.end14
  %12 = ptrtoint ptr %call15 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %call15, align 4
  %14 = load ptr, ptr @omap_dmm, align 4
  %phys_base = getelementptr inbounds %struct.dmm, ptr %14, i32 0, i32 1
  %15 = ptrtoint ptr %phys_base to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %13, ptr %phys_base, align 4
  %16 = load i32, ptr %call15, align 4
  %call24 = tail call ptr @ioremap(i32 noundef %16, i32 noundef 2048) #11
  %17 = load ptr, ptr @omap_dmm, align 4
  %base = getelementptr inbounds %struct.dmm, ptr %17, i32 0, i32 2
  %18 = ptrtoint ptr %base to i32
  call void @__asan_store4_noabort(i32 %18)
  store ptr %call24, ptr %base, align 4
  %tobool26.not = icmp eq ptr %call24, null
  br i1 %tobool26.not, label %do.end30, label %if.end32

do.end30:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.46) #14
  br label %fail

if.end32:                                         ; preds = %if.end22
  %call33 = tail call i32 @platform_get_irq(ptr noundef %dev, i32 noundef 0) #11
  %19 = load ptr, ptr @omap_dmm, align 4
  %irq = getelementptr inbounds %struct.dmm, ptr %19, i32 0, i32 3
  %20 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call33, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %cmp = icmp slt i32 %call33, 0
  br i1 %cmp, label %do.end38, label %if.end40

do.end38:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.49) #14
  br label %fail

if.end40:                                         ; preds = %if.end32
  %21 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %dev1, ptr %19, align 4
  %call43 = tail call i32 @of_machine_is_compatible(ptr noundef nonnull @.str.51) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call43)
  %tobool44.not = icmp eq i32 %call43, 0
  br i1 %tobool44.not, label %if.end40.if.end58_crit_edge, label %if.then45

if.end40.if.end58_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end58

if.then45:                                        ; preds = %if.end40
  %22 = load ptr, ptr @omap_dmm, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %mask.i) #11
  %wa_lock.i = getelementptr inbounds %struct.dmm, ptr %22, i32 0, i32 22
  tail call void @__raw_spin_lock_init(ptr noundef %wa_lock.i, ptr noundef nonnull @.str.82, ptr noundef nonnull @dmm_workaround_init.__key, i16 noundef signext 3) #11
  %23 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %22, align 4
  %wa_dma_handle.i = getelementptr inbounds %struct.dmm, ptr %22, i32 0, i32 24
  %call.i.i285 = tail call ptr @dma_alloc_attrs(ptr noundef %24, i32 noundef 4, ptr noundef %wa_dma_handle.i, i32 noundef 3264, i32 noundef 0) #11
  %wa_dma_data.i = getelementptr inbounds %struct.dmm, ptr %22, i32 0, i32 23
  %25 = ptrtoint ptr %wa_dma_data.i to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call.i.i285, ptr %wa_dma_data.i, align 4
  %tobool.not.i = icmp eq ptr %call.i.i285, null
  br i1 %tobool.not.i, label %if.then45.do.end55_crit_edge, label %if.end.i

if.then45.do.end55_crit_edge:                     ; preds = %if.then45
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end55

if.end.i:                                         ; preds = %if.then45
  %26 = ptrtoint ptr %mask.i to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 0, ptr %mask.i, align 4
  call void @_set_bit(i32 noundef 0, ptr noundef nonnull %mask.i) #11
  %call3.i = call ptr @__dma_request_channel(ptr noundef nonnull %mask.i, ptr noundef null, ptr noundef null, ptr noundef null) #11
  %wa_dma_chan.i = getelementptr inbounds %struct.dmm, ptr %22, i32 0, i32 25
  %27 = ptrtoint ptr %wa_dma_chan.i to i32
  call void @__asan_store4_noabort(i32 %27)
  store ptr %call3.i, ptr %wa_dma_chan.i, align 4
  %tobool5.not.i = icmp eq ptr %call3.i, null
  br i1 %tobool5.not.i, label %if.then6.i, label %if.then48

if.then6.i:                                       ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  %28 = ptrtoint ptr %22 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %22, align 4
  %30 = ptrtoint ptr %wa_dma_data.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %wa_dma_data.i, align 4
  %32 = ptrtoint ptr %wa_dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %wa_dma_handle.i, align 4
  call void @dma_free_attrs(ptr noundef %29, i32 noundef 4, ptr noundef %31, i32 noundef %33, i32 noundef 0) #11
  br label %do.end55

if.then48:                                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #11
  %34 = load ptr, ptr @omap_dmm, align 4
  %dmm_workaround = getelementptr inbounds %struct.dmm, ptr %34, i32 0, i32 21
  %35 = ptrtoint ptr %dmm_workaround to i32
  call void @__asan_store1_noabort(i32 %35)
  store i8 1, ptr %dmm_workaround, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %dev1, ptr noundef nonnull @.str.53) #14
  br label %if.end58

do.end55:                                         ; preds = %if.then6.i, %if.then45.do.end55_crit_edge
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %mask.i) #11
  call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.57) #14
  br label %if.end58

if.end58:                                         ; preds = %do.end55, %if.then48, %if.end40.if.end58_crit_edge
  %36 = load ptr, ptr @omap_dmm, align 4
  %call59 = call fastcc i32 @dmm_read(ptr noundef %36, i32 noundef 1032)
  %shr = lshr i32 %call59, 24
  %and = and i32 %shr, 31
  %37 = load ptr, ptr @omap_dmm, align 4
  %num_engines = getelementptr inbounds %struct.dmm, ptr %37, i32 0, i32 11
  %38 = ptrtoint ptr %num_engines to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %and, ptr %num_engines, align 4
  %shr60 = lshr i32 %call59, 16
  %and61 = and i32 %shr60, 31
  %num_lut = getelementptr inbounds %struct.dmm, ptr %37, i32 0, i32 17
  %39 = ptrtoint ptr %num_lut to i32
  call void @__asan_store4_noabort(i32 %39)
  store i32 %and61, ptr %num_lut, align 4
  %container_width = getelementptr inbounds %struct.dmm, ptr %37, i32 0, i32 13
  %40 = ptrtoint ptr %container_width to i32
  call void @__asan_store4_noabort(i32 %40)
  store i32 256, ptr %container_width, align 4
  %container_height = getelementptr inbounds %struct.dmm, ptr %37, i32 0, i32 14
  %41 = ptrtoint ptr %container_height to i32
  call void @__asan_store4_noabort(i32 %41)
  store i32 128, ptr %container_height, align 4
  %engine_counter = getelementptr inbounds %struct.dmm, ptr %37, i32 0, i32 12
  %call.i.i = call zeroext i1 @__kasan_check_write(ptr noundef %engine_counter, i32 noundef 4) #11
  %42 = ptrtoint ptr %engine_counter to i32
  call void @__asan_store4_noabort(i32 %42)
  store volatile i32 %and, ptr %engine_counter, align 4
  %43 = load ptr, ptr @omap_dmm, align 4
  %call63 = call fastcc i32 @dmm_read(ptr noundef %43, i32 noundef 1036)
  %44 = lshr i32 %call63, 11
  %shl = and i32 %44, 480
  %45 = load ptr, ptr @omap_dmm, align 4
  %lut_width = getelementptr inbounds %struct.dmm, ptr %45, i32 0, i32 15
  %46 = ptrtoint ptr %lut_width to i32
  call void @__asan_store4_noabort(i32 %46)
  store i32 %shl, ptr %lut_width, align 4
  %47 = lshr i32 %call63, 19
  %shl68 = and i32 %47, 480
  %lut_height = getelementptr inbounds %struct.dmm, ptr %45, i32 0, i32 16
  %48 = ptrtoint ptr %lut_height to i32
  call void @__asan_store4_noabort(i32 %48)
  store i32 %shl68, ptr %lut_height, align 4
  %container_height70 = getelementptr inbounds %struct.dmm, ptr %45, i32 0, i32 14
  %49 = ptrtoint ptr %container_height70 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load i32, ptr %container_height70, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %shl68, i32 %50)
  %cmp71.not = icmp eq i32 %shl68, %50
  br i1 %cmp71.not, label %if.end58.if.end74_crit_edge, label %if.then72

if.end58.if.end74_crit_edge:                      ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end74

if.then72:                                        ; preds = %if.end58
  call void @__sanitizer_cov_trace_pc() #13
  %num_lut73 = getelementptr inbounds %struct.dmm, ptr %45, i32 0, i32 17
  %51 = ptrtoint ptr %num_lut73 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load i32, ptr %num_lut73, align 4
  %inc = add i32 %52, 1
  store i32 %inc, ptr %num_lut73, align 4
  br label %if.end74

if.end74:                                         ; preds = %if.then72, %if.end58.if.end74_crit_edge
  call fastcc void @dmm_write(ptr noundef %45, i32 noundef -2004318072, i32 noundef 1056)
  %53 = load ptr, ptr @omap_dmm, align 4
  call fastcc void @dmm_write(ptr noundef %53, i32 noundef -2004318072, i32 noundef 1060)
  %54 = load ptr, ptr @omap_dmm, align 4
  call fastcc void @dmm_write(ptr noundef %54, i32 noundef -2139062144, i32 noundef 1088)
  %55 = load ptr, ptr @omap_dmm, align 4
  call fastcc void @dmm_write(ptr noundef %55, i32 noundef -2147483648, i32 noundef 1120)
  %56 = load ptr, ptr @omap_dmm, align 4
  call fastcc void @dmm_write(ptr noundef %56, i32 noundef -2004318072, i32 noundef 544)
  %57 = load ptr, ptr @omap_dmm, align 4
  call fastcc void @dmm_write(ptr noundef %57, i32 noundef -2004318072, i32 noundef 548)
  %call38.i.i.i = call ptr @__alloc_pages(i32 noundef 3268, i32 noundef 0, i32 noundef 0, ptr noundef null) #11
  %58 = load ptr, ptr @omap_dmm, align 4
  %dummy_page = getelementptr inbounds %struct.dmm, ptr %58, i32 0, i32 4
  %59 = ptrtoint ptr %dummy_page to i32
  call void @__asan_store4_noabort(i32 %59)
  store ptr %call38.i.i.i, ptr %dummy_page, align 4
  %tobool77.not = icmp eq ptr %call38.i.i.i, null
  br i1 %tobool77.not, label %do.end81, label %if.end83

do.end81:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.61) #14
  br label %fail

if.end83:                                         ; preds = %if.end74
  %call85 = call i32 @dma_set_coherent_mask(ptr noundef %dev1, i64 noundef 4294967295) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end88, label %if.end83.fail_crit_edge

if.end83.fail_crit_edge:                          ; preds = %if.end83
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

if.end88:                                         ; preds = %if.end83
  %60 = load ptr, ptr @omap_dmm, align 4
  %dummy_page89 = getelementptr inbounds %struct.dmm, ptr %60, i32 0, i32 4
  %61 = ptrtoint ptr %dummy_page89 to i32
  call void @__asan_load4_noabort(i32 %61)
  %62 = load ptr, ptr %dummy_page89, align 4
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @mem_map to i32))
  %63 = load ptr, ptr @mem_map, align 4
  %sub.ptr.lhs.cast = ptrtoint ptr %62 to i32
  %sub.ptr.rhs.cast = ptrtoint ptr %63 to i32
  %sub.ptr.sub = sub i32 %sub.ptr.lhs.cast, %sub.ptr.rhs.cast
  %sub.ptr.div = sdiv exact i32 %sub.ptr.sub, 36
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @__pv_phys_pfn_offset to i32))
  %64 = load i32, ptr @__pv_phys_pfn_offset, align 4
  %add = add i32 %sub.ptr.div, %64
  %shl90 = shl i32 %add, 12
  %dummy_pa = getelementptr inbounds %struct.dmm, ptr %60, i32 0, i32 5
  %65 = ptrtoint ptr %dummy_pa to i32
  call void @__asan_store4_noabort(i32 %65)
  store i32 %shl90, ptr %dummy_pa, align 4
  %num_engines92 = getelementptr inbounds %struct.dmm, ptr %60, i32 0, i32 11
  %66 = ptrtoint ptr %num_engines92 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load i32, ptr %num_engines92, align 4
  %mul = mul i32 %67, 131456
  %refill_pa = getelementptr inbounds %struct.dmm, ptr %60, i32 0, i32 7
  %call.i = call ptr @dma_alloc_attrs(ptr noundef %dev1, i32 noundef %mul, ptr noundef %refill_pa, i32 noundef 3264, i32 noundef 4) #11
  %68 = load ptr, ptr @omap_dmm, align 4
  %refill_va = getelementptr inbounds %struct.dmm, ptr %68, i32 0, i32 6
  %69 = ptrtoint ptr %refill_va to i32
  call void @__asan_store4_noabort(i32 %69)
  store ptr %call.i, ptr %refill_va, align 4
  %tobool95.not = icmp eq ptr %call.i, null
  br i1 %tobool95.not, label %do.end99, label %if.end101

do.end99:                                         ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.64) #14
  br label %fail

if.end101:                                        ; preds = %if.end88
  %num_engines102 = getelementptr inbounds %struct.dmm, ptr %68, i32 0, i32 11
  %70 = ptrtoint ptr %num_engines102 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %num_engines102, align 4
  %72 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %71, i32 108) #11
  %73 = extractvalue { i32, i1 } %72, 1
  br i1 %73, label %kcalloc.exit.thread, label %if.end7.i.i, !prof !198

kcalloc.exit.thread:                              ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #13
  %74 = load ptr, ptr @omap_dmm, align 4
  %engines328 = getelementptr inbounds %struct.dmm, ptr %74, i32 0, i32 10
  %75 = ptrtoint ptr %engines328 to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr null, ptr %engines328, align 4
  br label %fail

if.end7.i.i:                                      ; preds = %if.end101
  %76 = extractvalue { i32, i1 } %72, 0
  %call8.i.i = call noalias align 128 ptr @__kmalloc(i32 noundef %76, i32 noundef 3520) #16
  %77 = load ptr, ptr @omap_dmm, align 4
  %engines = getelementptr inbounds %struct.dmm, ptr %77, i32 0, i32 10
  %78 = ptrtoint ptr %engines to i32
  call void @__asan_store4_noabort(i32 %78)
  store ptr %call8.i.i, ptr %engines, align 4
  %tobool105.not = icmp eq ptr %call8.i.i, null
  br i1 %tobool105.not, label %if.end7.i.i.fail_crit_edge, label %for.cond.preheader

if.end7.i.i.fail_crit_edge:                       ; preds = %if.end7.i.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

for.cond.preheader:                               ; preds = %if.end7.i.i
  %79 = load ptr, ptr @omap_dmm, align 4
  %num_engines108336 = getelementptr inbounds %struct.dmm, ptr %79, i32 0, i32 11
  %80 = ptrtoint ptr %num_engines108336 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load i32, ptr %num_engines108336, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %81)
  %cmp109337 = icmp sgt i32 %81, 0
  br i1 %cmp109337, label %for.cond.preheader.for.body_crit_edge, label %for.cond.preheader.for.end_crit_edge

for.cond.preheader.for.end_crit_edge:             ; preds = %for.cond.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.cond.preheader.for.body_crit_edge:            ; preds = %for.cond.preheader
  br label %for.body

for.body:                                         ; preds = %list_add.exit.for.body_crit_edge, %for.cond.preheader.for.body_crit_edge
  %82 = phi ptr [ %107, %list_add.exit.for.body_crit_edge ], [ %79, %for.cond.preheader.for.body_crit_edge ]
  %i.0338 = phi i32 [ %inc129, %list_add.exit.for.body_crit_edge ], [ 0, %for.cond.preheader.for.body_crit_edge ]
  %engines110 = getelementptr inbounds %struct.dmm, ptr %82, i32 0, i32 10
  %83 = ptrtoint ptr %engines110 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %engines110, align 4
  %arrayidx = getelementptr %struct.refill_engine, ptr %84, i32 %i.0338
  %85 = ptrtoint ptr %arrayidx to i32
  call void @__asan_store4_noabort(i32 %85)
  store i32 %i.0338, ptr %arrayidx, align 4
  %86 = load ptr, ptr %engines110, align 4
  %dmm = getelementptr %struct.refill_engine, ptr %86, i32 %i.0338, i32 1
  %87 = ptrtoint ptr %dmm to i32
  call void @__asan_store4_noabort(i32 %87)
  store ptr %82, ptr %dmm, align 4
  %refill_va113 = getelementptr inbounds %struct.dmm, ptr %82, i32 0, i32 6
  %88 = ptrtoint ptr %refill_va113 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %refill_va113, align 4
  %mul114 = mul i32 %i.0338, 131456
  %add.ptr = getelementptr i8, ptr %89, i32 %mul114
  %90 = load ptr, ptr %engines110, align 4
  %refill_va117 = getelementptr %struct.refill_engine, ptr %90, i32 %i.0338, i32 3
  %91 = ptrtoint ptr %refill_va117 to i32
  call void @__asan_store4_noabort(i32 %91)
  store ptr %add.ptr, ptr %refill_va117, align 4
  %refill_pa118 = getelementptr inbounds %struct.dmm, ptr %82, i32 0, i32 7
  %92 = ptrtoint ptr %refill_pa118 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load i32, ptr %refill_pa118, align 4
  %add120 = add i32 %93, %mul114
  %94 = load ptr, ptr %engines110, align 4
  %refill_pa123 = getelementptr %struct.refill_engine, ptr %94, i32 %i.0338, i32 4
  %95 = ptrtoint ptr %refill_pa123 to i32
  call void @__asan_store4_noabort(i32 %95)
  store i32 %add120, ptr %refill_pa123, align 4
  %96 = load ptr, ptr %engines110, align 4
  %compl = getelementptr %struct.refill_engine, ptr %96, i32 %i.0338, i32 7
  %97 = ptrtoint ptr %compl to i32
  call void @__asan_store4_noabort(i32 %97)
  store i32 0, ptr %compl, align 4
  %wait.i = getelementptr %struct.refill_engine, ptr %96, i32 %i.0338, i32 7, i32 1
  call void @__init_swait_queue_head(ptr noundef %wait.i, ptr noundef nonnull @.str.84, ptr noundef nonnull @init_completion.__key) #11
  %98 = load ptr, ptr @omap_dmm, align 4
  %engines126 = getelementptr inbounds %struct.dmm, ptr %98, i32 0, i32 10
  %99 = ptrtoint ptr %engines126 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %engines126, align 4
  %idle_node = getelementptr %struct.refill_engine, ptr %100, i32 %i.0338, i32 8
  %idle_head128 = getelementptr inbounds %struct.dmm, ptr %98, i32 0, i32 9
  %101 = ptrtoint ptr %idle_head128 to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %idle_head128, align 4
  %call.i.i286 = call zeroext i1 @__list_add_valid(ptr noundef %idle_node, ptr noundef %idle_head128, ptr noundef %102) #11
  br i1 %call.i.i286, label %if.end.i.i287, label %for.body.list_add.exit_crit_edge

for.body.list_add.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i287:                                    ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %102, i32 0, i32 1
  %103 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %103)
  store ptr %idle_node, ptr %prev1.i.i, align 4
  %104 = ptrtoint ptr %idle_node to i32
  call void @__asan_store4_noabort(i32 %104)
  store ptr %102, ptr %idle_node, align 4
  %prev3.i.i = getelementptr %struct.refill_engine, ptr %100, i32 %i.0338, i32 8, i32 1
  %105 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %105)
  store ptr %idle_head128, ptr %prev3.i.i, align 4
  %106 = ptrtoint ptr %idle_head128 to i32
  call void @__asan_store4_noabort(i32 %106)
  store volatile ptr %idle_node, ptr %idle_head128, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i287, %for.body.list_add.exit_crit_edge
  %inc129 = add nuw nsw i32 %i.0338, 1
  %107 = load ptr, ptr @omap_dmm, align 4
  %num_engines108 = getelementptr inbounds %struct.dmm, ptr %107, i32 0, i32 11
  %108 = ptrtoint ptr %num_engines108 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load i32, ptr %num_engines108, align 4
  %cmp109 = icmp slt i32 %inc129, %109
  br i1 %cmp109, label %list_add.exit.for.body_crit_edge, label %list_add.exit.for.end_crit_edge

list_add.exit.for.end_crit_edge:                  ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

list_add.exit.for.body_crit_edge:                 ; preds = %list_add.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %list_add.exit.for.end_crit_edge, %for.cond.preheader.for.end_crit_edge
  %.lcssa335 = phi ptr [ %79, %for.cond.preheader.for.end_crit_edge ], [ %107, %list_add.exit.for.end_crit_edge ]
  %num_lut130 = getelementptr inbounds %struct.dmm, ptr %.lcssa335, i32 0, i32 17
  %110 = ptrtoint ptr %num_lut130 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %num_lut130, align 4
  %112 = call { i32, i1 } @llvm.umul.with.overflow.i32(i32 %111, i32 4) #11
  %113 = extractvalue { i32, i1 } %112, 1
  br i1 %113, label %kcalloc.exit320.thread, label %if.end7.i.i318, !prof !198

kcalloc.exit320.thread:                           ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  %114 = load ptr, ptr @omap_dmm, align 4
  %tcm331 = getelementptr inbounds %struct.dmm, ptr %114, i32 0, i32 18
  %115 = ptrtoint ptr %tcm331 to i32
  call void @__asan_store4_noabort(i32 %115)
  store ptr null, ptr %tcm331, align 4
  br label %fail

if.end7.i.i318:                                   ; preds = %for.end
  %116 = extractvalue { i32, i1 } %112, 0
  %call8.i.i317 = call noalias align 128 ptr @__kmalloc(i32 noundef %116, i32 noundef 3520) #16
  %117 = load ptr, ptr @omap_dmm, align 4
  %tcm = getelementptr inbounds %struct.dmm, ptr %117, i32 0, i32 18
  %118 = ptrtoint ptr %tcm to i32
  call void @__asan_store4_noabort(i32 %118)
  store ptr %call8.i.i317, ptr %tcm, align 4
  %tobool133.not = icmp eq ptr %call8.i.i317, null
  br i1 %tobool133.not, label %if.end7.i.i318.fail_crit_edge, label %for.cond136.preheader

if.end7.i.i318.fail_crit_edge:                    ; preds = %if.end7.i.i318
  call void @__sanitizer_cov_trace_pc() #13
  br label %fail

for.cond136.preheader:                            ; preds = %if.end7.i.i318
  %119 = load ptr, ptr @omap_dmm, align 4
  %num_lut137340 = getelementptr inbounds %struct.dmm, ptr %119, i32 0, i32 17
  %120 = ptrtoint ptr %num_lut137340 to i32
  call void @__asan_load4_noabort(i32 %120)
  %121 = load i32, ptr %num_lut137340, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %121)
  %cmp138341 = icmp sgt i32 %121, 0
  br i1 %cmp138341, label %for.cond136.preheader.for.body139_crit_edge, label %for.cond136.preheader.for.end159_crit_edge

for.cond136.preheader.for.end159_crit_edge:       ; preds = %for.cond136.preheader
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end159

for.cond136.preheader.for.body139_crit_edge:      ; preds = %for.cond136.preheader
  br label %for.body139

for.body139:                                      ; preds = %if.end154.for.body139_crit_edge, %for.cond136.preheader.for.body139_crit_edge
  %122 = phi ptr [ %135, %if.end154.for.body139_crit_edge ], [ %119, %for.cond136.preheader.for.body139_crit_edge ]
  %i.1342 = phi i32 [ %inc158, %if.end154.for.body139_crit_edge ], [ 0, %for.cond136.preheader.for.body139_crit_edge ]
  %container_width140 = getelementptr inbounds %struct.dmm, ptr %122, i32 0, i32 13
  %123 = ptrtoint ptr %container_width140 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load i32, ptr %container_width140, align 4
  %conv = trunc i32 %124 to i16
  %container_height141 = getelementptr inbounds %struct.dmm, ptr %122, i32 0, i32 14
  %125 = ptrtoint ptr %container_height141 to i32
  call void @__asan_load4_noabort(i32 %125)
  %126 = load i32, ptr %container_height141, align 4
  %conv142 = trunc i32 %126 to i16
  %call143 = call ptr @sita_init(i16 noundef zeroext %conv, i16 noundef zeroext %conv142) #11
  %127 = load ptr, ptr @omap_dmm, align 4
  %tcm144 = getelementptr inbounds %struct.dmm, ptr %127, i32 0, i32 18
  %128 = ptrtoint ptr %tcm144 to i32
  call void @__asan_load4_noabort(i32 %128)
  %129 = load ptr, ptr %tcm144, align 4
  %arrayidx145 = getelementptr ptr, ptr %129, i32 %i.1342
  %130 = ptrtoint ptr %arrayidx145 to i32
  call void @__asan_store4_noabort(i32 %130)
  store ptr %call143, ptr %arrayidx145, align 4
  %131 = load ptr, ptr %tcm144, align 4
  %arrayidx147 = getelementptr ptr, ptr %131, i32 %i.1342
  %132 = ptrtoint ptr %arrayidx147 to i32
  call void @__asan_load4_noabort(i32 %132)
  %133 = load ptr, ptr %arrayidx147, align 4
  %tobool148.not = icmp eq ptr %133, null
  br i1 %tobool148.not, label %do.end152, label %if.end154

do.end152:                                        ; preds = %for.body139
  call void @__sanitizer_cov_trace_pc() #13
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.67) #14
  br label %fail

if.end154:                                        ; preds = %for.body139
  %lut_id = getelementptr inbounds %struct.tcm, ptr %133, i32 0, i32 2
  %134 = ptrtoint ptr %lut_id to i32
  call void @__asan_store4_noabort(i32 %134)
  store i32 %i.1342, ptr %lut_id, align 4
  %inc158 = add nuw nsw i32 %i.1342, 1
  %135 = load ptr, ptr @omap_dmm, align 4
  %num_lut137 = getelementptr inbounds %struct.dmm, ptr %135, i32 0, i32 17
  %136 = ptrtoint ptr %num_lut137 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load i32, ptr %num_lut137, align 4
  %cmp138 = icmp slt i32 %inc158, %137
  br i1 %cmp138, label %if.end154.for.body139_crit_edge, label %if.end154.for.end159_crit_edge

if.end154.for.end159_crit_edge:                   ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end159

if.end154.for.body139_crit_edge:                  ; preds = %if.end154
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body139

for.end159:                                       ; preds = %if.end154.for.end159_crit_edge, %for.cond136.preheader.for.end159_crit_edge
  %.lcssa333 = phi ptr [ %119, %for.cond136.preheader.for.end159_crit_edge ], [ %135, %if.end154.for.end159_crit_edge ]
  %tcm160 = getelementptr inbounds %struct.dmm, ptr %.lcssa333, i32 0, i32 18
  %138 = ptrtoint ptr %tcm160 to i32
  call void @__asan_load4_noabort(i32 %138)
  %139 = load ptr, ptr %tcm160, align 4
  %140 = ptrtoint ptr %139 to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %139, align 4
  store ptr %141, ptr @containers, align 4
  store ptr %141, ptr getelementptr inbounds ([4 x ptr], ptr @containers, i32 0, i32 1), align 4
  store ptr %141, ptr getelementptr inbounds ([4 x ptr], ptr @containers, i32 0, i32 2), align 4
  %container_height166 = getelementptr inbounds %struct.dmm, ptr %.lcssa333, i32 0, i32 14
  %142 = ptrtoint ptr %container_height166 to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load i32, ptr %container_height166, align 4
  %lut_height167 = getelementptr inbounds %struct.dmm, ptr %.lcssa333, i32 0, i32 16
  %144 = ptrtoint ptr %lut_height167 to i32
  call void @__asan_load4_noabort(i32 %144)
  %145 = load i32, ptr %lut_height167, align 4
  call void @__sanitizer_cov_trace_cmp4(i32 %143, i32 %145)
  %cmp168.not = icmp eq i32 %143, %145
  br i1 %cmp168.not, label %if.else178, label %if.then170

if.then170:                                       ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx172 = getelementptr ptr, ptr %139, i32 1
  %146 = ptrtoint ptr %arrayidx172 to i32
  call void @__asan_load4_noabort(i32 %146)
  %147 = load ptr, ptr %arrayidx172, align 4
  store ptr %147, ptr getelementptr inbounds ([4 x ptr], ptr @containers, i32 0, i32 3), align 4
  %y_offset = getelementptr inbounds %struct.tcm, ptr %147, i32 0, i32 3
  %148 = ptrtoint ptr %y_offset to i32
  call void @__asan_store4_noabort(i32 %148)
  store i32 128, ptr %y_offset, align 4
  %149 = ptrtoint ptr %tcm160 to i32
  call void @__asan_load4_noabort(i32 %149)
  %150 = load ptr, ptr %tcm160, align 4
  %arrayidx176 = getelementptr ptr, ptr %150, i32 1
  %151 = ptrtoint ptr %arrayidx176 to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %arrayidx176, align 4
  %lut_id177 = getelementptr inbounds %struct.tcm, ptr %152, i32 0, i32 2
  %153 = ptrtoint ptr %lut_id177 to i32
  call void @__asan_store4_noabort(i32 %153)
  store i32 0, ptr %lut_id177, align 4
  br label %if.end181

if.else178:                                       ; preds = %for.end159
  call void @__sanitizer_cov_trace_pc() #13
  store ptr %141, ptr getelementptr inbounds ([4 x ptr], ptr @containers, i32 0, i32 3), align 4
  br label %if.end181

if.end181:                                        ; preds = %if.else178, %if.then170
  %container_width183 = getelementptr inbounds %struct.dmm, ptr %.lcssa333, i32 0, i32 13
  %154 = ptrtoint ptr %container_width183 to i32
  call void @__asan_load4_noabort(i32 %154)
  %155 = load i32, ptr %container_width183, align 4
  %156 = trunc i32 %155 to i16
  %conv184 = add i16 %156, -1
  %157 = ptrtoint ptr %container_height166 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %container_height166, align 4
  %159 = trunc i32 %158 to i16
  %conv187 = add i16 %159, -1
  %160 = ptrtoint ptr %area to i32
  call void @__asan_store1_noabort(i32 %160)
  store i8 0, ptr %area, align 4
  %.compoundliteral.sroa.2236.0.area.sroa_idx = getelementptr inbounds i8, ptr %area, i32 4
  %.compoundliteral.sroa.3.0.area.sroa_idx = getelementptr inbounds i8, ptr %area, i32 8
  %161 = ptrtoint ptr %.compoundliteral.sroa.3.0.area.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 0, ptr %.compoundliteral.sroa.3.0.area.sroa_idx, align 4
  %.compoundliteral.sroa.4.0.area.sroa_idx = getelementptr inbounds i8, ptr %area, i32 12
  %162 = ptrtoint ptr %.compoundliteral.sroa.4.0.area.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %162)
  store i16 %conv184, ptr %.compoundliteral.sroa.4.0.area.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.area.sroa_idx = getelementptr inbounds i8, ptr %area, i32 14
  %163 = ptrtoint ptr %.compoundliteral.sroa.5.0.area.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %163)
  store i16 %conv187, ptr %.compoundliteral.sroa.5.0.area.sroa_idx, align 2
  %irq188 = getelementptr inbounds %struct.dmm, ptr %.lcssa333, i32 0, i32 3
  %164 = ptrtoint ptr %irq188 to i32
  call void @__asan_load4_noabort(i32 %164)
  %165 = load i32, ptr %irq188, align 4
  %call.i321 = call i32 @request_threaded_irq(i32 noundef %165, ptr noundef nonnull @omap_dmm_irq_handler, ptr noundef null, i32 noundef 128, ptr noundef nonnull @.str.69, ptr noundef %.lcssa333) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i321)
  %tobool190.not = icmp eq i32 %call.i321, 0
  %166 = load ptr, ptr @omap_dmm, align 4
  br i1 %tobool190.not, label %if.end198, label %do.end194

do.end194:                                        ; preds = %if.end181
  call void @__sanitizer_cov_trace_pc() #13
  %irq196 = getelementptr inbounds %struct.dmm, ptr %166, i32 0, i32 3
  %167 = ptrtoint ptr %irq196 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load i32, ptr %irq196, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.71, i32 noundef %168, i32 noundef %call.i321) #14
  %169 = load ptr, ptr @omap_dmm, align 4
  %irq197 = getelementptr inbounds %struct.dmm, ptr %169, i32 0, i32 3
  %170 = ptrtoint ptr %irq197 to i32
  call void @__asan_store4_noabort(i32 %170)
  store i32 -1, ptr %irq197, align 4
  br label %fail

if.end198:                                        ; preds = %if.end181
  call fastcc void @dmm_write(ptr noundef %166, i32 noundef 2122219134, i32 noundef 1184)
  %171 = load ptr, ptr @omap_dmm, align 4
  %num_lut200344 = getelementptr inbounds %struct.dmm, ptr %171, i32 0, i32 17
  %172 = ptrtoint ptr %num_lut200344 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load i32, ptr %num_lut200344, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %173)
  %cmp201345 = icmp sgt i32 %173, 0
  br i1 %cmp201345, label %if.end198.for.body203_crit_edge, label %if.end198.do.end220_crit_edge

if.end198.do.end220_crit_edge:                    ; preds = %if.end198
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end220

if.end198.for.body203_crit_edge:                  ; preds = %if.end198
  br label %for.body203

for.body203:                                      ; preds = %for.inc215.for.body203_crit_edge, %if.end198.for.body203_crit_edge
  %174 = phi ptr [ %183, %for.inc215.for.body203_crit_edge ], [ %171, %if.end198.for.body203_crit_edge ]
  %i.2346 = phi i32 [ %inc216, %for.inc215.for.body203_crit_edge ], [ 0, %if.end198.for.body203_crit_edge ]
  %tcm204 = getelementptr inbounds %struct.dmm, ptr %174, i32 0, i32 18
  %175 = ptrtoint ptr %tcm204 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %tcm204, align 4
  %arrayidx205 = getelementptr ptr, ptr %176, i32 %i.2346
  %177 = ptrtoint ptr %arrayidx205 to i32
  call void @__asan_load4_noabort(i32 %177)
  %178 = load ptr, ptr %arrayidx205, align 4
  %179 = ptrtoint ptr %.compoundliteral.sroa.2236.0.area.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %179)
  store ptr %178, ptr %.compoundliteral.sroa.2236.0.area.sroa_idx, align 4
  %call207 = call fastcc i32 @fill(ptr noundef nonnull %area, ptr noundef null, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call207)
  %tobool208.not = icmp eq i32 %call207, 0
  br i1 %tobool208.not, label %for.body203.for.inc215_crit_edge, label %do.end212

for.body203.for.inc215_crit_edge:                 ; preds = %for.body203
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc215

do.end212:                                        ; preds = %for.body203
  call void @__sanitizer_cov_trace_pc() #13
  %180 = load ptr, ptr @omap_dmm, align 4
  %181 = ptrtoint ptr %180 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %180, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %182, ptr noundef nonnull @.str.74) #14
  br label %for.inc215

for.inc215:                                       ; preds = %do.end212, %for.body203.for.inc215_crit_edge
  %inc216 = add nuw nsw i32 %i.2346, 1
  %183 = load ptr, ptr @omap_dmm, align 4
  %num_lut200 = getelementptr inbounds %struct.dmm, ptr %183, i32 0, i32 17
  %184 = ptrtoint ptr %num_lut200 to i32
  call void @__asan_load4_noabort(i32 %184)
  %185 = load i32, ptr %num_lut200, align 4
  %cmp201 = icmp slt i32 %inc216, %185
  br i1 %cmp201, label %for.inc215.for.body203_crit_edge, label %for.inc215.do.end220_crit_edge

for.inc215.do.end220_crit_edge:                   ; preds = %for.inc215
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end220

for.inc215.for.body203_crit_edge:                 ; preds = %for.inc215
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body203

do.end220:                                        ; preds = %for.inc215.do.end220_crit_edge, %if.end198.do.end220_crit_edge
  %.lcssa = phi ptr [ %171, %if.end198.do.end220_crit_edge ], [ %183, %for.inc215.do.end220_crit_edge ]
  %186 = ptrtoint ptr %.lcssa to i32
  call void @__asan_load4_noabort(i32 %186)
  %187 = load ptr, ptr %.lcssa, align 4
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %187, ptr noundef nonnull @.str.77) #14
  br label %cleanup230

fail:                                             ; preds = %do.end194, %do.end152, %if.end7.i.i318.fail_crit_edge, %kcalloc.exit320.thread, %if.end7.i.i.fail_crit_edge, %kcalloc.exit.thread, %do.end99, %if.end83.fail_crit_edge, %do.end81, %do.end38, %do.end30, %do.end20, %cleanup, %entry.fail_crit_edge
  %ret.2 = phi i32 [ -19, %cleanup ], [ -14, %do.end38 ], [ %call85, %if.end83.fail_crit_edge ], [ -12, %do.end152 ], [ %call.i321, %do.end194 ], [ -12, %do.end99 ], [ -12, %do.end81 ], [ -14, %do.end30 ], [ -14, %do.end20 ], [ -14, %entry.fail_crit_edge ], [ -12, %if.end7.i.i.fail_crit_edge ], [ -12, %if.end7.i.i318.fail_crit_edge ], [ -12, %kcalloc.exit.thread ], [ -12, %kcalloc.exit320.thread ]
  %call222 = call i32 @omap_dmm_remove(ptr noundef %dev)
  br label %cleanup230

cleanup230:                                       ; preds = %fail, %do.end220
  %retval.0 = phi i32 [ %ret.2, %fail ], [ 0, %do.end220 ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %area) #11
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dmm_remove(ptr nocapture noundef readnone %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %0 = load ptr, ptr @omap_dmm, align 4
  %tobool.not = icmp eq ptr %0, null
  br i1 %tobool.not, label %entry.if.end48_crit_edge, label %if.then

entry.if.end48_crit_edge:                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end48

if.then:                                          ; preds = %entry
  tail call fastcc void @dmm_write(ptr noundef nonnull %0, i32 noundef 2122219134, i32 noundef 1200)
  %1 = load ptr, ptr @omap_dmm, align 4
  %irq = getelementptr inbounds %struct.dmm, ptr %1, i32 0, i32 3
  %2 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %irq, align 4
  %call = tail call ptr @free_irq(i32 noundef %3, ptr noundef %1) #11
  %call3 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #11
  %4 = load ptr, ptr @omap_dmm, align 4
  %alloc_head = getelementptr inbounds %struct.dmm, ptr %4, i32 0, i32 19
  %5 = ptrtoint ptr %alloc_head to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %alloc_head, align 4
  %cmp13.not62 = icmp eq ptr %6, %alloc_head
  br i1 %cmp13.not62, label %if.then.for.end_crit_edge, label %if.then.for.body_crit_edge

if.then.for.body_crit_edge:                       ; preds = %if.then
  br label %for.body

if.then.for.end_crit_edge:                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body:                                         ; preds = %list_del.exit.for.body_crit_edge, %if.then.for.body_crit_edge
  %block.063 = phi ptr [ %_block.0, %list_del.exit.for.body_crit_edge ], [ %6, %if.then.for.body_crit_edge ]
  %7 = ptrtoint ptr %block.063 to i32
  call void @__asan_load4_noabort(i32 %7)
  %_block.0 = load ptr, ptr %block.063, align 4
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %block.063) #11
  br i1 %call.i.i, label %if.end.i.i, label %for.body.list_del.exit_crit_edge

for.body.list_del.exit_crit_edge:                 ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_del.exit

if.end.i.i:                                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %block.063, i32 0, i32 1
  %8 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %prev.i.i, align 4
  %10 = ptrtoint ptr %block.063 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %block.063, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %11, i32 0, i32 1
  %12 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %9, ptr %prev1.i.i.i, align 4
  %13 = ptrtoint ptr %9 to i32
  call void @__asan_store4_noabort(i32 %13)
  store volatile ptr %11, ptr %9, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %for.body.list_del.exit_crit_edge
  %14 = ptrtoint ptr %block.063 to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr inttoptr (i32 256 to ptr), ptr %block.063, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %block.063, i32 0, i32 1
  %15 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  tail call void @kfree(ptr noundef %block.063) #11
  %16 = load ptr, ptr @omap_dmm, align 4
  %alloc_head12 = getelementptr inbounds %struct.dmm, ptr %16, i32 0, i32 19
  %cmp13.not = icmp eq ptr %_block.0, %alloc_head12
  br i1 %cmp13.not, label %list_del.exit.for.end_crit_edge, label %list_del.exit.for.body_crit_edge

list_del.exit.for.body_crit_edge:                 ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

list_del.exit.for.end_crit_edge:                  ; preds = %list_del.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.end:                                          ; preds = %list_del.exit.for.end_crit_edge, %if.then.for.end_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call3) #11
  %17 = load ptr, ptr @omap_dmm, align 4
  %num_lut65 = getelementptr inbounds %struct.dmm, ptr %17, i32 0, i32 17
  %18 = ptrtoint ptr %num_lut65 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load i32, ptr %num_lut65, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %19)
  %cmp2266 = icmp sgt i32 %19, 0
  br i1 %cmp2266, label %for.end.for.body24_crit_edge, label %for.end.for.end34_crit_edge

for.end.for.end34_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34

for.end.for.body24_crit_edge:                     ; preds = %for.end
  br label %for.body24

for.body24:                                       ; preds = %for.inc33.for.body24_crit_edge, %for.end.for.body24_crit_edge
  %20 = phi ptr [ %27, %for.inc33.for.body24_crit_edge ], [ %17, %for.end.for.body24_crit_edge ]
  %i.067 = phi i32 [ %inc, %for.inc33.for.body24_crit_edge ], [ 0, %for.end.for.body24_crit_edge ]
  %tcm = getelementptr inbounds %struct.dmm, ptr %20, i32 0, i32 18
  %21 = ptrtoint ptr %tcm to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %tcm, align 4
  %tobool25.not = icmp eq ptr %22, null
  br i1 %tobool25.not, label %for.body24.for.inc33_crit_edge, label %land.lhs.true

for.body24.for.inc33_crit_edge:                   ; preds = %for.body24
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc33

land.lhs.true:                                    ; preds = %for.body24
  %arrayidx = getelementptr ptr, ptr %22, i32 %i.067
  %23 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx, align 4
  %tobool27.not = icmp eq ptr %24, null
  br i1 %tobool27.not, label %land.lhs.true.for.inc33_crit_edge, label %if.then28

land.lhs.true.for.inc33_crit_edge:                ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc33

if.then28:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #13
  %deinit = getelementptr inbounds %struct.tcm, ptr %24, i32 0, i32 10
  %25 = ptrtoint ptr %deinit to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %deinit, align 4
  tail call void %26(ptr noundef nonnull %24) #11
  br label %for.inc33

for.inc33:                                        ; preds = %if.then28, %land.lhs.true.for.inc33_crit_edge, %for.body24.for.inc33_crit_edge
  %inc = add nuw nsw i32 %i.067, 1
  %27 = load ptr, ptr @omap_dmm, align 4
  %num_lut = getelementptr inbounds %struct.dmm, ptr %27, i32 0, i32 17
  %28 = ptrtoint ptr %num_lut to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %num_lut, align 4
  %cmp22 = icmp slt i32 %inc, %29
  br i1 %cmp22, label %for.inc33.for.body24_crit_edge, label %for.inc33.for.end34_crit_edge

for.inc33.for.end34_crit_edge:                    ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end34

for.inc33.for.body24_crit_edge:                   ; preds = %for.inc33
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body24

for.end34:                                        ; preds = %for.inc33.for.end34_crit_edge, %for.end.for.end34_crit_edge
  %.lcssa = phi ptr [ %17, %for.end.for.end34_crit_edge ], [ %27, %for.inc33.for.end34_crit_edge ]
  %tcm35 = getelementptr inbounds %struct.dmm, ptr %.lcssa, i32 0, i32 18
  %30 = ptrtoint ptr %tcm35 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %tcm35, align 4
  tail call void @kfree(ptr noundef %31) #11
  %32 = load ptr, ptr @omap_dmm, align 4
  %engines = getelementptr inbounds %struct.dmm, ptr %32, i32 0, i32 10
  %33 = ptrtoint ptr %engines to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %engines, align 4
  tail call void @kfree(ptr noundef %34) #11
  %35 = load ptr, ptr @omap_dmm, align 4
  %refill_va = getelementptr inbounds %struct.dmm, ptr %35, i32 0, i32 6
  %36 = ptrtoint ptr %refill_va to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %refill_va, align 4
  %tobool36.not = icmp eq ptr %37, null
  br i1 %tobool36.not, label %for.end34.if.end40_crit_edge, label %if.then37

for.end34.if.end40_crit_edge:                     ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end40

if.then37:                                        ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #13
  %38 = ptrtoint ptr %35 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %35, align 4
  %num_engines = getelementptr inbounds %struct.dmm, ptr %35, i32 0, i32 11
  %40 = ptrtoint ptr %num_engines to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %num_engines, align 4
  %mul = mul i32 %41, 131456
  %refill_pa = getelementptr inbounds %struct.dmm, ptr %35, i32 0, i32 7
  %42 = ptrtoint ptr %refill_pa to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %refill_pa, align 4
  tail call void @dma_free_attrs(ptr noundef %39, i32 noundef %mul, ptr noundef nonnull %37, i32 noundef %43, i32 noundef 4) #11
  br label %if.end40

if.end40:                                         ; preds = %if.then37, %for.end34.if.end40_crit_edge
  %44 = load ptr, ptr @omap_dmm, align 4
  %dummy_page = getelementptr inbounds %struct.dmm, ptr %44, i32 0, i32 4
  %45 = ptrtoint ptr %dummy_page to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %dummy_page, align 4
  %tobool41.not = icmp eq ptr %46, null
  br i1 %tobool41.not, label %if.end40.if.end44_crit_edge, label %if.then42

if.end40.if.end44_crit_edge:                      ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end44

if.then42:                                        ; preds = %if.end40
  call void @__sanitizer_cov_trace_pc() #13
  tail call void @__free_pages(ptr noundef nonnull %46, i32 noundef 0) #11
  br label %if.end44

if.end44:                                         ; preds = %if.then42, %if.end40.if.end44_crit_edge
  %47 = load ptr, ptr @omap_dmm, align 4
  %dmm_workaround = getelementptr inbounds %struct.dmm, ptr %47, i32 0, i32 21
  %48 = ptrtoint ptr %dmm_workaround to i32
  call void @__asan_load1_noabort(i32 %48)
  %49 = load i8, ptr %dmm_workaround, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %49)
  %tobool45.not = icmp eq i8 %49, 0
  br i1 %tobool45.not, label %if.end44.if.end47_crit_edge, label %if.then46

if.end44.if.end47_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end47

if.then46:                                        ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #13
  %wa_dma_chan.i = getelementptr inbounds %struct.dmm, ptr %47, i32 0, i32 25
  %50 = ptrtoint ptr %wa_dma_chan.i to i32
  call void @__asan_load4_noabort(i32 %50)
  %51 = load ptr, ptr %wa_dma_chan.i, align 4
  tail call void @dma_release_channel(ptr noundef %51) #11
  %52 = ptrtoint ptr %47 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load ptr, ptr %47, align 4
  %wa_dma_data.i = getelementptr inbounds %struct.dmm, ptr %47, i32 0, i32 23
  %54 = ptrtoint ptr %wa_dma_data.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %wa_dma_data.i, align 4
  %wa_dma_handle.i = getelementptr inbounds %struct.dmm, ptr %47, i32 0, i32 24
  %56 = ptrtoint ptr %wa_dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load i32, ptr %wa_dma_handle.i, align 4
  tail call void @dma_free_attrs(ptr noundef %53, i32 noundef 4, ptr noundef %55, i32 noundef %57, i32 noundef 0) #11
  br label %if.end47

if.end47:                                         ; preds = %if.then46, %if.end44.if.end47_crit_edge
  %58 = load ptr, ptr @omap_dmm, align 4
  %base = getelementptr inbounds %struct.dmm, ptr %58, i32 0, i32 2
  %59 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %base, align 4
  tail call void @iounmap(ptr noundef %60) #11
  %61 = load ptr, ptr @omap_dmm, align 4
  tail call void @kfree(ptr noundef %61) #11
  store ptr null, ptr @omap_dmm, align 4
  br label %if.end48

if.end48:                                         ; preds = %if.end47, %entry.if.end48_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @init_wait_entry(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @prepare_to_wait_event(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @schedule() local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @finish_wait(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__kasan_check_write(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.prefetch.p0(ptr nocapture readonly, i32 immarg, i32 immarg, i32) #5

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @dmm_write(ptr noundef %dmm, i32 noundef %val, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dmm_workaround = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 21
  %0 = ptrtoint ptr %dmm_workaround to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dmm_workaround, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %do.body6, label %if.then

if.then:                                          ; preds = %entry
  %wa_lock = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wa_lock) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !215
  tail call void @arm_heavy_mb() #11
  %2 = tail call i32 @llvm.bswap.i32(i32 %val) #11
  %wa_dma_data.i = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 23
  %3 = ptrtoint ptr %wa_dma_data.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %wa_dma_data.i, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %4, i32 %2) #11, !srcloc !216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !217
  tail call void @arm_heavy_mb() #11
  %wa_dma_handle.i = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 24
  %5 = ptrtoint ptr %wa_dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %wa_dma_handle.i, align 4
  %phys_base.i = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 1
  %7 = ptrtoint ptr %phys_base.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load i32, ptr %phys_base.i, align 4
  %add.i = add i32 %8, %reg
  %call.i = tail call fastcc i32 @dmm_dma_copy(ptr noundef %dmm, i32 noundef %6, i32 noundef %add.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.then.dmm_write_wa.exit_crit_edge, label %do.end6.i

if.then.dmm_write_wa.exit_crit_edge:              ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  br label %dmm_write_wa.exit

do.end6.i:                                        ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %9 = ptrtoint ptr %dmm to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %dmm, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.16) #14
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !218
  tail call void @arm_heavy_mb() #11
  %base.i = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 2
  %11 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %12, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr.i, i32 %2) #11, !srcloc !216
  br label %dmm_write_wa.exit

dmm_write_wa.exit:                                ; preds = %do.end6.i, %if.then.dmm_write_wa.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wa_lock, i32 noundef %call2) #11
  br label %if.end

do.body6:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !219
  tail call void @arm_heavy_mb() #11
  %13 = tail call i32 @llvm.bswap.i32(i32 %val)
  %base = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 2
  %14 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %15, i32 %reg
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr, i32 %13) #11, !srcloc !216
  br label %if.end

if.end:                                           ; preds = %do.body6, %dmm_write_wa.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @wait_status(ptr nocapture noundef readonly %engine, i32 noundef %wait_mask) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dmm1 = getelementptr inbounds %struct.refill_engine, ptr %engine, i32 0, i32 1
  %0 = ptrtoint ptr %dmm1 to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %dmm1, align 4
  %2 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %engine, align 4
  %arrayidx28 = getelementptr [4 x i32], ptr @reg, i32 0, i32 %3
  %4 = ptrtoint ptr %arrayidx28 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %arrayidx28, align 4
  %call29 = tail call fastcc i32 @dmm_read(ptr noundef %1, i32 noundef %5)
  %and30 = and i32 %call29, 31744
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and30)
  %tobool.not31 = icmp eq i32 %and30, 0
  br i1 %tobool.not31, label %entry.if.end_crit_edge, label %entry.do.end_crit_edge

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  br label %if.end

do.end:                                           ; preds = %if.end13.do.end_crit_edge, %entry.do.end_crit_edge
  %call.lcssa = phi i32 [ %call29, %entry.do.end_crit_edge ], [ %call, %if.end13.do.end_crit_edge ]
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %8 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load i32, ptr %engine, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.26, ptr noundef nonnull @.str.27, i32 noundef %9, i32 noundef %call.lcssa) #14
  br label %cleanup

if.end:                                           ; preds = %if.end13.if.end_crit_edge, %entry.if.end_crit_edge
  %call33 = phi i32 [ %call, %if.end13.if.end_crit_edge ], [ %call29, %entry.if.end_crit_edge ]
  %i.032 = phi i32 [ %dec, %if.end13.if.end_crit_edge ], [ 1000, %entry.if.end_crit_edge ]
  %and3 = and i32 %call33, %wait_mask
  call void @__sanitizer_cov_trace_cmp4(i32 %and3, i32 %wait_mask)
  %cmp = icmp eq i32 %and3, %wait_mask
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end5

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %dec = add nsw i32 %i.032, -1
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec)
  %cmp6 = icmp eq i32 %dec, 0
  br i1 %cmp6, label %do.end10, label %if.end13

do.end10:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %1, align 4
  %12 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load i32, ptr %engine, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.29, ptr noundef nonnull @.str.27, i32 noundef %13, i32 noundef %call33) #14
  br label %cleanup

if.end13:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %14 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %14(i32 noundef 214748) #11
  %15 = ptrtoint ptr %engine to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load i32, ptr %engine, align 4
  %arrayidx = getelementptr [4 x i32], ptr @reg, i32 0, i32 %16
  %17 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %17)
  %18 = load i32, ptr %arrayidx, align 4
  %call = tail call fastcc i32 @dmm_read(ptr noundef %1, i32 noundef %18)
  %and = and i32 %call, 31744
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %if.end13.if.end_crit_edge, label %if.end13.do.end_crit_edge

if.end13.do.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

if.end13.if.end_crit_edge:                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

cleanup:                                          ; preds = %do.end10, %if.end.cleanup_crit_edge, %do.end
  %retval.0 = phi i32 [ -14, %do.end ], [ -110, %do.end10 ], [ 0, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @wait_for_completion_timeout(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc void @release_engine(ptr noundef %engine) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef nonnull @list_lock) #11
  %idle_node = getelementptr inbounds %struct.refill_engine, ptr %engine, i32 0, i32 8
  %0 = load ptr, ptr @omap_dmm, align 4
  %idle_head = getelementptr inbounds %struct.dmm, ptr %0, i32 0, i32 9
  %1 = ptrtoint ptr %idle_head to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %idle_head, align 4
  %call.i.i5 = tail call zeroext i1 @__list_add_valid(ptr noundef %idle_node, ptr noundef %idle_head, ptr noundef %2) #11
  br i1 %call.i.i5, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %2, i32 0, i32 1
  %3 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %idle_node, ptr %prev1.i.i, align 4
  %4 = ptrtoint ptr %idle_node to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %2, ptr %idle_node, align 4
  %prev3.i.i = getelementptr inbounds %struct.refill_engine, ptr %engine, i32 0, i32 8, i32 1
  %5 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %idle_head, ptr %prev3.i.i, align 4
  %6 = ptrtoint ptr %idle_head to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %idle_node, ptr %idle_head, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef nonnull @list_lock, i32 noundef %call2) #11
  %7 = load ptr, ptr @omap_dmm, align 4
  %engine_counter = getelementptr inbounds %struct.dmm, ptr %7, i32 0, i32 12
  %call.i.i = tail call zeroext i1 @__kasan_check_write(ptr noundef %engine_counter, i32 noundef 4) #11
  tail call void @llvm.prefetch.p0(ptr %engine_counter, i32 1, i32 3, i32 1) #11
  %8 = tail call { i32, i32 } asm sideeffect "@ atomic_add\0A1:\09ldrex\09$0, [$3]\0A\09add\09$0, $0, $4\0A\09strex\09$1, $0, [$3]\0A\09teq\09$1, #0\0A\09bne\091b", "=&r,=&r,=*Qo,r,Ir,*Qo,~{cc}"(ptr elementtype(i32) %engine_counter, ptr %engine_counter, i32 1, ptr elementtype(i32) %engine_counter) #11, !srcloc !220
  %9 = load ptr, ptr @omap_dmm, align 4
  %engine_queue = getelementptr inbounds %struct.dmm, ptr %9, i32 0, i32 8
  tail call void @__wake_up(ptr noundef %engine_queue, i32 noundef 1, i32 noundef 1, ptr noundef null) #11
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmm_dma_copy(ptr nocapture noundef readonly %dmm, i32 noundef %src, i32 noundef %dst) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %wa_dma_chan = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 25
  %0 = ptrtoint ptr %wa_dma_chan to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wa_dma_chan, align 4
  %tobool.not.i = icmp eq ptr %1, null
  br i1 %tobool.not.i, label %entry.do.end_crit_edge, label %lor.lhs.false.i

entry.do.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false.i:                                  ; preds = %entry
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %tobool1.not.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i, label %lor.lhs.false.i.do.end_crit_edge, label %lor.lhs.false2.i

lor.lhs.false.i.do.end_crit_edge:                 ; preds = %lor.lhs.false.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

lor.lhs.false2.i:                                 ; preds = %lor.lhs.false.i
  %device_prep_dma_memcpy.i = getelementptr inbounds %struct.dma_device, ptr %3, i32 0, i32 30
  %4 = ptrtoint ptr %device_prep_dma_memcpy.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %device_prep_dma_memcpy.i, align 4
  %tobool4.not.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i, label %lor.lhs.false2.i.do.end_crit_edge, label %dmaengine_prep_dma_memcpy.exit

lor.lhs.false2.i.do.end_crit_edge:                ; preds = %lor.lhs.false2.i
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

dmaengine_prep_dma_memcpy.exit:                   ; preds = %lor.lhs.false2.i
  %call.i = tail call ptr %5(ptr noundef nonnull %1, i32 noundef %dst, i32 noundef %src, i32 noundef 4, i32 noundef 0) #11
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %dmaengine_prep_dma_memcpy.exit.do.end_crit_edge, label %if.end

dmaengine_prep_dma_memcpy.exit.do.end_crit_edge:  ; preds = %dmaengine_prep_dma_memcpy.exit
  call void @__sanitizer_cov_trace_pc() #13
  br label %do.end

do.end:                                           ; preds = %dmaengine_prep_dma_memcpy.exit.do.end_crit_edge, %lor.lhs.false2.i.do.end_crit_edge, %lor.lhs.false.i.do.end_crit_edge, %entry.do.end_crit_edge
  %6 = ptrtoint ptr %dmm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmm, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.18) #14
  br label %cleanup

if.end:                                           ; preds = %dmaengine_prep_dma_memcpy.exit
  %tx_submit = getelementptr inbounds %struct.dma_async_tx_descriptor, ptr %call.i, i32 0, i32 4
  %8 = ptrtoint ptr %tx_submit to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %tx_submit, align 4
  %call1 = tail call i32 %9(ptr noundef nonnull %call.i) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call1)
  %tobool3.not = icmp sgt i32 %call1, -1
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  %10 = ptrtoint ptr %dmm to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %dmm, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.21) #14
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %wa_dma_chan to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wa_dma_chan, align 4
  %call11 = tail call i32 @dma_sync_wait(ptr noundef %13, i32 noundef %call1) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call11)
  %cmp.not = icmp eq i32 %call11, 0
  br i1 %cmp.not, label %if.end9.if.end17_crit_edge, label %do.end15

if.end9.if.end17_crit_edge:                       ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end17

do.end15:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #13
  %14 = ptrtoint ptr %dmm to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %dmm, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.24) #14
  br label %if.end17

if.end17:                                         ; preds = %do.end15, %if.end9.if.end17_crit_edge
  %16 = ptrtoint ptr %wa_dma_chan to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %wa_dma_chan, align 4
  %18 = ptrtoint ptr %17 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %17, align 4
  %device_terminate_all.i = getelementptr inbounds %struct.dma_device, ptr %19, i32 0, i32 47
  %20 = ptrtoint ptr %device_terminate_all.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %device_terminate_all.i, align 4
  %tobool.not.i30 = icmp eq ptr %21, null
  br i1 %tobool.not.i30, label %if.end17.cleanup_crit_edge, label %if.then.i

if.end17.cleanup_crit_edge:                       ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.then.i:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #13
  %call.i31 = tail call i32 %21(ptr noundef %17) #11
  br label %cleanup

cleanup:                                          ; preds = %if.then.i, %if.end17.cleanup_crit_edge, %do.end7, %do.end
  %retval.0 = phi i32 [ -5, %do.end7 ], [ -5, %do.end ], [ 0, %if.end17.cleanup_crit_edge ], [ 0, %if.then.i ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_sync_wait(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @dmm_read(ptr noundef %dmm, i32 noundef %reg) unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %dmm_workaround = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 21
  %0 = ptrtoint ptr %dmm_workaround to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %dmm_workaround, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %if.else, label %if.then

if.then:                                          ; preds = %entry
  %wa_lock = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 22
  %call2 = tail call i32 @_raw_spin_lock_irqsave(ptr noundef %wa_lock) #11
  %phys_base.i = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 1
  %2 = ptrtoint ptr %phys_base.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %phys_base.i, align 4
  %add.i = add i32 %3, %reg
  %wa_dma_handle.i = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 24
  %4 = ptrtoint ptr %wa_dma_handle.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load i32, ptr %wa_dma_handle.i, align 4
  %call.i = tail call fastcc i32 @dmm_dma_copy(ptr noundef %dmm, i32 noundef %add.i, i32 noundef %5) #11
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end.i, label %do.end.i

do.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  %6 = ptrtoint ptr %dmm to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %dmm, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.31) #14
  %base.i = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 2
  %8 = ptrtoint ptr %base.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %base.i, align 4
  %add.ptr.i = getelementptr i8, ptr %9, i32 %reg
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #11, !srcloc !202
  %11 = tail call i32 @llvm.bswap.i32(i32 %10) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !221
  br label %dmm_read_wa.exit

if.end.i:                                         ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #13
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !222
  %wa_dma_data.i = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 23
  %12 = ptrtoint ptr %wa_dma_data.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %wa_dma_data.i, align 4
  %14 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %13) #11, !srcloc !202
  %15 = tail call i32 @llvm.bswap.i32(i32 %14) #11
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !223
  br label %dmm_read_wa.exit

dmm_read_wa.exit:                                 ; preds = %if.end.i, %do.end.i
  %retval.0.i = phi i32 [ %11, %do.end.i ], [ %15, %if.end.i ]
  tail call void @_raw_spin_unlock_irqrestore(ptr noundef %wa_lock, i32 noundef %call2) #11
  br label %return

if.else:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  %base = getelementptr inbounds %struct.dmm, ptr %dmm, i32 0, i32 2
  %16 = ptrtoint ptr %base to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %base, align 4
  %add.ptr = getelementptr i8, ptr %17, i32 %reg
  %18 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr) #11, !srcloc !202
  %19 = tail call i32 @llvm.bswap.i32(i32 %18)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #11, !srcloc !224
  br label %return

return:                                           ; preds = %if.else, %dmm_read_wa.exit
  %retval.0 = phi i32 [ %retval.0.i, %dmm_read_wa.exit ], [ %19, %if.else ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__wake_up(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid allocsize(2)
declare dso_local noalias ptr @kmem_cache_alloc_trace(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #7

; Function Attrs: null_pointer_is_valid allocsize(0)
declare dso_local noalias ptr @__kmalloc(i32 noundef, i32 noundef) local_unnamed_addr #8

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_raw_spin_unlock_irqrestore(ptr noundef, i32 noundef) local_unnamed_addr #2 section ".spinlock.text"

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__drm_dbg(i32 noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare { i32, i1 } @llvm.umul.with.overflow.i32(i32, i32) #6

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #9

; Function Attrs: argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn
declare dso_local i32 @strlen(ptr nocapture noundef) local_unnamed_addr #10

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_waitqueue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @ioremap(i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @platform_get_irq(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_machine_is_compatible(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dma_set_coherent_mask(ptr noundef, i64 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sita_init(i16 noundef zeroext, i16 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dmm_irq_handler(i32 noundef %irq, ptr noundef %arg) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @dmm_read(ptr noundef %arg, i32 noundef 1168)
  tail call fastcc void @dmm_write(ptr noundef %arg, i32 noundef %call, i32 noundef 1168)
  %num_engines = getelementptr inbounds %struct.dmm, ptr %arg, i32 0, i32 11
  %0 = ptrtoint ptr %num_engines to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %num_engines, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %1)
  %cmp28 = icmp sgt i32 %1, 0
  br i1 %cmp28, label %for.body.lr.ph, label %entry.for.end_crit_edge

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

for.body.lr.ph:                                   ; preds = %entry
  %engines = getelementptr inbounds %struct.dmm, ptr %arg, i32 0, i32 10
  br label %for.body

for.body:                                         ; preds = %if.end12.for.body_crit_edge, %for.body.lr.ph
  %i.030 = phi i32 [ 0, %for.body.lr.ph ], [ %inc, %if.end12.for.body_crit_edge ]
  %status.029 = phi i32 [ %call, %for.body.lr.ph ], [ %shr, %if.end12.for.body_crit_edge ]
  %and = and i32 %status.029, 252
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool.not = icmp eq i32 %and, 0
  br i1 %tobool.not, label %for.body.if.end_crit_edge, label %do.end

for.body.if.end_crit_edge:                        ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  %2 = ptrtoint ptr %arg to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %arg, align 4
  %and1 = and i32 %status.029, 255
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.85, i32 noundef %i.030, i32 noundef %and1) #14
  br label %if.end

if.end:                                           ; preds = %do.end, %for.body.if.end_crit_edge
  %and2 = and i32 %status.029, 2
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and2)
  %tobool3.not = icmp eq i32 %and2, 0
  br i1 %tobool3.not, label %if.end.if.end12_crit_edge, label %if.then4

if.end.if.end12_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end12

if.then4:                                         ; preds = %if.end
  %4 = ptrtoint ptr %engines to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %engines, align 4
  %async = getelementptr %struct.refill_engine, ptr %5, i32 %i.030, i32 6
  %6 = ptrtoint ptr %async to i32
  call void @__asan_load1_noabort(i32 %6)
  %7 = load i8, ptr %async, align 4, !range !213
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %7)
  %tobool5.not = icmp eq i8 %7, 0
  br i1 %tobool5.not, label %if.then4.if.end9_crit_edge, label %if.then6

if.then4.if.end9_crit_edge:                       ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  br label %if.end9

if.then6:                                         ; preds = %if.then4
  call void @__sanitizer_cov_trace_pc() #13
  %arrayidx = getelementptr %struct.refill_engine, ptr %5, i32 %i.030
  tail call fastcc void @release_engine(ptr noundef %arrayidx)
  br label %if.end9

if.end9:                                          ; preds = %if.then6, %if.then4.if.end9_crit_edge
  %8 = ptrtoint ptr %engines to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %engines, align 4
  %compl = getelementptr %struct.refill_engine, ptr %9, i32 %i.030, i32 7
  tail call void @complete(ptr noundef %compl) #11
  br label %if.end12

if.end12:                                         ; preds = %if.end9, %if.end.if.end12_crit_edge
  %shr = lshr i32 %status.029, 8
  %inc = add nuw nsw i32 %i.030, 1
  %10 = ptrtoint ptr %num_engines to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load i32, ptr %num_engines, align 4
  %cmp = icmp slt i32 %inc, %11
  br i1 %cmp, label %if.end12.for.body_crit_edge, label %if.end12.for.end_crit_edge

if.end12.for.end_crit_edge:                       ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.end

if.end12.for.body_crit_edge:                      ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

for.end:                                          ; preds = %if.end12.for.end_crit_edge, %entry.for.end_crit_edge
  ret i32 1
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__raw_spin_lock_init(ptr noundef, ptr noundef, ptr noundef, i16 noundef signext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__dma_request_channel(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @dma_alloc_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @_set_bit(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_free_attrs(ptr noundef, i32 noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__alloc_pages(i32 noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_swait_queue_head(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @request_threaded_irq(i32 noundef, ptr noundef, ptr noundef, i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @complete(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @free_irq(i32 noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__free_pages(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @iounmap(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @dma_release_channel(ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @omap_dmm_resume(ptr noundef %dev) #0 align 64 {
entry:
  %area = alloca %struct.tcm_area, align 4
  call void @__sanitizer_cov_trace_pc() #13
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 16, ptr nonnull %area) #11
  %0 = ptrtoint ptr %area to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %area, align 4
  %1 = load ptr, ptr @omap_dmm, align 4
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end:                                           ; preds = %entry
  %container_width = getelementptr inbounds %struct.dmm, ptr %1, i32 0, i32 13
  %2 = ptrtoint ptr %container_width to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %container_width, align 4
  %4 = trunc i32 %3 to i16
  %conv = add i16 %4, -1
  %container_height = getelementptr inbounds %struct.dmm, ptr %1, i32 0, i32 14
  %5 = ptrtoint ptr %container_height to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %container_height, align 4
  %7 = trunc i32 %6 to i16
  %conv2 = add i16 %7, -1
  %8 = ptrtoint ptr %area to i32
  call void @__asan_store1_noabort(i32 %8)
  store i8 0, ptr %area, align 4
  %.compoundliteral.sroa.210.0.area.sroa_idx = getelementptr inbounds i8, ptr %area, i32 4
  %.compoundliteral.sroa.3.0.area.sroa_idx = getelementptr inbounds i8, ptr %area, i32 8
  %9 = ptrtoint ptr %.compoundliteral.sroa.3.0.area.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %9)
  store i32 0, ptr %.compoundliteral.sroa.3.0.area.sroa_idx, align 4
  %.compoundliteral.sroa.4.0.area.sroa_idx = getelementptr inbounds i8, ptr %area, i32 12
  %10 = ptrtoint ptr %.compoundliteral.sroa.4.0.area.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %10)
  store i16 %conv, ptr %.compoundliteral.sroa.4.0.area.sroa_idx, align 4
  %.compoundliteral.sroa.5.0.area.sroa_idx = getelementptr inbounds i8, ptr %area, i32 14
  %11 = ptrtoint ptr %.compoundliteral.sroa.5.0.area.sroa_idx to i32
  call void @__asan_store2_noabort(i32 %11)
  store i16 %conv2, ptr %.compoundliteral.sroa.5.0.area.sroa_idx, align 2
  %12 = load ptr, ptr @omap_dmm, align 4
  %num_lut13 = getelementptr inbounds %struct.dmm, ptr %12, i32 0, i32 17
  %13 = ptrtoint ptr %num_lut13 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load i32, ptr %num_lut13, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %14)
  %cmp14 = icmp sgt i32 %14, 0
  br i1 %cmp14, label %if.end.for.body_crit_edge, label %if.end.cleanup_crit_edge

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

if.end.for.body_crit_edge:                        ; preds = %if.end
  br label %for.body

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end.for.body_crit_edge
  %15 = phi ptr [ %21, %for.inc.for.body_crit_edge ], [ %12, %if.end.for.body_crit_edge ]
  %i.015 = phi i32 [ %inc, %for.inc.for.body_crit_edge ], [ 0, %if.end.for.body_crit_edge ]
  %tcm4 = getelementptr inbounds %struct.dmm, ptr %15, i32 0, i32 18
  %16 = ptrtoint ptr %tcm4 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %tcm4, align 4
  %arrayidx = getelementptr ptr, ptr %17, i32 %i.015
  %18 = ptrtoint ptr %arrayidx to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %arrayidx, align 4
  %20 = ptrtoint ptr %.compoundliteral.sroa.210.0.area.sroa_idx to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %19, ptr %.compoundliteral.sroa.210.0.area.sroa_idx, align 4
  %call = call fastcc i32 @fill(ptr noundef nonnull %area, ptr noundef null, i32 noundef 0, i32 noundef 0)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool6.not = icmp eq i32 %call, 0
  br i1 %tobool6.not, label %for.body.for.inc_crit_edge, label %do.end

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.inc

do.end:                                           ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #13
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.74) #14
  br label %for.inc

for.inc:                                          ; preds = %do.end, %for.body.for.inc_crit_edge
  %inc = add nuw nsw i32 %i.015, 1
  %21 = load ptr, ptr @omap_dmm, align 4
  %num_lut = getelementptr inbounds %struct.dmm, ptr %21, i32 0, i32 17
  %22 = ptrtoint ptr %num_lut to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %num_lut, align 4
  %cmp = icmp slt i32 %inc, %23
  br i1 %cmp, label %for.inc.for.body_crit_edge, label %for.inc.cleanup_crit_edge

for.inc.cleanup_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %cleanup

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #13
  br label %for.body

cleanup:                                          ; preds = %for.inc.cleanup_crit_edge, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -19, %entry.cleanup_crit_edge ], [ 0, %if.end.cleanup_crit_edge ], [ 0, %for.inc.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 16, ptr nonnull %area) #11
  ret i32 %retval.0
}

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i16 @llvm.ctpop.i16(i16) #6

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.umax.i32(i32, i32) #6

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #11

declare void @__sanitizer_cov_trace_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_cmp4(i32 zeroext, i32 zeroext)

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
define internal void @asan.module_ctor() #12 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #12 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 91)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readonly sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { inaccessiblemem_or_argmemonly nocallback nofree nosync nounwind willreturn }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { null_pointer_is_valid allocsize(2) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #8 = { null_pointer_is_valid allocsize(0) "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #9 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #10 = { argmemonly mustprogress nofree nounwind null_pointer_is_valid readonly willreturn "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #11 = { nounwind }
attributes #12 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #13 = { nomerge }
attributes #14 = { cold nounwind }
attributes #15 = { nounwind allocsize(2) }
attributes #16 = { nounwind allocsize(0) }
attributes #17 = { nobuiltin nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !7, !8, !10, !12, !14, !16, !17, !18, !20, !22, !24, !26, !28, !29, !31, !33, !35, !37, !39, !40, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !63, !64, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !80, !82, !84, !85, !87, !89, !91, !93, !95, !97, !99, !101, !102, !104, !105, !106, !107, !109, !110, !111, !113, !114, !115, !117, !118, !119, !121, !123, !124, !125, !126, !128, !129, !130, !131, !133, !134, !135, !137, !138, !139, !141, !142, !143, !145, !147, !148, !149, !151, !152, !153, !155, !156, !157, !159, !160, !161, !163, !164, !166, !168, !169, !171, !172, !173, !175, !177, !179, !181, !183, !184}
!llvm.named.register.sp = !{!185}
!llvm.module.flags = !{!186, !187, !188, !189, !190, !191, !192, !193}
!llvm.ident = !{!194}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 600, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @.str.3, !1, !"<string literal>", i1 false, i1 false}
!5 = !{ptr @.str.4, !1, !"<string literal>", i1 false, i1 false}
!6 = !{ptr @tiler_release._entry, !1, !"_entry", i1 false, i1 false}
!7 = !{ptr @tiler_release._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!8 = !{ptr @.str.5, !9, !"<string literal>", i1 false, i1 false}
!9 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1143, i32 18}
!10 = !{ptr @.str.6, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1145, i32 19}
!12 = !{ptr @.str.7, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1146, i32 18}
!14 = !{ptr @.str.8, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1148, i32 4}
!16 = !{ptr @.str.9, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @tiler_map_show.__UNIQUE_ID_ddebug320, !15, !"__UNIQUE_ID_ddebug320", i1 false, i1 false}
!18 = !{ptr @tiler_map_show.__UNIQUE_ID_ddebug321, !19, !"__UNIQUE_ID_ddebug321", i1 false, i1 false}
!19 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1151, i32 5}
!20 = !{ptr @tiler_map_show.__UNIQUE_ID_ddebug322, !21, !"__UNIQUE_ID_ddebug322", i1 false, i1 false}
!21 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1152, i32 4}
!22 = !{ptr @.str.10, !23, !"<string literal>", i1 false, i1 false}
!23 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1220, i32 11}
!24 = !{ptr @omap_dmm_driver, !25, !"omap_dmm_driver", i1 false, i1 false}
!25 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1215, i32 24}
!26 = !{ptr @__UNIQUE_ID_file323, !27, !"__UNIQUE_ID_file323", i1 false, i1 false}
!27 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1226, i32 1}
!28 = !{ptr @__UNIQUE_ID_license324, !27, !"__UNIQUE_ID_license324", i1 false, i1 false}
!29 = !{ptr @__UNIQUE_ID_author325, !30, !"__UNIQUE_ID_author325", i1 false, i1 false}
!30 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1227, i32 1}
!31 = !{ptr @__UNIQUE_ID_description326, !32, !"__UNIQUE_ID_description326", i1 false, i1 false}
!32 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1228, i32 1}
!33 = !{ptr @containers, !34, !"containers", i1 false, i1 false}
!34 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 34, i32 20}
!35 = !{ptr @omap_dmm, !36, !"omap_dmm", i1 false, i1 false}
!36 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 35, i32 20}
!37 = !{ptr @.str.11, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 397, i32 3}
!39 = !{ptr @.str.12, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @dmm_txn_commit._entry, !38, !"_entry", i1 false, i1 false}
!41 = !{ptr @dmm_txn_commit._entry_ptr, !38, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 437, i32 4}
!44 = !{ptr @dmm_txn_commit._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @dmm_txn_commit._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.16, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 143, i32 3}
!48 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @dmm_write_wa._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @dmm_write_wa._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.18, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 83, i32 3}
!53 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @dmm_dma_copy._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @dmm_dma_copy._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 89, i32 3}
!58 = !{ptr @dmm_dma_copy._entry.20, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @dmm_dma_copy._entry_ptr.22, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.24, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 95, i32 3}
!62 = !{ptr @dmm_dma_copy._entry.23, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @dmm_dma_copy._entry_ptr.25, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @reg, !65, !"reg", i1 false, i1 false}
!65 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 68, i32 18}
!66 = !{ptr @.str.26, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 239, i32 4}
!68 = !{ptr @.str.27, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @wait_status._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @wait_status._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.29, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 249, i32 4}
!73 = !{ptr @wait_status._entry.28, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @wait_status._entry_ptr.30, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.31, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 111, i32 3}
!77 = !{ptr @.str.32, !76, !"<string literal>", i1 false, i1 false}
!78 = !{ptr @dmm_read_wa._entry, !76, !"_entry", i1 false, i1 false}
!79 = !{ptr @dmm_read_wa._entry_ptr, !76, !"_entry_ptr", i1 false, i1 false}
!80 = !{ptr @geom, !81, !"geom", i1 false, i1 false}
!81 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 59, i32 3}
!82 = !{ptr @.str.33, !83, !"<string literal>", i1 false, i1 false}
!83 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 42, i32 8}
!84 = !{ptr @list_lock, !83, !"list_lock", i1 false, i1 false}
!85 = !{ptr @.str.34, !86, !"<string literal>", i1 false, i1 false}
!86 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 646, i32 3}
!87 = !{ptr @.str.35, !88, !"<string literal>", i1 false, i1 false}
!88 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 997, i32 31}
!89 = distinct !{null, !90, !"alphabet", i1 false, i1 false}
!90 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 997, i32 20}
!91 = distinct !{null, !92, !"<string literal>", i1 false, i1 false}
!92 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 999, i32 30}
!93 = distinct !{null, !94, !"special", i1 false, i1 false}
!94 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 999, i32 20}
!95 = !{ptr @.str.37, !96, !"<string literal>", i1 false, i1 false}
!96 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1060, i32 16}
!97 = !{ptr @.str.38, !98, !"<string literal>", i1 false, i1 false}
!98 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1041, i32 16}
!99 = !{ptr @omap_dmm_probe.__key, !100, !"__key", i1 false, i1 false}
!100 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 784, i32 2}
!101 = !{ptr @.str.39, !100, !"<string literal>", i1 false, i1 false}
!102 = !{ptr @.str.40, !103, !"<string literal>", i1 false, i1 false}
!103 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 791, i32 4}
!104 = !{ptr @.str.41, !103, !"<string literal>", i1 false, i1 false}
!105 = !{ptr @omap_dmm_probe._entry, !103, !"_entry", i1 false, i1 false}
!106 = !{ptr @omap_dmm_probe._entry_ptr, !103, !"_entry_ptr", i1 false, i1 false}
!107 = !{ptr @.str.43, !108, !"<string literal>", i1 false, i1 false}
!108 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 802, i32 3}
!109 = !{ptr @omap_dmm_probe._entry.42, !108, !"_entry", i1 false, i1 false}
!110 = !{ptr @omap_dmm_probe._entry_ptr.44, !108, !"_entry_ptr", i1 false, i1 false}
!111 = !{ptr @.str.46, !112, !"<string literal>", i1 false, i1 false}
!112 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 810, i32 3}
!113 = !{ptr @omap_dmm_probe._entry.45, !112, !"_entry", i1 false, i1 false}
!114 = !{ptr @omap_dmm_probe._entry_ptr.47, !112, !"_entry_ptr", i1 false, i1 false}
!115 = !{ptr @.str.49, !116, !"<string literal>", i1 false, i1 false}
!116 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 816, i32 3}
!117 = !{ptr @omap_dmm_probe._entry.48, !116, !"_entry", i1 false, i1 false}
!118 = !{ptr @omap_dmm_probe._entry_ptr.50, !116, !"_entry_ptr", i1 false, i1 false}
!119 = !{ptr @.str.51, !120, !"<string literal>", i1 false, i1 false}
!120 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 822, i32 31}
!121 = !{ptr @.str.53, !122, !"<string literal>", i1 false, i1 false}
!122 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 830, i32 4}
!123 = !{ptr @.str.54, !122, !"<string literal>", i1 false, i1 false}
!124 = !{ptr @omap_dmm_probe._entry.52, !122, !"_entry", i1 false, i1 false}
!125 = !{ptr @omap_dmm_probe._entry_ptr.55, !122, !"_entry_ptr", i1 false, i1 false}
!126 = !{ptr @.str.57, !127, !"<string literal>", i1 false, i1 false}
!127 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 833, i32 4}
!128 = !{ptr @.str.58, !127, !"<string literal>", i1 false, i1 false}
!129 = !{ptr @omap_dmm_probe._entry.56, !127, !"_entry", i1 false, i1 false}
!130 = !{ptr @omap_dmm_probe._entry_ptr.59, !127, !"_entry_ptr", i1 false, i1 false}
!131 = !{ptr @.str.61, !132, !"<string literal>", i1 false, i1 false}
!132 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 866, i32 3}
!133 = !{ptr @omap_dmm_probe._entry.60, !132, !"_entry", i1 false, i1 false}
!134 = !{ptr @omap_dmm_probe._entry_ptr.62, !132, !"_entry_ptr", i1 false, i1 false}
!135 = !{ptr @.str.64, !136, !"<string literal>", i1 false, i1 false}
!136 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 883, i32 3}
!137 = !{ptr @omap_dmm_probe._entry.63, !136, !"_entry", i1 false, i1 false}
!138 = !{ptr @omap_dmm_probe._entry_ptr.65, !136, !"_entry_ptr", i1 false, i1 false}
!139 = !{ptr @.str.67, !140, !"<string literal>", i1 false, i1 false}
!140 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 924, i32 4}
!141 = !{ptr @omap_dmm_probe._entry.66, !140, !"_entry", i1 false, i1 false}
!142 = !{ptr @omap_dmm_probe._entry_ptr.68, !140, !"_entry_ptr", i1 false, i1 false}
!143 = !{ptr @.str.69, !144, !"<string literal>", i1 false, i1 false}
!144 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 957, i32 5}
!145 = !{ptr @.str.71, !146, !"<string literal>", i1 false, i1 false}
!146 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 960, i32 3}
!147 = !{ptr @omap_dmm_probe._entry.70, !146, !"_entry", i1 false, i1 false}
!148 = !{ptr @omap_dmm_probe._entry_ptr.72, !146, !"_entry_ptr", i1 false, i1 false}
!149 = !{ptr @.str.74, !150, !"<string literal>", i1 false, i1 false}
!150 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 978, i32 4}
!151 = !{ptr @omap_dmm_probe._entry.73, !150, !"_entry", i1 false, i1 false}
!152 = !{ptr @omap_dmm_probe._entry_ptr.75, !150, !"_entry_ptr", i1 false, i1 false}
!153 = !{ptr @.str.77, !154, !"<string literal>", i1 false, i1 false}
!154 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 981, i32 2}
!155 = !{ptr @omap_dmm_probe._entry.76, !154, !"_entry", i1 false, i1 false}
!156 = !{ptr @omap_dmm_probe._entry_ptr.78, !154, !"_entry_ptr", i1 false, i1 false}
!157 = !{ptr @.str.80, !158, !"<string literal>", i1 false, i1 false}
!158 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 987, i32 3}
!159 = !{ptr @omap_dmm_probe._entry.79, !158, !"_entry", i1 false, i1 false}
!160 = !{ptr @omap_dmm_probe._entry_ptr.81, !158, !"_entry_ptr", i1 false, i1 false}
!161 = !{ptr @dmm_workaround_init.__key, !162, !"__key", i1 false, i1 false}
!162 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 181, i32 2}
!163 = !{ptr @.str.82, !162, !"<string literal>", i1 false, i1 false}
!164 = distinct !{null, !165, !"<string literal>", i1 false, i1 false}
!165 = !{!"../include/linux/gfp.h", i32 570, i32 2}
!166 = !{ptr @init_completion.__key, !167, !"__key", i1 false, i1 false}
!167 = !{!"../include/linux/completion.h", i32 87, i32 2}
!168 = !{ptr @.str.84, !167, !"<string literal>", i1 false, i1 false}
!169 = !{ptr @.str.85, !170, !"<string literal>", i1 false, i1 false}
!170 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 284, i32 4}
!171 = !{ptr @omap_dmm_irq_handler._entry, !170, !"_entry", i1 false, i1 false}
!172 = !{ptr @omap_dmm_irq_handler._entry_ptr, !170, !"_entry_ptr", i1 false, i1 false}
!173 = !{ptr @dmm_of_match, !174, !"dmm_of_match", i1 false, i1 false}
!174 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1202, i32 34}
!175 = !{ptr @dmm_omap4_platform_data, !176, !"dmm_omap4_platform_data", i1 false, i1 false}
!176 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1194, i32 39}
!177 = !{ptr @dmm_omap5_platform_data, !178, !"dmm_omap5_platform_data", i1 false, i1 false}
!178 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1198, i32 39}
!179 = !{ptr @omap_dmm_pm_ops, !180, !"omap_dmm_pm_ops", i1 false, i1 false}
!180 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1191, i32 8}
!181 = !{ptr @.str.86, !182, !"<string literal>", i1 false, i1 false}
!182 = !{!"../drivers/gpu/drm/omapdrm/omap_dmm_tiler.c", i32 1184, i32 4}
!183 = !{ptr @omap_dmm_resume._entry, !182, !"_entry", i1 false, i1 false}
!184 = !{ptr @omap_dmm_resume._entry_ptr, !182, !"_entry_ptr", i1 false, i1 false}
!185 = !{!"sp"}
!186 = !{i32 1, !"wchar_size", i32 2}
!187 = !{i32 1, !"min_enum_size", i32 4}
!188 = !{i32 8, !"branch-target-enforcement", i32 0}
!189 = !{i32 8, !"sign-return-address", i32 0}
!190 = !{i32 8, !"sign-return-address-all", i32 0}
!191 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!192 = !{i32 7, !"uwtable", i32 1}
!193 = !{i32 7, !"frame-pointer", i32 2}
!194 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!195 = !{i64 2148519277}
!196 = !{i64 1005877, i64 1005902, i64 1005924, i64 1005940, i64 1005952, i64 1005972, i64 1005996, i64 1006012, i64 1006024}
!197 = !{i64 2148519465}
!198 = !{!"branch_weights", i32 1, i32 2000}
!199 = !{i64 2156813990, i64 2156814495, i64 2156814027, i64 2156814083, i64 2156814117, i64 2156814141, i64 2156814182, i64 2156814203, i64 2156814231, i64 2156814265}
!200 = !{i64 2156802159, i64 2156802664, i64 2156802196, i64 2156802252, i64 2156802286, i64 2156802310, i64 2156802351, i64 2156802372, i64 2156802400, i64 2156802434}
!201 = !{i64 2156817382}
!202 = !{i64 6253604}
!203 = !{i64 2156817892}
!204 = !{i64 2156818054}
!205 = !{!"branch_weights", i32 2000, i32 1}
!206 = !{i64 2156820464, i64 2156820969, i64 2156820501, i64 2156820557, i64 2156820591, i64 2156820615, i64 2156820656, i64 2156820677, i64 2156820705, i64 2156820739}
!207 = !{i16 0, i16 17}
!208 = !{i64 2156827316, i64 2156827821, i64 2156827353, i64 2156827409, i64 2156827443, i64 2156827467, i64 2156827508, i64 2156827529, i64 2156827557, i64 2156827591}
!209 = !{i64 2156828989, i64 2156829494, i64 2156829026, i64 2156829082, i64 2156829116, i64 2156829140, i64 2156829181, i64 2156829202, i64 2156829230, i64 2156829264}
!210 = !{i64 2156830636, i64 2156831141, i64 2156830673, i64 2156830729, i64 2156830763, i64 2156830787, i64 2156830828, i64 2156830849, i64 2156830877, i64 2156830911}
!211 = !{i64 2156832489, i64 2156832994, i64 2156832526, i64 2156832582, i64 2156832616, i64 2156832640, i64 2156832681, i64 2156832702, i64 2156832730, i64 2156832764}
!212 = !{i64 2156834152, i64 2156834657, i64 2156834189, i64 2156834245, i64 2156834279, i64 2156834303, i64 2156834344, i64 2156834365, i64 2156834393, i64 2156834427}
!213 = !{i8 0, i8 2}
!214 = !{i64 2148344456, i64 2148344461, i64 2148344474, i64 2148344518, i64 2148344552, i64 2148344573}
!215 = !{i64 2156796876}
!216 = !{i64 6253186}
!217 = !{i64 2156797198}
!218 = !{i64 2156799059}
!219 = !{i64 2156800638}
!220 = !{i64 2148519858, i64 2148519884, i64 2148519913, i64 2148519947, i64 2148519978, i64 2148520001}
!221 = !{i64 2156796090}
!222 = !{i64 2156796181}
!223 = !{i64 2156796663}
!224 = !{i64 2156800068}
