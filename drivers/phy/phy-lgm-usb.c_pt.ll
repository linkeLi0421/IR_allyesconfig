; ModuleID = '/llk/IR_all_yes/drivers/phy/phy-lgm-usb.c_pt.bc'
source_filename = "../drivers/phy/phy-lgm-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
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
%struct.tca_apb = type { [2 x ptr], ptr, %struct.work_struct, %struct.usb_phy, i8, i8, i8 }
%struct.usb_phy = type { ptr, ptr, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, %struct.notifier_block, %struct.notifier_block, %struct.notifier_block, i32, i32, %struct.usb_charger_current, %struct.work_struct, %struct.atomic_notifier_head, i16, i16, %struct.list_head, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.notifier_block = type { ptr, ptr, i32 }
%struct.usb_charger_current = type { i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.atomic_notifier_head = type { %struct.spinlock, ptr }
%union.extcon_property_value = type { i32 }

@__initcall__kmod_phy_lgm_usb__316_279_lgm_phy_driver_init6 = internal global ptr @lgm_phy_driver_init, section ".initcall6.init", align 4
@lgm_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @phy_probe, ptr @phy_remove, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @intel_usb_phy_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_lgm_phy_driver_exit = internal global ptr @lgm_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_description317 = internal constant [49 x i8] c"phy_lgm_usb.description=Intel LGM USB PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_author318 = internal constant [46 x i8] c"phy_lgm_usb.author=Li Yin <yin1.li@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author319 = internal constant [83 x i8] c"phy_lgm_usb.author=Vadivel Murugan R <vadivel.muruganx.ramuthevar@linux.intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_file320 = internal constant [41 x i8] c"phy_lgm_usb.file=drivers/phy/phy-lgm-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license321 = internal constant [27 x i8] c"phy_lgm_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"lgm-usb-phy\00", [20 x i8] zeroinitializer }, align 32
@intel_usb_phy_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,lgm-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@phy_probe.__key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.1 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"(work_completion)(&ta->wk)\00", [37 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"vbus\00", [27 x i8] zeroinitializer }, align 32
@phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 223, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"%s reset not found\0A\00", [44 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [10 x i8], [22 x i8] } { [10 x i8] c"phy_probe\00", [22 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"drivers/phy/phy-lgm-usb.c\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@phy_probe._entry_ptr = internal global ptr @phy_probe._entry, section ".printk_index", align 4
@phy_probe._entry.8 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.3, ptr @.str.4, ptr @.str.5, i32 231, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@phy_probe._entry_ptr.9 = internal global ptr @phy_probe._entry.8, section ".printk_index", align 4
@tca_work.__UNIQUE_ID_ddebug309 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.5, ptr @.str.12, i8 0, i8 39, i8 -64, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.10 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"phy_lgm_usb\00", [20 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"tca_work\00", [23 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"connected%s\0A\00", [19 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c" flipped\00", [23 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [1 x i8], [31 x i8] } zeroinitializer, align 32
@tca_work.__UNIQUE_ID_ddebug315 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.11, ptr @.str.5, ptr @.str.15, i8 0, i8 40, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.15 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"disconnected\0A\00", [18 x i8] zeroinitializer }, align 32
@tca_work._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.16, ptr @.str.11, ptr @.str.5, i32 169, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"failed to set VBUS\0A\00", [44 x i8] zeroinitializer }, align 32
@tca_work._entry_ptr = internal global ptr @tca_work._entry, section ".printk_index", align 4
@get_flipped._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.18, ptr @.str.5, i32 59, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"no polarity property from extcon\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [12 x i8], [20 x i8] } { [12 x i8] c"get_flipped\00", [20 x i8] zeroinitializer }, align 32
@get_flipped._entry_ptr = internal global ptr @get_flipped._entry, section ".printk_index", align 4
@phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.19, ptr @.str.20, ptr @.str.5, i32 82, ptr @.str.6, ptr @.str.7 }, [40 x i8] zeroinitializer }, align 32
@.str.19 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SRAM init failed, 0x%x\0A\00", [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [9 x i8], [23 x i8] } { [9 x i8] c"phy_init\00", [23 x i8] zeroinitializer }, align 32
@phy_init._entry_ptr = internal global ptr @phy_init._entry, section ".printk_index", align 4
@system_wq = external dso_local local_unnamed_addr global ptr, align 4
@phy_set_vbus.__UNIQUE_ID_ddebug303 = internal global { ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] } { ptr @.str.10, ptr @.str.21, ptr @.str.5, ptr @.str.22, i8 0, i8 33, i8 -128, i8 0, { { { %struct.atomic_t, { ptr } } } } zeroinitializer, [4 x i8] undef }, section "__dyndbg", align 8
@.str.21 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"phy_set_vbus\00", [19 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [14 x i8], [18 x i8] } { [14 x i8] c"set vbus: %d\0A\00", [18 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"apb\00", [28 x i8] zeroinitializer }, align 32
@.str.24 = internal constant { [5 x i8], [27 x i8] } { [5 x i8] c"ctrl\00", [27 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [6 x i8], [26 x i8] } { [6 x i8] c"phy31\00", [26 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [4 x i8], [28 x i8] } { [4 x i8] c"phy\00", [28 x i8] zeroinitializer }, align 32
@___asan_gen_.27 = private unnamed_addr constant [15 x i8] c"lgm_phy_driver\00", align 1
@___asan_gen_.29 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 270, i32 31 }
@___asan_gen_.32 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 272, i32 11 }
@___asan_gen_.33 = private unnamed_addr constant [21 x i8] c"intel_usb_phy_dt_ids\00", align 1
@___asan_gen_.35 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 264, i32 34 }
@___asan_gen_.36 = private unnamed_addr constant [6 x i8] c"__key\00", align 1
@___asan_gen_.41 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 200, i32 2 }
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 216, i32 37 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 223, i32 4 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 231, i32 4 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 159, i32 3 }
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 162, i32 3 }
@___asan_gen_.89 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 169, i32 3 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 59, i32 3 }
@___asan_gen_.99 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.107 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 82, i32 3 }
@___asan_gen_.113 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 134, i32 2 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 38, i32 43 }
@___asan_gen_.119 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 38, i32 50 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 37, i32 43 }
@___asan_gen_.123 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.124 = private constant [29 x i8] c"../drivers/phy/phy-lgm-usb.c\00", align 1
@___asan_gen_.125 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.124, i32 37, i32 52 }
@llvm.compiler.used = appending global [46 x ptr] [ptr @__UNIQUE_ID_author318, ptr @__UNIQUE_ID_author319, ptr @__UNIQUE_ID_description317, ptr @__UNIQUE_ID_file320, ptr @__UNIQUE_ID_license321, ptr @__exitcall_lgm_phy_driver_exit, ptr @__initcall__kmod_phy_lgm_usb__316_279_lgm_phy_driver_init6, ptr @get_flipped._entry, ptr @get_flipped._entry_ptr, ptr @lgm_phy_driver_exit, ptr @phy_init._entry, ptr @phy_init._entry_ptr, ptr @phy_probe._entry, ptr @phy_probe._entry.8, ptr @phy_probe._entry_ptr, ptr @phy_probe._entry_ptr.9, ptr @tca_work._entry, ptr @tca_work._entry_ptr, ptr @lgm_phy_driver, ptr @.str, ptr @intel_usb_phy_dt_ids, ptr @phy_probe.__key, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.13, ptr @.str.14, ptr @.str.15, ptr @.str.16, ptr @.str.17, ptr @.str.18, ptr @.str.19, ptr @.str.20, ptr @.str.21, ptr @.str.22, ptr @.str.23, ptr @.str.24, ptr @.str.25, ptr @.str.26], section "llvm.metadata"
@0 = internal global [33 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @lgm_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.27 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.29 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.32 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @intel_usb_phy_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.33 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.35 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_probe.__key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.36 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.41 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 10, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_probe._entry.8 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @tca_work._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.89 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @get_flipped._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 12, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.99 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 9, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.107 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 14, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.113 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.24 to i32), i32 5, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.119 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 6, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 4, i32 32, i32 ptrtoint (ptr @___asan_gen_.123 to i32), i32 ptrtoint (ptr @___asan_gen_.124 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.125 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @lgm_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @lgm_phy_driver, ptr noundef null) #7
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @lgm_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  tail call void @platform_driver_unregister(ptr noundef nonnull @lgm_phy_driver) #7
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 320, i32 noundef 3520) #7
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %wk = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 2
  tail call void @__init_work(ptr noundef %wk, i32 noundef 0) #7
  %1 = ptrtoint ptr %wk to i32
  call void @__asan_store4_noabort(i32 %1)
  store i32 -64, ptr %wk, align 4
  %lockdep_map = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 2, i32 3
  tail call void @lockdep_init_map_type(ptr noundef %lockdep_map, ptr noundef nonnull @.str.1, ptr noundef nonnull @phy_probe.__key, i32 noundef 0, i8 noundef zeroext 0, i8 noundef zeroext 0, i8 noundef zeroext 0) #7
  %entry5 = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 2, i32 1
  %2 = ptrtoint ptr %entry5 to i32
  call void @__asan_store4_noabort(i32 %2)
  store volatile ptr %entry5, ptr %entry5, align 4
  %prev.i = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 2, i32 1, i32 1
  %3 = ptrtoint ptr %prev.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %entry5, ptr %prev.i, align 4
  %func = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 2, i32 2
  %4 = ptrtoint ptr %func to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr @tca_work, ptr %func, align 4
  %phy7 = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 3
  %5 = ptrtoint ptr %phy7 to i32
  call void @__asan_store4_noabort(i32 %5)
  store ptr %dev1, ptr %phy7, align 4
  %init_name.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 3
  %6 = ptrtoint ptr %init_name.i to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %init_name.i, align 8
  %tobool.not.i = icmp eq ptr %7, null
  br i1 %tobool.not.i, label %if.end.i, label %if.end.dev_name.exit_crit_edge

