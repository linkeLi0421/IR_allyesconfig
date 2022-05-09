; ModuleID = '/llk/IR_all_yes/drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c_pt.bc'
source_filename = "../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.sxgbe_plat_data = type { ptr, i32, i32, i32, ptr, ptr, i32, i32, i32, i32, i32 }
%struct.sxgbe_dma_cfg = type { i32, i32, i32, i32 }
%struct.sxgbe_priv_data = type { [8 x ptr], [16 x ptr], i8, i32, i32, i32, i32, %struct.napi_struct, ptr, ptr, ptr, ptr, i32, i32, i32, %struct.spinlock, i32, i32, i32, ptr, [32 x i32], i8, i8, %struct.sxgbe_extra_stats, ptr, %struct.sxgbe_hw_features, i32, ptr, i32, i32, i32, i32, i32, ptr, i32, i32, %struct.timer_list, i8, i32, i32, i32, i32 }
%struct.napi_struct = type { %struct.list_head, i32, i32, i32, i32, ptr, i32, ptr, [8 x %struct.gro_list], ptr, %struct.list_head, i32, %struct.hrtimer, %struct.list_head, %struct.hlist_node, i32, ptr }
%struct.gro_list = type { %struct.list_head, i32 }
%struct.sxgbe_extra_stats = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sxgbe_hw_features = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.sxgbe_rx_queue = type { ptr, ptr, ptr, i32, i32, i32, i32, ptr, i32, i8 }

@sxgbe_platform_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @sxgbe_platform_probe, ptr @sxgbe_platform_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str.3, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @sxgbe_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @sxgbe_platform_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@sxgbe_register_platform._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str, ptr @.str.1, ptr @.str.2, i32 242, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"\013samsung_sxgbe: failed to register the platform driver\0A\00", [39 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"sxgbe_register_platform\00", [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [52 x i8], [44 x i8] } { [52 x i8] c"drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c\00", [44 x i8] zeroinitializer }, align 32
@sxgbe_register_platform._entry_ptr = internal global ptr @sxgbe_register_platform._entry, section ".printk_index", align 4
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"sam_sxgbeeth\00", [19 x i8] zeroinitializer }, align 32
@sxgbe_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"samsung,sxgbe-v2.0a\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@sxgbe_platform_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @sxgbe_platform_suspend, ptr @sxgbe_platform_resume, ptr @sxgbe_platform_freeze, ptr @sxgbe_platform_restore, ptr null, ptr @sxgbe_platform_restore, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [36 x i8] zeroinitializer }, align 32
@sxgbe_platform_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.2, i32 102, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"\013samsung_sxgbe: %s: main dt probe failed\0A\00", [53 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"sxgbe_platform_probe\00", [43 x i8] zeroinitializer }, align 32
@sxgbe_platform_probe._entry_ptr = internal global ptr @sxgbe_platform_probe._entry, section ".printk_index", align 4
@sxgbe_platform_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.5, ptr @.str.2, i32 109, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [47 x i8], [49 x i8] } { [47 x i8] c"\013samsung_sxgbe: %s: main driver probe failed\0A\00", [49 x i8] zeroinitializer }, align 32
@sxgbe_platform_probe._entry_ptr.8 = internal global ptr @sxgbe_platform_probe._entry.6, section ".printk_index", align 4
@sxgbe_platform_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.2, i32 116, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"sxgbe common irq parsing failed\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@sxgbe_platform_probe._entry_ptr.13 = internal global ptr @sxgbe_platform_probe._entry.9, section ".printk_index", align 4
@sxgbe_platform_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.2, i32 127, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sxgbe tx irq parsing failed\0A\00", [35 x i8] zeroinitializer }, align 32
@sxgbe_platform_probe._entry_ptr.16 = internal global ptr @sxgbe_platform_probe._entry.14, section ".printk_index", align 4
@sxgbe_platform_probe._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.5, ptr @.str.2, i32 135, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"sxgbe rx irq parsing failed\0A\00", [35 x i8] zeroinitializer }, align 32
@sxgbe_platform_probe._entry_ptr.19 = internal global ptr @sxgbe_platform_probe._entry.17, section ".printk_index", align 4
@sxgbe_platform_probe._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.5, ptr @.str.2, i32 142, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"sxgbe lpi irq parsing failed\0A\00", [34 x i8] zeroinitializer }, align 32
@sxgbe_platform_probe._entry_ptr.22 = internal global ptr @sxgbe_platform_probe._entry.20, section ".printk_index", align 4
@sxgbe_platform_probe.__UNIQUE_ID_ddebug349 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.23, ptr @.str.5, ptr @.str.2, ptr @.str.24, i8 0, i8 37, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.23 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"samsung_sxgbe\00", [18 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [40 x i8], [56 x i8] } { [40 x i8] c"platform driver registration completed\0A\00", [56 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [55 x i8], [41 x i8] } { [55 x i8] c"samsung_sxgbe: platform driver registration completed\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"ethernet\00", [23 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"samsung,pbl\00", [20 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"samsung,burst-map\00", [46 x i8] zeroinitializer }, align 32
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 4294967277]
@___asan_gen_.29 = private unnamed_addr constant [22 x i8] c"sxgbe_platform_driver\00", align 1
@___asan_gen_.31 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 226, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 242, i32 3 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 230, i32 12 }
@___asan_gen_.47 = private unnamed_addr constant [13 x i8] c"sxgbe_dt_ids\00", align 1
@___asan_gen_.49 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 220, i32 34 }
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"sxgbe_platform_pm_ops\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 209, i32 32 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 102, i32 4 }
@___asan_gen_.67 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 109, i32 3 }
@___asan_gen_.79 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 116, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 127, i32 4 }
@___asan_gen_.91 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 135, i32 4 }
@___asan_gen_.92 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.97 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 142, i32 3 }
@___asan_gen_.106 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 148, i32 2 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 41, i32 37 }
@___asan_gen_.112 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 56, i32 27 }
@___asan_gen_.113 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.114 = private constant [55 x i8] c"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c\00", align 1
@___asan_gen_.115 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.114, i32 57, i32 31 }
@llvm.compiler.used = appending global [36 x ptr] [ptr @sxgbe_platform_probe._entry, ptr @sxgbe_platform_probe._entry.14, ptr @sxgbe_platform_probe._entry.17, ptr @sxgbe_platform_probe._entry.20, ptr @sxgbe_platform_probe._entry.6, ptr @sxgbe_platform_probe._entry.9, ptr @sxgbe_platform_probe._entry_ptr, ptr @sxgbe_platform_probe._entry_ptr.13, ptr @sxgbe_platform_probe._entry_ptr.16, ptr @sxgbe_platform_probe._entry_ptr.19, ptr @sxgbe_platform_probe._entry_ptr.22, ptr @sxgbe_platform_probe._entry_ptr.8, ptr @sxgbe_register_platform._entry, ptr @sxgbe_register_platform._entry_ptr, ptr @sxgbe_platform_driver, ptr @.str, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @sxgbe_dt_ids, ptr @sxgbe_platform_pm_ops, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.15, ptr @.str.18, ptr @.str.21, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28], section "llvm.metadata"
@0 = internal global [29 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_platform_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.31 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_register_platform._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_platform_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_platform_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_platform_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 47, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.67 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_platform_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.79 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_platform_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_platform_probe._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.91 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @sxgbe_platform_probe._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.92 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.97 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 40, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 55, i32 96, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.106 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.112 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local i32 @sxgbe_register_platform() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @sxgbe_platform_driver, ptr noundef null) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call)
  %tobool.not = icmp eq i32 %call, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %call1 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str) #7
  br label %if.end

