; ModuleID = '/llk/IR_all_yes/drivers/phy/intel/phy-intel-keembay-usb.c_pt.bc'
source_filename = "../drivers/phy/intel/phy-intel-keembay-usb.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.lock_class_key = type { %union.anon }
%union.anon = type { %struct.hlist_node }
%struct.hlist_node = type { ptr, ptr }
%struct.regmap_config = type { ptr, i32, i32, i32, i32, ptr, ptr, ptr, ptr, ptr, ptr, i8, ptr, ptr, ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, i32, i32, ptr, i32, i32, i32, i8, i8, i8, i8, i8, i32, i32, ptr, i32, i8, i8, i32, i32, i8 }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.arm_delay_ops = type { ptr, ptr, ptr, i32 }
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
%struct.keembay_usb_phy = type { ptr, ptr, ptr }

@__initcall__kmod_phy_intel_keembay_usb__334_297_keembay_usb_phy_driver_init6 = internal global ptr @keembay_usb_phy_driver_init, section ".initcall6.init", align 4
@keembay_usb_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @keembay_usb_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @keembay_usb_phy_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_keembay_usb_phy_driver_exit = internal global ptr @keembay_usb_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author335 = internal constant [87 x i8] c"phy_intel_keembay_usb.author=Wan Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description336 = internal constant [64 x i8] c"phy_intel_keembay_usb.description=Intel Keem Bay USB PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file337 = internal constant [67 x i8] c"phy_intel_keembay_usb.file=drivers/phy/intel/phy-intel-keembay-usb\00", section ".modinfo", align 1
@__UNIQUE_ID_license338 = internal constant [37 x i8] c"phy_intel_keembay_usb.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [16 x i8], [16 x i8] } { [16 x i8] c"keembay-usb-phy\00", [16 x i8] zeroinitializer }, align 32
@keembay_usb_phy_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-usb-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"cpr-apb-base\00", [19 x i8] zeroinitializer }, align 32
@keembay_usb_phy_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@keembay_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 192, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"phy_intel_keembay_usb:251:(&keembay_regmap_config)->lock\00", [39 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [13 x i8], [19 x i8] } { [13 x i8] c"slv-apb-base\00", [19 x i8] zeroinitializer }, align 32
@keembay_usb_phy_probe._key.4 = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@.str.5 = internal constant { [57 x i8], [39 x i8] } { [57 x i8] c"phy_intel_keembay_usb:260:(&keembay_regmap_config)->lock\00", [39 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @keembay_usb_phy_init, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"failed to register phy provider\0A\00", [63 x i8] zeroinitializer }, align 32
@keembay_usb_phy_init._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.8, ptr @.str.9, ptr @.str.10, i32 175, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error cr clock disable: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"keembay_usb_phy_init\00", [43 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [42 x i8], [54 x i8] } { [42 x i8] c"drivers/phy/intel/phy-intel-keembay-usb.c\00", [54 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@keembay_usb_phy_init._entry_ptr = internal global ptr @keembay_usb_phy_init._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@keembay_usb_phy_init._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.9, ptr @.str.10, i32 190, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error cr select: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@keembay_usb_phy_init._entry_ptr.15 = internal global ptr @keembay_usb_phy_init._entry.13, section ".printk_index", align 4
@keembay_usb_phy_init._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.9, ptr @.str.10, i32 199, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [27 x i8], [37 x i8] } { [27 x i8] c"error cr clock enable: %d\0A\00", [37 x i8] zeroinitializer }, align 32
@keembay_usb_phy_init._entry_ptr.18 = internal global ptr @keembay_usb_phy_init._entry.16, section ".printk_index", align 4
@keembay_usb_phy_init._entry.19 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.20, ptr @.str.9, ptr @.str.10, i32 207, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.20 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"SRAM init not done: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@keembay_usb_phy_init._entry_ptr.21 = internal global ptr @keembay_usb_phy_init._entry.19, section ".printk_index", align 4
@keembay_usb_phy_init._entry.22 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.23, ptr @.str.9, ptr @.str.10, i32 215, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.23 = internal constant { [30 x i8], [34 x i8] } { [30 x i8] c"error SRAM init done set: %d\0A\00", [34 x i8] zeroinitializer }, align 32
@keembay_usb_phy_init._entry_ptr.24 = internal global ptr @keembay_usb_phy_init._entry.22, section ".printk_index", align 4
@keembay_usb_core_off._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.25, ptr @.str.26, ptr @.str.10, i32 119, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.25 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"error core reset: %d\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.26 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"keembay_usb_core_off\00", [43 x i8] zeroinitializer }, align 32
@keembay_usb_core_off._entry_ptr = internal global ptr @keembay_usb_core_off._entry, section ".printk_index", align 4
@keembay_usb_phys_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.28, ptr @.str.10, i32 145, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"error phys on: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.28 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"keembay_usb_phys_on\00", [44 x i8] zeroinitializer }, align 32
@keembay_usb_phys_on._entry_ptr = internal global ptr @keembay_usb_phys_on._entry, section ".printk_index", align 4
@keembay_usb_clocks_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.29, ptr @.str.30, ptr @.str.10, i32 79, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.29 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error clock set: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"keembay_usb_clocks_on\00", [42 x i8] zeroinitializer }, align 32
@keembay_usb_clocks_on._entry_ptr = internal global ptr @keembay_usb_clocks_on._entry, section ".printk_index", align 4
@keembay_usb_clocks_on._entry.31 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.32, ptr @.str.30, ptr @.str.10, i32 86, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.32 = internal constant { [21 x i8], [43 x i8] } { [21 x i8] c"error reset set: %d\0A\00", [43 x i8] zeroinitializer }, align 32
@keembay_usb_clocks_on._entry_ptr.33 = internal global ptr @keembay_usb_clocks_on._entry.31, section ".printk_index", align 4
@keembay_usb_clocks_on._entry.34 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.35, ptr @.str.30, ptr @.str.10, i32 95, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.35 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"error iddq disable: %d\0A\00", [40 x i8] zeroinitializer }, align 32
@keembay_usb_clocks_on._entry_ptr.36 = internal global ptr @keembay_usb_clocks_on._entry.34, section ".printk_index", align 4
@keembay_usb_clocks_on._entry.37 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.38, ptr @.str.30, ptr @.str.10, i32 106, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.38 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"error ref clock select: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@keembay_usb_clocks_on._entry_ptr.39 = internal global ptr @keembay_usb_clocks_on._entry.37, section ".printk_index", align 4
@keembay_usb_core_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.40, ptr @.str.41, ptr @.str.10, i32 132, ptr @.str.11, ptr @.str.12 }, [40 x i8] zeroinitializer }, align 32
@.str.40 = internal constant { [19 x i8], [45 x i8] } { [19 x i8] c"error core on: %d\0A\00", [45 x i8] zeroinitializer }, align 32
@.str.41 = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"keembay_usb_core_on\00", [44 x i8] zeroinitializer }, align 32
@keembay_usb_core_on._entry_ptr = internal global ptr @keembay_usb_core_on._entry, section ".printk_index", align 4
@___asan_gen_.42 = private unnamed_addr constant [23 x i8] c"keembay_usb_phy_driver\00", align 1
@___asan_gen_.44 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 290, i32 31 }
@___asan_gen_.47 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 293, i32 11 }
@___asan_gen_.48 = private unnamed_addr constant [23 x i8] c"keembay_usb_phy_dt_ids\00", align 1
@___asan_gen_.50 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 284, i32 34 }
@___asan_gen_.53 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 246, i32 53 }
@___asan_gen_.57 = private unnamed_addr constant [22 x i8] c"keembay_regmap_config\00", align 1
@___asan_gen_.59 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 65, i32 35 }
@___asan_gen_.62 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 250, i32 21 }
@___asan_gen_.65 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 255, i32 53 }
@___asan_gen_.66 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 259, i32 21 }
@___asan_gen_.72 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.74 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 228, i32 29 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 267, i32 10 }
@___asan_gen_.80 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 273, i32 10 }
@___asan_gen_.98 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 175, i32 3 }
@___asan_gen_.104 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 190, i32 3 }
@___asan_gen_.110 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 199, i32 3 }
@___asan_gen_.116 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 207, i32 3 }
@___asan_gen_.122 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 215, i32 3 }
@___asan_gen_.131 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 119, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 145, i32 3 }
@___asan_gen_.149 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 79, i32 3 }
@___asan_gen_.155 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 86, i32 3 }
@___asan_gen_.161 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 95, i32 3 }
@___asan_gen_.167 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 106, i32 3 }
@___asan_gen_.168 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.174 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.175 = private constant [45 x i8] c"../drivers/phy/intel/phy-intel-keembay-usb.c\00", align 1
@___asan_gen_.176 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.175, i32 132, i32 3 }
@llvm.compiler.used = appending global [64 x ptr] [ptr @__UNIQUE_ID_author335, ptr @__UNIQUE_ID_description336, ptr @__UNIQUE_ID_file337, ptr @__UNIQUE_ID_license338, ptr @__exitcall_keembay_usb_phy_driver_exit, ptr @__initcall__kmod_phy_intel_keembay_usb__334_297_keembay_usb_phy_driver_init6, ptr @keembay_usb_clocks_on._entry, ptr @keembay_usb_clocks_on._entry.31, ptr @keembay_usb_clocks_on._entry.34, ptr @keembay_usb_clocks_on._entry.37, ptr @keembay_usb_clocks_on._entry_ptr, ptr @keembay_usb_clocks_on._entry_ptr.33, ptr @keembay_usb_clocks_on._entry_ptr.36, ptr @keembay_usb_clocks_on._entry_ptr.39, ptr @keembay_usb_core_off._entry, ptr @keembay_usb_core_off._entry_ptr, ptr @keembay_usb_core_on._entry, ptr @keembay_usb_core_on._entry_ptr, ptr @keembay_usb_phy_driver_exit, ptr @keembay_usb_phy_init._entry, ptr @keembay_usb_phy_init._entry.13, ptr @keembay_usb_phy_init._entry.16, ptr @keembay_usb_phy_init._entry.19, ptr @keembay_usb_phy_init._entry.22, ptr @keembay_usb_phy_init._entry_ptr, ptr @keembay_usb_phy_init._entry_ptr.15, ptr @keembay_usb_phy_init._entry_ptr.18, ptr @keembay_usb_phy_init._entry_ptr.21, ptr @keembay_usb_phy_init._entry_ptr.24, ptr @keembay_usb_phys_on._entry, ptr @keembay_usb_phys_on._entry_ptr, ptr @keembay_usb_phy_driver, ptr @.str, ptr @keembay_usb_phy_dt_ids, ptr @.str.1, ptr @keembay_usb_phy_probe._key, ptr @keembay_regmap_config, ptr @.str.2, ptr @.str.3, ptr @keembay_usb_phy_probe._key.4, ptr @.str.5, ptr @ops, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.9, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17, ptr @.str.20, ptr @.str.23, ptr @.str.25, ptr @.str.26, ptr @.str.27, ptr @.str.28, ptr @.str.29, ptr @.str.30, ptr @.str.32, ptr @.str.35, ptr @.str.38, ptr @.str.40, ptr @.str.41], section "llvm.metadata"
@0 = internal global [45 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.42 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 16, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_phy_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.48 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_phy_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.57 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.62 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 13, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.65 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_phy_probe._key.4 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.66 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 57, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.72 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.74 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.80 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_phy_init._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 42, i32 96, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.98 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_phy_init._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.104 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_phy_init._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 27, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.110 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_phy_init._entry.19 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.116 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_phy_init._entry.22 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.23 to i32), i32 30, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.122 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_core_off._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.25 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.26 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.131 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_phys_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.28 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_clocks_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.29 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.149 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_clocks_on._entry.31 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.32 to i32), i32 21, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.155 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_clocks_on._entry.34 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.161 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_clocks_on._entry.37 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.38 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.167 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_usb_core_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.168 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.40 to i32), i32 19, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.41 to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.174 to i32), i32 ptrtoint (ptr @___asan_gen_.175 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.176 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_usb_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @keembay_usb_phy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @keembay_usb_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @keembay_usb_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_usb_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.1) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %0 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @keembay_regmap_config, ptr noundef nonnull @keembay_usb_phy_probe._key, ptr noundef nonnull @.str.2) #5
  %regmap_cpr = getelementptr inbounds %struct.keembay_usb_phy, ptr %call.i, i32 0, i32 1
  %1 = ptrtoint ptr %regmap_cpr to i32
  call void @__asan_store4_noabort(i32 %1)
  store ptr %call7, ptr %regmap_cpr, align 4
  %cmp.i76 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i76, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = tail call ptr @devm_platform_ioremap_resource_byname(ptr noundef %pdev, ptr noundef nonnull @.str.3) #5
  %cmp.i77 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i77, label %if.then16, label %if.end18

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call14 to i32
  br label %cleanup