if.end.dev_name.exit_crit_edge:                   ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %dev_name.exit

if.end.i:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %8 = ptrtoint ptr %dev1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %dev1, align 4
  br label %dev_name.exit

dev_name.exit:                                    ; preds = %if.end.i, %if.end.dev_name.exit_crit_edge
  %retval.0.i = phi ptr [ %9, %if.end.i ], [ %7, %if.end.dev_name.exit_crit_edge ]
  %label = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 3, i32 1
  %10 = ptrtoint ptr %label to i32
  call void @__asan_store4_noabort(i32 %10)
  store ptr %retval.0.i, ptr %label, align 4
  %type = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 3, i32 3
  %11 = ptrtoint ptr %type to i32
  call void @__asan_store4_noabort(i32 %11)
  store i32 2, ptr %type, align 4
  %init = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 3, i32 22
  %12 = ptrtoint ptr %init to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr @phy_init, ptr %init, align 4
  %shutdown = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 3, i32 23
  %13 = ptrtoint ptr %shutdown to i32
  call void @__asan_store4_noabort(i32 %13)
  store ptr @phy_shutdown, ptr %shutdown, align 4
  %set_vbus = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 3, i32 24
  %14 = ptrtoint ptr %set_vbus to i32
  call void @__asan_store4_noabort(i32 %14)
  store ptr @phy_set_vbus, ptr %set_vbus, align 4
  %id_nb = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 3, i32 12
  %15 = ptrtoint ptr %id_nb to i32
  call void @__asan_store4_noabort(i32 %15)
  store ptr @id_notifier, ptr %id_nb, align 4
  %vbus_nb = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 3, i32 11
  %16 = ptrtoint ptr %vbus_nb to i32
  call void @__asan_store4_noabort(i32 %16)
  store ptr @vbus_notifier, ptr %vbus_nb, align 4
  %call11 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #7
  %io_priv = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 3, i32 8
  %17 = ptrtoint ptr %io_priv to i32
  call void @__asan_store4_noabort(i32 %17)
  store ptr %call11, ptr %io_priv, align 4
  %cmp.i = icmp ugt ptr %call11, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then14, label %if.end17