if.end:                                           ; preds = %do.end, %entry.if.end_crit_edge
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @sxgbe_unregister_platform() local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @platform_driver_unregister(ptr noundef nonnull @sxgbe_platform_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_platform_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %2 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %of_node, align 8
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then, label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %4 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %6, null
  br i1 %tobool.not, label %if.end.if.end18_crit_edge, label %if.then7

if.end.if.end18_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then7:                                         ; preds = %if.end
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 44, i32 noundef 3520) #4
  %tobool10.not = icmp eq ptr %call.i, null
  br i1 %tobool10.not, label %if.then7.cleanup_crit_edge, label %if.end12

if.then7.cleanup_crit_edge:                       ; preds = %if.then7
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup

if.end12:                                         ; preds = %if.then7
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %tobool.not.i = icmp eq ptr %8, null
  br i1 %tobool.not.i, label %if.end12.do.end_crit_edge, label %if.end.i

if.end12.do.end_crit_edge:                        ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end.i:                                         ; preds = %if.end12
  %interface.i = getelementptr inbounds %struct.sxgbe_plat_data, ptr %call.i, i32 0, i32 3
  %call.i156 = tail call i32 @of_get_phy_mode(ptr noundef nonnull %8, ptr noundef %interface.i) #4
  %9 = zext i32 %call.i156 to i64
  call void @__sanitizer_cov_trace_switch(i64 %9, ptr @__sancov_gen_cov_switch_values)
  switch i32 %call.i156, label %if.end.i.do.end_crit_edge [
    i32 0, label %if.end.i.if.end3.i_crit_edge
    i32 -19, label %if.end.i.if.end3.i_crit_edge196
  ]

if.end.i.if.end3.i_crit_edge196:                  ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.i

if.end.i.if.end3.i_crit_edge:                     ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end3.i

if.end.i.do.end_crit_edge:                        ; preds = %if.end.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end3.i:                                        ; preds = %if.end.i.if.end3.i_crit_edge, %if.end.i.if.end3.i_crit_edge196
  %call4.i = tail call i32 @of_alias_get_id(ptr noundef nonnull %8, ptr noundef nonnull @.str.26) #4
  %bus_id.i = getelementptr inbounds %struct.sxgbe_plat_data, ptr %call.i, i32 0, i32 1
  %10 = tail call i32 @llvm.smax.i32(i32 %call4.i, i32 0) #4
  %11 = ptrtoint ptr %bus_id.i to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 %10, ptr %bus_id.i, align 4
  %call.i.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #4
  %mdio_bus_data.i = getelementptr inbounds %struct.sxgbe_plat_data, ptr %call.i, i32 0, i32 4
  %12 = ptrtoint ptr %mdio_bus_data.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i.i, ptr %mdio_bus_data.i, align 4
  %tobool13.not.i = icmp eq ptr %call.i.i, null
  br i1 %tobool13.not.i, label %if.end3.i.do.end_crit_edge, label %if.end15.i