if.end18:                                         ; preds = %if.end13
  %call20 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call14, ptr noundef nonnull @keembay_regmap_config, ptr noundef nonnull @keembay_usb_phy_probe._key.4, ptr noundef nonnull @.str.5) #5
  %regmap_slv = getelementptr inbounds %struct.keembay_usb_phy, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %regmap_slv to i32
  call void @__asan_store4_noabort(i32 %4)
  store ptr %call20, ptr %regmap_slv, align 4
  %cmp.i78 = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i78, label %if.then23, label %if.end26

if.then23:                                        ; preds = %if.end18
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call20 to i32
  br label %cleanup

if.end26:                                         ; preds = %if.end18
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %6 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %of_node, align 8
  %call27 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %7, ptr noundef nonnull @ops) #5
  %cmp.i79 = icmp ugt ptr %call27, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i79, label %if.then29, label %if.end32

if.then29:                                        ; preds = %if.end26
  call void @__sanitizer_cov_trace_pc() #7
  %8 = ptrtoint ptr %call27 to i32
  %call31 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %8, ptr noundef nonnull @.str.6) #5
  br label %cleanup

if.end32:                                         ; preds = %if.end26
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call27, i32 0, i32 8
  %9 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %9)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call33 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i80 = icmp ugt ptr %call33, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i80, label %if.then35, label %if.end38

