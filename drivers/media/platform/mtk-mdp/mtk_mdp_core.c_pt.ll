; ModuleID = '/llk/IR_all_yes/drivers/media/platform/mtk-mdp/mtk_mdp_core.c_pt.bc'
source_filename = "../drivers/media/platform/mtk-mdp/mtk_mdp_core.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"
module asm "\09.section \22___kcrctab+mtk_mdp_dbg_level\22, \22a\22\09"
module asm "\09.weak\09__crc_mtk_mdp_dbg_level\09\09\09\09"
module asm "\09.long\09__crc_mtk_mdp_dbg_level\09\09\09\09"
module asm "\09.previous\09\09\09\09\09"
module asm "\09.section \22__ksymtab_strings\22,\22aMS\22,%progbits,1\09"
module asm "__kstrtab_mtk_mdp_dbg_level:\09\09\09\09\09"
module asm "\09.asciz \09\22mtk_mdp_dbg_level\22\09\09\09\09\09"
module asm "__kstrtabns_mtk_mdp_dbg_level:\09\09\09\09\09"
module asm "\09.asciz \09\22\22\09\09\09\09\09"
module asm "\09.previous\09\09\09\09\09\09"

%struct.kernel_symbol = type { i32, ptr, ptr }
%struct.kernel_param_ops = type { i32, ptr, ptr, ptr }
%struct.kernel_param = type { ptr, ptr, ptr, i16, i8, i8, %union.anon.76 }
%union.anon.76 = type { ptr }
%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.dev_pm_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.atomic_t = type { i32 }
%struct.mtk_mdp_dev = type { %struct.mutex, %struct.mutex, ptr, ptr, i16, %struct.list_head, ptr, %struct.list_head, ptr, %struct.v4l2_device, ptr, ptr, i32, i32, ptr, %struct.work_struct }
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.list_head = type { ptr, ptr }
%struct.v4l2_device = type { ptr, ptr, %struct.list_head, %struct.spinlock, [36 x i8], ptr, ptr, %struct.v4l2_prio_state, %struct.kref, ptr }
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.v4l2_prio_state = type { [4 x %struct.atomic_t] }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.timer_list = type { %struct.hlist_node, i32, ptr, i32, %struct.lockdep_map }
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
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.device_node = type { ptr, i32, ptr, %struct.fwnode_handle, ptr, ptr, ptr, ptr, ptr, %struct.kobject, i32, ptr }
%struct.fwnode_handle = type { ptr, ptr, ptr, %struct.list_head, %struct.list_head, i8 }