if.end3.i.do.end_crit_edge:                       ; preds = %if.end3.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end15.i:                                       ; preds = %if.end3.i
  %call.i47.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 16, i32 noundef 3520) #4
  %tobool18.not.i = icmp eq ptr %call.i47.i, null
  br i1 %tobool18.not.i, label %if.end15.i.do.end_crit_edge, label %if.end20.i

if.end15.i.do.end_crit_edge:                      ; preds = %if.end15.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.end

if.end20.i:                                       ; preds = %if.end15.i
  %dma_cfg21.i = getelementptr inbounds %struct.sxgbe_plat_data, ptr %call.i, i32 0, i32 5
  %13 = ptrtoint ptr %dma_cfg21.i to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr %call.i47.i, ptr %dma_cfg21.i, align 4
  %call.i.i.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.27, ptr noundef nonnull %call.i47.i, i32 noundef 1, i32 noundef 0) #4
  %burst_map.i = getelementptr inbounds %struct.sxgbe_dma_cfg, ptr %call.i47.i, i32 0, i32 2
  %call.i.i48.i = tail call i32 @of_property_read_variable_u32_array(ptr noundef nonnull %8, ptr noundef nonnull @.str.28, ptr noundef %burst_map.i, i32 noundef 1, i32 noundef 0) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 -1, i32 %call.i.i48.i)
  %cmp24.i = icmp sgt i32 %call.i.i48.i, -1
  br i1 %cmp24.i, label %if.then25.i, label %if.end20.i.if.end18_crit_edge

if.end20.i.if.end18_crit_edge:                    ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end18

if.then25.i:                                      ; preds = %if.end20.i
  call void @__sanitizer_cov_trace_pc() #6
  %fixed_burst.i = getelementptr inbounds %struct.sxgbe_dma_cfg, ptr %call.i47.i, i32 0, i32 1
  %14 = ptrtoint ptr %fixed_burst.i to i32
  call void @__asan_store4_noabort(i32 %14)
  store i32 1, ptr %fixed_burst.i, align 4
  br label %if.end18

do.end:                                           ; preds = %if.end15.i.do.end_crit_edge, %if.end3.i.do.end_crit_edge, %if.end.i.do.end_crit_edge, %if.end12.do.end_crit_edge
  %retval.0.i157161 = phi i32 [ -12, %if.end15.i.do.end_crit_edge ], [ -12, %if.end3.i.do.end_crit_edge ], [ -19, %if.end12.do.end_crit_edge ], [ %call.i156, %if.end.i.do.end_crit_edge ]
  %call16 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.4, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end18:                                         ; preds = %if.then25.i, %if.end20.i.if.end18_crit_edge, %if.end.if.end18_crit_edge
  %plat_dat.0 = phi ptr [ null, %if.end.if.end18_crit_edge ], [ %call.i, %if.then25.i ], [ %call.i, %if.end20.i.if.end18_crit_edge ]
  %call20 = tail call ptr @sxgbe_drv_probe(ptr noundef %dev1, ptr noundef %plat_dat.0, ptr noundef %call2) #4
  %tobool21.not = icmp eq ptr %call20, null
  br i1 %tobool21.not, label %do.end25, label %if.end28

do.end25:                                         ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #6
  %call27 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.7, ptr noundef nonnull @.str.5) #7
  br label %cleanup

if.end28:                                         ; preds = %if.end18
  %call29 = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef 0) #4
  %irq = getelementptr inbounds %struct.sxgbe_priv_data, ptr %call20, i32 0, i32 13
  %15 = ptrtoint ptr %irq to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 %call29, ptr %irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call29)
  %cmp = icmp slt i32 %call29, 1
  br i1 %cmp, label %do.end34, label %if.end35

do.end34:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10) #7
  br label %err_drv_remove

if.end35:                                         ; preds = %if.end28
  %dev36 = getelementptr inbounds %struct.sxgbe_priv_data, ptr %call20, i32 0, i32 9
  %16 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %dev36, align 4
  %call37 = tail call i32 @of_get_ethdev_address(ptr noundef %3, ptr noundef %17) #4
  %call39 = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef 1) #4
  %18 = ptrtoint ptr %call20 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call20, align 4
  %20 = ptrtoint ptr %19 to i32
  call void @__asan_store4_noabort(i32 %20)
  store i32 %call39, ptr %19, align 4
  %21 = load ptr, ptr %call20, align 4
  %22 = ptrtoint ptr %21 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load i32, ptr %21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %23)
  %cmp43 = icmp eq i32 %23, 0
  br i1 %cmp43, label %err_tx_irq_unmap, label %for.inc

for.inc:                                          ; preds = %if.end35
  %call39.1 = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef 2) #4
  %arrayidx.1 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 1
  %24 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %arrayidx.1, align 4
  %26 = ptrtoint ptr %25 to i32
  call void @__asan_store4_noabort(i32 %26)
  store i32 %call39.1, ptr %25, align 4
  %27 = load ptr, ptr %arrayidx.1, align 4
  %28 = ptrtoint ptr %27 to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load i32, ptr %27, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %29)
  %cmp43.1 = icmp eq i32 %29, 0
  br i1 %cmp43.1, label %for.inc.err_tx_irq_unmap.thread189_crit_edge, label %for.inc.1

