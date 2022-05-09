; ModuleID = '/llk/IR_all_yes/drivers/power/supply/isp1704_charger.c_pt.bc'
source_filename = "../drivers/power/supply/isp1704_charger.c"
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
%struct.mutex = type { %struct.atomic_t, %struct.raw_spinlock, %struct.optimistic_spin_queue, %struct.list_head, ptr, %struct.lockdep_map }
%struct.atomic_t = type { i32 }
%struct.raw_spinlock = type { %struct.arch_spinlock_t, i32, i32, ptr, %struct.lockdep_map }
%struct.arch_spinlock_t = type { %union.anon.1 }
%union.anon.1 = type { i32 }
%struct.optimistic_spin_queue = type { %struct.atomic_t }
%struct.list_head = type { ptr, ptr }
%struct.lockdep_map = type { ptr, [2 x ptr], ptr, i8, i8, i8, i32, i32 }
%struct.power_supply_config = type { ptr, ptr, ptr, ptr, ptr, i32 }
%struct.platform_device = type { ptr, i32, i8, %struct.device, i64, %struct.device_dma_parameters, i32, ptr, ptr, ptr, ptr, %struct.pdev_archdata }
%struct.device = type { %struct.kobject, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, %struct.mutex, %struct.mutex, %struct.dev_links_info, %struct.dev_pm_info, ptr, ptr, ptr, %struct.dev_msi_info, ptr, ptr, i64, i64, ptr, ptr, %struct.list_head, ptr, ptr, %struct.dev_archdata, ptr, ptr, i32, i32, %struct.spinlock, %struct.list_head, ptr, ptr, ptr, ptr, ptr, i32, i8 }
%struct.kobject = type { ptr, %struct.list_head, ptr, ptr, ptr, ptr, %struct.kref, %struct.delayed_work, i8 }
%struct.kref = type { %struct.refcount_struct }
%struct.refcount_struct = type { %struct.atomic_t }
%struct.delayed_work = type { %struct.work_struct, %struct.timer_list, ptr, i32 }
%struct.work_struct = type { %struct.atomic_t, %struct.list_head, ptr, %struct.lockdep_map }
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
%struct.spinlock = type { %union.anon.0 }
%union.anon.0 = type { %struct.raw_spinlock }
%struct.device_dma_parameters = type { i32, i32, i32 }
%struct.pdev_archdata = type { ptr }
%struct.isp1704_charger = type { ptr, ptr, %struct.power_supply_desc, ptr, ptr, %struct.notifier_block, %struct.work_struct, [8 x i8], i8, i32 }
%struct.power_supply_desc = type { ptr, i32, ptr, i32, ptr, i32, ptr, ptr, ptr, ptr, ptr, i8, i32 }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%struct.usb_otg = type { i8, ptr, ptr, ptr, ptr, i32, ptr, ptr, ptr, ptr, ptr }
%struct.usb_phy_io_ops = type { ptr, ptr }

@__initcall__kmod_isp1704_charger__293_509_isp1704_charger_driver_init6 = internal global ptr @isp1704_charger_driver_init, section ".initcall6.init", align 4
@isp1704_charger_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @isp1704_charger_probe, ptr @isp1704_charger_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @omap_isp1704_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_isp1704_charger_driver_exit = internal global ptr @isp1704_charger_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_alias294 = internal constant [47 x i8] c"isp1704_charger.alias=platform:isp1704_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_author295 = internal constant [41 x i8] c"isp1704_charger.author=Nokia Corporation\00", section ".modinfo", align 1
@__UNIQUE_ID_description296 = internal constant [55 x i8] c"isp1704_charger.description=ISP170x USB Charger driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file297 = internal constant [58 x i8] c"isp1704_charger.file=drivers/power/supply/isp1704_charger\00", section ".modinfo", align 1
@__UNIQUE_ID_license298 = internal constant [28 x i8] c"isp1704_charger.license=GPL\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"isp1704_charger\00", [16 x i8] zeroinitializer }, align 32
@omap_isp1704_of_match = internal constant { [3 x %struct.of_device_id], [148 x i8] } { [3 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,isp1704\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"nxp,isp1707\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [148 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [11 x i8], [21 x i8] } { [11 x i8] c"nxp,enable\00", [21 x i8] zeroinitializer }, align 32
@isp1704_charger_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.2, ptr @.str.3, ptr @.str.4, i32 394, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"Could not get reset gpio: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"isp1704_charger_probe\00", [42 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [39 x i8], [57 x i8] } { [39 x i8] c"drivers/power/supply/isp1704_charger.c\00", [57 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@isp1704_charger_probe._entry_ptr = internal global ptr @isp1704_charger_probe._entry, section ".printk_index", align 4
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"usb-phy\00", [24 x i8] zeroinitializer }, align 32
@isp1704_charger_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.9, ptr @.str.3, ptr @.str.4, i32 405, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"usb_get_phy failed\0A\00", [44 x i8] zeroinitializer }, align 32
@isp1704_charger_probe._entry_ptr.10 = internal global ptr @isp1704_charger_probe._entry.8, section ".printk_index", align 4
@isp1704_charger_probe._entry.11 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.12, ptr @.str.3, ptr @.str.4, i32 416, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"isp1704_test_ulpi failed\0A\00", [38 x i8] zeroinitializer }, align 32
@isp1704_charger_probe._entry_ptr.13 = internal global ptr @isp1704_charger_probe._entry.11, section ".printk_index", align 4
@.str.14 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"isp1704\00", [24 x i8] zeroinitializer }, align 32
@power_props = internal global { [5 x i32], [44 x i8] } { [5 x i32] [i32 3, i32 4, i32 16, i32 73, i32 74], [44 x i8] zeroinitializer }, align 32
@isp1704_charger_probe._entry.15 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.3, ptr @.str.4, i32 431, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"power_supply_register failed\0A\00", [34 x i8] zeroinitializer }, align 32
@isp1704_charger_probe._entry_ptr.17 = internal global ptr @isp1704_charger_probe._entry.15, section ".printk_index", align 4
@isp1704_charger_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.18 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"(work_completion)(&isp->work)\00", [34 x i8] zeroinitializer }, align 32
@isp1704_charger_probe._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.3, ptr @.str.4, i32 445, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"usb_register_notifier failed\0A\00", [34 x i8] zeroinitializer }, align 32
@isp1704_charger_probe._entry_ptr.21 = internal global ptr @isp1704_charger_probe._entry.19, section ".printk_index", align 4
@isp1704_charger_probe._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.3, ptr @.str.4, i32 449, ptr @.str.24, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [31 x i8], [33 x i8] } { [31 x i8] c"registered with product id %s\0A\00", [33 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\016\00", [29 x i8] zeroinitializer }, align 32
@isp1704_charger_probe._entry_ptr.25 = internal global ptr @isp1704_charger_probe._entry.22, section ".printk_index", align 4
@isp1704_charger_probe._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.3, ptr @.str.4, i32 475, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"failed to register isp1704 with error %d\0A\00", [54 x i8] zeroinitializer }, align 32
@isp1704_charger_probe._entry_ptr.28 = internal global ptr @isp1704_charger_probe._entry.26, section ".printk_index", align 4
@.str.29 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"isp%x\00", [26 x i8] zeroinitializer }, align 32
@isp1704_test_ulpi._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.31, ptr @.str.4, i32 375, ptr @.str.5, ptr @.str.6 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [37 x i8], [59 x i8] } { [37 x i8] c"product id %x not matching known ids\00", [59 x i8] zeroinitializer }, align 32
@.str.31 = internal constant { [18 x i8], [46 x i8] } { [18 x i8] c"isp1704_test_ulpi\00", [46 x i8] zeroinitializer }, align 32
@isp1704_test_ulpi._entry_ptr = internal global ptr @isp1704_test_ulpi._entry, section ".printk_index", align 4
@.str.32 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"NXP\00", [28 x i8] zeroinitializer }, align 32
@isp1704_charger_work.lock = internal global { %struct.mutex, [36 x i8] } { %struct.mutex { %struct.atomic_t zeroinitializer, %struct.raw_spinlock { %struct.arch_spinlock_t zeroinitializer, i32 -559067475, i32 -1, ptr inttoptr (i32 -1 to ptr), %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.33, i8 0, i8 2, i8 0, i32 0, i32 0 } }, %struct.optimistic_spin_queue zeroinitializer, %struct.list_head { ptr getelementptr (i8, ptr @isp1704_charger_work.lock, i64 52), ptr getelementptr (i8, ptr @isp1704_charger_work.lock, i64 52) }, ptr @isp1704_charger_work.lock, %struct.lockdep_map { ptr null, [2 x ptr] zeroinitializer, ptr @.str.34, i8 0, i8 4, i8 0, i32 0, i32 0 } }, [36 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [15 x i8], [17 x i8] } { [15 x i8] c"lock.wait_lock\00", [17 x i8] zeroinitializer }, align 32
@.str.34 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"lock\00", [27 x i8] zeroinitializer }, align 32
@jiffies = external dso_local global i32, section ".data..cacheline_aligned", align 128
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 5892, i64 5895]
@__sancov_gen_cov_switch_values.35 = internal global [7 x i64] [i64 5, i64 32, i64 3, i64 4, i64 16, i64 73, i64 74]
@__sancov_gen_cov_switch_values.36 = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@___asan_gen_.37 = private unnamed_addr constant [23 x i8] c"isp1704_charger_driver\00", align 1
@___asan_gen_.39 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 500, i32 31 }
@___asan_gen_.42 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 502, i32 11 }
@___asan_gen_.43 = private unnamed_addr constant [22 x i8] c"omap_isp1704_of_match\00", align 1
@___asan_gen_.45 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 492, i32 34 }
@___asan_gen_.48 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 390, i32 48 }
@___asan_gen_.66 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 394, i32 3 }
@___asan_gen_.69 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 399, i32 54 }
@___asan_gen_.75 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 405, i32 3 }
@___asan_gen_.81 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 416, i32 3 }
@___asan_gen_.84 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 420, i32 24 }
@___asan_gen_.85 = private unnamed_addr constant [12 x i8] c"power_props\00", align 1
@___asan_gen_.87 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 332, i32 35 }
@___asan_gen_.93 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 431, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.99 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 439, i32 2 }
@___asan_gen_.105 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 445, i32 3 }
@___asan_gen_.114 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 449, i32 2 }
@___asan_gen_.120 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 475, i32 2 }
@___asan_gen_.123 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 370, i32 24 }
@___asan_gen_.124 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.132 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 375, i32 2 }
@___asan_gen_.135 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 324, i32 17 }
@___asan_gen_.136 = private unnamed_addr constant [5 x i8] c"lock\00", align 1
@___asan_gen_.142 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.143 = private constant [42 x i8] c"../drivers/power/supply/isp1704_charger.c\00", align 1
@___asan_gen_.144 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.143, i32 227, i32 9 }
@llvm.compiler.used = appending global [52 x ptr] [ptr @__UNIQUE_ID_alias294, ptr @__UNIQUE_ID_author295, ptr @__UNIQUE_ID_description296, ptr @__UNIQUE_ID_file297, ptr @__UNIQUE_ID_license298, ptr @__exitcall_isp1704_charger_driver_exit, ptr @__initcall__kmod_isp1704_charger__293_509_isp1704_charger_driver_init6, ptr @isp1704_charger_driver_exit, ptr @isp1704_charger_probe._entry, ptr @isp1704_charger_probe._entry.11, ptr @isp1704_charger_probe._entry.15, ptr @isp1704_charger_probe._entry.19, ptr @isp1704_charger_probe._entry.22, ptr @isp1704_charger_probe._entry.26, ptr @isp1704_charger_probe._entry.8, ptr @isp1704_charger_probe._entry_ptr, ptr @isp1704_charger_probe._entry_ptr.10, ptr @isp1704_charger_probe._entry_ptr.13, ptr @isp1704_charger_probe._entry_ptr.17, ptr @isp1704_charger_probe._entry_ptr.21, ptr @isp1704_charger_probe._entry_ptr.25, ptr @isp1704_charger_probe._entry_ptr.28, ptr @isp1704_test_ulpi._entry, ptr @isp1704_test_ulpi._entry_ptr, ptr @isp1704_charger_driver, ptr @.str, ptr @omap_isp1704_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.9, ptr @.str.12, ptr @.str.14, ptr @power_props, ptr @.str.16, ptr @isp1704_charger_probe.__key, ptr @.str.18, ptr @.str.20, ptr @.str.23, ptr @.str.24, ptr @.str.27, ptr @.str.29, ptr @.str.30, ptr @.str.31, ptr @.str.32, ptr @isp1704_charger_work.lock, ptr @.str.33, ptr @.str.34], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1704_charger_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.37 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.39 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @omap_isp1704_of_match to i32), i32 588, i32 736, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.45 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 11, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1704_charger_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 39, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.69 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1704_charger_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.75 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1704_charger_probe._entry.11 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.84 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @power_props to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.85 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.87 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1704_charger_probe._entry.15 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.93 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1704_charger_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1704_charger_probe._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.105 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1704_charger_probe._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 31, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.114 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1704_charger_probe._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.120 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1704_test_ulpi._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 37, i32 96, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.31 to i32), i32 18, i32 64, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.132 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.135 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @isp1704_charger_work.lock to i32), i32 92, i32 128, i32 ptrtoint (ptr @___asan_gen_.136 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 15, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.34 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.142 to i32), i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1704_charger_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @isp1704_charger_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @isp1704_charger_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @isp1704_charger_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1704_charger_probe(ptr noundef %pdev) #2 align 64 {
entry:
  %psy_cfg = alloca %struct.power_supply_config, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 24, ptr nonnull %psy_cfg) #7
  %0 = call ptr @memset(ptr %psy_cfg, i32 0, i32 24)
  %dev = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev, i32 noundef 140, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_gpiod_get(ptr noundef %dev, ptr noundef nonnull @.str.1, i32 noundef 7) #7
  %enable_gpio = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 3
  %1 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call2, ptr %enable_gpio, align 4
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then5, label %if.end9

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %2 = ptrtoint ptr %call2 to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.2, i32 noundef %2) #10
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %3 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %of_node, align 8
  %tobool11.not = icmp eq ptr %4, null
  br i1 %tobool11.not, label %if.else, label %if.then12

if.then12:                                        ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call14 = tail call ptr @devm_usb_get_phy_by_phandle(ptr noundef %dev, ptr noundef nonnull @.str.7, i8 noundef zeroext 0) #7
  br label %if.end18

if.else:                                          ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %call16 = tail call ptr @devm_usb_get_phy(ptr noundef %dev, i32 noundef 1) #7
  br label %if.end18

if.end18:                                         ; preds = %if.else, %if.then12
  %call14.sink = phi ptr [ %call16, %if.else ], [ %call14, %if.then12 ]
  %5 = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 4
  %6 = ptrtoint ptr %5 to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call14.sink, ptr %5, align 4
  %cmp.i164 = icmp ugt ptr %call14.sink, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i164, label %if.then21, label %if.end28

if.then21:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #9
  %7 = ptrtoint ptr %call14.sink to i32
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.9) #10
  br label %do.end102

if.end28:                                         ; preds = %if.end18
  %8 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %dev, ptr %call.i, align 4
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %10 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %enable_gpio, align 4
  tail call void @gpiod_set_value(ptr noundef %11, i32 noundef 1) #7
  %call31 = tail call fastcc i32 @isp1704_test_ulpi(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call31)
  %cmp = icmp slt i32 %call31, 0
  br i1 %cmp, label %do.end35, label %if.end37

do.end35:                                         ; preds = %if.end28
  call void @__sanitizer_cov_trace_pc() #9
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.12) #10
  br label %fail1

if.end37:                                         ; preds = %if.end28
  %psy_desc = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 2
  %12 = ptrtoint ptr %psy_desc to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @.str.14, ptr %psy_desc, align 4
  %type = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 2, i32 1
  %13 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %13)
  store i32 4, ptr %type, align 4
  %properties = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 2, i32 4
  %14 = ptrtoint ptr %properties to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @power_props, ptr %properties, align 4
  %num_properties = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 2, i32 5
  %15 = ptrtoint ptr %num_properties to i32
  call void @__asan_store4_noabort(i32 %15)
  store i32 5, ptr %num_properties, align 4
  %get_property = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 2, i32 6
  %16 = ptrtoint ptr %get_property to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @isp1704_charger_get_property, ptr %get_property, align 4
  %drv_data = getelementptr inbounds %struct.power_supply_config, ptr %psy_cfg, i32 0, i32 2
  %17 = ptrtoint ptr %drv_data to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call.i, ptr %drv_data, align 4
  %18 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %call.i, align 4
  %call44 = call ptr @power_supply_register(ptr noundef %19, ptr noundef %psy_desc, ptr noundef nonnull %psy_cfg) #7
  %psy = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 1
  %20 = ptrtoint ptr %psy to i32
  call void @__asan_store4_noabort(i32 %20)
  store ptr %call44, ptr %psy, align 4
  %cmp.i165 = icmp ugt ptr %call44, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i165, label %if.then47, label %do.body55

if.then47:                                        ; preds = %if.end37
  call void @__sanitizer_cov_trace_pc() #9
  %21 = ptrtoint ptr %call44 to i32
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.16) #10
  br label %fail1