if.then35:                                        ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %call33 to i32
  %call37 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %10, ptr noundef nonnull @.str.7) #5
  br label %cleanup

if.end38:                                         ; preds = %if.end32
  %call39 = tail call fastcc i32 @keembay_usb_clocks_on(ptr noundef nonnull %call.i)
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call39)
  %tobool40.not = icmp eq i32 %call39, 0
  br i1 %tobool40.not, label %if.end42, label %if.end38.cleanup_crit_edge

if.end38.cleanup_crit_edge:                       ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end42:                                         ; preds = %if.end38
  call void @__sanitizer_cov_trace_pc() #7
  %call43 = tail call fastcc i32 @keembay_usb_core_on(ptr noundef nonnull %call.i)
  br label %cleanup

cleanup:                                          ; preds = %if.end42, %if.end38.cleanup_crit_edge, %if.then35, %if.then29, %if.then23, %if.then16, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %0, %if.then4 ], [ %2, %if.then10 ], [ %3, %if.then16 ], [ %5, %if.then23 ], [ %call31, %if.then29 ], [ %call37, %if.then35 ], [ %call43, %if.end42 ], [ -12, %entry.cleanup_crit_edge ], [ %call39, %if.end38.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource_byname(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_regmap_init_mmio_clk(ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @dev_err_probe(ptr noundef, i32 noundef, ptr noundef, ...) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @keembay_usb_clocks_on(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_cpr = getelementptr inbounds %struct.keembay_usb_phy, ptr %priv, i32 0, i32 1
  %0 = ptrtoint ptr %regmap_cpr to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_cpr, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 4, i32 noundef 127, i32 noundef 127, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end

do.end:                                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.29, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %regmap_cpr to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %regmap_cpr, align 4
  %call.i76 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 20, i32 noundef 127, i32 noundef 127, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i76)
  %tobool3.not = icmp eq i32 %call.i76, 0
  br i1 %tobool3.not, label %if.end9, label %do.end7

do.end7:                                          ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %7, ptr noundef nonnull @.str.32, i32 noundef %call.i76) #8
  br label %cleanup

if.end9:                                          ; preds = %if.end
  %regmap_slv = getelementptr inbounds %struct.keembay_usb_phy, ptr %priv, i32 0, i32 2
  %8 = ptrtoint ptr %regmap_slv to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %regmap_slv, align 4
  %call.i77 = tail call i32 @regmap_update_bits_base(ptr noundef %9, i32 noundef 192, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i77)
  %tobool26.not = icmp eq i32 %call.i77, 0
  br i1 %tobool26.not, label %if.end32, label %do.end30

do.end30:                                         ; preds = %if.end9
  call void @__sanitizer_cov_trace_pc() #7
  %10 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %11, ptr noundef nonnull @.str.35, i32 noundef %call.i77) #8
  br label %cleanup

if.end32:                                         ; preds = %if.end9
  tail call void @usleep_range_state(i32 noundef 30, i32 noundef 60, i32 noundef 2) #5
  %12 = ptrtoint ptr %regmap_slv to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %regmap_slv, align 4
  %call.i78 = tail call i32 @regmap_update_bits_base(ptr noundef %13, i32 noundef 48, i32 noundef 32, i32 noundef 32, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i78)
  %tobool51.not = icmp eq i32 %call.i78, 0
  br i1 %tobool51.not, label %if.end32.cleanup_crit_edge, label %do.end55

if.end32.cleanup_crit_edge:                       ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end55:                                         ; preds = %if.end32
  call void @__sanitizer_cov_trace_pc() #7
  %14 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %15, ptr noundef nonnull @.str.38, i32 noundef %call.i78) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end55, %if.end32.cleanup_crit_edge, %do.end30, %do.end7, %do.end
  %retval.0 = phi i32 [ %call.i, %do.end ], [ %call.i76, %do.end7 ], [ %call.i77, %do.end30 ], [ %call.i78, %do.end55 ], [ 0, %if.end32.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @keembay_usb_core_on(ptr nocapture noundef readonly %priv) unnamed_addr #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %regmap_slv = getelementptr inbounds %struct.keembay_usb_phy, ptr %priv, i32 0, i32 2
  %0 = ptrtoint ptr %regmap_slv to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %regmap_slv, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %1, i32 noundef 16, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %entry.if.end_crit_edge, label %do.end15

entry.if.end_crit_edge:                           ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end

do.end15:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %priv to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %priv, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %3, ptr noundef nonnull @.str.40, i32 noundef %call.i) #8
  br label %if.end