for.inc.err_tx_irq_unmap.thread189_crit_edge:     ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_tx_irq_unmap.thread189

for.inc.1:                                        ; preds = %for.inc
  %call39.2 = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef 3) #4
  %arrayidx.2 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 2
  %30 = ptrtoint ptr %arrayidx.2 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %arrayidx.2, align 4
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_store4_noabort(i32 %32)
  store i32 %call39.2, ptr %31, align 4
  %33 = load ptr, ptr %arrayidx.2, align 4
  %34 = ptrtoint ptr %33 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load i32, ptr %33, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %35)
  %cmp43.2 = icmp eq i32 %35, 0
  br i1 %cmp43.2, label %for.inc.1.err_tx_irq_unmap.thread189_crit_edge, label %for.inc.2

for.inc.1.err_tx_irq_unmap.thread189_crit_edge:   ; preds = %for.inc.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_tx_irq_unmap.thread189

for.inc.2:                                        ; preds = %for.inc.1
  %call39.3 = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef 4) #4
  %arrayidx.3 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 3
  %36 = ptrtoint ptr %arrayidx.3 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %arrayidx.3, align 4
  %38 = ptrtoint ptr %37 to i32
  call void @__asan_store4_noabort(i32 %38)
  store i32 %call39.3, ptr %37, align 4
  %39 = load ptr, ptr %arrayidx.3, align 4
  %40 = ptrtoint ptr %39 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load i32, ptr %39, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %41)
  %cmp43.3 = icmp eq i32 %41, 0
  br i1 %cmp43.3, label %for.inc.2.err_tx_irq_unmap.thread189_crit_edge, label %for.inc.3

for.inc.2.err_tx_irq_unmap.thread189_crit_edge:   ; preds = %for.inc.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_tx_irq_unmap.thread189

for.inc.3:                                        ; preds = %for.inc.2
  %call39.4 = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef 5) #4
  %arrayidx.4 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 4
  %42 = ptrtoint ptr %arrayidx.4 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %arrayidx.4, align 4
  %44 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %44)
  store i32 %call39.4, ptr %43, align 4
  %45 = load ptr, ptr %arrayidx.4, align 4
  %46 = ptrtoint ptr %45 to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load i32, ptr %45, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %47)
  %cmp43.4 = icmp eq i32 %47, 0
  br i1 %cmp43.4, label %for.inc.3.err_tx_irq_unmap.thread189_crit_edge, label %for.inc.4

for.inc.3.err_tx_irq_unmap.thread189_crit_edge:   ; preds = %for.inc.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_tx_irq_unmap.thread189

for.inc.4:                                        ; preds = %for.inc.3
  %call39.5 = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef 6) #4
  %arrayidx.5 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 5
  %48 = ptrtoint ptr %arrayidx.5 to i32
  call void @__asan_load4_noabort(i32 %48)
  %49 = load ptr, ptr %arrayidx.5, align 4
  %50 = ptrtoint ptr %49 to i32
  call void @__asan_store4_noabort(i32 %50)
  store i32 %call39.5, ptr %49, align 4
  %51 = load ptr, ptr %arrayidx.5, align 4
  %52 = ptrtoint ptr %51 to i32
  call void @__asan_load4_noabort(i32 %52)
  %53 = load i32, ptr %51, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %53)
  %cmp43.5 = icmp eq i32 %53, 0
  br i1 %cmp43.5, label %for.inc.4.err_tx_irq_unmap.thread189_crit_edge, label %for.inc.5

for.inc.4.err_tx_irq_unmap.thread189_crit_edge:   ; preds = %for.inc.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_tx_irq_unmap.thread189

for.inc.5:                                        ; preds = %for.inc.4
  %call39.6 = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef 7) #4
  %arrayidx.6 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 6
  %54 = ptrtoint ptr %arrayidx.6 to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %arrayidx.6, align 4
  %56 = ptrtoint ptr %55 to i32
  call void @__asan_store4_noabort(i32 %56)
  store i32 %call39.6, ptr %55, align 4
  %57 = load ptr, ptr %arrayidx.6, align 4
  %58 = ptrtoint ptr %57 to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load i32, ptr %57, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %59)
  %cmp43.6 = icmp eq i32 %59, 0
  br i1 %cmp43.6, label %for.inc.5.err_tx_irq_unmap.thread189_crit_edge, label %for.inc.6

for.inc.5.err_tx_irq_unmap.thread189_crit_edge:   ; preds = %for.inc.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_tx_irq_unmap.thread189

for.inc.6:                                        ; preds = %for.inc.5
  %call39.7 = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef 8) #4
  %arrayidx.7 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 7
  %60 = ptrtoint ptr %arrayidx.7 to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %arrayidx.7, align 4
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_store4_noabort(i32 %62)
  store i32 %call39.7, ptr %61, align 4
  %63 = load ptr, ptr %arrayidx.7, align 4
  %64 = ptrtoint ptr %63 to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load i32, ptr %63, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %65)
  %cmp43.7 = icmp eq i32 %65, 0
  br i1 %cmp43.7, label %for.inc.6.err_tx_irq_unmap.thread189_crit_edge, label %for.inc.6.for.body52_crit_edge