if.then14:                                        ; preds = %dev_name.exit
  call void @__sanitizer_cov_trace_pc() #9
  %18 = ptrtoint ptr %call11 to i32
  br label %cleanup

if.end17:                                         ; preds = %dev_name.exit
  %call18 = tail call ptr @devm_regulator_get(ptr noundef %dev1, ptr noundef nonnull @.str.2) #7
  %vbus = getelementptr inbounds %struct.tca_apb, ptr %call.i, i32 0, i32 1
  %19 = ptrtoint ptr %vbus to i32
  call void @__asan_store4_noabort(i32 %19)
  store ptr %call18, ptr %vbus, align 4
  %cmp.i145 = icmp ugt ptr %call18, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i145, label %if.then21, label %for.body.preheader

for.body.preheader:                               ; preds = %if.end17
  %call.i146 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.23, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %cmp.i147 = icmp ugt ptr %call.i146, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147, label %for.body.preheader.do.end32_crit_edge, label %for.cond

for.body.preheader.do.end32_crit_edge:            ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

if.then21:                                        ; preds = %if.end17
  call void @__sanitizer_cov_trace_pc() #9
  %20 = ptrtoint ptr %call18 to i32
  br label %cleanup

for.cond:                                         ; preds = %for.body.preheader
  %call.i146.1 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.24, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %cmp.i147.1 = icmp ugt ptr %call.i146.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i147.1, label %for.cond.do.end32_crit_edge, label %for.cond.1

for.cond.do.end32_crit_edge:                      ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end32

for.cond.1:                                       ; preds = %for.cond
  %call.i148 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.25, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %21 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %21)
  store ptr %call.i148, ptr %call.i, align 4
  %cmp.i149 = icmp ugt ptr %call.i148, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149, label %for.cond.1.do.end50_crit_edge, label %for.inc56

for.cond.1.do.end50_crit_edge:                    ; preds = %for.cond.1
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

do.end32:                                         ; preds = %for.cond.do.end32_crit_edge, %for.body.preheader.do.end32_crit_edge
  %.lcssa159 = phi ptr [ @.str.23, %for.body.preheader.do.end32_crit_edge ], [ @.str.24, %for.cond.do.end32_crit_edge ]
  %call.i146.lcssa = phi ptr [ %call.i146, %for.body.preheader.do.end32_crit_edge ], [ %call.i146.1, %for.cond.do.end32_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull %.lcssa159) #10
  %22 = ptrtoint ptr %call.i146.lcssa to i32
  br label %cleanup

do.end50:                                         ; preds = %for.inc56.do.end50_crit_edge, %for.cond.1.do.end50_crit_edge
  %i.1152.lcssa = phi i32 [ 0, %for.cond.1.do.end50_crit_edge ], [ 1, %for.inc56.do.end50_crit_edge ]
  %.lcssa = phi ptr [ @.str.25, %for.cond.1.do.end50_crit_edge ], [ @.str.26, %for.inc56.do.end50_crit_edge ]
  %arrayidx43.le = getelementptr [2 x ptr], ptr %call.i, i32 0, i32 %i.1152.lcssa
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.3, ptr noundef nonnull %.lcssa) #10
  %23 = ptrtoint ptr %arrayidx43.le to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %arrayidx43.le, align 4
  %25 = ptrtoint ptr %24 to i32
  br label %cleanup

for.inc56:                                        ; preds = %for.cond.1
  %call.i148.1 = tail call ptr @__devm_reset_control_get(ptr noundef %dev1, ptr noundef nonnull @.str.26, i32 noundef 0, i1 noundef zeroext false, i1 noundef zeroext false, i1 noundef zeroext true) #7
  %arrayidx43.1 = getelementptr [2 x ptr], ptr %call.i, i32 0, i32 1
  %26 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_store4_noabort(i32 %26)
  store ptr %call.i148.1, ptr %arrayidx43.1, align 4
  %cmp.i149.1 = icmp ugt ptr %call.i148.1, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i149.1, label %for.inc56.do.end50_crit_edge, label %for.inc56.1

