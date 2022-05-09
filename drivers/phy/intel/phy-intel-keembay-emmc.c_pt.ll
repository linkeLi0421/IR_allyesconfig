; ModuleID = '/llk/IR_all_yes/drivers/phy/intel/phy-intel-keembay-emmc.c_pt.bc'
source_filename = "../drivers/phy/intel/phy-intel-keembay-emmc.c"
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
%struct.keembay_emmc_phy = type { ptr, ptr }

@__initcall__kmod_phy_intel_keembay_emmc__329_304_keembay_emmc_phy_driver_init6 = internal global ptr @keembay_emmc_phy_driver_init, section ".initcall6.init", align 4
@keembay_emmc_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @keembay_emmc_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @keembay_emmc_phy_dt_ids, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_keembay_emmc_phy_driver_exit = internal global ptr @keembay_emmc_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author330 = internal constant [88 x i8] c"phy_intel_keembay_emmc.author=Wan Ahmad Zainie <wan.ahmad.zainie.wan.mohamad@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description331 = internal constant [66 x i8] c"phy_intel_keembay_emmc.description=Intel Keem Bay eMMC PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file332 = internal constant [69 x i8] c"phy_intel_keembay_emmc.file=drivers/phy/intel/phy-intel-keembay-emmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license333 = internal constant [38 x i8] c"phy_intel_keembay_emmc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [17 x i8], [47 x i8] } { [17 x i8] c"keembay-emmc-phy\00", [47 x i8] zeroinitializer }, align 32
@keembay_emmc_phy_dt_ids = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,keembay-emmc-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr null }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@keembay_emmc_phy_probe._key = internal global { %struct.lock_class_key, [24 x i8] } zeroinitializer, align 32
@keembay_regmap_config = internal constant { %struct.regmap_config, [52 x i8] } { %struct.regmap_config { ptr null, i32 32, i32 4, i32 0, i32 32, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i8 0, i32 0, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, i32 0, i32 0, ptr null, i32 0, i32 0, i32 0, i8 0, i8 0, i8 0, i8 0, i8 0, i32 0, i32 0, ptr null, i32 0, i8 0, i8 0, i32 0, i32 0, i8 0 }, [52 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [58 x i8], [38 x i8] } { [58 x i8] c"phy_intel_keembay_emmc:276:(&keembay_regmap_config)->lock\00", [38 x i8] zeroinitializer }, align 32
@ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @keembay_emmc_phy_init, ptr @keembay_emmc_phy_exit, ptr @keembay_emmc_phy_power_on, ptr @keembay_emmc_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emmcclk\00", [24 x i8] zeroinitializer }, align 32
@keembay_emmc_phy_power_on._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.4, ptr @.str.5, ptr @.str.6, i32 221, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [34 x i8], [62 x i8] } { [34 x i8] c"ERROR: delay chain txclk set: %d\0A\00", [62 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"keembay_emmc_phy_power_on\00", [38 x i8] zeroinitializer }, align 32
@.str.6 = internal constant { [43 x i8], [53 x i8] } { [43 x i8] c"drivers/phy/intel/phy-intel-keembay-emmc.c\00", [53 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.8 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@keembay_emmc_phy_power_on._entry_ptr = internal global ptr @keembay_emmc_phy_power_on._entry, section ".printk_index", align 4
@keembay_emmc_phy_power_on._entry.9 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.5, ptr @.str.6, i32 229, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"ERROR: output tap delay set: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@keembay_emmc_phy_power_on._entry_ptr.11 = internal global ptr @keembay_emmc_phy_power_on._entry.9, section ".printk_index", align 4
@keembay_emmc_phy_power_on._entry.12 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.13, ptr @.str.5, ptr @.str.6, i32 237, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.13 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"ERROR: output tap delay select: %d\0A\00", [60 x i8] zeroinitializer }, align 32
@keembay_emmc_phy_power_on._entry_ptr.14 = internal global ptr @keembay_emmc_phy_power_on._entry.12, section ".printk_index", align 4
@keembay_emmc_phy_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 69, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.15 = internal constant { [33 x i8], [63 x i8] } { [33 x i8] c"CALIO power down bar failed: %d\0A\00", [63 x i8] zeroinitializer }, align 32
@.str.16 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"keembay_emmc_phy_power\00", [41 x i8] zeroinitializer }, align 32
@keembay_emmc_phy_power._entry_ptr = internal global ptr @keembay_emmc_phy_power._entry, section ".printk_index", align 4
@keembay_emmc_phy_power._entry.17 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.18, ptr @.str.16, ptr @.str.6, i32 76, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.18 = internal constant { [29 x i8], [35 x i8] } { [29 x i8] c"turn off the dll failed: %d\0A\00", [35 x i8] zeroinitializer }, align 32
@keembay_emmc_phy_power._entry_ptr.19 = internal global ptr @keembay_emmc_phy_power._entry.17, section ".printk_index", align 4
@keembay_emmc_phy_power._entry.20 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.21, ptr @.str.16, ptr @.str.6, i32 100, ptr @.str.22, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.21 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"Unsupported rate: %d MHz\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.22 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@keembay_emmc_phy_power._entry_ptr.23 = internal global ptr @keembay_emmc_phy_power._entry.20, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@keembay_emmc_phy_power._entry.24 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.15, ptr @.str.16, ptr @.str.6, i32 112, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@keembay_emmc_phy_power._entry_ptr.25 = internal global ptr @keembay_emmc_phy_power._entry.24, section ".printk_index", align 4
@keembay_emmc_phy_power._entry.26 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.27, ptr @.str.16, ptr @.str.6, i32 127, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.27 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"caldone failed, ret=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@keembay_emmc_phy_power._entry_ptr.28 = internal global ptr @keembay_emmc_phy_power._entry.26, section ".printk_index", align 4
@keembay_emmc_phy_power._entry.29 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.30, ptr @.str.16, ptr @.str.6, i32 135, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.30 = internal constant { [36 x i8], [60 x i8] } { [36 x i8] c"set the frequency of dll failed:%d\0A\00", [60 x i8] zeroinitializer }, align 32
@keembay_emmc_phy_power._entry_ptr.31 = internal global ptr @keembay_emmc_phy_power._entry.29, section ".printk_index", align 4
@keembay_emmc_phy_power._entry.32 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.33, ptr @.str.16, ptr @.str.6, i32 143, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.33 = internal constant { [28 x i8], [36 x i8] } { [28 x i8] c"turn on the dll failed: %d\0A\00", [36 x i8] zeroinitializer }, align 32
@keembay_emmc_phy_power._entry_ptr.34 = internal global ptr @keembay_emmc_phy_power._entry.32, section ".printk_index", align 4
@keembay_emmc_phy_power._entry.35 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.36, ptr @.str.16, ptr @.str.6, i32 177, ptr @.str.7, ptr @.str.8 }, [40 x i8] zeroinitializer }, align 32
@.str.36 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dllrdy failed, ret=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@keembay_emmc_phy_power._entry_ptr.37 = internal global ptr @keembay_emmc_phy_power._entry.35, section ".printk_index", align 4
@___asan_gen_.38 = private unnamed_addr constant [24 x i8] c"keembay_emmc_phy_driver\00", align 1
@___asan_gen_.40 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 297, i32 31 }
@___asan_gen_.43 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 300, i32 11 }
@___asan_gen_.44 = private unnamed_addr constant [24 x i8] c"keembay_emmc_phy_dt_ids\00", align 1
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 291, i32 34 }
@___asan_gen_.47 = private unnamed_addr constant [5 x i8] c"_key\00", align 1
@___asan_gen_.50 = private unnamed_addr constant [22 x i8] c"keembay_regmap_config\00", align 1
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 47, i32 35 }
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 276, i32 17 }
@___asan_gen_.56 = private unnamed_addr constant [4 x i8] c"ops\00", align 1
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 251, i32 29 }
@___asan_gen_.61 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 283, i32 10 }
@___asan_gen_.64 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 198, i32 46 }
@___asan_gen_.82 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 221, i32 3 }
@___asan_gen_.88 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 229, i32 3 }
@___asan_gen_.94 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 237, i32 3 }
@___asan_gen_.103 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 69, i32 3 }
@___asan_gen_.109 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 76, i32 3 }
@___asan_gen_.118 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 100, i32 3 }
@___asan_gen_.121 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 112, i32 3 }
@___asan_gen_.127 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 127, i32 3 }
@___asan_gen_.133 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 135, i32 3 }
@___asan_gen_.139 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 143, i32 3 }
@___asan_gen_.140 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.143 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.144 = private constant [46 x i8] c"../drivers/phy/intel/phy-intel-keembay-emmc.c\00", align 1
@___asan_gen_.145 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.144, i32 177, i32 3 }
@llvm.compiler.used = appending global [54 x ptr] [ptr @__UNIQUE_ID_author330, ptr @__UNIQUE_ID_description331, ptr @__UNIQUE_ID_file332, ptr @__UNIQUE_ID_license333, ptr @__exitcall_keembay_emmc_phy_driver_exit, ptr @__initcall__kmod_phy_intel_keembay_emmc__329_304_keembay_emmc_phy_driver_init6, ptr @keembay_emmc_phy_driver_exit, ptr @keembay_emmc_phy_power._entry, ptr @keembay_emmc_phy_power._entry.17, ptr @keembay_emmc_phy_power._entry.20, ptr @keembay_emmc_phy_power._entry.24, ptr @keembay_emmc_phy_power._entry.26, ptr @keembay_emmc_phy_power._entry.29, ptr @keembay_emmc_phy_power._entry.32, ptr @keembay_emmc_phy_power._entry.35, ptr @keembay_emmc_phy_power._entry_ptr, ptr @keembay_emmc_phy_power._entry_ptr.19, ptr @keembay_emmc_phy_power._entry_ptr.23, ptr @keembay_emmc_phy_power._entry_ptr.25, ptr @keembay_emmc_phy_power._entry_ptr.28, ptr @keembay_emmc_phy_power._entry_ptr.31, ptr @keembay_emmc_phy_power._entry_ptr.34, ptr @keembay_emmc_phy_power._entry_ptr.37, ptr @keembay_emmc_phy_power_on._entry, ptr @keembay_emmc_phy_power_on._entry.12, ptr @keembay_emmc_phy_power_on._entry.9, ptr @keembay_emmc_phy_power_on._entry_ptr, ptr @keembay_emmc_phy_power_on._entry_ptr.11, ptr @keembay_emmc_phy_power_on._entry_ptr.14, ptr @keembay_emmc_phy_driver, ptr @.str, ptr @keembay_emmc_phy_dt_ids, ptr @keembay_emmc_phy_probe._key, ptr @keembay_regmap_config, ptr @.str.1, ptr @ops, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.6, ptr @.str.7, ptr @.str.8, ptr @.str.10, ptr @.str.13, ptr @.str.15, ptr @.str.16, ptr @.str.18, ptr @.str.21, ptr @.str.22, ptr @.str.27, ptr @.str.30, ptr @.str.33, ptr @.str.36], section "llvm.metadata"
@0 = internal global [36 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_emmc_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.38 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.40 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 17, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.43 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_emmc_phy_dt_ids to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.44 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_emmc_phy_probe._key to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.47 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_regmap_config to i32), i32 172, i32 224, i32 ptrtoint (ptr @___asan_gen_.50 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 58, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.56 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.61 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.64 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_emmc_phy_power_on._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 34, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.6 to i32), i32 43, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.8 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_emmc_phy_power_on._entry.9 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.88 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_emmc_phy_power_on._entry.12 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.13 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.94 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_emmc_phy_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.15 to i32), i32 33, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.16 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.103 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_emmc_phy_power._entry.17 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.18 to i32), i32 29, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.109 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_emmc_phy_power._entry.20 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.21 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.22 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.118 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_emmc_phy_power._entry.24 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.121 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_emmc_phy_power._entry.26 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.27 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.127 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_emmc_phy_power._entry.29 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.30 to i32), i32 36, i32 96, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.133 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_emmc_phy_power._entry.32 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.33 to i32), i32 28, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.139 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @keembay_emmc_phy_power._entry.35 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.140 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.36 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.143 to i32), i32 ptrtoint (ptr @___asan_gen_.144 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.145 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_emmc_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @keembay_emmc_phy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @keembay_emmc_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @keembay_emmc_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_emmc_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 8, i32 noundef 3520) #5
  %tobool.not = icmp eq ptr %call.i, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call2 = tail call ptr @devm_platform_ioremap_resource(ptr noundef %pdev, i32 noundef 0) #5
  %cmp.i = icmp ugt ptr %call2, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then4, label %if.end6

