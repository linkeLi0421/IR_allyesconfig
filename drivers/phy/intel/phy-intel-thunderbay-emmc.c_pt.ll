; ModuleID = '/llk/IR_all_yes/drivers/phy/intel/phy-intel-thunderbay-emmc.c_pt.bc'
source_filename = "../drivers/phy/intel/phy-intel-thunderbay-emmc.c"
target datalayout = "E-m:e-p:32:32-Fi8-i64:64-v128:64:128-a:0:32-n32-S64"
target triple = "armebv6k-unknown-linux-gnueabi"

module asm ".syntax unified"

%struct.platform_driver = type { ptr, ptr, ptr, ptr, ptr, %struct.device_driver, ptr, i8 }
%struct.device_driver = type { ptr, ptr, ptr, ptr, i8, i32, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
%struct.of_device_id = type { [32 x i8], [32 x i8], [128 x i8], ptr }
%struct.pi_entry = type { ptr, ptr, ptr, i32, ptr, ptr }
%struct.phy_ops = type { ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr, ptr }
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
%struct.thunderbay_emmc_phy = type { ptr, ptr, i32 }

@__initcall__kmod_phy_intel_thunderbay_emmc__289_504_thunderbay_emmc_phy_driver_init6 = internal global ptr @thunderbay_emmc_phy_driver_init, section ".initcall6.init", align 4
@thunderbay_emmc_phy_driver = internal global { %struct.platform_driver, [56 x i8] } { %struct.platform_driver { ptr @thunderbay_emmc_phy_probe, ptr null, ptr null, ptr null, ptr null, %struct.device_driver { ptr @.str, ptr null, ptr null, ptr null, i8 0, i32 0, ptr @thunderbay_emmc_phy_of_match, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, ptr null, i8 0 }, [56 x i8] zeroinitializer }, align 32
@__exitcall_thunderbay_emmc_phy_driver_exit = internal global ptr @thunderbay_emmc_phy_driver_exit, section ".exitcall.exit", align 4
@__UNIQUE_ID_author290 = internal constant [75 x i8] c"phy_intel_thunderbay_emmc.author=Nandhini S <nandhini.srikandan@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_author291 = internal constant [63 x i8] c"phy_intel_thunderbay_emmc.author=Rashmi A <rashmi.a@intel.com>\00", section ".modinfo", align 1
@__UNIQUE_ID_description292 = internal constant [72 x i8] c"phy_intel_thunderbay_emmc.description=Intel Thunder Bay eMMC PHY driver\00", section ".modinfo", align 1
@__UNIQUE_ID_file293 = internal constant [75 x i8] c"phy_intel_thunderbay_emmc.file=drivers/phy/intel/phy-intel-thunderbay-emmc\00", section ".modinfo", align 1
@__UNIQUE_ID_license294 = internal constant [41 x i8] c"phy_intel_thunderbay_emmc.license=GPL v2\00", section ".modinfo", align 1
@.str = internal constant { [20 x i8], [44 x i8] } { [20 x i8] c"thunderbay-emmc-phy\00", [44 x i8] zeroinitializer }, align 32
@thunderbay_emmc_phy_of_match = internal constant { [2 x %struct.of_device_id], [120 x i8] } { [2 x %struct.of_device_id] [%struct.of_device_id { [32 x i8] zeroinitializer, [32 x i8] zeroinitializer, [128 x i8] c"intel,thunderbay-emmc-phy\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00\00", ptr @thunderbay_emmc_phy_ops }, %struct.of_device_id zeroinitializer], [120 x i8] zeroinitializer }, align 32
@thunderbay_emmc_phy_probe._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.1, ptr @.str.2, ptr @.str.3, i32 481, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.1 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"failed to get match_node\0A\00", [38 x i8] zeroinitializer }, align 32
@.str.2 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"thunderbay_emmc_phy_probe\00", [38 x i8] zeroinitializer }, align 32
@.str.3 = internal constant { [46 x i8], [50 x i8] } { [46 x i8] c"drivers/phy/intel/phy-intel-thunderbay-emmc.c\00", [50 x i8] zeroinitializer }, align 32
@.str.4 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\013\00", [29 x i8] zeroinitializer }, align 32
@.str.5 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"%s %s: \00", [24 x i8] zeroinitializer }, align 32
@thunderbay_emmc_phy_probe._entry_ptr = internal global ptr @thunderbay_emmc_phy_probe._entry, section ".printk_index", align 4
@thunderbay_emmc_phy_probe._entry.6 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.7, ptr @.str.2, ptr @.str.3, i32 487, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.7 = internal constant { [22 x i8], [42 x i8] } { [22 x i8] c"failed to create PHY\0A\00", [42 x i8] zeroinitializer }, align 32
@thunderbay_emmc_phy_probe._entry_ptr.8 = internal global ptr @thunderbay_emmc_phy_probe._entry.6, section ".printk_index", align 4
@thunderbay_emmc_phy_ops = internal constant { %struct.phy_ops, [44 x i8] } { %struct.phy_ops { ptr @thunderbay_emmc_phy_init, ptr @thunderbay_emmc_phy_exit, ptr @thunderbay_emmc_phy_power_on, ptr @thunderbay_emmc_phy_power_off, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null, ptr null }, [44 x i8] zeroinitializer }, align 32
@.str.9 = internal constant { [8 x i8], [24 x i8] } { [8 x i8] c"emmcclk\00", [24 x i8] zeroinitializer }, align 32
@thunderbay_emmc_phy_power.lock = internal global { i1, [31 x i8] } zeroinitializer, align 32
@thunderbay_emmc_phy_power._entry = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.10, ptr @.str.11, ptr @.str.3, i32 230, ptr @.str.12, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.10 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"Unsupported rate: %lu\0A\00", [41 x i8] zeroinitializer }, align 32
@.str.11 = internal constant { [26 x i8], [38 x i8] } { [26 x i8] c"thunderbay_emmc_phy_power\00", [38 x i8] zeroinitializer }, align 32
@.str.12 = internal constant { [3 x i8], [29 x i8] } { [3 x i8] c"\014\00", [29 x i8] zeroinitializer }, align 32
@thunderbay_emmc_phy_power._entry_ptr = internal global ptr @thunderbay_emmc_phy_power._entry, section ".printk_index", align 4
@arm_delay_ops = external dso_local local_unnamed_addr global %struct.arm_delay_ops, align 4
@thunderbay_emmc_phy_power._entry.13 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.14, ptr @.str.11, ptr @.str.3, i32 249, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.14 = internal constant { [24 x i8], [40 x i8] } { [24 x i8] c"caldone failed, ret=%d\0A\00", [40 x i8] zeroinitializer }, align 32
@thunderbay_emmc_phy_power._entry_ptr.15 = internal global ptr @thunderbay_emmc_phy_power._entry.13, section ".printk_index", align 4
@thunderbay_emmc_phy_power._entry.16 = internal constant { %struct.pi_entry, [40 x i8] } { %struct.pi_entry { ptr @.str.17, ptr @.str.11, ptr @.str.3, i32 279, ptr @.str.4, ptr @.str.5 }, [40 x i8] zeroinitializer }, align 32
@.str.17 = internal constant { [23 x i8], [41 x i8] } { [23 x i8] c"dllrdy failed, ret=%d\0A\00", [41 x i8] zeroinitializer }, align 32
@thunderbay_emmc_phy_power._entry_ptr.18 = internal global ptr @thunderbay_emmc_phy_power._entry.16, section ".printk_index", align 4
@__sancov_gen_cov_switch_values = internal global [4 x i64] [i64 2, i64 32, i64 0, i64 1]
@__sancov_gen_cov_switch_values.19 = internal global [4 x i64] [i64 2, i64 32, i64 400000, i64 200000000]
@___asan_gen_.20 = private unnamed_addr constant [27 x i8] c"thunderbay_emmc_phy_driver\00", align 1
@___asan_gen_.22 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 497, i32 31 }
@___asan_gen_.25 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 500, i32 12 }
@___asan_gen_.26 = private unnamed_addr constant [29 x i8] c"thunderbay_emmc_phy_of_match\00", align 1
@___asan_gen_.28 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 450, i32 34 }
@___asan_gen_.46 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 481, i32 3 }
@___asan_gen_.52 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 487, i32 3 }
@___asan_gen_.53 = private unnamed_addr constant [24 x i8] c"thunderbay_emmc_phy_ops\00", align 1
@___asan_gen_.55 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 442, i32 29 }
@___asan_gen_.58 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 294, i32 40 }
@___asan_gen_.59 = private unnamed_addr constant [31 x i8] c"thunderbay_emmc_phy_power.lock\00", align 1
@___asan_gen_.71 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 230, i32 3 }
@___asan_gen_.77 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 249, i32 4 }
@___asan_gen_.78 = private unnamed_addr constant [7 x i8] c"_entry\00", align 1
@___asan_gen_.81 = private unnamed_addr constant [17 x i8] c"<string literal>\00", align 1
@___asan_gen_.82 = private constant [49 x i8] c"../drivers/phy/intel/phy-intel-thunderbay-emmc.c\00", align 1
@___asan_gen_.83 = private unnamed_addr constant { ptr, i32, i32 } { ptr @___asan_gen_.82, i32 279, i32 4 }
@llvm.compiler.used = appending global [35 x ptr] [ptr @__UNIQUE_ID_author290, ptr @__UNIQUE_ID_author291, ptr @__UNIQUE_ID_description292, ptr @__UNIQUE_ID_file293, ptr @__UNIQUE_ID_license294, ptr @__exitcall_thunderbay_emmc_phy_driver_exit, ptr @__initcall__kmod_phy_intel_thunderbay_emmc__289_504_thunderbay_emmc_phy_driver_init6, ptr @thunderbay_emmc_phy_driver_exit, ptr @thunderbay_emmc_phy_power._entry, ptr @thunderbay_emmc_phy_power._entry.13, ptr @thunderbay_emmc_phy_power._entry.16, ptr @thunderbay_emmc_phy_power._entry_ptr, ptr @thunderbay_emmc_phy_power._entry_ptr.15, ptr @thunderbay_emmc_phy_power._entry_ptr.18, ptr @thunderbay_emmc_phy_probe._entry, ptr @thunderbay_emmc_phy_probe._entry.6, ptr @thunderbay_emmc_phy_probe._entry_ptr, ptr @thunderbay_emmc_phy_probe._entry_ptr.8, ptr @thunderbay_emmc_phy_driver, ptr @.str, ptr @thunderbay_emmc_phy_of_match, ptr @.str.1, ptr @.str.2, ptr @.str.3, ptr @.str.4, ptr @.str.5, ptr @.str.7, ptr @thunderbay_emmc_phy_ops, ptr @.str.9, ptr @thunderbay_emmc_phy_power.lock, ptr @.str.10, ptr @.str.11, ptr @.str.12, ptr @.str.14, ptr @.str.17], section "llvm.metadata"
@0 = internal global [22 x { i32, i32, i32, i32, i32, i32, i32, i32 }] [{ i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunderbay_emmc_phy_driver to i32), i32 104, i32 160, i32 ptrtoint (ptr @___asan_gen_.20 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.22 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str to i32), i32 20, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.25 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunderbay_emmc_phy_of_match to i32), i32 392, i32 512, i32 ptrtoint (ptr @___asan_gen_.26 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.28 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunderbay_emmc_phy_probe._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.1 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.2 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.3 to i32), i32 46, i32 96, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.4 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.5 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.46 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunderbay_emmc_phy_probe._entry.6 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.7 to i32), i32 22, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.52 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunderbay_emmc_phy_ops to i32), i32 52, i32 96, i32 ptrtoint (ptr @___asan_gen_.53 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.55 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.9 to i32), i32 8, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.58 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunderbay_emmc_phy_power.lock to i32), i32 1, i32 32, i32 ptrtoint (ptr @___asan_gen_.59 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 0, i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunderbay_emmc_phy_power._entry to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.10 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.11 to i32), i32 26, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.12 to i32), i32 3, i32 32, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.71 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunderbay_emmc_phy_power._entry.13 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.14 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.77 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @thunderbay_emmc_phy_power._entry.16 to i32), i32 24, i32 64, i32 ptrtoint (ptr @___asan_gen_.78 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }, { i32, i32, i32, i32, i32, i32, i32, i32 } { i32 ptrtoint (ptr @.str.17 to i32), i32 23, i32 64, i32 ptrtoint (ptr @___asan_gen_.81 to i32), i32 ptrtoint (ptr @___asan_gen_.82 to i32), i32 0, i32 ptrtoint (ptr @___asan_gen_.83 to i32), i32 -1 }]
@llvm.used = appending global [2 x ptr] [ptr @asan.module_ctor, ptr @asan.module_dtor], section "llvm.metadata"
@llvm.global_ctors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_ctor, ptr null }]
@llvm.global_dtors = appending global [1 x { i32, ptr, ptr }] [{ i32, ptr, ptr } { i32 1, ptr @asan.module_dtor, ptr null }]

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal i32 @thunderbay_emmc_phy_driver_init() #0 section ".init.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %call = tail call i32 @__platform_driver_register(ptr noundef nonnull @thunderbay_emmc_phy_driver, ptr noundef null) #5
  ret i32 %call
}