do.body55:                                        ; preds = %if.end37
  %work = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 6
  call void @__init_work(ptr noundef %work, i32 noundef 0) #7
  %22 = ptrtoint ptr %work to i32
  call void @__asan_store4_noabort(i32 %22)
  store i32 -64, ptr %work, align 4
  %lockdep_map = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 6, i32 3
  call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.18, ptr noundef nonnull @isp1704_charger_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry59 = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 6, i32 1
  %23 = ptrtoint ptr %entry59 to i32
  call void @__asan_store4_noabort(i32 %23)
  store volatile ptr %entry59, ptr %entry59, align 4
  %prev.i = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 6, i32 1, i32 1
  %24 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %24)
  store ptr %entry59, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 6, i32 2
  %25 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %25)
  store ptr @isp1704_charger_work, ptr %func, align 4
  %nb = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 5
  %26 = ptrtoint ptr %nb to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr @isp1704_notifier_call, ptr %nb, align 4
  %27 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %5, align 4
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %28, i32 0, i32 18
  %call.i166 = call i32 @atomic_notifier_chain_register(ptr noundef %notifier.i, ptr noundef %nb) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i166)
  %tobool66.not = icmp eq i32 %call.i166, 0
  br i1 %tobool66.not, label %do.end75, label %do.end70

do.end70:                                         ; preds = %do.body55
  call void @__sanitizer_cov_trace_pc() #9
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.20) #10
  %29 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %psy, align 4
  call void @power_supply_unregister(ptr noundef %30) #7
  br label %fail1

do.end75:                                         ; preds = %do.body55
  %31 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %call.i, align 4
  %model = getelementptr inbounds %struct.isp1704_charger, ptr %call.i, i32 0, i32 7
  call void (ptr, ptr, ...) @_dev_info(ptr noundef %32, ptr noundef nonnull @.str.23, ptr noundef %model) #10
  %33 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %5, align 4
  %otg = getelementptr inbounds %struct.usb_phy, ptr %34, i32 0, i32 5
  %35 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %otg, align 4
  %gadget = getelementptr inbounds %struct.usb_otg, ptr %36, i32 0, i32 4
  %37 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %37)
  %38 = load ptr, ptr %gadget, align 4
  %tobool78.not = icmp eq ptr %38, null
  br i1 %tobool78.not, label %do.end75.if.end84_crit_edge, label %if.then79

do.end75.if.end84_crit_edge:                      ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end84

if.then79:                                        ; preds = %do.end75
  call void @__sanitizer_cov_trace_pc() #9
  %call83 = call i32 @usb_gadget_disconnect(ptr noundef nonnull %38) #7
  br label %if.end84

if.end84:                                         ; preds = %if.then79, %do.end75.if.end84_crit_edge
  %39 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %39)
  %40 = load ptr, ptr %5, align 4
  %last_event = getelementptr inbounds %struct.usb_phy, ptr %40, i32 0, i32 4
  %41 = ptrtoint ptr %last_event to i32
  call void @__asan_load4_noabort(i32 %41)
  %42 = load i32, ptr %last_event, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %42)
  %cmp86 = icmp eq i32 %42, 0
  br i1 %cmp86, label %if.then87, label %if.end84.if.end88_crit_edge

if.end84.if.end88_crit_edge:                      ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end88

if.then87:                                        ; preds = %if.end84
  call void @__sanitizer_cov_trace_pc() #9
  %43 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %43)
  %44 = load ptr, ptr %enable_gpio, align 4
  call void @gpiod_set_value(ptr noundef %44, i32 noundef 0) #7
  br label %if.end88

if.end88:                                         ; preds = %if.then87, %if.end84.if.end88_crit_edge
  %45 = ptrtoint ptr %5 to i32
  call void @__asan_load4_noabort(i32 %45)
  %46 = load ptr, ptr %5, align 4
  %last_event90 = getelementptr inbounds %struct.usb_phy, ptr %46, i32 0, i32 4
  %47 = ptrtoint ptr %last_event90 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load i32, ptr %last_event90, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 1, i32 %48)
  %cmp91 = icmp eq i32 %48, 1
  br i1 %cmp91, label %land.lhs.true, label %if.end88.cleanup_crit_edge

if.end88.cleanup_crit_edge:                       ; preds = %if.end88
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true:                                    ; preds = %if.end88
  %otg93 = getelementptr inbounds %struct.usb_phy, ptr %46, i32 0, i32 5
  %49 = ptrtoint ptr %otg93 to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %otg93, align 4
  %51 = ptrtoint ptr %50 to i32
  call void @__asan_load1_noabort(i32 %51)
  %52 = load i8, ptr %50, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %52)
  %tobool94.not = icmp eq i8 %52, 0
  br i1 %tobool94.not, label %if.then95, label %land.lhs.true.cleanup_crit_edge

land.lhs.true.cleanup_crit_edge:                  ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.then95:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %53 = load ptr, ptr @system_wq, align 4
  %call.i.i = call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %53, ptr noundef %work) #7
  br label %cleanup

fail1:                                            ; preds = %do.end70, %if.then47, %do.end35
  %ret.0 = phi i32 [ %call31, %do.end35 ], [ %21, %if.then47 ], [ %call.i166, %do.end70 ]
  %54 = ptrtoint ptr %enable_gpio to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %enable_gpio, align 4
  call void @gpiod_set_value(ptr noundef %55, i32 noundef 0) #7
  br label %do.end102

do.end102:                                        ; preds = %fail1, %if.then21
  %ret.1 = phi i32 [ %7, %if.then21 ], [ %ret.0, %fail1 ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev, ptr noundef nonnull @.str.27, i32 noundef %ret.1) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end102, %if.then95, %land.lhs.true.cleanup_crit_edge, %if.end88.cleanup_crit_edge, %if.then5, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then5 ], [ %ret.1, %do.end102 ], [ -12, %entry.cleanup_crit_edge ], [ 0, %if.then95 ], [ 0, %land.lhs.true.cleanup_crit_edge ], [ 0, %if.end88.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 24, ptr nonnull %psy_cfg) #7
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1704_charger_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy = getelementptr inbounds %struct.isp1704_charger, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %phy, align 4
  %nb = getelementptr inbounds %struct.isp1704_charger, ptr %1, i32 0, i32 5
  %notifier.i = getelementptr inbounds %struct.usb_phy, ptr %3, i32 0, i32 18
  %call.i = tail call i32 @atomic_notifier_chain_unregister(ptr noundef %notifier.i, ptr noundef %nb) #7
  %psy = getelementptr inbounds %struct.isp1704_charger, ptr %1, i32 0, i32 1
  %4 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %psy, align 4
  tail call void @power_supply_unregister(ptr noundef %5) #7
  %enable_gpio.i = getelementptr inbounds %struct.isp1704_charger, ptr %1, i32 0, i32 3
  %6 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %enable_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %7, i32 noundef 0) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_gpiod_get(ptr noundef, ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy_by_phandle(ptr noundef, ptr noundef, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_usb_get_phy(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @isp1704_test_ulpi(ptr nocapture noundef %isp) unnamed_addr #5 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  %phy.i = getelementptr inbounds %struct.isp1704_charger, ptr %isp, i32 0, i32 4
  %0 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy.i, align 4
  %tobool.not.i.i = icmp eq ptr %1, null
  br i1 %tobool.not.i.i, label %entry.cleanup_crit_edge, label %land.lhs.true.i.i

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.i:                                ; preds = %entry
  %io_ops.i.i = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 7
  %2 = ptrtoint ptr %io_ops.i.i to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %io_ops.i.i, align 4
  %tobool1.not.i.i = icmp eq ptr %3, null
  br i1 %tobool1.not.i.i, label %land.lhs.true.i.i.cleanup_crit_edge, label %land.lhs.true2.i.i

land.lhs.true.i.i.cleanup_crit_edge:              ; preds = %land.lhs.true.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true2.i.i:                               ; preds = %land.lhs.true.i.i
  %write.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %write.i.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %write.i.i, align 4
  %tobool4.not.i.i = icmp eq ptr %5, null
  br i1 %tobool4.not.i.i, label %land.lhs.true2.i.i.cleanup_crit_edge, label %isp1704_write.exit

land.lhs.true2.i.i.cleanup_crit_edge:             ; preds = %land.lhs.true2.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

isp1704_write.exit:                               ; preds = %land.lhs.true2.i.i
  %call.i.i = tail call i32 %5(ptr noundef nonnull %1, i32 noundef 170, i32 noundef 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %cmp = icmp slt i32 %call.i.i, 0
  br i1 %cmp, label %isp1704_write.exit.cleanup_crit_edge, label %if.end

isp1704_write.exit.cleanup_crit_edge:             ; preds = %isp1704_write.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %isp1704_write.exit
  %6 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy.i, align 4
  %tobool.not.i.i45 = icmp eq ptr %7, null
  br i1 %tobool.not.i.i45, label %if.end.cleanup_crit_edge, label %land.lhs.true.i.i48

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true.i.i48:                              ; preds = %if.end
  %io_ops.i.i46 = getelementptr inbounds %struct.usb_phy, ptr %7, i32 0, i32 7
  %8 = ptrtoint ptr %io_ops.i.i46 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %io_ops.i.i46, align 4
  %tobool1.not.i.i47 = icmp eq ptr %9, null
  br i1 %tobool1.not.i.i47, label %land.lhs.true.i.i48.cleanup_crit_edge, label %land.lhs.true2.i.i50

land.lhs.true.i.i48.cleanup_crit_edge:            ; preds = %land.lhs.true.i.i48
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

land.lhs.true2.i.i50:                             ; preds = %land.lhs.true.i.i48
  %10 = ptrtoint ptr %9 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %9, align 4
  %tobool4.not.i.i49 = icmp eq ptr %11, null
  br i1 %tobool4.not.i.i49, label %land.lhs.true2.i.i50.cleanup_crit_edge, label %isp1704_read.exit

land.lhs.true2.i.i50.cleanup_crit_edge:           ; preds = %land.lhs.true2.i.i50
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

isp1704_read.exit:                                ; preds = %land.lhs.true2.i.i50
  %call.i.i51 = tail call i32 %11(ptr noundef nonnull %7, i32 noundef 22) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i51)
  %cmp2 = icmp slt i32 %call.i.i51, 0
  br i1 %cmp2, label %isp1704_read.exit.cleanup_crit_edge, label %if.end4

isp1704_read.exit.cleanup_crit_edge:              ; preds = %isp1704_read.exit
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end4:                                          ; preds = %isp1704_read.exit
  call void @__sanitizer_cov_trace_const_cmp4(i32 170, i32 %call.i.i51)
  %cmp5.not = icmp eq i32 %call.i.i51, 170
  br i1 %cmp5.not, label %if.end7, label %if.end4.cleanup_crit_edge

if.end4.cleanup_crit_edge:                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end7:                                          ; preds = %if.end4
  %12 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %phy.i, align 4
  %tobool.not.i.i55 = icmp eq ptr %13, null
  br i1 %tobool.not.i.i55, label %if.end7.isp1704_read.exit75_crit_edge, label %land.lhs.true.i.i58

if.end7.isp1704_read.exit75_crit_edge:            ; preds = %if.end7
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit75

land.lhs.true.i.i58:                              ; preds = %if.end7
  %io_ops.i.i56 = getelementptr inbounds %struct.usb_phy, ptr %13, i32 0, i32 7
  %14 = ptrtoint ptr %io_ops.i.i56 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %io_ops.i.i56, align 4
  %tobool1.not.i.i57 = icmp eq ptr %15, null
  br i1 %tobool1.not.i.i57, label %land.lhs.true.i.i58.isp1704_read.exit64_crit_edge, label %land.lhs.true2.i.i60

land.lhs.true.i.i58.isp1704_read.exit64_crit_edge: ; preds = %land.lhs.true.i.i58
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit64

land.lhs.true2.i.i60:                             ; preds = %land.lhs.true.i.i58
  %16 = ptrtoint ptr %15 to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %15, align 4
  %tobool4.not.i.i59 = icmp eq ptr %17, null
  br i1 %tobool4.not.i.i59, label %land.lhs.true2.i.i60.isp1704_read.exit64_crit_edge, label %if.then.i.i62

land.lhs.true2.i.i60.isp1704_read.exit64_crit_edge: ; preds = %land.lhs.true2.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit64

if.then.i.i62:                                    ; preds = %land.lhs.true2.i.i60
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i61 = tail call i32 %17(ptr noundef nonnull %13, i32 noundef 0) #7
  br label %isp1704_read.exit64

isp1704_read.exit64:                              ; preds = %if.then.i.i62, %land.lhs.true2.i.i60.isp1704_read.exit64_crit_edge, %land.lhs.true.i.i58.isp1704_read.exit64_crit_edge
  %retval.0.i.i63.ph = phi i32 [ -22, %land.lhs.true.i.i58.isp1704_read.exit64_crit_edge ], [ -22, %land.lhs.true2.i.i60.isp1704_read.exit64_crit_edge ], [ %call.i.i61, %if.then.i.i62 ]
  %18 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %.pr = load ptr, ptr %phy.i, align 4
  %tobool.not.i.i66 = icmp eq ptr %.pr, null
  br i1 %tobool.not.i.i66, label %isp1704_read.exit64.isp1704_read.exit75_crit_edge, label %land.lhs.true.i.i69

isp1704_read.exit64.isp1704_read.exit75_crit_edge: ; preds = %isp1704_read.exit64
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit75

land.lhs.true.i.i69:                              ; preds = %isp1704_read.exit64
  %io_ops.i.i67 = getelementptr inbounds %struct.usb_phy, ptr %.pr, i32 0, i32 7
  %19 = ptrtoint ptr %io_ops.i.i67 to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %io_ops.i.i67, align 4
  %tobool1.not.i.i68 = icmp eq ptr %20, null
  br i1 %tobool1.not.i.i68, label %land.lhs.true.i.i69.isp1704_read.exit75_crit_edge, label %land.lhs.true2.i.i71

land.lhs.true.i.i69.isp1704_read.exit75_crit_edge: ; preds = %land.lhs.true.i.i69
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit75

land.lhs.true2.i.i71:                             ; preds = %land.lhs.true.i.i69
  %21 = ptrtoint ptr %20 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %20, align 4
  %tobool4.not.i.i70 = icmp eq ptr %22, null
  br i1 %tobool4.not.i.i70, label %land.lhs.true2.i.i71.isp1704_read.exit75_crit_edge, label %if.then.i.i73

land.lhs.true2.i.i71.isp1704_read.exit75_crit_edge: ; preds = %land.lhs.true2.i.i71
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit75

if.then.i.i73:                                    ; preds = %land.lhs.true2.i.i71
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i72 = tail call i32 %22(ptr noundef nonnull %.pr, i32 noundef 1) #7
  %phi.bo = shl i32 %call.i.i72, 8
  br label %isp1704_read.exit75

isp1704_read.exit75:                              ; preds = %if.then.i.i73, %land.lhs.true2.i.i71.isp1704_read.exit75_crit_edge, %land.lhs.true.i.i69.isp1704_read.exit75_crit_edge, %isp1704_read.exit64.isp1704_read.exit75_crit_edge, %if.end7.isp1704_read.exit75_crit_edge
  %retval.0.i.i63104 = phi i32 [ %retval.0.i.i63.ph, %if.then.i.i73 ], [ %retval.0.i.i63.ph, %land.lhs.true2.i.i71.isp1704_read.exit75_crit_edge ], [ %retval.0.i.i63.ph, %land.lhs.true.i.i69.isp1704_read.exit75_crit_edge ], [ %retval.0.i.i63.ph, %isp1704_read.exit64.isp1704_read.exit75_crit_edge ], [ -22, %if.end7.isp1704_read.exit75_crit_edge ]
  %retval.0.i.i74 = phi i32 [ %phi.bo, %if.then.i.i73 ], [ -5632, %land.lhs.true2.i.i71.isp1704_read.exit75_crit_edge ], [ -5632, %land.lhs.true.i.i69.isp1704_read.exit75_crit_edge ], [ -5632, %isp1704_read.exit64.isp1704_read.exit75_crit_edge ], [ -5632, %if.end7.isp1704_read.exit75_crit_edge ]
  %or = or i32 %retval.0.i.i74, %retval.0.i.i63104
  call void @__sanitizer_cov_trace_const_cmp4(i32 1228, i32 %or)
  %cmp10.not = icmp eq i32 %or, 1228
  br i1 %cmp10.not, label %if.end12, label %isp1704_read.exit75.cleanup_crit_edge

isp1704_read.exit75.cleanup_crit_edge:            ; preds = %isp1704_read.exit75
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end12:                                         ; preds = %isp1704_read.exit75
  %23 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %phy.i, align 4
  %tobool.not.i.i77 = icmp eq ptr %24, null
  br i1 %tobool.not.i.i77, label %if.end12.isp1704_read.exit97_crit_edge, label %land.lhs.true.i.i80

if.end12.isp1704_read.exit97_crit_edge:           ; preds = %if.end12
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit97

land.lhs.true.i.i80:                              ; preds = %if.end12
  %io_ops.i.i78 = getelementptr inbounds %struct.usb_phy, ptr %24, i32 0, i32 7
  %25 = ptrtoint ptr %io_ops.i.i78 to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load ptr, ptr %io_ops.i.i78, align 4
  %tobool1.not.i.i79 = icmp eq ptr %26, null
  br i1 %tobool1.not.i.i79, label %land.lhs.true.i.i80.isp1704_read.exit86_crit_edge, label %land.lhs.true2.i.i82

land.lhs.true.i.i80.isp1704_read.exit86_crit_edge: ; preds = %land.lhs.true.i.i80
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit86

land.lhs.true2.i.i82:                             ; preds = %land.lhs.true.i.i80
  %27 = ptrtoint ptr %26 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %26, align 4
  %tobool4.not.i.i81 = icmp eq ptr %28, null
  br i1 %tobool4.not.i.i81, label %land.lhs.true2.i.i82.isp1704_read.exit86_crit_edge, label %if.then.i.i84

land.lhs.true2.i.i82.isp1704_read.exit86_crit_edge: ; preds = %land.lhs.true2.i.i82
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit86

if.then.i.i84:                                    ; preds = %land.lhs.true2.i.i82
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i83 = tail call i32 %28(ptr noundef nonnull %24, i32 noundef 2) #7
  br label %isp1704_read.exit86

isp1704_read.exit86:                              ; preds = %if.then.i.i84, %land.lhs.true2.i.i82.isp1704_read.exit86_crit_edge, %land.lhs.true.i.i80.isp1704_read.exit86_crit_edge
  %retval.0.i.i85.ph = phi i32 [ -22, %land.lhs.true.i.i80.isp1704_read.exit86_crit_edge ], [ -22, %land.lhs.true2.i.i82.isp1704_read.exit86_crit_edge ], [ %call.i.i83, %if.then.i.i84 ]
  %29 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %29)
  %.pr105 = load ptr, ptr %phy.i, align 4
  %tobool.not.i.i88 = icmp eq ptr %.pr105, null
  br i1 %tobool.not.i.i88, label %isp1704_read.exit86.isp1704_read.exit97_crit_edge, label %land.lhs.true.i.i91

isp1704_read.exit86.isp1704_read.exit97_crit_edge: ; preds = %isp1704_read.exit86
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit97

land.lhs.true.i.i91:                              ; preds = %isp1704_read.exit86
  %io_ops.i.i89 = getelementptr inbounds %struct.usb_phy, ptr %.pr105, i32 0, i32 7
  %30 = ptrtoint ptr %io_ops.i.i89 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %io_ops.i.i89, align 4
  %tobool1.not.i.i90 = icmp eq ptr %31, null
  br i1 %tobool1.not.i.i90, label %land.lhs.true.i.i91.isp1704_read.exit97_crit_edge, label %land.lhs.true2.i.i93

land.lhs.true.i.i91.isp1704_read.exit97_crit_edge: ; preds = %land.lhs.true.i.i91
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit97

land.lhs.true2.i.i93:                             ; preds = %land.lhs.true.i.i91
  %32 = ptrtoint ptr %31 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %31, align 4
  %tobool4.not.i.i92 = icmp eq ptr %33, null
  br i1 %tobool4.not.i.i92, label %land.lhs.true2.i.i93.isp1704_read.exit97_crit_edge, label %if.then.i.i95

land.lhs.true2.i.i93.isp1704_read.exit97_crit_edge: ; preds = %land.lhs.true2.i.i93
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit97

if.then.i.i95:                                    ; preds = %land.lhs.true2.i.i93
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i94 = tail call i32 %33(ptr noundef nonnull %.pr105, i32 noundef 3) #7
  %phi.bo109 = shl i32 %call.i.i94, 8
  br label %isp1704_read.exit97

isp1704_read.exit97:                              ; preds = %if.then.i.i95, %land.lhs.true2.i.i93.isp1704_read.exit97_crit_edge, %land.lhs.true.i.i91.isp1704_read.exit97_crit_edge, %isp1704_read.exit86.isp1704_read.exit97_crit_edge, %if.end12.isp1704_read.exit97_crit_edge
  %retval.0.i.i85108 = phi i32 [ %retval.0.i.i85.ph, %if.then.i.i95 ], [ %retval.0.i.i85.ph, %land.lhs.true2.i.i93.isp1704_read.exit97_crit_edge ], [ %retval.0.i.i85.ph, %land.lhs.true.i.i91.isp1704_read.exit97_crit_edge ], [ %retval.0.i.i85.ph, %isp1704_read.exit86.isp1704_read.exit97_crit_edge ], [ -22, %if.end12.isp1704_read.exit97_crit_edge ]
  %retval.0.i.i96 = phi i32 [ %phi.bo109, %if.then.i.i95 ], [ -5632, %land.lhs.true2.i.i93.isp1704_read.exit97_crit_edge ], [ -5632, %land.lhs.true.i.i91.isp1704_read.exit97_crit_edge ], [ -5632, %isp1704_read.exit86.isp1704_read.exit97_crit_edge ], [ -5632, %if.end12.isp1704_read.exit97_crit_edge ]
  %or16 = or i32 %retval.0.i.i96, %retval.0.i.i85108
  %34 = zext i32 %or16 to i64
  call void @__sanitizer_cov_trace_switch(i64 %34, ptr @__sancov_gen_cov_switch_values)
  switch i32 %or16, label %for.cond.1 [
    i32 5892, label %isp1704_read.exit97.if.then20_crit_edge
    i32 5895, label %isp1704_read.exit97.if.then20_crit_edge111
  ]

isp1704_read.exit97.if.then20_crit_edge111:       ; preds = %isp1704_read.exit97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

isp1704_read.exit97.if.then20_crit_edge:          ; preds = %isp1704_read.exit97
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then20

for.cond.1:                                       ; preds = %isp1704_read.exit97
  call void @__sanitizer_cov_trace_pc() #9
  %35 = ptrtoint ptr %isp to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %isp, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %36, ptr noundef nonnull @.str.30, i32 noundef %or16) #10
  br label %cleanup

if.then20:                                        ; preds = %isp1704_read.exit97.if.then20_crit_edge, %isp1704_read.exit97.if.then20_crit_edge111
  %model = getelementptr inbounds %struct.isp1704_charger, ptr %isp, i32 0, i32 7
  %call21 = tail call i32 (ptr, ptr, ...) @sprintf(ptr noundef %model, ptr noundef nonnull @.str.29, i32 noundef %or16)
  br label %cleanup

cleanup:                                          ; preds = %if.then20, %for.cond.1, %isp1704_read.exit75.cleanup_crit_edge, %if.end4.cleanup_crit_edge, %isp1704_read.exit.cleanup_crit_edge, %land.lhs.true2.i.i50.cleanup_crit_edge, %land.lhs.true.i.i48.cleanup_crit_edge, %if.end.cleanup_crit_edge, %isp1704_write.exit.cleanup_crit_edge, %land.lhs.true2.i.i.cleanup_crit_edge, %land.lhs.true.i.i.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %or16, %if.then20 ], [ -19, %for.cond.1 ], [ %call.i.i, %isp1704_write.exit.cleanup_crit_edge ], [ %call.i.i51, %isp1704_read.exit.cleanup_crit_edge ], [ -19, %if.end4.cleanup_crit_edge ], [ -19, %isp1704_read.exit75.cleanup_crit_edge ], [ -22, %land.lhs.true2.i.i.cleanup_crit_edge ], [ -22, %land.lhs.true.i.i.cleanup_crit_edge ], [ -22, %entry.cleanup_crit_edge ], [ -22, %land.lhs.true2.i.i50.cleanup_crit_edge ], [ -22, %land.lhs.true.i.i48.cleanup_crit_edge ], [ -22, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1704_charger_get_property(ptr noundef %psy, i32 noundef %psp, ptr nocapture noundef writeonly %val) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call ptr @power_supply_get_drvdata(ptr noundef %psy) #7
  %0 = zext i32 %psp to i64
  call void @__sanitizer_cov_trace_switch(i64 %0, ptr @__sancov_gen_cov_switch_values.35)
  switch i32 %psp, label %entry.cleanup_crit_edge [
    i32 3, label %sw.bb
    i32 4, label %sw.bb1
    i32 16, label %sw.bb5
    i32 73, label %sw.bb6
    i32 74, label %sw.bb7
  ]

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

sw.bb:                                            ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %present = getelementptr inbounds %struct.isp1704_charger, ptr %call, i32 0, i32 8
  %1 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %1)
  %bf.load = load i8, ptr %present, align 4
  %bf.lshr = lshr i8 %bf.load, 7
  %bf.cast = zext i8 %bf.lshr to i32
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 %bf.cast, ptr %val, align 4
  br label %cleanup