if.then4:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  %2 = ptrtoint ptr %call2 to i32
  br label %cleanup

if.end6:                                          ; preds = %if.end
  %call7 = tail call ptr @__devm_regmap_init_mmio_clk(ptr noundef %dev1, ptr noundef null, ptr noundef %call2, ptr noundef nonnull @keembay_regmap_config, ptr noundef nonnull @keembay_emmc_phy_probe._key, ptr noundef nonnull @.str.1) #5
  %3 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %3)
  store ptr %call7, ptr %call.i, align 4
  %cmp.i41 = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i41, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end6
  call void @__sanitizer_cov_trace_pc() #7
  %4 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end6
  %call14 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %1, ptr noundef nonnull @ops) #5
  %cmp.i42 = icmp ugt ptr %call14, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i42, label %if.then16, label %if.end19

if.then16:                                        ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %5 = ptrtoint ptr %call14 to i32
  %call18 = tail call i32 (ptr, i32, ptr, ...) @dev_err_probe(ptr noundef %dev1, i32 noundef %5, ptr noundef nonnull @.str.2) #5
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call14, i32 0, i32 8
  %6 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %6)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call20 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i.i = icmp ugt ptr %call20, inttoptr (i32 -4096 to ptr)
  %7 = ptrtoint ptr %call20 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %7, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end19, %if.then16, %if.then10, %if.then4, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %2, %if.then4 ], [ %4, %if.then10 ], [ %call18, %if.then16 ], [ %spec.select.i, %if.end19 ], [ -12, %entry.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.start.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_platform_ioremap_resource(ptr noundef, i32 noundef) local_unnamed_addr #1

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

; Function Attrs: argmemonly nocallback nofree nosync nounwind willreturn
declare void @llvm.lifetime.end.p0(i64 immarg, ptr nocapture) #3

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_emmc_phy_init(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call.i = tail call ptr @clk_get(ptr noundef %phy, ptr noundef nonnull @.str.3) #5
  %cmp.i = icmp eq ptr %call.i, inttoptr (i32 -2 to ptr)
  %.call.i = select i1 %cmp.i, ptr null, ptr %call.i
  %emmcclk = getelementptr inbounds %struct.keembay_emmc_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %emmcclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %.call.i, ptr %emmcclk, align 4
  %cmp.i.i = icmp ugt ptr %.call.i, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %.call.i to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %3, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_emmc_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %emmcclk = getelementptr inbounds %struct.keembay_emmc_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %emmcclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emmcclk, align 4
  tail call void @clk_put(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_emmc_phy_power_on(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %2 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %3, i32 noundef 36, i32 noundef 536870912, i32 noundef 536870912, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end16

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.4, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i83 = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 36, i32 noundef 134217728, i32 noundef 134217728, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i83)
  %tobool35.not = icmp eq i32 %call.i83, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.10, i32 noundef %call.i83) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i84 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 36, i32 noundef 125829120, i32 noundef 16777216, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i84)
  %tobool60.not = icmp eq i32 %call.i84, 0
  br i1 %tobool60.not, label %if.end66, label %do.end64

do.end64:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.13, i32 noundef %call.i84) #8
  br label %cleanup