for.inc.6.for.body52_crit_edge:                   ; preds = %for.inc.6
  br label %for.body52

for.inc.6.err_tx_irq_unmap.thread189_crit_edge:   ; preds = %for.inc.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %err_tx_irq_unmap.thread189

for.body52:                                       ; preds = %for.inc66.for.body52_crit_edge, %for.inc.6.for.body52_crit_edge
  %i.1175 = phi i32 [ %inc67, %for.inc66.for.body52_crit_edge ], [ 0, %for.inc.6.for.body52_crit_edge ]
  %chan.1174 = phi i32 [ %inc53, %for.inc66.for.body52_crit_edge ], [ 9, %for.inc.6.for.body52_crit_edge ]
  %call54 = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef %chan.1174) #4
  %arrayidx55 = getelementptr %struct.sxgbe_priv_data, ptr %call20, i32 0, i32 1, i32 %i.1175
  %66 = ptrtoint ptr %arrayidx55 to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %arrayidx55, align 4
  %irq_no56 = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %67, i32 0, i32 5
  %68 = ptrtoint ptr %irq_no56 to i32
  call void @__asan_store4_noabort(i32 %68)
  store i32 %call54, ptr %irq_no56, align 4
  %69 = load ptr, ptr %arrayidx55, align 4
  %irq_no59 = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %69, i32 0, i32 5
  %70 = ptrtoint ptr %irq_no59 to i32
  call void @__asan_load4_noabort(i32 %70)
  %71 = load i32, ptr %irq_no59, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %71)
  %cmp60 = icmp eq i32 %71, 0
  br i1 %cmp60, label %err_rx_irq_unmap, label %for.inc66

for.inc66:                                        ; preds = %for.body52
  %inc53 = add nuw nsw i32 %chan.1174, 1
  %inc67 = add nuw nsw i32 %i.1175, 1
  %exitcond.not = icmp eq i32 %inc67, 16
  br i1 %exitcond.not, label %for.end68, label %for.inc66.for.body52_crit_edge

for.inc66.for.body52_crit_edge:                   ; preds = %for.inc66
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body52

for.end68:                                        ; preds = %for.inc66
  %call69 = tail call i32 @irq_of_parse_and_map(ptr noundef %3, i32 noundef 25) #4
  %lpi_irq = getelementptr inbounds %struct.sxgbe_priv_data, ptr %call20, i32 0, i32 38
  %72 = ptrtoint ptr %lpi_irq to i32
  call void @__asan_store4_noabort(i32 %72)
  store i32 %call69, ptr %lpi_irq, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %call69)
  %cmp71 = icmp slt i32 %call69, 1
  br i1 %cmp71, label %err_rx_irq_unmap.thread, label %if.end76

err_rx_irq_unmap.thread:                          ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.21) #7
  br label %while.body.preheader

if.end76:                                         ; preds = %for.end68
  call void @__sanitizer_cov_trace_pc() #6
  %73 = ptrtoint ptr %dev36 to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %dev36, align 4
  %75 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %75)
  store ptr %74, ptr %driver_data.i.i, align 4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @sxgbe_platform_probe.__UNIQUE_ID_ddebug349, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@sxgbe_platform_probe, %if.then84)) #4
          to label %cleanup [label %if.then84], !srcloc !61

if.then84:                                        ; preds = %if.end76
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @__dynamic_pr_debug(ptr noundef nonnull @sxgbe_platform_probe.__UNIQUE_ID_ddebug349, ptr noundef nonnull @.str.25) #4
  br label %cleanup

err_rx_irq_unmap:                                 ; preds = %for.body52
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.18) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %i.1175)
  %tobool88.not176 = icmp eq i32 %i.1175, 0
  br i1 %tobool88.not176, label %err_rx_irq_unmap.while.body95_crit_edge, label %err_rx_irq_unmap.while.body.preheader_crit_edge

err_rx_irq_unmap.while.body.preheader_crit_edge:  ; preds = %err_rx_irq_unmap
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body.preheader

err_rx_irq_unmap.while.body95_crit_edge:          ; preds = %err_rx_irq_unmap
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body95

while.body.preheader:                             ; preds = %err_rx_irq_unmap.while.body.preheader_crit_edge, %err_rx_irq_unmap.thread
  %i.2177.ph = phi i32 [ %i.1175, %err_rx_irq_unmap.while.body.preheader_crit_edge ], [ 16, %err_rx_irq_unmap.thread ]
  br label %while.body

while.body:                                       ; preds = %while.body.while.body_crit_edge, %while.body.preheader
  %i.2177 = phi i32 [ %dec, %while.body.while.body_crit_edge ], [ %i.2177.ph, %while.body.preheader ]
  %dec = add nsw i32 %i.2177, -1
  %arrayidx90 = getelementptr %struct.sxgbe_priv_data, ptr %call20, i32 0, i32 1, i32 %dec
  %76 = ptrtoint ptr %arrayidx90 to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %arrayidx90, align 4
  %irq_no91 = getelementptr inbounds %struct.sxgbe_rx_queue, ptr %77, i32 0, i32 5
  %78 = ptrtoint ptr %irq_no91 to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load i32, ptr %irq_no91, align 4
  tail call void @irq_dispose_mapping(i32 noundef %79) #4
  %tobool88.not = icmp eq i32 %dec, 0
  br i1 %tobool88.not, label %while.body.while.body95_crit_edge, label %while.body.while.body_crit_edge