if.end:                                           ; preds = %do.end15, %entry.if.end_crit_edge
  ret i32 %call.i
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_usb_phy_init(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  %val = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %val) #5
  %2 = ptrtoint ptr %val to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %val, align 4, !annotation !99
  %regmap_slv.i = getelementptr inbounds %struct.keembay_usb_phy, ptr %1, i32 0, i32 2
  %3 = ptrtoint ptr %regmap_slv.i to i32
  call void @__asan_load4_noabort(i32 %3)
  %4 = load ptr, ptr %regmap_slv.i, align 4
  %call.i.i = tail call i32 @regmap_update_bits_base(ptr noundef %4, i32 noundef 16, i32 noundef -2147483648, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i)
  %tobool.not.i = icmp eq i32 %call.i.i, 0
  br i1 %tobool.not.i, label %if.end, label %keembay_usb_core_off.exit

keembay_usb_core_off.exit:                        ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %6, ptr noundef nonnull @.str.25, i32 noundef %call.i.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  tail call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #5
  %7 = ptrtoint ptr %regmap_slv.i to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %regmap_slv.i, align 4
  %call.i.i185 = tail call i32 @regmap_update_bits_base(ptr noundef %8, i32 noundef 48, i32 noundef 49152, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i185)
  %tobool.not.i186 = icmp eq i32 %call.i.i185, 0
  br i1 %tobool.not.i186, label %if.end5, label %keembay_usb_phys_on.exit