; Function Attrs: cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync)
define internal void @thunderbay_emmc_phy_driver_exit() #0 section ".exit.text" align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  tail call void @platform_driver_unregister(ptr noundef nonnull @thunderbay_emmc_phy_driver) #5
  ret void
}

; Function Attrs: null_pointer_is_valid
declare dso_local void @platform_driver_unregister(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @__platform_driver_register(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thunderbay_emmc_phy_probe(ptr noundef %pdev) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %dev1 = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3
  %of_node = getelementptr inbounds %struct.platform_device, ptr %pdev, i32 0, i32 3, i32 27
  %0 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %of_node, align 8
  %tobool.not = icmp eq ptr %1, null
  br i1 %tobool.not, label %entry.cleanup_crit_edge, label %if.end

entry.cleanup_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end:                                           ; preds = %entry
  %call.i = tail call noalias ptr @devm_kmalloc(ptr noundef %dev1, i32 noundef 12, i32 noundef 3520) #5
  %tobool2.not = icmp eq ptr %call.i, null
  br i1 %tobool2.not, label %if.end.cleanup_crit_edge, label %if.end4

if.end.cleanup_crit_edge:                         ; preds = %if.end
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup

if.end4:                                          ; preds = %if.end
  %call5 = tail call ptr @platform_get_resource(ptr noundef %pdev, i32 noundef 512, i32 noundef 0) #5
  %call7 = tail call ptr @devm_ioremap_resource(ptr noundef %dev1, ptr noundef %call5) #5
  %2 = ptrtoint ptr %call.i to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call7, ptr %call.i, align 4
  %cmp.i = icmp ugt ptr %call7, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i, label %if.then10, label %if.end13

if.then10:                                        ; preds = %if.end4
  call void @__sanitizer_cov_trace_pc() #7
  %3 = ptrtoint ptr %call7 to i32
  br label %cleanup

if.end13:                                         ; preds = %if.end4
  %phy_power_sts = getelementptr inbounds %struct.thunderbay_emmc_phy, ptr %call.i, i32 0, i32 2
  %4 = ptrtoint ptr %phy_power_sts to i32
  call void @__asan_store4_noabort(i32 %4)
  store i32 0, ptr %phy_power_sts, align 4
  %5 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %5)
  %6 = load ptr, ptr %of_node, align 8
  %call16 = tail call ptr @of_match_node(ptr noundef nonnull @thunderbay_emmc_phy_of_match, ptr noundef %6) #5
  %tobool17.not = icmp eq ptr %call16, null
  br i1 %tobool17.not, label %do.end, label %if.end19

do.end:                                           ; preds = %if.end13
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.1) #8
  br label %cleanup

if.end19:                                         ; preds = %if.end13
  %7 = ptrtoint ptr %of_node to i32
  call void @__asan_load4_noabort(i32 %7)
  %8 = load ptr, ptr %of_node, align 8
  %data = getelementptr inbounds %struct.of_device_id, ptr %call16, i32 0, i32 3
  %9 = ptrtoint ptr %data to i32
  call void @__asan_load4_noabort(i32 %9)
  %10 = load ptr, ptr %data, align 4
  %call21 = tail call ptr @devm_phy_create(ptr noundef %dev1, ptr noundef %8, ptr noundef %10) #5
  %cmp.i53 = icmp ugt ptr %call21, inttoptr (i32 -4096 to ptr)
  br i1 %cmp.i53, label %do.end26, label %if.end28

do.end26:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %dev1, ptr noundef nonnull @.str.7) #8
  %11 = ptrtoint ptr %call21 to i32
  br label %cleanup

if.end28:                                         ; preds = %if.end19
  call void @__sanitizer_cov_trace_pc() #7
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %call21, i32 0, i32 8
  %12 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_store4_noabort(i32 %12)
  store ptr %call.i, ptr %driver_data.i.i, align 4
  %call29 = tail call ptr @__devm_of_phy_provider_register(ptr noundef %dev1, ptr noundef null, ptr noundef null, ptr noundef nonnull @of_phy_simple_xlate) #5
  %cmp.i.i = icmp ugt ptr %call29, inttoptr (i32 -4096 to ptr)
  %13 = ptrtoint ptr %call29 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %13, i32 0
  br label %cleanup