while.body.while.body_crit_edge:                  ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body

while.body.while.body95_crit_edge:                ; preds = %while.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.body95

err_tx_irq_unmap.thread189:                       ; preds = %for.inc.6.err_tx_irq_unmap.thread189_crit_edge, %for.inc.5.err_tx_irq_unmap.thread189_crit_edge, %for.inc.4.err_tx_irq_unmap.thread189_crit_edge, %for.inc.3.err_tx_irq_unmap.thread189_crit_edge, %for.inc.2.err_tx_irq_unmap.thread189_crit_edge, %for.inc.1.err_tx_irq_unmap.thread189_crit_edge, %for.inc.err_tx_irq_unmap.thread189_crit_edge
  %i.0173.lcssa.ph = phi i32 [ 7, %for.inc.6.err_tx_irq_unmap.thread189_crit_edge ], [ 6, %for.inc.5.err_tx_irq_unmap.thread189_crit_edge ], [ 5, %for.inc.4.err_tx_irq_unmap.thread189_crit_edge ], [ 4, %for.inc.3.err_tx_irq_unmap.thread189_crit_edge ], [ 3, %for.inc.2.err_tx_irq_unmap.thread189_crit_edge ], [ 2, %for.inc.1.err_tx_irq_unmap.thread189_crit_edge ], [ 1, %for.inc.err_tx_irq_unmap.thread189_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #7
  br label %while.body95

err_tx_irq_unmap:                                 ; preds = %if.end35
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #7
  br label %while.end99

while.body95:                                     ; preds = %err_tx_irq_unmap.thread189, %while.body.while.body95_crit_edge, %err_rx_irq_unmap.while.body95_crit_edge
  %i.4179.ph = phi i32 [ 8, %err_rx_irq_unmap.while.body95_crit_edge ], [ %i.0173.lcssa.ph, %err_tx_irq_unmap.thread189 ], [ 8, %while.body.while.body95_crit_edge ]
  %dec93 = add nsw i32 %i.4179.ph, -1
  %arrayidx97 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 %dec93
  %80 = ptrtoint ptr %arrayidx97 to i32
  call void @__asan_load4_noabort(i32 %80)
  %81 = load ptr, ptr %arrayidx97, align 4
  %82 = ptrtoint ptr %81 to i32
  call void @__asan_load4_noabort(i32 %82)
  %83 = load i32, ptr %81, align 4
  tail call void @irq_dispose_mapping(i32 noundef %83) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec93)
  %tobool94.not = icmp eq i32 %dec93, 0
  br i1 %tobool94.not, label %while.body95.while.end99_crit_edge, label %while.body95.1

while.body95.while.end99_crit_edge:               ; preds = %while.body95
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end99

while.body95.1:                                   ; preds = %while.body95
  %dec93.1 = add nsw i32 %i.4179.ph, -2
  %arrayidx97.1 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 %dec93.1
  %84 = ptrtoint ptr %arrayidx97.1 to i32
  call void @__asan_load4_noabort(i32 %84)
  %85 = load ptr, ptr %arrayidx97.1, align 4
  %86 = ptrtoint ptr %85 to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load i32, ptr %85, align 4
  tail call void @irq_dispose_mapping(i32 noundef %87) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec93.1)
  %tobool94.not.1 = icmp eq i32 %dec93.1, 0
  br i1 %tobool94.not.1, label %while.body95.1.while.end99_crit_edge, label %while.body95.2

while.body95.1.while.end99_crit_edge:             ; preds = %while.body95.1
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end99

while.body95.2:                                   ; preds = %while.body95.1
  %dec93.2 = add nsw i32 %i.4179.ph, -3
  %arrayidx97.2 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 %dec93.2
  %88 = ptrtoint ptr %arrayidx97.2 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %arrayidx97.2, align 4
  %90 = ptrtoint ptr %89 to i32
  call void @__asan_load4_noabort(i32 %90)
  %91 = load i32, ptr %89, align 4
  tail call void @irq_dispose_mapping(i32 noundef %91) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec93.2)
  %tobool94.not.2 = icmp eq i32 %dec93.2, 0
  br i1 %tobool94.not.2, label %while.body95.2.while.end99_crit_edge, label %while.body95.3

while.body95.2.while.end99_crit_edge:             ; preds = %while.body95.2
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end99

while.body95.3:                                   ; preds = %while.body95.2
  %dec93.3 = add nsw i32 %i.4179.ph, -4
  %arrayidx97.3 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 %dec93.3
  %92 = ptrtoint ptr %arrayidx97.3 to i32
  call void @__asan_load4_noabort(i32 %92)
  %93 = load ptr, ptr %arrayidx97.3, align 4
  %94 = ptrtoint ptr %93 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load i32, ptr %93, align 4
  tail call void @irq_dispose_mapping(i32 noundef %95) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec93.3)
  %tobool94.not.3 = icmp eq i32 %dec93.3, 0
  br i1 %tobool94.not.3, label %while.body95.3.while.end99_crit_edge, label %while.body95.4