keembay_usb_phys_on.exit:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %9 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %10, ptr noundef nonnull @.str.27, i32 noundef %call.i.i185) #8
  br label %cleanup

if.end5:                                          ; preds = %if.end
  %11 = ptrtoint ptr %regmap_slv.i to i32
  call void @__asan_load4_noabort(i32 %11)
  %12 = load ptr, ptr %regmap_slv.i, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %12, i32 noundef 172, i32 noundef 128, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool19.not = icmp eq i32 %call.i, 0
  br i1 %tobool19.not, label %if.end24, label %do.end23

do.end23:                                         ; preds = %if.end5
  call void @__sanitizer_cov_trace_pc() #7
  %13 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %13)
  %14 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %14, ptr noundef nonnull @.str.8, i32 noundef %call.i) #8
  br label %cleanup

if.end24:                                         ; preds = %if.end5
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %15 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %15(i32 noundef 429496) #5
  %16 = ptrtoint ptr %regmap_slv.i to i32
  call void @__asan_load4_noabort(i32 %16)
  %17 = load ptr, ptr %regmap_slv.i, align 4
  %call.i188 = tail call i32 @regmap_update_bits_base(ptr noundef %17, i32 noundef 160, i32 noundef 4, i32 noundef 4, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i188)
  %tobool43.not = icmp eq i32 %call.i188, 0
  br i1 %tobool43.not, label %if.end49, label %do.end47

do.end47:                                         ; preds = %if.end24
  call void @__sanitizer_cov_trace_pc() #7
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %19, ptr noundef nonnull @.str.14, i32 noundef %call.i188) #8
  br label %cleanup

if.end49:                                         ; preds = %if.end24
  %20 = ptrtoint ptr %regmap_slv.i to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %regmap_slv.i, align 4
  %call.i189 = tail call i32 @regmap_update_bits_base(ptr noundef %21, i32 noundef 172, i32 noundef 128, i32 noundef 128, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i189)
  %tobool68.not = icmp eq i32 %call.i189, 0
  br i1 %tobool68.not, label %if.end74, label %do.end72

do.end72:                                         ; preds = %if.end49
  call void @__sanitizer_cov_trace_pc() #7
  %22 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %22)
  %23 = load ptr, ptr %1, align 4
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %23, ptr noundef nonnull @.str.17, i32 noundef %call.i189) #8
  br label %cleanup

if.end74:                                         ; preds = %if.end49
  %call75 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call75, 10000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.10, i32 noundef 205) #5
  %24 = ptrtoint ptr %regmap_slv.i to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %regmap_slv.i, align 4
  %call89206 = call i32 @regmap_read(ptr noundef %25, i32 noundef 184, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call89206)
  %tobool90.not207 = icmp eq i32 %call89206, 0
  br i1 %tobool90.not207, label %if.end74.lor.lhs.false_crit_edge, label %if.end74.do.end116_crit_edge