cleanup:                                          ; preds = %if.end28, %do.end26, %do.end, %if.then10, %if.end.cleanup_crit_edge, %entry.cleanup_crit_edge
  %retval.0 = phi i32 [ %3, %if.then10 ], [ %11, %do.end26 ], [ %spec.select.i, %if.end28 ], [ -22, %do.end ], [ -19, %entry.cleanup_crit_edge ], [ -12, %if.end.cleanup_crit_edge ]
  ret i32 %retval.0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @platform_get_resource(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_ioremap_resource(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_match_node(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_err(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @devm_phy_create(ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @__devm_of_phy_provider_register(ptr noundef, ptr noundef, ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @of_phy_simple_xlate(ptr noundef, ptr noundef) #1

; Function Attrs: null_pointer_is_valid
declare dso_local noalias ptr @devm_kmalloc(ptr noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thunderbay_emmc_phy_init(ptr noundef %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %call1 = tail call ptr @clk_get(ptr noundef %phy, ptr noundef nonnull @.str.9) #5
  %emmcclk = getelementptr inbounds %struct.thunderbay_emmc_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %emmcclk to i32
  call void @__asan_store4_noabort(i32 %2)
  store ptr %call1, ptr %emmcclk, align 4
  %cmp.i.i = icmp ugt ptr %call1, inttoptr (i32 -4096 to ptr)
  %3 = ptrtoint ptr %call1 to i32
  %spec.select.i = select i1 %cmp.i.i, i32 %3, i32 0
  ret i32 %spec.select.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thunderbay_emmc_phy_exit(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %emmcclk = getelementptr inbounds %struct.thunderbay_emmc_phy, ptr %1, i32 0, i32 1
  %2 = ptrtoint ptr %emmcclk to i32
  call void @__asan_load4_noabort(i32 %2)
  %3 = load ptr, ptr %emmcclk, align 4
  tail call void @clk_put(ptr noundef %3) #5
  ret i32 0
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thunderbay_emmc_phy_power_on(ptr noundef %phy) #2 align 64 {
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
  %4 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %3) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %5 = or i32 %4, 4
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %6 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %7, i32 %5) #5, !srcloc !62
  %8 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %8)
  %9 = load ptr, ptr %1, align 4
  %10 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %9) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %11 = or i32 %10, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %12 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %12)
  %13 = load ptr, ptr %1, align 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %13, i32 %11) #5, !srcloc !62
  %14 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %14)
  %15 = load ptr, ptr %1, align 4
  %add.ptr.i = getelementptr i8, ptr %15, i32 4
  %16 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %17 = or i32 %16, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %18 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %18)
  %19 = load ptr, ptr %1, align 4
  %add.ptr4.i = getelementptr i8, ptr %19, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i, i32 %17) #5, !srcloc !62
  %20 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %20)
  %21 = load ptr, ptr %1, align 4
  %add.ptr.i68 = getelementptr i8, ptr %21, i32 4
  %22 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i68) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %23 = or i32 %22, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %24 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %24)
  %25 = load ptr, ptr %1, align 4
  %add.ptr4.i71 = getelementptr i8, ptr %25, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i71, i32 %23) #5, !srcloc !62
  %26 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %26)
  %27 = load ptr, ptr %1, align 4
  %add.ptr.i72 = getelementptr i8, ptr %27, i32 4
  %28 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i72) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %29 = or i32 %28, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %30 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %30)
  %31 = load ptr, ptr %1, align 4
  %add.ptr4.i75 = getelementptr i8, ptr %31, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i75, i32 %29) #5, !srcloc !62
  %32 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %32)
  %33 = load ptr, ptr %1, align 4
  %add.ptr.i76 = getelementptr i8, ptr %33, i32 4
  %34 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i76) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %35 = or i32 %34, 67108864
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %36 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %36)
  %37 = load ptr, ptr %1, align 4
  %add.ptr4.i79 = getelementptr i8, ptr %37, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i79, i32 %35) #5, !srcloc !62
  %38 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %38)
  %39 = load ptr, ptr %1, align 4
  %add.ptr.i80 = getelementptr i8, ptr %39, i32 4
  %40 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i80) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %41 = or i32 %40, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %42 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %42)
  %43 = load ptr, ptr %1, align 4
  %add.ptr4.i83 = getelementptr i8, ptr %43, i32 4
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i83, i32 %41) #5, !srcloc !62
  %phy_power_sts = getelementptr inbounds %struct.thunderbay_emmc_phy, ptr %1, i32 0, i32 2
  %44 = ptrtoint ptr %phy_power_sts to i32
  call void @__asan_load4_noabort(i32 %44)
  %45 = load i32, ptr %phy_power_sts, align 4
  %46 = zext i32 %45 to i64
  call void @__sanitizer_cov_trace_switch(i64 %46, ptr @__sancov_gen_cov_switch_values)
  switch i32 %45, label %entry.if.end8_crit_edge [
    i32 0, label %if.then
    i32 1, label %if.then3
  ]

entry.if.end8_crit_edge:                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end8

if.then:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %47 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %47)
  %48 = load ptr, ptr %1, align 4
  %add.ptr.i84 = getelementptr i8, ptr %48, i32 36
  %49 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i84) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %50 = or i32 %49, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %51 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %51)
  %52 = load ptr, ptr %1, align 4
  %add.ptr4.i87 = getelementptr i8, ptr %52, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i87, i32 %50) #5, !srcloc !62
  %53 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %53)
  %54 = load ptr, ptr %1, align 4
  %add.ptr.i88 = getelementptr i8, ptr %54, i32 36
  %55 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i88) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %56 = or i32 %55, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %57 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %57)
  %58 = load ptr, ptr %1, align 4
  %add.ptr4.i91 = getelementptr i8, ptr %58, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i91, i32 %56) #5, !srcloc !62
  %59 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %59)
  %60 = load ptr, ptr %1, align 4
  %add.ptr.i92 = getelementptr i8, ptr %60, i32 36
  %61 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i92) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %62 = and i32 %61, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %63 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %63)
  %64 = load ptr, ptr %1, align 4
  %add.ptr4.i94 = getelementptr i8, ptr %64, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i94, i32 %62) #5, !srcloc !62
  %65 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %65)
  %66 = load ptr, ptr %1, align 4
  %add.ptr.i95 = getelementptr i8, ptr %66, i32 36
  %67 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i95) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %68 = and i32 %67, -7937
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %69 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %69)
  %70 = load ptr, ptr %1, align 4
  %add.ptr4.i97 = getelementptr i8, ptr %70, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i97, i32 %68) #5, !srcloc !62
  %71 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %71)
  %72 = load ptr, ptr %1, align 4
  %add.ptr.i98 = getelementptr i8, ptr %72, i32 36
  %73 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i98) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %74 = and i32 %73, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %75 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %75)
  %76 = load ptr, ptr %1, align 4
  %add.ptr4.i100 = getelementptr i8, ptr %76, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i100, i32 %74) #5, !srcloc !62
  %77 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %77)
  %78 = load ptr, ptr %1, align 4
  %add.ptr.i101 = getelementptr i8, ptr %78, i32 36
  %79 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i101) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %80 = and i32 %79, -32776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %81 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %81)
  %82 = load ptr, ptr %1, align 4
  %add.ptr4.i103 = getelementptr i8, ptr %82, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i103, i32 %80) #5, !srcloc !62
  %83 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %83)
  %84 = load ptr, ptr %1, align 4
  %add.ptr.i104 = getelementptr i8, ptr %84, i32 36
  %85 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i104) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %86 = and i32 %85, 1073545215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %87 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %87)
  %88 = load ptr, ptr %1, align 4
  %add.ptr4.i106 = getelementptr i8, ptr %88, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i106, i32 %86) #5, !srcloc !62
  %89 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %89)
  %90 = load ptr, ptr %1, align 4
  %add.ptr.i107 = getelementptr i8, ptr %90, i32 36
  %91 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i107) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %92 = and i32 %91, -234881025
  %93 = or i32 %92, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %94 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %94)
  %95 = load ptr, ptr %1, align 4
  %add.ptr4.i110 = getelementptr i8, ptr %95, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i110, i32 %93) #5, !srcloc !62
  br label %if.end8