if.end66:                                         ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  %call67 = tail call fastcc i32 @keembay_emmc_phy_power(ptr noundef %phy, i1 noundef zeroext true)
  br label %cleanup

cleanup:                                          ; preds = %if.end66, %do.end64, %do.end39, %do.end16
  %retval.0 = phi i32 [ %call.i, %do.end16 ], [ %call.i83, %do.end39 ], [ %call.i84, %do.end64 ], [ %call67, %if.end66 ]
  ret i32 %retval.0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @keembay_emmc_phy_power_off(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call fastcc i32 @keembay_emmc_phy_power(ptr noundef %phy, i1 noundef zeroext false)
  ret i32 %call
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal fastcc i32 @keembay_emmc_phy_power(ptr noundef %phy, i1 noundef zeroext %on_off) unnamed_addr #2 align 64 {
entry:
  %caldone = alloca i32, align 4
  %dllrdy = alloca i32, align 4
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %caldone) #5
  %2 = ptrtoint ptr %caldone to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 -1, ptr %caldone, align 4, !annotation !85
  call void @llvm.lifetime.start.p0(i64 4, ptr nonnull %dllrdy) #5
  %3 = ptrtoint ptr %dllrdy to i32
  call void @__asan_store4_noabort(i32 %3)
  store i32 -1, ptr %dllrdy, align 4, !annotation !85
  %4 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %1, align 4
  %call.i = tail call i32 @regmap_update_bits_base(ptr noundef %5, i32 noundef 36, i32 noundef 1, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i)
  %tobool.not = icmp eq i32 %call.i, 0
  br i1 %tobool.not, label %if.end, label %do.end16