if.end74.do.end116_crit_edge:                     ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end116

if.end74.lor.lhs.false_crit_edge:                 ; preds = %if.end74
  br label %lor.lhs.false

lor.lhs.false:                                    ; preds = %if.then103.lor.lhs.false_crit_edge, %if.end74.lor.lhs.false_crit_edge
  %26 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load i32, ptr %val, align 4
  %and = and i32 %27, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool91.not = icmp eq i32 %and, 0
  br i1 %tobool91.not, label %land.lhs.true, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true:                                    ; preds = %lor.lhs.false
  %call95 = call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call95, i64 %add.i)
  %cmp3.i = icmp sgt i64 %call95, %add.i
  br i1 %cmp3.i, label %for.end, label %if.then103

if.then103:                                       ; preds = %land.lhs.true
  call void @usleep_range_state(i32 noundef 251, i32 noundef 1000, i32 noundef 2) #5
  %28 = ptrtoint ptr %regmap_slv.i to i32
  call void @__asan_load4_noabort(i32 %28)
  %29 = load ptr, ptr %regmap_slv.i, align 4
  %call89 = call i32 @regmap_read(ptr noundef %29, i32 noundef 184, ptr noundef nonnull %val) #5
  %tobool90.not = icmp eq i32 %call89, 0
  br i1 %tobool90.not, label %if.then103.lor.lhs.false_crit_edge, label %if.then103.do.end116_crit_edge

if.then103.do.end116_crit_edge:                   ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end116

if.then103.lor.lhs.false_crit_edge:               ; preds = %if.then103
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.lhs.false

for.end:                                          ; preds = %land.lhs.true
  %30 = ptrtoint ptr %regmap_slv.i to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %regmap_slv.i, align 4
  %call100 = call i32 @regmap_read(ptr noundef %31, i32 noundef 184, ptr noundef nonnull %val) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call100)
  %tobool106.not = icmp eq i32 %call100, 0
  br i1 %tobool106.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end116_crit_edge

for.end.do.end116_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end116

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %32 = ptrtoint ptr %val to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load i32, ptr %val, align 4
  %and107 = and i32 %33, 8
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and107)
  %tobool108.not = icmp eq i32 %and107, 0
  br i1 %tobool108.not, label %lor.rhs.do.end116_crit_edge, label %if.end118

lor.rhs.do.end116_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end116

do.end116:                                        ; preds = %lor.rhs.do.end116_crit_edge, %for.end.do.end116_crit_edge, %if.then103.do.end116_crit_edge, %if.end74.do.end116_crit_edge
  %tobool106.not199.ph = phi i32 [ %call89206, %if.end74.do.end116_crit_edge ], [ %call100, %for.end.do.end116_crit_edge ], [ -110, %lor.rhs.do.end116_crit_edge ], [ %call89, %if.then103.do.end116_crit_edge ]
  %34 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %34)
  %35 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %35, ptr noundef nonnull @.str.20, i32 noundef %tobool106.not199.ph) #8
  br label %cleanup

if.end118:                                        ; preds = %lor.rhs
  %36 = ptrtoint ptr %regmap_slv.i to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %regmap_slv.i, align 4
  %call.i190 = call i32 @regmap_update_bits_base(ptr noundef %37, i32 noundef 100, i32 noundef 8388608, i32 noundef 8388608, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i190)
  %tobool137.not = icmp eq i32 %call.i190, 0
  br i1 %tobool137.not, label %if.end143, label %do.end141

do.end141:                                        ; preds = %if.end118
  call void @__sanitizer_cov_trace_pc() #7
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %39, ptr noundef nonnull @.str.23, i32 noundef %call.i190) #8
  br label %cleanup

if.end143:                                        ; preds = %if.end118
  call void @usleep_range_state(i32 noundef 20, i32 noundef 40, i32 noundef 2) #5
  %40 = ptrtoint ptr %regmap_slv.i to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %regmap_slv.i, align 4
  %call.i.i192 = call i32 @regmap_update_bits_base(ptr noundef %41, i32 noundef 16, i32 noundef -2147483648, i32 noundef -2147483648, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i.i192)
  %tobool.not.i193 = icmp eq i32 %call.i.i192, 0
  br i1 %tobool.not.i193, label %if.end143.cleanup_crit_edge, label %do.end15.i194

if.end143.cleanup_crit_edge:                      ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