if.then3:                                         ; preds = %entry
  %emmcclk = getelementptr inbounds %struct.thunderbay_emmc_phy, ptr %1, i32 0, i32 1
  %96 = ptrtoint ptr %emmcclk to i32
  call void @__asan_load4_noabort(i32 %96)
  %97 = load ptr, ptr %emmcclk, align 4
  %call4 = tail call i32 @clk_get_rate(ptr noundef %97) #5
  %98 = zext i32 %call4 to i64
  call void @__sanitizer_cov_trace_switch(i64 %98, ptr @__sancov_gen_cov_switch_values.19)
  switch i32 %call4, label %sw.caserange [
    i32 200000000, label %sw.bb
    i32 400000, label %sw.bb6
  ]

sw.bb:                                            ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %99 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %99)
  %100 = load ptr, ptr %1, align 4
  %add.ptr.i111 = getelementptr i8, ptr %100, i32 36
  %101 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i111) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %102 = and i32 %101, -33
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %103 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %103)
  %104 = load ptr, ptr %1, align 4
  %add.ptr4.i113 = getelementptr i8, ptr %104, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i113, i32 %102) #5, !srcloc !62
  %105 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %105)
  %106 = load ptr, ptr %1, align 4
  %add.ptr.i114 = getelementptr i8, ptr %106, i32 36
  %107 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i114) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %108 = and i32 %107, -17
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %109 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %109)
  %110 = load ptr, ptr %1, align 4
  %add.ptr4.i116 = getelementptr i8, ptr %110, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i116, i32 %108) #5, !srcloc !62
  %111 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %111)
  %112 = load ptr, ptr %1, align 4
  %add.ptr.i117 = getelementptr i8, ptr %112, i32 36
  %113 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i117) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %114 = and i32 %113, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %115 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %115)
  %116 = load ptr, ptr %1, align 4
  %add.ptr4.i119 = getelementptr i8, ptr %116, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i119, i32 %114) #5, !srcloc !62
  %117 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %117)
  %118 = load ptr, ptr %1, align 4
  %add.ptr.i120 = getelementptr i8, ptr %118, i32 36
  %119 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i120) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %120 = and i32 %119, -7937
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %121 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %121)
  %122 = load ptr, ptr %1, align 4
  %add.ptr4.i122 = getelementptr i8, ptr %122, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i122, i32 %120) #5, !srcloc !62
  %123 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %123)
  %124 = load ptr, ptr %1, align 4
  %add.ptr.i123 = getelementptr i8, ptr %124, i32 36
  %125 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i123) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %126 = or i32 %125, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %127 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %127)
  %128 = load ptr, ptr %1, align 4
  %add.ptr4.i126 = getelementptr i8, ptr %128, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i126, i32 %126) #5, !srcloc !62
  %129 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %129)
  %130 = load ptr, ptr %1, align 4
  %add.ptr.i127 = getelementptr i8, ptr %130, i32 36
  %131 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i127) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %132 = and i32 %131, -32776
  %133 = or i32 %132, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %134 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %134)
  %135 = load ptr, ptr %1, align 4
  %add.ptr4.i130 = getelementptr i8, ptr %135, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i130, i32 %133) #5, !srcloc !62
  %136 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %136)
  %137 = load ptr, ptr %1, align 4
  %add.ptr.i131 = getelementptr i8, ptr %137, i32 36
  %138 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i131) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %139 = and i32 %138, 1073545215
  %140 = or i32 %139, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %141 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %141)
  %142 = load ptr, ptr %1, align 4
  %add.ptr4.i134 = getelementptr i8, ptr %142, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i134, i32 %140) #5, !srcloc !62
  %143 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %143)
  %144 = load ptr, ptr %1, align 4
  %add.ptr.i135 = getelementptr i8, ptr %144, i32 36
  %145 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i135) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %146 = and i32 %145, -234881025
  %147 = or i32 %146, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %148 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %148)
  %149 = load ptr, ptr %1, align 4
  %add.ptr4.i138 = getelementptr i8, ptr %149, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i138, i32 %147) #5, !srcloc !62
  %150 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %150)
  %151 = load ptr, ptr %1, align 4
  %add.ptr.i139 = getelementptr i8, ptr %151, i32 44
  %152 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i139) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %153 = and i32 %152, -14688001
  %154 = or i32 %153, 6292992
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %155 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %155)
  %156 = load ptr, ptr %1, align 4
  %add.ptr4.i142 = getelementptr i8, ptr %156, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i142, i32 %154) #5, !srcloc !62
  br label %sw.epilog

sw.bb5:                                           ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #7
  %157 = or i32 %208, 2
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %158 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %158)
  %159 = load ptr, ptr %1, align 4
  %add.ptr4.i164 = getelementptr i8, ptr %159, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i164, i32 %157) #5, !srcloc !62
  %160 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %160)
  %161 = load ptr, ptr %1, align 4
  %add.ptr.i165 = getelementptr i8, ptr %161, i32 36
  %162 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i165) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %163 = and i32 %162, 1073545215
  %164 = or i32 %163, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %165 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %165)
  %166 = load ptr, ptr %1, align 4
  %add.ptr4.i168 = getelementptr i8, ptr %166, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i168, i32 %164) #5, !srcloc !62
  %167 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %167)
  %168 = load ptr, ptr %1, align 4
  %add.ptr.i169 = getelementptr i8, ptr %168, i32 36
  %169 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i169) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %170 = and i32 %169, -234881025
  %171 = or i32 %170, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %172 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %172)
  %173 = load ptr, ptr %1, align 4
  %add.ptr4.i172 = getelementptr i8, ptr %173, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i172, i32 %171) #5, !srcloc !62
  br label %sw.epilog

sw.caserange:                                     ; preds = %if.then3
  %174 = add i32 %call4, -50000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 2000001, i32 %174)
  %inbounds = icmp ult i32 %174, 2000001
  %175 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %175)
  %176 = load ptr, ptr %1, align 4
  %add.ptr.i143 = getelementptr i8, ptr %176, i32 36
  %177 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i143) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %178 = or i32 %177, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %179 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %179)
  %180 = load ptr, ptr %1, align 4
  %add.ptr4.i146 = getelementptr i8, ptr %180, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i146, i32 %178) #5
  %181 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %181)
  %182 = load ptr, ptr %1, align 4
  %add.ptr.i147 = getelementptr i8, ptr %182, i32 36
  %183 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i147) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %184 = or i32 %183, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %185 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %185)
  %186 = load ptr, ptr %1, align 4
  %add.ptr4.i150 = getelementptr i8, ptr %186, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i150, i32 %184) #5
  %187 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %187)
  %188 = load ptr, ptr %1, align 4
  %add.ptr.i151 = getelementptr i8, ptr %188, i32 36
  %189 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i151) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %190 = and i32 %189, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %191 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %191)
  %192 = load ptr, ptr %1, align 4
  %add.ptr4.i153 = getelementptr i8, ptr %192, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i153, i32 %190) #5
  %193 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %193)
  %194 = load ptr, ptr %1, align 4
  %add.ptr.i154 = getelementptr i8, ptr %194, i32 36
  %195 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i154) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %196 = and i32 %195, -7937
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %197 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %197)
  %198 = load ptr, ptr %1, align 4
  %add.ptr4.i156 = getelementptr i8, ptr %198, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i156, i32 %196) #5
  %199 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %199)
  %200 = load ptr, ptr %1, align 4
  %add.ptr.i157 = getelementptr i8, ptr %200, i32 36
  %201 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i157) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %202 = or i32 %201, 8
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  tail call void @arm_heavy_mb() #5
  %203 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %203)
  %204 = load ptr, ptr %1, align 4
  %add.ptr4.i160 = getelementptr i8, ptr %204, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i160, i32 %202) #5
  %205 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %205)
  %206 = load ptr, ptr %1, align 4
  %add.ptr.i161 = getelementptr i8, ptr %206, i32 36
  %207 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i161) #5
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5
  %208 = and i32 %207, -32776
  br i1 %inbounds, label %sw.bb5, label %sw.default