for.inc56.do.end50_crit_edge:                     ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.end50

for.inc56.1:                                      ; preds = %for.inc56
  call void @__sanitizer_cov_trace_pc() #9
  %call63 = tail call i32 @reset_control_assert(ptr noundef %call.i146) #7
  %call63.1 = tail call i32 @reset_control_assert(ptr noundef %call.i146.1) #7
  %27 = ptrtoint ptr %call.i to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %call.i, align 4
  %call72 = tail call i32 @reset_control_assert(ptr noundef %28) #7
  %29 = ptrtoint ptr %arrayidx43.1 to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load ptr, ptr %arrayidx43.1, align 4
  %call72.1 = tail call i32 @reset_control_assert(ptr noundef %30) #7
  %call80 = tail call i32 @reset_control_deassert(ptr noundef %call.i146) #7
  %call80.1 = tail call i32 @reset_control_deassert(ptr noundef %call.i146.1) #7
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 100, i32 noundef 2) #7
  %call84 = tail call i32 @usb_add_phy_dev(ptr noundef %phy7) #7
  br label %cleanup

cleanup:                                          ; preds = %for.inc56.1, %do.end50, %do.end32, %if.then21, %if.then14, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %18, %if.then14 ], [ %20, %if.then21 ], [ %22, %do.end32 ], [ %25, %do.end50 ], [ %call84, %for.inc56.1 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_remove(ptr nocapture noundef readonly %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy = getelementptr inbounds %struct.tca_apb, ptr %1, i32 0, i32 3
  tail call void @usb_remove_phy(ptr noundef %phy) #7
  ret i32 0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local void @__init_work(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @tca_work(ptr noundef %work) #2 align 64 {
entry:
  %property.i = alloca %union.extcon_property_value, align 4
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %property.i) #7
  %0 = ptrtoint ptr %property.i to i32
  call void @__asan_store4_noabort(i32 %0)
  store i32 -1, ptr %property.i, align 4, !annotation !83
  %edev.i = getelementptr i8, ptr %work, i32 80
  %1 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %1)
  %2 = load ptr, ptr %edev.i, align 4
  %call.i = call i32 @extcon_get_property(ptr noundef %2, i32 noundef 2, i32 noundef 1, ptr noundef nonnull %property.i) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not.i = icmp eq i32 %call.i, 0
  br i1 %tobool.not.i, label %if.end, label %get_flipped.exit

get_flipped.exit:                                 ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %phy.i = getelementptr i8, ptr %work, i32 44
  %3 = ptrtoint ptr %phy.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %phy.i, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %4, ptr noundef nonnull @.str.17) #10
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i) #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %5 = ptrtoint ptr %property.i to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load i32, ptr %property.i, align 4
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %6)
  %tobool2.i.not = icmp eq i32 %6, 0
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %property.i) #7
  %phy = getelementptr i8, ptr %work, i32 44
  %7 = ptrtoint ptr %edev.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %edev.i, align 4
  %call1 = call i32 @extcon_get_state(ptr noundef %8, i32 noundef 2) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call1)
  %tobool2 = icmp ne i32 %call1, 0
  %conv = zext i1 %tobool2 to i32
  %connected4 = getelementptr i8, ptr %work, i32 306
  %9 = ptrtoint ptr %connected4 to i32
  call void @__asan_load1_noabort(i32 %9)
  %10 = load i8, ptr %connected4, align 2, !range !84
  %11 = zext i1 %tobool2 to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %10, i8 %11)
  %cmp = icmp eq i8 %10, %11
  br i1 %cmp, label %if.end.cleanup_crit_edge, label %if.end9

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %12 = ptrtoint ptr %connected4 to i32
  call void @__asan_store1_noabort(i32 %12)
  store i8 %11, ptr %connected4, align 2
  br i1 %tobool2, label %do.end26, label %do.end60

do.end26:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  %spec.select = select i1 %tobool2.i.not, i32 17, i32 21
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tca_work.__UNIQUE_ID_ddebug309, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tca_work, %if.then39)) #7
          to label %do.body83 [label %if.then39], !srcloc !85

if.then39:                                        ; preds = %do.end26
  call void @__sanitizer_cov_trace_pc() #9
  %13 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %phy, align 4
  %cond = select i1 %tobool2.i.not, ptr @.str.14, ptr @.str.13
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tca_work.__UNIQUE_ID_ddebug309, ptr noundef %14, ptr noundef nonnull @.str.12, ptr noundef nonnull %cond) #7
  br label %do.body83

do.end60:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #9
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @tca_work.__UNIQUE_ID_ddebug315, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@tca_work, %if.then76)) #7
          to label %do.body83 [label %if.then76], !srcloc !85

if.then76:                                        ; preds = %do.end60
  call void @__sanitizer_cov_trace_pc() #9
  %15 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %15)
  %16 = load ptr, ptr %phy, align 4
  call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @tca_work.__UNIQUE_ID_ddebug315, ptr noundef %16, ptr noundef nonnull @.str.15) #7
  br label %do.body83