do.end16:                                         ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.15, i32 noundef %call.i) #8
  br label %cleanup

if.end:                                           ; preds = %entry
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  %call.i353 = tail call i32 @regmap_update_bits_base(ptr noundef %7, i32 noundef 36, i32 noundef 1024, i32 noundef 0, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i353)
  %tobool35.not = icmp eq i32 %call.i353, 0
  br i1 %tobool35.not, label %if.end41, label %do.end39

do.end39:                                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.18, i32 noundef %call.i353) #8
  br label %cleanup

if.end41:                                         ; preds = %if.end
  br i1 %on_off, label %if.end44, label %if.end41.cleanup_crit_edge

if.end41.cleanup_crit_edge:                       ; preds = %if.end41
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end44:                                         ; preds = %if.end41
  %emmcclk = getelementptr inbounds %struct.keembay_emmc_phy, ptr %1, i32 0, i32 1
  %8 = ptrtoint ptr %emmcclk to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %emmcclk, align 4
  %call45 = tail call i32 @clk_get_rate(ptr noundef %9) #5
  %add = add i32 %call45, 500000
  %div47 = udiv i32 %add, 1000000
  %10 = add i32 %call45, -169500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 31000000, i32 %10)
  %11 = icmp ult i32 %10, 31000000
  br i1 %11, label %if.end44.if.end74_crit_edge, label %if.else

if.end44.if.end74_crit_edge:                      ; preds = %if.end44
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end74

if.else:                                          ; preds = %if.end44
  %12 = add i32 %call45, -139500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 31000000, i32 %12)
  %13 = icmp ult i32 %12, 31000000
  br i1 %13, label %if.else.if.end81_crit_edge, label %if.else54

if.else.if.end81_crit_edge:                       ; preds = %if.else
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.else54:                                        ; preds = %if.else
  %14 = add i32 %call45, -109500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 31000000, i32 %14)
  %15 = icmp ult i32 %14, 31000000
  br i1 %15, label %if.else54.if.end81_crit_edge, label %if.else59