sw.bb6:                                           ; preds = %if.then3
  call void @__sanitizer_cov_trace_pc() #7
  %209 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %209)
  %210 = load ptr, ptr %1, align 4
  %add.ptr.i173 = getelementptr i8, ptr %210, i32 36
  %211 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i173) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %212 = or i32 %211, 32
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %213 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %213)
  %214 = load ptr, ptr %1, align 4
  %add.ptr4.i176 = getelementptr i8, ptr %214, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i176, i32 %212) #5, !srcloc !62
  %215 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %215)
  %216 = load ptr, ptr %1, align 4
  %add.ptr.i177 = getelementptr i8, ptr %216, i32 36
  %217 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i177) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %218 = or i32 %217, 16
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %219 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %219)
  %220 = load ptr, ptr %1, align 4
  %add.ptr4.i180 = getelementptr i8, ptr %220, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i180, i32 %218) #5, !srcloc !62
  %221 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %221)
  %222 = load ptr, ptr %1, align 4
  %add.ptr.i181 = getelementptr i8, ptr %222, i32 36
  %223 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i181) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %224 = and i32 %223, -8193
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %225 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %225)
  %226 = load ptr, ptr %1, align 4
  %add.ptr4.i183 = getelementptr i8, ptr %226, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i183, i32 %224) #5, !srcloc !62
  %227 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %227)
  %228 = load ptr, ptr %1, align 4
  %add.ptr.i184 = getelementptr i8, ptr %228, i32 36
  %229 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i184) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %230 = and i32 %229, -7937
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %231 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %231)
  %232 = load ptr, ptr %1, align 4
  %add.ptr4.i186 = getelementptr i8, ptr %232, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i186, i32 %230) #5, !srcloc !62
  %233 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %233)
  %234 = load ptr, ptr %1, align 4
  %add.ptr.i187 = getelementptr i8, ptr %234, i32 36
  %235 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i187) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %236 = and i32 %235, -9
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %237 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %237)
  %238 = load ptr, ptr %1, align 4
  %add.ptr4.i189 = getelementptr i8, ptr %238, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i189, i32 %236) #5, !srcloc !62
  %239 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %239)
  %240 = load ptr, ptr %1, align 4
  %add.ptr.i190 = getelementptr i8, ptr %240, i32 36
  %241 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i190) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %242 = and i32 %241, -32776
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %243 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %243)
  %244 = load ptr, ptr %1, align 4
  %add.ptr4.i192 = getelementptr i8, ptr %244, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i192, i32 %242) #5, !srcloc !62
  %245 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %245)
  %246 = load ptr, ptr %1, align 4
  %add.ptr.i193 = getelementptr i8, ptr %246, i32 36
  %247 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %248 = and i32 %247, 1073545215
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %249 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %249)
  %250 = load ptr, ptr %1, align 4
  %add.ptr4.i195 = getelementptr i8, ptr %250, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i195, i32 %248) #5, !srcloc !62
  %251 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %251)
  %252 = load ptr, ptr %1, align 4
  %add.ptr.i196 = getelementptr i8, ptr %252, i32 36
  %253 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i196) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %254 = and i32 %253, -234881025
  %255 = or i32 %254, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %256 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %256)
  %257 = load ptr, ptr %1, align 4
  %add.ptr4.i199 = getelementptr i8, ptr %257, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i199, i32 %255) #5, !srcloc !62
  br label %sw.epilog

sw.default:                                       ; preds = %sw.caserange
  call void @__sanitizer_cov_trace_pc() #7
  %258 = or i32 %208, 1
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %259 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %259)
  %260 = load ptr, ptr %1, align 4
  %add.ptr4.i221 = getelementptr i8, ptr %260, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i221, i32 %258) #5, !srcloc !62
  %261 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %261)
  %262 = load ptr, ptr %1, align 4
  %add.ptr.i222 = getelementptr i8, ptr %262, i32 36
  %263 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i222) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %264 = and i32 %263, 1073545215
  %265 = or i32 %264, 131072
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %266 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %266)
  %267 = load ptr, ptr %1, align 4
  %add.ptr4.i225 = getelementptr i8, ptr %267, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i225, i32 %265) #5, !srcloc !62
  %268 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %268)
  %269 = load ptr, ptr %1, align 4
  %add.ptr.i226 = getelementptr i8, ptr %269, i32 36
  %270 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i226) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %271 = and i32 %270, -234881025
  %272 = or i32 %271, 33554432
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %273 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %273)
  %274 = load ptr, ptr %1, align 4
  %add.ptr4.i229 = getelementptr i8, ptr %274, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i229, i32 %272) #5, !srcloc !62
  br label %sw.epilog

sw.epilog:                                        ; preds = %sw.default, %sw.bb6, %sw.bb5, %sw.bb
  %275 = ptrtoint ptr %phy_power_sts to i32
  call void @__asan_store4_noabort(i32 %275)
  store i32 0, ptr %phy_power_sts, align 4
  br label %if.end8

if.end8:                                          ; preds = %sw.epilog, %if.then, %entry.if.end8_crit_edge
  %276 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %276)
  %277 = load ptr, ptr %1, align 4
  %add.ptr.i230 = getelementptr i8, ptr %277, i32 36
  %278 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i230) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %279 = or i32 %278, 536870912
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %280 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %280)
  %281 = load ptr, ptr %1, align 4
  %add.ptr4.i233 = getelementptr i8, ptr %281, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i233, i32 %279) #5, !srcloc !62
  %282 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %282)
  %283 = load ptr, ptr %1, align 4
  %add.ptr.i234 = getelementptr i8, ptr %283, i32 36
  %284 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i234) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %285 = and i32 %284, -268435457
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %286 = ptrtoint ptr %1 to i32
  call void @__asan_load4_noabort(i32 %286)
  %287 = load ptr, ptr %1, align 4
  %add.ptr4.i236 = getelementptr i8, ptr %287, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i236, i32 %285) #5, !srcloc !62
  %288 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %288)
  %289 = load ptr, ptr %driver_data.i.i, align 4
  %emmcclk.i = getelementptr inbounds %struct.thunderbay_emmc_phy, ptr %289, i32 0, i32 1
  %290 = ptrtoint ptr %emmcclk.i to i32
  call void @__asan_load4_noabort(i32 %290)
  %291 = load ptr, ptr %emmcclk.i, align 4
  %call1.i = tail call i32 @clk_get_rate(ptr noundef %291) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %call1.i)
  %cond152.i = icmp eq i32 %call1.i, 200000000
  br i1 %cond152.i, label %sw.bb.i, label %if.end8.sw.epilog.i_crit_edge

if.end8.sw.epilog.i_crit_edge:                    ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  br label %sw.epilog.i

sw.bb.i:                                          ; preds = %if.end8
  call void @__sanitizer_cov_trace_pc() #7
  %292 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %292)
  %293 = load ptr, ptr %289, align 4
  %add.ptr.i.i = getelementptr i8, ptr %293, i32 36
  %294 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %295 = and i32 %294, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %296 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %296)
  %297 = load ptr, ptr %289, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %297, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %295) #5, !srcloc !62
  br label %sw.epilog.i

sw.epilog.i:                                      ; preds = %sw.bb.i, %if.end8.sw.epilog.i_crit_edge
  %298 = ptrtoint ptr %emmcclk.i to i32
  call void @__asan_load4_noabort(i32 %298)
  %299 = load ptr, ptr %emmcclk.i, align 4
  %call5.i = tail call i32 @clk_get_rate(ptr noundef %299) #5
  %300 = add i32 %call5.i, -200000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %300)
  %inbounds29.i = icmp ult i32 %300, 25000000
  br i1 %inbounds29.i, label %sw.epilog.i.do.end.i_crit_edge, label %sw.caserange25.i

sw.epilog.i.do.end.i_crit_edge:                   ; preds = %sw.epilog.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

sw.caserange13.i:                                 ; preds = %sw.caserange16.i
  %301 = add i32 %call5.i, -110000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %301)
  %inbounds14.i = icmp ult i32 %301, 30000000
  br i1 %inbounds14.i, label %sw.caserange13.i.if.end33.i_crit_edge, label %sw.epilog31.i

sw.caserange13.i.if.end33.i_crit_edge:            ; preds = %sw.caserange13.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i

sw.caserange16.i:                                 ; preds = %sw.caserange19.i
  %302 = add i32 %call5.i, -80000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %302)
  %inbounds17.i = icmp ult i32 %302, 30000000
  br i1 %inbounds17.i, label %sw.caserange16.i.if.end33.i_crit_edge, label %sw.caserange13.i

sw.caserange16.i.if.end33.i_crit_edge:            ; preds = %sw.caserange16.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i

sw.caserange19.i:                                 ; preds = %sw.caserange22.i
  %303 = add i32 %call5.i, -50000000
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000001, i32 %303)
  %inbounds20.i = icmp ult i32 %303, 30000001
  br i1 %inbounds20.i, label %sw.caserange19.i.if.end33.i_crit_edge, label %sw.caserange16.i

sw.caserange19.i.if.end33.i_crit_edge:            ; preds = %sw.caserange19.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i

sw.caserange22.i:                                 ; preds = %sw.caserange25.i
  %304 = add i32 %call5.i, -250000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %304)
  %inbounds23.i = icmp ult i32 %304, 25000000
  br i1 %inbounds23.i, label %sw.caserange22.i.do.end.i_crit_edge, label %sw.caserange19.i