do.body83:                                        ; preds = %if.then76, %do.end60, %if.then39, %do.end26
  %val.1 = phi i32 [ %spec.select, %if.then39 ], [ 24, %if.then76 ], [ %spec.select, %do.end26 ], [ 24, %do.end60 ]
  call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !86
  call void @arm_heavy_mb() #7
  %17 = shl nuw nsw i32 %val.1, 24
  %io_priv = getelementptr i8, ptr %work, i32 76
  %18 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %io_priv, align 4
  %add.ptr87 = getelementptr i8, ptr %19, i32 4116
  call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr87, i32 %17) #7, !srcloc !87
  %set_vbus = getelementptr i8, ptr %work, i32 276
  %20 = ptrtoint ptr %set_vbus to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %set_vbus, align 4
  %call92 = call i32 %21(ptr noundef %phy, i32 noundef %conv) #7
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call92)
  %tobool93.not = icmp eq i32 %call92, 0
  br i1 %tobool93.not, label %do.body83.cleanup_crit_edge, label %do.end97

do.body83.cleanup_crit_edge:                      ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

do.end97:                                         ; preds = %do.body83
  call void @__sanitizer_cov_trace_pc() #9
  %22 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %phy, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.16) #10
  br label %cleanup

cleanup:                                          ; preds = %do.end97, %do.body83.cleanup_crit_edge, %if.end.cleanup_crit_edge, %get_flipped.exit
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_init(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %io_priv = getelementptr inbounds %struct.usb_phy, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %io_priv, align 4
  %add.ptr1 = getelementptr i8, ptr %1, i32 20
  %phy_initialized = getelementptr i8, ptr %phy, i32 261
  %2 = ptrtoint ptr %phy_initialized to i32
  call void @__asan_load1_noabort(i32 %2)
  %3 = load i8, ptr %phy_initialized, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %3)
  %tobool.not = icmp eq i8 %3, 0
  br i1 %tobool.not, label %for.body.preheader, label %entry.cleanup_crit_edge

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

for.body.preheader:                               ; preds = %entry
  %add.ptr = getelementptr i8, ptr %phy, i32 -56
  %4 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %add.ptr, align 4
  %call = tail call i32 @reset_control_deassert(ptr noundef %5) #7
  %arrayidx.1 = getelementptr i8, ptr %phy, i32 -52
  %6 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %arrayidx.1, align 4
  %call.1 = tail call i32 @reset_control_deassert(ptr noundef %7) #7
  %call2 = tail call i64 @ktime_get() #7
  %add.i = add i64 %call2, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.5, i32 noundef 80) #7
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !88
  %9 = tail call i32 @llvm.bswap.i32(i32 %8)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %and111 = and i32 %9, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and111)
  %tobool17.not112 = icmp eq i32 %and111, 0
  br i1 %tobool17.not112, label %for.body.preheader.land.lhs.true_crit_edge, label %for.body.preheader.for.end34_crit_edge

for.body.preheader.for.end34_crit_edge:           ; preds = %for.body.preheader
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end34

for.body.preheader.land.lhs.true_crit_edge:       ; preds = %for.body.preheader
  br label %land.lhs.true

land.lhs.true:                                    ; preds = %if.then32.land.lhs.true_crit_edge, %for.body.preheader.land.lhs.true_crit_edge
  %call21 = tail call i64 @ktime_get() #7
  call void @__sanitizer_cov_trace_cmp8(i64 %call21, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call21, %add.i
  br i1 %cmp3.i, label %if.then24, label %if.then32

if.then24:                                        ; preds = %land.lhs.true
  call void @__sanitizer_cov_trace_pc() #9
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !88
  %11 = tail call i32 @llvm.bswap.i32(i32 %10)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !90
  br label %for.end34

if.then32:                                        ; preds = %land.lhs.true
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #7
  %12 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !88
  %13 = tail call i32 @llvm.bswap.i32(i32 %12)
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !89
  %and = and i32 %13, 67108864
  %tobool17.not = icmp eq i32 %and, 0
  br i1 %tobool17.not, label %if.then32.land.lhs.true_crit_edge, label %if.then32.for.end34_crit_edge

if.then32.for.end34_crit_edge:                    ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %for.end34

if.then32.land.lhs.true_crit_edge:                ; preds = %if.then32
  call void @__sanitizer_cov_trace_pc() #9
  br label %land.lhs.true

for.end34:                                        ; preds = %if.then32.for.end34_crit_edge, %if.then24, %for.body.preheader.for.end34_crit_edge
  %val.0 = phi i32 [ %11, %if.then24 ], [ %9, %for.body.preheader.for.end34_crit_edge ], [ %13, %if.then32.for.end34_crit_edge ]
  %and36 = and i32 %val.0, 67108864
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and36)
  %tobool37.not = icmp eq i32 %and36, 0
  br i1 %tobool37.not, label %do.end42, label %do.body45

do.end42:                                         ; preds = %for.end34
  call void @__sanitizer_cov_trace_pc() #9
  %14 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %phy, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.19, i32 noundef %val.0) #10
  br label %cleanup