@mtk_mdp_dbg_level = dso_local global { i32, [28 x i8] } zeroinitializer, align 32
@__kstrtab_mtk_mdp_dbg_level = external dso_local constant [0 x i8], align 1
@__kstrtabns_mtk_mdp_dbg_level = external dso_local constant [0 x i8], align 1
@__ksymtab_mtk_mdp_dbg_level = internal constant %struct.kernel_symbol { i32 ptrtoint (ptr @mtk_mdp_dbg_level to i32), ptr @__kstrtab_mtk_mdp_dbg_level, ptr @__kstrtabns_mtk_mdp_dbg_level }, section "___ksymtab+mtk_mdp_dbg_level", align 4
@__param_str_mtk_mdp_dbg_level = internal constant [26 x i8] c"mtk_mdp.mtk_mdp_dbg_level\00", align 1
@param_ops_int = external dso_local constant %struct.kernel_param_ops, align 4
@__param_mtk_mdp_dbg_level = internal constant %struct.kernel_param { ptr @__param_str_mtk_mdp_dbg_level, ptr null, ptr @param_ops_int, i16 420, i8 -1, i8 0, %union.anon.76 { ptr @mtk_mdp_dbg_level } }, section "__param", align 4
@__UNIQUE_ID_mtk_mdp_dbg_leveltype299 = internal constant [39 x i8] c"mtk_mdp.parmtype=mtk_mdp_dbg_level:int\00", section ".modinfo", align 1
@__initcall__kmod_mtk_mdp__303_313_mtk_mdp_driver_init6 = internal global ptr @mtk_mdp_driver_init, section ".initcall6.init", align 4
@mtk_mdp_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @mtk_mdp_probe, ptr @mtk_mdp_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @mtk_mdp_of_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_mdp_pm_ops, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_mtk_mdp_driver_exit = internal global ptr @mtk_mdp_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author304 = internal constant [54 x i8] c"mtk_mdp.author=Houlong Wei <houlong.wei@mediatek.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description305 = internal constant [52 x i8] c"mtk_mdp.description=Mediatek image processor driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file306 = internal constant [52 x i8] c"mtk_mdp.file=drivers/media/platform/mtk-mdp/mtk-mdp\00", section ".modinfo", align 1
@__UNIQUE_ID_license307 = internal constant [23 x i8] c"mtk_mdp.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtk-mdp\00", [24 x i8] zeroinitializer }, align 32
@mtk_mdp_of_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-mdp\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@mtk_mdp_pm_ops = internal constant { %struct.dev_pm_ops, [36 x i8] } { %struct.dev_pm_ops { ptr null, ptr null, ptr @mtk_mdp_suspend, ptr @mtk_mdp_resume, ptr @mtk_mdp_suspend, ptr @mtk_mdp_resume, ptr @mtk_mdp_suspend, ptr @mtk_mdp_resume, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr @mtk_mdp_pm_suspend, ptr @mtk_mdp_pm_resume, ptr null }, [36 x i8] zeroinitializer }, align 32
@mtk_mdp_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"&mdp->lock\00", [21 x i8] zeroinitializer }, align 32
@mtk_mdp_probe.__key.2 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.3 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"&mdp->vpulock\00", [18 x i8] zeroinitializer }, align 32
@mtk_mdp_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 131, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"device tree is out of date\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"mtk_mdp_probe\00", [18 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/media/platform/mtk-mdp/mtk_mdp_core.c\00", [50 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@mtk_mdp_probe._entry_ptr = internal global ptr @mtk_mdp_probe._entry, section ".printk_index", align 4
@mtk_mdp_comp_dt_ids = internal constant { [5 x %struct.of_device_id], [236 x i8] } { [5 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-mdp-rdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-mdp-rsz\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 1 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-mdp-wdma\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 2 to ptr) }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"mediatek,mt8173-mdp-wrot\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr inttoptr (i32 3 to ptr) }, %struct.of_device_id zeroinitializer], [236 x i8] zeroinitializer }, align 32
@mtk_mdp_probe._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 147, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Skipping disabled component %pOF\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@mtk_mdp_probe._entry_ptr.12 = internal global ptr @mtk_mdp_probe._entry.9, section ".printk_index", align 4
@.str.13 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"%s\00", [29 x i8] zeroinitializer }, align 32
@mtk_mdp_probe._entry.14 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.5, ptr @.str.6, i32 171, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to alloc job workqueue\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_mdp_probe._entry_ptr.16 = internal global ptr @mtk_mdp_probe._entry.14, section ".printk_index", align 4
@.str.17 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"mdp_wdt_wq\00", [21 x i8] zeroinitializer }, align 32
@mtk_mdp_probe._entry.18 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.5, ptr @.str.6, i32 178, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"unable to alloc wdt workqueue\0A\00", [33 x i8] zeroinitializer }, align 32
@mtk_mdp_probe._entry_ptr.20 = internal global ptr @mtk_mdp_probe._entry.18, section ".printk_index", align 4
@mtk_mdp_probe.__key.21 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.22 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"(work_completion)(&mdp->wdt_work)\00", [62 x i8] zeroinitializer }, align 32
@mtk_mdp_probe._entry.23 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.24, ptr @.str.5, ptr @.str.6, i32 186, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"Failed to register v4l2 device\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_mdp_probe._entry_ptr.25 = internal global ptr @mtk_mdp_probe._entry.23, section ".printk_index", align 4
@mtk_mdp_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.5, ptr @.str.6, i32 193, ptr null, ptr null }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"\013%s: Failed to init mem2mem device\0A\00", [59 x i8] zeroinitializer }, align 32
@mtk_mdp_probe._entry_ptr.28 = internal global ptr @mtk_mdp_probe._entry.26, section ".printk_index", align 4
@mtk_mdp_probe._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.5, ptr @.str.6, i32 201, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"Failed to register reset handler\0A\00", [62 x i8] zeroinitializer }, align 32
@mtk_mdp_probe._entry_ptr.31 = internal global ptr @mtk_mdp_probe._entry.29, section ".printk_index", align 4
@mtk_mdp_probe._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.5, ptr @.str.6, i32 209, ptr @.str.11, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"Failed to set vb2 dma mag seg size\0A\00", [60 x i8] zeroinitializer }, align 32
@mtk_mdp_probe._entry_ptr.34 = internal global ptr @mtk_mdp_probe._entry.32, section ".printk_index", align 4
@mtk_mdp_probe.__UNIQUE_ID_ddebug300 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.5, ptr @.str.6, ptr @.str.36, i8 0, i8 53, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.35 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"mtk_mdp\00", [24 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [32 x i8], [32 x i8] } { [32 x i8] c"mdp-%d registered successfully\0A\00", [32 x i8] zeroinitializer }, align 32
@mtk_mdp_probe.__UNIQUE_ID_ddebug301 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.5, ptr @.str.6, ptr @.str.37, i8 0, i8 58, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.37 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"err %d\0A\00", [24 x i8] zeroinitializer }, align 32
@mtk_mdp_remove.__UNIQUE_ID_ddebug302 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.35, ptr @.str.38, ptr @.str.6, ptr @.str.39, i8 0, i8 65, i8 0, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.38 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"mtk_mdp_remove\00", [17 x i8] zeroinitializer }, align 32
@.str.39 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s driver unloaded\0A\00", [44 x i8] zeroinitializer }, align 32
@___asan_gen_.40 = private unnamed_addr constant [18 x i8] c"mtk_mdp_dbg_level\00", align 1
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 27, i32 5 }
@___asan_gen_.43 = private unnamed_addr constant [15 x i8] c"mtk_mdp_driver\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 303, i32 31 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 307, i32 11 }
@___asan_gen_.49 = private unnamed_addr constant [15 x i8] c"mtk_mdp_of_ids\00", align 1
@___asan_gen_.51 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 49, i32 34 }
@___asan_gen_.52 = private unnamed_addr constant [15 x i8] c"mtk_mdp_pm_ops\00", align 1
@___asan_gen_.54 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 298, i32 32 }
@___asan_gen_.60 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 123, i32 2 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 124, i32 2 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 131, i32 3 }
@___asan_gen_.85 = private unnamed_addr constant [20 x i8] c"mtk_mdp_comp_dt_ids\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 32, i32 34 }
@___asan_gen_.96 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 146, i32 4 }
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 169, i32 16 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 171, i32 3 }
@___asan_gen_.108 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 176, i32 16 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 178, i32 3 }
@___asan_gen_.115 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 182, i32 2 }
@___asan_gen_.126 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 186, i32 3 }
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 193, i32 3 }
@___asan_gen_.138 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 201, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 209, i32 3 }
@___asan_gen_.150 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 214, i32 2 }
@___asan_gen_.153 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 235, i32 2 }
@___asan_gen_.157 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.158 = private constant [49 x i8] c"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c\00", align 1
@___asan_gen_.159 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.158, i32 260, i32 2 }
@llvm.compiler.used = appending global [58 x ptr] [ptr @__UNIQUE_ID_author304, ptr @__UNIQUE_ID_description305, ptr @__UNIQUE_ID_file306, ptr @__UNIQUE_ID_license307, ptr @__UNIQUE_ID_mtk_mdp_dbg_leveltype299, ptr @__exitcall_mtk_mdp_driver_exit, ptr @__initcall__kmod_mtk_mdp__303_313_mtk_mdp_driver_init6, ptr @__ksymtab_mtk_mdp_dbg_level, ptr @__param_mtk_mdp_dbg_level, ptr @mtk_mdp_driver_exit, ptr @mtk_mdp_probe._entry, ptr @mtk_mdp_probe._entry.14, ptr @mtk_mdp_probe._entry.18, ptr @mtk_mdp_probe._entry.23, ptr @mtk_mdp_probe._entry.26, ptr @mtk_mdp_probe._entry.29, ptr @mtk_mdp_probe._entry.32, ptr @mtk_mdp_probe._entry.9, ptr @mtk_mdp_probe._entry_ptr, ptr @mtk_mdp_probe._entry_ptr.12, ptr @mtk_mdp_probe._entry_ptr.16, ptr @mtk_mdp_probe._entry_ptr.20, ptr @mtk_mdp_probe._entry_ptr.25, ptr @mtk_mdp_probe._entry_ptr.28, ptr @mtk_mdp_probe._entry_ptr.31, ptr @mtk_mdp_probe._entry_ptr.34, ptr @mtk_mdp_dbg_level, ptr @mtk_mdp_driver, ptr @.str, ptr @mtk_mdp_of_ids, ptr @mtk_mdp_pm_ops, ptr @mtk_mdp_probe.__key, ptr @.str.1, ptr @mtk_mdp_probe.__key.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @mtk_mdp_comp_dt_ids, ptr @.str.10, ptr @.str.11, ptr @.str.13, ptr @.str.15, ptr @.str.17, ptr @.str.19, ptr @mtk_mdp_probe.__key.21, ptr @.str.22, ptr @.str.24, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.35, ptr @.str.36, ptr @.str.37, ptr @.str.38, ptr @.str.39], section "llvm.metadata"
@0 = internal global [40 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_dbg_level to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 0 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_of_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.49 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.51 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_pm_ops to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.54 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.60 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_probe.__key.2 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_comp_dt_ids to i32), i32 980, i32 1216, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_probe._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.96 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_probe._entry.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.108 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_probe._entry.18 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_probe.__key.21 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.115 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_probe._entry.23 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.126 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_probe._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.138 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @mtk_mdp_probe._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 32, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.150 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.37 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.153 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.39 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.157 to i32), i32 ptrtoint (ptr @___asan_gen_.158 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.159 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mdp_register_component(ptr noundef %mdp, ptr noundef %comp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %comp_list = getelementptr inbounds %struct.mtk_mdp_dev, ptr %mdp, i32 0, i32 5
  %0 = ptrtoint ptr %comp_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %comp_list, align 4
  %call.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef %comp, ptr noundef %comp_list, ptr noundef %1) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_add.exit_crit_edge

entry.list_add.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_add.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i = getelementptr inbounds %struct.list_head, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %prev1.i.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %comp, ptr %prev1.i.i, align 4
  %3 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %1, ptr %comp, align 4
  %prev3.i.i = getelementptr inbounds %struct.list_head, ptr %comp, i32 0, i32 1
  %4 = ptrtoint ptr %prev3.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %comp_list, ptr %prev3.i.i, align 4
  %5 = ptrtoint ptr %comp_list to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %comp, ptr %comp_list, align 4
  br label %list_add.exit

list_add.exit:                                    ; preds = %if.end.i.i, %entry.list_add.exit_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define dso_local void @mtk_mdp_unregister_component(ptr nocapture readnone %mdp, ptr noundef %comp) local_unnamed_addr #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %comp) #4
  br i1 %call.i.i, label %if.end.i.i, label %entry.list_del.exit_crit_edge

entry.list_del.exit_crit_edge:                    ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %list_del.exit

if.end.i.i:                                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %comp, i32 0, i32 1
  %0 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %prev.i.i, align 4
  %2 = ptrtoint ptr %comp to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %comp, align 4
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %1, ptr %prev1.i.i.i, align 4
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_store4_noabort(i32 %5)
  store volatile ptr %3, ptr %1, align 4
  br label %list_del.exit

list_del.exit:                                    ; preds = %if.end.i.i, %entry.list_del.exit_crit_edge
  %6 = ptrtoint ptr %comp to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr inttoptr (i32 256 to ptr), ptr %comp, align 4
  %prev.i = getelementptr inbounds %struct.list_head, ptr %comp, i32 0, i32 1
  %7 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i, align 4
  ret void
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_driver_init() #1 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @mtk_mdp_driver, ptr noundef null) #4
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mdp_driver_exit() #1 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @platform_driver_unregister(ptr noundef nonnull @mtk_mdp_driver) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_add_valid(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @__list_del_entry_valid(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_probe(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 412, i32 noundef 3520) #4
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup155_crit_edge, label %if.end

entry.cleanup155_crit_edge:                       ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %cleanup155

if.end:                                           ; preds = %entry
  %id = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 1
  %0 = ptrtoint ptr %id to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %id, align 4
  %conv = trunc i32 %1 to i16
  %id2 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 4
  %2 = ptrtoint ptr %id2 to i32
  call void @__asan_store2_noabort(i32 %2)
  store i16 %conv, ptr %id2, align 4
  %pdev3 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 2
  %3 = ptrtoint ptr %pdev3 to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %pdev, ptr %pdev3, align 4
  %comp_list = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 5
  %4 = ptrtoint ptr %comp_list to i32
  call void @__asan_store4_noabort(i32 %4)
  store volatile ptr %comp_list, ptr %comp_list, align 4
  %prev.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 5, i32 1
  %5 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %comp_list, ptr %prev.i, align 4
  %ctx_list = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 7
  %6 = ptrtoint ptr %ctx_list to i32
  call void @__asan_store4_noabort(i32 %6)
  store volatile ptr %ctx_list, ptr %ctx_list, align 4
  %prev.i241 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 7, i32 1
  %7 = ptrtoint ptr %prev.i241 to i32
  call void @__asan_store4_noabort(i32 %7)
  store ptr %ctx_list, ptr %prev.i241, align 4
  tail call void @__mutex_init(ptr noundef nonnull %call.i, ptr noundef nonnull @.str.1, ptr noundef nonnull @mtk_mdp_probe.__key) #4
  %vpulock = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 1
  tail call void @__mutex_init(ptr noundef %vpulock, ptr noundef nonnull @.str.3, ptr noundef nonnull @mtk_mdp_probe.__key.2) #4
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %8 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %of_node, align 8
  %call7 = tail call ptr @of_get_next_child(ptr noundef %9, ptr noundef null) #4
  %tobool8.not = icmp eq ptr %call7, null
  br i1 %tobool8.not, label %if.else, label %if.then9

if.then9:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @of_node_put(ptr noundef nonnull %call7) #4
  %10 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %of_node, align 8
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %dev1, ptr noundef nonnull @.str.4) #7
  br label %if.end16

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  %12 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %of_node, align 8
  %parent15 = getelementptr inbounds %struct.device_node, ptr %13, i32 0, i32 6
  %14 = ptrtoint ptr %parent15 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %parent15, align 4
  br label %if.end16