sw.bb1:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %online = getelementptr inbounds %struct.isp1704_charger, ptr %call, i32 0, i32 8
  %3 = ptrtoint ptr %online to i32
  call void @__asan_load1_noabort(i32 %3)
  %bf.load2 = load i8, ptr %online, align 4
  %bf.lshr3 = lshr i8 %bf.load2, 6
  %bf.clear = and i8 %bf.lshr3, 1
  %bf.cast4 = zext i8 %bf.clear to i32
  %4 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 %bf.cast4, ptr %val, align 4
  br label %cleanup

sw.bb5:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %current_max = getelementptr inbounds %struct.isp1704_charger, ptr %call, i32 0, i32 9
  %5 = ptrtoint ptr %current_max to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %current_max, align 4
  %7 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %7)
  store i32 %6, ptr %val, align 4
  br label %cleanup

sw.bb6:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %model = getelementptr inbounds %struct.isp1704_charger, ptr %call, i32 0, i32 7
  %8 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %8)
  store ptr %model, ptr %val, align 4
  br label %cleanup

sw.bb7:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %9 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr @.str.32, ptr %val, align 4
  br label %cleanup

cleanup:                                          ; preds = %sw.bb7, %sw.bb6, %sw.bb5, %sw.bb1, %sw.bb, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -22, %entry.cleanup_crit_edge ], [ 0, %sw.bb7 ], [ 0, %sw.bb6 ], [ 0, %sw.bb5 ], [ 0, %sw.bb1 ], [ 0, %sw.bb ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_register(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @isp1704_charger_work(ptr noundef %data) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  tail call void @mutex_lock_nested(ptr noundef nonnull @isp1704_charger_work.lock, i32 noundef 0) #7
  %phy = getelementptr i8, ptr %data, i32 -16
  %0 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %phy, align 4
  %last_event = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 4
  %2 = ptrtoint ptr %last_event to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load i32, ptr %last_event, align 4
  %4 = zext i32 %3 to i64
  call void @__sanitizer_cov_trace_switch(i64 %4, ptr @__sancov_gen_cov_switch_values.36)
  switch i32 %3, label %entry.out_crit_edge [
    i32 1, label %sw.bb
    i32 0, label %sw.bb35
  ]

entry.out_crit_edge:                              ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %out

sw.bb:                                            ; preds = %entry
  %present = getelementptr i8, ptr %data, i32 52
  %5 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %5)
  %bf.load = load i8, ptr %present, align 4
  call void @__sanitizer_cov_trace_const_cmp1(i8 -1, i8 %bf.load)
  %tobool.not = icmp sgt i8 %bf.load, -1
  br i1 %tobool.not, label %if.then, label %sw.bb.if.end19_crit_edge

sw.bb.if.end19_crit_edge:                         ; preds = %sw.bb
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then:                                          ; preds = %sw.bb
  %bf.set5 = or i8 %bf.load, -64
  %6 = ptrtoint ptr %present to i32
  call void @__asan_store1_noabort(i32 %6)
  store i8 %bf.set5, ptr %present, align 4
  %enable_gpio.i = getelementptr i8, ptr %data, i32 -20
  %7 = ptrtoint ptr %enable_gpio.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %enable_gpio.i, align 4
  tail call void @gpiod_set_value(ptr noundef %8, i32 noundef 1) #7
  %9 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %phy, align 4
  %tobool.not.i.i.i.i = icmp eq ptr %10, null
  br i1 %tobool.not.i.i.i.i, label %if.then.isp1704_write.exit37.i.i_crit_edge, label %land.lhs.true.i.i.i.i

if.then.isp1704_write.exit37.i.i_crit_edge:       ; preds = %if.then
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit37.i.i

land.lhs.true.i.i.i.i:                            ; preds = %if.then
  %io_ops.i.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %10, i32 0, i32 7
  %11 = ptrtoint ptr %io_ops.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %io_ops.i.i.i.i, align 4
  %tobool1.not.i.i.i.i = icmp eq ptr %12, null
  br i1 %tobool1.not.i.i.i.i, label %land.lhs.true.i.i.i.i.isp1704_read.exit.i.i_crit_edge, label %land.lhs.true2.i.i.i.i

land.lhs.true.i.i.i.i.isp1704_read.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit.i.i

land.lhs.true2.i.i.i.i:                           ; preds = %land.lhs.true.i.i.i.i
  %13 = ptrtoint ptr %12 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %12, align 4
  %tobool4.not.i.i.i.i = icmp eq ptr %14, null
  br i1 %tobool4.not.i.i.i.i, label %land.lhs.true2.i.i.i.i.isp1704_read.exit.i.i_crit_edge, label %if.then.i.i.i.i

land.lhs.true2.i.i.i.i.isp1704_read.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit.i.i

if.then.i.i.i.i:                                  ; preds = %land.lhs.true2.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i = tail call i32 %14(ptr noundef nonnull %10, i32 noundef 61) #7
  br label %isp1704_read.exit.i.i

isp1704_read.exit.i.i:                            ; preds = %if.then.i.i.i.i, %land.lhs.true2.i.i.i.i.isp1704_read.exit.i.i_crit_edge, %land.lhs.true.i.i.i.i.isp1704_read.exit.i.i_crit_edge
  %retval.0.i.i.ph.i.i = phi i32 [ -22, %land.lhs.true.i.i.i.i.isp1704_read.exit.i.i_crit_edge ], [ -22, %land.lhs.true2.i.i.i.i.isp1704_read.exit.i.i_crit_edge ], [ %call.i.i.i.i, %if.then.i.i.i.i ]
  %15 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %15)
  %.pr.i.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i17.i.i = icmp eq ptr %.pr.i.i, null
  br i1 %tobool.not.i.i17.i.i, label %isp1704_read.exit.i.i.isp1704_write.exit37.i.i_crit_edge, label %land.lhs.true.i.i20.i.i

isp1704_read.exit.i.i.isp1704_write.exit37.i.i_crit_edge: ; preds = %isp1704_read.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit37.i.i

land.lhs.true.i.i20.i.i:                          ; preds = %isp1704_read.exit.i.i
  %io_ops.i.i18.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr.i.i, i32 0, i32 7
  %16 = ptrtoint ptr %io_ops.i.i18.i.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %io_ops.i.i18.i.i, align 4
  %tobool1.not.i.i19.i.i = icmp eq ptr %17, null
  br i1 %tobool1.not.i.i19.i.i, label %land.lhs.true.i.i20.i.i.isp1704_write.exit.i.i_crit_edge, label %land.lhs.true2.i.i22.i.i

land.lhs.true.i.i20.i.i.isp1704_write.exit.i.i_crit_edge: ; preds = %land.lhs.true.i.i20.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit.i.i

land.lhs.true2.i.i22.i.i:                         ; preds = %land.lhs.true.i.i20.i.i
  %write.i.i.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %17, i32 0, i32 1
  %18 = ptrtoint ptr %write.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %write.i.i.i.i, align 4
  %tobool4.not.i.i21.i.i = icmp eq ptr %19, null
  br i1 %tobool4.not.i.i21.i.i, label %land.lhs.true2.i.i22.i.i.isp1704_write.exit.i.i_crit_edge, label %if.then.i.i24.i.i

land.lhs.true2.i.i22.i.i.isp1704_write.exit.i.i_crit_edge: ; preds = %land.lhs.true2.i.i22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit.i.i

if.then.i.i24.i.i:                                ; preds = %land.lhs.true2.i.i22.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i23.i.i = tail call i32 %19(ptr noundef nonnull %.pr.i.i, i32 noundef 1, i32 noundef 61) #7
  br label %isp1704_write.exit.i.i

isp1704_write.exit.i.i:                           ; preds = %if.then.i.i24.i.i, %land.lhs.true2.i.i22.i.i.isp1704_write.exit.i.i_crit_edge, %land.lhs.true.i.i20.i.i.isp1704_write.exit.i.i_crit_edge
  %20 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %20)
  %.pr64.i.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i27.i.i = icmp eq ptr %.pr64.i.i, null
  br i1 %tobool.not.i.i27.i.i, label %isp1704_write.exit.i.i.isp1704_write.exit37.i.i_crit_edge, label %land.lhs.true.i.i30.i.i

isp1704_write.exit.i.i.isp1704_write.exit37.i.i_crit_edge: ; preds = %isp1704_write.exit.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit37.i.i

land.lhs.true.i.i30.i.i:                          ; preds = %isp1704_write.exit.i.i
  %io_ops.i.i28.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr64.i.i, i32 0, i32 7
  %21 = ptrtoint ptr %io_ops.i.i28.i.i to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_ops.i.i28.i.i, align 4
  %tobool1.not.i.i29.i.i = icmp eq ptr %22, null
  br i1 %tobool1.not.i.i29.i.i, label %land.lhs.true.i.i30.i.i.isp1704_write.exit37.i.i_crit_edge, label %land.lhs.true2.i.i33.i.i

land.lhs.true.i.i30.i.i.isp1704_write.exit37.i.i_crit_edge: ; preds = %land.lhs.true.i.i30.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit37.i.i

land.lhs.true2.i.i33.i.i:                         ; preds = %land.lhs.true.i.i30.i.i
  %write.i.i31.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %22, i32 0, i32 1
  %23 = ptrtoint ptr %write.i.i31.i.i to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %write.i.i31.i.i, align 4
  %tobool4.not.i.i32.i.i = icmp eq ptr %24, null
  br i1 %tobool4.not.i.i32.i.i, label %land.lhs.true2.i.i33.i.i.isp1704_write.exit37.i.i_crit_edge, label %if.then.i.i35.i.i

land.lhs.true2.i.i33.i.i.isp1704_write.exit37.i.i_crit_edge: ; preds = %land.lhs.true2.i.i33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit37.i.i

if.then.i.i35.i.i:                                ; preds = %land.lhs.true2.i.i33.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i34.i.i = tail call i32 %24(ptr noundef nonnull %.pr64.i.i, i32 noundef 65, i32 noundef 62) #7
  br label %isp1704_write.exit37.i.i