do.body45:                                        ; preds = %for.end34
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !91
  tail call void @arm_heavy_mb() #7
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr1) #7, !srcloc !88
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !92
  %17 = or i32 %16, 2
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr1, i32 %17) #7, !srcloc !87
  %18 = ptrtoint ptr %phy_initialized to i32
  call void @__asan_store1_noabort(i32 %18)
  store i8 1, ptr %phy_initialized, align 1
  %edev = getelementptr inbounds %struct.usb_phy, ptr %phy, i32 0, i32 9
  %19 = ptrtoint ptr %edev to i32
  call void @__asan_load4_noabort(i32 %19)
  %20 = load ptr, ptr %edev, align 4
  %tobool55.not = icmp eq ptr %20, null
  br i1 %tobool55.not, label %do.body57, label %if.end81

do.body57:                                        ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !93
  tail call void @arm_heavy_mb() #7
  %21 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %io_priv, align 4
  %add.ptr79 = getelementptr i8, ptr %22, i32 4116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr79, i32 285212672) #7, !srcloc !87
  %set_vbus = getelementptr inbounds %struct.usb_phy, ptr %phy, i32 0, i32 24
  %23 = ptrtoint ptr %set_vbus to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %set_vbus, align 4
  %call80 = tail call i32 %24(ptr noundef %phy, i32 noundef 1) #7
  br label %cleanup

if.end81:                                         ; preds = %do.body45
  call void @__sanitizer_cov_trace_pc() #9
  %wk = getelementptr i8, ptr %phy, i32 -44
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %25 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %25, ptr noundef %wk) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end81, %do.body57, %do.end42, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ -110, %do.end42 ], [ 0, %if.end81 ], [ %call80, %do.body57 ], [ 0, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal void @phy_shutdown(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_initialized = getelementptr i8, ptr %phy, i32 261
  %0 = ptrtoint ptr %phy_initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_initialized, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %add.ptr = getelementptr i8, ptr %phy, i32 -56
  %2 = ptrtoint ptr %phy_initialized to i32
  call void @__asan_store1_noabort(i32 %2)
  store i8 0, ptr %phy_initialized, align 1
  %wk = getelementptr i8, ptr %phy, i32 -44
  %call = tail call zeroext i1 @flush_work(ptr noundef %wk) #7
  %set_vbus = getelementptr inbounds %struct.usb_phy, ptr %phy, i32 0, i32 24
  %3 = ptrtoint ptr %set_vbus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %set_vbus, align 4
  %call4 = tail call i32 %4(ptr noundef %phy, i32 noundef 0) #7
  %connected = getelementptr i8, ptr %phy, i32 262
  %5 = ptrtoint ptr %connected to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 0, ptr %connected, align 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #7, !srcloc !94
  tail call void @arm_heavy_mb() #7
  %io_priv = getelementptr inbounds %struct.usb_phy, ptr %phy, i32 0, i32 8
  %6 = ptrtoint ptr %io_priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %io_priv, align 4
  %add.ptr23 = getelementptr i8, ptr %7, i32 4116
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr23, i32 402653184) #7, !srcloc !87
  %8 = ptrtoint ptr %add.ptr to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %add.ptr, align 4
  %call24 = tail call i32 @reset_control_assert(ptr noundef %9) #7
  %arrayidx.1 = getelementptr i8, ptr %phy, i32 -52
  %10 = ptrtoint ptr %arrayidx.1 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %arrayidx.1, align 4
  %call24.1 = tail call i32 @reset_control_assert(ptr noundef %11) #7
  br label %cleanup

cleanup:                                          ; preds = %if.end, %entry.cleanup_crit_edge
  ret void
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @phy_set_vbus(ptr nocapture noundef %phy, i32 noundef %on) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %on)
  %tobool = icmp ne i32 %on, 0
  %regulator_enabled = getelementptr i8, ptr %phy, i32 260
  %0 = ptrtoint ptr %regulator_enabled to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %regulator_enabled, align 4, !range !84
  %2 = zext i1 %tobool to i8
  call void @__sanitizer_cov_trace_cmp1(i8 %1, i8 %2)
  %cmp = icmp eq i8 %1, %2
  br i1 %cmp, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %cleanup

if.end:                                           ; preds = %entry
  %vbus = getelementptr i8, ptr %phy, i32 -48
  %3 = ptrtoint ptr %vbus to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %vbus, align 4
  br i1 %tobool, label %if.then5, label %if.else

if.then5:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call = tail call i32 @regulator_enable(ptr noundef %4) #7
  br label %if.end8

if.else:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #9
  %call7 = tail call i32 @regulator_disable(ptr noundef %4) #7
  br label %if.end8

if.end8:                                          ; preds = %if.else, %if.then5
  %ret.0 = phi i32 [ %call, %if.then5 ], [ %call7, %if.else ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %ret.0)
  %tobool9.not = icmp eq i32 %ret.0, 0
  br i1 %tobool9.not, label %if.then10, label %if.end8.do.body_crit_edge

if.end8.do.body_crit_edge:                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  br label %do.body

if.then10:                                        ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #9
  %5 = ptrtoint ptr %regulator_enabled to i32
  call void @__asan_store1_noabort(i32 %5)
  store i8 %2, ptr %regulator_enabled, align 4
  br label %do.body

do.body:                                          ; preds = %if.then10, %if.end8.do.body_crit_edge
  callbr void asm sideeffect "1:\0A\09nop\0A\09.pushsection __jump_table,  \22aw\22\0A\09.word 1b, ${1:l}, ${0:c}\0A\09.popsection\0A\09", "i,i"(ptr getelementptr inbounds ({ ptr, ptr, ptr, ptr, i8, i8, i8, i8, { { { %struct.atomic_t, { ptr } } } }, [4 x i8] }, ptr @phy_set_vbus.__UNIQUE_ID_ddebug303, i32 0, i32 8, i32 0, i32 0, i32 0, i32 0), ptr blockaddress(@phy_set_vbus, %if.then23)) #7
          to label %cleanup [label %if.then23], !srcloc !85