if.end16:                                         ; preds = %if.else, %if.then9
  %parent.0 = phi ptr [ %11, %if.then9 ], [ %15, %if.else ]
  %call17 = tail call ptr @of_get_next_child(ptr noundef %parent.0, ptr noundef null) #4
  %cmp.not253 = icmp eq ptr %call17, null
  br i1 %cmp.not253, label %if.end16.for.end_crit_edge, label %if.end16.for.body_crit_edge

if.end16.for.body_crit_edge:                      ; preds = %if.end16
  br label %for.body

if.end16.for.end_crit_edge:                       ; preds = %if.end16
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.inc.for.body_crit_edge, %if.end16.for.body_crit_edge
  %node.0254 = phi ptr [ %call38, %for.inc.for.body_crit_edge ], [ %call17, %if.end16.for.body_crit_edge ]
  %call19 = tail call ptr @of_match_node(ptr noundef nonnull @mtk_mdp_comp_dt_ids, ptr noundef nonnull %node.0254) #4
  %tobool20.not = icmp eq ptr %call19, null
  br i1 %tobool20.not, label %for.body.for.inc_crit_edge, label %if.end22

for.body.for.inc_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end22:                                         ; preds = %for.body
  %call23 = tail call zeroext i1 @of_device_is_available(ptr noundef nonnull %node.0254) #4
  br i1 %call23, label %if.end28, label %do.end27

do.end27:                                         ; preds = %if.end22
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.10, ptr noundef nonnull %node.0254) #7
  br label %for.inc

if.end28:                                         ; preds = %if.end22
  %data = getelementptr inbounds %struct.of_device_id, ptr %call19, i32 0, i32 3
  %16 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %data, align 4
  %call.i242 = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 28, i32 noundef 3520) #4
  %tobool30.not = icmp eq ptr %call.i242, null
  br i1 %tobool30.not, label %if.then31, label %if.end32

if.then31:                                        ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @of_node_put(ptr noundef nonnull %node.0254) #4
  br label %err_comp

if.end32:                                         ; preds = %if.end28
  %18 = ptrtoint ptr %17 to i32
  %call33 = tail call i32 @mtk_mdp_comp_init(ptr noundef %dev1, ptr noundef nonnull %node.0254, ptr noundef nonnull %call.i242, i32 noundef %18) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call33)
  %tobool34.not = icmp eq i32 %call33, 0
  br i1 %tobool34.not, label %if.end36, label %if.then35

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @of_node_put(ptr noundef nonnull %node.0254) #4
  br label %err_comp

if.end36:                                         ; preds = %if.end32
  %19 = ptrtoint ptr %comp_list to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %comp_list, align 4
  %call.i.i.i = tail call zeroext i1 @__list_add_valid(ptr noundef nonnull %call.i242, ptr noundef %comp_list, ptr noundef %20) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %if.end36.for.inc_crit_edge

if.end36.for.inc_crit_edge:                       ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.inc