if.else54.if.end81_crit_edge:                     ; preds = %if.else54
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.else59:                                        ; preds = %if.else54
  %16 = add i32 %call45, -79500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 31000000, i32 %16)
  %17 = icmp ult i32 %16, 31000000
  br i1 %17, label %if.else59.if.end81_crit_edge, label %if.else64

if.else59.if.end81_crit_edge:                     ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

if.else64:                                        ; preds = %if.else59
  call void @__sanitizer_cov_trace_pc() #7
  %18 = add i32 %call45, -49500000
  call void @__sanitizer_cov_trace_const_cmp4(i32 31000000, i32 %18)
  %19 = icmp ult i32 %18, 31000000
  %spec.select352 = select i1 %19, i32 4, i32 0
  br label %if.end74

if.end74:                                         ; preds = %if.else64, %if.end44.if.end74_crit_edge
  %freqsel.0 = phi i32 [ 0, %if.end44.if.end74_crit_edge ], [ %spec.select352, %if.else64 ]
  call void @__sanitizer_cov_trace_const_cmp4(i32 175999999, i32 %add)
  %cmp75 = icmp ugt i32 %add, 175999999
  br i1 %cmp75, label %do.end79, label %if.end74.if.end81_crit_edge

if.end74.if.end81_crit_edge:                      ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81

do.end79:                                         ; preds = %if.end74
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phy, ptr noundef nonnull @.str.21, i32 noundef %div47) #8
  br label %if.end81

if.end81:                                         ; preds = %do.end79, %if.end74.if.end81_crit_edge, %if.else59.if.end81_crit_edge, %if.else54.if.end81_crit_edge, %if.else.if.end81_crit_edge
  %freqsel.0364 = phi i32 [ %freqsel.0, %do.end79 ], [ %freqsel.0, %if.end74.if.end81_crit_edge ], [ 3, %if.else59.if.end81_crit_edge ], [ 2, %if.else54.if.end81_crit_edge ], [ 1, %if.else.if.end81_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %20 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %20(i32 noundef 1073740) #5
  %21 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %21)
  %22 = load ptr, ptr %1, align 4
  %call.i354 = tail call i32 @regmap_update_bits_base(ptr noundef %22, i32 noundef 36, i32 noundef 1, i32 noundef 1, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i354)
  %tobool100.not = icmp eq i32 %call.i354, 0
  br i1 %tobool100.not, label %if.end106, label %do.end104

do.end104:                                        ; preds = %if.end81
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.15, i32 noundef %call.i354) #8
  br label %cleanup

if.end106:                                        ; preds = %if.end81
  %call107 = tail call i64 @ktime_get() #5
  %add.i = add i64 %call107, 50000
  br label %for.cond

for.cond:                                         ; preds = %land.lhs.true128.for.cond_crit_edge, %if.end106
  %23 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %23)
  %24 = load ptr, ptr %1, align 4
  %call122 = call i32 @regmap_read(ptr noundef %24, i32 noundef 64, ptr noundef nonnull %caldone) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call122)
  %tobool123.not = icmp eq i32 %call122, 0
  br i1 %tobool123.not, label %lor.lhs.false, label %for.cond.do.end151_crit_edge

for.cond.do.end151_crit_edge:                     ; preds = %for.cond
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end151

lor.lhs.false:                                    ; preds = %for.cond
  %25 = ptrtoint ptr %caldone to i32
  call void @__asan_load4_noabort(i32 %25)
  %26 = load i32, ptr %caldone, align 4
  %and = and i32 %26, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and)
  %tobool124.not = icmp eq i32 %and, 0
  br i1 %tobool124.not, label %land.lhs.true128, label %lor.lhs.false.lor.rhs_crit_edge

lor.lhs.false.lor.rhs_crit_edge:                  ; preds = %lor.lhs.false
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

land.lhs.true128:                                 ; preds = %lor.lhs.false
  %call129 = call i64 @ktime_get() #5
  %cmp3.i = icmp sgt i64 %call129, %add.i
  br i1 %cmp3.i, label %for.end, label %land.lhs.true128.for.cond_crit_edge

land.lhs.true128.for.cond_crit_edge:              ; preds = %land.lhs.true128
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond

for.end:                                          ; preds = %land.lhs.true128
  %27 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %27)
  %28 = load ptr, ptr %1, align 4
  %call134 = call i32 @regmap_read(ptr noundef %28, i32 noundef 64, ptr noundef nonnull %caldone) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call134)
  %tobool141.not = icmp eq i32 %call134, 0
  br i1 %tobool141.not, label %for.end.lor.rhs_crit_edge, label %for.end.do.end151_crit_edge

for.end.do.end151_crit_edge:                      ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end151

for.end.lor.rhs_crit_edge:                        ; preds = %for.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs

lor.rhs:                                          ; preds = %for.end.lor.rhs_crit_edge, %lor.lhs.false.lor.rhs_crit_edge
  %29 = ptrtoint ptr %caldone to i32
  call void @__asan_load4_noabort(i32 %29)
  %30 = load i32, ptr %caldone, align 4
  %and142 = and i32 %30, 64
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and142)
  %tobool143.not = icmp eq i32 %and142, 0
  br i1 %tobool143.not, label %lor.rhs.do.end151_crit_edge, label %if.end153