while.body95.3.while.end99_crit_edge:             ; preds = %while.body95.3
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end99

while.body95.4:                                   ; preds = %while.body95.3
  %dec93.4 = add nsw i32 %i.4179.ph, -5
  %arrayidx97.4 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 %dec93.4
  %96 = ptrtoint ptr %arrayidx97.4 to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %arrayidx97.4, align 4
  %98 = ptrtoint ptr %97 to i32
  call void @__asan_load4_noabort(i32 %98)
  %99 = load i32, ptr %97, align 4
  tail call void @irq_dispose_mapping(i32 noundef %99) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec93.4)
  %tobool94.not.4 = icmp eq i32 %dec93.4, 0
  br i1 %tobool94.not.4, label %while.body95.4.while.end99_crit_edge, label %while.body95.5

while.body95.4.while.end99_crit_edge:             ; preds = %while.body95.4
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end99

while.body95.5:                                   ; preds = %while.body95.4
  %dec93.5 = add nsw i32 %i.4179.ph, -6
  %arrayidx97.5 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 %dec93.5
  %100 = ptrtoint ptr %arrayidx97.5 to i32
  call void @__asan_load4_noabort(i32 %100)
  %101 = load ptr, ptr %arrayidx97.5, align 4
  %102 = ptrtoint ptr %101 to i32
  call void @__asan_load4_noabort(i32 %102)
  %103 = load i32, ptr %101, align 4
  tail call void @irq_dispose_mapping(i32 noundef %103) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec93.5)
  %tobool94.not.5 = icmp eq i32 %dec93.5, 0
  br i1 %tobool94.not.5, label %while.body95.5.while.end99_crit_edge, label %while.body95.6

while.body95.5.while.end99_crit_edge:             ; preds = %while.body95.5
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end99

while.body95.6:                                   ; preds = %while.body95.5
  %dec93.6 = add nsw i32 %i.4179.ph, -7
  %arrayidx97.6 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 %dec93.6
  %104 = ptrtoint ptr %arrayidx97.6 to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %arrayidx97.6, align 4
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load i32, ptr %105, align 4
  tail call void @irq_dispose_mapping(i32 noundef %107) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %dec93.6)
  %tobool94.not.6 = icmp eq i32 %dec93.6, 0
  br i1 %tobool94.not.6, label %while.body95.6.while.end99_crit_edge, label %while.body95.7

while.body95.6.while.end99_crit_edge:             ; preds = %while.body95.6
  call void @__sanitizer_cov_trace_pc() #6
  br label %while.end99

while.body95.7:                                   ; preds = %while.body95.6
  call void @__sanitizer_cov_trace_pc() #6
  %dec93.7 = add nsw i32 %i.4179.ph, -8
  %arrayidx97.7 = getelementptr [8 x ptr], ptr %call20, i32 0, i32 %dec93.7
  %108 = ptrtoint ptr %arrayidx97.7 to i32
  call void @__asan_load4_noabort(i32 %108)
  %109 = load ptr, ptr %arrayidx97.7, align 4
  %110 = ptrtoint ptr %109 to i32
  call void @__asan_load4_noabort(i32 %110)
  %111 = load i32, ptr %109, align 4
  tail call void @irq_dispose_mapping(i32 noundef %111) #4
  br label %while.end99

while.end99:                                      ; preds = %while.body95.7, %while.body95.6.while.end99_crit_edge, %while.body95.5.while.end99_crit_edge, %while.body95.4.while.end99_crit_edge, %while.body95.3.while.end99_crit_edge, %while.body95.2.while.end99_crit_edge, %while.body95.1.while.end99_crit_edge, %while.body95.while.end99_crit_edge, %err_tx_irq_unmap
  %112 = ptrtoint ptr %irq to i32
  call void @__asan_load4_noabort(i32 %112)
  %113 = load i32, ptr %irq, align 4
  tail call void @irq_dispose_mapping(i32 noundef %113) #4
  br label %err_drv_remove

err_drv_remove:                                   ; preds = %while.end99, %do.end34
  %call101 = tail call i32 @sxgbe_drv_remove(ptr noundef %1) #4
  br label %cleanup