do.end15.i194:                                    ; preds = %if.end143
  call void @__sanitizer_cov_trace_pc() #7
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %43, ptr noundef nonnull @.str.40, i32 noundef %call.i.i192) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end15.i194, %if.end143.cleanup_crit_edge, %do.end141, %do.end116, %do.end72, %do.end47, %do.end23, %keembay_usb_phys_on.exit, %keembay_usb_core_off.exit
  %retval.0 = phi i32 [ %call.i, %do.end23 ], [ %call.i188, %do.end47 ], [ %call.i189, %do.end72 ], [ %tobool106.not199.ph, %do.end116 ], [ %call.i190, %do.end141 ], [ %call.i.i, %keembay_usb_core_off.exit ], [ %call.i.i185, %keembay_usb_phys_on.exit ], [ 0, %if.end143.cleanup_crit_edge ], [ %call.i.i192, %do.end15.i194 ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %val) #5
  ret i32 %retval.0
}

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 45)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { argmemonly nocallback nofree nosync nounwind willreturn }
attributes #4 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !18, !19, !21, !23, !24, !26, !28, !30, !32, !34, !35, !36, !37, !38, !39, !40, !42, !43, !44, !46, !47, !48, !50, !51, !52, !54, !55, !56, !58, !59, !60, !61, !63, !64, !65, !66, !68, !69, !70, !71, !73, !74, !75, !77, !78, !79, !81, !82, !83, !85, !86, !87, !88}
!llvm.module.flags = !{!90, !91, !92, !93, !94, !95, !96, !97}
!llvm.ident = !{!98}