isp1704_write.exit37.i.i:                         ; preds = %if.then.i.i35.i.i, %land.lhs.true2.i.i33.i.i.isp1704_write.exit37.i.i_crit_edge, %land.lhs.true.i.i30.i.i.isp1704_write.exit37.i.i_crit_edge, %isp1704_write.exit.i.i.isp1704_write.exit37.i.i_crit_edge, %isp1704_read.exit.i.i.isp1704_write.exit37.i.i_crit_edge, %if.then.isp1704_write.exit37.i.i_crit_edge
  %retval.0.i.i6367.i.i = phi i32 [ %retval.0.i.i.ph.i.i, %isp1704_write.exit.i.i.isp1704_write.exit37.i.i_crit_edge ], [ %retval.0.i.i.ph.i.i, %land.lhs.true.i.i30.i.i.isp1704_write.exit37.i.i_crit_edge ], [ %retval.0.i.i.ph.i.i, %land.lhs.true2.i.i33.i.i.isp1704_write.exit37.i.i_crit_edge ], [ %retval.0.i.i.ph.i.i, %if.then.i.i35.i.i ], [ %retval.0.i.i.ph.i.i, %isp1704_read.exit.i.i.isp1704_write.exit37.i.i_crit_edge ], [ -22, %if.then.isp1704_write.exit37.i.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %25 = load volatile i32, ptr @jiffies, align 128
  %add.i.i = add i32 %25, 30
  br label %do.body.i.i

do.body.i.i:                                      ; preds = %land.rhs.i.i.do.body.i.i_crit_edge, %isp1704_write.exit37.i.i
  %26 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %phy, align 4
  %tobool.not.i.i39.i.i = icmp eq ptr %27, null
  br i1 %tobool.not.i.i39.i.i, label %do.body.i.i.isp1704_write.exit.i.i.i_crit_edge, label %land.lhs.true.i.i42.i.i

do.body.i.i.isp1704_write.exit.i.i.i_crit_edge:   ; preds = %do.body.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit.i.i.i

land.lhs.true.i.i42.i.i:                          ; preds = %do.body.i.i
  %io_ops.i.i40.i.i = getelementptr inbounds %struct.usb_phy, ptr %27, i32 0, i32 7
  %28 = ptrtoint ptr %io_ops.i.i40.i.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %io_ops.i.i40.i.i, align 4
  %tobool1.not.i.i41.i.i = icmp eq ptr %29, null
  br i1 %tobool1.not.i.i41.i.i, label %land.lhs.true.i.i42.i.i.if.then.i.i_crit_edge, label %land.lhs.true2.i.i44.i.i

land.lhs.true.i.i42.i.i.if.then.i.i_crit_edge:    ; preds = %land.lhs.true.i.i42.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

land.lhs.true2.i.i44.i.i:                         ; preds = %land.lhs.true.i.i42.i.i
  %30 = ptrtoint ptr %29 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %29, align 4
  %tobool4.not.i.i43.i.i = icmp eq ptr %31, null
  br i1 %tobool4.not.i.i43.i.i, label %land.lhs.true2.i.i44.i.i.if.then.i.i_crit_edge, label %isp1704_read.exit48.i.i

land.lhs.true2.i.i44.i.i.if.then.i.i_crit_edge:   ; preds = %land.lhs.true2.i.i44.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

isp1704_read.exit48.i.i:                          ; preds = %land.lhs.true2.i.i44.i.i
  %call.i.i45.i.i = tail call i32 %31(ptr noundef nonnull %27, i32 noundef 61) #7
  %and.i.i = and i32 %call.i.i45.i.i, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and.i.i)
  %tobool.not.i.i = icmp eq i32 %and.i.i, 0
  br i1 %tobool.not.i.i, label %do.cond.i.i, label %isp1704_read.exit48.i.i.if.then.i.i_crit_edge

isp1704_read.exit48.i.i.if.then.i.i_crit_edge:    ; preds = %isp1704_read.exit48.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then.i.i

if.then.i.i:                                      ; preds = %isp1704_read.exit48.i.i.if.then.i.i_crit_edge, %land.lhs.true2.i.i44.i.i.if.then.i.i_crit_edge, %land.lhs.true.i.i42.i.i.if.then.i.i_crit_edge
  %32 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %32)
  %.pr77.i.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i.i.i.i = icmp eq ptr %.pr77.i.i, null
  br i1 %tobool.not.i.i.i.i.i, label %if.then.i.i.isp1704_write.exit.i.i.i_crit_edge, label %land.lhs.true.i.i.i.i.i

if.then.i.i.isp1704_write.exit.i.i.i_crit_edge:   ; preds = %if.then.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit.i.i.i

land.lhs.true.i.i.i.i.i:                          ; preds = %if.then.i.i
  %io_ops.i.i.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr77.i.i, i32 0, i32 7
  %33 = ptrtoint ptr %io_ops.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %io_ops.i.i.i.i.i, align 4
  %tobool1.not.i.i.i.i.i = icmp eq ptr %34, null
  br i1 %tobool1.not.i.i.i.i.i, label %land.lhs.true.i.i.i.i.i.isp1704_read.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i.i.i.i

land.lhs.true.i.i.i.i.i.isp1704_read.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit.i.i.i

land.lhs.true2.i.i.i.i.i:                         ; preds = %land.lhs.true.i.i.i.i.i
  %35 = ptrtoint ptr %34 to i32
  call void @__asan_load4_noabort(i32 %35)
  %36 = load ptr, ptr %34, align 4
  %tobool4.not.i.i.i.i.i = icmp eq ptr %36, null
  br i1 %tobool4.not.i.i.i.i.i, label %land.lhs.true2.i.i.i.i.i.isp1704_read.exit.i.i.i_crit_edge, label %if.then.i.i.i.i.i

land.lhs.true2.i.i.i.i.i.isp1704_read.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit.i.i.i

if.then.i.i.i.i.i:                                ; preds = %land.lhs.true2.i.i.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i.i.i = tail call i32 %36(ptr noundef nonnull %.pr77.i.i, i32 noundef 4) #7
  br label %isp1704_read.exit.i.i.i

isp1704_read.exit.i.i.i:                          ; preds = %if.then.i.i.i.i.i, %land.lhs.true2.i.i.i.i.i.isp1704_read.exit.i.i.i_crit_edge, %land.lhs.true.i.i.i.i.i.isp1704_read.exit.i.i.i_crit_edge
  %retval.0.i.i.ph.i.i.i = phi i32 [ -22, %land.lhs.true.i.i.i.i.i.isp1704_read.exit.i.i.i_crit_edge ], [ -22, %land.lhs.true2.i.i.i.i.i.isp1704_read.exit.i.i.i_crit_edge ], [ %call.i.i.i.i.i, %if.then.i.i.i.i.i ]
  %37 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %37)
  %.pr.i.i.i = load ptr, ptr %phy, align 4
  %conv2.i.i.i = and i32 %retval.0.i.i.ph.i.i.i, 223
  %conv3.i.i.i = or i32 %conv2.i.i.i, 32
  %tobool.not.i.i41.i.i.i = icmp eq ptr %.pr.i.i.i, null
  br i1 %tobool.not.i.i41.i.i.i, label %isp1704_read.exit.i.i.i.isp1704_write.exit.i.i.i_crit_edge, label %land.lhs.true.i.i44.i.i.i

isp1704_read.exit.i.i.i.isp1704_write.exit.i.i.i_crit_edge: ; preds = %isp1704_read.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit.i.i.i

land.lhs.true.i.i44.i.i.i:                        ; preds = %isp1704_read.exit.i.i.i
  %io_ops.i.i42.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr.i.i.i, i32 0, i32 7
  %38 = ptrtoint ptr %io_ops.i.i42.i.i.i to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %io_ops.i.i42.i.i.i, align 4
  %tobool1.not.i.i43.i.i.i = icmp eq ptr %39, null
  br i1 %tobool1.not.i.i43.i.i.i, label %land.lhs.true.i.i44.i.i.i.isp1704_write.exit.i.i.i_crit_edge, label %land.lhs.true2.i.i46.i.i.i

land.lhs.true.i.i44.i.i.i.isp1704_write.exit.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i44.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit.i.i.i

land.lhs.true2.i.i46.i.i.i:                       ; preds = %land.lhs.true.i.i44.i.i.i
  %write.i.i.i.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %39, i32 0, i32 1
  %40 = ptrtoint ptr %write.i.i.i.i.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %write.i.i.i.i.i, align 4
  %tobool4.not.i.i45.i.i.i = icmp eq ptr %41, null
  br i1 %tobool4.not.i.i45.i.i.i, label %land.lhs.true2.i.i46.i.i.i.isp1704_write.exit.i.i.i_crit_edge, label %if.then.i.i48.i.i.i

land.lhs.true2.i.i46.i.i.i.isp1704_write.exit.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i46.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit.i.i.i

if.then.i.i48.i.i.i:                              ; preds = %land.lhs.true2.i.i46.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i47.i.i.i = tail call i32 %41(ptr noundef nonnull %.pr.i.i.i, i32 noundef %conv3.i.i.i, i32 noundef 4) #7
  br label %isp1704_write.exit.i.i.i

isp1704_write.exit.i.i.i:                         ; preds = %if.then.i.i48.i.i.i, %land.lhs.true2.i.i46.i.i.i.isp1704_write.exit.i.i.i_crit_edge, %land.lhs.true.i.i44.i.i.i.isp1704_write.exit.i.i.i_crit_edge, %isp1704_read.exit.i.i.i.isp1704_write.exit.i.i.i_crit_edge, %if.then.i.i.isp1704_write.exit.i.i.i_crit_edge, %do.body.i.i.isp1704_write.exit.i.i.i_crit_edge
  %retval.0.i.i172.i.i.i = phi i32 [ %retval.0.i.i.ph.i.i.i, %isp1704_read.exit.i.i.i.isp1704_write.exit.i.i.i_crit_edge ], [ %retval.0.i.i.ph.i.i.i, %land.lhs.true.i.i44.i.i.i.isp1704_write.exit.i.i.i_crit_edge ], [ %retval.0.i.i.ph.i.i.i, %land.lhs.true2.i.i46.i.i.i.isp1704_write.exit.i.i.i_crit_edge ], [ %retval.0.i.i.ph.i.i.i, %if.then.i.i48.i.i.i ], [ -22, %if.then.i.i.isp1704_write.exit.i.i.i_crit_edge ], [ -22, %do.body.i.i.isp1704_write.exit.i.i.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %conv6.i.i.i = and i32 %retval.0.i.i172.i.i.i, 199
  %42 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %phy, align 4
  %tobool.not.i.i51.i.i.i = icmp eq ptr %43, null
  br i1 %tobool.not.i.i51.i.i.i, label %isp1704_write.exit.i.i.i.isp1704_write.exit85.i.i.i_crit_edge, label %land.lhs.true.i.i54.i.i.i

isp1704_write.exit.i.i.i.isp1704_write.exit85.i.i.i_crit_edge: ; preds = %isp1704_write.exit.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit85.i.i.i

land.lhs.true.i.i54.i.i.i:                        ; preds = %isp1704_write.exit.i.i.i
  %io_ops.i.i52.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %43, i32 0, i32 7
  %44 = ptrtoint ptr %io_ops.i.i52.i.i.i to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load ptr, ptr %io_ops.i.i52.i.i.i, align 4
  %tobool1.not.i.i53.i.i.i = icmp eq ptr %45, null
  br i1 %tobool1.not.i.i53.i.i.i, label %land.lhs.true.i.i54.i.i.i.isp1704_write.exit61.i.i.i_crit_edge, label %land.lhs.true2.i.i57.i.i.i

land.lhs.true.i.i54.i.i.i.isp1704_write.exit61.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i54.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit61.i.i.i

land.lhs.true2.i.i57.i.i.i:                       ; preds = %land.lhs.true.i.i54.i.i.i
  %write.i.i55.i.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %45, i32 0, i32 1
  %46 = ptrtoint ptr %write.i.i55.i.i.i to i32
  call void @__asan_load4_noabort(i32 %46)
  %47 = load ptr, ptr %write.i.i55.i.i.i, align 4
  %tobool4.not.i.i56.i.i.i = icmp eq ptr %47, null
  br i1 %tobool4.not.i.i56.i.i.i, label %land.lhs.true2.i.i57.i.i.i.isp1704_write.exit61.i.i.i_crit_edge, label %if.then.i.i59.i.i.i

land.lhs.true2.i.i57.i.i.i.isp1704_write.exit61.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i57.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit61.i.i.i

if.then.i.i59.i.i.i:                              ; preds = %land.lhs.true2.i.i57.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i58.i.i.i = tail call i32 %47(ptr noundef nonnull %43, i32 noundef %conv6.i.i.i, i32 noundef 4) #7
  br label %isp1704_write.exit61.i.i.i

isp1704_write.exit61.i.i.i:                       ; preds = %if.then.i.i59.i.i.i, %land.lhs.true2.i.i57.i.i.i.isp1704_write.exit61.i.i.i_crit_edge, %land.lhs.true.i.i54.i.i.i.isp1704_write.exit61.i.i.i_crit_edge
  %48 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %48)
  %.pr173.i.i.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i63.i.i.i = icmp eq ptr %.pr173.i.i.i, null
  br i1 %tobool.not.i.i63.i.i.i, label %isp1704_write.exit61.i.i.i.isp1704_write.exit85.i.i.i_crit_edge, label %land.lhs.true.i.i66.i.i.i

isp1704_write.exit61.i.i.i.isp1704_write.exit85.i.i.i_crit_edge: ; preds = %isp1704_write.exit61.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit85.i.i.i

land.lhs.true.i.i66.i.i.i:                        ; preds = %isp1704_write.exit61.i.i.i
  %io_ops.i.i64.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr173.i.i.i, i32 0, i32 7
  %49 = ptrtoint ptr %io_ops.i.i64.i.i.i to i32
  call void @__asan_load4_noabort(i32 %49)
  %50 = load ptr, ptr %io_ops.i.i64.i.i.i, align 4
  %tobool1.not.i.i65.i.i.i = icmp eq ptr %50, null
  br i1 %tobool1.not.i.i65.i.i.i, label %land.lhs.true.i.i66.i.i.i.isp1704_write.exit73.i.i.i_crit_edge, label %land.lhs.true2.i.i69.i.i.i

land.lhs.true.i.i66.i.i.i.isp1704_write.exit73.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i66.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit73.i.i.i

land.lhs.true2.i.i69.i.i.i:                       ; preds = %land.lhs.true.i.i66.i.i.i
  %write.i.i67.i.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %50, i32 0, i32 1
  %51 = ptrtoint ptr %write.i.i67.i.i.i to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %write.i.i67.i.i.i, align 4
  %tobool4.not.i.i68.i.i.i = icmp eq ptr %52, null
  br i1 %tobool4.not.i.i68.i.i.i, label %land.lhs.true2.i.i69.i.i.i.isp1704_write.exit73.i.i.i_crit_edge, label %if.then.i.i71.i.i.i

land.lhs.true2.i.i69.i.i.i.isp1704_write.exit73.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i69.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit73.i.i.i

if.then.i.i71.i.i.i:                              ; preds = %land.lhs.true2.i.i69.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i70.i.i.i = tail call i32 %52(ptr noundef nonnull %.pr173.i.i.i, i32 noundef 6, i32 noundef 12) #7
  br label %isp1704_write.exit73.i.i.i

isp1704_write.exit73.i.i.i:                       ; preds = %if.then.i.i71.i.i.i, %land.lhs.true2.i.i69.i.i.i.isp1704_write.exit73.i.i.i_crit_edge, %land.lhs.true.i.i66.i.i.i.isp1704_write.exit73.i.i.i_crit_edge
  %53 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %53)
  %.pr175.i.i.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i75.i.i.i = icmp eq ptr %.pr175.i.i.i, null
  br i1 %tobool.not.i.i75.i.i.i, label %isp1704_write.exit73.i.i.i.isp1704_write.exit85.i.i.i_crit_edge, label %land.lhs.true.i.i78.i.i.i

isp1704_write.exit73.i.i.i.isp1704_write.exit85.i.i.i_crit_edge: ; preds = %isp1704_write.exit73.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit85.i.i.i

land.lhs.true.i.i78.i.i.i:                        ; preds = %isp1704_write.exit73.i.i.i
  %io_ops.i.i76.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr175.i.i.i, i32 0, i32 7
  %54 = ptrtoint ptr %io_ops.i.i76.i.i.i to i32
  call void @__asan_load4_noabort(i32 %54)
  %55 = load ptr, ptr %io_ops.i.i76.i.i.i, align 4
  %tobool1.not.i.i77.i.i.i = icmp eq ptr %55, null
  br i1 %tobool1.not.i.i77.i.i.i, label %land.lhs.true.i.i78.i.i.i.isp1704_write.exit85.i.i.i_crit_edge, label %land.lhs.true2.i.i81.i.i.i

land.lhs.true.i.i78.i.i.i.isp1704_write.exit85.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i78.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit85.i.i.i

land.lhs.true2.i.i81.i.i.i:                       ; preds = %land.lhs.true.i.i78.i.i.i
  %write.i.i79.i.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %55, i32 0, i32 1
  %56 = ptrtoint ptr %write.i.i79.i.i.i to i32
  call void @__asan_load4_noabort(i32 %56)
  %57 = load ptr, ptr %write.i.i79.i.i.i, align 4
  %tobool4.not.i.i80.i.i.i = icmp eq ptr %57, null
  br i1 %tobool4.not.i.i80.i.i.i, label %land.lhs.true2.i.i81.i.i.i.isp1704_write.exit85.i.i.i_crit_edge, label %if.then.i.i83.i.i.i