if.end.i.i.i:                                     ; preds = %if.end36
  call void @__sanitizer_cov_trace_pc() #6
  %prev1.i.i.i = getelementptr inbounds %struct.list_head, ptr %20, i32 0, i32 1
  %21 = ptrtoint ptr %prev1.i.i.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i242, ptr %prev1.i.i.i, align 4
  %22 = ptrtoint ptr %call.i242 to i32
  call void @__asan_store4_noabort(i32 %22)
  store ptr %20, ptr %call.i242, align 4
  %prev3.i.i.i = getelementptr inbounds %struct.list_head, ptr %call.i242, i32 0, i32 1
  %23 = ptrtoint ptr %prev3.i.i.i to i32
  call void @__asan_store4_noabort(i32 %23)
  store ptr %comp_list, ptr %prev3.i.i.i, align 4
  %24 = ptrtoint ptr %comp_list to i32
  call void @__asan_store4_noabort(i32 %24)
  store volatile ptr %call.i242, ptr %comp_list, align 4
  br label %for.inc

for.inc:                                          ; preds = %if.end.i.i.i, %if.end36.for.inc_crit_edge, %do.end27, %for.body.for.inc_crit_edge
  %call38 = tail call ptr @of_get_next_child(ptr noundef %parent.0, ptr noundef nonnull %node.0254) #4
  %cmp.not = icmp eq ptr %call38, null
  br i1 %cmp.not, label %for.inc.for.end_crit_edge, label %for.inc.for.body_crit_edge

for.inc.for.body_crit_edge:                       ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.inc.for.end_crit_edge:                        ; preds = %for.inc
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.inc.for.end_crit_edge, %if.end16.for.end_crit_edge
  %call39 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.13, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str) #4
  %job_wq = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 10
  %25 = ptrtoint ptr %job_wq to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr %call39, ptr %job_wq, align 4
  %tobool41.not = icmp eq ptr %call39, null
  br i1 %tobool41.not, label %do.end45, label %if.end47

do.end45:                                         ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.15) #7
  br label %err_comp

if.end47:                                         ; preds = %for.end
  %call48 = tail call ptr (ptr, i32, i32, ...) @alloc_workqueue(ptr noundef nonnull @.str.13, i32 noundef 917514, i32 noundef 1, ptr noundef nonnull @.str.17) #4
  %wdt_wq = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 14
  %26 = ptrtoint ptr %wdt_wq to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call48, ptr %wdt_wq, align 4
  %tobool50.not = icmp eq ptr %call48, null
  br i1 %tobool50.not, label %do.end54, label %do.body57

do.end54:                                         ; preds = %if.end47
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.19) #7
  br label %err_alloc_wdt_wq

do.body57:                                        ; preds = %if.end47
  %wdt_work = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 15
  tail call void @__init_work(ptr noundef %wdt_work, i32 noundef 0) #4
  %27 = ptrtoint ptr %wdt_work to i32
  call void @__asan_store4_noabort(i32 %27)
  store i32 -64, ptr %wdt_work, align 4
  %lockdep_map = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 15, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.22, ptr noundef nonnull @mtk_mdp_probe.__key.21, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #4
  %entry62 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 15, i32 1
  %28 = ptrtoint ptr %entry62 to i32
  call void @__asan_store4_noabort(i32 %28)
  store volatile ptr %entry62, ptr %entry62, align 4
  %prev.i243 = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 15, i32 1, i32 1
  %29 = ptrtoint ptr %prev.i243 to i32
  call void @__asan_store4_noabort(i32 %29)
  store ptr %entry62, ptr %prev.i243, align 4
  %func = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 15, i32 2
  %30 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %30)
  store ptr @mtk_mdp_wdt_worker, ptr %func, align 4
  %v4l2_dev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 9
  %call66 = tail call i32 @v4l2_device_register(ptr noundef %dev1, ptr noundef %v4l2_dev) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call66)
  %tobool67.not = icmp eq i32 %call66, 0
  br i1 %tobool67.not, label %if.end73, label %do.end71

do.end71:                                         ; preds = %do.body57
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.24) #7
  br label %err_dev_register

if.end73:                                         ; preds = %do.body57
  %call74 = tail call i32 @mtk_mdp_register_m2m_device(ptr noundef nonnull %call.i) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call74)
  %tobool75.not = icmp eq i32 %call74, 0
  br i1 %tobool75.not, label %if.end82, label %do.end79

do.end79:                                         ; preds = %if.end73
  call void @__sanitizer_cov_trace_pc() #6
  %name = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 9, i32 4
  %call81 = tail call i32 (ptr, ...) @_printk(ptr noundef nonnull @.str.27, ptr noundef %name) #7
  br label %err_m2m_register

if.end82:                                         ; preds = %if.end73
  %call83 = tail call ptr @vpu_get_plat_device(ptr noundef %pdev) #4
  %vpu_dev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %call.i, i32 0, i32 11
  %31 = ptrtoint ptr %vpu_dev to i32
  call void @__asan_store4_noabort(i32 %31)
  store ptr %call83, ptr %vpu_dev, align 4
  %call85 = tail call i32 @vpu_wdt_reg_handler(ptr noundef %call83, ptr noundef nonnull @mtk_mdp_reset_handler, ptr noundef nonnull %call.i, i32 noundef 2) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call85)
  %tobool86.not = icmp eq i32 %call85, 0
  br i1 %tobool86.not, label %if.end92, label %do.end90

do.end90:                                         ; preds = %if.end82
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.30) #7
  br label %err_m2m_register

if.end92:                                         ; preds = %if.end82
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %32 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %32)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call94 = tail call i32 @vb2_dma_contig_set_max_seg_size(ptr noundef %dev1, i32 noundef -1) #4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call94)
  %tobool95.not = icmp eq i32 %call94, 0
  br i1 %tobool95.not, label %if.end101, label %do.end99

do.end99:                                         ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.33) #7
  br label %err_m2m_register

if.end101:                                        ; preds = %if.end92
  call void @__sanitizer_cov_trace_pc() #6
  tail call void @pm_runtime_enable(ptr noundef %dev1) #4
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_mdp_probe.__UNIQUE_ID_ddebug300, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_mdp_probe, %if.then108)) #4
          to label %cleanup155 [label %if.then108], !srcloc !98

if.then108:                                       ; preds = %if.end101
  call void @__sanitizer_cov_trace_pc() #6
  %33 = ptrtoint ptr %id2 to i32
  call void @__asan_load2_noabort(i32 %33)
  %34 = load i16, ptr %id2, align 4
  %conv110 = zext i16 %34 to i32
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_mdp_probe.__UNIQUE_ID_ddebug300, ptr noundef %dev1, ptr noundef nonnull @.str.36, i32 noundef %conv110) #4
  br label %cleanup155

err_m2m_register:                                 ; preds = %do.end99, %do.end90, %do.end79
  %ret.2 = phi i32 [ %call74, %do.end79 ], [ %call85, %do.end90 ], [ %call94, %do.end99 ]
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #4
  br label %err_dev_register

err_dev_register:                                 ; preds = %err_m2m_register, %do.end71
  %ret.3 = phi i32 [ -22, %do.end71 ], [ %ret.2, %err_m2m_register ]
  %35 = ptrtoint ptr %wdt_wq to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %wdt_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %36) #4
  br label %err_alloc_wdt_wq