sw.caserange22.i.do.end.i_crit_edge:              ; preds = %sw.caserange22.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

sw.caserange25.i:                                 ; preds = %sw.epilog.i
  %305 = add i32 %call5.i, -225000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 25000000, i32 %305)
  %inbounds26.i = icmp ult i32 %305, 25000000
  br i1 %inbounds26.i, label %sw.caserange25.i.do.end.i_crit_edge, label %sw.caserange22.i

sw.caserange25.i.do.end.i_crit_edge:              ; preds = %sw.caserange25.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

sw.epilog31.i:                                    ; preds = %sw.caserange13.i
  %306 = add i32 %call5.i, -140000001
  call void @__sanitizer_cov_trace_const_cmp4(i32 30000000, i32 %306)
  %inbounds11.i = icmp ult i32 %306, 30000000
  %spec.select.i = zext i1 %inbounds11.i to i32
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %call5.i)
  %cmp.i = icmp ugt i32 %call5.i, 200000000
  br i1 %cmp.i, label %sw.epilog31.i.do.end.i_crit_edge, label %sw.epilog31.i.if.end33.i_crit_edge

sw.epilog31.i.if.end33.i_crit_edge:               ; preds = %sw.epilog31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end33.i

sw.epilog31.i.do.end.i_crit_edge:                 ; preds = %sw.epilog31.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %do.end.i

do.end.i:                                         ; preds = %sw.epilog31.i.do.end.i_crit_edge, %sw.caserange25.i.do.end.i_crit_edge, %sw.caserange22.i.do.end.i_crit_edge, %sw.epilog.i.do.end.i_crit_edge
  %freqsel.0205.i = phi i32 [ %spec.select.i, %sw.epilog31.i.do.end.i_crit_edge ], [ 7, %sw.epilog.i.do.end.i_crit_edge ], [ 6, %sw.caserange25.i.do.end.i_crit_edge ], [ 5, %sw.caserange22.i.do.end.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_warn(ptr noundef %phy, ptr noundef nonnull @.str.10, i32 noundef %call5.i) #8
  br label %if.end33.i

if.end33.i:                                       ; preds = %do.end.i, %sw.epilog31.i.if.end33.i_crit_edge, %sw.caserange19.i.if.end33.i_crit_edge, %sw.caserange16.i.if.end33.i_crit_edge, %sw.caserange13.i.if.end33.i_crit_edge
  %freqsel.0204.i = phi i32 [ %freqsel.0205.i, %do.end.i ], [ %spec.select.i, %sw.epilog31.i.if.end33.i_crit_edge ], [ 4, %sw.caserange19.i.if.end33.i_crit_edge ], [ 3, %sw.caserange16.i.if.end33.i_crit_edge ], [ 2, %sw.caserange13.i.if.end33.i_crit_edge ]
  call void @__asan_load4_noabort(i32 ptrtoint (ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1) to i32))
  %307 = load ptr, ptr getelementptr inbounds (%struct.arm_delay_ops, ptr @arm_delay_ops, i32 0, i32 1), align 4
  tail call void %307(i32 noundef 1073740) #5
  %.b.i = load i1, ptr @thunderbay_emmc_phy_power.lock, align 4
  br i1 %.b.i, label %if.end33.i.if.end81.i_crit_edge, label %if.then35.i

if.end33.i.if.end81.i_crit_edge:                  ; preds = %if.end33.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81.i

if.then35.i:                                      ; preds = %if.end33.i
  %308 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %308)
  %309 = load ptr, ptr %289, align 4
  %add.ptr.i186.i = getelementptr i8, ptr %309, i32 36
  %310 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i186.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %311 = or i32 %310, 16777216
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %312 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %312)
  %313 = load ptr, ptr %289, align 4
  %add.ptr4.i188.i = getelementptr i8, ptr %313, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i188.i, i32 %311) #5, !srcloc !62
  store i1 true, ptr @thunderbay_emmc_phy_power.lock, align 4
  %call36.i = tail call i64 @ktime_get() #5
  %add.i.i = add i64 %call36.i, 50000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 247) #5
  %314 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %314)
  %315 = load ptr, ptr %289, align 4
  %add.ptr214.i = getelementptr i8, ptr %315, i32 56
  %316 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr214.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %317 = and i32 %316, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %317)
  %tobool52.not216.i = icmp eq i32 %317, 0
  br i1 %tobool52.not216.i, label %if.then35.i.land.lhs.true.i_crit_edge, label %if.then35.i.if.end81.i_crit_edge

if.then35.i.if.end81.i_crit_edge:                 ; preds = %if.then35.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81.i

if.then35.i.land.lhs.true.i_crit_edge:            ; preds = %if.then35.i
  br label %land.lhs.true.i

land.lhs.true.i:                                  ; preds = %if.then69.i.land.lhs.true.i_crit_edge, %if.then35.i.land.lhs.true.i_crit_edge
  %call56.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call56.i, i64 %add.i.i)
  %cmp3.i.i = icmp sgt i64 %call56.i, %add.i.i
  br i1 %cmp3.i.i, label %for.end.i, label %if.then69.i

if.then69.i:                                      ; preds = %land.lhs.true.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %318 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %318)
  %319 = load ptr, ptr %289, align 4
  %add.ptr.i237 = getelementptr i8, ptr %319, i32 56
  %320 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i237) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !63
  %321 = and i32 %320, 1073741824
  %tobool52.not.i = icmp eq i32 %321, 0
  br i1 %tobool52.not.i, label %if.then69.i.land.lhs.true.i_crit_edge, label %if.then69.i.if.end81.i_crit_edge

if.then69.i.if.end81.i_crit_edge:                 ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81.i

if.then69.i.land.lhs.true.i_crit_edge:            ; preds = %if.then69.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true.i

for.end.i:                                        ; preds = %land.lhs.true.i
  %322 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %322)
  %323 = load ptr, ptr %289, align 4
  %add.ptr63.i = getelementptr i8, ptr %323, i32 56
  %324 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr63.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !64
  %325 = and i32 %324, 1073741824
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %325)
  %tobool73.not.i = icmp eq i32 %325, 0
  br i1 %tobool73.not.i, label %for.end.i.cleanup.sink.split.i_crit_edge, label %for.end.i.if.end81.i_crit_edge

for.end.i.if.end81.i_crit_edge:                   ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %if.end81.i

for.end.i.cleanup.sink.split.i_crit_edge:         ; preds = %for.end.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

if.end81.i:                                       ; preds = %for.end.i.if.end81.i_crit_edge, %if.then69.i.if.end81.i_crit_edge, %if.then35.i.if.end81.i_crit_edge, %if.end33.i.if.end81.i_crit_edge
  %326 = ptrtoint ptr %emmcclk.i to i32
  call void @__asan_load4_noabort(i32 %326)
  %327 = load ptr, ptr %emmcclk.i, align 4
  %call83.i = tail call i32 @clk_get_rate(ptr noundef %327) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %call83.i)
  %cond151.i = icmp eq i32 %call83.i, 200000000
  br i1 %cond151.i, label %sw.bb84.i, label %if.end81.i.thunderbay_emmc_phy_power.exit_crit_edge

if.end81.i.thunderbay_emmc_phy_power.exit_crit_edge: ; preds = %if.end81.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %thunderbay_emmc_phy_power.exit

sw.bb84.i:                                        ; preds = %if.end81.i
  %328 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %328)
  %329 = load ptr, ptr %289, align 4
  %add.ptr.i189.i = getelementptr i8, ptr %329, i32 44
  %330 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i189.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %331 = and i32 %330, -1835009
  %332 = tail call i32 @llvm.bswap.i32(i32 %331) #5
  %shl.i.i = shl i32 %freqsel.0204.i, 10
  %or.i191.i = or i32 %332, %shl.i.i
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %333 = tail call i32 @llvm.bswap.i32(i32 %or.i191.i) #5
  %334 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %334)
  %335 = load ptr, ptr %289, align 4
  %add.ptr4.i192.i = getelementptr i8, ptr %335, i32 44
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i192.i, i32 %333) #5, !srcloc !62
  %336 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %336)
  %337 = load ptr, ptr %289, align 4
  %add.ptr.i193.i = getelementptr i8, ptr %337, i32 36
  %338 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i193.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %339 = or i32 %338, 262144
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %340 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %340)
  %341 = load ptr, ptr %289, align 4
  %add.ptr4.i196.i = getelementptr i8, ptr %341, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i196.i, i32 %339) #5, !srcloc !62
  %call88.i = tail call i64 @ktime_get() #5
  %add.i197.i = add i64 %call88.i, 50000000
  tail call void @__might_sleep(ptr noundef nonnull @.str.3, i32 noundef 277) #5
  %342 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %342)
  %343 = load ptr, ptr %289, align 4
  %add.ptr106217.i = getelementptr i8, ptr %343, i32 56
  %344 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106217.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %345 = and i32 %344, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %345)
  %tobool111.not219.i = icmp eq i32 %345, 0
  br i1 %tobool111.not219.i, label %sw.bb84.i.land.lhs.true115.i_crit_edge, label %sw.bb84.i.thunderbay_emmc_phy_power.exit_crit_edge