land.lhs.true2.i.i81.i.i.i.isp1704_write.exit85.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i81.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit85.i.i.i

if.then.i.i83.i.i.i:                              ; preds = %land.lhs.true2.i.i81.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i82.i.i.i = tail call i32 %57(ptr noundef nonnull %.pr175.i.i.i, i32 noundef 36, i32 noundef 5) #7
  br label %isp1704_write.exit85.i.i.i

isp1704_write.exit85.i.i.i:                       ; preds = %if.then.i.i83.i.i.i, %land.lhs.true2.i.i81.i.i.i.isp1704_write.exit85.i.i.i_crit_edge, %land.lhs.true.i.i78.i.i.i.isp1704_write.exit85.i.i.i_crit_edge, %isp1704_write.exit73.i.i.i.isp1704_write.exit85.i.i.i_crit_edge, %isp1704_write.exit61.i.i.i.isp1704_write.exit85.i.i.i_crit_edge, %isp1704_write.exit.i.i.i.isp1704_write.exit85.i.i.i_crit_edge
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %58 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %58)
  %59 = load ptr, ptr %phy, align 4
  %tobool.not.i.i87.i.i.i = icmp eq ptr %59, null
  br i1 %tobool.not.i.i87.i.i.i, label %isp1704_write.exit85.i.i.i.if.else_crit_edge, label %land.lhs.true.i.i90.i.i.i

isp1704_write.exit85.i.i.i.if.else_crit_edge:     ; preds = %isp1704_write.exit85.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.i.i90.i.i.i:                        ; preds = %isp1704_write.exit85.i.i.i
  %io_ops.i.i88.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %59, i32 0, i32 7
  %60 = ptrtoint ptr %io_ops.i.i88.i.i.i to i32
  call void @__asan_load4_noabort(i32 %60)
  %61 = load ptr, ptr %io_ops.i.i88.i.i.i, align 4
  %tobool1.not.i.i89.i.i.i = icmp eq ptr %61, null
  br i1 %tobool1.not.i.i89.i.i.i, label %land.lhs.true.i.i90.i.i.i.if.end.i.i.i_crit_edge, label %land.lhs.true2.i.i92.i.i.i

land.lhs.true.i.i90.i.i.i.if.end.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i90.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

land.lhs.true2.i.i92.i.i.i:                       ; preds = %land.lhs.true.i.i90.i.i.i
  %62 = ptrtoint ptr %61 to i32
  call void @__asan_load4_noabort(i32 %62)
  %63 = load ptr, ptr %61, align 4
  %tobool4.not.i.i91.i.i.i = icmp eq ptr %63, null
  br i1 %tobool4.not.i.i91.i.i.i, label %land.lhs.true2.i.i92.i.i.i.if.end.i.i.i_crit_edge, label %isp1704_read.exit96.i.i.i

land.lhs.true2.i.i92.i.i.i.if.end.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i92.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

isp1704_read.exit96.i.i.i:                        ; preds = %land.lhs.true2.i.i92.i.i.i
  %call.i.i93.i.i.i = tail call i32 %63(ptr noundef nonnull %59, i32 noundef 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i93.i.i.i)
  %tobool.not.i.i.i = icmp eq i32 %call.i.i93.i.i.i, 0
  br i1 %tobool.not.i.i.i, label %if.then.i.i.i, label %isp1704_read.exit96.i.i.i.if.end.i.i.i_crit_edge

isp1704_read.exit96.i.i.i.if.end.i.i.i_crit_edge: ; preds = %isp1704_read.exit96.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end.i.i.i

if.then.i.i.i:                                    ; preds = %isp1704_read.exit96.i.i.i
  %64 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %64)
  %65 = load ptr, ptr %phy, align 4
  %tobool.not.i.i98.i.i.i = icmp eq ptr %65, null
  br i1 %tobool.not.i.i98.i.i.i, label %if.then.i.i.i.isp1704_write.exit83.i.i_crit_edge, label %land.lhs.true.i.i101.i.i.i

if.then.i.i.i.isp1704_write.exit83.i.i_crit_edge: ; preds = %if.then.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit83.i.i

land.lhs.true.i.i101.i.i.i:                       ; preds = %if.then.i.i.i
  %io_ops.i.i99.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %65, i32 0, i32 7
  %66 = ptrtoint ptr %io_ops.i.i99.i.i.i to i32
  call void @__asan_load4_noabort(i32 %66)
  %67 = load ptr, ptr %io_ops.i.i99.i.i.i, align 4
  %tobool1.not.i.i100.i.i.i = icmp eq ptr %67, null
  br i1 %tobool1.not.i.i100.i.i.i, label %land.lhs.true.i.i101.i.i.i.do.end.i.i_crit_edge, label %land.lhs.true2.i.i104.i.i.i

land.lhs.true.i.i101.i.i.i.do.end.i.i_crit_edge:  ; preds = %land.lhs.true.i.i101.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true2.i.i104.i.i.i:                      ; preds = %land.lhs.true.i.i101.i.i.i
  %write.i.i102.i.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %67, i32 0, i32 1
  %68 = ptrtoint ptr %write.i.i102.i.i.i to i32
  call void @__asan_load4_noabort(i32 %68)
  %69 = load ptr, ptr %write.i.i102.i.i.i, align 4
  %tobool4.not.i.i103.i.i.i = icmp eq ptr %69, null
  br i1 %tobool4.not.i.i103.i.i.i, label %land.lhs.true2.i.i104.i.i.i.do.end.i.i_crit_edge, label %if.then.i.i106.i.i.i

land.lhs.true2.i.i104.i.i.i.do.end.i.i_crit_edge: ; preds = %land.lhs.true2.i.i104.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.then.i.i106.i.i.i:                             ; preds = %land.lhs.true2.i.i104.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i105.i.i.i = tail call i32 %69(ptr noundef nonnull %65, i32 noundef 4, i32 noundef 6) #7
  br label %do.end.i.i

if.end.i.i.i:                                     ; preds = %isp1704_read.exit96.i.i.i.if.end.i.i.i_crit_edge, %land.lhs.true2.i.i92.i.i.i.if.end.i.i.i_crit_edge, %land.lhs.true.i.i90.i.i.i.if.end.i.i.i_crit_edge
  %70 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %70)
  %.pr187.i.i.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i110.i.i.i = icmp eq ptr %.pr187.i.i.i, null
  br i1 %tobool.not.i.i110.i.i.i, label %if.end.i.i.i.if.else_crit_edge, label %land.lhs.true.i.i113.i.i.i

if.end.i.i.i.if.else_crit_edge:                   ; preds = %if.end.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.i.i113.i.i.i:                       ; preds = %if.end.i.i.i
  %io_ops.i.i111.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr187.i.i.i, i32 0, i32 7
  %71 = ptrtoint ptr %io_ops.i.i111.i.i.i to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %io_ops.i.i111.i.i.i, align 4
  %tobool1.not.i.i112.i.i.i = icmp eq ptr %72, null
  br i1 %tobool1.not.i.i112.i.i.i, label %land.lhs.true.i.i113.i.i.i.isp1704_write.exit120.i.i.i_crit_edge, label %land.lhs.true2.i.i116.i.i.i

land.lhs.true.i.i113.i.i.i.isp1704_write.exit120.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i113.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit120.i.i.i

land.lhs.true2.i.i116.i.i.i:                      ; preds = %land.lhs.true.i.i113.i.i.i
  %write.i.i114.i.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %72, i32 0, i32 1
  %73 = ptrtoint ptr %write.i.i114.i.i.i to i32
  call void @__asan_load4_noabort(i32 %73)
  %74 = load ptr, ptr %write.i.i114.i.i.i, align 4
  %tobool4.not.i.i115.i.i.i = icmp eq ptr %74, null
  br i1 %tobool4.not.i.i115.i.i.i, label %land.lhs.true2.i.i116.i.i.i.isp1704_write.exit120.i.i.i_crit_edge, label %if.then.i.i118.i.i.i

land.lhs.true2.i.i116.i.i.i.isp1704_write.exit120.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i116.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit120.i.i.i

if.then.i.i118.i.i.i:                             ; preds = %land.lhs.true2.i.i116.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i117.i.i.i = tail call i32 %74(ptr noundef nonnull %.pr187.i.i.i, i32 noundef 16, i32 noundef 62) #7
  br label %isp1704_write.exit120.i.i.i

isp1704_write.exit120.i.i.i:                      ; preds = %if.then.i.i118.i.i.i, %land.lhs.true2.i.i116.i.i.i.isp1704_write.exit120.i.i.i_crit_edge, %land.lhs.true.i.i113.i.i.i.isp1704_write.exit120.i.i.i_crit_edge
  %75 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %75)
  %.pr179.i.i.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i122.i.i.i = icmp eq ptr %.pr179.i.i.i, null
  br i1 %tobool.not.i.i122.i.i.i, label %isp1704_write.exit120.i.i.i.if.else_crit_edge, label %land.lhs.true.i.i125.i.i.i

isp1704_write.exit120.i.i.i.if.else_crit_edge:    ; preds = %isp1704_write.exit120.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.i.i125.i.i.i:                       ; preds = %isp1704_write.exit120.i.i.i
  %io_ops.i.i123.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr179.i.i.i, i32 0, i32 7
  %76 = ptrtoint ptr %io_ops.i.i123.i.i.i to i32
  call void @__asan_load4_noabort(i32 %76)
  %77 = load ptr, ptr %io_ops.i.i123.i.i.i, align 4
  %tobool1.not.i.i124.i.i.i = icmp eq ptr %77, null
  br i1 %tobool1.not.i.i124.i.i.i, label %land.lhs.true.i.i125.i.i.i.isp1704_write.exit132.i.i.i_crit_edge, label %land.lhs.true2.i.i128.i.i.i

land.lhs.true.i.i125.i.i.i.isp1704_write.exit132.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i125.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit132.i.i.i

land.lhs.true2.i.i128.i.i.i:                      ; preds = %land.lhs.true.i.i125.i.i.i
  %write.i.i126.i.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %77, i32 0, i32 1
  %78 = ptrtoint ptr %write.i.i126.i.i.i to i32
  call void @__asan_load4_noabort(i32 %78)
  %79 = load ptr, ptr %write.i.i126.i.i.i, align 4
  %tobool4.not.i.i127.i.i.i = icmp eq ptr %79, null
  br i1 %tobool4.not.i.i127.i.i.i, label %land.lhs.true2.i.i128.i.i.i.isp1704_write.exit132.i.i.i_crit_edge, label %if.then.i.i130.i.i.i

land.lhs.true2.i.i128.i.i.i.isp1704_write.exit132.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i128.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit132.i.i.i

if.then.i.i130.i.i.i:                             ; preds = %land.lhs.true2.i.i128.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i129.i.i.i = tail call i32 %79(ptr noundef nonnull %.pr179.i.i.i, i32 noundef 4, i32 noundef 6) #7
  br label %isp1704_write.exit132.i.i.i

isp1704_write.exit132.i.i.i:                      ; preds = %if.then.i.i130.i.i.i, %land.lhs.true2.i.i128.i.i.i.isp1704_write.exit132.i.i.i_crit_edge, %land.lhs.true.i.i125.i.i.i.isp1704_write.exit132.i.i.i_crit_edge
  %80 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %80)
  %.pr181.i.i.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i134.i.i.i = icmp eq ptr %.pr181.i.i.i, null
  br i1 %tobool.not.i.i134.i.i.i, label %isp1704_write.exit132.i.i.i.if.else_crit_edge, label %land.lhs.true.i.i137.i.i.i

isp1704_write.exit132.i.i.i.if.else_crit_edge:    ; preds = %isp1704_write.exit132.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.i.i137.i.i.i:                       ; preds = %isp1704_write.exit132.i.i.i
  %io_ops.i.i135.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr181.i.i.i, i32 0, i32 7
  %81 = ptrtoint ptr %io_ops.i.i135.i.i.i to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %io_ops.i.i135.i.i.i, align 4
  %tobool1.not.i.i136.i.i.i = icmp eq ptr %82, null
  br i1 %tobool1.not.i.i136.i.i.i, label %land.lhs.true.i.i137.i.i.i.isp1704_write.exit144.i.i.i_crit_edge, label %land.lhs.true2.i.i140.i.i.i

land.lhs.true.i.i137.i.i.i.isp1704_write.exit144.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i137.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit144.i.i.i

land.lhs.true2.i.i140.i.i.i:                      ; preds = %land.lhs.true.i.i137.i.i.i
  %write.i.i138.i.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %82, i32 0, i32 1
  %83 = ptrtoint ptr %write.i.i138.i.i.i to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %write.i.i138.i.i.i, align 4
  %tobool4.not.i.i139.i.i.i = icmp eq ptr %84, null
  br i1 %tobool4.not.i.i139.i.i.i, label %land.lhs.true2.i.i140.i.i.i.isp1704_write.exit144.i.i.i_crit_edge, label %if.then.i.i142.i.i.i

land.lhs.true2.i.i140.i.i.i.isp1704_write.exit144.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i140.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit144.i.i.i

if.then.i.i142.i.i.i:                             ; preds = %land.lhs.true2.i.i140.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i141.i.i.i = tail call i32 %84(ptr noundef nonnull %.pr181.i.i.i, i32 noundef 4, i32 noundef 11) #7
  br label %isp1704_write.exit144.i.i.i

isp1704_write.exit144.i.i.i:                      ; preds = %if.then.i.i142.i.i.i, %land.lhs.true2.i.i140.i.i.i.isp1704_write.exit144.i.i.i_crit_edge, %land.lhs.true.i.i137.i.i.i.isp1704_write.exit144.i.i.i_crit_edge
  %85 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %85)
  %.pr183.pr.i.i.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i146.i.i.i = icmp eq ptr %.pr183.pr.i.i.i, null
  br i1 %tobool.not.i.i146.i.i.i, label %isp1704_write.exit144.i.i.i.if.else_crit_edge, label %land.lhs.true.i.i149.i.i.i

isp1704_write.exit144.i.i.i.if.else_crit_edge:    ; preds = %isp1704_write.exit144.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.i.i149.i.i.i:                       ; preds = %isp1704_write.exit144.i.i.i
  %io_ops.i.i147.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr183.pr.i.i.i, i32 0, i32 7
  %86 = ptrtoint ptr %io_ops.i.i147.i.i.i to i32
  call void @__asan_load4_noabort(i32 %86)
  %87 = load ptr, ptr %io_ops.i.i147.i.i.i, align 4
  %tobool1.not.i.i148.i.i.i = icmp eq ptr %87, null
  br i1 %tobool1.not.i.i148.i.i.i, label %land.lhs.true.i.i149.i.i.i.isp1704_read.exit155.thread.i.i.i_crit_edge, label %land.lhs.true2.i.i151.i.i.i

land.lhs.true.i.i149.i.i.i.isp1704_read.exit155.thread.i.i.i_crit_edge: ; preds = %land.lhs.true.i.i149.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit155.thread.i.i.i

land.lhs.true2.i.i151.i.i.i:                      ; preds = %land.lhs.true.i.i149.i.i.i
  %88 = ptrtoint ptr %87 to i32
  call void @__asan_load4_noabort(i32 %88)
  %89 = load ptr, ptr %87, align 4
  %tobool4.not.i.i150.i.i.i = icmp eq ptr %89, null
  br i1 %tobool4.not.i.i150.i.i.i, label %land.lhs.true2.i.i151.i.i.i.isp1704_read.exit155.thread.i.i.i_crit_edge, label %isp1704_read.exit155.i.i.i

land.lhs.true2.i.i151.i.i.i.isp1704_read.exit155.thread.i.i.i_crit_edge: ; preds = %land.lhs.true2.i.i151.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit155.thread.i.i.i

isp1704_read.exit155.i.i.i:                       ; preds = %land.lhs.true2.i.i151.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i152.i.i.i = tail call i32 %89(ptr noundef nonnull %.pr183.pr.i.i.i, i32 noundef 21) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i152.i.i.i)
  %tobool19.not.i.i.i = icmp eq i32 %call.i.i152.i.i.i, 0
  %spec.select.i.i.i = zext i1 %tobool19.not.i.i.i to i32
  br label %isp1704_read.exit155.thread.i.i.i

isp1704_read.exit155.thread.i.i.i:                ; preds = %isp1704_read.exit155.i.i.i, %land.lhs.true2.i.i151.i.i.i.isp1704_read.exit155.thread.i.i.i_crit_edge, %land.lhs.true.i.i149.i.i.i.isp1704_read.exit155.thread.i.i.i_crit_edge
  %.ph.ph.i.i.i = phi i32 [ 0, %land.lhs.true2.i.i151.i.i.i.isp1704_read.exit155.thread.i.i.i_crit_edge ], [ 0, %land.lhs.true.i.i149.i.i.i.isp1704_read.exit155.thread.i.i.i_crit_edge ], [ %spec.select.i.i.i, %isp1704_read.exit155.i.i.i ]
  %90 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %90)
  %.pr193.pr.i.i.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i157.i.i.i = icmp eq ptr %.pr193.pr.i.i.i, null
  br i1 %tobool.not.i.i157.i.i.i, label %isp1704_read.exit155.thread.i.i.i.isp1704_charger_detect.exit.i_crit_edge, label %land.lhs.true.i.i160.i.i.i

isp1704_read.exit155.thread.i.i.i.isp1704_charger_detect.exit.i_crit_edge: ; preds = %isp1704_read.exit155.thread.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_charger_detect.exit.i