if.then23:                                        ; preds = %do.body
  call void @__sanitizer_cov_trace_pc() #9
  %6 = ptrtoint ptr %phy to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %phy, align 4
  tail call void (ptr, ptr, ptr, ...) @__dynamic_dev_dbg(ptr noundef nonnull @phy_set_vbus.__UNIQUE_ID_ddebug303, ptr noundef %7, ptr noundef nonnull @.str.22, i32 noundef %on) #7
  br label %cleanup

cleanup:                                          ; preds = %if.then23, %do.body, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ 0, %entry.cleanup_crit_edge ], [ %ret.0, %if.then23 ], [ %ret.0, %do.body ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @id_notifier(ptr noundef %nb, i32 noundef %event, ptr nocapture noundef readnone %ptr) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  %phy_initialized = getelementptr i8, ptr %nb, i32 205
  %0 = ptrtoint ptr %phy_initialized to i32
  call void @__asan_load1_noabort(i32 %0)
  %1 = load i8, ptr %phy_initialized, align 1, !range !84
  call void @__sanitizer_cov_trace_const_cmp1(i8 0, i8 %1)
  %tobool.not = icmp eq i8 %1, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %if.then

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  br label %if.end

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #9
  %wk = getelementptr i8, ptr %nb, i32 -100
  call void @__asan_load4_noabort(i32 ptrtoint (ptr @system_wq to i32))
  %2 = load ptr, ptr @system_wq, align 4
  %call.i.i = tail call zeroext i1 @queue_work_on(i32 noundef 4, ptr noundef %2, ptr noundef %wk) #7
  br label %if.end

if.end:                                           ; preds = %if.then, %entry.if.end_crit_edge
  ret i32 0
}