lor.rhs.do.end151_crit_edge:                      ; preds = %lor.rhs
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end151

do.end151:                                        ; preds = %lor.rhs.do.end151_crit_edge, %for.end.do.end151_crit_edge, %for.cond.do.end151_crit_edge
  %tobool141.not369.ph = phi i32 [ %call134, %for.end.do.end151_crit_edge ], [ -110, %lor.rhs.do.end151_crit_edge ], [ %call122, %for.cond.do.end151_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.27, i32 noundef %tobool141.not369.ph) #8
  br label %cleanup

if.end153:                                        ; preds = %lor.rhs
  %31 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %31)
  %32 = load ptr, ptr %1, align 4
  %shl = shl nuw nsw i32 %freqsel.0364, 10
  %call.i355 = call i32 @regmap_update_bits_base(ptr noundef %32, i32 noundef 44, i32 noundef 7168, i32 noundef %shl, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i355)
  %tobool179.not = icmp eq i32 %call.i355, 0
  br i1 %tobool179.not, label %if.end185, label %do.end183

do.end183:                                        ; preds = %if.end153
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.30, i32 noundef %call.i355) #8
  br label %cleanup

if.end185:                                        ; preds = %if.end153
  %33 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %33)
  %34 = load ptr, ptr %1, align 4
  %call.i356 = call i32 @regmap_update_bits_base(ptr noundef %34, i32 noundef 36, i32 noundef 1024, i32 noundef 1024, ptr noundef null, i1 noundef zeroext false, i1 noundef zeroext false) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call.i356)
  %tobool204.not = icmp eq i32 %call.i356, 0
  br i1 %tobool204.not, label %if.end210, label %do.end208

do.end208:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_pc() #7
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.33, i32 noundef %call.i356) #8
  br label %cleanup

if.end210:                                        ; preds = %if.end185
  call void @__sanitizer_cov_trace_const_cmp4(i32 1000000, i32 %add)
  %35 = icmp ult i32 %add, 1000000
  br i1 %35, label %if.end210.cleanup_crit_edge, label %if.end213

if.end210.cleanup_crit_edge:                      ; preds = %if.end210
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end213:                                        ; preds = %if.end210
  %call219 = call i64 @ktime_get() #5
  %add.i357 = add i64 %call219, 50000000
  br label %for.cond233

for.cond233:                                      ; preds = %land.lhs.true243.for.cond233_crit_edge, %if.end213
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %call235 = call i32 @regmap_read(ptr noundef %37, i32 noundef 64, ptr noundef nonnull %dllrdy) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call235)
  %tobool236.not = icmp eq i32 %call235, 0
  br i1 %tobool236.not, label %lor.lhs.false237, label %for.cond233.do.end274_crit_edge

for.cond233.do.end274_crit_edge:                  ; preds = %for.cond233
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end274

lor.lhs.false237:                                 ; preds = %for.cond233
  %38 = ptrtoint ptr %dllrdy to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load i32, ptr %dllrdy, align 4
  %and238 = and i32 %39, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and238)
  %tobool239.not = icmp eq i32 %and238, 0
  br i1 %tobool239.not, label %land.lhs.true243, label %lor.lhs.false237.lor.rhs259_crit_edge

lor.lhs.false237.lor.rhs259_crit_edge:            ; preds = %lor.lhs.false237
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs259

land.lhs.true243:                                 ; preds = %lor.lhs.false237
  %call244 = call i64 @ktime_get() #5
  %cmp3.i359 = icmp sgt i64 %call244, %add.i357
  br i1 %cmp3.i359, label %for.end256, label %land.lhs.true243.for.cond233_crit_edge

land.lhs.true243.for.cond233_crit_edge:           ; preds = %land.lhs.true243
  call void @__sanitizer_cov_trace_pc() #7
  br label %for.cond233

for.end256:                                       ; preds = %land.lhs.true243
  %40 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %40)
  %41 = load ptr, ptr %1, align 4
  %call249 = call i32 @regmap_read(ptr noundef %41, i32 noundef 64, ptr noundef nonnull %dllrdy) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %call249)
  %tobool258.not = icmp eq i32 %call249, 0
  br i1 %tobool258.not, label %for.end256.lor.rhs259_crit_edge, label %for.end256.do.end274_crit_edge

for.end256.do.end274_crit_edge:                   ; preds = %for.end256
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end274

for.end256.lor.rhs259_crit_edge:                  ; preds = %for.end256
  call void @__sanitizer_cov_trace_pc() #7
  br label %lor.rhs259