land.lhs.true.i.i160.i.i.i:                       ; preds = %isp1704_read.exit155.thread.i.i.i
  %io_ops.i.i158.i.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr193.pr.i.i.i, i32 0, i32 7
  %91 = ptrtoint ptr %io_ops.i.i158.i.i.i to i32
  call void @__asan_load4_noabort(i32 %91)
  %92 = load ptr, ptr %io_ops.i.i158.i.i.i, align 4
  %tobool1.not.i.i159.i.i.i = icmp eq ptr %92, null
  br i1 %tobool1.not.i.i159.i.i.i, label %land.lhs.true.i.i160.i.i.i.do.end.i.i_crit_edge, label %land.lhs.true2.i.i163.i.i.i

land.lhs.true.i.i160.i.i.i.do.end.i.i_crit_edge:  ; preds = %land.lhs.true.i.i160.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.lhs.true2.i.i163.i.i.i:                      ; preds = %land.lhs.true.i.i160.i.i.i
  %write.i.i161.i.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %92, i32 0, i32 1
  %93 = ptrtoint ptr %write.i.i161.i.i.i to i32
  call void @__asan_load4_noabort(i32 %93)
  %94 = load ptr, ptr %write.i.i161.i.i.i, align 4
  %tobool4.not.i.i162.i.i.i = icmp eq ptr %94, null
  br i1 %tobool4.not.i.i162.i.i.i, label %land.lhs.true2.i.i163.i.i.i.do.end.i.i_crit_edge, label %if.then.i.i165.i.i.i

land.lhs.true2.i.i163.i.i.i.do.end.i.i_crit_edge: ; preds = %land.lhs.true2.i.i163.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

if.then.i.i165.i.i.i:                             ; preds = %land.lhs.true2.i.i163.i.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i164.i.i.i = tail call i32 %94(ptr noundef nonnull %.pr193.pr.i.i.i, i32 noundef 16, i32 noundef 63) #7
  br label %do.end.i.i

do.cond.i.i:                                      ; preds = %isp1704_read.exit48.i.i
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @jiffies to i32))
  %95 = load volatile i32, ptr @jiffies, align 128
  %sub.i.i = sub i32 %add.i.i, %95
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %sub.i.i)
  %cmp.i.i = icmp slt i32 %sub.i.i, 0
  br i1 %cmp.i.i, label %do.cond.i.i.do.end.i.i_crit_edge, label %land.rhs.i.i

do.cond.i.i.do.end.i.i_crit_edge:                 ; preds = %do.cond.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

land.rhs.i.i:                                     ; preds = %do.cond.i.i
  %96 = ptrtoint ptr %present to i32
  call void @__asan_load1_noabort(i32 %96)
  %bf.load.i.i = load i8, ptr %present, align 4
  %97 = and i8 %bf.load.i.i, 64
  %tobool7.not.i.i = icmp eq i8 %97, 0
  br i1 %tobool7.not.i.i, label %land.rhs.i.i.do.end.i.i_crit_edge, label %land.rhs.i.i.do.body.i.i_crit_edge

land.rhs.i.i.do.body.i.i_crit_edge:               ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body.i.i

land.rhs.i.i.do.end.i.i_crit_edge:                ; preds = %land.rhs.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end.i.i

do.end.i.i:                                       ; preds = %land.rhs.i.i.do.end.i.i_crit_edge, %do.cond.i.i.do.end.i.i_crit_edge, %if.then.i.i165.i.i.i, %land.lhs.true2.i.i163.i.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i160.i.i.i.do.end.i.i_crit_edge, %if.then.i.i106.i.i.i, %land.lhs.true2.i.i104.i.i.i.do.end.i.i_crit_edge, %land.lhs.true.i.i101.i.i.i.do.end.i.i_crit_edge
  %ret.0.ph.i.i = phi i32 [ %.ph.ph.i.i.i, %if.then.i.i165.i.i.i ], [ %.ph.ph.i.i.i, %land.lhs.true2.i.i163.i.i.i.do.end.i.i_crit_edge ], [ %.ph.ph.i.i.i, %land.lhs.true.i.i160.i.i.i.do.end.i.i_crit_edge ], [ 1, %if.then.i.i106.i.i.i ], [ 1, %land.lhs.true2.i.i104.i.i.i.do.end.i.i_crit_edge ], [ 1, %land.lhs.true.i.i101.i.i.i.do.end.i.i_crit_edge ], [ 0, %do.cond.i.i.do.end.i.i_crit_edge ], [ 0, %land.rhs.i.i.do.end.i.i_crit_edge ]
  %98 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %98)
  %.pr71.i.i = load ptr, ptr %phy, align 4
  %conv8.i.i = and i32 %retval.0.i.i6367.i.i, 255
  %tobool.not.i.i50.i.i = icmp eq ptr %.pr71.i.i, null
  br i1 %tobool.not.i.i50.i.i, label %do.end.i.i.isp1704_charger_detect.exit.i_crit_edge, label %land.lhs.true.i.i53.i.i

do.end.i.i.isp1704_charger_detect.exit.i_crit_edge: ; preds = %do.end.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_charger_detect.exit.i

land.lhs.true.i.i53.i.i:                          ; preds = %do.end.i.i
  %io_ops.i.i51.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr71.i.i, i32 0, i32 7
  %99 = ptrtoint ptr %io_ops.i.i51.i.i to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %io_ops.i.i51.i.i, align 4
  %tobool1.not.i.i52.i.i = icmp eq ptr %100, null
  br i1 %tobool1.not.i.i52.i.i, label %land.lhs.true.i.i53.i.i.isp1704_charger_detect.exit.i_crit_edge, label %land.lhs.true2.i.i56.i.i

land.lhs.true.i.i53.i.i.isp1704_charger_detect.exit.i_crit_edge: ; preds = %land.lhs.true.i.i53.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_charger_detect.exit.i

land.lhs.true2.i.i56.i.i:                         ; preds = %land.lhs.true.i.i53.i.i
  %write.i.i54.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %100, i32 0, i32 1
  %101 = ptrtoint ptr %write.i.i54.i.i to i32
  call void @__asan_load4_noabort(i32 %101)
  %102 = load ptr, ptr %write.i.i54.i.i, align 4
  %tobool4.not.i.i55.i.i = icmp eq ptr %102, null
  br i1 %tobool4.not.i.i55.i.i, label %land.lhs.true2.i.i56.i.i.isp1704_charger_detect.exit.i_crit_edge, label %if.then.i.i58.i.i

land.lhs.true2.i.i56.i.i.isp1704_charger_detect.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_charger_detect.exit.i

if.then.i.i58.i.i:                                ; preds = %land.lhs.true2.i.i56.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i57.i.i = tail call i32 %102(ptr noundef nonnull %.pr71.i.i, i32 noundef %conv8.i.i, i32 noundef 61) #7
  br label %isp1704_charger_detect.exit.i

isp1704_charger_detect.exit.i:                    ; preds = %if.then.i.i58.i.i, %land.lhs.true2.i.i56.i.i.isp1704_charger_detect.exit.i_crit_edge, %land.lhs.true.i.i53.i.i.isp1704_charger_detect.exit.i_crit_edge, %do.end.i.i.isp1704_charger_detect.exit.i_crit_edge, %isp1704_read.exit155.thread.i.i.i.isp1704_charger_detect.exit.i_crit_edge
  %ret.076.i.i = phi i32 [ %ret.0.ph.i.i, %do.end.i.i.isp1704_charger_detect.exit.i_crit_edge ], [ %ret.0.ph.i.i, %land.lhs.true.i.i53.i.i.isp1704_charger_detect.exit.i_crit_edge ], [ %ret.0.ph.i.i, %land.lhs.true2.i.i56.i.i.isp1704_charger_detect.exit.i_crit_edge ], [ %ret.0.ph.i.i, %if.then.i.i58.i.i ], [ %.ph.ph.i.i.i, %isp1704_read.exit155.thread.i.i.i.isp1704_charger_detect.exit.i_crit_edge ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.076.i.i)
  %tobool.not.i = icmp eq i32 %ret.076.i.i, 0
  br i1 %tobool.not.i, label %isp1704_charger_detect.exit.i.if.else_crit_edge, label %land.lhs.true.i

isp1704_charger_detect.exit.i.if.else_crit_edge:  ; preds = %isp1704_charger_detect.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.i:                                  ; preds = %isp1704_charger_detect.exit.i
  %103 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %103)
  %.pr.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i.i4.i = icmp eq ptr %.pr.i, null
  br i1 %tobool.not.i.i.i4.i, label %land.lhs.true.i.isp1704_write.exit83.i.i_crit_edge, label %land.lhs.true.i.i.i7.i

land.lhs.true.i.isp1704_write.exit83.i.i_crit_edge: ; preds = %land.lhs.true.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit83.i.i

land.lhs.true.i.i.i7.i:                           ; preds = %land.lhs.true.i
  %io_ops.i.i.i5.i = getelementptr inbounds %struct.usb_phy, ptr %.pr.i, i32 0, i32 7
  %104 = ptrtoint ptr %io_ops.i.i.i5.i to i32
  call void @__asan_load4_noabort(i32 %104)
  %105 = load ptr, ptr %io_ops.i.i.i5.i, align 4
  %tobool1.not.i.i.i6.i = icmp eq ptr %105, null
  br i1 %tobool1.not.i.i.i6.i, label %land.lhs.true.i.i.i7.i.isp1704_read.exit.i14.i_crit_edge, label %land.lhs.true2.i.i.i9.i

land.lhs.true.i.i.i7.i.isp1704_read.exit.i14.i_crit_edge: ; preds = %land.lhs.true.i.i.i7.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit.i14.i

land.lhs.true2.i.i.i9.i:                          ; preds = %land.lhs.true.i.i.i7.i
  %106 = ptrtoint ptr %105 to i32
  call void @__asan_load4_noabort(i32 %106)
  %107 = load ptr, ptr %105, align 4
  %tobool4.not.i.i.i8.i = icmp eq ptr %107, null
  br i1 %tobool4.not.i.i.i8.i, label %land.lhs.true2.i.i.i9.i.isp1704_read.exit.i14.i_crit_edge, label %if.then.i.i.i11.i

land.lhs.true2.i.i.i9.i.isp1704_read.exit.i14.i_crit_edge: ; preds = %land.lhs.true2.i.i.i9.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit.i14.i

if.then.i.i.i11.i:                                ; preds = %land.lhs.true2.i.i.i9.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i.i10.i = tail call i32 %107(ptr noundef nonnull %.pr.i, i32 noundef 4) #7
  br label %isp1704_read.exit.i14.i

isp1704_read.exit.i14.i:                          ; preds = %if.then.i.i.i11.i, %land.lhs.true2.i.i.i9.i.isp1704_read.exit.i14.i_crit_edge, %land.lhs.true.i.i.i7.i.isp1704_read.exit.i14.i_crit_edge
  %retval.0.i.i.ph.i12.i = phi i32 [ -22, %land.lhs.true.i.i.i7.i.isp1704_read.exit.i14.i_crit_edge ], [ -22, %land.lhs.true2.i.i.i9.i.isp1704_read.exit.i14.i_crit_edge ], [ %call.i.i.i10.i, %if.then.i.i.i11.i ]
  %108 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %108)
  %.pr.i13.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i28.i.i = icmp eq ptr %.pr.i13.i, null
  br i1 %tobool.not.i.i28.i.i, label %isp1704_read.exit.i14.i.isp1704_write.exit83.i.i_crit_edge, label %land.lhs.true.i.i31.i.i

isp1704_read.exit.i14.i.isp1704_write.exit83.i.i_crit_edge: ; preds = %isp1704_read.exit.i14.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit83.i.i

land.lhs.true.i.i31.i.i:                          ; preds = %isp1704_read.exit.i14.i
  %io_ops.i.i29.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr.i13.i, i32 0, i32 7
  %109 = ptrtoint ptr %io_ops.i.i29.i.i to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %io_ops.i.i29.i.i, align 4
  %tobool1.not.i.i30.i.i = icmp eq ptr %110, null
  br i1 %tobool1.not.i.i30.i.i, label %land.lhs.true.i.i31.i.i.isp1704_read.exit37.i.i_crit_edge, label %land.lhs.true2.i.i33.i16.i

land.lhs.true.i.i31.i.i.isp1704_read.exit37.i.i_crit_edge: ; preds = %land.lhs.true.i.i31.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit37.i.i

land.lhs.true2.i.i33.i16.i:                       ; preds = %land.lhs.true.i.i31.i.i
  %111 = ptrtoint ptr %110 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %110, align 4
  %tobool4.not.i.i32.i15.i = icmp eq ptr %112, null
  br i1 %tobool4.not.i.i32.i15.i, label %land.lhs.true2.i.i33.i16.i.isp1704_read.exit37.i.i_crit_edge, label %if.then.i.i35.i18.i

land.lhs.true2.i.i33.i16.i.isp1704_read.exit37.i.i_crit_edge: ; preds = %land.lhs.true2.i.i33.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit37.i.i

if.then.i.i35.i18.i:                              ; preds = %land.lhs.true2.i.i33.i16.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i34.i17.i = tail call i32 %112(ptr noundef nonnull %.pr.i13.i, i32 noundef 10) #7
  br label %isp1704_read.exit37.i.i

isp1704_read.exit37.i.i:                          ; preds = %if.then.i.i35.i18.i, %land.lhs.true2.i.i33.i16.i.isp1704_read.exit37.i.i_crit_edge, %land.lhs.true.i.i31.i.i.isp1704_read.exit37.i.i_crit_edge
  %retval.0.i.i36.ph.i.i = phi i32 [ -22, %land.lhs.true.i.i31.i.i.isp1704_read.exit37.i.i_crit_edge ], [ -22, %land.lhs.true2.i.i33.i16.i.isp1704_read.exit37.i.i_crit_edge ], [ %call.i.i34.i17.i, %if.then.i.i35.i18.i ]
  %113 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %113)
  %.pr122.i.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i39.i19.i = icmp eq ptr %.pr122.i.i, null
  br i1 %tobool.not.i.i39.i19.i, label %isp1704_read.exit37.i.i.isp1704_write.exit83.i.i_crit_edge, label %land.lhs.true.i.i42.i22.i

isp1704_read.exit37.i.i.isp1704_write.exit83.i.i_crit_edge: ; preds = %isp1704_read.exit37.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit83.i.i

land.lhs.true.i.i42.i22.i:                        ; preds = %isp1704_read.exit37.i.i
  %io_ops.i.i40.i20.i = getelementptr inbounds %struct.usb_phy, ptr %.pr122.i.i, i32 0, i32 7
  %114 = ptrtoint ptr %io_ops.i.i40.i20.i to i32
  call void @__asan_load4_noabort(i32 %114)
  %115 = load ptr, ptr %io_ops.i.i40.i20.i, align 4
  %tobool1.not.i.i41.i21.i = icmp eq ptr %115, null
  br i1 %tobool1.not.i.i41.i21.i, label %land.lhs.true.i.i42.i22.i.isp1704_write.exit.i27.i_crit_edge, label %land.lhs.true2.i.i44.i25.i

land.lhs.true.i.i42.i22.i.isp1704_write.exit.i27.i_crit_edge: ; preds = %land.lhs.true.i.i42.i22.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit.i27.i

land.lhs.true2.i.i44.i25.i:                       ; preds = %land.lhs.true.i.i42.i22.i
  %write.i.i.i23.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %115, i32 0, i32 1
  %116 = ptrtoint ptr %write.i.i.i23.i to i32
  call void @__asan_load4_noabort(i32 %116)
  %117 = load ptr, ptr %write.i.i.i23.i, align 4
  %tobool4.not.i.i43.i24.i = icmp eq ptr %117, null
  br i1 %tobool4.not.i.i43.i24.i, label %land.lhs.true2.i.i44.i25.i.isp1704_write.exit.i27.i_crit_edge, label %if.then.i.i46.i.i

land.lhs.true2.i.i44.i25.i.isp1704_write.exit.i27.i_crit_edge: ; preds = %land.lhs.true2.i.i44.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit.i27.i

if.then.i.i46.i.i:                                ; preds = %land.lhs.true2.i.i44.i25.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i45.i26.i = tail call i32 %117(ptr noundef nonnull %.pr122.i.i, i32 noundef 6, i32 noundef 12) #7
  br label %isp1704_write.exit.i27.i

isp1704_write.exit.i27.i:                         ; preds = %if.then.i.i46.i.i, %land.lhs.true2.i.i44.i25.i.isp1704_write.exit.i27.i_crit_edge, %land.lhs.true.i.i42.i22.i.isp1704_write.exit.i27.i_crit_edge
  %118 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %118)
  %.pr128.pr.i.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i49.i.i = icmp eq ptr %.pr128.pr.i.i, null
  br i1 %tobool.not.i.i49.i.i, label %isp1704_write.exit.i27.i.isp1704_write.exit83.i.i_crit_edge, label %land.lhs.true.i.i52.i.i

isp1704_write.exit.i27.i.isp1704_write.exit83.i.i_crit_edge: ; preds = %isp1704_write.exit.i27.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit83.i.i

land.lhs.true.i.i52.i.i:                          ; preds = %isp1704_write.exit.i27.i
  %io_ops.i.i50.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr128.pr.i.i, i32 0, i32 7
  %119 = ptrtoint ptr %io_ops.i.i50.i.i to i32
  call void @__asan_load4_noabort(i32 %119)
  %120 = load ptr, ptr %io_ops.i.i50.i.i, align 4
  %tobool1.not.i.i51.i.i = icmp eq ptr %120, null
  br i1 %tobool1.not.i.i51.i.i, label %land.lhs.true.i.i52.i.i.isp1704_write.exit59.i.i_crit_edge, label %land.lhs.true2.i.i55.i.i

land.lhs.true.i.i52.i.i.isp1704_write.exit59.i.i_crit_edge: ; preds = %land.lhs.true.i.i52.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit59.i.i