sw.bb84.i.thunderbay_emmc_phy_power.exit_crit_edge: ; preds = %sw.bb84.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %thunderbay_emmc_phy_power.exit

sw.bb84.i.land.lhs.true115.i_crit_edge:           ; preds = %sw.bb84.i
  br label %land.lhs.true115.i

land.lhs.true115.i:                               ; preds = %if.then129.i.land.lhs.true115.i_crit_edge, %sw.bb84.i.land.lhs.true115.i_crit_edge
  %call116.i = tail call i64 @ktime_get() #5
  call void @__sanitizer_cov_trace_cmp8(i64 %call116.i, i64 %add.i197.i)
  %cmp3.i199.i = icmp sgt i64 %call116.i, %add.i197.i
  br i1 %cmp3.i199.i, label %for.end133.i, label %if.then129.i

if.then129.i:                                     ; preds = %land.lhs.true115.i
  tail call void @usleep_range_state(i32 noundef 3, i32 noundef 10, i32 noundef 2) #5
  %346 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %346)
  %347 = load ptr, ptr %289, align 4
  %add.ptr106.i = getelementptr i8, ptr %347, i32 56
  %348 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr106.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !65
  %349 = and i32 %348, 536870912
  %tobool111.not.i = icmp eq i32 %349, 0
  br i1 %tobool111.not.i, label %if.then129.i.land.lhs.true115.i_crit_edge, label %if.then129.i.thunderbay_emmc_phy_power.exit_crit_edge

if.then129.i.thunderbay_emmc_phy_power.exit_crit_edge: ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %thunderbay_emmc_phy_power.exit

if.then129.i.land.lhs.true115.i_crit_edge:        ; preds = %if.then129.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %land.lhs.true115.i

for.end133.i:                                     ; preds = %land.lhs.true115.i
  %350 = ptrtoint ptr %289 to i32
  call void @__asan_load4_noabort(i32 %350)
  %351 = load ptr, ptr %289, align 4
  %add.ptr123.i = getelementptr i8, ptr %351, i32 56
  %352 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr123.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !66
  %353 = and i32 %352, 536870912
  call void @__sanitizer_cov_trace_const_cmp4(i32 0, i32 %353)
  %tobool136.not.i = icmp eq i32 %353, 0
  br i1 %tobool136.not.i, label %for.end133.i.cleanup.sink.split.i_crit_edge, label %for.end133.i.thunderbay_emmc_phy_power.exit_crit_edge

for.end133.i.thunderbay_emmc_phy_power.exit_crit_edge: ; preds = %for.end133.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %thunderbay_emmc_phy_power.exit

for.end133.i.cleanup.sink.split.i_crit_edge:      ; preds = %for.end133.i
  call void @__sanitizer_cov_trace_pc() #7
  br label %cleanup.sink.split.i

cleanup.sink.split.i:                             ; preds = %for.end133.i.cleanup.sink.split.i_crit_edge, %for.end.i.cleanup.sink.split.i_crit_edge
  %.str.17.sink.i = phi ptr [ @.str.14, %for.end.i.cleanup.sink.split.i_crit_edge ], [ @.str.17, %for.end133.i.cleanup.sink.split.i_crit_edge ]
  tail call void (ptr, ptr, ...) @_dev_err(ptr noundef %phy, ptr noundef nonnull %.str.17.sink.i, i32 noundef -110) #8
  br label %thunderbay_emmc_phy_power.exit

thunderbay_emmc_phy_power.exit:                   ; preds = %cleanup.sink.split.i, %for.end133.i.thunderbay_emmc_phy_power.exit_crit_edge, %if.then129.i.thunderbay_emmc_phy_power.exit_crit_edge, %sw.bb84.i.thunderbay_emmc_phy_power.exit_crit_edge, %if.end81.i.thunderbay_emmc_phy_power.exit_crit_edge
  %retval.0.i = phi i32 [ 0, %if.end81.i.thunderbay_emmc_phy_power.exit_crit_edge ], [ 0, %for.end133.i.thunderbay_emmc_phy_power.exit_crit_edge ], [ -110, %cleanup.sink.split.i ], [ 0, %sw.bb84.i.thunderbay_emmc_phy_power.exit_crit_edge ], [ 0, %if.then129.i.thunderbay_emmc_phy_power.exit_crit_edge ]
  ret i32 %retval.0.i
}

; Function Attrs: nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync)
define internal i32 @thunderbay_emmc_phy_power_off(ptr nocapture noundef readonly %phy) #2 align 64 {
entry:
  call void @__sanitizer_cov_trace_pc() #7
  call void @llvm.arm.gnu.eabi.mcount()
  %driver_data.i.i = getelementptr inbounds %struct.device, ptr %phy, i32 0, i32 8
  %0 = ptrtoint ptr %driver_data.i.i to i32
  call void @__asan_load4_noabort(i32 %0)
  %1 = load ptr, ptr %driver_data.i.i, align 4
  %phy_power_sts = getelementptr inbounds %struct.thunderbay_emmc_phy, ptr %1, i32 0, i32 2
  %2 = ptrtoint ptr %phy_power_sts to i32
  call void @__asan_store4_noabort(i32 %2)
  store i32 1, ptr %phy_power_sts, align 4
  %3 = load ptr, ptr %driver_data.i.i, align 4
  %emmcclk.i = getelementptr inbounds %struct.thunderbay_emmc_phy, ptr %3, i32 0, i32 1
  %4 = ptrtoint ptr %emmcclk.i to i32
  call void @__asan_load4_noabort(i32 %4)
  %5 = load ptr, ptr %emmcclk.i, align 4
  %call1.i = tail call i32 @clk_get_rate(ptr noundef %5) #5
  call void @__sanitizer_cov_trace_const_cmp4(i32 200000000, i32 %call1.i)
  %cond152.i = icmp eq i32 %call1.i, 200000000
  br i1 %cond152.i, label %sw.bb.i, label %entry.thunderbay_emmc_phy_power.exit_crit_edge

entry.thunderbay_emmc_phy_power.exit_crit_edge:   ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  br label %thunderbay_emmc_phy_power.exit

sw.bb.i:                                          ; preds = %entry
  call void @__sanitizer_cov_trace_pc() #7
  %6 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %6)
  %7 = load ptr, ptr %3, align 4
  %add.ptr.i.i = getelementptr i8, ptr %7, i32 36
  %8 = tail call i32 asm sideeffect "ldr $0, $1", "=r,*Qo"(ptr elementtype(i32) %add.ptr.i.i) #5, !srcloc !59
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !60
  %9 = and i32 %8, -262145
  tail call void asm sideeffect "mcr p15, 0, $0, c7, c10, 4", "r,~{memory}"(i32 0) #5, !srcloc !61
  tail call void @arm_heavy_mb() #5
  %10 = ptrtoint ptr %3 to i32
  call void @__asan_load4_noabort(i32 %10)
  %11 = load ptr, ptr %3, align 4
  %add.ptr4.i.i = getelementptr i8, ptr %11, i32 36
  tail call void asm sideeffect "str $1, $0", "*Qo,r"(ptr elementtype(i32) %add.ptr4.i.i, i32 %9) #5, !srcloc !62
  br label %thunderbay_emmc_phy_power.exit

thunderbay_emmc_phy_power.exit:                   ; preds = %sw.bb.i, %entry.thunderbay_emmc_phy_power.exit_crit_edge
  ret i32 0
}