lor.rhs259:                                       ; preds = %for.end256.lor.rhs259_crit_edge, %lor.lhs.false237.lor.rhs259_crit_edge
  %42 = ptrtoint ptr %dllrdy to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load i32, ptr %dllrdy, align 4
  %and260 = and i32 %43, 32
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %and260)
  %tobool261.not = icmp eq i32 %and260, 0
  br i1 %tobool261.not, label %lor.rhs259.do.end274_crit_edge, label %lor.rhs259.cleanup_crit_edge

lor.rhs259.cleanup_crit_edge:                     ; preds = %lor.rhs259
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

lor.rhs259.do.end274_crit_edge:                   ; preds = %lor.rhs259
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end274

do.end274:                                        ; preds = %lor.rhs259.do.end274_crit_edge, %for.end256.do.end274_crit_edge, %for.cond233.do.end274_crit_edge
  %tobool258.not378.ph = phi i32 [ %call249, %for.end256.do.end274_crit_edge ], [ -110, %lor.rhs259.do.end274_crit_edge ], [ %call235, %for.cond233.do.end274_crit_edge ]
  call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull @.str.36, i32 noundef %tobool258.not378.ph) #8
  br label %cleanup

cleanup:                                          ; preds = %do.end274, %lor.rhs259.cleanup_crit_edge, %if.end210.cleanup_crit_edge, %do.end208, %do.end183, %do.end151, %do.end104, %if.end41.cleanup_crit_edge, %do.end39, %do.end16
  %retval.0 = phi i32 [ %call.i, %do.end16 ], [ %call.i353, %do.end39 ], [ %call.i354, %do.end104 ], [ %tobool141.not369.ph, %do.end151 ], [ %call.i355, %do.end183 ], [ %call.i356, %do.end208 ], [ 0, %if.end41.cleanup_crit_edge ], [ 0, %if.end210.cleanup_crit_edge ], [ %tobool258.not378.ph, %do.end274 ], [ 0, %lor.rhs259.cleanup_crit_edge ]
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %dllrdy) #5
  call void @llvm.lifetime.end.p0(i64 4, ptr nonnull %caldone) #5
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_update_bits_base(ptr noundef, i32 noundef, i32 noundef, i32 noundef, ptr noundef, i1 noundef zeroext, i1 noundef zeroext) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #4

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @regmap_read(ptr noundef, i32 noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 36)
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

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !10, !12, !14, !16, !17, !19, !21, !23, !25, !27, !28, !29, !30, !31, !32, !33, !35, !36, !37, !39, !40, !41, !43, !44, !45, !46, !48, !49, !50, !52, !53, !54, !55, !57, !58, !60, !61, !62, !64, !65, !66, !68, !69, !70, !72, !73, !74}
!llvm.module.flags = !{!76, !77, !78, !79, !80, !81, !82, !83}
!llvm.ident = !{!84}