land.lhs.true2.i.i55.i.i:                         ; preds = %land.lhs.true.i.i52.i.i
  %write.i.i53.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %120, i32 0, i32 1
  %121 = ptrtoint ptr %write.i.i53.i.i to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %write.i.i53.i.i, align 4
  %tobool4.not.i.i54.i.i = icmp eq ptr %122, null
  br i1 %tobool4.not.i.i54.i.i, label %land.lhs.true2.i.i55.i.i.isp1704_write.exit59.i.i_crit_edge, label %if.then.i.i57.i.i

land.lhs.true2.i.i55.i.i.isp1704_write.exit59.i.i_crit_edge: ; preds = %land.lhs.true2.i.i55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit59.i.i

if.then.i.i57.i.i:                                ; preds = %land.lhs.true2.i.i55.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i56.i.i = tail call i32 %122(ptr noundef nonnull %.pr128.pr.i.i, i32 noundef 3, i32 noundef 6) #7
  br label %isp1704_write.exit59.i.i

isp1704_write.exit59.i.i:                         ; preds = %if.then.i.i57.i.i, %land.lhs.true2.i.i55.i.i.isp1704_write.exit59.i.i_crit_edge, %land.lhs.true.i.i52.i.i.isp1704_write.exit59.i.i_crit_edge
  %123 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %123)
  %.pr134.i.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i61.i.i = icmp eq ptr %.pr134.i.i, null
  br i1 %tobool.not.i.i61.i.i, label %isp1704_write.exit59.i.i.isp1704_write.exit83.i.i_crit_edge, label %land.lhs.true.i.i64.i.i

isp1704_write.exit59.i.i.isp1704_write.exit83.i.i_crit_edge: ; preds = %isp1704_write.exit59.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit83.i.i

land.lhs.true.i.i64.i.i:                          ; preds = %isp1704_write.exit59.i.i
  %io_ops.i.i62.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr134.i.i, i32 0, i32 7
  %124 = ptrtoint ptr %io_ops.i.i62.i.i to i32
  call void @__asan_load4_noabort(i32 %124)
  %125 = load ptr, ptr %io_ops.i.i62.i.i, align 4
  %tobool1.not.i.i63.i.i = icmp eq ptr %125, null
  br i1 %tobool1.not.i.i63.i.i, label %land.lhs.true.i.i64.i.i.isp1704_write.exit71.i.i_crit_edge, label %land.lhs.true2.i.i67.i.i

land.lhs.true.i.i64.i.i.isp1704_write.exit71.i.i_crit_edge: ; preds = %land.lhs.true.i.i64.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit71.i.i

land.lhs.true2.i.i67.i.i:                         ; preds = %land.lhs.true.i.i64.i.i
  %write.i.i65.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %125, i32 0, i32 1
  %126 = ptrtoint ptr %write.i.i65.i.i to i32
  call void @__asan_load4_noabort(i32 %126)
  %127 = load ptr, ptr %write.i.i65.i.i, align 4
  %tobool4.not.i.i66.i.i = icmp eq ptr %127, null
  br i1 %tobool4.not.i.i66.i.i, label %land.lhs.true2.i.i67.i.i.isp1704_write.exit71.i.i_crit_edge, label %if.then.i.i69.i.i

land.lhs.true2.i.i67.i.i.isp1704_write.exit71.i.i_crit_edge: ; preds = %land.lhs.true2.i.i67.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit71.i.i

if.then.i.i69.i.i:                                ; preds = %land.lhs.true2.i.i67.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i68.i.i = tail call i32 %127(ptr noundef nonnull %.pr134.i.i, i32 noundef 1, i32 noundef 5) #7
  br label %isp1704_write.exit71.i.i

isp1704_write.exit71.i.i:                         ; preds = %if.then.i.i69.i.i, %land.lhs.true2.i.i67.i.i.isp1704_write.exit71.i.i_crit_edge, %land.lhs.true.i.i64.i.i.isp1704_write.exit71.i.i_crit_edge
  %128 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %128)
  %.pr140.pr.pr.i.i = load ptr, ptr %phy, align 4
  %tobool.not.i.i73.i.i = icmp eq ptr %.pr140.pr.pr.i.i, null
  br i1 %tobool.not.i.i73.i.i, label %isp1704_write.exit71.i.i.isp1704_write.exit83.i.i_crit_edge, label %land.lhs.true.i.i76.i.i

isp1704_write.exit71.i.i.isp1704_write.exit83.i.i_crit_edge: ; preds = %isp1704_write.exit71.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit83.i.i

land.lhs.true.i.i76.i.i:                          ; preds = %isp1704_write.exit71.i.i
  %io_ops.i.i74.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr140.pr.pr.i.i, i32 0, i32 7
  %129 = ptrtoint ptr %io_ops.i.i74.i.i to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %io_ops.i.i74.i.i, align 4
  %tobool1.not.i.i75.i.i = icmp eq ptr %130, null
  br i1 %tobool1.not.i.i75.i.i, label %land.lhs.true.i.i76.i.i.isp1704_write.exit83.i.i_crit_edge, label %land.lhs.true2.i.i79.i.i

land.lhs.true.i.i76.i.i.isp1704_write.exit83.i.i_crit_edge: ; preds = %land.lhs.true.i.i76.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit83.i.i

land.lhs.true2.i.i79.i.i:                         ; preds = %land.lhs.true.i.i76.i.i
  %write.i.i77.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %130, i32 0, i32 1
  %131 = ptrtoint ptr %write.i.i77.i.i to i32
  call void @__asan_load4_noabort(i32 %131)
  %132 = load ptr, ptr %write.i.i77.i.i, align 4
  %tobool4.not.i.i78.i.i = icmp eq ptr %132, null
  br i1 %tobool4.not.i.i78.i.i, label %land.lhs.true2.i.i79.i.i.isp1704_write.exit83.i.i_crit_edge, label %if.then.i.i81.i.i

land.lhs.true2.i.i79.i.i.isp1704_write.exit83.i.i_crit_edge: ; preds = %land.lhs.true2.i.i79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit83.i.i

if.then.i.i81.i.i:                                ; preds = %land.lhs.true2.i.i79.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i80.i.i = tail call i32 %132(ptr noundef nonnull %.pr140.pr.pr.i.i, i32 noundef 36, i32 noundef 5) #7
  br label %isp1704_write.exit83.i.i

isp1704_write.exit83.i.i:                         ; preds = %if.then.i.i81.i.i, %land.lhs.true2.i.i79.i.i.isp1704_write.exit83.i.i_crit_edge, %land.lhs.true.i.i76.i.i.isp1704_write.exit83.i.i_crit_edge, %isp1704_write.exit71.i.i.isp1704_write.exit83.i.i_crit_edge, %isp1704_write.exit59.i.i.isp1704_write.exit83.i.i_crit_edge, %isp1704_write.exit.i27.i.isp1704_write.exit83.i.i_crit_edge, %isp1704_read.exit37.i.i.isp1704_write.exit83.i.i_crit_edge, %isp1704_read.exit.i14.i.isp1704_write.exit83.i.i_crit_edge, %land.lhs.true.i.isp1704_write.exit83.i.i_crit_edge, %if.then.i.i.i.isp1704_write.exit83.i.i_crit_edge
  %retval.0.i.i121126133138145.i.i = phi i32 [ %retval.0.i.i.ph.i12.i, %isp1704_write.exit71.i.i.isp1704_write.exit83.i.i_crit_edge ], [ %retval.0.i.i.ph.i12.i, %land.lhs.true.i.i76.i.i.isp1704_write.exit83.i.i_crit_edge ], [ %retval.0.i.i.ph.i12.i, %land.lhs.true2.i.i79.i.i.isp1704_write.exit83.i.i_crit_edge ], [ %retval.0.i.i.ph.i12.i, %if.then.i.i81.i.i ], [ %retval.0.i.i.ph.i12.i, %isp1704_write.exit59.i.i.isp1704_write.exit83.i.i_crit_edge ], [ %retval.0.i.i.ph.i12.i, %isp1704_read.exit37.i.i.isp1704_write.exit83.i.i_crit_edge ], [ %retval.0.i.i.ph.i12.i, %isp1704_write.exit.i27.i.isp1704_write.exit83.i.i_crit_edge ], [ %retval.0.i.i.ph.i12.i, %isp1704_read.exit.i14.i.isp1704_write.exit83.i.i_crit_edge ], [ -22, %land.lhs.true.i.isp1704_write.exit83.i.i_crit_edge ], [ -22, %if.then.i.i.i.isp1704_write.exit83.i.i_crit_edge ]
  %retval.0.i.i36127132139144.i.i = phi i32 [ %retval.0.i.i36.ph.i.i, %isp1704_write.exit71.i.i.isp1704_write.exit83.i.i_crit_edge ], [ %retval.0.i.i36.ph.i.i, %land.lhs.true.i.i76.i.i.isp1704_write.exit83.i.i_crit_edge ], [ %retval.0.i.i36.ph.i.i, %land.lhs.true2.i.i79.i.i.isp1704_write.exit83.i.i_crit_edge ], [ %retval.0.i.i36.ph.i.i, %if.then.i.i81.i.i ], [ %retval.0.i.i36.ph.i.i, %isp1704_write.exit59.i.i.isp1704_write.exit83.i.i_crit_edge ], [ %retval.0.i.i36.ph.i.i, %isp1704_read.exit37.i.i.isp1704_write.exit83.i.i_crit_edge ], [ %retval.0.i.i36.ph.i.i, %isp1704_write.exit.i27.i.isp1704_write.exit83.i.i_crit_edge ], [ -22, %isp1704_read.exit.i14.i.isp1704_write.exit83.i.i_crit_edge ], [ -22, %land.lhs.true.i.isp1704_write.exit83.i.i_crit_edge ], [ -22, %if.then.i.i.i.isp1704_write.exit83.i.i_crit_edge ]
  tail call void @usleep_range_state(i32 noundef 1000, i32 noundef 2000, i32 noundef 2) #7
  %133 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %133)
  %134 = load ptr, ptr %phy, align 4
  %tobool.not.i.i85.i.i = icmp eq ptr %134, null
  br i1 %tobool.not.i.i85.i.i, label %isp1704_write.exit83.i.i.if.else_crit_edge, label %land.lhs.true.i.i88.i.i

isp1704_write.exit83.i.i.if.else_crit_edge:       ; preds = %isp1704_write.exit83.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

land.lhs.true.i.i88.i.i:                          ; preds = %isp1704_write.exit83.i.i
  %io_ops.i.i86.i.i = getelementptr inbounds %struct.usb_phy, ptr %134, i32 0, i32 7
  %135 = ptrtoint ptr %io_ops.i.i86.i.i to i32
  call void @__asan_load4_noabort(i32 %135)
  %136 = load ptr, ptr %io_ops.i.i86.i.i, align 4
  %tobool1.not.i.i87.i.i = icmp eq ptr %136, null
  br i1 %tobool1.not.i.i87.i.i, label %land.lhs.true.i.i88.i.i.isp1704_read.exit94.i.i_crit_edge, label %land.lhs.true2.i.i90.i.i

land.lhs.true.i.i88.i.i.isp1704_read.exit94.i.i_crit_edge: ; preds = %land.lhs.true.i.i88.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit94.i.i

land.lhs.true2.i.i90.i.i:                         ; preds = %land.lhs.true.i.i88.i.i
  %137 = ptrtoint ptr %136 to i32
  call void @__asan_load4_noabort(i32 %137)
  %138 = load ptr, ptr %136, align 4
  %tobool4.not.i.i89.i.i = icmp eq ptr %138, null
  br i1 %tobool4.not.i.i89.i.i, label %land.lhs.true2.i.i90.i.i.isp1704_read.exit94.i.i_crit_edge, label %if.then.i.i92.i.i

land.lhs.true2.i.i90.i.i.isp1704_read.exit94.i.i_crit_edge: ; preds = %land.lhs.true2.i.i90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_read.exit94.i.i

if.then.i.i92.i.i:                                ; preds = %land.lhs.true2.i.i90.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i91.i.i = tail call i32 %138(ptr noundef nonnull %134, i32 noundef 21) #7
  %phi.bo.i.i = and i32 %call.i.i91.i.i, 3
  call void @__sanitizer_cov_trace_const_cmp4(i32 3, i32 %phi.bo.i.i)
  %phi.cmp.i.i = icmp eq i32 %phi.bo.i.i, 3
  %phi.sel.i.i = select i1 %phi.cmp.i.i, i32 5, i32 6
  br label %isp1704_read.exit94.i.i

isp1704_read.exit94.i.i:                          ; preds = %if.then.i.i92.i.i, %land.lhs.true2.i.i90.i.i.isp1704_read.exit94.i.i_crit_edge, %land.lhs.true.i.i88.i.i.isp1704_read.exit94.i.i_crit_edge
  %retval.0.i.i93.ph.i.i = phi i32 [ 6, %land.lhs.true.i.i88.i.i.isp1704_read.exit94.i.i_crit_edge ], [ 6, %land.lhs.true2.i.i90.i.i.isp1704_read.exit94.i.i_crit_edge ], [ %phi.sel.i.i, %if.then.i.i92.i.i ]
  %139 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %139)
  %.pr146.i.i = load ptr, ptr %phy, align 4
  %conv13.i.i = and i32 %retval.0.i.i121126133138145.i.i, 255
  %tobool.not.i.i96.i.i = icmp eq ptr %.pr146.i.i, null
  br i1 %tobool.not.i.i96.i.i, label %isp1704_read.exit94.i.i.isp1704_charger_type.exit.i_crit_edge, label %land.lhs.true.i.i99.i.i

isp1704_read.exit94.i.i.isp1704_charger_type.exit.i_crit_edge: ; preds = %isp1704_read.exit94.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_charger_type.exit.i

land.lhs.true.i.i99.i.i:                          ; preds = %isp1704_read.exit94.i.i
  %io_ops.i.i97.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr146.i.i, i32 0, i32 7
  %140 = ptrtoint ptr %io_ops.i.i97.i.i to i32
  call void @__asan_load4_noabort(i32 %140)
  %141 = load ptr, ptr %io_ops.i.i97.i.i, align 4
  %tobool1.not.i.i98.i.i = icmp eq ptr %141, null
  br i1 %tobool1.not.i.i98.i.i, label %land.lhs.true.i.i99.i.i.isp1704_write.exit106.i.i_crit_edge, label %land.lhs.true2.i.i102.i.i

land.lhs.true.i.i99.i.i.isp1704_write.exit106.i.i_crit_edge: ; preds = %land.lhs.true.i.i99.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit106.i.i

land.lhs.true2.i.i102.i.i:                        ; preds = %land.lhs.true.i.i99.i.i
  %write.i.i100.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %141, i32 0, i32 1
  %142 = ptrtoint ptr %write.i.i100.i.i to i32
  call void @__asan_load4_noabort(i32 %142)
  %143 = load ptr, ptr %write.i.i100.i.i, align 4
  %tobool4.not.i.i101.i.i = icmp eq ptr %143, null
  br i1 %tobool4.not.i.i101.i.i, label %land.lhs.true2.i.i102.i.i.isp1704_write.exit106.i.i_crit_edge, label %if.then.i.i104.i.i

land.lhs.true2.i.i102.i.i.isp1704_write.exit106.i.i_crit_edge: ; preds = %land.lhs.true2.i.i102.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_write.exit106.i.i

if.then.i.i104.i.i:                               ; preds = %land.lhs.true2.i.i102.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i103.i.i = tail call i32 %143(ptr noundef nonnull %.pr146.i.i, i32 noundef %conv13.i.i, i32 noundef 4) #7
  br label %isp1704_write.exit106.i.i

isp1704_write.exit106.i.i:                        ; preds = %if.then.i.i104.i.i, %land.lhs.true2.i.i102.i.i.isp1704_write.exit106.i.i_crit_edge, %land.lhs.true.i.i99.i.i.isp1704_write.exit106.i.i_crit_edge
  %144 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %144)
  %.pr154.pr.i.i = load ptr, ptr %phy, align 4
  %conv15.i.i = and i32 %retval.0.i.i36127132139144.i.i, 255
  %tobool.not.i.i108.i.i = icmp eq ptr %.pr154.pr.i.i, null
  br i1 %tobool.not.i.i108.i.i, label %isp1704_write.exit106.i.i.isp1704_charger_type.exit.i_crit_edge, label %land.lhs.true.i.i111.i.i

isp1704_write.exit106.i.i.isp1704_charger_type.exit.i_crit_edge: ; preds = %isp1704_write.exit106.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_charger_type.exit.i

land.lhs.true.i.i111.i.i:                         ; preds = %isp1704_write.exit106.i.i
  %io_ops.i.i109.i.i = getelementptr inbounds %struct.usb_phy, ptr %.pr154.pr.i.i, i32 0, i32 7
  %145 = ptrtoint ptr %io_ops.i.i109.i.i to i32
  call void @__asan_load4_noabort(i32 %145)
  %146 = load ptr, ptr %io_ops.i.i109.i.i, align 4
  %tobool1.not.i.i110.i.i = icmp eq ptr %146, null
  br i1 %tobool1.not.i.i110.i.i, label %land.lhs.true.i.i111.i.i.isp1704_charger_type.exit.i_crit_edge, label %land.lhs.true2.i.i114.i.i

land.lhs.true.i.i111.i.i.isp1704_charger_type.exit.i_crit_edge: ; preds = %land.lhs.true.i.i111.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_charger_type.exit.i