err_alloc_wdt_wq:                                 ; preds = %err_dev_register, %do.end54
  %ret.4 = phi i32 [ %ret.3, %err_dev_register ], [ -12, %do.end54 ]
  %37 = ptrtoint ptr %job_wq to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %job_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %38) #4
  br label %err_comp

err_comp:                                         ; preds = %err_alloc_wdt_wq, %do.end45, %if.then35, %if.then31
  %ret.5 = phi i32 [ %ret.4, %err_alloc_wdt_wq ], [ -12, %do.end45 ], [ %call33, %if.then35 ], [ -12, %if.then31 ]
  %39 = ptrtoint ptr %comp_list to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %comp_list, align 4
  %cmp127.not256 = icmp eq ptr %40, %comp_list
  br i1 %cmp127.not256, label %err_comp.do.body139_crit_edge, label %err_comp.for.body131_crit_edge

err_comp.for.body131_crit_edge:                   ; preds = %err_comp
  br label %for.body131

err_comp.do.body139_crit_edge:                    ; preds = %err_comp
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body139

for.body131:                                      ; preds = %mtk_mdp_unregister_component.exit.for.body131_crit_edge, %err_comp.for.body131_crit_edge
  %comp.0257 = phi ptr [ %comp_temp.0, %mtk_mdp_unregister_component.exit.for.body131_crit_edge ], [ %40, %err_comp.for.body131_crit_edge ]
  %41 = ptrtoint ptr %comp.0257 to i32
  call void @__asan_load4_noabort(i32 %41)
  %comp_temp.0 = load ptr, ptr %comp.0257, align 4
  %call.i.i.i244 = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %comp.0257) #4
  br i1 %call.i.i.i244, label %if.end.i.i.i245, label %for.body131.mtk_mdp_unregister_component.exit_crit_edge

for.body131.mtk_mdp_unregister_component.exit_crit_edge: ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_mdp_unregister_component.exit

if.end.i.i.i245:                                  ; preds = %for.body131
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %comp.0257, i32 0, i32 1
  %42 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %prev.i.i.i, align 4
  %44 = ptrtoint ptr %comp.0257 to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %comp.0257, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %46)
  store ptr %43, ptr %prev1.i.i.i.i, align 4
  %47 = ptrtoint ptr %43 to i32
  call void @__asan_store4_noabort(i32 %47)
  store volatile ptr %45, ptr %43, align 4
  br label %mtk_mdp_unregister_component.exit

mtk_mdp_unregister_component.exit:                ; preds = %if.end.i.i.i245, %for.body131.mtk_mdp_unregister_component.exit_crit_edge
  %48 = ptrtoint ptr %comp.0257 to i32
  call void @__asan_store4_noabort(i32 %48)
  store ptr inttoptr (i32 256 to ptr), ptr %comp.0257, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %comp.0257, i32 0, i32 1
  %49 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %49)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mtk_mdp_comp_deinit(ptr noundef %dev1, ptr noundef %comp.0257) #4
  %cmp127.not = icmp eq ptr %comp_temp.0, %comp_list
  br i1 %cmp127.not, label %mtk_mdp_unregister_component.exit.do.body139_crit_edge, label %mtk_mdp_unregister_component.exit.for.body131_crit_edge

mtk_mdp_unregister_component.exit.for.body131_crit_edge: ; preds = %mtk_mdp_unregister_component.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body131

mtk_mdp_unregister_component.exit.do.body139_crit_edge: ; preds = %mtk_mdp_unregister_component.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body139

do.body139:                                       ; preds = %mtk_mdp_unregister_component.exit.do.body139_crit_edge, %err_comp.do.body139_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_mdp_probe.__UNIQUE_ID_ddebug301, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_mdp_probe, %if.then151)) #4
          to label %cleanup155 [label %if.then151], !srcloc !98

if.then151:                                       ; preds = %do.body139
  call void @__sanitizer_cov_trace_pc() #6
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_mdp_probe.__UNIQUE_ID_ddebug301, ptr noundef %dev1, ptr noundef nonnull @.str.37, i32 noundef %ret.5) #4
  br label %cleanup155

cleanup155:                                       ; preds = %if.then151, %do.body139, %if.then108, %if.end101, %entry.cleanup155_crit_edge
  %retval.0 = phi i32 [ -12, %entry.cleanup155_crit_edge ], [ 0, %if.then108 ], [ %ret.5, %if.then151 ], [ 0, %if.end101 ], [ %ret.5, %do.body139 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_remove(ptr noundef %pdev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  tail call void @__pm_runtime_disable(ptr noundef %dev, i1 noundef zeroext true) #4
  tail call void @mtk_mdp_unregister_m2m_device(ptr noundef %1) #4
  %v4l2_dev = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 9
  tail call void @v4l2_device_unregister(ptr noundef %v4l2_dev) #4
  %wdt_wq = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 14
  %2 = ptrtoint ptr %wdt_wq to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %wdt_wq, align 4
  tail call void @flush_workqueue(ptr noundef %3) #4
  %4 = ptrtoint ptr %wdt_wq to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %wdt_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %5) #4
  %job_wq = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 10
  %6 = ptrtoint ptr %job_wq to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %job_wq, align 4
  tail call void @flush_workqueue(ptr noundef %7) #4
  %8 = ptrtoint ptr %job_wq to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %job_wq, align 4
  tail call void @destroy_workqueue(ptr noundef %9) #4
  %comp_list = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 5
  %10 = ptrtoint ptr %comp_list to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %comp_list, align 4
  %cmp.not40 = icmp eq ptr %11, %comp_list
  br i1 %cmp.not40, label %entry.do.body_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.do.body_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

for.body:                                         ; preds = %mtk_mdp_unregister_component.exit.for.body_crit_edge, %entry.for.body_crit_edge
  %comp.041 = phi ptr [ %comp_temp.0, %mtk_mdp_unregister_component.exit.for.body_crit_edge ], [ %11, %entry.for.body_crit_edge ]
  %12 = ptrtoint ptr %comp.041 to i32
  call void @__asan_load4_noabort(i32 %12)
  %comp_temp.0 = load ptr, ptr %comp.041, align 4
  %call.i.i.i = tail call zeroext i1 @__list_del_entry_valid(ptr noundef %comp.041) #4
  br i1 %call.i.i.i, label %if.end.i.i.i, label %for.body.mtk_mdp_unregister_component.exit_crit_edge

for.body.mtk_mdp_unregister_component.exit_crit_edge: ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_mdp_unregister_component.exit

if.end.i.i.i:                                     ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  %prev.i.i.i = getelementptr inbounds %struct.list_head, ptr %comp.041, i32 0, i32 1
  %13 = ptrtoint ptr %prev.i.i.i to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %prev.i.i.i, align 4
  %15 = ptrtoint ptr %comp.041 to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %comp.041, align 4
  %prev1.i.i.i.i = getelementptr inbounds %struct.list_head, ptr %16, i32 0, i32 1
  %17 = ptrtoint ptr %prev1.i.i.i.i to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %14, ptr %prev1.i.i.i.i, align 4
  %18 = ptrtoint ptr %14 to i32
  call void @__asan_store4_noabort(i32 %18)
  store volatile ptr %16, ptr %14, align 4
  br label %mtk_mdp_unregister_component.exit

mtk_mdp_unregister_component.exit:                ; preds = %if.end.i.i.i, %for.body.mtk_mdp_unregister_component.exit_crit_edge
  %19 = ptrtoint ptr %comp.041 to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr inttoptr (i32 256 to ptr), ptr %comp.041, align 4
  %prev.i.i = getelementptr inbounds %struct.list_head, ptr %comp.041, i32 0, i32 1
  %20 = ptrtoint ptr %prev.i.i to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr inttoptr (i32 290 to ptr), ptr %prev.i.i, align 4
  tail call void @mtk_mdp_comp_deinit(ptr noundef %dev, ptr noundef %comp.041) #4
  %cmp.not = icmp eq ptr %comp_temp.0, %comp_list
  br i1 %cmp.not, label %mtk_mdp_unregister_component.exit.do.body_crit_edge, label %mtk_mdp_unregister_component.exit.for.body_crit_edge

mtk_mdp_unregister_component.exit.for.body_crit_edge: ; preds = %mtk_mdp_unregister_component.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

mtk_mdp_unregister_component.exit.do.body_crit_edge: ; preds = %mtk_mdp_unregister_component.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %do.body

do.body:                                          ; preds = %mtk_mdp_unregister_component.exit.do.body_crit_edge, %entry.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @mtk_mdp_remove.__UNIQUE_ID_ddebug302, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@mtk_mdp_remove, %if.then)) #4
          to label %do.end [label %if.then], !srcloc !98