cleanup:                                          ; preds = %err_drv_remove, %if.then84, %if.end76, %do.end25, %do.end, %if.then7.cleanup_crit_edge, %if.then
  %retval.0 = phi i32 [ %4, %if.then ], [ %retval.0.i157161, %do.end ], [ -12, %if.then7.cleanup_crit_edge ], [ 0, %if.then84 ], [ -19, %err_drv_remove ], [ -19, %do.end25 ], [ 0, %if.end76 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_platform_remove(ptr nocapture noundef readonly %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call i32 @sxgbe_drv_remove(ptr noundef %1) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @sxgbe_drv_probe(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @irq_of_parse_and_map(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_ethdev_address(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_pr_debug(ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @irq_dispose_mapping(i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sxgbe_drv_remove(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_get_phy_mode(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_alias_get_id(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @of_property_read_variable_u32_array(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_platform_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @sxgbe_suspend(ptr noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_platform_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @sxgbe_resume(ptr noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_platform_freeze(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @sxgbe_freeze(ptr noundef %1) #4
  ret i32 %call1
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @sxgbe_platform_restore(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %call1 = tail call i32 @sxgbe_restore(ptr noundef %1) #4
  ret i32 %call1
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sxgbe_suspend(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sxgbe_resume(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sxgbe_freeze(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @sxgbe_restore(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.smax.i32(i32, i32) #3

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 29)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !4, !5, !6, !8, !10, !12, !13, !14, !15, !17, !18, !19, !21, !22, !23, !24, !25, !27, !28, !29, !31, !32, !33, !35, !36, !37, !39, !40, !41, !42, !44, !46, !48, !50}
!llvm.module.flags = !{!52, !53, !54, !55, !56, !57, !58, !59}
!llvm.ident = !{!60}

!0 = !{ptr @.str, !1, !"<string literal>", i1 false, i1 false}
!1 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 242, i32 3}
!2 = !{ptr @.str.1, !1, !"<string literal>", i1 false, i1 false}
!3 = !{ptr @.str.2, !1, !"<string literal>", i1 false, i1 false}
!4 = !{ptr @sxgbe_register_platform._entry, !1, !"_entry", i1 false, i1 false}
!5 = !{ptr @sxgbe_register_platform._entry_ptr, !1, !"_entry_ptr", i1 false, i1 false}
!6 = !{ptr @.str.3, !7, !"<string literal>", i1 false, i1 false}
!7 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 230, i32 12}
!8 = !{ptr @sxgbe_platform_driver, !9, !"sxgbe_platform_driver", i1 false, i1 false}
!9 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 226, i32 31}
!10 = !{ptr @.str.4, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 102, i32 4}
!12 = !{ptr @.str.5, !11, !"<string literal>", i1 false, i1 false}
!13 = !{ptr @sxgbe_platform_probe._entry, !11, !"_entry", i1 false, i1 false}
!14 = !{ptr @sxgbe_platform_probe._entry_ptr, !11, !"_entry_ptr", i1 false, i1 false}
!15 = !{ptr @.str.7, !16, !"<string literal>", i1 false, i1 false}
!16 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 109, i32 3}
!17 = !{ptr @sxgbe_platform_probe._entry.6, !16, !"_entry", i1 false, i1 false}
!18 = !{ptr @sxgbe_platform_probe._entry_ptr.8, !16, !"_entry_ptr", i1 false, i1 false}
!19 = !{ptr @.str.10, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 116, i32 3}
!21 = !{ptr @.str.11, !20, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.12, !20, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @sxgbe_platform_probe._entry.9, !20, !"_entry", i1 false, i1 false}
!24 = !{ptr @sxgbe_platform_probe._entry_ptr.13, !20, !"_entry_ptr", i1 false, i1 false}
!25 = !{ptr @.str.15, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 127, i32 4}
!27 = !{ptr @sxgbe_platform_probe._entry.14, !26, !"_entry", i1 false, i1 false}
!28 = !{ptr @sxgbe_platform_probe._entry_ptr.16, !26, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @.str.18, !30, !"<string literal>", i1 false, i1 false}
!30 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 135, i32 4}
!31 = !{ptr @sxgbe_platform_probe._entry.17, !30, !"_entry", i1 false, i1 false}
!32 = !{ptr @sxgbe_platform_probe._entry_ptr.19, !30, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.21, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 142, i32 3}
!35 = !{ptr @sxgbe_platform_probe._entry.20, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @sxgbe_platform_probe._entry_ptr.22, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.23, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 148, i32 2}
!39 = !{ptr @.str.24, !38, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @sxgbe_platform_probe.__UNIQUE_ID_ddebug349, !38, !"__UNIQUE_ID_ddebug349", i1 false, i1 false}
!41 = !{ptr @.str.25, !38, !"<string literal>", i1 false, i1 false}
!42 = !{ptr @.str.26, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 41, i32 37}
!44 = !{ptr @.str.27, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 56, i32 27}
!46 = !{ptr @.str.28, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 57, i32 31}
!48 = !{ptr @sxgbe_dt_ids, !49, !"sxgbe_dt_ids", i1 false, i1 false}
!49 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 220, i32 34}
!50 = !{ptr @sxgbe_platform_pm_ops, !51, !"sxgbe_platform_pm_ops", i1 false, i1 false}
!51 = !{!"../drivers/net/ethernet/samsung/sxgbe/sxgbe_platform.c", i32 209, i32 32}
!52 = !{i32 1, !"wchar_size", i32 2}
!53 = !{i32 1, !"min_enum_size", i32 4}
!54 = !{i32 8, !"branch-target-enforcement", i32 0}
!55 = !{i32 8, !"sign-return-address", i32 0}
!56 = !{i32 8, !"sign-return-address-all", i32 0}
!57 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!58 = !{i32 7, !"uwtable", i32 1}
!59 = !{i32 7, !"frame-pointer", i32 2}
!60 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!61 = !{i64 2148853652, i64 2148853657, i64 2148853670, i64 2148853714, i64 2148853748, i64 2148853769}