!0 = !{ptr @__initcall__kmod_phy_intel_keembay_emmc__329_304_keembay_emmc_phy_driver_init6, !1, !"__initcall__kmod_phy_intel_keembay_emmc__329_304_keembay_emmc_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 304, i32 1}
!2 = !{ptr @__exitcall_keembay_emmc_phy_driver_exit, !1, !"__exitcall_keembay_emmc_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author330, !4, !"__UNIQUE_ID_author330", i1 false, i1 false}
!4 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 306, i32 1}
!5 = !{ptr @__UNIQUE_ID_description331, !6, !"__UNIQUE_ID_description331", i1 false, i1 false}
!6 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 307, i32 1}
!7 = !{ptr @__UNIQUE_ID_file332, !8, !"__UNIQUE_ID_file332", i1 false, i1 false}
!8 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 308, i32 1}
!9 = !{ptr @__UNIQUE_ID_license333, !8, !"__UNIQUE_ID_license333", i1 false, i1 false}
!10 = !{ptr @.str, !11, !"<string literal>", i1 false, i1 false}
!11 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 300, i32 11}
!12 = !{ptr @keembay_emmc_phy_driver, !13, !"keembay_emmc_phy_driver", i1 false, i1 false}
!13 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 297, i32 31}
!14 = !{ptr @keembay_emmc_phy_probe._key, !15, !"_key", i1 false, i1 false}
!15 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 276, i32 17}
!16 = !{ptr @.str.1, !15, !"<string literal>", i1 false, i1 false}
!17 = !{ptr @.str.2, !18, !"<string literal>", i1 false, i1 false}
!18 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 283, i32 10}
!19 = !{ptr @keembay_regmap_config, !20, !"keembay_regmap_config", i1 false, i1 false}
!20 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 47, i32 35}
!21 = !{ptr @ops, !22, !"ops", i1 false, i1 false}
!22 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 251, i32 29}
!23 = !{ptr @.str.3, !24, !"<string literal>", i1 false, i1 false}
!24 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 198, i32 46}
!25 = !{ptr @.str.4, !26, !"<string literal>", i1 false, i1 false}
!26 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 221, i32 3}
!27 = !{ptr @.str.5, !26, !"<string literal>", i1 false, i1 false}
!28 = !{ptr @.str.6, !26, !"<string literal>", i1 false, i1 false}
!29 = !{ptr @.str.7, !26, !"<string literal>", i1 false, i1 false}
!30 = !{ptr @.str.8, !26, !"<string literal>", i1 false, i1 false}
!31 = !{ptr @keembay_emmc_phy_power_on._entry, !26, !"_entry", i1 false, i1 false}
!32 = !{ptr @keembay_emmc_phy_power_on._entry_ptr, !26, !"_entry_ptr", i1 false, i1 false}
!33 = !{ptr @.str.10, !34, !"<string literal>", i1 false, i1 false}
!34 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 229, i32 3}
!35 = !{ptr @keembay_emmc_phy_power_on._entry.9, !34, !"_entry", i1 false, i1 false}
!36 = !{ptr @keembay_emmc_phy_power_on._entry_ptr.11, !34, !"_entry_ptr", i1 false, i1 false}
!37 = !{ptr @.str.13, !38, !"<string literal>", i1 false, i1 false}
!38 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 237, i32 3}
!39 = !{ptr @keembay_emmc_phy_power_on._entry.12, !38, !"_entry", i1 false, i1 false}
!40 = !{ptr @keembay_emmc_phy_power_on._entry_ptr.14, !38, !"_entry_ptr", i1 false, i1 false}
!41 = !{ptr @.str.15, !42, !"<string literal>", i1 false, i1 false}
!42 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 69, i32 3}
!43 = !{ptr @.str.16, !42, !"<string literal>", i1 false, i1 false}
!44 = !{ptr @keembay_emmc_phy_power._entry, !42, !"_entry", i1 false, i1 false}
!45 = !{ptr @keembay_emmc_phy_power._entry_ptr, !42, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.18, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 76, i32 3}
!48 = !{ptr @keembay_emmc_phy_power._entry.17, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @keembay_emmc_phy_power._entry_ptr.19, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{ptr @.str.21, !51, !"<string literal>", i1 false, i1 false}
!51 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 100, i32 3}
!52 = !{ptr @.str.22, !51, !"<string literal>", i1 false, i1 false}
!53 = !{ptr @keembay_emmc_phy_power._entry.20, !51, !"_entry", i1 false, i1 false}
!54 = !{ptr @keembay_emmc_phy_power._entry_ptr.23, !51, !"_entry_ptr", i1 false, i1 false}
!55 = !{ptr @keembay_emmc_phy_power._entry.24, !56, !"_entry", i1 false, i1 false}
!56 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 112, i32 3}
!57 = !{ptr @keembay_emmc_phy_power._entry_ptr.25, !56, !"_entry_ptr", i1 false, i1 false}
!58 = !{ptr @.str.27, !59, !"<string literal>", i1 false, i1 false}
!59 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 127, i32 3}
!60 = !{ptr @keembay_emmc_phy_power._entry.26, !59, !"_entry", i1 false, i1 false}
!61 = !{ptr @keembay_emmc_phy_power._entry_ptr.28, !59, !"_entry_ptr", i1 false, i1 false}
!62 = !{ptr @.str.30, !63, !"<string literal>", i1 false, i1 false}
!63 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 135, i32 3}
!64 = !{ptr @keembay_emmc_phy_power._entry.29, !63, !"_entry", i1 false, i1 false}
!65 = !{ptr @keembay_emmc_phy_power._entry_ptr.31, !63, !"_entry_ptr", i1 false, i1 false}
!66 = !{ptr @.str.33, !67, !"<string literal>", i1 false, i1 false}
!67 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 143, i32 3}
!68 = !{ptr @keembay_emmc_phy_power._entry.32, !67, !"_entry", i1 false, i1 false}
!69 = !{ptr @keembay_emmc_phy_power._entry_ptr.34, !67, !"_entry_ptr", i1 false, i1 false}
!70 = !{ptr @.str.36, !71, !"<string literal>", i1 false, i1 false}
!71 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 177, i32 3}
!72 = !{ptr @keembay_emmc_phy_power._entry.35, !71, !"_entry", i1 false, i1 false}
!73 = !{ptr @keembay_emmc_phy_power._entry_ptr.37, !71, !"_entry_ptr", i1 false, i1 false}
!74 = !{ptr @keembay_emmc_phy_dt_ids, !75, !"keembay_emmc_phy_dt_ids", i1 false, i1 false}
!75 = !{!"../drivers/phy/intel/phy-intel-keembay-emmc.c", i32 291, i32 34}
!76 = !{i32 1, !"wchar_size", i32 2}
!77 = !{i32 1, !"min_enum_size", i32 4}
!78 = !{i32 8, !"branch-target-enforcement", i32 0}
!79 = !{i32 8, !"sign-return-address", i32 0}
!80 = !{i32 8, !"sign-return-address-all", i32 0}
!81 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!82 = !{i32 7, !"uwtable", i32 1}
!83 = !{i32 7, !"frame-pointer", i32 2}
!84 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!85 = !{!"auto-init"}