; Function Attrs: null_pointer_is_valid
declare dso_local ptr @clk_get(ptr noundef, ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @clk_put(ptr noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local i32 @clk_get_rate(ptr noundef) local_unnamed_addr #1

; Function Attrs: nocallback nofree nosync nounwind readnone speculatable willreturn
declare i32 @llvm.bswap.i32(i32) #4

; Function Attrs: null_pointer_is_valid
declare dso_local void @arm_heavy_mb() local_unnamed_addr #1

; Function Attrs: cold null_pointer_is_valid
declare dso_local void @_dev_warn(ptr noundef, ptr noundef, ...) local_unnamed_addr #3

; Function Attrs: null_pointer_is_valid
declare dso_local i64 @ktime_get() local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @__might_sleep(ptr noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: null_pointer_is_valid
declare dso_local void @usleep_range_state(i32 noundef, i32 noundef, i32 noundef) local_unnamed_addr #1

; Function Attrs: nounwind
declare void @llvm.arm.gnu.eabi.mcount() #5

declare void @__sanitizer_cov_trace_cmp8(i64, i64)

declare void @__sanitizer_cov_trace_const_cmp4(i32 zeroext, i32 zeroext)

declare void @__sanitizer_cov_trace_switch(i64, ptr)

declare void @__sanitizer_cov_trace_pc()

declare void @__asan_load4_noabort(i32)

declare void @__asan_store4_noabort(i32)

declare void @__asan_register_globals(i32, i32)

declare void @__asan_unregister_globals(i32, i32)

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_ctor() #6 {
  call void @__asan_register_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

; Function Attrs: nounwind uwtable(sync)
define internal void @asan.module_dtor() #6 {
  call void @__asan_unregister_globals(i32 ptrtoint (ptr @0 to i32), i32 22)
  ret void
}

attributes #0 = { cold nounwind null_pointer_is_valid optsize sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #1 = { null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #2 = { nounwind null_pointer_is_valid sanitize_address sspstrong uwtable(sync) "frame-pointer"="all" "min-legal-vector-width"="0" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" "warn-stack-size"="1024" }
attributes #3 = { cold null_pointer_is_valid "frame-pointer"="all" "no-trapping-math"="true" "stack-protector-buffer-size"="8" "target-cpu"="mpcore" "target-features"="+armv6k,+dsp,+soft-float,+strict-align,-aes,-bf16,-d32,-dotprod,-fp-armv8,-fp-armv8d16,-fp-armv8d16sp,-fp-armv8sp,-fp16,-fp16fml,-fp64,-fpregs,-fullfp16,-mve,-mve.fp,-neon,-sha2,-thumb-mode,-vfp2,-vfp2sp,-vfp3,-vfp3d16,-vfp3d16sp,-vfp3sp,-vfp4,-vfp4d16,-vfp4d16sp,-vfp4sp" "use-soft-float"="true" }
attributes #4 = { nocallback nofree nosync nounwind readnone speculatable willreturn }
attributes #5 = { nounwind }
attributes #6 = { nounwind uwtable(sync) "frame-pointer"="all" }
attributes #7 = { nomerge }
attributes #8 = { cold nounwind }

!llvm.asan.globals = !{!0, !2, !3, !5, !7, !9, !11, !12, !14, !16, !18, !19, !20, !21, !22, !23, !24, !26, !27, !28, !30, !32, !34, !36, !38, !39, !40, !41, !42, !44, !45, !46, !48, !49}
!llvm.module.flags = !{!50, !51, !52, !53, !54, !55, !56, !57}
!llvm.ident = !{!58}

!0 = !{ptr @__initcall__kmod_phy_intel_thunderbay_emmc__289_504_thunderbay_emmc_phy_driver_init6, !1, !"__initcall__kmod_phy_intel_thunderbay_emmc__289_504_thunderbay_emmc_phy_driver_init6", i1 false, i1 false}
!1 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 504, i32 1}
!2 = !{ptr @__exitcall_thunderbay_emmc_phy_driver_exit, !1, !"__exitcall_thunderbay_emmc_phy_driver_exit", i1 false, i1 false}
!3 = !{ptr @__UNIQUE_ID_author290, !4, !"__UNIQUE_ID_author290", i1 false, i1 false}
!4 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 506, i32 1}
!5 = !{ptr @__UNIQUE_ID_author291, !6, !"__UNIQUE_ID_author291", i1 false, i1 false}
!6 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 507, i32 1}
!7 = !{ptr @__UNIQUE_ID_description292, !8, !"__UNIQUE_ID_description292", i1 false, i1 false}
!8 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 508, i32 1}
!9 = !{ptr @__UNIQUE_ID_file293, !10, !"__UNIQUE_ID_file293", i1 false, i1 false}
!10 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 509, i32 1}
!11 = !{ptr @__UNIQUE_ID_license294, !10, !"__UNIQUE_ID_license294", i1 false, i1 false}
!12 = !{ptr @.str, !13, !"<string literal>", i1 false, i1 false}
!13 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 500, i32 12}
!14 = !{ptr @thunderbay_emmc_phy_driver, !15, !"thunderbay_emmc_phy_driver", i1 false, i1 false}
!15 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 497, i32 31}
!16 = !{ptr @.str.1, !17, !"<string literal>", i1 false, i1 false}
!17 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 481, i32 3}
!18 = !{ptr @.str.2, !17, !"<string literal>", i1 false, i1 false}
!19 = !{ptr @.str.3, !17, !"<string literal>", i1 false, i1 false}
!20 = !{ptr @.str.4, !17, !"<string literal>", i1 false, i1 false}
!21 = !{ptr @.str.5, !17, !"<string literal>", i1 false, i1 false}
!22 = !{ptr @thunderbay_emmc_phy_probe._entry, !17, !"_entry", i1 false, i1 false}
!23 = !{ptr @thunderbay_emmc_phy_probe._entry_ptr, !17, !"_entry_ptr", i1 false, i1 false}
!24 = !{ptr @.str.7, !25, !"<string literal>", i1 false, i1 false}
!25 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 487, i32 3}
!26 = !{ptr @thunderbay_emmc_phy_probe._entry.6, !25, !"_entry", i1 false, i1 false}
!27 = !{ptr @thunderbay_emmc_phy_probe._entry_ptr.8, !25, !"_entry_ptr", i1 false, i1 false}
!28 = !{ptr @thunderbay_emmc_phy_of_match, !29, !"thunderbay_emmc_phy_of_match", i1 false, i1 false}
!29 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 450, i32 34}
!30 = !{ptr @thunderbay_emmc_phy_ops, !31, !"thunderbay_emmc_phy_ops", i1 false, i1 false}
!31 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 442, i32 29}
!32 = !{ptr @.str.9, !33, !"<string literal>", i1 false, i1 false}
!33 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 294, i32 40}
!34 = distinct !{null, !35, !"lock", i1 false, i1 false}
!35 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 170, i32 13}
!36 = !{ptr @.str.10, !37, !"<string literal>", i1 false, i1 false}
!37 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 230, i32 3}
!38 = !{ptr @.str.11, !37, !"<string literal>", i1 false, i1 false}
!39 = !{ptr @.str.12, !37, !"<string literal>", i1 false, i1 false}
!40 = !{ptr @thunderbay_emmc_phy_power._entry, !37, !"_entry", i1 false, i1 false}
!41 = !{ptr @thunderbay_emmc_phy_power._entry_ptr, !37, !"_entry_ptr", i1 false, i1 false}
!42 = !{ptr @.str.14, !43, !"<string literal>", i1 false, i1 false}
!43 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 249, i32 4}
!44 = !{ptr @thunderbay_emmc_phy_power._entry.13, !43, !"_entry", i1 false, i1 false}
!45 = !{ptr @thunderbay_emmc_phy_power._entry_ptr.15, !43, !"_entry_ptr", i1 false, i1 false}
!46 = !{ptr @.str.17, !47, !"<string literal>", i1 false, i1 false}
!47 = !{!"../drivers/phy/intel/phy-intel-thunderbay-emmc.c", i32 279, i32 4}
!48 = !{ptr @thunderbay_emmc_phy_power._entry.16, !47, !"_entry", i1 false, i1 false}
!49 = !{ptr @thunderbay_emmc_phy_power._entry_ptr.18, !47, !"_entry_ptr", i1 false, i1 false}
!50 = !{i32 1, !"wchar_size", i32 2}
!51 = !{i32 1, !"min_enum_size", i32 4}
!52 = !{i32 8, !"branch-target-enforcement", i32 0}
!53 = !{i32 8, !"sign-return-address", i32 0}
!54 = !{i32 8, !"sign-return-address-all", i32 0}
!55 = !{i32 8, !"sign-return-address-with-bkey", i32 0}
!56 = !{i32 7, !"uwtable", i32 1}
!57 = !{i32 7, !"frame-pointer", i32 2}
!58 = !{!"clang version 15.0.0 (git@github.com:linkeLi0421/llvm-project15-IRDumperPass.git 23ab625cb005cd08da083f9b643a7feed9af8abe)"}
!59 = !{i64 3083182}
!60 = !{i64 2155069052}
!61 = !{i64 2155069275}
!62 = !{i64 3082764}
!63 = !{i64 2155073638}
!64 = !{i64 2155074152}
!65 = !{i64 2155078405}
!66 = !{i64 2155078919}