land.lhs.true2.i.i114.i.i:                        ; preds = %land.lhs.true.i.i111.i.i
  %write.i.i112.i.i = getelementptr inbounds %struct.usb_phy_io_ops, ptr %146, i32 0, i32 1
  %147 = ptrtoint ptr %write.i.i112.i.i to i32
  call void @__asan_load4_noabort(i32 %147)
  %148 = load ptr, ptr %write.i.i112.i.i, align 4
  %tobool4.not.i.i113.i.i = icmp eq ptr %148, null
  br i1 %tobool4.not.i.i113.i.i, label %land.lhs.true2.i.i114.i.i.isp1704_charger_type.exit.i_crit_edge, label %if.then.i.i116.i.i

land.lhs.true2.i.i114.i.i.isp1704_charger_type.exit.i_crit_edge: ; preds = %land.lhs.true2.i.i114.i.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %isp1704_charger_type.exit.i

if.then.i.i116.i.i:                               ; preds = %land.lhs.true2.i.i114.i.i
  call void @__sanitizer_cov_trace_pc() #9
  %call.i.i115.i.i = tail call i32 %148(ptr noundef nonnull %.pr154.pr.i.i, i32 noundef %conv15.i.i, i32 noundef 10) #7
  br label %isp1704_charger_type.exit.i

isp1704_charger_type.exit.i:                      ; preds = %if.then.i.i116.i.i, %land.lhs.true2.i.i114.i.i.isp1704_charger_type.exit.i_crit_edge, %land.lhs.true.i.i111.i.i.isp1704_charger_type.exit.i_crit_edge, %isp1704_write.exit106.i.i.isp1704_charger_type.exit.i_crit_edge, %isp1704_read.exit94.i.i.isp1704_charger_type.exit.i_crit_edge
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %retval.0.i.i93.ph.i.i)
  %cmp.i = icmp eq i32 %retval.0.i.i93.ph.i.i, 5
  br i1 %cmp.i, label %isp1704_charger_type.exit.i.if.end_crit_edge, label %isp1704_charger_type.exit.i.if.else_crit_edge

isp1704_charger_type.exit.i.if.else_crit_edge:    ; preds = %isp1704_charger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.else

isp1704_charger_type.exit.i.if.end_crit_edge:     ; preds = %isp1704_charger_type.exit.i
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.else:                                          ; preds = %isp1704_charger_type.exit.i.if.else_crit_edge, %isp1704_write.exit83.i.i.if.else_crit_edge, %isp1704_charger_detect.exit.i.if.else_crit_edge, %isp1704_write.exit144.i.i.i.if.else_crit_edge, %isp1704_write.exit132.i.i.i.if.else_crit_edge, %isp1704_write.exit120.i.i.i.if.else_crit_edge, %if.end.i.i.i.if.else_crit_edge, %isp1704_write.exit85.i.i.i.if.else_crit_edge
  br label %if.end

if.end:                                           ; preds = %if.else, %isp1704_charger_type.exit.i.if.end_crit_edge
  %.sink86 = phi i32 [ 4, %if.else ], [ 5, %isp1704_charger_type.exit.i.if.end_crit_edge ]
  %.sink = phi i32 [ 500, %if.else ], [ 1800, %isp1704_charger_type.exit.i.if.end_crit_edge ]
  %type9 = getelementptr i8, ptr %data, i32 -68
  %149 = ptrtoint ptr %type9 to i32
  call void @__asan_store4_noabort(i32 %149)
  store i32 %.sink86, ptr %type9, align 4
  %current_max10 = getelementptr i8, ptr %data, i32 56
  %150 = ptrtoint ptr %current_max10 to i32
  call void @__asan_store4_noabort(i32 %150)
  store i32 %.sink, ptr %current_max10, align 4
  %151 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %151)
  %152 = load ptr, ptr %phy, align 4
  %otg = getelementptr inbounds %struct.usb_phy, ptr %152, i32 0, i32 5
  %153 = ptrtoint ptr %otg to i32
  call void @__asan_load4_noabort(i32 %153)
  %154 = load ptr, ptr %otg, align 4
  %gadget = getelementptr inbounds %struct.usb_otg, ptr %154, i32 0, i32 4
  %155 = ptrtoint ptr %gadget to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %gadget, align 4
  %tobool12.not = icmp eq ptr %156, null
  br i1 %tobool12.not, label %if.end.if.end19_crit_edge, label %if.then13

if.end.if.end19_crit_edge:                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end19

if.then13:                                        ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call17 = tail call i32 @usb_gadget_connect(ptr noundef nonnull %156) #7
  br label %if.end19

if.end19:                                         ; preds = %if.then13, %if.end.if.end19_crit_edge, %sw.bb.if.end19_crit_edge
  %type21 = getelementptr i8, ptr %data, i32 -68
  %157 = ptrtoint ptr %type21 to i32
  call void @__asan_load4_noabort(i32 %157)
  %158 = load i32, ptr %type21, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 5, i32 %158)
  %cmp.not = icmp eq i32 %158, 5
  br i1 %cmp.not, label %if.end19.sw.epilog_crit_edge, label %if.then22

if.end19.sw.epilog_crit_edge:                     ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.then22:                                        ; preds = %if.end19
  %current_max23 = getelementptr i8, ptr %data, i32 56
  %159 = ptrtoint ptr %current_max23 to i32
  call void @__asan_load4_noabort(i32 %159)
  %160 = load i32, ptr %current_max23, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 500, i32 %160)
  %cmp24 = icmp ugt i32 %160, 500
  br i1 %cmp24, label %if.end27.thread, label %if.end27

if.end27.thread:                                  ; preds = %if.then22
  call void @__sanitizer_cov_trace_pc() #9
  %161 = ptrtoint ptr %current_max23 to i32
  call void @__asan_store4_noabort(i32 %161)
  store i32 500, ptr %current_max23, align 4
  br label %if.then30

if.end27:                                         ; preds = %if.then22
  call void @__sanitizer_cov_trace_const_cmp4(i32 100, i32 %160)
  %cmp29 = icmp ugt i32 %160, 100
  br i1 %cmp29, label %if.end27.if.then30_crit_edge, label %if.end27.sw.epilog_crit_edge

if.end27.sw.epilog_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %sw.epilog

if.end27.if.then30_crit_edge:                     ; preds = %if.end27
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.then30

if.then30:                                        ; preds = %if.end27.if.then30_crit_edge, %if.end27.thread
  %162 = ptrtoint ptr %type21 to i32
  call void @__asan_store4_noabort(i32 %162)
  store i32 6, ptr %type21, align 4
  br label %sw.epilog

sw.bb35:                                          ; preds = %entry
  %online36 = getelementptr i8, ptr %data, i32 52
  %163 = ptrtoint ptr %online36 to i32
  call void @__asan_load1_noabort(i32 %163)
  %bf.load37 = load i8, ptr %online36, align 4
  %bf.clear42 = and i8 %bf.load37, 63
  store i8 %bf.clear42, ptr %online36, align 4
  %current_max44 = getelementptr i8, ptr %data, i32 56
  %164 = ptrtoint ptr %current_max44 to i32
  call void @__asan_store4_noabort(i32 %164)
  store i32 0, ptr %current_max44, align 4
  %type46 = getelementptr i8, ptr %data, i32 -68
  %165 = ptrtoint ptr %type46 to i32
  call void @__asan_store4_noabort(i32 %165)
  store i32 4, ptr %type46, align 4
  %otg48 = getelementptr inbounds %struct.usb_phy, ptr %1, i32 0, i32 5
  %166 = ptrtoint ptr %otg48 to i32
  call void @__asan_load4_noabort(i32 %166)
  %167 = load ptr, ptr %otg48, align 4
  %gadget49 = getelementptr inbounds %struct.usb_otg, ptr %167, i32 0, i32 4
  %168 = ptrtoint ptr %gadget49 to i32
  call void @__asan_load4_noabort(i32 %168)
  %169 = load ptr, ptr %gadget49, align 4
  %tobool50.not = icmp eq ptr %169, null
  br i1 %tobool50.not, label %sw.bb35.if.end56_crit_edge, label %if.then51

sw.bb35.if.end56_crit_edge:                       ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end56

if.then51:                                        ; preds = %sw.bb35
  call void @__sanitizer_cov_trace_pc() #9
  %call55 = tail call i32 @usb_gadget_disconnect(ptr noundef nonnull %169) #7
  br label %if.end56

if.end56:                                         ; preds = %if.then51, %sw.bb35.if.end56_crit_edge
  %enable_gpio.i82 = getelementptr i8, ptr %data, i32 -20
  %170 = ptrtoint ptr %enable_gpio.i82 to i32
  call void @__asan_load4_noabort(i32 %170)
  %171 = load ptr, ptr %enable_gpio.i82, align 4
  tail call void @gpiod_set_value(ptr noundef %171, i32 noundef 0) #7
  br label %sw.epilog

sw.epilog:                                        ; preds = %if.end56, %if.then30, %if.end27.sw.epilog_crit_edge, %if.end19.sw.epilog_crit_edge
  %psy = getelementptr i8, ptr %data, i32 -76
  %172 = ptrtoint ptr %psy to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %psy, align 4
  tail call void @power_supply_changed(ptr noundef %173) #7
  br label %out

out:                                              ; preds = %sw.epilog, %entry.out_crit_edge
  tail call void @mutex_unlock(ptr noundef nonnull @isp1704_charger_work.lock) #7
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @isp1704_notifier_call(ptr noundef %nb, i32 noundef %val, ptr nocapture noundef readnone %v) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %work = getelementptr i8, ptr %nb, i32 12
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %0 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %0, ptr noundef %work) #7
  ret i32 1
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_info(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_disconnect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @gpiod_set_value(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nofree nounwind null_pointer_is_valid
declare dso_local noundef i32 @sprintf(ptr noalias nocapture noundef writeonly, ptr nocapture noundef readonly, ...) local_unnamed_addr #6

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @power_supply_get_drvdata(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_lock_nested(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_gadget_connect(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @power_supply_changed(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @mutex_unlock(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @atomic_notifier_chain_unregister(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_const_cmp1(i8 zeroext, i8 zeroext)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load1_noabort(i32)

declare void @__asan_load4_noabort(i32)

declare void @__asan_store1_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare ptr @memset(ptr, i32, i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { inlinehint nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #6 = { nofree nounwind null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !20, !21, !22, !23, !24, !25, !26, !28, !30, !31, !32, !34, !35, !36, !38, !40, !41, !42, !44, !45, !47, !48, !49, !51, !52, !53, !54, !56, !57, !58, !60, !62, !63, !64, !65, !67, !69, !71, !73, !74, !75}
!llvm.module.flags = !{!77, !78, !79, !80, !81, !82, !83, !84}
!llvm.ident = !{!85}

!0 = !{ptr @__initcall__kmod_isp1704_charger__293_509_isp1704_charger_driver_init6, !1, !"__initcall__kmod_isp1704_charger__293_509_isp1704_charger_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/power/supply/isp1704_charger.c", i32 509, i32 1}
!2 = !{ptr @__exitcall_isp1704_charger_driver_exit, !1, !"__exitcall_isp1704_charger_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_alias294, !4, !"__UNIQUE_ID_alias294", i1 false, i1 false}
!4 = !{!"../drivers/power/supply/isp1704_charger.c", i32 511, i32 1}
!5 = !{ptr @__UNIQUE_ID_author295, !6, !"__UNIQUE_ID_author295", i1 false, i1 false}
!6 = !{!"../drivers/power/supply/isp1704_charger.c", i32 512, i32 1}
!7 = !{ptr @__UNIQUE_ID_description296, !8, !"__UNIQUE_ID_description296", i1 false, i1 false}
!8 = !{!"../drivers/power/supply/isp1704_charger.c", i32 513, i32 1}
!9 = !{ptr @__UNIQUE_ID_file297, !10, !"__UNIQUE_ID_file297", i1 false, i1 false}
!10 = !{!"../drivers/power/supply/isp1704_charger.c", i32 514, i32 1}
!11 = !{ptr @__UNIQUE_ID_license298, !10, !"__UNIQUE_ID_license298", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/power/supply/isp1704_charger.c", i32 502, i32 11}
!14 = !{ptr @isp1704_charger_driver, !15, !"isp1704_charger_driver", i1 false, i1 false}
!15 = !{!"../drivers/power/supply/isp1704_charger.c", i32 500, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/power/supply/isp1704_charger.c", i32 390, i32 48}
!18 = !{ptr @.str.2, !19, !"<string literal>", i1 false, i1 false}
!19 = !{!"../drivers/power/supply/isp1704_charger.c", i32 394, i32 3}
!20 = !{ptr @.str.3, !19, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.4, !19, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @.str.5, !19, !"<string literal>", i1 false, i1 false}
!23 = !{ptr @.str.6, !19, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @isp1704_charger_probe._entry, !19, !"_entry", i1 false, i1 false}
!25 = !{ptr @isp1704_charger_probe._entry_ptr, !19, !"_entry_ptr", i1 false, i1 false}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/power/supply/isp1704_charger.c", i32 399, i32 54}
!28 = !{ptr @.str.9, !29, !"<string literal>", i1 false, i1 false}
!29 = !{!"../drivers/power/supply/isp1704_charger.c", i32 405, i32 3}
!30 = !{ptr @isp1704_charger_probe._entry.8, !29, !"_entry", i1 false, i1 false}
!31 = !{ptr @isp1704_charger_probe._entry_ptr.10, !29, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/power/supply/isp1704_charger.c", i32 416, i32 3}
!34 = !{ptr @isp1704_charger_probe._entry.11, !33, !"_entry", i1 false, i1 false}
!35 = !{ptr @isp1704_charger_probe._entry_ptr.13, !33, !"_entry_ptr", i1 false, i1 false}
!36 = !{ptr @.str.14, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/power/supply/isp1704_charger.c", i32 420, i32 24}
!38 = !{ptr @.str.16, !39, !"<string literal>", i1 false, i1 false}
!39 = !{!"../drivers/power/supply/isp1704_charger.c", i32 431, i32 3}
!40 = !{ptr @isp1704_charger_probe._entry.15, !39, !"_entry", i1 false, i1 false}
!41 = !{ptr @isp1704_charger_probe._entry_ptr.17, !39, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @isp1704_charger_probe.__key, !43, !"__key", i1 false, i1 false}
!43 = !{!"../drivers/power/supply/isp1704_charger.c", i32 439, i32 2}
!44 = !{ptr @.str.18, !43, !"<string literal>", i1 false, i1 false}
!45 = !{ptr @.str.20, !46, !"<string literal>", i1 false, i1 false}
!46 = !{!"../drivers/power/supply/isp1704_charger.c", i32 445, i32 3}
!47 = !{ptr @isp1704_charger_probe._entry.19, !46, !"_entry", i1 false, i1 false}
!48 = !{ptr @isp1704_charger_probe._entry_ptr.21, !46, !"_entry_ptr", i1 false, i1 false}
!49 = !{ptr @.str.23, !50, !"<string literal>", i1 false, i1 false}
!50 = !{!"../drivers/power/supply/isp1704_charger.c", i32 449, i32 2}
!51 = !{ptr @.str.24, !50, !"<string literal>", i1 false, i1 false}
!52 = !{ptr @isp1704_charger_probe._entry.22, !50, !"_entry", i1 false, i1 false}
!53 = !{ptr @isp1704_charger_probe._entry_ptr.25, !50, !"_entry_ptr", i1 false, i1 false}
!54 = !{ptr @.str.27, !55, !"<string literal>", i1 false, i1 false}
!55 = !{!"../drivers/power/supply/isp1704_charger.c", i32 475, i32 2}
!56 = !{ptr @isp1704_charger_probe._entry.26, !55, !"_entry", i1 false, i1 false}
!57 = !{ptr @isp1704_charger_probe._entry_ptr.28, !55, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.29, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/power/supply/isp1704_charger.c", i32 370, i32 24}
!60 = !{ptr @.str.30, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/power/supply/isp1704_charger.c", i32 375, i32 2}
!62 = !{ptr @.str.31, !61, !"<string literal>", i1 false, i1 false}
!63 = !{ptr @isp1704_test_ulpi._entry, !61, !"_entry", i1 false, i1 false}
!64 = !{ptr @isp1704_test_ulpi._entry_ptr, !61, !"_entry_ptr", i1 false, i1 false}
!65 = distinct !{null, !66, !"isp170x_id", i1 false, i1 false}
!66 = !{!"../drivers/power/supply/isp1704_charger.c", i32 40, i32 12}
!67 = !{ptr @power_props, !68, !"power_props", i1 false, i1 false}
!68 = !{!"../drivers/power/supply/isp1704_charger.c", i32 332, i32 35}
!69 = !{ptr @.str.32, !70, !"<string literal>", i1 false, i1 false}
!70 = !{!"../drivers/power/supply/isp1704_charger.c", i32 324, i32 17}
!71 = !{ptr @.str.33, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/power/supply/isp1704_charger.c", i32 227, i32 9}
!73 = !{ptr @.str.34, !72, !"<string literal>", i1 false, i1 false}
!74 = !{ptr @isp1704_charger_work.lock, !72, !"lock", i1 false, i1 false}
!75 = !{ptr @omap_isp1704_of_match, !76, !"omap_isp1704_of_match", i1 false, i1 false}
!76 = !{!"../drivers/power/supply/isp1704_charger.c", i32 492, i32 34}
!77 = !{i32 1, !"wchar_size", i32 2}
!78 = !{i32 1, !"min_enum_size", i32 4}
!79 = !{i32 8, !"branch-target-enforcement", i32 0}
!80 = !{i32 8, !"sign-return-address", i32 0}
!81 = !{i32 8, !"sign-return-address-all", i32 0}
!82 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!83 = !{i32 7, !"uwtable", i32 1}
!84 = !{i32 7, !"frame-pointer", i32 2}
!85 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