!0 = !{ptr @__initcall__kmod_phy_intel_keembay_usb__334_297_keembay_usb_phy_driver_init6, !1, !"__initcall__kmod_phy_intel_keembay_usb__334_297_keembay_usb_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 297, i32 1}
!2 = !{ptr @__exitcall_keembay_usb_phy_driver_exit, !1, !"__exitcall_keembay_usb_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author335, !4, !"__UNIQUE_ID_author335", i1 false, i1 false}
!4 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 299, i32 1}
!5 = !{ptr @__UNIQUE_ID_description336, !6, !"__UNIQUE_ID_description336", i1 false, i1 false}
!6 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 300, i32 1}
!7 = !{ptr @__UNIQUE_ID_file337, !8, !"__UNIQUE_ID_file337", i1 false, i1 false}
!8 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 301, i32 1}
!9 = !{ptr @__UNIQUE_ID_license338, !8, !"__UNIQUE_ID_license338", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 293, i32 11}
!12 = !{ptr @keembay_usb_phy_driver, !13, !"keembay_usb_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 290, i32 31}
!14 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!15 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 246, i32 53}
!16 = !{ptr @keembay_usb_phy_probe._key, !17, !"_key", i1 false, i1 false}
!17 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 250, i32 21}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !20, !"<string literal>", i1 false, i1 false}
!20 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 255, i32 53}
!21 = !{ptr @keembay_usb_phy_probe._key.4, !22, !"_key", i1 false, i1 false}
!22 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 259, i32 21}
!23 = !{ptr @.str.5, !22, !"<string literal>", i1 false, i1 false}
!24 = !{ptr @.str.6, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 267, i32 10}
!26 = !{ptr @.str.7, !27, !"<string literal>", i1 false, i1 false}
!27 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 273, i32 10}
!28 = !{ptr @keembay_regmap_config, !29, !"keembay_regmap_config", i1 false, i1 false}
!29 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 65, i32 35}
!30 = !{ptr @ops, !31, !"ops", i1 false, i1 false}
!31 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 228, i32 29}
!32 = !{ptr @.str.8, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 175, i32 3}
!34 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!35 = !{ptr @.str.10, !33, !"<string literal>", i1 false, i1 false}
!36 = !{ptr @.str.11, !33, !"<string literal>", i1 false, i1 false}
!37 = !{ptr @.str.12, !33, !"<string literal>", i1 false, i1 false}
!38 = !{ptr @keembay_usb_phy_init._entry, !33, !"_entry", i1 false, i1 false}
!39 = !{ptr @keembay_usb_phy_init._entry_ptr, !33, !"_entry_ptr", i1 false, i1 false}
!40 = !{ptr @.str.14, !41, !"<string literal>", i1 false, i1 false}
!41 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 190, i32 3}
!42 = !{ptr @keembay_usb_phy_init._entry.13, !41, !"_entry", i1 false, i1 false}
!43 = !{ptr @keembay_usb_phy_init._entry_ptr.15, !41, !"_entry_ptr", i1 false, i1 false}
!44 = !{ptr @.str.17, !45, !"<string literal>", i1 false, i1 false}
!45 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 199, i32 3}
!46 = !{ptr @keembay_usb_phy_init._entry.16, !45, !"_entry", i1 false, i1 false}
!47 = !{ptr @keembay_usb_phy_init._entry_ptr.18, !45, !"_entry_ptr", i1 false, i1 false}
!48 = !{ptr @.str.20, !49, !"<string literal>", i1 false, i1 false}
!49 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 207, i32 3}
!50 = !{ptr @keembay_usb_phy_init._entry.19, !49, !"_entry", i1 false, i1 false}
!51 = !{ptr @keembay_usb_phy_init._entry_ptr.21, !49, !"_entry_ptr", i1 false, i1 false}
!52 = !{ptr @.str.23, !53, !"<string literal>", i1 false, i1 false}
!53 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 215, i32 3}
!54 = !{ptr @keembay_usb_phy_init._entry.22, !53, !"_entry", i1 false, i1 false}
!55 = !{ptr @keembay_usb_phy_init._entry_ptr.24, !53, !"_entry_ptr", i1 false, i1 false}
!56 = !{ptr @.str.25, !57, !"<string literal>", i1 false, i1 false}
!57 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 119, i32 3}
!58 = !{ptr @.str.26, !57, !"<string literal>", i1 false, i1 false}
!59 = !{ptr @keembay_usb_core_off._entry, !57, !"_entry", i1 false, i1 false}
!60 = !{ptr @keembay_usb_core_off._entry_ptr, !57, !"_entry_ptr", i1 false, i1 false}
!61 = !{ptr @.str.27, !62, !"<string literal>", i1 false, i1 false}
!62 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 145, i32 3}
!63 = !{ptr @.str.28, !62, !"<string literal>", i1 false, i1 false}
!64 = !{ptr @keembay_usb_phys_on._entry, !62, !"_entry", i1 false, i1 false}
!65 = !{ptr @keembay_usb_phys_on._entry_ptr, !62, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.29, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 79, i32 3}
!68 = !{ptr @.str.30, !67, !"<string literal>", i1 false, i1 false}
!69 = !{ptr @keembay_usb_clocks_on._entry, !67, !"_entry", i1 false, i1 false}
!70 = !{ptr @keembay_usb_clocks_on._entry_ptr, !67, !"_entry_ptr", i1 false, i1 false}
!71 = !{ptr @.str.32, !72, !"<string literal>", i1 false, i1 false}
!72 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 86, i32 3}
!73 = !{ptr @keembay_usb_clocks_on._entry.31, !72, !"_entry", i1 false, i1 false}
!74 = !{ptr @keembay_usb_clocks_on._entry_ptr.33, !72, !"_entry_ptr", i1 false, i1 false}
!75 = !{ptr @.str.35, !76, !"<string literal>", i1 false, i1 false}
!76 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 95, i32 3}
!77 = !{ptr @keembay_usb_clocks_on._entry.34, !76, !"_entry", i1 false, i1 false}
!78 = !{ptr @keembay_usb_clocks_on._entry_ptr.36, !76, !"_entry_ptr", i1 false, i1 false}
!79 = !{ptr @.str.38, !80, !"<string literal>", i1 false, i1 false}
!80 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 106, i32 3}
!81 = !{ptr @keembay_usb_clocks_on._entry.37, !80, !"_entry", i1 false, i1 false}
!82 = !{ptr @keembay_usb_clocks_on._entry_ptr.39, !80, !"_entry_ptr", i1 false, i1 false}
!83 = !{ptr @.str.40, !84, !"<string literal>", i1 false, i1 false}
!84 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 132, i32 3}
!85 = !{ptr @.str.41, !84, !"<string literal>", i1 false, i1 false}
!86 = !{ptr @keembay_usb_core_on._entry, !84, !"_entry", i1 false, i1 false}
!87 = !{ptr @keembay_usb_core_on._entry_ptr, !84, !"_entry_ptr", i1 false, i1 false}
!88 = !{ptr @keembay_usb_phy_dt_ids, !89, !"keembay_usb_phy_dt_ids", i1 false, i1 false}
!89 = !{!"../drivers/phy/intel/phy-intel-keembay-usb.c", i32 284, i32 34}
!90 = !{i32 1, !"wchar_size", i32 2}
!91 = !{i32 1, !"min_enum_size", i32 4}
!92 = !{i32 8, !"branch-target-enforcement", i32 0}
!93 = !{i32 8, !"sign-return-address", i32 0}
!94 = !{i32 8, !"sign-return-address-all", i32 0}
!95 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!96 = !{i32 7, !"uwtable", i32 1}
!97 = !{i32 7, !"frame-pointer", i32 2}
!98 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!99 = !{!"auto-init"}