if.then:                                          ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #6
  %21 = ptrtoint ptr %pdev to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %pdev, align 8
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @mtk_mdp_remove.__UNIQUE_ID_ddebug302, ptr noundef %dev, ptr noundef nonnull @.str.39, ptr noundef %22) #4
  br label %do.end

do.end:                                           ; preds = %if.then, %do.body
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @__mutex_init(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_get_next_child(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @of_node_put(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @of_device_is_available(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_mdp_comp_init(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @alloc_workqueue(ptr noundef, i32 noundef, i32 noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mdp_wdt_worker(ptr noundef readonly %work) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %ctx_list = getelementptr i8, ptr %work, i32 -160
  %0 = ptrtoint ptr %ctx_list to i32
  call void @__asan_load4_noabort(i32 %0)
  %ctx.013 = load ptr, ptr %ctx_list, align 4
  %cmp.not14 = icmp eq ptr %ctx.013, %ctx_list
  br i1 %cmp.not14, label %entry.for.end_crit_edge, label %entry.for.body_crit_edge

entry.for.body_crit_edge:                         ; preds = %entry
  br label %for.body

entry.for.end_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.body:                                         ; preds = %for.body.for.body_crit_edge, %entry.for.body_crit_edge
  %ctx.015 = phi ptr [ %ctx.0, %for.body.for.body_crit_edge ], [ %ctx.013, %entry.for.body_crit_edge ]
  tail call void @mtk_mdp_ctx_state_lock_set(ptr noundef %ctx.015, i32 noundef 32) #4
  %1 = ptrtoint ptr %ctx.015 to i32
  call void @__asan_load4_noabort(i32 %1)
  %ctx.0 = load ptr, ptr %ctx.015, align 4
  %cmp.not = icmp eq ptr %ctx.0, %ctx_list
  br i1 %cmp.not, label %for.body.for.end_crit_edge, label %for.body.for.body_crit_edge

for.body.for.body_crit_edge:                      ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body

for.body.for.end_crit_edge:                       ; preds = %for.body
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.end

for.end:                                          ; preds = %for.body.for.end_crit_edge, %entry.for.end_crit_edge
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @v4l2_device_register(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @mtk_mdp_register_m2m_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: cold null_pointer_is_valid
declare dso_local i32 @_printk(ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @vpu_get_plat_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vpu_wdt_reg_handler(ptr noundef, ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @mtk_mdp_reset_handler(ptr noundef %priv) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %wdt_wq = getelementptr inbounds %struct.mtk_mdp_dev, ptr %priv, i32 0, i32 14
  %0 = ptrtoint ptr %wdt_wq to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %wdt_wq, align 4
  %wdt_work = getelementptr inbounds %struct.mtk_mdp_dev, ptr %priv, i32 0, i32 15
  %call.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %1, ptr noundef %wdt_work) #4
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @vb2_dma_contig_set_max_seg_size(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @pm_runtime_enable(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @v4l2_device_unregister(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @destroy_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mdp_comp_deinit(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mdp_ctx_state_lock_set(ptr noundef, i32 noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mdp_unregister_m2m_device(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @flush_workqueue(ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @__pm_runtime_disable(ptr noundef, i1 noundef zeroext) local_unnamed_addr #2

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.return_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

pm_runtime_suspended.exit.return_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %comp_list.i.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %comp_list.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %comp_node.012.i.i = load ptr, ptr %comp_list.i.i, align 4
  %cmp.not13.i.i = icmp eq ptr %comp_node.012.i.i, %comp_list.i.i
  br i1 %cmp.not13.i.i, label %if.end.return_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %comp_node.014.i.i = phi ptr [ %comp_node.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %comp_node.012.i.i, %if.end.for.body.i.i_crit_edge ]
  tail call void @mtk_mdp_comp_clock_off(ptr noundef %dev1.i.i, ptr noundef %comp_node.014.i.i) #4
  %8 = ptrtoint ptr %comp_node.014.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %comp_node.0.i.i = load ptr, ptr %comp_node.014.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %comp_node.0.i.i, %comp_list.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.return_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body.i.i.return_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

return:                                           ; preds = %for.body.i.i.return_crit_edge, %if.end.return_crit_edge, %pm_runtime_suspended.exit.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %runtime_status.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 18
  %0 = ptrtoint ptr %runtime_status.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load i32, ptr %runtime_status.i, align 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 2, i32 %1)
  %cmp.i = icmp eq i32 %1, 2
  br i1 %cmp.i, label %pm_runtime_suspended.exit, label %entry.if.end_crit_edge

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

pm_runtime_suspended.exit:                        ; preds = %entry
  %disable_depth.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 12, i32 15
  %2 = ptrtoint ptr %disable_depth.i to i32
  call void @__asan_load2_noabort(i32 %2)
  %bf.load.i = load i16, ptr %disable_depth.i, align 4
  call void @__sanitizer_cov_trace_const_cmp2(i16 8192, i16 %bf.load.i)
  %tobool.not.i = icmp ult i16 %bf.load.i, 8192
  br i1 %tobool.not.i, label %pm_runtime_suspended.exit.return_crit_edge, label %pm_runtime_suspended.exit.if.end_crit_edge

pm_runtime_suspended.exit.if.end_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %if.end

pm_runtime_suspended.exit.return_crit_edge:       ; preds = %pm_runtime_suspended.exit
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

if.end:                                           ; preds = %pm_runtime_suspended.exit.if.end_crit_edge, %entry.if.end_crit_edge
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %3 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %driver_data.i.i, align 4
  %pdev.i.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %4, i32 0, i32 2
  %5 = ptrtoint ptr %pdev.i.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %pdev.i.i, align 4
  %dev1.i.i = getelementptr inbounds %struct.platform_device, ptr %6, i32 0, i32 3
  %comp_list.i.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %4, i32 0, i32 5
  %7 = ptrtoint ptr %comp_list.i.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %comp_node.012.i.i = load ptr, ptr %comp_list.i.i, align 4
  %cmp.not13.i.i = icmp eq ptr %comp_node.012.i.i, %comp_list.i.i
  br i1 %cmp.not13.i.i, label %if.end.return_crit_edge, label %if.end.for.body.i.i_crit_edge

if.end.for.body.i.i_crit_edge:                    ; preds = %if.end
  br label %for.body.i.i

if.end.return_crit_edge:                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

for.body.i.i:                                     ; preds = %for.body.i.i.for.body.i.i_crit_edge, %if.end.for.body.i.i_crit_edge
  %comp_node.014.i.i = phi ptr [ %comp_node.0.i.i, %for.body.i.i.for.body.i.i_crit_edge ], [ %comp_node.012.i.i, %if.end.for.body.i.i_crit_edge ]
  tail call void @mtk_mdp_comp_clock_on(ptr noundef %dev1.i.i, ptr noundef %comp_node.014.i.i) #4
  %8 = ptrtoint ptr %comp_node.014.i.i to i32
  call void @__asan_load4_noabort(i32 %8)
  %comp_node.0.i.i = load ptr, ptr %comp_node.014.i.i, align 4
  %cmp.not.i.i = icmp eq ptr %comp_node.0.i.i, %comp_list.i.i
  br i1 %cmp.not.i.i, label %for.body.i.i.return_crit_edge, label %for.body.i.i.for.body.i.i_crit_edge

for.body.i.i.for.body.i.i_crit_edge:              ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i.i

for.body.i.i.return_crit_edge:                    ; preds = %for.body.i.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %return

return:                                           ; preds = %for.body.i.i.return_crit_edge, %if.end.return_crit_edge, %pm_runtime_suspended.exit.return_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_pm_suspend(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdev.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %comp_list.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %comp_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %comp_node.012.i = load ptr, ptr %comp_list.i, align 4
  %cmp.not13.i = icmp eq ptr %comp_node.012.i, %comp_list.i
  br i1 %cmp.not13.i, label %entry.mtk_mdp_clock_off.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mtk_mdp_clock_off.exit_crit_edge:           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_mdp_clock_off.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %comp_node.014.i = phi ptr [ %comp_node.0.i, %for.body.i.for.body.i_crit_edge ], [ %comp_node.012.i, %entry.for.body.i_crit_edge ]
  tail call void @mtk_mdp_comp_clock_off(ptr noundef %dev1.i, ptr noundef %comp_node.014.i) #4
  %5 = ptrtoint ptr %comp_node.014.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %comp_node.0.i = load ptr, ptr %comp_node.014.i, align 4
  %cmp.not.i = icmp eq ptr %comp_node.0.i, %comp_list.i
  br i1 %cmp.not.i, label %for.body.i.mtk_mdp_clock_off.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.mtk_mdp_clock_off.exit_crit_edge:      ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_mdp_clock_off.exit

mtk_mdp_clock_off.exit:                           ; preds = %for.body.i.mtk_mdp_clock_off.exit_crit_edge, %entry.mtk_mdp_clock_off.exit_crit_edge
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @mtk_mdp_pm_resume(ptr nocapture noundef readonly %dev) #0 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #6
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i = getelementptr inbounds %struct.device, ptr %dev, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i, align 4
  %pdev.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %pdev.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %pdev.i, align 4
  %dev1.i = getelementptr inbounds %struct.platform_device, ptr %3, i32 0, i32 3
  %comp_list.i = getelementptr inbounds %struct.mtk_mdp_dev, ptr %1, i32 0, i32 5
  %4 = ptrtoint ptr %comp_list.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %comp_node.012.i = load ptr, ptr %comp_list.i, align 4
  %cmp.not13.i = icmp eq ptr %comp_node.012.i, %comp_list.i
  br i1 %cmp.not13.i, label %entry.mtk_mdp_clock_on.exit_crit_edge, label %entry.for.body.i_crit_edge

entry.for.body.i_crit_edge:                       ; preds = %entry
  br label %for.body.i

entry.mtk_mdp_clock_on.exit_crit_edge:            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_mdp_clock_on.exit

for.body.i:                                       ; preds = %for.body.i.for.body.i_crit_edge, %entry.for.body.i_crit_edge
  %comp_node.014.i = phi ptr [ %comp_node.0.i, %for.body.i.for.body.i_crit_edge ], [ %comp_node.012.i, %entry.for.body.i_crit_edge ]
  tail call void @mtk_mdp_comp_clock_on(ptr noundef %dev1.i, ptr noundef %comp_node.014.i) #4
  %5 = ptrtoint ptr %comp_node.014.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %comp_node.0.i = load ptr, ptr %comp_node.014.i, align 4
  %cmp.not.i = icmp eq ptr %comp_node.0.i, %comp_list.i
  br i1 %cmp.not.i, label %for.body.i.mtk_mdp_clock_on.exit_crit_edge, label %for.body.i.for.body.i_crit_edge

for.body.i.for.body.i_crit_edge:                  ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %for.body.i

for.body.i.mtk_mdp_clock_on.exit_crit_edge:       ; preds = %for.body.i
  call void @__sanitizer_cov_trace_pc() #6
  br label %mtk_mdp_clock_on.exit

mtk_mdp_clock_on.exit:                            ; preds = %for.body.i.mtk_mdp_clock_on.exit_crit_edge, %entry.mtk_mdp_clock_on.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mdp_comp_clock_off(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: null_pointer_is_valid
declare dso_local void @mtk_mdp_comp_clock_on(ptr noundef, ptr noundef) local_unnamed_addr #2

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #4

declare void @__sanitizer_cov_trace_const_cmp2(i16 zeroext, i16 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load2_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store2_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #5 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #5 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 40)
  ret void
}

attributes #0 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #2 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nounwind }
attributes #5 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #6 = { nomerge }
attributes #7 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !4, !5, !7, !8, !10, !12, !14, !15, !17, !18, !20, !22, !24, !25, !27, !28, !30, !31, !32, !33, !34, !35, !36, !38, !39, !40, !41, !43, !45, !46, !47, !49, !51, !52, !53, !55, !56, !58, !59, !60, !62, !63, !64, !66, !67, !68, !70, !71, !72, !74, !75, !76, !78, !79, !81, !83, !84, !85, !87}
!llvm.module.flags = !{!89, !90, !91, !92, !93, !94, !95, !96}
!llvm.ident = !{!97}

!0 = !{ptr @__ksymtab_mtk_mdp_dbg_level, !1, !"__ksymtab_mtk_mdp_dbg_level", i1 false, i1 false}
!1 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 28, i32 1}
!2 = !{ptr @__param_mtk_mdp_dbg_level, !3, !"__param_mtk_mdp_dbg_level", i1 false, i1 false}
!3 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 30, i32 1}
!4 = !{ptr @__UNIQUE_ID_mtk_mdp_dbg_leveltype299, !3, !"__UNIQUE_ID_mtk_mdp_dbg_leveltype299", i1 false, i1 false}
!5 = !{ptr @__initcall__kmod_mtk_mdp__303_313_mtk_mdp_driver_init6, !6, !"__initcall__kmod_mtk_mdp__303_313_mtk_mdp_driver_init6", i1 false, i1 false}
!6 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 313, i32 1}
!7 = !{ptr @__exitcall_mtk_mdp_driver_exit, !6, !"__exitcall_mtk_mdp_driver_exit", i1 false, i1 false}
!8 = !{ptr @__UNIQUE_ID_author304, !9, !"__UNIQUE_ID_author304", i1 false, i1 false}
!9 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 315, i32 1}
!10 = !{ptr @__UNIQUE_ID_description305, !11, !"__UNIQUE_ID_description305", i1 false, i1 false}
!11 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 316, i32 1}
!12 = !{ptr @__UNIQUE_ID_file306, !13, !"__UNIQUE_ID_file306", i1 false, i1 false}
!13 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 317, i32 1}
!14 = !{ptr @__UNIQUE_ID_license307, !13, !"__UNIQUE_ID_license307", i1 false, i1 false}
!15 = !{ptr @mtk_mdp_dbg_level, !16, !"mtk_mdp_dbg_level", i1 false, i1 false}
!16 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 27, i32 5}
!17 = !{ptr @__param_str_mtk_mdp_dbg_level, !3, !"__param_str_mtk_mdp_dbg_level", i1 false, i1 false}
!18 = !{ptr @.str, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 307, i32 11}
!20 = !{ptr @mtk_mdp_driver, !21, !"mtk_mdp_driver", i1 false, i1 false}
!21 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 303, i32 31}
!22 = !{ptr @mtk_mdp_probe.__key, !23, !"__key", i1 false, i1 false}
!23 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 123, i32 2}
!24 = !{ptr @.str.1, !23, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @mtk_mdp_probe.__key.2, !26, !"__key", i1 false, i1 false}
!26 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 124, i32 2}
!27 = !{ptr @.str.3, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.4, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 131, i32 3}
!30 = !{ptr @.str.5, !29, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @.str.6, !29, !"<string literal>", i1 false, i1 false}
!32 = !{ptr @.str.7, !29, !"<string literal>", i1 false, i1 false}
!33 = !{ptr @.str.8, !29, !"<string literal>", i1 false, i1 false}
!34 = !{ptr @mtk_mdp_probe._entry, !29, !"_entry", i1 false, i1 false}
!35 = !{ptr @mtk_mdp_probe._entry_ptr, !29, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 146, i32 4}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @mtk_mdp_probe._entry.9, !37, !"_entry", i1 false, i1 false}
!40 = !{ptr @mtk_mdp_probe._entry_ptr.12, !37, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.13, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 169, i32 16}
!43 = !{ptr @.str.15, !44, !"<string literal>", i1 false, i1 false}
!44 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 171, i32 3}
!45 = !{ptr @mtk_mdp_probe._entry.14, !44, !"_entry", i1 false, i1 false}
!46 = !{ptr @mtk_mdp_probe._entry_ptr.16, !44, !"_entry_ptr", i1 false, i1 false}
!47 = !{ptr @.str.17, !48, !"<string literal>", i1 false, i1 false}
!48 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 176, i32 16}
!49 = !{ptr @.str.19, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 178, i32 3}
!51 = !{ptr @mtk_mdp_probe._entry.18, !50, !"_entry", i1 false, i1 false}
!52 = !{ptr @mtk_mdp_probe._entry_ptr.20, !50, !"_entry_ptr", i1 false, i1 false}
!53 = !{ptr @mtk_mdp_probe.__key.21, !54, !"__key", i1 false, i1 false}
!54 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 182, i32 2}
!55 = !{ptr @.str.22, !54, !"<string literal>", i1 false, i1 false}
!56 = !{ptr @.str.24, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 186, i32 3}
!58 = !{ptr @mtk_mdp_probe._entry.23, !57, !"_entry", i1 false, i1 false}
!59 = !{ptr @mtk_mdp_probe._entry_ptr.25, !57, !"_entry_ptr", i1 false, i1 false}
!60 = !{ptr @.str.27, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 193, i32 3}
!62 = !{ptr @mtk_mdp_probe._entry.26, !61, !"_entry", i1 false, i1 false}
!63 = !{ptr @mtk_mdp_probe._entry_ptr.28, !61, !"_entry_ptr", i1 false, i1 false}
!64 = !{ptr @.str.30, !65, !"<string literal>", i1 false, i1 false}
!65 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 201, i32 3}
!66 = !{ptr @mtk_mdp_probe._entry.29, !65, !"_entry", i1 false, i1 false}
!67 = !{ptr @mtk_mdp_probe._entry_ptr.31, !65, !"_entry_ptr", i1 false, i1 false}
!68 = !{ptr @.str.33, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 209, i32 3}
!70 = !{ptr @mtk_mdp_probe._entry.32, !69, !"_entry", i1 false, i1 false}
!71 = !{ptr @mtk_mdp_probe._entry_ptr.34, !69, !"_entry_ptr", i1 false, i1 false}
!72 = !{ptr @.str.35, !73, !"<string literal>", i1 false, i1 false}
!73 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 214, i32 2}
!74 = !{ptr @.str.36, !73, !"<string literal>", i1 false, i1 false}
!75 = !{ptr @mtk_mdp_probe.__UNIQUE_ID_ddebug300, !73, !"__UNIQUE_ID_ddebug300", i1 false, i1 false}
!76 = !{ptr @.str.37, !77, !"<string literal>", i1 false, i1 false}
!77 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 235, i32 2}
!78 = !{ptr @mtk_mdp_probe.__UNIQUE_ID_ddebug301, !77, !"__UNIQUE_ID_ddebug301", i1 false, i1 false}
!79 = !{ptr @mtk_mdp_comp_dt_ids, !80, !"mtk_mdp_comp_dt_ids", i1 false, i1 false}
!80 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 32, i32 34}
!81 = !{ptr @.str.38, !82, !"<string literal>", i1 false, i1 false}
!82 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 260, i32 2}
!83 = !{ptr @.str.39, !82, !"<string literal>", i1 false, i1 false}
!84 = !{ptr @mtk_mdp_remove.__UNIQUE_ID_ddebug302, !82, !"__UNIQUE_ID_ddebug302", i1 false, i1 false}
!85 = !{ptr @mtk_mdp_of_ids, !86, !"mtk_mdp_of_ids", i1 false, i1 false}
!86 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 49, i32 34}
!87 = !{ptr @mtk_mdp_pm_ops, !88, !"mtk_mdp_pm_ops", i1 false, i1 false}
!88 = !{!"../drivers/media/platform/mtk-mdp/mtk_mdp_core.c", i32 298, i32 32}
!89 = !{i32 1, !"wchar_size", i32 2}
!90 = !{i32 1, !"min_enum_size", i32 4}
!91 = !{i32 8, !"branch-target-enforcement", i32 0}
!92 = !{i32 8, !"sign-return-address", i32 0}
!93 = !{i32 8, !"sign-return-address-all", i32 0}
!94 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!95 = !{i32 7, !"uwtable", i32 1}
!96 = !{i32 7, !"frame-pointer", i32 2}
!97 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!98 = !{i64 2148727350, i64 2148727355, i64 2148727368, i64 2148727412, i64 2148727446, i64 2148727467}