; Function Attrs: mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync)
define internal i32 @vbus_notifier(ptr nocapture noundef readnone %nb, i32 noundef %evnt, ptr nocapture noundef readnone %ptr) #4 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #9
  call void @llvm.arm.gnu.eabi.mcount()
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_regulator_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #5

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_assert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @reset_control_deassert(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @usb_add_phy_dev(ptr noundef) local_unnamed_addr #1

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @lockdep_init_map_type(ptr noundef, ptr noundef, ptr noundef, i32 noundef, i8 noundef zeroext, i8 noundef zeroext, i8 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_state(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__dynamic_dev_dbg(ptr noundef, ptr noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #6

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @extcon_get_property(ptr noundef, i32 noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @queue_work_on(i32 noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local zeroext i1 @flush_work(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_enable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regulator_disable(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_reset_control_get(ptr noundef, ptr noundef, i32 noundef, i1 noundef zeroext, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usb_remove_phy(ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #7

declare void @__sanitizer_cov_trace_cmp1(i8 zeroext, i8 zeroext)

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
define internal void @asan.module_ctor() #8 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #8 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 33)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { mustprogress nofree norecurse nosync nounwind null_pointer_is_valid readnone sanitize_address sspstrong willreturn uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #5 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #6 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #7 = { nounwind }
attributes #8 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #9 = { nomerge }
attributes #10 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !21, !23, !24, !25, !26, !27, !28, !29, !31, !32, !34, !35, !36, !37, !38, !39, !41, !42, !44, !45, !46, !48, !49, !50, !51, !53, !54, !55, !56, !58, !59, !60, !62, !64, !66, !68, !70, !72}
!llvm.module.flags = !{!74, !75, !76, !77, !78, !79, !80, !81}
!llvm.ident = !{!82}

!0 = !{ptr @__initcall__kmod_phy_lgm_usb__316_279_lgm_phy_driver_init6, !1, !"__initcall__kmod_phy_lgm_usb__316_279_lgm_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/phy-lgm-usb.c", i32 279, i32 1}
!2 = !{ptr @__exitcall_lgm_phy_driver_exit, !1, !"__exitcall_lgm_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_description317, !4, !"__UNIQUE_ID_description317", i1 false, i1 false}
!4 = !{!"../drivers/phy/phy-lgm-usb.c", i32 281, i32 1}
!5 = !{ptr @__UNIQUE_ID_author318, !6, !"__UNIQUE_ID_author318", i1 false, i1 false}
!6 = !{!"../drivers/phy/phy-lgm-usb.c", i32 282, i32 1}
!7 = !{ptr @__UNIQUE_ID_author319, !8, !"__UNIQUE_ID_author319", i1 false, i1 false}
!8 = !{!"../drivers/phy/phy-lgm-usb.c", i32 283, i32 1}
!9 = !{ptr @__UNIQUE_ID_file320, !10, !"__UNIQUE_ID_file320", i1 false, i1 false}
!10 = !{!"../drivers/phy/phy-lgm-usb.c", i32 284, i32 1}
!11 = !{ptr @__UNIQUE_ID_license321, !10, !"__UNIQUE_ID_license321", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/phy-lgm-usb.c", i32 272, i32 11}
!14 = !{ptr @lgm_phy_driver, !15, !"lgm_phy_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/phy-lgm-usb.c", i32 270, i32 31}
!16 = !{ptr @phy_probe.__key, !17, !"__key", i1 false, i1 false}
!17 = !{!"../drivers/phy/phy-lgm-usb.c", i32 200, i32 2}
!18 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.2, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/phy/phy-lgm-usb.c", i32 216, i32 37}
!21 = !{ptr @.str.3, !22, !"<string literal>", i1 false, i1 false}
!22 = !{!"../drivers/phy/phy-lgm-usb.c", i32 223, i32 4}
!23 = !{ptr @.str.4, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!25 = !{ptr @.str.6, !22, !"<string literal>", i1 false, i1 false}
!26 = !{ptr @.str.7, !22, !"<string literal>", i1 false, i1 false}
!27 = !{ptr @phy_probe._entry, !22, !"_entry", i1 false, i1 false}
!28 = !{ptr @phy_probe._entry_ptr, !22, !"_entry_ptr", i1 false, i1 false}
!29 = !{ptr @phy_probe._entry.8, !30, !"_entry", i1 false, i1 false}
!30 = !{!"../drivers/phy/phy-lgm-usb.c", i32 231, i32 4}
!31 = !{ptr @phy_probe._entry_ptr.9, !30, !"_entry_ptr", i1 false, i1 false}
!32 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/phy-lgm-usb.c", i32 159, i32 3}
!34 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @tca_work.__UNIQUE_ID_ddebug309, !33, !"__UNIQUE_ID_ddebug309", i1 false, i1 false}
!37 = !{ptr @.str.13, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @.str.14, !33, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.15, !40, !"<string literal>", i1 false, i1 false}
!40 = !{!"../drivers/phy/phy-lgm-usb.c", i32 162, i32 3}
!41 = !{ptr @tca_work.__UNIQUE_ID_ddebug315, !40, !"__UNIQUE_ID_ddebug315", i1 false, i1 false}
!42 = !{ptr @.str.16, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/phy-lgm-usb.c", i32 169, i32 3}
!44 = !{ptr @tca_work._entry, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @tca_work._entry_ptr, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/phy/phy-lgm-usb.c", i32 59, i32 3}
!48 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!49 = !{ptr @get_flipped._entry, !47, !"_entry", i1 false, i1 false}
!50 = !{ptr @get_flipped._entry_ptr, !47, !"_entry_ptr", i1 false, i1 false}
!51 = !{ptr @.str.19, !52, !"<string literal>", i1 false, i1 false}
!52 = !{!"../drivers/phy/phy-lgm-usb.c", i32 82, i32 3}
!53 = !{ptr @.str.20, !52, !"<string literal>", i1 false, i1 false}
!54 = !{ptr @phy_init._entry, !52, !"_entry", i1 false, i1 false}
!55 = !{ptr @phy_init._entry_ptr, !52, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.21, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/phy-lgm-usb.c", i32 134, i32 2}
!58 = !{ptr @.str.22, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @phy_set_vbus.__UNIQUE_ID_ddebug303, !57, !"__UNIQUE_ID_ddebug303", i1 false, i1 false}
!60 = !{ptr @.str.23, !61, !"<string literal>", i1 false, i1 false}
!61 = !{!"../drivers/phy/phy-lgm-usb.c", i32 38, i32 43}
!62 = !{ptr @.str.24, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/phy/phy-lgm-usb.c", i32 38, i32 50}
!64 = distinct !{null, !65, !"CTL_RESETS", i1 false, i1 false}
!65 = !{!"../drivers/phy/phy-lgm-usb.c", i32 38, i32 26}
!66 = !{ptr @.str.25, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/phy-lgm-usb.c", i32 37, i32 43}
!68 = !{ptr @.str.26, !69, !"<string literal>", i1 false, i1 false}
!69 = !{!"../drivers/phy/phy-lgm-usb.c", i32 37, i32 52}
!70 = distinct !{null, !71, !"PHY_RESETS", i1 false, i1 false}
!71 = !{!"../drivers/phy/phy-lgm-usb.c", i32 37, i32 26}
!72 = !{ptr @intel_usb_phy_dt_ids, !73, !"intel_usb_phy_dt_ids", i1 false, i1 false}
!73 = !{!"../drivers/phy/phy-lgm-usb.c", i32 264, i32 34}
!74 = !{i32 1, !"wchar_size", i32 2}
!75 = !{i32 1, !"min_enum_size", i32 4}
!76 = !{i32 8, !"branch-target-enforcement", i32 0}
!77 = !{i32 8, !"sign-return-address", i32 0}
!78 = !{i32 8, !"sign-return-address-all", i32 0}
!79 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!80 = !{i32 7, !"uwtable", i32 1}
!81 = !{i32 7, !"frame-pointer", i32 2}
!82 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!83 = !{!"auto-init"}
!84 = !{i8 0, i8 2}
!85 = !{i64 2148792826, i64 2148792831, i64 2148792844, i64 2148792888, i64 2148792922, i64 2148792943}
!86 = !{i64 2155490363}
!87 = !{i64 3019845}
!88 = !{i64 3020263}
!89 = !{i64 2155247907}
!90 = !{i64 2155248345}
!91 = !{i64 2155250938}
!92 = !{i64 2155251847}
!93 = !{i64 2155299279}
!94 = !{i64 2155374596}
